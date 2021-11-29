unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, DB, IBDatabase, IBCustomDataSet,
  IBTable, ComCtrls, sStatusBar, Buttons, sBitBtn, sButton, StdCtrls,
  sRadioButton, Mask, DBCtrls, ExtCtrls, sPanel, Grids, DBGrids,
  sSpeedButton, sEdit, sGauge, sGroupBox;

type
  TNv_form = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    sPanel_ventes: TsPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    sPanel2: TsPanel;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sPanel3: TsPanel;
    sButton6: TsButton;
    sPanel_categories: TsPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    sPanel_clients: TsPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    sPanel_produits: TsPanel;
    sPanel_marque: TsPanel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    sStatusBar1: TsStatusBar;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBTable1ID_CATEGORIE: TIntegerField;
    IBTable1NOM_CATEGORIE: TIBStringField;
    IBTransaction1: TIBTransaction;
    DataSource_tb_categories: TDataSource;
    DataSource_tb_client: TDataSource;
    DataSource_tb_ventes: TDataSource;
    DataSource_tb_produits: TDataSource;
    DataSource_tb_marque: TDataSource;
    IBTable2: TIBTable;
    IBTable2ID_CLIENT: TIntegerField;
    IBTable2NOM_CLIENT: TIBStringField;
    IBTable2PRENOM_CLIENT: TIBStringField;
    IBTable2ADDRESS: TIBStringField;
    IBTable2TELE: TIntegerField;
    IBTable2EMAIL: TIBStringField;
    IBTable5: TIBTable;
    IBTable5ID_MARQUE: TIntegerField;
    IBTable5NOM_MARQUE: TIBStringField;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sButton1: TsButton;
    IBTable4: TIBTable;
    Panel1: TPanel;
    CheckBox_tb_marque: TCheckBox;
    CheckBox_tb_categorie: TCheckBox;
    CheckBox_tb_ventes: TCheckBox;
    CheckBox_tb_produit: TCheckBox;
    CheckBox_tb_client: TCheckBox;
    Button1: TButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sGauge1: TsGauge;
    Timer1: TTimer;
    IBTable3: TIBTable;
    IBTable3NUM_P: TIntegerField;
    IBTable3PRIX_ACHAT: TIBStringField;
    IBTable3PRIX_VENTE: TIBStringField;
    IBTable3QUANTITE_P: TIntegerField;
    IBTable3DESIGNATION_P: TIBStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DataSource1: TDataSource;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sSpeedButton5: TsSpeedButton;
    sEdit1: TsEdit;
    sSpeedButton1: TsSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sRadioButton2Click(Sender: TObject);
    procedure sRadioButton3Click(Sender: TObject);
    procedure sRadioButton4Click(Sender: TObject);
    procedure sRadioButton5Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Nv_form: TNv_form;

implementation

uses Unit_principale;

{$R *.dfm}

procedure TNv_form.Button1Click(Sender: TObject);
begin
     if Button1.Caption = '>' then
    begin
         Nv_form.Width := 1287 ;
         Button1.Caption := '<' ;
    end
       else
         begin
             Nv_form.Width := 1033 ;
             Button1.Caption := '>' ;
         end;
end;

procedure TNv_form.sRadioButton1Click(Sender: TObject);
begin
     if sRadioButton1.Checked = true then
    begin
        sPanel_produits.Visible := false;
        sPanel_ventes.Visible := false;
        sPanel_clients.Visible := false;
        sPanel_categories.Visible := false;
        sPanel_marque.Visible := false ;

        sPanel_clients.Visible := true;
    end;
end;

procedure TNv_form.sRadioButton2Click(Sender: TObject);
begin
     if sRadioButton2.Checked = true then
    begin
        sPanel_produits.Visible := false;
        sPanel_ventes.Visible := false;
        sPanel_clients.Visible := false;
        sPanel_categories.Visible := false;
        sPanel_marque.Visible := false ;

        sPanel_produits.Visible := true;
    end;
end;

procedure TNv_form.sRadioButton3Click(Sender: TObject);
begin
     if sRadioButton3.Checked = true then
    begin
        sPanel_produits.Visible := false;
        sPanel_ventes.Visible := false;
        sPanel_clients.Visible := false;
        sPanel_categories.Visible := false;
        sPanel_marque.Visible := false ;

        sPanel_ventes.Visible := true;
    end;
end;

procedure TNv_form.sRadioButton4Click(Sender: TObject);
begin
      if sRadioButton4.Checked = true then
    begin
        sPanel_produits.Visible := false;
        sPanel_ventes.Visible := false;
        sPanel_clients.Visible := false;
        sPanel_categories.Visible := false;
        sPanel_marque.Visible := false ;

        sPanel_categories.Visible := true;
    end;
