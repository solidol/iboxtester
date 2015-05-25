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
    DBGrid1: TDBGrid;
    flushratio: TMyQuery;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
var

 sql: string;
begin
sql := 'update spec set ratio = ratio + 1 where id = '+myquery1.FieldByName('a1').AsString;
updratio.SQL.Text:=sql;

updratio.Execute;
myquery2.Active:=false;

myquery2.Execute;
myquery1.Next;
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
myquery1.Next;
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
myquery1.Next;
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
myquery1.Next;
end;

procedure TfmTest1.FormCreate(Sender: TObject);
begin
flushratio.Execute;
end;

end.
