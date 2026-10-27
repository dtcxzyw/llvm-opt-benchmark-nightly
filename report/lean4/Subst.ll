Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Subst?download=true
inline.NumInlined: 2816
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Lean_Meta_substCore___lam__3:bb.a
  br i1 %i.bcz, label %bb.asd, label %bb.ase, !prof !16

bb.asd:                                           ; preds = %bb.asc
  %i.bda = add nsw i32 %i.bcy, -1
  store i32 %i.bda, ptr %10, align 4, !tbaa !11
  br label %lean_dec.exit2015

bb.ase:                                           ; preds = %bb.asc
  %.not.i2792 = icmp eq i32 %i.bcy, 0
  br i1 %.not.i2792, label %lean_dec.exit2015, label %bb.asf

bb.asf:                                           ; preds = %bb.ase
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec.exit2015

lean_dec.exit2015:                                ; preds = %bb.asf, %bb.ase, %bb.asd, %lean_dec.exit2017
  %i.bdb = load i32, ptr %9, align 4, !tbaa !11   ; 3 uses
  %i.bdc = icmp sgt i32 %i.bdb, 1
  br i1 %i.bdc, label %bb.asg, label %bb.ash, !prof !16

bb.asg:                                           ; preds = %lean_dec.exit2015
  %i.bdd = add nsw i32 %i.bdb, -1
  store i32 %i.bdd, ptr %9, align 4, !tbaa !11
  br label %lean_dec_ref.exit2907

bb.ash:                                           ; preds = %lean_dec.exit2015
  %.not.i2906 = icmp eq i32 %i.bdb, 0
  br i1 %.not.i2906, label %lean_dec_ref.exit2907, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit2907

lean_dec_ref.exit2907:                            ; preds = %bb.asg, %bb.ash, %bb.asi
  %i.bde = ptrtoint ptr %8 to i64
  %i.bdf = and i64 %i.bde, 1
  %.not.i2012 = icmp eq i64 %i.bdf, 0
  br i1 %.not.i2012, label %bb.asj, label %lean_dec.exit2013

bb.asj:                                           ; preds = %lean_dec_ref.exit2907
  %i.bdg = load i32, ptr %8, align 4, !tbaa !11   ; 3 uses
  %i.bdh = icmp sgt i32 %i.bdg, 1
  br i1 %i.bdh, label %bb.ask, label %bb.asl, !prof !16

bb.ask:                                           ; preds = %bb.asj
  %i.bdi = add nsw i32 %i.bdg, -1
  store i32 %i.bdi, ptr %8, align 4, !tbaa !11
  br label %lean_dec.exit2013

bb.asl:                                           ; preds = %bb.asj
  %.not.i2794 = icmp eq i32 %i.bdg, 0
  br i1 %.not.i2794, label %lean_dec.exit2013, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit2013

lean_dec.exit2013:                                ; preds = %bb.asm, %bb.asl, %bb.ask, %lean_dec_ref.exit2907
  %i.bdj = load i32, ptr %7, align 4, !tbaa !11   ; 3 uses
  %i.bdk = icmp sgt i32 %i.bdj, 1
  br i1 %i.bdk, label %bb.asn, label %bb.aso, !prof !16

bb.asn:                                           ; preds = %lean_dec.exit2013
  %i.bdl = add nsw i32 %i.bdj, -1
  store i32 %i.bdl, ptr %7, align 4, !tbaa !11
  br label %lean_dec_ref.exit2905

bb.aso:                                           ; preds = %lean_dec.exit2013
  %.not.i2904 = icmp eq i32 %i.bdj, 0
  br i1 %.not.i2904, label %lean_dec_ref.exit2905, label %bb.asp

bb.asp:                                           ; preds = %bb.aso
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #7
  br label %lean_dec_ref.exit2905

lean_dec_ref.exit2905:                            ; preds = %bb.asn, %bb.aso, %bb.asp
  %i.bdm = ptrtoint ptr %4 to i64
  %i.bdn = and i64 %i.bdm, 1
  %.not.i2010 = icmp eq i64 %i.bdn, 0
  br i1 %.not.i2010, label %bb.asq, label %lean_dec.exit2011

bb.asq:                                           ; preds = %lean_dec_ref.exit2905
  %i.bdo = load i32, ptr %4, align 4, !tbaa !11   ; 3 uses
  %i.bdp = icmp sgt i32 %i.bdo, 1
  br i1 %i.bdp, label %bb.asr, label %bb.ass, !prof !16

