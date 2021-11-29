unit Unit_principale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sGroupBox, sLabel, sEdit, Buttons,
  sBitBtn, acPNG, ComCtrls, acProgressBar, sSpeedButton, sButton;

type
  TForm1 = class(TForm)
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Image1: TImage;
    sProgressBar1: TsProgressBar;
    sLabel3: TsLabel;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    Timer1: TTimer;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
     if (sEdit1.Text = 'yac06') and (sEdit2.Text = '0000') then
     begin
         timer1.Enabled := true ;
     end
       else
          ShowMessage('Nom d''utilisateur ou mot de pass incorrect !!');

end;

procedure TForm1.sBitBtn3Click(Sender: TObject);
begin
     Nv_form.Show ;
     Form1.Hide ;
end;

procedure TForm1.sBitBtn4Click(Sender: TObject);
begin
     Form3.Show ;
     form1.Hide ;
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
     Application.Terminate ;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
     sProgressBar1.Position := sProgressBar1.Position+1 ;

     if sProgressBar1.Position >= 100 then
     begin
          Timer1.Enabled := false ;

          //Image1.Picture.Free ;
          Image1.Picture.LoadFromFile(GetCurrentDir()+'\Media\adduser_1103.png');

          sBitBtn3.Enabled := true;
          sBitBtn4.Enabled := true;

          sProgressBar1.Visible := false ;
          form1.Height := form1.Height - 12 ;
     end;
end;

end.
