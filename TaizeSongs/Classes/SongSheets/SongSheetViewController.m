//
//  SongSheetViewController.m
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

/* Displays the listing of songs per alphabet */

#import "SongSheetViewController.h"
#import "SingleSheetViewController.h"

@interface SongSheetViewController ()

@end

@implementation SongSheetViewController

@synthesize index;
@synthesize songEntries;
@synthesize songImages;
@synthesize songSheetImage;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
  NSLog(@"Taize Songs - Song Sheet Alphabetical Page View");
  NSLog(@"song sheet - index: %d", index);
  
  switch (index)
  {
    case 0: [self aSongs];
      break;
    case 1: [self bSongs];
      break;
    case 2: [self cSongs];
      break;
    case 3: [self dSongs];
      break;
    case 4: [self eSongs];
      break;
    case 5: [self fSongs];
      break;
    case 6: [self gSongs];
      break;
    case 7: [self hSongs];
      break;
    case 8: [self iSongs];
      break;
    case 9: [self jSongs];
      break;
    case 10: [self kSongs];
      break;
    case 11: [self lSongs];
      break;
    case 12: [self mSongs];
      break;
    case 13: [self nSongs];
      break;
    case 14: [self oSongs];
      break;
    case 15: [self pSongs];
      break;
    case 16: [self qSongs];
      break;
    case 17: [self rSongs];
      break;
    case 18: [self sSongs];
      break;
    case 19: [self tSongs];
      break;
    case 20: [self uSongs];
      break;
    case 21: [self vSongs];
      break;
    case 22: [self wSongs];
      break;
    case 23: [self xSongs];
      break;
    case 24: [self ySongs];
      break;
    case 25: [self zSongs];
      break;
    default: break;
  }
  
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}


#pragma mark - Initialization of songEntries and songImages
#pragma mark - Songs (A)
- (void) aSongs
{
  self.navigationItem.title = @"A";
  songEntries = [[NSMutableArray alloc]
                  initWithObjects:
                   @"Aber Du Weisst Den Weg Für Mich"
                 , @"Ad Te Jesu Christe"
                 , @"Adoramus Te Christe"
                 , @"Adoramus Te O Christe"
                 , @"Alleluia 4"
                 , @"Alleluia 7"
                 , @"Alleluia 8"
                 , @"Alleluia 10"
                 , @"Alleluia 11"
                 , @"Alleluia 16"
                 , @"Alleluia 17"
                 , @"Alleluia 18"
                 , @"Alleluia 20"
                 , @"Alleluia 21"
                 , @"Alleluia 22"
                 , @"Alleluia (Kiev)"
                 , @"Alleluia"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"aber_du_weist.png"
                , @"ad_te_jesu_c.png"
                , @"adochr.png"
                , @"adoram.png"
                , @"all_04.png"
                , @"all_07.png"
                , @"all_08.png"
                , @"all_10.png"
                , @"all_11.png"
                , @"all_16.png"
                , @"all_17.png"
                , @"all_18.png"
                , @"all_20.png"
                , @"all_21.png"
                , @"all_22.png"
                , @"all_kiev.png"
                , @"alltz.png"
                , nil];

  NSLog(@"songImages: %@", songImages);
}


#pragma mark - Songs (B)
- (void) bSongs
{
  self.navigationItem.title = @"B";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Beati Voi Poveri"
                 , @"Behüte Mich Gott"
                 , @"Bendigo Al Señor"
                 , @"Benedictus (Canon)"
                 , @"Benedictus Dominus Deus"
                 , @"Bénissez Le Seigneur"
                 , @"Bleib Mit Deiner Gnade"
                 , @"Bleibet Hier"
                 , @"Bless The Lord"
                 , @"Bóg Jest Miloscia"
                 , @"Bogoroditse Dievo 1"
                 , @"Bogoroditse Dievo 2"
                 , @"Bonum Est Confidere"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"beati.png"
                , @"behuete_mich_g.png"
                , @"bendig.png"
                , @"benedi.png"
                , @"benedictus_dominus_deus.png"
                , @"beniss.png"
                , @"bleimi.png"
                , @"bleihi"
                , @"bless-2.png"
                , @"bogjes-2.png"
                , @"bogoro.png"
                , @"bogoroditse_2.png"
                , @"bonum.png"
                , nil];
}


