### Перекрёстные ссылки без текстовой части номера
Многих сбивает с толку, что со ссылками на подпись объектов (таблицы, рисунки и формулы) в тексте не срабатывает настройка показа только цифр (в отличие от таких же ссылок на другие автонумеруемые абзацы в тексте).
| <img width="804" height="373" alt="image" src="https://github.com/user-attachments/assets/486b4cc4-0fa0-4043-bbd3-063e15a5a07d" /> |
| --- |

Из-за этого приведённая ссылка повторяет в именительном падеже название «Таблица 1». При этом в тексте почти всегда необходимо ссылаться на указанные части в дательном падеже. 
| <img width="1018" height="487" alt="image" src="https://github.com/user-attachments/assets/ff1bfe95-b54c-4eb6-9c2e-b46bdfed481f" /> |
| --- |

Исправить ситуацию помогает настройка формата представления ссылки. Необходимо активировать представление кодов ссылок (`Alt`+`F9`) и дописать «\# 0». _И не забыть обновиться после этого F9_
| <img width="765" height="158" alt="image" src="https://github.com/user-attachments/assets/f6a69b48-a9f6-4c86-a637-0633e8045bce" /> | <img width="365" height="152" alt="image" src="https://github.com/user-attachments/assets/99d68e94-42d9-4d42-844f-1406cc93a0cf" /> |
| --- | --- |

Например, вместо 

```
{ REF _Ref218925266 \h }
```
Нужно использовать это
```
{ REF _Ref218925266 \# 0 \h }
```
<details>
<summary> English translation </summary>
Cross-references without a text part of the number</br>
Many people are confused by the fact that the setting to display only numbers does not work with references to object signatures (tables, figures, and formulas) in the text (unlike the same references to other auto-numbered paragraphs in the text).</br>
Because of this, the reference repeats the name "Table 1" in the nominative case. However, it is almost always necessary to refer to these parts in the dative case (in russian) in the text.</br>
The reference format can be adjusted to fix this issue. You need to activate the reference code view (Alt+F9) and add "\# 0". And update it F9
</details>
<hr>

### Преобразовать формулы
Чтобы преобразовать формулу в обычный текст необходимо выделить её и нажать `Alt` + `=`.
Особенно полезно прикопировании текста, содержащего встроенные формулы, из Word в другие редакторы.

<details>
<summary> English translation </summary>
To convert a formula to plain text, you need to select it and press `Alt + =`.
It is especially useful when copying text containing embedded formulas from Word to other editors.
</details>
<hr>
