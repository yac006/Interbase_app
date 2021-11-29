unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sSplitter, sGroupBox, ComCtrls, sTreeView, StdCtrls,
  sComboBox, Buttons, sSpeedButton, sEdit, sPanel, sStatusBar, Grids,
  DBGrids, sScrollBox, sFrameBar, sTabControl, sRadioButton, sBitBtn,
  sRichEdit, DB, IBDatabase, IBCustomDataSet, IBQuery, sFontCtrls, acSlider,
  sMemo, DBCtrls, sListBox, sCheckListBox, sFileCtrl, sComboBoxes,
  acShellCtrls, sButton, IBTable, sGauge, ImgList;

type
  TForm3 = class(TForm)
    sGroupBox1: TsGroupBox;
    sStatusBar1: TsStatusBar;
    sPanel1: TsPanel;
    sComboBox1: TsComboBox;
    sFrameBar1: TsFrameBar;
    sTreeView1: TsTreeView;
    sGroupBox2: TsGroupBox;
    sRadioButton_ventes: TsRadioButton;
    sRadioButton_categories: TsRadioButton;
    sRadioButton_produits: TsRadioButton;
    sRadioButton_client: TsRadioButton;
    sRadioButton_marques: TsRadioButton;
    sSpeedButton1: TsSpeedButton;
    sRichEdit1: TsRichEdit;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    sGroupBox3: TsGroupBox;
    sRichEdit2: TsRichEdit;
    sGroupBox4: TsGroupBox;
    sComboBox2: TsComboBox;
    sCheckListBox1: TsCheckListBox;
    sComboBox3: TsComboBox;
    sSlider1: TsSlider;
    SaveDialog1: TSaveDialog;
    sSpeedButton2: TsSpeedButton;
    DBGrid1: TDBGrid;
    IBTable_marques: TIBTable;
    IBTable_categories: TIBTable;
    IBTable_ventes: TIBTable;
    IBTable_produits: TIBTable;
    IBTable_clients: TIBTable;
    sGauge1: TsGauge;
    Timer_search_listbox: TTimer;
    sShellComboBox1: TsShellComboBox;
    ImageList1: TImageList;
    IBQuery2: TIBQuery;
    Memo1: TsMemo;
    sSpeedButton5: TsSpeedButton;
    sListBox1: TListBox;
    DataSource_tb_clients: TDataSource;
    DataSource_tb_produits: TDataSource;
    DataSource_tb_ventes: TDataSource;
    DataSource_tb_categories: TDataSource;
    DataSource_tb_marques: TDataSource;
    ImageList_for_treeview: TImageList;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sRichEdit1Change(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sSlider1Click(Sender: TObject);
    procedure sRadioButton_produitsClick(Sender: TObject);
    procedure sRadioButton_clientClick(Sender: TObject);
    procedure sRadioButton_ventesClick(Sender: TObject);
    procedure sRadioButton_categoriesClick(Sender: TObject);
    procedure sRadioButton_marquesClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sRichEdit1Enter(Sender: TObject);
    procedure Timer_search_listboxTimer(Sender: TObject);
    procedure show_all_in_listbox();
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton3DblClick(Sender: TObject);
    procedure sTreeView1DblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;
  var_choix : string ;

implementation

uses Unit_de_chargement, Unit_choix, Unit_principale;

{$R *.dfm}




procedure TForm3.show_all_in_listbox;
begin
     //----- Actualiser les tables -----//
     IBtable_clients.close;
     IBtable_clients.Open ;

     IBtable_produits.Close;
     IBtable_produits.Open;

     IBtable_ventes.Close ;
     IBtable_ventes.Open ;

     IBtable_categories.Close ;
     IBtable_categories.Open ;

     IBtable_marques.Close ;
     IBtable_marques.Open ;

                             //*------------------------- Table Clients ----------------------------------*//
     while not IBtable_clients.Eof do
     begin
            sListBox1.Items.Add((IBtable_clients.Fields.FieldbyName('Id_client').AsString )
            +'   '+(IBtable_clients.Fields.FieldbyName('Nom_client').AsString )
            +'   '+(IBtable_clients.Fields.FieldbyName('Prenom_client').AsString )
            +'   '+(IBtable_clients.Fields.FieldbyName('Address').AsString )
            +'   '+(IBtable_clients.Fields.FieldbyName('Tele').AsString )
            +'   '+(IBtable_clients.Fields.FieldbyName('Email').AsString )
              )    ;



         IBtable_clients.Next ;
     end;
      sListBox1.Items.Add('------------------------------------------------------------------------------------------');
      IBtable_clients.close ;

             //*------------------------- Table Produits ----------------------------------*//
     while not IBtable_produits.Eof do
     begin
            sListBox1.Items.Add((IBtable_produits.Fields.FieldbyName('Num_p').AsString )
            +'   '+(IBtable_produits.Fields.FieldbyName('Designation_p').AsString )
            +'   '+(IBtable_produits.Fields.FieldbyName('Prix_achat').AsString )
            +'   '+(IBtable_produits.Fields.FieldbyName('Prix_vente').AsString )
            +'   '+(IBtable_produits.Fields.FieldbyName('Quantite_p').AsString )
              )    ;

         IBtable_produits.Next ;
     end;
      sListBox1.Items.Add('------------------------------------------------------------------------------------------');
      IBtable_produits.close ;

             //*------------------------- Table Ventes ----------------------------------*//
     while not IBtable_ventes.Eof do
     begin
            sListBox1.Items.Add((IBtable_ventes.Fields.FieldbyName('Id_vente').AsString )
            +'   '+(IBtable_ventes.Fields.FieldbyName('Date_vente').AsString )
            +'   '+(IBtable_ventes.Fields.FieldbyName('Remise').AsString )
            +'   '+(IBtable_ventes.Fields.FieldbyName('Total').AsString )
              )    ;

         IBtable_ventes.Next ;
     end;
      sListBox1.Items.Add('------------------------------------------------------------------------------------------');
      IBtable_ventes.close ;


             //*------------------------- Table Categories ----------------------------------*//
     while not IBtable_categories.Eof do
     begin
            sListBox1.Items.Add((IBtable_categories.Fields.FieldbyName('Id_categorie').AsString )
            +'   '+(IBtable_categories.Fields.FieldbyName('Nom_categorie').AsString )
              ) ;

         IBtable_categories.Next ;
     end;
      sListBox1.Items.Add('------------------------------------------------------------------------------------------');
      IBtable_categories.close ;


             //*------------------------- Table Marques ----------------------------------*//
     while not IBtable_marques.Eof do
     begin
            sListBox1.Items.Add((IBtable_marques.Fields.FieldbyName('Id_marque').AsString )
            +'   '+(IBtable_marques.Fields.FieldbyName('Nom_marque').AsString )
              ) ;

         IBtable_marques.Next ;
     end;
      sListBox1.Items.Add('------------------------------------------------------------------------------------------');
      IBtable_marques.close ;



end;




procedure TForm3.sSpeedButton1Click(Sender: TObject);
var
   champ : string ;
begin


         if sRadioButton_client.Checked = true then
         begin
             champ := 'Clients' ;
         end;


         if sRadioButton_produits.Checked = true then
         begin
             champ := 'Produits' ;
         end;

         if sRadioButton_ventes.Checked = true then
         begin
             champ := 'Ventes' ;
         end;

         if sRadioButton_categories.Checked = true then
         begin
            champ := 'Categories' ;
         end;

         if sRadioButton_marques.Checked = true then
         begin
            champ := 'Marques' ;
         end;

         //-----------------------//
          if champ = '' then
              ShowMessage('Il faut choisir d''abord la table !!!');

         //------------------- lancer la requéte de recherche ---------------/
           IBQuery1.Close;
           IBQuery1.SQl.Clear ;
           IBQuery1.SQL.Add('SELECT * FROM '+champ+' WHERE '+sComboBox1.Text+' = '+sRichEdit1.Text+' ');
           IBQuery1.Open;


          //--------------- choix lieu de recherche (listbox ou DBgrid)  -----------------/
          if var_choix = 'Dbgrid' then
          begin

               DBGrid1.DataSource := DataSource1 ;
               DBGrid1.Font.Color := clred ;

          end;

          if var_choix = 'Listbox' then
          begin

               sListBox1.Height := 243 ;
               sGauge1.Visible := true ;

              Timer_search_listbox.Enabled := true ;
             
          end;


                  //changments de l'icon pour button de recherche

         if sSpeedButton1.ImageIndex = 0   then
         begin
              ShowMessage('Recherche deactivé');
              sSpeedButton1.ImageIndex := 1 ;

              sRichEdit1.Clear ;

              sListBox1.Items.Clear ;
              sListBox1.Clear ;

              //IBQuery1.Close ;



              show_all_in_listbox(); //afficher tout les tables dans listbox


              sGauge1.Visible := false ;
              sListBox1.Height := 264 ;
                        //******** Actualiser DBgrid ********//
              DBGrid1.DataSource := DataSource_tb_clients ;
              IBTable_clients.Close;
              IBTable_clients.Open;
              DBGrid1.Font.Color := clBlack ;

         end
         else
             sSpeedButton1.ImageIndex := 0;
         





end;

procedure TForm3.sRichEdit1Change(Sender: TObject);
begin
    { if sRichEdit1.Text = '' then
     begin
          show_all_in_listbox(); //afficher tout les tables dans listbox
     end;  }

    { if sRichEdit1.Text = '' then
     begin
         IBQuery1.close ;
         IBQuery1.SQl.Clear ;
         IBQuery1.SQL.Add('SELECT * FROM Clients , Produits , Ventes , Categories , Marques');
         IBQuery1.Open ;

         DBGrid1.Font.Color := clBlack ;





     sListBox1.Font.Size := 8 ;

     end;// end of  if sRichEdit1.Text = ''      }

end;

procedure TForm3.sComboBox3Change(Sender: TObject);
begin

      if sComboBox3.Text = 'Table clients' then
      begin
          sCheckListBox1.Clear ;
          sCheckListBox1.Items.add('Id_client');
          sCheckListBox1.Items.add('Nom_client');
          sCheckListBox1.Items.add('Prénom_client');
          sCheckListBox1.Items.add('Address');
          sCheckListBox1.Items.add('Télé');
          sCheckListBox1.Items.add('Email');
      end;

      if sComboBox3.Text = 'Table produits' then
      begin
          sCheckListBox1.Clear ;
          sCheckListBox1.Items.add('Num_produit');
          sCheckListBox1.Items.add('Designation');
          sCheckListBox1.Items.add('Prix_achat');
          sCheckListBox1.Items.add('Prix_vente');
          sCheckListBox1.Items.add('Quantité');
      end;

      if sComboBox3.Text = 'Table ventes' then
      begin
          sCheckListBox1.Clear ;
          sCheckListBox1.Items.add('Id_vente');
          sCheckListBox1.Items.add('Date_vente');
          sCheckListBox1.Items.add('Remise');
          sCheckListBox1.Items.add('Total');
          
      end;

      if sComboBox3.Text = 'Table categories' then
      begin
          sCheckListBox1.Clear ;
          sCheckListBox1.Items.add('Id_categorie');
          sCheckListBox1.Items.add('Nom_categorie');

      end;

      if sComboBox3.Text = 'Table marques' then
      begin
          sCheckListBox1.Clear ;
          sCheckListBox1.Items.add('Id_marque');
          sCheckListBox1.Items.add('Nom_marque');
      end;

      //Afficher CheckListBox et reduire le width de memo
      Memo1.Width := 298 ;
      sCheckListBox1.Visible := true ;

end;

procedure TForm3.sSlider1Click(Sender: TObject);
begin
    if sSlider1.SliderOn = true then
    begin
       sSlider1.Color := $00FFFF66 ;

      if sRichEdit2.Text <> '' then
      begin
        IBQuery2.Close ;
        IBquery2.sql.clear ;
        IBQuery2.SQL.Add(sRichEdit2.Text);

        try
            IBQuery2.Open ;
            //IBQuery2.active := true ;
        except
            ShowMessage('Il ya un Erreur dans la requète !!!');
        end;//end try

         //*--------------------------------------------------*/

         //-----  Afficher tout les champs comme des colonnes --------/
                  if (sCheckListBox1.Checked[0]) and (sCheckListBox1.Checked[1]) and  (sCheckListBox1.Checked[2])
                     and  (sCheckListBox1.Checked[3]) and (sCheckListBox1.Checked[4]) and (sCheckListBox1.Checked[5])
                  then
                  begin
                     While not IBQuery2.Eof do
                     begin
                          Memo1.Lines.Add(
                              (IBQuery2.Fields.FieldbyName('Id_client').AsString)
                          +'  '+(IBQuery2.Fields.FieldbyName('Nom_client').AsString)
                          +'  '+(IBQuery2.Fields.FieldbyName('Prenom_client').AsString)
                          +'  '+(IBQuery2.Fields.FieldbyName('Address').AsString)
                          +'  '+(IBQuery2.Fields.FieldbyName('Tele').AsString)
                          +'  '+(IBQuery2.Fields.FieldbyName('Email').AsString)    );

                          IBQuery2.Next ;
                      end;//end while loop
                        IBQuery2.Close ;
                   end  // end if tout les champs a été selectioné
                     else  // si on pas selectioner tout les champs
                        begin

                             //Remplissage de memo avec le resultat de IBquery

                                           //*---- SI combobox3 = Table Clients ----*/

                              if sComboBox3.Text = 'Table clients' then
                              begin
                                    While not IBQuery2.Eof do
                                    begin
                                      if sCheckListBox1.Checked[0] then //Id_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Id_client').AsString);
                                      if sCheckListBox1.Checked[1] then //Nom_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Nom_client').AsString);
                                      if sCheckListBox1.Checked[2] then //Prénom_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Prenom_client').AsString);
                                      if sCheckListBox1.Checked[3] then //Address_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Address').AsString);
                                      if sCheckListBox1.Checked[4] then //Télé_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Tele').AsString);
                                      if sCheckListBox1.Checked[5] then //Email_client
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Email').AsString);

                                  IBQuery2.Next ;
                              end; //end while loop
                           IBQuery2.Close ;
                        end; // end if sComboBox3 = Table clients

                                                //*---- SI combobox3 = Table produits ----*/

                          if sComboBox3.Text = 'Table produits' then
                          begin
                               While not IBQuery2.Eof do
                               begin
                                    if sCheckListBox1.Checked[0] then //Num_produit
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Num_p').AsString);
                                    if sCheckListBox1.Checked[1] then //Designation_produit
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Designation_p').AsString);
                                    if sCheckListBox1.Checked[2] then //Prix_achat
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Prix_achat').AsString);
                                    if sCheckListBox1.Checked[3] then //Prix_vente
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Prix_vente').AsString);
                                    if sCheckListBox1.Checked[4] then //Quantité
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Quantite_p').AsString);
                                    
                                    IBQuery2.Next ;
                               end;//end while loop
                               IBQuery2.Close ;
                          end;// end of if ComboBox3 = Table produits


                                               //*---- SI combobox3 = Table Ventes ----*/

                          if sComboBox3.Text = 'Table ventes' then
                          begin
                               While not IBQuery2.Eof do
                               begin
                                    if sCheckListBox1.Checked[0] then //Id_vente
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Id_vente').AsString);
                                    if sCheckListBox1.Checked[1] then //Date_vente
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Date_vente').AsString);
                                    if sCheckListBox1.Checked[2] then //Remise
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Remise').AsString);
                                    if sCheckListBox1.Checked[3] then //Total
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Total').AsString);

                                    IBQuery2.Next ;
                               end;//end while loop
                               IBQuery2.Close ;
                          end;// end of if ComboBox3 = Table ventes


                                                   //*---- SI combobox3 = Table Categories ----*/

                          if sComboBox3.Text = 'Table categories' then
                          begin
                               //IBQuery2.Fields.Clear;
                               While not IBQuery2.Eof do
                               begin
                               
                                    if sCheckListBox1.Checked[0] then //Id_categorie
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Id_categorie').AsString);
                                    if sCheckListBox1.Checked[1] then //Nom_categorie
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Nom_categorie').AsString);

                                    IBQuery2.Next ;
                               end;//end while loop
                               IBQuery2.Close ;
                          end;// end of if ComboBox3 = Table categories


                                                   //*---- SI combobox3 = Table Marques ----*/

                          if sComboBox3.Text = 'Table marques' then
                          begin
                               While not IBQuery2.Eof do
                               begin
                               
                                    if sCheckListBox1.Checked[0] then //Id_marque
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Id_marque').AsString);
                                    if sCheckListBox1.Checked[1] then //Nom_marque
                                          Memo1.Lines.Add(IBQuery2.Fields.FieldbyName('Nom_marque').AsString);

                                    IBQuery2.Next ;
                               end;//end while loop
                               IBQuery2.Close ;
                          end;// end of if ComboBox3 = Table marques




                    end;//end of else

        






                   

                    // SUIT  ( N'PAS COMPLER  )






        end //end of if sRichEdit2 <> ''
        else //Si sRichEdit2 est Vide 
        ShowMessage('Le champ de Requétes est vide !!! ');



    end //end of if sSlider1 = On 
    else  //Si sSlider1 OFF
      begin
           sSlider1.Color := clBtnFace ;
           Memo1.Clear ;
           sRichEdit2.Clear ;
           sCheckListBox1.Clear ;
           sComboBox3.Text := 'Choisir une table ....';
           sComboBox2.Text := 'Choisir une Requète ....';
           
      end;
end;

procedure TForm3.sRadioButton_produitsClick(Sender: TObject);
begin
     sComboBox1.Items.Clear ;

     sComboBox1.Items.Add('Num_p');
     sComboBox1.Items.Add('Designation_p');
     sComboBox1.Items.Add('Prix_achat');
     sComboBox1.Items.Add('Prix_vente');
     sComboBox1.Items.Add('Quantite_p');

     //----- affiche la table dans DBgrid ------//
    DBGrid1.DataSource := DataSource_tb_produits ;
    IBTable_produits.Close ;
    IBTable_produits.open ;

end;

procedure TForm3.sRadioButton_clientClick(Sender: TObject);
begin
    sComboBox1.Items.Clear ;

    sComboBox1.Items.Add('Id_client');
    sComboBox1.Items.Add('Nom_client');
    sComboBox1.Items.Add('Prenom_client');
    sComboBox1.Items.Add('Address');
    sComboBox1.Items.Add('Tele');
    sComboBox1.Items.Add('Email');

         //----- affiche la table dans DBgrid ------//
    DBGrid1.DataSource := DataSource_tb_clients ;
    IBTable_clients.Close ;
    IBTable_clients.open ;
end;

procedure TForm3.sRadioButton_ventesClick(Sender: TObject);
begin
     sComboBox1.Items.Clear ;

     sComboBox1.Items.Add('Id_vente');
     sComboBox1.Items.Add('Date_vente');
     sComboBox1.Items.Add('Remise');
     sComboBox1.Items.Add('Total');

     //----- affiche la table dans DBgrid ------//
    DBGrid1.DataSource := DataSource_tb_ventes ;
    IBTable_ventes.Close ;
    IBTable_ventes.open ;
end;

procedure TForm3.sRadioButton_categoriesClick(Sender: TObject);
begin
     sComboBox1.Items.Clear ;

     sComboBox1.Items.Add('Id_categorie');
     sComboBox1.Items.Add('Nom_categorie');

     //----- affiche la table dans DBgrid ------//
     DBGrid1.DataSource := DataSource_tb_categories ;
     IBTable_categories.Close ;
     IBTable_categories.open ;
end;

procedure TForm3.sRadioButton_marquesClick(Sender: TObject);
begin
     sComboBox1.Items.Clear ;

     sComboBox1.Items.Add('Id_marque');
     sComboBox1.Items.Add('Nom_marque');

     //----- affiche la table dans DBgrid ------//
     DBGrid1.DataSource := DataSource_tb_marques ;
     IBTable_marques.Close ;
     IBTable_marques.Open ;
end;

procedure TForm3.sBitBtn1Click(Sender: TObject);
begin
     try
         Memo1.Lines.SaveToFile( GetCurrentDir()+'\Fichiers exporter\Mon_fichier.txt');
         ShowMessage('Le fichie a été enregistrer avec succée ...');
     except
         ShowMessage('il ya un erreur !!!'); 
     end;
end;

procedure TForm3.sSpeedButton2Click(Sender: TObject);
begin
    if Memo1.Lines.Count <> 0 then
    begin
        try
            Memo1.Lines.SaveToFile(sShellComboBox1.path+'\Mon_fichier.txt');
            Fiche_de_chargement.Show;
            
        except
            ShowMessage('Probléme d''enregistrement de ficher !!');
        end;
    end
    else
       ShowMessage('Memo Vide !!!');

end;

procedure TForm3.sComboBox2Change(Sender: TObject);
begin
    sRichEdit2.Text := sComboBox2.Text ;
end;

procedure TForm3.sRichEdit1Enter(Sender: TObject);
begin
     if sRichEdit1.Text = '' then
                Fiche_de_choix.Show ;
end;

procedure TForm3.Timer_search_listboxTimer(Sender: TObject);
begin
     sGauge1.Progress :=  sGauge1.Progress+1 ;

     if  sGauge1.Progress >= 100 then
     begin
          Timer_search_listbox.Enabled := false ;

           sListBox1.Clear ;
           sListBox1.font.Size := 9 ;

           if sRadioButton_client.Checked = true then
           begin
              sListBox1.Items.Add((IBQuery1.Fields[0].AsString)
              +'   '+(IBQuery1.Fields[1].AsString)
              +'   '+(IBQuery1.Fields[2].AsString)
              +'   '+(IBQuery1.Fields[3].AsString)
              +'   '+(IBQuery1.Fields[4].AsString)
              +'   '+(IBQuery1.Fields[5].AsString)
              );
           end;

           if sRadioButton_produits.Checked = true then
           begin
              sListBox1.Items.Add((IBQuery1.Fields[0].AsString)
              +'   '+(IBQuery1.Fields[1].AsString)
              +'   '+(IBQuery1.Fields[2].AsString)
              +'   '+(IBQuery1.Fields[3].AsString)
              +'   '+(IBQuery1.Fields[4].AsString)
              
              );

            if sRadioButton_ventes.Checked = true then
           begin
              sListBox1.Items.Add((IBQuery1.Fields[0].AsString)
              +'   '+(IBQuery1.Fields[1].AsString)
              +'   '+(IBQuery1.Fields[2].AsString)
              +'   '+(IBQuery1.Fields[3].AsString)

              );
           end;

     end;
     end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
     show_all_in_listbox(); //afficher tout les tables dans listbox
end;

procedure TForm3.sSpeedButton5Click(Sender: TObject);
begin
     form1.show;
     form3.Close ;
end;

procedure TForm3.sSpeedButton3DblClick(Sender: TObject);
begin
    sListBox1.Items.Clear ;
    show_all_in_listbox(); //afficher tout les tables dans listbox
end;

procedure TForm3.sTreeView1DblClick(Sender: TObject);
begin
         sListBox1.Items.Clear ;
    show_all_in_listbox(); //afficher tout les tables dans listbox
end;

end.