#pragma mark - Songs (C)
- (void) cSongs
{
  self.navigationItem.title = @"C";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"C'est Toi Ma Lampe"
                 , @"Cantarei Ao Senhor"
                 , @"Cantate Domino (canon)"
                 , @"Cantate... Canticum Novum"
                 , @"Christe Salvator"
                 , @"Christe, Lux Mundi"
                 , @"Christus Resurrexit"
                 , @"Confitemini Domino"
                 , @"Crucem Tuam"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"ce_toi.png"
                , @"cantarei_ao_s.png"
                , @"cantat.png"
                , @"cantate_canticum.png"
                , @"chsalv.png"
                , @"chrlux.png"
                , @"ch_rxt.png"
                , @"confit.png"
                , @"crucem.png"
                , nil];
}


#pragma mark - Songs (D)
- (void) dSongs
{
  self.navigationItem.title = @"D";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Da Pacem Cordium"
                 , @"Da Pacem... In Diebus"
                 , @"Dans Nos Obscurités"
                 , @"De Noche"
                 , @"Dieu Ne Peut Que Donner"
                 , @"Dominus Spiritus Est"
                 , @"Dona La Pace Signore"
                 , @"Dona Nobis Pacem"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"da_cor.png"
                , @"da_die.png"
                , @"danobs.png"
                , @"denoch.png"
                , @"dieunp.png"
                , @"dominus_spiritus.png"
                , @"dopace.png"
                , @"donano.png"
                , nil];
}


#pragma mark - Songs (E)
- (void) eSongs
{
  self.navigationItem.title = @"E";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Eat This Bread"
                 , @"El Alma Que Anda En Amor"
                 , @"El Senyor (In the Lord / Meine Hoffnung / Pan Jest Moca)"
                 , @"Esprit Consolateur"
                 , @"Exaudi Orationem Meam"
                 , @"Exomologisthe To Kyrio"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"eat_this_bread.png"
                , @"elalma.png"
                , @"elseny.png"
                , @"esprit_consolateur.png"
                , @"exaudi_orationem.png"
                , @"exomologiste.png"
                , nil];
}


#pragma mark - Songs (F)
- (void) fSongs
{
  self.navigationItem.title = @"F";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Fiez-vous en Lui"
                 , @"Frieden, Frieden"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"fiez_vous.png"
                , @"frieden_frieden.png"
                , nil];
}


#pragma mark - Songs (G)
- (void) gSongs
{
  self.navigationItem.title = @"G";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Gloria, Gloria"
                 , @"Gloria... Et In Terra Pax"
                 , @"Grande Est Ta Bonté"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"glori3.png"
                , @"gloter.png"
                , @"granbn-2.png"
                , nil];
}


#pragma mark - Songs (H)
- (void) hSongs
{
  self.navigationItem.title = @"H";
  songEntries = [[NSMutableArray alloc] init];
  
  songImages = [[NSMutableArray alloc] init];
}


#pragma mark - Songs (I)
- (void) iSongs
{
  self.navigationItem.title = @"I";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"I Am Sure I Shall See"
                 , @"Iedere Nacht Verlang Ik"
                 , @"Il Signore Ti Ristora"
                 , @"In Manus Tuas"
                 , @"In Resurrectione Tua"
                 , @"In Te Confido"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"i_am_sure.png"
                , @"iedere_nacht-2.png"
                , @"il_signore_ristora.png"
                , @"inmanu.png"
                , @"inresu.png"
                , @"intecn.png"
                , nil];
}


#pragma mark - Songs (J)
- (void) jSongs
{
  self.navigationItem.title = @"J";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Jesu Redemptor"
                 , @"Jésus Le Christ"
                 , @"Jésus, Ma Joie"
                 , @"Jesus, Remember Me"
                 , @"Jubilate - Alleluia"
                 , @"Jubilate Coeli"
                 , @"Jubilate Deo"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"jsrede.png"
                , @"jeschr.png"
                , @"jesus_ma_joie.png"
                , @"jsreme.png"
                , @"juball.png"
                , @"jubcel.png"
                , @"jubdeo.png"
                , nil];
}


