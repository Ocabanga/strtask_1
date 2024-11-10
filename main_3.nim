import re, strutils  # ознакомьтесь с функцией findAll библиотеки re

var text = """English texts for b3ginners to practice read7ng and comprehension online & for fre3. Pr4acticing your comprehension a | of a written En9lish will both improve your vocabulary and understanding of gramma2r and word order; The texts below are des1gned to help you develop: while giving you an instant evaluation of your progre5s."""
# Ниже произведите действия над переменной text
var schars, counter: int
var numbers: string

# Подсчёт специальных символов
schars = re.findall(re"[\.,\\\s&|:;]", text).len

# Подсчёт букв 'a'
counter = text.count("a")

# Нахождение всех цифр и сбор их в строку
numbers = join(re.findall(re"\d", text), "")

# Не изменяйте код ниже
doAssert schars == 57
doAssert counter == 18
doAssert numbers == "37349215"