bb.asr:                                           ; preds = %bb.asq
  %i.bdq = add nsw i32 %i.bdo, -1
  store i32 %i.bdq, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit2011

bb.ass:                                           ; preds = %bb.asq
  %.not.i2796 = icmp eq i32 %i.bdo, 0
  br i1 %.not.i2796, label %lean_dec.exit2011, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit2011

lean_dec.exit2011:                                ; preds = %bb.ast, %bb.ass, %bb.asr, %lean_dec_ref.exit2905
  br i1 %.not.i2491, label %bb.asu, label %lean_dec.exit2009

bb.asu:                                           ; preds = %lean_dec.exit2011
  %i.bdr = load i32, ptr %1, align 4, !tbaa !11   ; 3 uses
  %i.bds = icmp sgt i32 %i.bdr, 1
  br i1 %i.bds, label %bb.asv, label %bb.asw, !prof !16

bb.asv:                                           ; preds = %bb.asu
  %i.bdt = add nsw i32 %i.bdr, -1
  store i32 %i.bdt, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit2009

bb.asw:                                           ; preds = %bb.asu
  %.not.i2798 = icmp eq i32 %i.bdr, 0
  br i1 %.not.i2798, label %lean_dec.exit2009, label %bb.asx

bb.asx:                                           ; preds = %bb.asw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit2009

lean_dec.exit2009:                                ; preds = %bb.asx, %bb.asw, %bb.asv, %lean_dec.exit2011
  br i1 %.not.i2497, label %bb.asy, label %lean_dec.exit2007

bb.asy:                                           ; preds = %lean_dec.exit2009
  %i.bdu = load i32, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.bdv = icmp sgt i32 %i.bdu, 1
  br i1 %i.bdv, label %bb.asz, label %bb.ata, !prof !16

bb.asz:                                           ; preds = %bb.asy
  %i.bdw = add nsw i32 %i.bdu, -1
  store i32 %i.bdw, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit2007

bb.ata:                                           ; preds = %bb.asy
  %.not.i2800 = icmp eq i32 %i.bdu, 0
  br i1 %.not.i2800, label %lean_dec.exit2007, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2007

lean_dec.exit2007:                                ; preds = %bb.atb, %bb.ata, %bb.asz, %lean_dec.exit2009
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !15 ; 5 uses
  %.val3034 = load i32, ptr %i.ci, align 8, !tbaa !11
  %i.bdz = icmp eq i32 %.val3034, 1
  br i1 %i.bdz, label %lean_dec.exit1961, label %bb.atc

bb.atc:                                           ; preds = %lean_dec.exit2007
  %i.bea = ptrtoint ptr %i.bdy to i64
  %i.beb = and i64 %i.bea, 1
  %.not.i2363 = icmp eq i64 %i.beb, 0
  br i1 %.not.i2363, label %bb.atd, label %lean_inc.exit2364

bb.atd:                                           ; preds = %bb.atc
  %.val.i.i3422 = load i32, ptr %i.bdy, align 4, !tbaa !11 ; 3 uses
  %i.bec = icmp sgt i32 %.val.i.i3422, 0
  br i1 %i.bec, label %bb.ate, label %bb.atf, !prof !16

bb.ate:                                           ; preds = %bb.atd
  %i.bed = add nuw i32 %.val.i.i3422, 1
  store i32 %i.bed, ptr %i.bdy, align 4, !tbaa !11
  br label %lean_inc.exit2364

bb.atf:                                           ; preds = %bb.atd
  %.not.i.i3423 = icmp eq i32 %.val.i.i3422, 0
  br i1 %.not.i.i3423, label %lean_inc.exit2364, label %bb.atg

bb.atg:                                           ; preds = %bb.atf
  %i.bee = atomicrmw add ptr %i.bdy, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2364

lean_inc.exit2364:                                ; preds = %bb.atg, %bb.atf, %bb.ate, %bb.atc
  br i1 %.not.i3098, label %bb.ath, label %bb.atl

bb.ath:                                           ; preds = %lean_inc.exit2364
  %i.bef = load i32, ptr %i.ci, align 8, !tbaa !11 ; 3 uses
  %i.beg = icmp sgt i32 %i.bef, 1
  br i1 %i.beg, label %bb.ati, label %bb.atj, !prof !16

