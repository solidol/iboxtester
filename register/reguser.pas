unit reguser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBAccess, MyAccess, MemDS;

type
  TfmRegister = class(TForm)
    cbRegion: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbArea: TDBLookupComboBox;
    edFIO: TDBEdit;
    Label4: TLabel;
    bbRunTest: TBitBtn;
    maytabreg: TMyTable;
    myqarea: TMyQuery;
    mytabuser: TMyTable;
    MyDataSource1: TMyDataSource;
    MyDataSource2: TMyDataSource;
    procedure bbRunTestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegister: TfmRegister;

implementation
uses main, test1;

{$R *.dfm}

procedure TfmRegister.bbRunTestClick(Sender: TObject);
begin
//


//  Application.CreateForm(TfmTest1, fmTest1);
 mytabuser.post;
// fmregister.Close;
 fmMain.BitBtn2.Enabled:=true;
 fmregister.Destroy;
end;

procedure TfmRegister.FormShow(Sender: TObject);
begin
 mytabuser.Append;
end;

end.
