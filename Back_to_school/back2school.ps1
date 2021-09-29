
function menu {
    do{
        $fail = 0
        $selection = Read-Host "Select option :
        1. Side of a right triangle.
        2. Area of a circle.
        3. Volume of a sphere.
        4. Volume of a cylinder.
        5. Factorial of an integer.
        "
        switch ($selection) {
            1 {
                do{
                    $fail = 0
                    $selection = Read-Host "What do you want to calculate ?
                    1. The hypotenuse.
                    2. One of the sides.
                    "
                    switch ($selection) {
                        1 { Triangle 1 }
                        2 { Triangle 2 }
                        Default {"Invalid Input"; $fail = 1}
                    }
                } until ($fail -eq 0)
            }
            2 { circle }

            3 { sphere }

            4 { cylinder }

            5 { factorial }

            Default{$fail = 1}

        }
    }until($fail -eq 0)
}
Function Triangle (){
    [CmdletBinding()]
    Param(
        [parameter(ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [int]$selection
    )

    process{
        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][double]$a = Read-Host "Enter first side length"
            } catch{"Invalid length"; $fail = 1}
        } until ($fail -eq 0)

        if ($selection -eq 1){
            do{
              try{
                $fail = 0
                [ValidateRange(1,10000)][double]$b = Read-Host "Enter second side length"
                } catch{"Invalid length"; $fail = 1}
            } until ($fail -eq 0)

            [math]::Sqrt(($a * $a) + ($b * $b))
        }
        elseif($selection -eq 2){
            do{
                try{
                  $fail = 0
                  [ValidateRange(1,10000)][double]$b = Read-Host "Enter hypotenuse length"
                  } catch{"Invalid length"; $fail = 1}
              } until (($fail -eq 0) -and ($b -gt $a ))

              [math]::Sqrt(($b * $b) - ($a * $a))
        }
    }
}

function circle (){

    process{
        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][double]$a = Read-Host "Enter diameter"
            } catch{"Invalid diameter"; $fail = 1}
        } until ($fail -eq 0)
        ([math]::PI * ([math]::Pow(($a / 2), 2)))
    }


}

function sphere(){

    process{
        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][double]$a = Read-Host "Enter diameter"
            } catch{"Invalid diameter"; $fail = 1}
        } until ($fail -eq 0)
      (([math]::PI * ([math]::Pow($a, 3))) / 6)
    }
}


function cylinder(){
    process{
        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][double]$a = Read-Host "Enter diameter"
            } catch{"Invalid diameter"; $fail = 1}
        } until ($fail -eq 0)

        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][double]$b = Read-Host "Enter height"
            } catch{"Invalid height"; $fail = 1}
        } until ($fail -eq 0)

        ([math]::PI * ([math]::Pow(($a / 2), 2) * $b))

    }
}
function factorial(){
    process{
        do{
            try{
            $fail = 0
            [ValidateRange(1,10000)][int]$a = Read-Host "Enter value"
            } catch{"Invalid value"; $fail = 1}
        } until ($fail -eq 0)
        $res = $a
        for ($i = 1; $i -lt $a; $i++){
        $res = ($res * ($a - $i))
        }
        Write-Output $res
    }
}

menu
