using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication12
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        const string bazaConnString = "server=localhost;User Id=spletno;password=password;Persist Security Info=True;database=classicmodels";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();
                    string SQLcommand = "SELECT officeCode, city FROM offices;";
                    MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                    MySqlDataReader reader = bazaUkaz.ExecuteReader();
                    podruznicaList.DataSource = reader;
                    podruznicaList.DataValueField = "officeCode";
                    podruznicaList.DataTextField = "city";
                    podruznicaList.DataBind();
                    
                }
                catch (Exception)
                {
                    sporociloTxt.Text = "Prišlo je do napake pri branju baze.";
                }
                finally
                {
                    bazaPovezava.Close();
                }
            }


            else {
                // če gre za postback, prikažemo še seznam zaposlenih v podružnici
                MySqlConnection bazaPovezava = new MySqlConnection(bazaConnString);
                try
                {
                    bazaPovezava.Open();
                    string SQLcommand = "SELECT CONCAT_WS(\" \", firstName, lastName) as Zaposleni FROM employees where officeCode=" + podruznicaList.SelectedValue;
                    MySqlCommand bazaUkaz = new MySqlCommand(SQLcommand, bazaPovezava);
                    MySqlDataReader reader = bazaUkaz.ExecuteReader();
                    tabelaPodatki.DataSource = reader;
                    tabelaPodatki.DataBind();
                    naslovTxt.Text = "Seznam zaposlenih v podružnici: " + podruznicaList.SelectedItem;
                }
                catch (Exception)
                {
                    sporociloTxt.Text = "Prišlo je do napake pri branju baze.";
                }
                finally
                {
                    bazaPovezava.Close();
                }

            }

        }

        protected void podruznicaList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

            
        
    }
}