#pragma mark - Songs (K)
- (void) kSongs
{
  self.navigationItem.title = @"K";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Kristus, Din Ande"
                 , @"Kyrie Eleison 1"
                 , @"Kyrie Eleison 5"
                 , @"Kyrie Eleison 6"
                 , @"Kyrie Eleison 8"
                 , @"Kyrie Eleison 9"
                 , @"Kyrie Eleison 10"
                 , @"Kyrie Eleison 12"
                 , @"Kyrie Eleison 13"
                 , @"Kyrie Eleison 17"
                 , @"Kyrie Eleison 18"
                 , @"Kyrie Eleison 19"
                 , @"Kyrie Eleison 20"
                 , @"Kyrie Eleison 21"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"kridin.png"
                , @"kyr_01.png"
                , @"kyr_05.png"
                , @"kyr_06.png"
                , @"kyr_08.png"
                , @"kyr_09.png"
                , @"kyr_10.png"
                , @"kyr_12.png"
                , @"kyr_13.png"
                , @"kyr_17.png"
                , @"kyr_18.png"
                , @"kyr_19.png"
                , @"kyr_20.png"
                , @"kyrie_21.png"
                , nil];
}


#pragma mark - Songs (L)
- (void) lSongs
{
  self.navigationItem.title = @"L";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"L'ajuda Em Vindrà"
                 , @"La Ténèbre"
                 , @"Laetentur Coeli"
                 , @"Laudate Dominum"
                 , @"Laudate Omnes Gentes"
                 , @"Let All Who Are Thirsty Come"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"lajuda-2.png"
                , @"latenb-2.png"
                , @"laetentur_coeli.png"
                , @"laudom.png.png"
                , @"lauome.png.png"
                , @"let_all_who_are_thirsty.png"
                , nil];

}


#pragma mark - Songs (M)
- (void) mSongs
{
  self.navigationItem.title = @"M";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Magnificat (Canon)"
                 , @"Magnificat (Choral)"
                 , @"Magnificat 3"
                 , @"Mane Nobiscum"
                 , @"Misericordias Domini"
                 , @"Mon Ame Se Repose"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"magnca.png"
                , @"magnch.png"
                , @"magnificat3.png"
                , @"mane_nobiscum.png"
                , @"miseri.png"
                , @"moname.png"
                , nil];
}


#pragma mark - Songs (N)
- (void) nSongs
{
  self.navigationItem.title = @"N";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Nada Te Turbe"
                 , @"Nebojte Se"
                 , @"Nothing Can Ever"
                 , @"Notre Ame Attend"
                 , @"Nunc Dimittis"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"nadate.png"
                , @"nebojt.png"
                , @"nothin.png"
                , @"notram.png"
                , @"nuncdi.png"
                , nil];

}


#pragma mark - Songs (O)
- (void) oSongs
{
  self.navigationItem.title = @"O";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"O Christe Domine Jesu"
                 , @"O Toi, L'au-delà De Tout"
                 , @"Oculi Nostri"
                 , @"Ostende Nobis"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"ochdom.png"
                , @"o_toi_l_audela.png"
                , @"oculi.png"
                , @"ostend.png"
                , nil];
}


#pragma mark - Songs (P)
- (void) pSongs
{
  self.navigationItem.title = @"P";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Probudi Se"
                 , @"Psallite Deo"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"probudi_se.png"
                , @"psalit.png"
                , nil];
}


#pragma mark - Songs (Q)
- (void) qSongs
{
  self.navigationItem.title = @"Q";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Que J'exulte Et Jubile"
                 , @"Qui Regarde Vers Dieu"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"que_jexulte.png"
                , @"quireg.png"
                , nil];
}


#pragma mark - Songs (R)
- (void) rSongs
{
  self.navigationItem.title = @"R";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Retourne, Mon Ame, A Ton Repos"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"retourne_mon_ame.png"
                , nil];
}