bb.ati:                                           ; preds = %bb.ath
  %i.beh = add nsw i32 %i.bef, -1
  store i32 %i.beh, ptr %i.ci, align 8, !tbaa !11
  br label %bb.atl

bb.atj:                                           ; preds = %bb.ath
  %.not.i2802 = icmp eq i32 %i.bef, 0
  br i1 %.not.i2802, label %bb.atl, label %bb.atk

bb.atk:                                           ; preds = %bb.atj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #7
  br label %bb.atl

bb.atl:                                           ; preds = %lean_inc.exit2364, %bb.ati, %bb.atj, %bb.atk
  %i.bei = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8
  store ptr %i.bdy, ptr %i.bej, align 8, !tbaa !15
  br label %lean_dec.exit1961

bb.atm:                                           ; preds = %bb.aqt, %bb.aqs, %bb.aqr, %lean_dec.exit2025
  %l_Lean_Meta_substCore___lam__3___closed__30_value.l_Lean_Meta_substCore___lam__3___closed__31_value = select i1 %i.gg, ptr @l_Lean_Meta_substCore___lam__3___closed__30_value, ptr @l_Lean_Meta_substCore___lam__3___closed__31_value
  %i.bek = load atomic i32, ptr @l_Lean_Meta_substCore___lam__3___closed__3_once seq_cst, align 4, !tbaa !20
  %i.bel = icmp eq i32 %i.bek, 1
  br i1 %i.bel, label %bb.atn, label %bb.ato, !prof !16

bb.atn:                                           ; preds = %bb.atm
  %i.bem = load ptr, ptr @l_Lean_Meta_substCore___lam__3___closed__3, align 8, !tbaa !15
  br label %lean_inc_ref.exit3429

bb.ato:                                           ; preds = %bb.atm
  %i.ben = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_substCore___lam__3___closed__3, ptr noundef nonnull @l_Lean_Meta_substCore___lam__3___closed__3_once, ptr noundef nonnull @_init_l_Lean_Meta_substCore___lam__3___closed__3) #7
  br label %lean_inc_ref.exit3429

lean_inc_ref.exit3429:                            ; preds = %bb.atn, %bb.ato
  %.0.i3425 = phi ptr [ %i.bem, %bb.atn ], [ %i.ben, %bb.ato ]
  %i.beo = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l_Lean_Meta_substCore___lam__3___closed__30_value.l_Lean_Meta_substCore___lam__3___closed__31_value) #7
  %i.bep = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 8
  store ptr %.0.i3425, ptr %i.beq, align 8, !tbaa !15
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bep, i64 16
  store ptr %i.beo, ptr %i.ber, align 8, !tbaa !15
  %i.bes = tail call ptr @l_Lean_indentExpr(ptr noundef nonnull %i.cb) #7
  %i.bet = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 8
  store ptr %i.bep, ptr %i.beu, align 8, !tbaa !15
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 16
  store ptr %i.bes, ptr %i.bev, align 8, !tbaa !15
  %i.bew = load atomic i32, ptr @l_Lean_Meta_substCore___lam__3___closed__5_once seq_cst, align 4, !tbaa !20
  %i.bex = icmp eq i32 %i.bew, 1
  br i1 %i.bex, label %bb.atp, label %bb.atq, !prof !16

bb.atp:                                           ; preds = %lean_inc_ref.exit3429
  %i.bey = load ptr, ptr @l_Lean_Meta_substCore___lam__3___closed__5, align 8, !tbaa !15
  br label %lean_obj_once.exit3431

bb.atq:                                           ; preds = %lean_inc_ref.exit3429
  %i.bez = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_substCore___lam__3___closed__5, ptr noundef nonnull @l_Lean_Meta_substCore___lam__3___closed__5_once, ptr noundef nonnull @_init_l_Lean_Meta_substCore___lam__3___closed__5) #7
  br label %lean_obj_once.exit3431

