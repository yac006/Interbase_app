unit Unit_de_chargement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GIFImage, ExtCtrls, ComCtrls;

type
  TFiche_de_chargement = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Fiche_de_chargement: TFiche_de_chargement;

implementation

{$R *.dfm}

procedure TFiche_de_chargement.Timer1Timer(Sender: TObject);
begin
    ProgressBar1.Position :=  ProgressBar1.Position+1 ;

    if ProgressBar1.Position >= 100 then
    begin
          Timer1.Enabled := false ;
          Image1.Visible := false ;
          ShowMessage('Le fiche a été créer avec succée ...');
          Fiche_de_chargement.hide;
    end;



end;

procedure TFiche_de_chargement.FormShow(Sender: TObject);
begin

         ProgressBar1.Position := 0 ;
         Image1.Visible := true ;
         Timer1.Enabled := true;

end;

end.