end;

procedure TNv_form.sRadioButton5Click(Sender: TObject);
begin
     if sRadioButton5.Checked = true then
    begin
        sPanel_produits.Visible := false;
        sPanel_ventes.Visible := false;
        sPanel_clients.Visible := false;
        sPanel_categories.Visible := false;
        sPanel_marque.Visible := false ;

        sPanel_marque.Visible := true ;
    end;
end;

procedure TNv_form.sBitBtn1Click(Sender: TObject);
begin

    If sRadioButton1.Checked = true then // La table clients
    begin
         try
            IBTable2.Post ;
            ShowMessage('Les données a été enregistrer avec succée ...');
         except
            ShowMessage('Il ya un Erreur !!!');
         end;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin
         try
            IBTable3.Post ;
            ShowMessage('Les données a été enregistrer avec succée ...');
         except
            ShowMessage('Il ya un Erreur !!!');
         end;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin
         try
            IBTable4.Post ;
            ShowMessage('Les données a été enregistrer avec succée ...');
         except
            ShowMessage('Il ya un Erreur !!!');
         end;
    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin
         try
            IBTable1.Post ;
            ShowMessage('Les données a été enregistrer avec succée ...');
         except
            ShowMessage('Il ya un Erreur !!!');
         end;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
         try
            IBTable5.Post ;
            ShowMessage('Les données a été enregistrer avec succée ...');
         except
            ShowMessage('Il ya un Erreur !!!');
         end;
    end;


end;

procedure TNv_form.sBitBtn6Click(Sender: TObject);
begin

     If sRadioButton1.Checked = true then // La table clients
    begin

            IBTable2.delete ;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin

            IBTable3.delete  ;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin

            IBTable4.delete  ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin

            IBTable1.delete  ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable5.delete ;

    end;


end;

procedure TNv_form.sBitBtn5Click(Sender: TObject);
begin

    If sRadioButton1.Checked = true then // La table clients
    begin

            IBTable2.append;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin

            IBTable3.append ;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin

            IBTable4.append ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin

            IBTable1.append ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable5.append ;

    end;
end;

procedure TNv_form.sButton6Click(Sender: TObject);
begin
     If sRadioButton1.Checked = true then // La table clients
    begin

            IBTable2.next;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin

            IBTable3.next;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin

            IBTable4.next ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin

            IBTable1.next ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable5.next;

    end;
end;

procedure TNv_form.sButton1Click(Sender: TObject);
begin
     If sRadioButton1.Checked = true then // La table clients
    begin

            IBTable2.Prior;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin

            IBTable3.Prior;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin

            IBTable4.Prior ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin

            IBTable1.Prior ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable5.Prior;

    end;
end;

procedure TNv_form.sBitBtn7Click(Sender: TObject);
begin
    If sRadioButton1.Checked = true then // La table clients
    begin
            IBTable2.Edit ;
            IBTable2.UpdateRecord;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin
            IBTable3.Edit ;
            IBTable3.UpdateRecord;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin
            IBTable4.Edit ;
            IBTable4.UpdateRecord ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin
            IBTable1.Edit ;
            IBTable1.UpdateRecord ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable5.Edit ;
            IBTable5.UpdateRecord;

    end;
end;

procedure TNv_form.sBitBtn4Click(Sender: TObject);
begin
      If sRadioButton1.Checked = true then // La table clients
    begin

            IBTable4.Active := false ;
            IBTable4.Active := true ;

    end;

    //-----------------------------------------------------------------//

    If sRadioButton2.Checked = true then // La table Produits
    begin

           IBTable4.Active := false ;
            IBTable4.Active := true ;
    end;

    //-----------------------------------------------------------------//

    If sRadioButton3.Checked = true then // La table Ventes
    begin

            IBTable4.Active := false ;
            IBTable4.Active := true ;

    end;

       //-----------------------------------------------------------------//

    If sRadioButton4.Checked = true then // La table Categories
    begin

            IBTable4.Active := false ;
            IBTable4.Active := true ;
    end;


     //-----------------------------------------------------------------//

    If sRadioButton5.Checked = true then // La table Marque
    begin
            IBTable4.Active := false ;
            IBTable4.Active := true ;

    end;
end;

