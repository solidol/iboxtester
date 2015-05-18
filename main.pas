unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  DBGrids, MemDS, XPMan;

type
  TfmMain = class(TForm)
    pnLeft: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    MyConnection1: TMyConnection;
    Panel1: TPanel;
    MyTable1: TMyTable;
    MyDataSource1: TMyDataSource;
    MyTable1id: TLargeintField;
    MyTable1region: TLargeintField;
    MyTable1area: TLargeintField;
    MyTable1city: TStringField;
    MyTable1fio: TStringField;
    mqset: TMyQuery;
    XPManifest1: TXPManifest;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses reguser, test1;

{$R *.dfm}

procedure TfmMain.BitBtn1Click(Sender: TObject);
begin
panel1.Hide;
  Application.CreateForm(TfmRegister, fmRegister);
end;

procedure TfmMain.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TfmMain.FormCreate(Sender: TObject);

begin
 mqset.Execute;
end;

procedure TfmMain.BitBtn2Click(Sender: TObject);
begin
panel1.Hide;
  Application.CreateForm(TfmTest1, fmTest1);

end;

end.
