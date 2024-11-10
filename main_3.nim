import strutils, re

proc analyzeText(input: string): (int, int, string) =
  let specialCharsCount = re.findall(re"[\.,\\\s]", input).len
  let aCount = input.count("a")
  let numbers = join(re.findall(re"\d", input), "")

  return (specialCharsCount, aCount, numbers)

let text = "Ваш исходный текст здесь."
let (schars, counter, numbers) = analyzeText(text)

echo "Special characters: ", schars
echo "Count of 'a': ", counter
echo "Numbers: ", numbers
