object fmTest1: TfmTest1
  Left = 545
  Top = 145
  Width = 979
  Height = 563
  Caption = 'fmTest1'
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
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    963
    525)
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 96
    Top = 128
    Width = 777
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    DataField = 'question'
    DataSource = MyDataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 88
    Top = 24
    Width = 405
    Height = 29
    Caption = #1044#1072#1081#1090#1077' '#1074#1110#1076#1087#1086#1074#1110#1076#1100' '#1085#1072' '#1087#1080#1090#1072#1085#1085#1103' '#1085#1080#1078#1095#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 728
    Top = 280
    Width = 150
    Height = 80
    Anchors = [akTop, akRight]
    Caption = #1053#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 288
    Width = 150
    Height = 80
    Caption = #1044#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 96
    Top = 392
    Width = 150
    Height = 80
    Caption = #1053#1072#1074#1077#1088#1085#1086#1077' '#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 728
    Top = 384
    Width = 150
    Height = 80
    Anchors = [akTop, akRight]
    Caption = #1053#1072#1074#1077#1088#1085#1086#1077' '#1085#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object DBGrid1: TDBGrid
    Left = 584
    Top = 8
    Width = 337
    Height = 105
    DataSource = MyDataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MyQuery1: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'SELECT * FROM test1quest ORDER BY RAND() LIMIT 10;')
    Active = True
    Left = 72
    Top = 232
  end
  object MyTable1: TMyTable
    Left = 224
    Top = 232
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 120
    Top = 232
  end
  object updratio: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 40
    Top = 80
  end
  object MyQuery2: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'select name, ratio from spec order by ratio limit 3')
    Active = True
    Left = 392
    Top = 56
  end
  object MyDataSource2: TMyDataSource
    DataSet = MyQuery2
    Left = 440
    Top = 56
  end
  object flushratio: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'update spec set ratio = 0')
    Left = 24
    Top = 480
  end
end
