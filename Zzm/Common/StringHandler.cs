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
        /// 截取指定长度的子字符串
        /// </summary>
        /// <param name="str">原字符串</param>
        /// <param name="length">子字符串的长度</param>
        /// <returns>子字符串</returns>
        public static string CutString(string str, int length)
        {
            if (str.Length >= length)
                return str.Substring(0, length) + "...";
            else
                return str;
        }

        /// <summary>
        /// 用正则表达式过滤HTML字符
        /// </summary>
        /// <param name="str">需要处理的字符串</param>
        /// <returns></returns>
        public static string RemoveHtml(string str)
        {
            return Regex.Replace(str, "</?[^>]*>|\\s", "", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// 截取前先过滤HTML字符
        /// </summary>
        /// <param name="str">原字符串</param>
        /// <param name="length">子字符串的长度</param>
        /// <returns>子字符串</returns>
        public static string FilterString(string str, int length)
        {
            return CutString(RemoveHtml(str), length);
        }
    }
}
