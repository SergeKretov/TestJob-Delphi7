object FormMain: TFormMain
  Left = 389
  Top = 257
  Width = 1044
  Height = 600
  Caption = 'Logger by Sergey Barsukov'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 281
    Width = 1028
    Height = 281
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 281
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 88
      Top = 248
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 248
      Width = 75
      Height = 25
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object StaticTextLogFile: TStaticText
      Left = 8
      Top = 8
      Width = 108
      Height = 20
      BorderStyle = sbsSingle
      Caption = 'StaticTextLogFile'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object StaticTextNoTh: TStaticText
      Left = 8
      Top = 32
      Width = 108
      Height = 20
      BorderStyle = sbsSingle
      Caption = 'StaticTextLogFile'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object StaticTextLifeTime: TStaticText
      Left = 8
      Top = 56
      Width = 108
      Height = 20
      BorderStyle = sbsSingle
      Caption = 'StaticTextLogFile'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
end
