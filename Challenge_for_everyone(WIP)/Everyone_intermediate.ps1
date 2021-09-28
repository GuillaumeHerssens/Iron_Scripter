function fcontent(){
    do{
        if ($args[0]){
            $path = $args[0]
            $args[0] = ''
        }
        else{
            $path = Read-Host "type path"
        }
    }until ((Test-Path $path) -eq $true)

    get-date;hostname; Get-ChildItem $path | Measure-Object -Property Length -Average -Sum




}

fcontent ($args[0])
