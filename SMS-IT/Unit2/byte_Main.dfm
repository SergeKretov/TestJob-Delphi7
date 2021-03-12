object mainForm: TmainForm
  Left = 695
  Top = 212
  BorderStyle = bsDialog
  Caption = #1056#1072#1089#1095#1077#1090' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1093' '#1073#1080#1090' '#1074' '#1073#1072#1081#1090#1077
  ClientHeight = 122
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label4ask: TLabel
    Left = 8
    Top = 8
    Width = 211
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1073#1072#1081#1090#1072' (0-255):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object byteBits: TLabel
    Left = 272
    Top = 8
    Width = 65
    Height = 16
    Caption = '00000000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelBitsInfo: TLabel
    Left = 104
    Top = 32
    Width = 160
    Height = 16
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1080#1090' '#1074' '#1073#1072#1081#1090#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LabelNOB: TLabel
    Left = 269
    Top = 32
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelInfo: TLabel
    Left = 0
    Top = 109
    Width = 342
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = #1057#1077#1088#1075#1077#1081' '#1057'. '#1041#1072#1088#1089#1091#1082#1086#1074' 8-905-979-10-76'
  end
  object byteTXTvalue: TEdit
    Left = 224
    Top = 8
    Width = 41
    Height = 21
    MaxLength = 3
    TabOrder = 0
    Text = '0'
    OnChange = byteTXTvalueChange
  end
  object ButtonCloseForm: TButton
    Left = 264
    Top = 72
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = ButtonCloseFormClick
  end
end
