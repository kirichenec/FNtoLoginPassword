using UniversalKirichLibrary;

namespace FIOtoLoginPassword.Model
{
    class Settings : PropertyChangedSimplificator
    {
        #region IsDarkTheme
        private bool _isDarkTheme;

        /// <summary>
        /// Dark|white theme
        /// </summary>
        public bool IsDarkTheme
        {
            get { return _isDarkTheme; }
            set { _isDarkTheme = value; NotifyPropertyChanged(); }
        }
        #endregion

        #region MainWindow
        private Window _mainWindow;

        /// <summary>
        /// Main window settings
        /// </summary>
        public Window MainWindow
        {
            get { return _mainWindow; }
            set { _mainWindow = value; NotifyPropertyChanged(); }
        }
        #endregion
    }

    /// <summary>
    /// Window params class
    /// </summary>
    public class Window : PropertyChangedSimplificator
    {
        #region Height
        private double _height;

        /// <summary>
        /// Window height
        /// </summary>
        public double Height
        {
            get { return _height; }
            set { _height = value; NotifyPropertyChanged(); }
        }
        #endregion

        #region Left
        private double _left;

        /// <summary>
        /// Window position from left
        /// </summary>
        public double Left
        {
            get { return _left; }
            set { _left = value; NotifyPropertyChanged(); }
        }
        #endregion

        #region Top
        private double _top;

        /// <summary>
        /// Window position from top
        /// </summary>
        public double Top
        {
            get { return _top; }
            set { _top = value; NotifyPropertyChanged(); }
        }
        #endregion

        #region Width
        private double _width;

        /// <summary>
        /// Window width
        /// </summary>
        public double Width
        {
            get { return _width; }
            set { _width = value; NotifyPropertyChanged(); }
        }
        #endregion

        #region State
        private System.Windows.WindowState _state;

        /// <summary>
        /// Normal, minimazed or maximazed state of window
        /// </summary>
        public System.Windows.WindowState State
        {
            get { return _state; }
            set { _state = value; NotifyPropertyChanged(); }
        }
        #endregion
    }
}
