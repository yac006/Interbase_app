program Project3;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Nv_form},
  Unit_principale in 'Unit_principale.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form3},
  Unit_de_chargement in 'Unit_de_chargement.pas' {Fiche_de_chargement},
  Unit_choix in 'Unit_choix.pas' {Fiche_de_choix};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFiche_de_choix, Fiche_de_choix);
  Application.CreateForm(TNv_form, Nv_form);
  Application.CreateForm(TFiche_de_chargement, Fiche_de_chargement);
  Application.Run;
end.