lean_obj_once.exit3431:                           ; preds = %bb.atp, %bb.atq
  %.0.i3430 = phi ptr [ %i.bey, %bb.atp ], [ %i.bez, %bb.atq ]
  %i.bfa = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 8
  store ptr %i.bet, ptr %i.bfb, align 8, !tbaa !15
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfa, i64 16
  store ptr %.0.i3430, ptr %i.bfc, align 8, !tbaa !15
  %i.bfd = tail call ptr @l_Lean_indentExpr(ptr noundef %.01610) #7
  %i.bfe = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  store ptr %i.bfa, ptr %i.bff, align 8, !tbaa !15
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfe, i64 16
  store ptr %i.bfd, ptr %i.bfg, align 8, !tbaa !15
  %i.bfh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 8
  store ptr %i.bfe, ptr %i.bfi, align 8, !tbaa !15
  %i.bfj = tail call ptr @l_Lean_Meta_throwTacticEx___redArg(ptr noundef nonnull @l_Lean_Meta_substCore___lam__3___closed__1_value, ptr noundef %0, ptr noundef nonnull %i.bfh, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7 ; 3 uses
  %i.bfk = ptrtoint ptr %10 to i64
  %i.bfl = and i64 %i.bfk, 1
  %.not.i2002 = icmp eq i64 %i.bfl, 0
  br i1 %.not.i2002, label %bb.atr, label %lean_dec.exit2003

bb.atr:                                           ; preds = %lean_obj_once.exit3431
  %i.bfm = load i32, ptr %10, align 4, !tbaa !11  ; 3 uses
  %i.bfn = icmp sgt i32 %i.bfm, 1
  br i1 %i.bfn, label %bb.ats, label %bb.att, !prof !16

bb.ats:                                           ; preds = %bb.atr
  %i.bfo = add nsw i32 %i.bfm, -1
  store i32 %i.bfo, ptr %10, align 4, !tbaa !11
  br label %lean_dec.exit2003

bb.att:                                           ; preds = %bb.atr
  %.not.i2804 = icmp eq i32 %i.bfm, 0
  br i1 %.not.i2804, label %lean_dec.exit2003, label %bb.atu

bb.atu:                                           ; preds = %bb.att
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec.exit2003

lean_dec.exit2003:                                ; preds = %bb.atu, %bb.att, %bb.ats, %lean_obj_once.exit3431
  %i.bfp = load i32, ptr %9, align 4, !tbaa !11   ; 3 uses
  %i.bfq = icmp sgt i32 %i.bfp, 1
  br i1 %i.bfq, label %bb.atv, label %bb.atw, !prof !16

bb.atv:                                           ; preds = %lean_dec.exit2003
  %i.bfr = add nsw i32 %i.bfp, -1
  store i32 %i.bfr, ptr %9, align 4, !tbaa !11
  br label %lean_dec_ref.exit2903

bb.atw:                                           ; preds = %lean_dec.exit2003
  %.not.i2902 = icmp eq i32 %i.bfp, 0
  br i1 %.not.i2902, label %lean_dec_ref.exit2903, label %bb.atx

bb.atx:                                           ; preds = %bb.atw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit2903

lean_dec_ref.exit2903:                            ; preds = %bb.atv, %bb.atw, %bb.atx
  %i.bfs = ptrtoint ptr %8 to i64
  %i.bft = and i64 %i.bfs, 1
  %.not.i2000 = icmp eq i64 %i.bft, 0
  br i1 %.not.i2000, label %bb.aty, label %lean_dec.exit2001

bb.aty:                                           ; preds = %lean_dec_ref.exit2903
  %i.bfu = load i32, ptr %8, align 4, !tbaa !11   ; 3 uses
  %i.bfv = icmp sgt i32 %i.bfu, 1
  br i1 %i.bfv, label %bb.atz, label %bb.aua, !prof !16

bb.atz:                                           ; preds = %bb.aty
  %i.bfw = add nsw i32 %i.bfu, -1
  store i32 %i.bfw, ptr %8, align 4, !tbaa !11
  br label %lean_dec.exit2001

bb.aua:                                           ; preds = %bb.aty
  %.not.i2806 = icmp eq i32 %i.bfu, 0
  br i1 %.not.i2806, label %lean_dec.exit2001, label %bb.aub

bb.aub:                                           ; preds = %bb.aua
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit2001

lean_dec.exit2001:                                ; preds = %bb.aub, %bb.aua, %bb.atz, %lean_dec_ref.exit2903
  %i.bfx = load i32, ptr %7, align 4, !tbaa !11   ; 3 uses
  %i.bfy = icmp sgt i32 %i.bfx, 1
  br i1 %i.bfy, label %bb.auc, label %bb.aud, !prof !16

bb.auc:                                           ; preds = %lean_dec.exit2001
  %i.bfz = add nsw i32 %i.bfx, -1
  store i32 %i.bfz, ptr %7, align 4, !tbaa !11
  br label %lean_dec.exit1961

bb.aud:                                           ; preds = %lean_dec.exit2001
  %.not.i2900 = icmp eq i32 %i.bfx, 0
  br i1 %.not.i2900, label %lean_dec.exit1961, label %bb.aue

bb.aue:                                           ; preds = %bb.aud
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #7
  br label %lean_dec.exit1961

bb.auf:                                           ; preds = %lean_obj_tag.exit3081
  br i1 %.not.i2495, label %bb.aug, label %lean_dec.exit1999

bb.aug:                                           ; preds = %bb.auf
  %i.bga = load i32, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.bgb = icmp sgt i32 %i.bga, 1
  br i1 %i.bgb, label %bb.auh, label %bb.aui, !prof !16

bb.auh:                                           ; preds = %bb.aug
  %i.bgc = add nsw i32 %i.bga, -1
  store i32 %i.bgc, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit1999

bb.aui:                                           ; preds = %bb.aug
  %.not.i2808 = icmp eq i32 %i.bga, 0
  br i1 %.not.i2808, label %lean_dec.exit1999, label %bb.auj

bb.auj:                                           ; preds = %bb.aui
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #7
  br label %lean_dec.exit1999

lean_dec.exit1999:                                ; preds = %bb.auj, %bb.aui, %bb.auh, %bb.auf
  %i.bgd = ptrtoint ptr %10 to i64
  %i.bge = and i64 %i.bgd, 1
  %.not.i1996 = icmp eq i64 %i.bge, 0
  br i1 %.not.i1996, label %bb.auk, label %lean_dec.exit1997

bb.auk:                                           ; preds = %lean_dec.exit1999
  %i.bgf = load i32, ptr %10, align 4, !tbaa !11  ; 3 uses
  %i.bgg = icmp sgt i32 %i.bgf, 1
  br i1 %i.bgg, label %bb.aul, label %bb.aum, !prof !16

bb.aul:                                           ; preds = %bb.auk
  %i.bgh = add nsw i32 %i.bgf, -1
  store i32 %i.bgh, ptr %10, align 4, !tbaa !11
  br label %lean_dec.exit1997

bb.aum:                                           ; preds = %bb.auk
  %.not.i2810 = icmp eq i32 %i.bgf, 0
  br i1 %.not.i2810, label %lean_dec.exit1997, label %bb.aun

bb.aun:                                           ; preds = %bb.aum
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec.exit1997

lean_dec.exit1997:                                ; preds = %bb.aun, %bb.aum, %bb.aul, %lean_dec.exit1999
  %i.bgi = load i32, ptr %9, align 4, !tbaa !11   ; 3 uses
  %i.bgj = icmp sgt i32 %i.bgi, 1
  br i1 %i.bgj, label %bb.auo, label %bb.aup, !prof !16

bb.auo:                                           ; preds = %lean_dec.exit1997
  %i.bgk = add nsw i32 %i.bgi, -1
  store i32 %i.bgk, ptr %9, align 4, !tbaa !11
  br label %lean_dec_ref.exit2899

bb.aup:                                           ; preds = %lean_dec.exit1997
  %.not.i2898 = icmp eq i32 %i.bgi, 0
  br i1 %.not.i2898, label %lean_dec_ref.exit2899, label %bb.auq

bb.auq:                                           ; preds = %bb.aup
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit2899

lean_dec_ref.exit2899:                            ; preds = %bb.auo, %bb.aup, %bb.auq
  %i.bgl = ptrtoint ptr %8 to i64
  %i.bgm = and i64 %i.bgl, 1
  %.not.i1994 = icmp eq i64 %i.bgm, 0
  br i1 %.not.i1994, label %bb.aur, label %lean_dec.exit1995

bb.aur:                                           ; preds = %lean_dec_ref.exit2899
  %i.bgn = load i32, ptr %8, align 4, !tbaa !11   ; 3 uses
  %i.bgo = icmp sgt i32 %i.bgn, 1
  br i1 %i.bgo, label %bb.aus, label %bb.aut, !prof !16

bb.aus:                                           ; preds = %bb.aur
  %i.bgp = add nsw i32 %i.bgn, -1
end_hunk_0
