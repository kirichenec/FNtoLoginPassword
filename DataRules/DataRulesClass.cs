using System.Globalization;
using System.Windows.Controls;

namespace DataRules
{
    public class NotEmptyValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if (string.IsNullOrWhiteSpace((value ?? "").ToString()))
            {
                return new ValidationResult(false, "Required field");
            }
            return ValidationResult.ValidResult;
        }
    }

    public class NotNegativeValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            if (float.TryParse(value as string, out float floatValue))
            {
                if (!(floatValue > 0))
                {
                    return new ValidationResult(false, "Only positive");
                }
            }
            return ValidationResult.ValidResult;
        }
    }
}
