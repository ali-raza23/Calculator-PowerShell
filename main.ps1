function calculate {
    param (
        # Make Parameters Mandatory
        [Parameter(Mandatory)]

        # Define Parameters
        [int]$Integer_1,
        [int]$Integer_2,
        [string]$Operator
    )

    $Solution
    $Acceptable_Operators = '+', '-', '/', '*'

    # Check if usable operator in given operator parameter
    if ($Acceptable_Operators -contains $Operator) {
        # Check if Operator is + - / * and then perform Operation
        switch ($Operator) {
            '+' { $Solution = $Integer_1 + $Integer_2 }
            '-' { $Solution = $Integer_1 - $Integer_2 }
            '/' { $Solution = $Integer_1 / $Integer_2 }
            '*' { $Solution = $Integer_1 * $Integer_2 }
        }

        Write-Output "Result: $Solution"
    }
    else {
        # If Operator is not + - / *
        Write-Output "Unsupported Operator"
    }
}

# Hard Coded Parameter Inputs (Delete # at the start of the next line to continue)
# calculate -Integer_1 1 -Integer_2 2 -Operator '+'

# Ask User for input for Parameters
$Integer_1 = Read-Host -Prompt "First Number"
$Integer_2 = Read-Host -Prompt "Second Number"
$Operator = Read-Host -Prompt "Operator (+, -, /, *)"
calculate $Integer_1 $Integer_2 $Operator