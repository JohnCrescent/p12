unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var cislo,tip,pokus:integer;
begin
 randomize;
 cislo:=random(99)+1;    //načíta číslo od 1 po 100
 pokus:=0;
 repeat    //opakuje dokým neuhádneš
  inc(pokus);   //počíta počet pokusov
  tip:=strtoint(inputbox(inttostr(pokus)+'. pokus','Tip:',''));  //vypýta si tvoj tip
  if tip>cislo then showmessage('Tvoj tip nie je správny. Hádaj menšie číslo!'); //ak je tvoj tip väčší ako hádané číslo, vypýta si menšie
  if tip<cislo then showmessage('Tvoj tip nie je správny. Hádaj väčšie číslo!');  //ak je tvoj tip menší ako hádané číslo, vypýta si väčšie
 until cislo=tip;
 if tip=cislo then showmessage('Uhádol si na '+inttostr(pokus)+'. pokus.'); //vypíše na koľký pokus sa to podarilo uhádnuť
end;

end.

