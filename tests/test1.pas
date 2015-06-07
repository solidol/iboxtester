unit test1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, shellapi, DB, MemDS, DBAccess,
  MyAccess, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  DbChart;

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
    updratio: TMyQuery;
    MyQuery2: TMyQuery;
    MyDataSource2: TMyDataSource;
    flushratio: TMyQuery;
    MyQuery3: TMyQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nextq;
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

procedure TfmTest1.nextq;
var
  r1, r2, r3, r4: integer;
begin
 if myquery1.Eof then
 begin
 label1.Caption:='Тест закінчено, подивіться результати!' ;
  fmMain.BitBtn3.Enabled:=true;
  fmMain.BitBtn2.Enabled:=false;
  myquery2.First;
  r1:=myquery2.fieldbyname('id').asinteger;
  myquery2.Next;
 r2:=myquery2.fieldbyname('id').asinteger;
  myquery2.Next;
 r3:=myquery2.fieldbyname('id').asinteger;
  myquery2.Next;
 r4:=myquery2.fieldbyname('id').asinteger;

  myquery3.SQL.Text:='update student set r1='+inttostr(r1)+', r2='+inttostr(r2)+
                    ', r3='+inttostr(r3)+', r4='+inttostr(r4)+' where id='+
                    inttostr(fmMain.laststud);
                    label1.Caption:=myquery2.SQL.Text;
  myquery3.Execute;
  bitbtn1.Enabled:=false;
  bitbtn2.Enabled:=false;
  bitbtn3.Enabled:=false;
  bitbtn4.Enabled:=false;
 end
 else
myquery1.Next;
end;

procedure TfmTest1.BitBtn2Click(Sender: TObject);
var

 sql: string;
begin

sql := 'update spec set ratio = ratio + 1 where id = '+myquery1.FieldByName('a1').AsString;
updratio.SQL.Text:=sql;

updratio.Execute;
myquery2.Active:=false;

myquery2.Execute;
nextq;
end;

procedure TfmTest1.BitBtn3Click(Sender: TObject);
var

 sql: string;
begin
sql := 'update spec set ratio = ratio + 1 where id = '+myquery1.FieldByName('a2').AsString;
updratio.SQL.Text:=sql;

updratio.Execute;
myquery2.Active:=false;
myquery2.Execute;
nextq;
end;

procedure TfmTest1.BitBtn4Click(Sender: TObject);
var

 sql: string;
begin
sql := 'update spec set ratio = ratio + 1 where id = '+myquery1.FieldByName('a3').AsString;
updratio.SQL.Text:=sql;

updratio.Execute;
myquery2.Active:=false;
myquery2.Execute;
nextq;
end;

procedure TfmTest1.BitBtn1Click(Sender: TObject);
var

 sql: string;
begin
sql := 'update spec set ratio = ratio + 1 where id = '+myquery1.FieldByName('a4').AsString;
updratio.SQL.Text:=sql;

updratio.Execute;
myquery2.Active:=false;
myquery2.Execute;
nextq;
end;

procedure TfmTest1.FormCreate(Sender: TObject);
begin
flushratio.Execute;
end;

end.
