object fmMain: TfmMain
  Left = 334
  Top = 141
  Align = alClient
  BorderStyle = bsNone
  Caption = 'fmMain'
  ClientHeight = 606
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnLeft: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 606
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnLeft'
    TabOrder = 0
    DesignSize = (
      200
      606)
    object BitBtn4: TBitBtn
      Left = 24
      Top = 495
      Width = 150
      Height = 80
      Anchors = [akLeft, akBottom]
      Caption = #1042#1110#1093#1110#1076
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 19
      Top = 17
      Width = 150
      Height = 80
      Caption = #1053#1072#1095#1072#1090#1100
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 19
      Top = 121
      Width = 150
      Height = 80
      Caption = #1058#1077#1089#1090' '#8470'1'
      Enabled = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 19
      Top = 225
      Width = 150
      Height = 80
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1080
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 200
    Top = 0
    Width = 555
    Height = 606
    Align = alClient
    BevelOuter = bvNone
    Caption = #1061#1055#1058#1050' '#1054#1053#1055#1059
    TabOrder = 1
  end
  object MyConnection1: TMyConnection
    Database = 'ibox'
    Username = 'root'
    Password = '10480144'
    Server = 'localhost'
    Connected = True
    Left = 256
    Top = 48
  end
  object MyTable1: TMyTable
    TableName = 'student'
    Connection = MyConnection1
    Left = 304
    Top = 136
    object MyTable1id: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'student.id'
    end
    object MyTable1region: TLargeintField
      FieldName = 'region'
      Origin = 'student.region'
    end
    object MyTable1area: TLargeintField
      FieldName = 'area'
      Origin = 'student.area'
    end
    object MyTable1city: TStringField
      FieldName = 'city'
      Origin = 'student.city'
      Size = 100
    end
    object MyTable1fio: TStringField
      FieldName = 'fio'
      Origin = 'student.fio'
      Size = 200
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyTable1
    Left = 376
    Top = 136
  end
  object mqset: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SET NAMES `cp1251`')
    Left = 280
    Top = 264
  end
  object XPManifest1: TXPManifest
    Left = 520
    Top = 56
  end
end
