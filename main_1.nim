import strutils

proc processText(input: string): string =
  let sentences = input.replace("e", "ё").split('.')
  for i in 0 ..< sentences.len:
    sentences[i] = sentences[i].strip().reversed()
  return join(sentences, ".\n")

let text = "Ваш исходный текст здесь."
echo processText(text)
