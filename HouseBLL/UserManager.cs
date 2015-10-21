using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using HouseDAL;
using HouseModel;

namespace HouseBLL
{
    public class UserManager
    {
        UserService userService = new UserService();
        public bool LogIn(string username, string password)
        {
            return userService.LogIn(username, password);
        }

        public bool Register(User user)
        {
            return userService.Register(user);
        }
    }
}
