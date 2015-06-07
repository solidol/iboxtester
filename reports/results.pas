unit results;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfmResults = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Button1: TButton;
    MyDataSource2: TMyDataSource;
    MyQuery2: TMyQuery;
    procedure FormCreate(Sender: TObject);
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
end;

end.
