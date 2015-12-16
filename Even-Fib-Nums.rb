Sub evenFibNumbers()
' This program is written in Visual Basic for Applications
'
' Add all even numbers generated
' by the Fibonacci sequence whose
' value does not excede four million

Dim prev1, prev2, sumVal, currNum, rand As Integer
Const max = 4000000

prev1 = 1
prev2 = 2
sumVal = 2
currNum = 3
max = 4000000

Do While currNum < max
    If XLMod(currNum, 2) = 0 Then
        sumVal = sumVal + currNum
    End If
    prev1 = prev2
    prev2 = currNum
    currNum = prev1 + prev2
Loop

Range("A1").Select
Range("A1").Value = sumVal
    

End Sub

Function XLMod(a, b)
    ' This replicates the Excel MOD function
    XLMod = a - b * Int(a / b)
End Function
