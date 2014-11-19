
Partial Class DetailView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView_Roster_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView_Roster.ItemDeleted

        Dim deletedPlayer As String = e.Values("playerName").ToString()
        lbl_deletedPlayer.Text = deletedPlayer & " has been deleted from database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub

    Protected Sub DetailsView_Roster_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView_Roster.ItemInserted

        Response.Redirect("~/Admin/Default.aspx")

    End Sub

    Protected Sub DetailsView_Roster_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView_Roster.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub


    Protected Sub DetailsView_Roster_Load(sender As Object, e As EventArgs) Handles DetailsView_Roster.Load

        DetailsView_Roster.Focus()

    End Sub
End Class
