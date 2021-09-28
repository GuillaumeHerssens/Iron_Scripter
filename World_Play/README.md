https://ironscripter.us/a-powershell-word-play-challenge/

# A PowerShell Word Play Challenge

While experienced PowerShell scripters are hopefully tackling their latest challenge, The Chairman didn’t want those of you still in the earlier stages of learning PowerShell to feel left out so he has commissioned a new challenge.

-----
### Beginner Challenge

When you create a string of text in PowerShell, each character can also be represented by its underlying [CHAR] value which actually has an integer value. 
The value can be turned back into the original string character.

    PS C:\> $x = "P"
    PS C:\> [char]$x -as [int]
    80
    PS C:\> [char]80
    P

Your challenge is to define a variable with a string of text, like $w=”Iron Scripter”. Write a PowerShell expression that will give you the sum of the integer values for each character in the string. 
The second part of the challenge is to display the text using its integer values.

    74 114 111 110 ...

----
### Intermediate Challenge

If you have a bit more experience, you should be able to knock out the beginner challenges rather easily. 
Your challenge is two write 2 PowerShell functions that will accept pipeline input. 
The first function should take a string of text as input and write a new string that uses the CHAR value doubled. In other words, if the original CHAR value is 111, the new word will use a value of 222. 
You will definitely get some unusual characters.

The second part of the challenge is to write a function that does the opposite, that is, “decodes” the text. If you’ve done this properly you should be able to decode this:

    ??????????

And you should be able to “round-trip” your functions:

    "Foo 123" | ConvertTo-Foo | ConvertFrom-Foo

and get the original text as the output.

As always, you are encouraged to post a comment with a link to your work. Good luck.
