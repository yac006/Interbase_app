unit Unit_choix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, acImage, StdCtrls, sGroupBox, sPanel, acPNG,
  sRadioButton, Buttons, sSpeedButton;

type
  TFiche_de_choix = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    sImage1: TsImage;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sSpeedButton1: TsSpeedButton;
    procedure sSpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Fiche_de_choix: TFiche_de_choix;

implementation

uses Unit3;

{$R *.dfm}

procedure TFiche_de_choix.sSpeedButton1Click(Sender: TObject);
begin
     if sRadioButton1.Checked = true then
     begin
         Unit3.var_choix := 'Listbox' ;
     end;



     if sRadioButton2.Checked = true then
     begin
         Unit3.var_choix := 'Dbgrid' ;
     end;

     Fiche_de_choix.Hide ;
end;

end.
