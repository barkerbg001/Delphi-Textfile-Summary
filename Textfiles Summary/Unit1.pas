unit Unit1;         {Textfile summary}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    btnRead1: TButton;
    btnRead2: TButton;
    btnNewTFile1: TButton;
    btnNewTFile2: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    redOutput: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    btnAdd: TButton;
    procedure btnRead1Click(Sender: TObject);
    procedure btnRead2Click(Sender: TObject);
    procedure btnNewTFile1Click(Sender: TObject);
    procedure btnNewTFile2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TF, TFdummy : TextFile;
  sOneLine, sNewLine : String;
  iEditLine, iDeleteLine, iCount : Integer;

implementation

{$R *.dfm}

procedure TForm1.btnRead1Click(Sender: TObject);
begin
  redOutput.clear;

  assignfile(TF,'List.txt');
  Reset(TF);

  while not EOF(TF) do
  begin
    Readln(TF,sOneLine);
    redOutput.Lines.Add(sOneLine);
  end;

  CloseFile(TF);
end;

procedure TForm1.btnRead2Click(Sender: TObject);
begin
  redOutput.Clear;

  OpenDialog1.Execute;
  AssignFile(TF,Opendialog1.FileName);
  Reset(TF);

  while not EOF(TF) do
  begin
    Readln(TF,sOneLine);
    redOutput.Lines.Add(sOneLine);
  end;

  CloseFile(TF);
end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
  AssignFile(TF,'list.txt');
  Append(TF);

  sNewLine := InputBox('Add text','Enter text','');

  Writeln(TF,sNewLine);

  CloseFile(TF);
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  AssignFile(TF,'list.txt');
  Reset(TF);
  AssignFile(TFdummy,'Dummy.txt');
  Rewrite(TFdummy);

  iDeleteLine := StrToInt(InputBox('Delete Line','What no. line do you want to DELETE?','0'));

  iCount := 0;

  while not Eof(TF) do
  begin
    inc(iCount);
    Readln(TF,sOneLine);
    if iDeleteLine <> iCount
    then
      begin
        Writeln(TFdummy,sOneLine);
      end;
  end;

  CloseFile(TF);
  CloseFile(TFdummy);
  DeleteFile('list.txt');
  Rename(TFdummy,'list.txt');
end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
  AssignFile(TF,'list.txt');
  Reset(TF);

  AssignFile(TFdummy,'Dummy.txt');
  Rewrite(TFdummy);

  iEditLine := StrToInt(InputBox('Edit Line','What no. line do you want to edit?','0'));

  iCount := 0;

  while not Eof(TF) do
  begin
    inc(iCount);
    Readln(TF,sOneLine);
    if iEditLine <> iCount
    then
      begin
        Writeln(TFdummy,sOneLine);
      end
    else
      begin
        sNewLine := InputBox('New Line','Edit existing line',sOneLine);
        Writeln(TFdummy,sNewLine);
      end;
  end;

  CloseFile(TF);
  CloseFile(TFdummy);
  DeleteFile('list.txt');
  Rename(TFdummy,'list.txt');
end;

procedure TForm1.btnNewTFile1Click(Sender: TObject);
begin
  Assignfile(TF,'Test.txt');
  Rewrite(TF);
  CloseFile(TF);
  ShowMessage('Textfile created sucessfully');
end;

procedure TForm1.btnNewTFile2Click(Sender: TObject);
begin
  SaveDialog1.Execute;
  AssignFile(TF,SaveDialog1.FileName);
  Rewrite(TF);
  CloseFile(TF);
  ShowMessage('Textfile created sucessfully');
end;

end.
