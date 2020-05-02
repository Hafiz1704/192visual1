unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    button1: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure cbxIjazahChange(Sender: TObject);
    procedure formshow(Sender: TObject);
    procedure rgJenisKelaminClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.button1Click(Sender: TObject);
begin
  Memo1.lines.Add(Edit1.Text);
  if(rgJenisKelamin.ItemIndex=0) then
  begin
  memo1.lines.add('Laki-Laki');
  end
  else  if(rgJenisKelamin.ItemIndex=1)  then
  begin
    memo1.lines.add('perempuan');
  end;

  Memo1.Lines.add(cbkota.Text);
  if(cbxFoto.Checked) then
    memo1.Lines.add('Foto ada');

   if(cbxKTP.Checked) then
    memo1.Lines.add('KTP ada');

   if(cbxIjazah.Checked) then
    memo1.Lines.add('Ijazah ada');
end;

procedure TForm1.cbxIjazahChange(Sender: TObject);
begin

end;

procedure TForm1.formshow(Sender: TObject);
begin
  btnResetclick(sender);
end;

procedure TForm1.rgJenisKelaminClick(Sender: TObject);
begin

end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.Text:='';
  Memo1.Clear;
  rgJenisKelamin.ItemIndex:=-1;
  cbkota.ItemIndex:=-1;
  cbkota.Text:='';
  cbxFoto.Checked:=false;
  cbxKTP.Checked:=false;
  cbxIjazah.Checked:=false;
end;

end.

