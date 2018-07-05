using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GeniusBoiApp.Models;
using System.Data.SqlClient;
using System.Configuration;

namespace GeniusBoiApp
{
    public partial class _Default : Page
    {
        SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            //GenerateTable(numOfColumns, numOfRows);


            if (IsPostBack)
                lblWelcome.Text = "You've posted back";
            else
                lblWelcome.Text = "Welcome";

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Person person = new Person();
            person.name = txtName.Text;           

            Skill skills = new Skill();
            skills.skillName = txtSkill.Text;
            skills.skillHoursLearn = int.Parse(txtSkillHoursLearn.Text);
            skills.skillHoursSpent = int.Parse(txtSkillHoursSpent.Text);            
            person.Skills = new List<Skill>();
            //Session["test"] = person.Skills;
            person.Skills.Add(skills);

            myConnection.Open();
            string query = "Insert into [dbo].[Table](pName,sName,sHoursLearn,sHoursSpent) Values (@pName,@sName,@sHLearn,@sHSpent)";
            SqlCommand insertCommand = new SqlCommand(query, myConnection);
            insertCommand.Parameters.AddWithValue("@pName", person.name);
            insertCommand.Parameters.AddWithValue("@sName", skills.skillName);
            insertCommand.Parameters.AddWithValue("@sHLearn", skills.skillHoursLearn);
            insertCommand.Parameters.AddWithValue("@sHSpent", skills.skillHoursSpent);
            insertCommand.ExecuteNonQuery();
            //dataGridView.DataSource = null;
            //this.GridView1TableAdapter.Update(this.SqlDataSource1);
            myConnection.Close();
            GridView1.DataBind();

        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            //tblPerson = (Table)Session["test"];
            //GridView1.DataBind();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            var index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }
    }
}