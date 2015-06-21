object fmadmin: Tfmadmin
  Left = 329
  Top = 204
  Width = 1046
  Height = 637
  Caption = #1040#1076#1084#1110#1085#1110#1089#1090#1088#1091#1074#1072#1085#1085#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 856
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1030
    Height = 599
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1077#1094#1110#1072#1083#1100#1085#1086#1089#1090#1110
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1022
        Height = 329
        Align = alTop
        DataSource = MyDataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button2: TButton
        Left = 80
        Top = 392
        Width = 121
        Height = 65
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' XML'
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1080#1090#1072#1085#1085#1103' '#1076#1086' '#1090#1077#1089#1090#1091' '#8470'1'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1022
        Height = 337
        Align = alTop
        DataSource = MyDataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Button3: TButton
        Left = 72
        Top = 376
        Width = 121
        Height = 65
        Caption = #1047#1072#1074#1072#1085#1090#1072#1078#1080#1090#1080' XML'
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1080#1090#1072#1085#1085#1103' '#1076#1086' '#1090#1077#1089#1090#1091' '#8470'2'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ImageIndex = 3
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 1022
        Height = 571
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        Legend.Alignment = laTop
        Legend.TopPos = 5
        Align = alClient
        TabOrder = 0
        object Series1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = MyQuery2
          SeriesColor = clRed
          Title = 'Bar'
          XLabelsSource = 'nm'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 592
    Top = 40
    DOMVendorDesc = 'MSXML'
  end
  object MyConnection1: TMyConnection
    Database = 'ibox'
    Username = 'root'
    Password = '10480144'
    Server = 'localhost'
    Connected = True
    Left = 56
    Top = 64
  end
  object MyTable1: TMyTable
    TableName = 'spec'
    Connection = MyConnection1
    Left = 120
    Top = 64
    object MyTable1name: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072
      FieldName = 'name'
      Origin = 'spec.name'
      Size = 100
    end
    object MyTable1code: TStringField
      DisplayLabel = #1064#1080#1092#1088
      FieldName = 'code'
      Origin = 'spec.code'
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyTable1
    Left = 184
    Top = 64
  end
  object od1: TOpenDialog
    Left = 856
    Top = 40
  end
  object mqset: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SET NAMES `cp1251`')
    Left = 280
    Top = 264
  end
  object XPManifest1: TXPManifest
    Left = 808
    Top = 88
  end
  object MyTable2: TMyTable
    TableName = 'test1quest'
    Connection = MyConnection1
    Left = 284
    Top = 96
  end
  object MyDataSource2: TMyDataSource
    DataSet = MyTable2
    Left = 356
    Top = 72
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    Left = 132
    Top = 456
  end
  object MyQuery2: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'select count(*) as cnt,`spec`.name as nm from student,spec where' +
        ' student.r1 = spec.id group by r1 order by cnt desc')
    Active = True
    Left = 84
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = MyQuery2
    Left = 68
    Top = 352
  end
end
