
function ToCelsius{
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [double]$temp
    )
    process{
        $converted = [PSCustomObject]@{
            Fahrenheit = $temp
            Celsius = (($temp - 32) / 1.8)
        }
        Write-Output $converted
    }
}
function ToFahrenheit{
    [CmdletBinding()]
    param(
        [parameter(ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [double]$temp
    )
    process{
        $converted = [PSCustomObject]@{
            Celsius = $temp
            Fahrenheit = (($temp * 1.8) + 32)
        }
        Write-Output $converted
    }
}

$far = 32
$far | ToCelsius
$cel = 100
$cel | ToFahrenheit
