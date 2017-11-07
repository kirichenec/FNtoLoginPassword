using System;
using System.Linq;
using System.Text.RegularExpressions;

namespace FNtoLoginPassword.Library
{
    public static class Generator
    {
        private static Random _random = new Random();

        #region GetPassword
        /// <summary>
        /// Password generator method
        /// </summary>
        /// <param name="length">Password length</param>
        /// <param name="fromSymbols">Password symbols</param>
        /// <returns>Generated password</returns>
        public static string GetPassword(int length = 5, string fromSymbols = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM123456789")
        {
            var result = string.Empty;
            for (int i = 0; i < length; i++)
            {
                int index = _random.Next(0, fromSymbols.Length - 1);
                result += fromSymbols[index];
            }

            return result;
        }
        #endregion

        #region Transcription
        /// <summary>
        /// Generate login by full name
        /// </summary>
        /// <param name="_from">Full name</param>
        /// <returns>Generated login</returns>
        public static string Transcription(string _from)
        {
            if (string.IsNullOrEmpty(_from))
            {
                return string.Empty;
            }
            var result = string.Empty;
            string[] _splittedFN = _from.Split(' ');
            _from =
                _splittedFN[0] +
                (_splittedFN.Count() > 1 ? _splittedFN[1][0].ToString() : string.Empty) +
                (_splittedFN.Count() > 2 ? _splittedFN[2][0].ToString() : string.Empty);
            foreach (var word in _from)
            {
                // If English
                if (Regex.IsMatch(word.ToString(), @"^[a-zA-Z]+$"))
                {
                    result += word;
                }
                // If Russion
                if (Regex.IsMatch(word.ToString(), @"^[а-яА-Я]+$"))
                {
                    switch (word)
                    {
                        case 'а': result += 'a'; break;
                        case 'б': result += 'b'; break;
                        case 'в': result += 'v'; break;
                        case 'г': result += 'g'; break;
                        case 'д': result += 'd'; break;
                        case 'е':
                        case 'ё': result += 'e'; break;
                        case 'ж': result += "zh"; break;
                        case 'з': result += "z"; break;
                        case 'и':
                        case 'й': result += "i"; break;
                        case 'к': result += "k"; break;
                        case 'л': result += "l"; break;
                        case 'м': result += "m"; break;
                        case 'н': result += "n"; break;
                        case 'о': result += "o"; break;
                        case 'п': result += "p"; break;
                        case 'р': result += "r"; break;
                        case 'с': result += "s"; break;
                        case 'т': result += "t"; break;
                        case 'у': result += "u"; break;
                        case 'ф': result += "f"; break;
                        case 'х': result += "h"; break;
                        case 'ц': result += "ts"; break;
                        case 'ч': result += "ch"; break;
                        case 'ш': result += "sh"; break;
                        case 'щ': result += "shch"; break;
                        case 'ъ': break;
                        case 'ы': result += "y"; break;
                        case 'ь': break;
                        case 'э': result += "e"; break;
                        case 'ю': result += "yu"; break;
                        case 'я': result += "ya"; break;
                        default: break;
                    }
                }
            }
            return result;
        }
        #endregion
    }
}
