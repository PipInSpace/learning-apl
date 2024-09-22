⍝ Vigenere cipher for uppercase text in one line. ⍺: message  ⍵: key
vigenere←{⎕UCS 65+26|130-⍨(⎕UCS⍺)+⎕UCS⍵[(⍴⍺)⍴⍳⍴⍵]}     ⍝ bracket indexing
⍝ vigenere←{⎕UCS 65+26|130-⍨(⎕UCS⍺)+⎕UCS(⊂(⍴⍺)⍴⍳⍴⍵)⌷⍵} ⍝ squad indexing

⍝ Split a text at listed characters. ⍺: list of chars  ⍵: string
split←{⍵⊆⍨~⍵∊⍺}

⍝ Count the number of chars before encountering a char inncluded in the first argument. ⍺: list of chars  ⍵: string 
count_to←{+/∧\~⍺∊⍵}