Sub CollectAbbreviations()
    Dim doc As Document
    Set doc = ActiveDocument
    
    ' Коллекция для хранения уникальных аббревиатур
    Dim abbrevs As New Collection
    On Error Resume Next ' Игнорируем повторяющиеся элементы коллекции
    
    ' Основной цикл по словам документа
    For Each rng In doc.Words
        Dim normalizedText As String
        normalizedText = NormalizeText(rng.Text)
        
        If CheckIfAbbreviation(normalizedText) Then
            abbrevs.Add normalizedText, CStr(normalizedText)
        End If
    Next rng
    
    ' Вставляем абзац с результатом
    doc.Range.InsertAfter vbCrLf & vbCrLf & "Abbreviations:" & vbCrLf
    
    ' Формируем итоговый список
    For i = 1 To abbrevs.Count
        doc.Range.InsertAfter abbrevs(i) & vbCrLf
    Next i
End Sub

' Нормализация текста: удаление пробелов и специальной пунктуации
Function NormalizeText(strText As String) As String
    strText = Replace(strText, " ", "")      ' Удаляем пробелы
    strText = Replace(strText, ".", "")      ' Удаляем точки
    strText = Replace(strText, "-", "")      ' Удаляем дефисы
    NormalizeText = Trim(strText)           ' Дополнительная очистка
End Function

' Функция проверки, является ли данная строка аббревиатурой
Function CheckIfAbbreviation(strText As String) As Boolean
    If Len(strText) < 2 Then Exit Function ' Минимально две буквы
    
    ' Проверяем, содержит ли слово только заглавные буквы
    For i = 1 To Len(strText)
        charCode = AscW(Mid(strText, i, 1))
        
        If Not ((charCode >= 65 And charCode <= 90) _
               Or (charCode >= 1040 And charCode <= 1071)) Then Exit Function
    Next i
    
    CheckIfAbbreviation = True
End Function
