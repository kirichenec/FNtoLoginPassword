using FNtoLoginPassword.Library;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using MaterialDesignThemes.Wpf;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;

namespace FNtoLoginPassword.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// See http://www.mvvmlight.net
    /// </para>
    /// </summary>
    public class GeneratorViewModel : ViewModelBase
    {
        #region Properties

        #region Constants
        static int defaultLength = 5;
        static string defaultSymbols = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM123456789";
        #endregion

        #region FullName
        /// <summary>
        /// The <see cref="FullName" /> property's name.
        /// </summary>
        public const string FullNamePropertyName = "FullName";

        private string _fullName = string.Empty;

        /// <summary>
        /// Sets and gets the FN property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string FullName
        {
            get
            {
                return _fullName;
            }
            set
            {
                Set(FullNamePropertyName, ref _fullName, value);
            }
        }
        #endregion

        #region IsBlackTheme
        /// <summary>
        /// The <see cref="IsBlackTheme" /> property's name.
        /// </summary>
        public const string IsBlackThemePropertyName = "IsBlackTheme";

        private bool _isBlackTheme = false;

        /// <summary>
        /// Sets and gets the IsBlackTheme property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public bool IsBlackTheme
        {
            get
            {
                return _isBlackTheme;
            }
            set
            {
                Set(IsBlackThemePropertyName, ref _isBlackTheme, value);
                this.TempIsBlackTheme = value;
                App.IsDarkMode = value;
                new PaletteHelper().SetLightDark(value);
            }
        }
        #endregion

        #region IsTopmost
        /// <summary>
        /// The <see cref="IsTopmost" /> property's name.
        /// </summary>
        public const string IsTopmostPropertyName = "IsTopmost";

        private bool _isTopmost = false;

        /// <summary>
        /// Sets and gets the IsTopmost property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public bool IsTopmost
        {
            get
            {
                return _isTopmost;
            }
            set
            {
                Set(IsTopmostPropertyName, ref _isTopmost, value);
                App.Current.MainWindow.Topmost = value;
            }
        }
        #endregion

        #region Login
        /// <summary>
        /// The <see cref="Login" /> property's name.
        /// </summary>
        public const string LoginPropertyName = "Login";

        private string _login = string.Empty;

        /// <summary>
        /// Sets and gets the Login property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string Login
        {
            get
            {
                return _login;
            }
            set
            {
                Set(LoginPropertyName, ref _login, value);
            }
        }
        #endregion

        #region Password
        /// <summary>
        /// The <see cref="Password" /> property's name.
        /// </summary>
        public const string PasswordPropertyName = "Password";

        private string _password = string.Empty;

        /// <summary>
        /// Sets and gets the Password property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string Password
        {
            get
            {
                return _password;
            }
            set
            {
                Set(PasswordPropertyName, ref _password, value);
            }
        }
        #endregion

        #region PasswordLength
        /// <summary>
        /// The <see cref="PasswordLength" /> property's name.
        /// </summary>
        public const string PasswordLengthPropertyName = "PasswordLength";

        private int _passwordLength = defaultLength;

        /// <summary>
        /// Sets and gets the PasswordLength property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public int PasswordLength
        {
            get
            {
                return _passwordLength;
            }
            set
            {
                Set(PasswordLengthPropertyName, ref _passwordLength, value);
                this.TempPasswordLength = value;
            }
        }
        #endregion

        #region PasswordSymbols
        /// <summary>
        /// The <see cref="PasswordSymbols" /> property's name.
        /// </summary>
        public const string PasswordSymbolsPropertyName = "PasswordSymbols";

        private string _passwordSymbols = defaultSymbols;

        /// <summary>
        /// Sets and gets the PasswordSymbols property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string PasswordSymbols
        {
            get
            {
                return _passwordSymbols;
            }
            set
            {
                Set(PasswordSymbolsPropertyName, ref _passwordSymbols, value);
                this.TempPasswordSymbols = value;
            }
        }
        #endregion

        #region Settings: TempIsBlackTheme, TempPasswordLength, TempPasswordSymbols

        #region TempIsBlackTheme
        /// <summary>
        /// The <see cref="TempIsBlackTheme" /> property's name.
        /// </summary>
        public const string TempIsBlackThemePropertyName = "TempIsBlackTheme";

        private bool _tempIsBlackTheme = false;

        /// <summary>
        /// Sets and gets the TempIsBlackTheme property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public bool TempIsBlackTheme
        {
            get
            {
                return _tempIsBlackTheme;
            }
            set
            {
                Set(TempIsBlackThemePropertyName, ref _tempIsBlackTheme, value);
                new PaletteHelper().SetLightDark(value);
            }
        }
        #endregion

        #region TempPasswordLength
        /// <summary>
        /// The <see cref="TempPasswordLength" /> property's name.
        /// </summary>
        public const string TempPasswordLengthPropertyName = "TempPasswordLength";

        private int _tempPasswordLength = defaultLength;

        /// <summary>
        /// Sets and gets the TempPasswordLength property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public int TempPasswordLength
        {
            get
            {
                return _tempPasswordLength;
            }
            set
            {
                Set(TempPasswordLengthPropertyName, ref _tempPasswordLength, value);
            }
        }
        #endregion

        #region TempPasswordSymbols
        /// <summary>
        /// The <see cref="TempPasswordSymbols" /> property's name.
        /// </summary>
        public const string TempPasswordSymbolsPropertyName = "TempPasswordSymbols";

        private string _tempPasswordSymbols = defaultSymbols;

        /// <summary>
        /// Sets and gets the TempPasswordSymbols property.
        /// Changes to that property's value raise the PropertyChanged event. 
        /// </summary>
        public string TempPasswordSymbols
        {
            get
            {
                return _tempPasswordSymbols;
            }
            set
            {
                Set(TempPasswordSymbolsPropertyName, ref _tempPasswordSymbols, value);
            }
        }
        #endregion

        #endregion

        #endregion

        #region Commands

        #region AlwaysOnTopCommand
        private RelayCommand _alwaysOnTopCommand;

        /// <summary>
        /// Gets the AlwaysOnTopCommand.
        /// </summary>
        public RelayCommand AlwaysOnTopCommand
        {
            get
            {
                return _alwaysOnTopCommand
                    ?? (_alwaysOnTopCommand = new RelayCommand(
                    () =>
                    {
                        this.IsTopmost = !this.IsTopmost;
                    }));
            }
        }
        #endregion

        #region GenerateCommand
        private RelayCommand _generateCommand;

        /// <summary>
        /// Gets the GenerateCommand.
        /// </summary>
        public RelayCommand GenerateCommand
        {
            get
            {
                return _generateCommand
                    ?? (_generateCommand = new RelayCommand(
                    () =>
                    {
                        this.Login = Generator.Transcription(FullName?.ToLower());
                        this.Password = Generator.GetPassword(this.PasswordLength, this.PasswordSymbols);
                    }));
            }
        }
        #endregion

        #region CopyToClipboardCommand
        private RelayCommand<string> _copyToClipboardCommand;

        /// <summary>
        /// Gets the CopyToClipboardCommand.
        /// </summary>
        public RelayCommand<string> CopyToClipboardCommand
        {
            get
            {
                return _copyToClipboardCommand
                    ?? (_copyToClipboardCommand = new RelayCommand<string>(
                    copiedText =>
                    {
                        Clipboard.SetText(copiedText ?? "");
                    }));
            }
        }
        #endregion

        #region ExitCommand
        private RelayCommand _exitCommand;

        /// <summary>
        /// Gets the ExitCommand.
        /// </summary>
        public RelayCommand ExitCommand
        {
            get
            {
                return _exitCommand
                    ?? (_exitCommand = new RelayCommand(
                    () =>
                    {
                        App.Current.MainWindow.Close();
                    }));
            }
        }
        #endregion

        #region OpenDialogCloseDrawerCommand
        private RelayCommand<object> _openDialogCloseDrawerCommand;

        /// <summary>
        /// Gets the OpenDialogCloseDrawerCommand.
        /// </summary>
        public RelayCommand<object> OpenDialogCloseDrawerCommand
        {
            get
            {
                return _openDialogCloseDrawerCommand
                    ?? (_openDialogCloseDrawerCommand = new RelayCommand<object>(
                    param =>
                    {
                        DialogHost.OpenDialogCommand.Execute(param, null);
                        DrawerHost.CloseDrawerCommand.Execute(null, null);
                    }));
            }
        }
        #endregion

        #region About: OpenExternalLinkCommand

        #region OpenExternalLinkCommand
        private RelayCommand<string> _openExternalLinkCommand;

        /// <summary>
        /// Gets the OpenExternalLinkCommand.
        /// </summary>
        public RelayCommand<string> OpenExternalLinkCommand
        {
            get
            {
                return _openExternalLinkCommand
                    ?? (_openExternalLinkCommand = new RelayCommand<string>(
                    link =>
                    {
                        System.Diagnostics.Process.Start(link);
                    }));
            }
        }
        #endregion

        #endregion

        #region Settings: CloseSettingsCommand, ResetSettingsCommand, SaveSettingsCommand

        #region CloseSettingsCommand
        private RelayCommand _closeSettingsCommand;

        /// <summary>
        /// Gets the CloseSettingsCommand.
        /// </summary>
        public RelayCommand CloseSettingsCommand
        {
            get
            {
                return _closeSettingsCommand
                    ?? (_closeSettingsCommand = new RelayCommand(
                    () =>
                    {
                        this.TempPasswordLength = this.PasswordLength;
                        this.TempPasswordSymbols = this.PasswordSymbols;
                        this.TempIsBlackTheme = this.IsBlackTheme;
                        DialogHost.CloseDialogCommand.Execute(null, null);
                    }));
            }
        }
        #endregion

        #region ResetSettingsCommand
        private RelayCommand _resetSettingsCommand;

        /// <summary>
        /// Gets the ResetSettingsCommand.
        /// </summary>
        public RelayCommand ResetSettingsCommand
        {
            get
            {
                return _resetSettingsCommand
                    ?? (_resetSettingsCommand = new RelayCommand(
                    () =>
                    {
                        this.PasswordLength = defaultLength;
                        this.PasswordSymbols = defaultSymbols;
                    }));
            }
        }
        #endregion

        #region SaveSettingsCommand
        private RelayCommand _saveSettingsCommand;

        /// <summary>
        /// Gets the SaveSettingsCommand.
        /// </summary>
        public RelayCommand SaveSettingsCommand
        {
            get
            {
                return _saveSettingsCommand
                    ?? (_saveSettingsCommand = new RelayCommand(
                    () =>
                    {
                        this.PasswordLength = this.TempPasswordLength;
                        this.PasswordSymbols = this.TempPasswordSymbols;
                        this.IsBlackTheme = this.TempIsBlackTheme;
                        DialogHost.CloseDialogCommand.Execute(null, null);
                    }));
            }
        }
        #endregion

        #endregion

        #endregion

        #region Methods        

        #region SetTheme
        /// <summary>
        /// Set theme from settings
        /// </summary>
        private void SetTheme()
        {
            var existingResourceDictionary =
                Application.Current.Resources.MergedDictionaries
                .Where(rd => rd.Source != null)
                .SingleOrDefault(rd => Regex.Match(rd.Source.OriginalString, @"(\/MaterialDesignThemes.Wpf;component\/Themes\/MaterialDesignTheme\.)((Dark))").Success);
            if (existingResourceDictionary != null)
            {
                this.IsBlackTheme = true;
            }
            else
            {
                this.IsBlackTheme = false;
            }
        }
        #endregion

        #endregion

        #region Constructor
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public GeneratorViewModel()
        {
            SetTheme();
        }
        #endregion
    }
}