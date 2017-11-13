using FIOtoLoginPassword.Model;
using GalaSoft.MvvmLight.Threading;
using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Navigation;
using UniversalKirichLibrary.Simplificators;

namespace FNtoLoginPassword
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        #region Properties

        #region private
        private static bool _firstRun = true;
        private static string _settingsName = "Settings.json";
        #endregion

        #region IsDarkMode
        /// <summary>
        /// Dark theme
        /// </summary>
        public static bool IsDarkMode = false;
        #endregion

        #endregion

        #region Methods

        #region private
        private void Application_LoadCompleted(object sender, System.Windows.Navigation.NavigationEventArgs e)
        {
            if (_firstRun)
            {
                _firstRun = false;
                try
                {
                    var settings = IsolatedStorageSimplificator.LoadData<Settings>(_settingsName);
                    App.Current.MainWindow.Height = settings.MainWindow.Height;
                    App.Current.MainWindow.Width = settings.MainWindow.Width;
                    App.Current.MainWindow.Top = settings.MainWindow.Top;
                    App.Current.MainWindow.Left = settings.MainWindow.Left;
                    App.Current.MainWindow.WindowState = settings.MainWindow.State;
                    IsDarkMode = settings.IsDarkTheme;
                }
                catch
                {
                }

                App.Current.MainWindow.ContentRendered += ClearMainWindowHistory;
                App.Current.MainWindow.Closing += MainWindow_Closing;

                App.Current.MainWindow.UseLayoutRounding = true;
            }
        }

        #region ClearMainWindowHistory | Очистка истории навигации
        /// <summary>
        /// Очистка истории навигации
        /// </summary>
        private void ClearMainWindowHistory(object sender, EventArgs e)
        {
            var mainWindow = (NavigationWindow)App.Current.MainWindow;
            while (mainWindow.CanGoBack)
                mainWindow.RemoveBackEntry();
        }
        #endregion

        #region MainWindow_Closing | Действия при закрытии приложения
        /// <summary>
        /// Действия при закрытии приложения
        /// </summary>
        private void MainWindow_Closing(object sender, CancelEventArgs e)
        {
            SaveSettings();
        }
        #endregion

        #endregion

        #region SaveSettings
        public static void SaveSettings()
        {
            var settings = new Settings()
            {
                MainWindow = new FIOtoLoginPassword.Model.Window()
                {
                    State = App.Current.MainWindow.WindowState
                },
                IsDarkTheme = IsDarkMode
            };

            settings.IsDarkTheme = IsDarkMode;

            App.Current.MainWindow.WindowState = WindowState.Normal;
            settings.MainWindow.Height = App.Current.MainWindow.Height;
            settings.MainWindow.Width = App.Current.MainWindow.Width;
            settings.MainWindow.Top = App.Current.MainWindow.Top;
            settings.MainWindow.Left = App.Current.MainWindow.Left;

            IsolatedStorageSimplificator.SaveData(settings, _settingsName);
        }
        #endregion

        #endregion

        #region Constructors
        static App()
        {
            DispatcherHelper.Initialize();
        }
        #endregion
    }
}
