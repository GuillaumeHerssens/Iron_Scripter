$count = 0
$output = [PSCustomObject]@{
    Sum = 0
    Matches = @()
}
do {
    [int]$n = Read-Host "Type interval."
} until ($n -ge 1 -and $n -le 10)
[int]$s = Read-Host "Type starting number."
[int]$e = Read-Host "Type end number."

for ( $i = $s; $i -le $e; $i++ ){
    if ( ($i / $n).GetType().Name -eq "int32" ){
        $output.sum = ($output.sum + $i)
        $count = ($count + 1)
        $output.Matches += +$i
    }
}
Write-Output ( $output.sum / $count )
Write-Output $output.sum

do {
    $read = Read-Host "Do you want to see all matches ? (y,n)"
    if ( $read -eq "y" ){
        Write-Output $output.Matches
    }
} until ($read = "y" -or "n")