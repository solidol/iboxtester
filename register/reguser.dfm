object fmRegister: TfmRegister
  Left = 274
  Top = 189
  Width = 979
  Height = 563
  Caption = 'fmRegister'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 48
    Width = 77
    Height = 24
    Caption = #1054#1073#1083#1072#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 528
    Top = 48
    Width = 255
    Height = 24
    Caption = #1052#1110#1089#1090#1086' '#1072#1073#1086' '#1085#1072#1089#1077#1083#1077#1085#1085#1080#1081' '#1087#1091#1085#1082#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 128
    Width = 145
    Height = 24
    Caption = #1055#1088#1110#1079#1074#1080#1097#1077' '#1090#1072' '#1030#1084#39#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object cbRegion: TDBLookupComboBox
    Left = 104
    Top = 80
    Width = 257
    Height = 32
    DataField = 'region'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = MyDataSource1
    ParentFont = False
    TabOrder = 0
  end
  object edFIO: TDBEdit
    Left = 104
    Top = 168
    Width = 785
    Height = 32
    DataField = 'fio'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bbRunTest: TBitBtn
    Left = 360
    Top = 272
    Width = 297
    Height = 113
    Caption = #1042#1080#1073#1088#1072#1090#1080' '#1090#1077#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bbRunTestClick
  end
  object DBEdit1: TDBEdit
    Left = 384
    Top = 80
    Width = 497
    Height = 32
    DataField = 'city'
    DataSource = MyDataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object maytabreg: TMyTable
    TableName = 'region'
    Connection = fmMain.MyConnection1
    Active = True
    Left = 112
    Top = 120
  end
  object myqarea: TMyQuery
    Connection = fmMain.MyConnection1
    Left = 376
    Top = 120
  end
  object mytabuser: TMyTable
    TableName = 'student'
    Connection = fmMain.MyConnection1
    Active = True
    Left = 120
    Top = 208
  end
  object MyDataSource1: TMyDataSource
    DataSet = maytabreg
    Left = 144
    Top = 120
  end
  object MyDataSource2: TMyDataSource
    DataSet = mytabuser
    Left = 152
    Top = 208
  end
  object MyQuery1: TMyQuery
    Connection = fmMain.MyConnection1
    SQL.Strings = (
      'select id from student order by id desc limit 1')
    Left = 448
    Top = 120
  end
end
