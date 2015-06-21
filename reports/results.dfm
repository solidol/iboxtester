object fmResults: TfmResults
  Left = 439
  Top = 240
  Width = 762
  Height = 563
  Caption = 'fmResults'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  DesignSize = (
    746
    525)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 538
    Height = 37
    Caption = #1056#1077#1082#1086#1084#1077#1085#1076#1086#1074#1072#1085#1072' '#1076#1083#1103' '#1074#1072#1089' '#1089#1087#1077#1094#1110#1072#1083#1100#1085#1110#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 192
    Width = 484
    Height = 29
    Caption = #1058#1072#1082#1086#1078' '#1079#1074#1077#1088#1085#1110#1090#1100' '#1091#1074#1072#1075#1091' '#1085#1072' '#1089#1087#1077#1094#1072#1110#1083#1100#1085#1086#1089#1090#1110
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object s2: TLabel
    Left = 152
    Top = 240
    Width = 25
    Height = 29
    Caption = 's2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object s1: TLabel
    Left = 152
    Top = 80
    Width = 96
    Height = 37
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object s3: TLabel
    Left = 152
    Top = 280
    Width = 73
    Height = 29
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object s4: TLabel
    Left = 152
    Top = 320
    Width = 73
    Height = 29
    Caption = 'Label3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 264
    Top = 384
    Width = 217
    Height = 113
    Anchors = [akLeft, akBottom]
    Caption = #1047#1072#1082#1110#1085#1095#1080#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object MyQuery2: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'select * from student, spec order by student.id desc limit 1')
    Active = True
    Left = 88
    Top = 384
  end
  object ms1: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 112
    Top = 80
  end
  object ms2: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 112
    Top = 240
  end
  object ms3: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 112
    Top = 288
  end
  object ms4: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 112
    Top = 328
  end
end
