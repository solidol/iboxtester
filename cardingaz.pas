unit cardingaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, Buttons, MyAccess, DB, MemDS,
  DBAccess, DBGrids, DBCtrls, spravmain, se_controls,
  KsSkinListBoxs, KsSkinDBControls;

type
  Tvedomostperedachi = class(TForm)
    MyDataSource1: TMyDataSource;
    MyTable1: TMyTable;
    MyQuery1: TMyQuery;
    StringGrid1: TStringGrid;
    MyDataSource2: TMyDataSource;
    MyTable2: TMyTable;
    MyTable2id: TIntegerField;
    MyTable2name: TStringField;
    MyTable2type: TStringField;
    MyTable2email: TStringField;
    MyTable2printed: TStringField;
    MyTable2pic: TBlobField;
    DBLookupListBox1: TDBLookupListBox;
    SQLgod: TMyQuery;
    ComboBox1: TComboBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vedomostperedachi: Tvedomostperedachi;
    ThisCol, ThisRow, CurrYear, CurrentJournal: integer;
    ss: string;

implementation
uses
mainform;

{$R *.dfm}

procedure Tvedomostperedachi.Button1Click(Sender: TObject);
begin
  myquery1.SQL.Text:='INSERT INTO `datesin` (`date`,`gz`,`recived`,`closed`)'+
' VALUES ( '''+combobox1.Text+'-'+inttostr(1)+'-'+inttostr(1)+''', '+
Inttostr(CurrentJournal)+', 0, 0);';
showmessage(myquery1.SQL.Text);
myquery1.Execute;
sleep(100);
SQLgod.Execute;
end;

procedure Tvedomostperedachi.StringGrid1DblClick(Sender: TObject);
begin
if stringgrid1.Cells[thiscol,thisrow]='' then stringgrid1.Cells[thiscol,thisrow]:='1'
else stringgrid1.Cells[thiscol,thisrow]:='';
end;

procedure Tvedomostperedachi.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  ThisCol := ACol;
  ThisRow := ARow;
end;

procedure Tvedomostperedachi.FormCreate(Sender: TObject);
var i: integer;
begin
mytable1.Open;
mytable2.Open;
CurrentJournal:=fmspravperiod.MyTable1.fieldByName('id').AsInteger;
//Заполнение карточки приходов из базы
vedomostperedachi.Caption:=vedomostperedachi.Caption+': '+fmspravperiod.MyTable1.fieldByName('name').AsString;
SQLgod.SQL.Clear;
SQLgod.SQL.Add('select year(date) from datesin where gz='+
Inttostr(CurrentJournal)+
' group by year(date);');
SQLgod.Active:=true;

for i:=1 to 31 do
begin
stringgrid1.Cells[i,0]:=inttostr(i);
if i<=12 then stringgrid1.Cells[0,i]:=inttostr(i) else continue;
end;
end;

procedure Tvedomostperedachi.DBLookupListBox1Click(Sender: TObject);
var i,j, k: integer;
begin
ss:=dblookuplistbox1.SelectedItem;
k:=Strtoint(ss);
CurrYear:=k;
for j:=1 to 12 do
  for i:=1 to 31 do
    stringgrid1.Cells[i,j]:='';
myquery1.SQL.Text:='select year(date),month(date),day(date),recived,closed from  '+
'`datesin` where gz='+Inttostr(CurrentJournal)+' and  year(date)='+
Inttostr(CurrYear)+';';
myquery1.Open;
while not myquery1.Eof do
  begin
  stringgrid1.Cells[myquery1.FieldByName('day(date)').AsInteger,myquery1.FieldByName('month(date)').AsInteger]:=myquery1.FieldByName('recived').AsString;
  myquery1.Next;
  end;
myquery1.Close;
end;

procedure Tvedomostperedachi.BitBtn1Click(Sender: TObject);
var d, m: integer;
begin
if ((CurrYear>0) and (CurrentJournal>0)) then
begin
myquery1.SQL.Text:='delete from datesin where year(date)='+
Inttostr(CurrYear)+' and gz='+
Inttostr(CurrentJournal);
myquery1.Execute;
for m:=1 to 12 do
  for d:=1 to 31 do
  if stringgrid1.Cells[d,m]<>'' then
  begin
  myquery1.SQL.Text:='INSERT INTO `datesin` (`date`,`gz`,`recived`,`closed`)'+
'VALUES ( '''+Inttostr(CurrYear)+'-'+inttostr(m)+'-'+inttostr(d)+''', '''+
Inttostr(CurrentJournal)+''', ''1'', ''1'');';
myquery1.Execute;
sleep(50);
   end;
end;
end;

end.
