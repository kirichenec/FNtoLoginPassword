   M S B A M L   `   `   `  ����M  IFIOtoLoginPassword, Version=0.0.0.1, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:FNtoLoginPassword.View.ControlsFNtoLoginPassword.View.Controls  5      +    %FIOtoLoginPassword.View.GeneratorPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Bcontrols-clr-namespace:FNtoLoginPassword.View.Controls     5        N� Title$   FullName to Login:Password��5         MaterialDesignPaper N� 
Background# �   5        MaterialDesignFont N� 
FontFamily# �  5
        	PageStyle#��[ 5      $��14(�5      $��Regular"�5        MaterialDesignBody#���  5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � DataContext 5	      �� *	Generator+  Locator �� Source# [  � 	Resources 5       �� 
TargetType  MaterialDesignRaisedButton	 �� BasedOn
 �� Property �� Value % !MaterialDesignFloatingHintTextBox.  (MaterialDesignThemes.Wpf.TextFieldAssist)  #MaterialDesignThemes.Wpf.HintAssist��%+  '��       7  '�� R     7  �� 5   
   " ��6   8	   .�5      �� 
 � ��$ 0,0,8,8q�6'   5      �� 5   
   " ��6   8	   .�5      �� 
 � ��$ 0,0,8,8q�6'   �� 5      
 �@ TextBoxViewMargin$	 1,0q�6Q   �� 5      
 �@ FloatingScale$
 0.75Q�6H   5      5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadSettings+5       .��5#      )  #MaterialDesignThemes.Wpf.DialogHost  ��.  .��5$   
   )	  #MaterialDesignThemes.Wpf.DrawerHost	   	  IsLeftDrawerOpen 6$   ��  �� ElementName$ MenuToggleButton�� �� Path$ 	IsChecked� 	  LeftDrawerContent 5&      ]� 5'      $	��200��6   .+�5(      ��  �� Orientation$ Vertical=�6!    5)      '
  !MaterialDesignThemes.Wpf.PackIcon  MaterialDesignFlatButton 	  CloseDrawerCommand"  System.Windows.Controls.Dock   Left��%  '
        '�� �     '�� [    7  �� 5*      " 
 6$   .�5+   "   �� 
 � ��$ 0��6@   �� 5,   "   
 � ��$	 8,0q�6;   �� 5-   "   
 � ��$ Center=�6F   �� 5.   "   
 � ��$ 16��6:   5/      �� 50      " ��6$   .�51   "   �� 
 � ��$ 1��6@   �� 52   "   
 � ��$ Center=�6F   �� 53   "   
 �@��TextAlignment$
 Left=�6B   54      �� 55      " ��6$   8	   .�56   "   �� 
 � ��# Z 6<   �� 57   "   
 � ��# Z 6E   �� 58   "   
 � ��$ Stretch=�6O   59      5:      .+�5<      (  "MaterialDesignThemes.Wpf.ColorZone  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�63      Mode$
 Dark=�5=   /   $	��Top=�5>   /   $��0,0,0,5q�5?   /   .��5@      � .+�5A   "   � $��5q�6'   .+�5B   &   �� $ Vertical=�61   {�.  $��5,5,0,0q�6Z    5C   *     MaterialDesignTextBox��%�   '��       7  �� 5D   .   " ��64   8	   .�5E   2   �� 
 � ��$ 0q�6K   �� 5F   2   
 � ��$ 5(�6M   �� 5G   2   
 �@J�Opacity$	 0.4Q�6L   5H   /   5I   +   .+�5J   *   ��    Hint$ Login��62   �� 5K   *   $ Password��62   5L   '   5M   #   �� 5N   "   $��FN→L:P��6,    	 SubheadingTextBlock#��[	 6:   $��Center=�6g   $��8q�6�    �� TextAlignment$
 Left=�6�   d� 5O   "   $��Right=�6/    
 MenuToggleButton#��[
 5Q   /   $	��Top=�5R   /    d� 	IsChecked 5P   /   �� $ MenuToggleButton��$ 	IsChecked� �� Mode$ TwoWay=�5R   /   5S      5T      �� 5V      #���   6$   �� 5X      $ Vertical=�6%   .+�5Y      ��  � ToolTip$ Настройки��6%   ��5Z   %   �� *OpenDialogCloseDrawerCommand+��5[   "   5   /FNtoLoginPassword.View.Controls.SettingsControl  5\   &   .��5^   "   �  � ColumnDefinitions 5_   &   �� 5`   *   $
