   M S B A M L   `   `   `  ����   FIOtoLoginPassword#    FIOtoLoginPassword.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     $	��300��$	��500��  � Title$  FIO to Login:Password��   MaterialDesignPaper#���     MaterialDesignFont#���  $	��320��$	��500��$��14(�$��Regular"�  MaterialDesignBody#���  &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � DataContext �� *Main+  Locator �� Source# [  � 	Resources  �� 
TargetType  MaterialDesignRaisedButton �� BasedOn �� Property	 �� Value % !MaterialDesignFloatingHintTextBox.  (MaterialDesignThemes.Wpf.TextFieldAssist)  #MaterialDesignThemes.Wpf.HintAssist ' #MaterialDesignHamburgerToggleButton
 �� RelativeSource��%X  '��       7  '�� -     7  'd� �     7  �� " ��8   .���  � ��$	 0,0,8,8q��� " ��8   .���  � ��$	 0,0,8,8q���  �@ TextBoxViewMargin$		 1,0q���  �@ FloatingScale$
	 0.75Q��� " d�8   .���  � ��$	 16����  � ��$	 8q���  � ��$	 0q���  � ��	 �� *Height+
 �� *Self+.��)  #MaterialDesignThemes.Wpf.DialogHost  ��.  .��)  #MaterialDesignThemes.Wpf.DrawerHost     IsLeftDrawerOpen ��  �� ElementName$ MenuToggleButton�� �� Path$ 	IsChecked�   LeftDrawerContent ]� $	��200��.+���  �� Orientation$ Vertical=� '  !MaterialDesignThemes.Wpf.PackIcon  MaterialDesignFlatButton   CloseDrawerCommand"  System.Windows.Controls.Dock   Left��%B  '        '�� i     '�� �     7  �� "  .���  � ��$	 0����  � ��$		 8,0q���  � ��$	 Center=���  � ��$	 16���� " ��.���  � ��$	 1����  � ��$	 Center=���  �@��TextAlignment$
	 Left=��� " ��8   .���  � ��#	 Z ��  � ��#	 Z ��  � ��$	 Stretch=�.+�(  "MaterialDesignThemes.Wpf.ColorZone  +	  %MaterialDesignThemes.Wpf.ShadowAssist 	  ShadowDepth$ Depth2=�   Mode$
 Dark=�$	��Top=�$��0,0,0,5q�.��� .+�� $��5q�.+��� $ Vertical=�{�.  $��5,5,0,0q�   MaterialDesignTextBox��%p   '��       7  �� " ��8   .���  � ��$	 0,0,5,5q���  � ��$	 10(���  �@J�Opacity$		 0.4Q�.+���    Hint$ Login���� $ Password���� $��	FIO→L:P��$��Center=�$��8q� �� TextAlignment$
 Left=�d� $��Right=�$	��Top=� d� 	IsChecked �� $ MenuToggleButton��$ 	IsChecked� �� Mode$ TwoWay=��� #���   �� $ Vertical=�.+���  � ToolTip$ Настройки��.���  � ColumnDefinitions �� $
��Auto ��� .+�  �
  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]] 
  Kind$ Settings=��� $��Settings���� $ Справка��   OpenDialogCommand#��Z .���  �� $
��Auto ��� .+�  $ 
HelpCircle=��� $
��Help���� $$ Поверх всех окон��$��Stretch=����� *AlwaysOnTopCommand+.��� .+�� $
��Left=� �� �� $
��Auto �.+�  $ VectorArrangeAbove=��� $��Up���� $��Right=� �� *	IsTopmost+$ TwoWay=��� #���   �� $ Vertical=�.+��� $ 
Выход������ *ExitCommand+.���  �� $
��Auto ��� .+�  $ 	ExitToApp=��� $
��Exit��.��]� .+�  $	��Top=�$ Depth2=�$ 
PrimaryMid=�.��]� .+�d� -    d�Name$ MenuToggleButton��$ FalseY��� $��FIO to Login:Password��$��Center=� #	 MaterialDesignHeadlineTextBlock#��[	 $��Center=�#  MaterialDesignThemes.Wpf.Card  $��Bottom=�$��8q�$��24q�$��Center=�.��� -    �Name$ 
LayoutRoot��$��8,8,0,0q�$��Center=� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� �� $
��Auto �.+��� $��0��$	 FIO������ *FIO+ �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=��� $��0��$��1��$
��Copy��$��Right=�$ Copy FIO������ *CopyToClipboardCommand+$ OneWay=����� *FIO+�� $��1��$��2��$��Generate������ *GenerateCommand+�� $��2��$ Login������ *Login+$ PropertyChanged=�$ TwoWay=��� $��2��$��1��$
��Copy��$��Right=�$ Copy Generated������ *CopyToClipboardCommand+$ OneWay=����� *Login+�� $��3��$ Password������ *
Password+$ PropertyChanged=�$ TwoWay=��� $��3��$��1��$
��Copy��$��Right=�$ Copy Password������ *CopyToClipboardCommand+$ OneWay=����� *
Password+