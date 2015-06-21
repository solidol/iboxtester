unit admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, DB, DBAccess, MyAccess, Grids, DBGrids, MemDS,
  msxmldom, XMLDoc, StdCtrls, XPMan, ComCtrls, ExtCtrls, TeeProcs,
  TeEngine, Chart, DbChart, Series;

type
  Tfmadmin = class(TForm)
    XMLDocument1: TXMLDocument;
    MyConnection1: TMyConnection;
    MyTable1: TMyTable;
    MyDataSource1: TMyDataSource;
    MyTable1name: TStringField;
    MyTable1code: TStringField;
    od1: TOpenDialog;
    Button1: TButton;
    mqset: TMyQuery;
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    MyTable2: TMyTable;
    DBGrid2: TDBGrid;
    MyDataSource2: TMyDataSource;
    Button2: TButton;
    Button3: TButton;
    TabSheet4: TTabSheet;
    DBChart1: TDBChart;
    MyQuery1: TMyQuery;
    MyQuery2: TMyQuery;
    Series1: TBarSeries;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmadmin: Tfmadmin;

implementation

{$R *.dfm}

procedure Tfmadmin.Button1Click(Sender: TObject);
begin
od1.Execute;
if (od1.FileName<>'') then
  begin  {
  XMLDocument1.LoadFromFile(od1.FileName);
XMLDocument1.Active := true;
Edit1.Text := XMLDocument1.DocumentElement.ChildNodes['population'].Text;
Edit2.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['ind']);
Edit3.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['tra']);
Edit4.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['sec']);
Edit5.Text := VarToStr(XMLDocument1.DocumentElement.ChildNodes['bases'].Attributes['env']);
XMLDocument1.Active := false; - See more at: http://parsing-and-i.blogspot.com/2008/08/xml-delphi.html#sthash.FcRaacIr.dpuf
  }end;
end;

procedure Tfmadmin.FormCreate(Sender: TObject);


begin
mqset.Execute;
mytable1.Open;
mytable2.Open;



    myquery2.Execute;



with dbchart1.Series[0] do
     begin
    //DataSource := DataSource1;
    DataSource := Myquery2;
    //XLabelsSource := 'nm';
    //XValues.ValueSource := 'nm';
    YValues.ValueSource := 'cnt';
          end;

end;

end.
