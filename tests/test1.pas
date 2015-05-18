unit test1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, shellapi, DB, MemDS, DBAccess,
  MyAccess;

type
  TfmTest1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBText1: TDBText;
    Label1: TLabel;
    MyQuery1: TMyQuery;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    MyTable1: TMyTable;
    MyDataSource1: TMyDataSource;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTest1: TfmTest1;

wkb: Thandle;

implementation
uses
  Main;

{$R *.dfm}

procedure TfmTest1.BitBtn2Click(Sender: TObject);
begin
myquery1.Next;
end;

end.