procedure TNv_form.sSpeedButton1Click(Sender: TObject);
begin
    if CheckBox_tb_client.Checked = true then
    begin
         sEdit1.Visible := False ;
         Timer1.Enabled := true ;

        
    end;

     if CheckBox_tb_produit.Checked = true then
    begin
        sEdit1.Visible := False ;
        Timer1.Enabled := true ;

    end;

     if CheckBox_tb_ventes.Checked = true then
    begin
       sEdit1.Visible := False ;
       Timer1.Enabled := true ;

    end;

    if CheckBox_tb_marque.Checked = true then
    begin
       sEdit1.Visible := False ;
       Timer1.Enabled := true ;

    end;

    if CheckBox_tb_categorie.Checked = true then
    begin
       sEdit1.Visible := False ;
       Timer1.Enabled := true ;

    end;



end;

procedure TNv_form.sSpeedButton3Click(Sender: TObject);
begin
     Application.Terminate ;
end;

procedure TNv_form.sSpeedButton4Click(Sender: TObject);
begin


            IBTable1.Close ;
            IBTable1.Open ;



    //-----------------------------------------------------------------//


           IBTable2.close ;
            IBTable2.open  ;


    //-----------------------------------------------------------------//


            IBTable3.close ;
            IBTable3.open;



       //-----------------------------------------------------------------//



            IBTable4.close;
            IBTable4.open;


     //-----------------------------------------------------------------//


            IBTable5.close ;
            IBTable5.open ;


end;

procedure TNv_form.sSpeedButton2Click(Sender: TObject);
begin
    if CheckBox_tb_client.Checked = true then
    begin
        IBtable2.Filtered := false ;
        sEdit1.Clear ;

        DBGrid3.Font.Color := clWindowText;
        DBGrid3.Font.Size := 8 ;
    end;


    if CheckBox_tb_produit.Checked = true then
    begin
         IBtable3.Filtered := false ;
         sEdit1.Clear ;

         DBGrid1.Font.Color := clWindowText;
         DBGrid1.Font.Size := 8 ;
    end;

    if CheckBox_tb_ventes.Checked = true then
    begin
        IBtable4.Filtered := false ;
        sEdit1.Clear ;

        DBGrid2.Font.Color := clWindowText;
        DBGrid2.Font.Size := 8 ;
    end;

    if CheckBox_tb_categorie.Checked = true then
    begin
        IBtable1.Filtered := false ;
        sEdit1.Clear ;

        DBGrid4.Font.Color := clWindowText;
        DBGrid4.Font.Size := 8 ;
    end;

    if CheckBox_tb_marque.Checked = true then
    begin
        IBtable5.Filtered := false ;
        sEdit1.Clear ;

        DBGrid5.Font.Color := clWindowText;
        DBGrid5.Font.Size := 8 ;
    end;
end;

procedure TNv_form.Timer1Timer(Sender: TObject);
begin
    sGauge1.Progress :=  sGauge1.Progress+1 ;

    if sGauge1.Progress = 100 then
    begin
        timer1.Enabled := false ;

        sGauge1.Progress := 0 ;

        sEdit1.Visible := true ;

        if CheckBox_tb_client.Checked = true then
        begin
            IBtable2.Filtered := false;
            IBtable2.Filter := 'Nom_client= '+QuotedStr(sEdit1.Text);
            IBtable2.Filtered := true;

            DBGrid3.Font.Color := clred ;
            DBGrid3.Font.Size := 10 ;
        end;

        if CheckBox_tb_produit.Checked = true then
        begin
            IBtable3.Filtered := false;
            IBtable3.Filter := 'Designation_p= '+QuotedStr(sEdit1.Text);
            IBtable3.Filtered := true;

            DBGrid1.Font.Color := clred ;
            DBGrid1.Font.Size := 10 ;
        end;

        if CheckBox_tb_ventes.Checked = true then
        begin
            IBtable4.Filtered := false;
            IBtable4.Filter := 'Id_vente= '+QuotedStr(sEdit1.Text);
            IBtable4.Filtered := true;

            DBGrid2.Font.Color := clred ;
            DBGrid2.Font.Size := 10 ;
        end;

        if CheckBox_tb_categorie.Checked = true then
        begin
            IBtable1.Filtered := false;
            IBtable1.Filter := 'Nom_categorie= '+QuotedStr(sEdit1.Text);
            IBtable1.Filtered := true;

            DBGrid4.Font.Color := clred ;
            DBGrid4.Font.Size := 10 ;
        end;

        if CheckBox_tb_marque.Checked = true then
        begin
            IBtable5.Filtered := false;
            IBtable5.Filter := 'Nom_marque= '+QuotedStr(sEdit1.Text);
            IBtable5.Filtered := true;

            DBGrid5.Font.Color := clred ;
            DBGrid5.Font.Size := 10 ;
        end;


    end;


end;

procedure TNv_form.sSpeedButton5Click(Sender: TObject);
begin
    form1.show ;
    Nv_form.Close ;
end;

end.
