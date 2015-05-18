unit reguser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBAccess, MyAccess, MemDS;

type
  TfmRegister = class(TForm)
    cbRegion: TDBLookupComboBox;
    cbKolhoz: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
//fmregister.Destroy;
fmregister.Close;
mytabuser.Append;
//  Application.CreateForm(TfmTest1, fmTest1);
 mytabuser.post;
end;

end.
