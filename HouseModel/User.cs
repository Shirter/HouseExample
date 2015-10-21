using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace HouseModel
{
    [Serializable]
    public class User
    {
        public int LoginId { get; set; }
        [Required(ErrorMessage = "用户名不能为空")]
        public string LoginName { get; set; }
        [Required(ErrorMessage = "用户名不能为空")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "密码不能为空")]
        public string Password { get; set; }
        [Required(ErrorMessage = "确认密码不能为空")]
        [Compare("Password", ErrorMessage = "两次输入的密码必须一致")]
        public string PasswordConfirm { get; set; }
        [Required(ErrorMessage = "手机号不能为空")]
        [StringLength(11, MinimumLength = 7, ErrorMessage = "{0}长度必须在{2}和{1}之间")]
        [DisplayName("手机号")]
        public string Telephone { get; set; }
    }
}
