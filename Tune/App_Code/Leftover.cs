using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tune.App_Code
{
    public class Leftover
    {
        public static User Login(string userEmail)
        {
            BLLUser bllUser = new BLLUser();
            User user = new User();
            user = bllUser.GetUserByEmail(userEmail);
        
            return user;

        }
    }
}