��Auto �6;   �� 5a   *   .+�5d   &   
  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ Settings=�6>   �� 5e   &   $��Settings��60   5f   #   5g      �� 5h      $ О программе��6%   ��5i   %   �� *OpenDialogCloseDrawerCommand+��5j   "   2   ,FNtoLoginPassword.View.Controls.AboutControl  5k   &   .��5m   "   �  5n   &   �� 5o   *   $
��Auto �6;   �� 5p   *   .+�5s   &   
  $ Information=�6>   �� 5t   &   $��About��60   5u   #   5v      �� 5w      $$ Поверх всех окон��6%   $��Stretch=�5y   %   ��5x   %   �� *AlwaysOnTopCommand+.��5z   "   � .+�5{   &   � $
��Left=�6+    5|   *   �� 5}   .   �� 5~   .   $
��Auto �6?   .+�5�   *   
  $ VectorArrangeAbove=�6B   �� 5�   *   $��Up��64   5�   '   �� 5�   &   $��Right=�5�   /    5�   /   �� *	IsTopmost+$ TwoWay=�5�   /   5�   #   5�      5�      �� 5�      #���   6$   �� 5�      $ Vertical=�6%   .+�5�      �� $ 
Выход��6%   ��5�   !   �� *ExitCommand+.��5�   "   �  5�   &   �� 5�   *   $
��Auto �6;   �� 5�   *   .+�5�   &   
  $ 	ExitToApp=�6>   �� 5�   &   $
��Exit��60   5�   #   5�      5�      5�      5�      .��5�      ]� .+�5�        $	��Top=�6+   $ Depth2=�5�   +   $ 
PrimaryMid=�5�   +   .��5�      ]� .+�5�      d� -   5          d�Name$  MenuToggleButton��5�   '   $ FalseY�5�   '   #��[
 5�   '   �� 5�      $ ��FullName to Login:Password��6$   $��8q�5�   $   $
��Left=�5�   $    # MaterialDesignHeadlineTextBlock#��[ 5�   $   $��Center=�5�   $   5�      5�      #  MaterialDesignThemes.Wpf.Card  5�      $��Bottom=�6&   $��8q�5�      $��24q�5�      $��Center=�5�      .��5�      � -   5        ! �Name$! 
LayoutRoot��5�      $��8,8,0,0q�6/   $��Center=�6@   " � RowDefinitions" 5�      �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,    5�      �� 5�      �� 5�      $
��Auto �6/   .+�5�      �� $��0��6"   $ 	Full name��5�   "   ��5�   /   �� *
FullName+# �� UpdateSourceTrigger$# PropertyChanged=�$ TwoWay=�5�   "   �� 5�      $��0��6!   $��1��6.   $
��Copy��6>   $��Right=�5�      $ Copy FN��5�      ��5�      �� *CopyToClipboardCommand+$ OneWay=���5�      �� *
FullName+5�      �� 5�      $��1��6!   $��2��6.   $��Generate��6B   ��5�      �� *GenerateCommand+�� 5�      $��2��6"   $ Login��5�      ��5�   /   �� *Login+$# PropertyChanged=�$ TwoWay=�5�      �� 5�      $��2��6!   $��1��6.   $
��Copy��6>   $��Right=�5�      $ Copy Generated��5�      ��5�      �� *CopyToClipboardCommand+$ OneWay=���5�      �� *Login+5�      �� 5�      $��3��6"   $ Password��5�      ��5�   /   �� *
Password+$# PropertyChanged=�$ TwoWay=�5�      �� 5�      $��3��6!   $��1��6.   $
��Copy��6>   $��Right=�5�      $ Copy Password��5�      ��5�      �� *CopyToClipboardCommand+$ OneWay=���5�      �� *
Password+5�      5�      5�      5�      5�      5�      5�      