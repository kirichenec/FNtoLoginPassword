   M S B A M L   `   `   `  ���� M  IFIOtoLoginPassword, Version=0.0.0.1, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:FNtoLoginPassword.View.ControlsFNtoLoginPassword.View.Controls  +    %FIOtoLoginPassword.View.GeneratorPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Bcontrols-clr-namespace:FNtoLoginPassword.View.Controls       N� Title$   FullName to Login:Password��   MaterialDesignPaper N� 
Background# �     MaterialDesignFont N� 
FontFamily# �    	PageStyle#��[ $��14(�$��Regular"�  MaterialDesignBody#���  &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � DataContext �� *	Generator+  Locator �� Source# [  � 	Resources  �� 
TargetType  MaterialDesignRaisedButton	 �� BasedOn
 �� Property �� Value % !MaterialDesignFloatingHintTextBox.  (MaterialDesignThemes.Wpf.TextFieldAssist)  #MaterialDesignThemes.Wpf.HintAssist��%�   '��       7  '�� -     7  �� " ��8	   .��� 
 � ��$ 0,0,8,8q��� " ��8	   .��� 
 � ��$ 0,0,8,8q��� 
 �@ TextBoxViewMargin$	 1,0q��� 
 �@ FloatingScale$
 0.75Q�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadSettings+.��)  #MaterialDesignThemes.Wpf.DialogHost  ��.  .��)	  #MaterialDesignThemes.Wpf.DrawerHost	   	  IsLeftDrawerOpen ��  �� ElementName$ MenuToggleButton�� �� Path$ 	IsChecked� 	  LeftDrawerContent ]� $	��200��.+���  �� Orientation$ Vertical=� '
  !MaterialDesignThemes.Wpf.PackIcon  MaterialDesignFlatButton 	  CloseDrawerCommand"  System.Windows.Controls.Dock   Left��%B  '
        '�� i     '�� �     7  �� " 
 .��� 
 � ��$ 0���� 
 � ��$	 8,0q��� 
 � ��$ Center=��� 
 � ��$ 16���� " ��.��� 
 � ��$ 1���� 
 � ��$ Center=��� 
 �@��TextAlignment$
 Left=��� " ��8	   .��� 
 � ��# Z �� 
 � ��# Z �� 
 � ��$ Stretch=�.+�(  "MaterialDesignThemes.Wpf.ColorZone  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�   Mode$
 Dark=�$	��Top=�$��0,0,0,5q�.��� .+�� $��5q�.+��� $ Vertical=�{�.  $��5,5,0,0q�   MaterialDesignTextBox��%i   '��       7  �� " ��8	   .��� 
 � ��$ 0q��� 
 � ��$ 5(��� 
 �@J�Opacity$	 0.4Q�.+���    Hint$ Login���� $ Password���� $��FN→L:P�� 	 SubheadingTextBlock#��[	 $��Center=�$��8q� �� TextAlignment$
 Left=�d� $��Right=� 
 MenuToggleButton#��[
 $	��Top=� d� 	IsChecked �� $ MenuToggleButton��$ 	IsChecked� �� Mode$ TwoWay=��� #���   �� $ Vertical=�.+���  � ToolTip$ Настройки������ *OpenDialogCloseDrawerCommand+��5   /FNtoLoginPassword.View.Controls.SettingsControl  .���  � ColumnDefinitions �� $
��Auto ��� .+�
  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ Settings=��� $��Settings���� $ О программе������ *OpenDialogCloseDrawerCommand+��2   ,FNtoLoginPassword.View.Controls.AboutControl  .���  �� $
��Auto ��� .+�
  $ Information=��� $��About���� $$ Поверх всех окон��$��Stretch=����� *AlwaysOnTopCommand+.��� .+�� $
��Left=� �� �� $
��Auto �.+�
  $ VectorArrangeAbove=��� $��Up���� $��Right=� �� *	IsTopmost+$ TwoWay=��� #���   �� $ Vertical=�.+��� $ 
Выход������ *ExitCommand+.���  �� $
��Auto ��� .+�
  $ 	ExitToApp=��� $
��Exit��.��]� .+�  $	��Top=�$ Depth2=�$ 
PrimaryMid=�.��]� .+�d� -     d�Name$  MenuToggleButton��$ FalseY�#��[
 �� $ ��FullName to Login:Password��$��8q�$
��Left=� # MaterialDesignHeadlineTextBlock#��[ $��Center=�#  MaterialDesignThemes.Wpf.Card  $��Bottom=�$��8q�$��24q�$��Center=�.��� -   ! �Name$! 
LayoutRoot��$��8,8,0,0q�$��Center=�" � RowDefinitions" �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� �� $
��Auto �.+��� $��0��$ 	Full name������ *
FullName+# �� UpdateSourceTrigger$# PropertyChanged=�$ TwoWay=��� $��0��$��1��$
��Copy��$��Right=�$ Copy FN������ *CopyToClipboardCommand+$ OneWay=����� *
FullName+�� $��1��$��2��$��Generate������ *GenerateCommand+�� $��2��$ Login������ *Login+$# PropertyChanged=�$ TwoWay=��� $��2��$��1��$
��Copy��$��Right=�$ Copy Generated������ *CopyToClipboardCommand+$ OneWay=����� *Login+�� $��3��$ Password������ *
Password+$# PropertyChanged=�$ TwoWay=��� $��3��$��1��$
��Copy��$��Right=�$ Copy Password������ *CopyToClipboardCommand+$ OneWay=����� *
Password+