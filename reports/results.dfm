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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 481
    Height = 29
    Caption = #1056#1077#1082#1086#1084#1077#1085#1076#1086#1074#1072#1085#1072' '#1076#1083#1103' '#1074#1072#1089' '#1089#1087#1077#1094#1110#1072#1083#1100#1085#1110#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 120
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
  object DBText1: TDBText
    Left = 128
    Top = 80
    Width = 500
    Height = 30
    DataField = 'r1'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 128
    Top = 168
    Width = 500
    Height = 30
    DataField = 'r2'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 128
    Top = 208
    Width = 500
    Height = 30
    DataField = 'r3'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 128
    Top = 248
    Width = 500
    Height = 30
    DataField = 'r4'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 264
    Top = 352
    Width = 217
    Height = 113
    Caption = #1047#1072#1082#1110#1085#1095#1080#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object MyDataSource2: TMyDataSource
    DataSet = MyQuery2
    Left = 136
    Top = 312
  end
  object MyQuery2: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'select * from student order by id desc limit 1')
    Active = True
    Left = 88
    Top = 312
  end
end
