Imports Microsoft.VisualBasic

Public Class patient_id_generator

    Private Function randomstring() As String
        Dim raw As String = "1234567890"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring2() As String
        Dim raw As String = "101112131415161713452347868881920"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring3() As String
        Dim raw As String = "21222324252627282890756743930"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring4() As String
        Dim raw As String = "3132333435312435365423425637383940"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring5() As String
        Dim raw As String = "41424344454647484950645767"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function


    Public Function generate() As String
        Dim bu As New StringBuilder
        bu.Append(randomstring())
        bu.Append(randomstring2())
        bu.Append(randomstring3())
        bu.Append(randomstring4())
        bu.Append(randomstring5())

        Return bu.ToString

    End Function






End Class