#pragma mark - Songs (S)
- (void) sSongs
{
  self.navigationItem.title = @"S";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Sanctum Nomen Domini"
                 , @"See, I Am Near"
                 , @"Seigneur, Tu Gardes Mon Ame"
                 , @"Sfinte Dumnezeule"
                 , @"Singt dem Herrn"
                 , @"Sit Nomen Domini"
                 , @"Spiritus Jesu Christi"
                 , @"Sto Oko Ne Vidje"
                 , @"Surrexit Christus"
                 , @"Surrexit Dominus Vere"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"santum.png"
                , @"see_i_am_near-2.png"
                , @"seigneur_tu_g.png"
                , @"sfinte_dumnezeule.png"
                , @"singt.png"
                , @"sit_nomen_d.png"
                , @"spjsch.png"
                , @"sto_oko_ne_vidje.png"
                , @"surrex.png"
                , @"surver.png"
                , nil];
}


#pragma mark - Songs (T)
- (void) tSongs
{
  self.navigationItem.title = @"T";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"The Kingdom Of God"
                 , @"Toi, Tu Nous Aimes"
                 , @"Tu Sei Sorgente Viva"
                 , @"Tui Amoris"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"t_king.png"
                , @"tunous.png"
                , @"tusei.png"
                , @"tuiamo.png"
                , nil];
}


#pragma mark - Songs (U)
- (void) uSongs
{
  self.navigationItem.title = @"U";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Ubi Caritas"
                 , @"Ubi Caritas Deus Ibi Est"
                 , @"Une Soif Emplit Notre Ame"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"ubicar.png"
                , @"ubideu.png"
                , @"unsoif.png"
                , nil];
}


#pragma mark - Songs (V)
- (void) vSongs
{
  self.navigationItem.title = @"V";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Veni Creator (Canon)"
                 , @"Veni Creator (Litanie)"
                 , @"Veni Lumen (Choral)"
                 , @"Veni Sancte Spiritus"
                 , @"Venite, Exultemus Domino"
                 , @"Vieni Spirito Creatore"
                 , @"Viespatie, Tu Viska Zinai"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"vcreca.png"
                , @"vcreli.png.png"
                , @"vlumch.png"
                , @"vss.png"
                , @"venite.png"
                , @"vieni.png"
                , @"viespatie-2.png"
                , nil];

}


#pragma mark - Songs (W)
- (void) wSongs
{
  self.navigationItem.title = @"F";
  songEntries = [[NSMutableArray alloc]
                 initWithObjects:
                   @"Wait For The Lord"
                 , @"Wyslawiajcie Pana"
                 , nil];
  
  songImages = [[NSMutableArray alloc]
                initWithObjects:
                  @"wait.png"
                , @"wyslaw-3.png"
                , nil];

}


#pragma mark - Songs (X)
- (void) xSongs
{
  self.navigationItem.title = @"X";
  songEntries = [[NSMutableArray alloc] init];
  
  songImages = [[NSMutableArray alloc] init];
}


#pragma mark - Songs (Y)
- (void) ySongs
{
  self.navigationItem.title = @"Y";
  songEntries = [[NSMutableArray alloc] init];
  
  songImages = [[NSMutableArray alloc] init];
}


#pragma mark - Songs (Z)
- (void) zSongs
{
  self.navigationItem.title = @"Z";
  songEntries = [[NSMutableArray alloc] init];
  
  songImages = [[NSMutableArray alloc] init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source implementation
- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableView
{
  //Return the number of sections.
  return 1;
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section
{
  NSString *myTitle = [[NSString alloc] initWithFormat:@""];
  return myTitle;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [songEntries count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"alphabeticalListingCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  //configure the cell
  cell.textLabel.text          = [songEntries objectAtIndex:indexPath.row];
  cell.textLabel.numberOfLines = 0;
  
  return cell;
}


//Change the Height of the Cell [Default is 45]:
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
  return 70;
}


#pragma mark - Segue
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSLog(@"indexPath.row: %d", indexPath.row);
  
  songSheetImage = [UIImage imageNamed:(NSString*)[self.songImages objectAtIndex:indexPath.row]];
  [self performSegueWithIdentifier:@"listingToSheetView" sender:self];
}


#pragma mark - Prepare for segue to Single Sheet View
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"listingToSheetView"])
  {
    SingleSheetViewController *destViewController = segue.destinationViewController;
    destViewController.selectedSongSheet = songSheetImage;
  }
}


@end
