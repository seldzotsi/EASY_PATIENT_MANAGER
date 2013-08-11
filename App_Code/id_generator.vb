Imports Microsoft.VisualBasic

Public Class id_generator

    Private Function randomstring() As String
        Dim raw As String = "QZXCBCXVFTRYJSDBDFSHUFSIDSHFSBHCF"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring2() As String
        Dim raw As String = "QZXCBC38947jkhgfsd89t94645689sjkdf893r45234DFSHUFSIDSHFSBHCF"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring3() As String
        Dim raw As String = "QZXCBCXVFTRYasdfgasdfJSDBDFSHUFSIDSHFSBHCF"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring4() As String
        Dim raw As String = "QZ2314123sdfgCXVFTRYJSDBDFSHUFSIDSHFSBHCF"
        Dim build As New StringBuilder
        Dim ran As New Random

        For a As Integer = 0 To 1
            build.Append(raw.Substring(ran.Next(0, raw.Length - 1), 1))

        Next

        Return build.ToString
        build.Clear()
    End Function

    Private Function randomstring5() As String
        Dim raw As String = "QZXCBCXVFTRYJSDBDFSHUFSIDSHFrgfergtweSBHCF"
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
