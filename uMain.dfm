object Form1: TForm1
  Left = 220
  Top = 224
  Width = 1058
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 440
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 456
    Top = 440
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Memo1: TMemo
    Left = 8
    Top = 48
    Width = 513
    Height = 385
    Lines.Strings = (
      
        'Membuat uji coba koding Change Case, dan berharap mendapat. seka' +
        'rang ini saja!'
      'paragraf kedua dari uji coba membuat change case')
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
  end
  object Button1: TButton
    Left = 456
    Top = 8
    Width = 75
    Height = 25
    Caption = 'UPPER'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 520
    Top = 48
    Width = 513
    Height = 385
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 2
    OnChange = Memo2Change
  end
  object Button2: TButton
    Left = 536
    Top = 8
    Width = 75
    Height = 25
    Caption = 'LOWER'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 616
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sentence'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 696
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Title Case'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 776
    Top = 8
    Width = 75
    Height = 25
    Caption = 'tOGGLE cASE'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 856
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Normal'
    TabOrder = 7
    OnClick = Button6Click
  end
end
