using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Web.Common
{
    public class MyRoleProvider : System.Web.Security.RoleProvider
    {
        private string pApplicationName;
        public override string ApplicationName { get { return pApplicationName; } set { pApplicationName = value; } }
        public MyRoleProvider()
        { }
        public override string[] GetRolesForUser(string username)
        {
            FormsIdentity Id = HttpContext.Current.User.Identity as FormsIdentity;
            if (Id != null)
            {
                return Id.Ticket.UserData.Split(new Char[] { ',' });
            }
            return null;
        }

        // 摘要:
        //     将指定用户名添加到已配置的 applicationName 的指定角色名。
        //
        // 参数:
        //   usernames:
        //     一个字符串数组，其中包含要添加到指定角色的用户名。
        //
        //   roleNames:
        //     一个字符串数组，其中包含要将指定用户名添加到的角色的名称。
        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
        }
        //
        // 摘要:
        //     在数据源中为已配置的 applicationName 添加一个新角色。
        //
        // 参数:
        //   roleName:
        //     要创建的角色的名称。
        public override void CreateRole(string roleName)
        {
        }
        //
        // 摘要:
        //     从数据源中移除已配置的 applicationName 的角色。
        //
        // 参数:
        //   roleName:
        //     要删除的角色的名称。
        //
        //   throwOnPopulatedRole:
        //     如果为 true，则在 roleName 具有一个或多个成员时引发异常，并且不删除 roleName。
        //
        // 返回结果:
        //     如果成功删除角色，则为 true；否则为 false。
        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            return false;
        }
        //
        // 摘要:
        //     获取属于某个角色且与指定的用户名相匹配的用户名的数组。
        //
        // 参数:
        //   roleName:
        //     作为搜索范围的角色。
        //
        //   usernameToMatch:
        //     要搜索的用户名。
        //
        // 返回结果:
        //     一个字符串数组，包含用户名与 usernameToMatch 匹配且用户是指定角色的成员的所有用户的名称。
        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            return null;
        }
        //
        // 摘要:
        //     获取已配置的 applicationName 的所有角色的列表。
        //
        // 返回结果:
        //     一个字符串数组，包含在数据源中存储的已配置的 applicationName 的所有角色的名称。
        public override string[] GetAllRoles()
        {
            return null;
        }
        //
        // 摘要:
        //     获取属于已配置的 applicationName 的指定角色的用户的列表。
        //
        // 参数:
        //   roleName:
        //     一个角色名称，将获取该角色的用户列表。
        //
        // 返回结果:
        //     一个字符串数组，其中包含属于已配置的 applicationName 的指定角色的成员的所有用户名。
        public override string[] GetUsersInRole(string roleName)
        {
            return null;
        }
        //
        // 摘要:
        //     获取一个值，指示指定用户是否属于已配置的 applicationName 的指定角色。
        //
        // 参数:
        //   username:
        //     要搜索的用户名。
        //
        //   roleName:
        //     作为搜索范围的角色。
        //
        // 返回结果:
        //     如果指定用户属于已配置的 applicationName 的指定角色，则为 true；否则为 false。
        public override bool IsUserInRole(string username, string roleName)
        {
            return false;
        }
        //
        // 摘要:
        //     移除已配置的 applicationName 的指定角色中的指定用户名。
        //
        // 参数:
        //   usernames:
        //     一个字符串数组，其中包含要从指定角色中移除的用户名。
        //
        //   roleNames:
        //     一个字符串数组，其中包含要将指定用户名从中移除的角色的名称。
        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
        }
        //
        // 摘要:
        //     获取一个值，该值指示指定角色名是否已存在于已配置的 applicationName 的角色数据源中。
        //
        // 参数:
        //   roleName:
        //     要在数据源中搜索的角色的名称。
        //
        // 返回结果:
        //     如果角色名已存在于已配置的 applicationName 的数据源中，则为 true；否则为 false。
        public override bool RoleExists(string roleName)
        {
            return false;
        }
    }
}
