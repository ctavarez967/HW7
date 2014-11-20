
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbPlayer_TextChanged(sender As Object, e As EventArgs) Handles tbPlayer.TextChanged

        Dim searchWord As String
        searchWord = "Select * From ctavarez_HW7 where (playerName Like '%" + tbPlayer.Text.ToString() + "%')"
        HW7_Search_DataSource.SelectCommand = searchWord

    End Sub

    Protected Sub tbPlayer2_TextChanged(sender As Object, e As EventArgs) Handles tbPlayer2.TextChanged

        Dim searchWord As String
        searchWord = "Select * From ctavarez_HW7 where (playerName Like '%" + tbPlayer2.Text.ToString() + "%')"
        HW7_Search_DataSource.SelectCommand = searchWord

    End Sub
End Class
