
function encode {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [string]$text
    )
    process{
        $text.ToCharArray() | ForEach-Object { [char][int](([int][char]$_) * 2) }
    }
}

function decode {
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [string[]]$code
    )
    process {
        $code | ForEach-Object { 
            [array]$result += @([char](([int][char]$_) / 2))
         }
       
    }
    end{
        Write-Output "$($result -join '')"
    }
}



$test = "Testing Stuff"
"$($test | encode)"
 $test | encode | decode

