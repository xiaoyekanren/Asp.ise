using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Text.RegularExpressions;

namespace Web.Common
{
    public static class StringHandler
    {
        /// <summary>
        /// ��ȡָ�����ȵ����ַ���
        /// </summary>
        /// <param name="str">ԭ�ַ���</param>
        /// <param name="length">���ַ����ĳ���</param>
        /// <returns>���ַ���</returns>
        public static string CutString(string str, int length)
        {
            if (str.Length >= length)
                return str.Substring(0, length) + "...";
            else
                return str;
        }

        /// <summary>
        /// ��������ʽ����HTML�ַ�
        /// </summary>
        /// <param name="str">��Ҫ������ַ���</param>
        /// <returns></returns>
        public static string RemoveHtml(string str)
        {
            return Regex.Replace(str, "</?[^>]*>|\\s", "", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// ��ȡǰ�ȹ���HTML�ַ�
        /// </summary>
        /// <param name="str">ԭ�ַ���</param>
        /// <param name="length">���ַ����ĳ���</param>
        /// <returns>���ַ���</returns>
        public static string FilterString(string str, int length)
        {
            return CutString(RemoveHtml(str), length);
        }
    }
}
