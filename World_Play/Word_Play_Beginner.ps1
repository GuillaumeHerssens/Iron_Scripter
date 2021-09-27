$string = "Hello"
$sum = 0
$stringint = @()
for ( $i = 0; $i -lt $string.length; $i++){
  $stringint += @([char]$string[$i] -as [int])
  $sum += [char]$string[$i] -as [int]
}
Write-Output $sum
Write-Output "$($stringint)"
