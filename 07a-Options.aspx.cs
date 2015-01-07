// Fig. 20.28: Options.aspx.cs
// Processes user's selection of a programming language by displaying
// links and writing information in a Session object.
using System;
using System.Web.UI.WebControls;

public partial class Options : System.Web.UI.Page
{
    protected Label responseLabel;
    protected Label idLabel;
    protected Label timeoutLabel;
    protected Label promptLabel;
    protected HyperLink languageLink;
    protected HyperLink recommendationsLink;
    protected RadioButtonList languageList;
    protected Button submitButton;

   // if postback, hide form and display links to make additional
   // selections or view recommendations
   protected void Page_Load( object sender, EventArgs e )
   {
      if ( IsPostBack )
      {
         // user has submitted information, so display message
         // and appropriate hyperlinks
         responseLabel.Visible = true;
         idLabel.Visible = true;
         timeoutLabel.Visible = true;
         languageLink.Visible = true;
         recommendationsLink.Visible = true;

         // hide other controls used to make language selection
         promptLabel.Visible = false;
         languageList.Visible = false;
         submitButton.Visible = false;

         // if the user made a selection, display it in responseLabel
         if ( languageList.SelectedItem != null )
            responseLabel.Text += " You selected " +
               languageList.SelectedItem.Text;
         else
            responseLabel.Text += " You did not select a language.";

         // display session ID                                            
         idLabel.Text = "Your unique session ID is: " + Session.SessionID;

         // display the timeout                                          
         timeoutLabel.Text = "Timeout: " + Session.Timeout + " minutes.";
      } // end if
   } // end method Page_Load

   // record the user's selection in the Session 
   protected void submitButton_Click( object sender, EventArgs e )
   {
      // if the user made a selection
      if ( languageList.SelectedItem != null ) 
         // add name/value pair to Session
         Session.Add( languageList.SelectedItem.Text,
            languageList.SelectedItem.Value );
   } // end method submitButton_Click
} // end class Options
