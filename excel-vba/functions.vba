Function buildPathFromRelative(toAppend As String, levels As Integer) As String

    buildPathFromRelative = buildPath(ThisWorkbook.Path, toAppend, levels)

End Function


Function buildPath(basePath As String, toAppend As String, levels As Integer) As String

    buildPath = parsePath(basePath, levels) & toAppend


End Function

Function parsePath(basePath As String, levels As Integer) As String

    Dim LArray() As String
    
    LArray = Split(basePath, "/")
    parsePath = "//"

    For p = LBound(LArray) To UBound(LArray) - levels
    
        If LArray(p) = "" Then
        
        Else
            parsePath = parsePath & LArray(p) & "/"
        End If

    Next p

End Function
