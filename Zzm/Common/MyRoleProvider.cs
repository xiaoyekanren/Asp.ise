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

        // ժҪ:
        //     ��ָ���û�����ӵ������õ� applicationName ��ָ����ɫ����
        //
        // ����:
        //   usernames:
        //     һ���ַ������飬���а���Ҫ��ӵ�ָ����ɫ���û�����
        //
        //   roleNames:
        //     һ���ַ������飬���а���Ҫ��ָ���û�����ӵ��Ľ�ɫ�����ơ�
        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
        }
        //
        // ժҪ:
        //     ������Դ��Ϊ�����õ� applicationName ���һ���½�ɫ��
        //
        // ����:
        //   roleName:
        //     Ҫ�����Ľ�ɫ�����ơ�
        public override void CreateRole(string roleName)
        {
        }
        //
        // ժҪ:
        //     ������Դ���Ƴ������õ� applicationName �Ľ�ɫ��
        //
        // ����:
        //   roleName:
        //     Ҫɾ���Ľ�ɫ�����ơ�
        //
        //   throwOnPopulatedRole:
        //     ���Ϊ true������ roleName ����һ��������Աʱ�����쳣�����Ҳ�ɾ�� roleName��
        //
        // ���ؽ��:
        //     ����ɹ�ɾ����ɫ����Ϊ true������Ϊ false��
        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            return false;
        }
        //
        // ժҪ:
        //     ��ȡ����ĳ����ɫ����ָ�����û�����ƥ����û��������顣
        //
        // ����:
        //   roleName:
        //     ��Ϊ������Χ�Ľ�ɫ��
        //
        //   usernameToMatch:
        //     Ҫ�������û�����
        //
        // ���ؽ��:
        //     һ���ַ������飬�����û����� usernameToMatch ƥ�����û���ָ����ɫ�ĳ�Ա�������û������ơ�
        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            return null;
        }
        //
        // ժҪ:
        //     ��ȡ�����õ� applicationName �����н�ɫ���б�
        //
        // ���ؽ��:
        //     һ���ַ������飬����������Դ�д洢�������õ� applicationName �����н�ɫ�����ơ�
        public override string[] GetAllRoles()
        {
            return null;
        }
        //
        // ժҪ:
        //     ��ȡ���������õ� applicationName ��ָ����ɫ���û����б�
        //
        // ����:
        //   roleName:
        //     һ����ɫ���ƣ�����ȡ�ý�ɫ���û��б�
        //
        // ���ؽ��:
        //     һ���ַ������飬���а������������õ� applicationName ��ָ����ɫ�ĳ�Ա�������û�����
        public override string[] GetUsersInRole(string roleName)
        {
            return null;
        }
        //
        // ժҪ:
        //     ��ȡһ��ֵ��ָʾָ���û��Ƿ����������õ� applicationName ��ָ����ɫ��
        //
        // ����:
        //   username:
        //     Ҫ�������û�����
        //
        //   roleName:
        //     ��Ϊ������Χ�Ľ�ɫ��
        //
        // ���ؽ��:
        //     ���ָ���û����������õ� applicationName ��ָ����ɫ����Ϊ true������Ϊ false��
        public override bool IsUserInRole(string username, string roleName)
        {
            return false;
        }
        //
        // ժҪ:
        //     �Ƴ������õ� applicationName ��ָ����ɫ�е�ָ���û�����
        //
        // ����:
        //   usernames:
        //     һ���ַ������飬���а���Ҫ��ָ����ɫ���Ƴ����û�����
        //
        //   roleNames:
        //     һ���ַ������飬���а���Ҫ��ָ���û��������Ƴ��Ľ�ɫ�����ơ�
        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
        }
        //
        // ժҪ:
        //     ��ȡһ��ֵ����ֵָʾָ����ɫ���Ƿ��Ѵ����������õ� applicationName �Ľ�ɫ����Դ�С�
        //
        // ����:
        //   roleName:
        //     Ҫ������Դ�������Ľ�ɫ�����ơ�
        //
        // ���ؽ��:
        //     �����ɫ���Ѵ����������õ� applicationName ������Դ�У���Ϊ true������Ϊ false��
        public override bool RoleExists(string roleName)
        {
            return false;
        }
    }
}
