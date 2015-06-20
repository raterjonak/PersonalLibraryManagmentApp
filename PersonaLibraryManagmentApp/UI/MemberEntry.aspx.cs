using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PersonaLibraryManagmentApp.BLL;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.UI
{
    public partial class MemberEntry : System.Web.UI.Page
    {
        MemberManager memberManager=new MemberManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void memberSaveButton_Click(object sender, EventArgs e)
        {
            Member aMember=new Member();
            aMember.Number = numberTextBox.Text;

            aMember.Name = nameTextBox.Text;
            string msg = memberManager.Save(aMember);
            messageShowLabel.Text = msg;

        }
    }
}