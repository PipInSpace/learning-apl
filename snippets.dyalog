⍝ Vigenere cipher for uppercase text in one line. ⍺: message  ⍵: key
vigenere←{⎕UCS 65+26|((⎕UCS⍺) + (⎕UCS⍵)[(⍴⍺)⍴⍳⍴⍵])-130}

⍝ Split a text at listed characters. ⍺: list of chars  ⍵: string
split←{⍵⊆⍨~⍵∊⍺}

⍝ Count the number of chars before encountering a char inncluded in the first argument. ⍺: list of chars  ⍵: string 
count_to←{+/∧\~⍺∊⍵}