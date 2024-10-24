using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;

namespace POE2
{
    public partial class Claim : System.Web.UI.Page
    {
        public List<object> Placeholder = new List<object>();

        // It's a good practice to handle the connection outside the methods
        private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Optionally check if it's not a postback
            if (!IsPostBack)
            {
                // Any initialization code
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string lname = TextBox2.Text;
            string id = TextBox3.Text;
            string module = TextBox4.Text;
            string course = TextBox5.Text;
            int hours;
            double payrate;

            // Validate input
            if (string.IsNullOrWhiteSpace(name) ||
                string.IsNullOrWhiteSpace(lname) ||
                string.IsNullOrWhiteSpace(id) ||
                string.IsNullOrWhiteSpace(module) ||
                string.IsNullOrWhiteSpace(course) ||
                !int.TryParse(TextBox6.Text, out hours) ||
                !double.TryParse(TextBox7.Text, out payrate))
            {
                // Replace MessageBox with a suitable web UI method
                // Example: Label1.Text = "Fill in the missing fields!";
                return;
            }

            // Call the method to save the information
            SavingInfo(name, lname, id, module, course, hours, payrate);
        }

        private void SavingInfo(string name, string lname, string id, string module, string course, int hours, double payrate)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Stores (lecturer_id, Lecturer_Name, Lecturer_Surname, Module, Course, Hours, Payrate) " +
                               "VALUES (@ID, @Name, @Lname, @Module, @Course, @Hours, @Payrate)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Correctly assign the parameters
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Lname", lname);
                    cmd.Parameters.AddWithValue("@Module", module);
                    cmd.Parameters.AddWithValue("@Course", course);
                    cmd.Parameters.AddWithValue("@Hours", hours);
                    cmd.Parameters.AddWithValue("@Payrate", payrate);

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery(); // Execute the command
                        // Optional: Provide feedback to the user
                        // Label1.Text = "Information saved successfully!";
                    }
                    catch (Exception ex)
                    {
                        // Handle exception (log or show a message)
                        // Label1.Text = "Error: " + ex.Message;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Logic for Button2
        }
    }
}
