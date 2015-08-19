using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tune.App_Code
{
    public class Validation
    {
        public static bool EmailValidation(string email)
        {
            //email Validation
            //verify email control name
            int posDot, posAt, posDotNew, posAtNew;
            if (email.Contains('@') && email.Contains('.'))
            {
                posDot = email.IndexOf('.');
                posAt = email.IndexOf('@');
                if (posDot > posAt)
                {
                    posDotNew = email.LastIndexOf('.');
                    posAtNew = email.LastIndexOf('@');
                    if (posDot == posDotNew && posAt == posAtNew)
                    {
                        if (posAt != 0 && posDot != email.Length - 1)
                        {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        public static bool MobileVerification(string mobile)
        {
            //phone number validation
            if (mobile.Length == 10)
            {
                int flag = 0;
                char[] arr = mobile.ToCharArray();
                if (arr[0] != '0')
                {
                    for (int i = 0; i < 10; i++)
                    {
                        if (!(arr[i] >= '0' && arr[i] <= '9'))
                        {
                            flag = 1;
                            break;
                        }
                    }
                    if(flag==0)
                        return true;
                }
            }
            return false;
        }
    }
}