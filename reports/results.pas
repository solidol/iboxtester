unit results;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, MemDS, DBAccess, MyAccess, TeEngine,
  Series, ExtCtrls, TeeProcs, Chart, DbChart, Grids, DBGrids;

type
  TfmResults = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    MyQuery2: TMyQuery;
    s2: TLabel;
    s1: TLabel;
    s3: TLabel;
    s4: TLabel;
    ms1: TMyQuery;
    ms2: TMyQuery;
    ms3: TMyQuery;
    ms4: TMyQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmResults: TfmResults;

implementation
uses
  main;

{$R *.dfm}

procedure TfmResults.FormCreate(Sender: TObject);
begin
 myquery2.SQL.Text:='select * from student where id='+
          inttostr(fmMain.laststud);
 myquery2.Execute;
 ms1.SQL.Text:='select name from spec where id='+myquery2.fieldbyname('r1').AsString;
 ms1.Execute;
 s1.Caption:=ms1.fieldbyname('name').AsString;

 ms2.SQL.Text:='select name from spec where id='+myquery2.fieldbyname('r2').AsString;
 ms2.Execute;
 s2.Caption:=ms2.fieldbyname('name').AsString;

 ms3.SQL.Text:='select name from spec where id='+myquery2.fieldbyname('r3').AsString;
 ms3.Execute;
 s3.Caption:=ms3.fieldbyname('name').AsString;
 
 ms4.SQL.Text:='select name from spec where id='+myquery2.fieldbyname('r4').AsString;
 ms4.Execute;
 s4.Caption:=ms4.fieldbyname('name').AsString;
end;

procedure TfmResults.Button1Click(Sender: TObject);
begin
fmmain.Close;
end;

end.
