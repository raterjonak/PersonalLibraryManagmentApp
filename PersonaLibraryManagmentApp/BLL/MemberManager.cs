using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PersonaLibraryManagmentApp.DAL;
using PersonaLibraryManagmentApp.Model;

namespace PersonaLibraryManagmentApp.BLL
{
    public class MemberManager
    {
        MemberGateway memberGateway=new MemberGateway();

        public string Save(Member aMember)
        {
            int result = memberGateway.Save(aMember);

            if (result>0)
            {
                return "Save succesfully.";
            }
            else
            {
                return "Save Failed.";
            }
        }
    }
}