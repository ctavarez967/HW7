
Partial Class Blackhawks
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim thisDate As Date
        thisDate = Today
        lbl_date.Text = thisDate

        Dim currentTime As Date
        currentTime = TimeOfDay
        lbl_time.Text = currentTime

    End Sub
End Class

