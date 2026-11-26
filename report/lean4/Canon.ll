Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Canon?download=true
inline.NumInlined: 2827
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon:bb.a

bb.azr:                                           ; preds = %lean_inc.exit1650, %bb.azq
  %.sink3363 = phi ptr [ %i.cfx, %bb.azq ], [ %.01492, %lean_inc.exit1650 ] ; 3 uses
  %i.cfz = getelementptr inbounds nuw i8, ptr %.sink3363, i64 16
  store ptr %i.cfw, ptr %i.cfz, align 8, !tbaa !12
  br i1 %i.ccx, label %bb.azs, label %bb.azt

bb.azs:                                           ; preds = %bb.azr
  %i.cga = getelementptr inbounds nuw i8, ptr %.01494, i64 80
  store ptr %.sink3363, ptr %i.cga, align 8, !tbaa !12
  br label %bb.azu

bb.azt:                                           ; preds = %bb.azr
  %i.cgb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 10, i32 noundef 1) ; 12 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 8
  store ptr %i.cce, ptr %i.cgc, align 8, !tbaa !12
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cgb, i64 16
  store ptr %i.ccg, ptr %i.cgd, align 8, !tbaa !12
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cgb, i64 24
  store ptr %i.cci, ptr %i.cge, align 8, !tbaa !12
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cgb, i64 32
  store ptr %i.cck, ptr %i.cgf, align 8, !tbaa !12
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgb, i64 40
  store ptr %i.ccm, ptr %i.cgg, align 8, !tbaa !12
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgb, i64 48
  store ptr %i.cco, ptr %i.cgh, align 8, !tbaa !12
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgb, i64 56
  store ptr %i.ccq, ptr %i.cgi, align 8, !tbaa !12
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgb, i64 64
  store ptr %i.ccs, ptr %i.cgj, align 8, !tbaa !12
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgb, i64 72
  store ptr %i.ccu, ptr %i.cgk, align 8, !tbaa !12
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgb, i64 80
  store ptr %.sink3363, ptr %i.cgl, align 8, !tbaa !12
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgb, i64 88
  store i8 %i.ccw, ptr %i.cgm, align 8, !tbaa !16
  br label %bb.azu

bb.azu:                                           ; preds = %bb.azt, %bb.azs
  %.01489 = phi ptr [ %.01494, %bb.azs ], [ %i.cgb, %bb.azt ]
  %i.cgn = tail call ptr @lean_st_ref_set(ptr noundef %3, ptr noundef nonnull %.01489) #7 ; 0 uses
  br i1 %i.cbr, label %lean_dec_ref_known.exit2381, label %bb.azv

bb.azv:                                           ; preds = %bb.azu
  %i.cgo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 8
  store ptr %i.cbq, ptr %i.cgp, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

bb.azw:                                           ; preds = %lean_obj_tag.exit2967
  %.val.i3010 = load i32, ptr %0, align 4, !tbaa !10 ; 4 uses
  %i.cgq = icmp eq i32 %.val.i3010, 1
  br i1 %i.cgq, label %.preheader.i3013, label %bb.baj

.preheader.i3013:                                 ; preds = %bb.azw
  %i.cgr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cgs = load ptr, ptr %i.cgr, align 8, !tbaa !12 ; 4 uses
  %i.cgt = ptrtoint ptr %i.cgs to i64
  %i.cgu = and i64 %i.cgt, 1
  %.not.i7.i3015 = icmp eq i64 %i.cgu, 0
  br i1 %.not.i7.i3015, label %bb.azx, label %lean_dec.exit.i3016

bb.azx:                                           ; preds = %.preheader.i3013
  %i.cgv = load i32, ptr %i.cgs, align 4, !tbaa !10 ; 3 uses
  %i.cgw = icmp sgt i32 %i.cgv, 1
  br i1 %i.cgw, label %bb.azy, label %bb.azz, !prof !13

bb.azy:                                           ; preds = %bb.azx
  %i.cgx = add nsw i32 %i.cgv, -1
  store i32 %i.cgx, ptr %i.cgs, align 4, !tbaa !10
  br label %lean_dec.exit.i3016

bb.azz:                                           ; preds = %bb.azx
  %.not.i.i.i3019 = icmp eq i32 %i.cgv, 0
  br i1 %.not.i.i.i3019, label %lean_dec.exit.i3016, label %bb.baa

bb.baa:                                           ; preds = %bb.azz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cgs) #7
  br label %lean_dec.exit.i3016

lean_dec.exit.i3016:                              ; preds = %bb.baa, %bb.azz, %bb.azy, %.preheader.i3013
  %i.cgy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cgz = load ptr, ptr %i.cgy, align 8, !tbaa !12 ; 4 uses
  %i.cha = ptrtoint ptr %i.cgz to i64
  %i.chb = and i64 %i.cha, 1
  %.not.i7.i3015.1 = icmp eq i64 %i.chb, 0
  br i1 %.not.i7.i3015.1, label %bb.bab, label %lean_dec.exit.i3016.1

bb.bab:                                           ; preds = %lean_dec.exit.i3016
  %i.chc = load i32, ptr %i.cgz, align 4, !tbaa !10 ; 3 uses
  %i.chd = icmp sgt i32 %i.chc, 1
  br i1 %i.chd, label %bb.bae, label %bb.bac, !prof !13

bb.bac:                                           ; preds = %bb.bab
  %.not.i.i.i3019.1 = icmp eq i32 %i.chc, 0
  br i1 %.not.i.i.i3019.1, label %lean_dec.exit.i3016.1, label %bb.bad

bb.bad:                                           ; preds = %bb.bac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cgz) #7
  br label %lean_dec.exit.i3016.1

bb.bae:                                           ; preds = %bb.bab
  %i.che = add nsw i32 %i.chc, -1
  store i32 %i.che, ptr %i.cgz, align 4, !tbaa !10
  br label %lean_dec.exit.i3016.1

lean_dec.exit.i3016.1:                            ; preds = %bb.bae, %bb.bad, %bb.bac, %lean_dec.exit.i3016
  %i.chf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.chg = load ptr, ptr %i.chf, align 8, !tbaa !12 ; 4 uses
  %i.chh = ptrtoint ptr %i.chg to i64
  %i.chi = and i64 %i.chh, 1
  %.not.i7.i3015.2 = icmp eq i64 %i.chi, 0
  br i1 %.not.i7.i3015.2, label %bb.baf, label %lean_dec.exit.i3016.2

bb.baf:                                           ; preds = %lean_dec.exit.i3016.1
  %i.chj = load i32, ptr %i.chg, align 4, !tbaa !10 ; 3 uses
  %i.chk = icmp sgt i32 %i.chj, 1
  br i1 %i.chk, label %bb.bai, label %bb.bag, !prof !13

bb.bag:                                           ; preds = %bb.baf
  %.not.i.i.i3019.2 = icmp eq i32 %i.chj, 0
  br i1 %.not.i.i.i3019.2, label %lean_dec.exit.i3016.2, label %bb.bah

bb.bah:                                           ; preds = %bb.bag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.chg) #7
  br label %lean_dec.exit.i3016.2

bb.bai:                                           ; preds = %bb.baf
  %i.chl = add nsw i32 %i.chj, -1
  store i32 %i.chl, ptr %i.chg, align 4, !tbaa !10
  br label %lean_dec.exit.i3016.2

lean_dec.exit.i3016.2:                            ; preds = %bb.bai, %bb.bah, %bb.bag, %lean_dec.exit.i3016.1
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit2381

bb.baj:                                           ; preds = %bb.azw
  %i.chm = icmp sgt i32 %.val.i3010, 1
  br i1 %i.chm, label %bb.bak, label %bb.bal, !prof !13

bb.bak:                                           ; preds = %bb.baj
  %i.chn = add nsw i32 %.val.i3010, -1
  store i32 %i.chn, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit2381

bb.bal:                                           ; preds = %bb.baj
  %.not.i.i3011 = icmp eq i32 %.val.i3010, 0
  br i1 %.not.i.i3011, label %lean_dec_ref_known.exit2381, label %bb.bam

bb.bam:                                           ; preds = %bb.bal
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit2381

bb.ban:                                           ; preds = %lean_obj_tag.exit
  %i.cho = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.chp = load ptr, ptr %i.cho, align 8, !tbaa !12 ; 5 uses
  %i.chq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.chr = load ptr, ptr %i.chq, align 8, !tbaa !12 ; 5 uses
  %.val.i.i3021 = load i32, ptr %i.chr, align 4, !tbaa !10 ; 3 uses
  %i.chs = icmp sgt i32 %.val.i.i3021, 0
  br i1 %i.chs, label %bb.bao, label %bb.bap, !prof !13

bb.bao:                                           ; preds = %bb.ban
  %i.cht = add nuw i32 %.val.i.i3021, 1
  store i32 %i.cht, ptr %i.chr, align 4, !tbaa !10
  br label %lean_inc_ref.exit3023

bb.bap:                                           ; preds = %bb.ban
  %.not.i.i3022 = icmp eq i32 %.val.i.i3021, 0
  br i1 %.not.i.i3022, label %lean_inc_ref.exit3023, label %bb.baq

bb.baq:                                           ; preds = %bb.bap
  %i.chu = atomicrmw add ptr %i.chr, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3023

lean_inc_ref.exit3023:                            ; preds = %bb.bao, %bb.bap, %bb.baq
  %i.chv = tail call ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon(ptr noundef nonnull %i.chr, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 12 uses
  %i.chw = ptrtoint ptr %i.chv to i64             ; 2 uses
  %i.chx = and i64 %i.chw, 1
  %.not.i3024 = icmp eq i64 %i.chx, 0             ; 2 uses
  br i1 %.not.i3024, label %bb.bas, label %bb.bar

bb.bar:                                           ; preds = %lean_inc_ref.exit3023
  %i.chy = lshr i64 %i.chw, 1
  %i.chz = trunc i64 %i.chy to i32
  br label %lean_obj_tag.exit3027

bb.bas:                                           ; preds = %lean_inc_ref.exit3023
  %i.cia = getelementptr i8, ptr %i.chv, i64 4
  %.val.i3026 = load i32, ptr %i.cia, align 4
  %i.cib = lshr i32 %.val.i3026, 24
  br label %lean_obj_tag.exit3027

lean_obj_tag.exit3027:                            ; preds = %bb.bar, %bb.bas
  %.0.i3025 = phi i32 [ %i.chz, %bb.bar ], [ %i.cib, %bb.bas ]
  %i.cic = icmp eq i32 %.0.i3025, 0
  br i1 %i.cic, label %bb.bat, label %bb.bcc

bb.bat:                                           ; preds = %lean_obj_tag.exit3027
  %i.cid = getelementptr inbounds nuw i8, ptr %i.chv, i64 8
  %i.cie = load ptr, ptr %i.cid, align 8, !tbaa !12 ; 10 uses
  %.val = load i32, ptr %i.chv, align 8, !tbaa !10
  %i.cif = icmp eq i32 %.val, 1                   ; 3 uses
  br i1 %i.cif, label %lean_dec.exit1953, label %bb.bau

bb.bau:                                           ; preds = %bb.bat
  %i.cig = ptrtoint ptr %i.cie to i64
  %i.cih = and i64 %i.cig, 1
  %.not.i1647 = icmp eq i64 %i.cih, 0
  br i1 %.not.i1647, label %bb.bav, label %lean_inc.exit1648

bb.bav:                                           ; preds = %bb.bau
  %.val.i.i3028 = load i32, ptr %i.cie, align 4, !tbaa !10 ; 3 uses
  %i.cii = icmp sgt i32 %.val.i.i3028, 0
  br i1 %i.cii, label %bb.baw, label %bb.bax, !prof !13

bb.baw:                                           ; preds = %bb.bav
  %i.cij = add nuw i32 %.val.i.i3028, 1
  store i32 %i.cij, ptr %i.cie, align 4, !tbaa !10
  br label %lean_inc.exit1648

bb.bax:                                           ; preds = %bb.bav
  %.not.i.i3029 = icmp eq i32 %.val.i.i3028, 0
  br i1 %.not.i.i3029, label %lean_inc.exit1648, label %bb.bay

bb.bay:                                           ; preds = %bb.bax
  %i.cik = atomicrmw add ptr %i.cie, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1648

lean_inc.exit1648:                                ; preds = %bb.bay, %bb.bax, %bb.baw, %bb.bau
  br i1 %.not.i3024, label %bb.baz, label %lean_dec.exit1953

bb.baz:                                           ; preds = %lean_inc.exit1648
  %i.cil = load i32, ptr %i.chv, align 8, !tbaa !10 ; 3 uses
  %i.cim = icmp sgt i32 %i.cil, 1
  br i1 %i.cim, label %bb.bba, label %bb.bbb, !prof !13

bb.bba:                                           ; preds = %bb.baz
  %i.cin = add nsw i32 %i.cil, -1
  store i32 %i.cin, ptr %i.chv, align 8, !tbaa !10
  br label %lean_dec.exit1953

bb.bbb:                                           ; preds = %bb.baz
  %.not.i.i1951 = icmp eq i32 %i.cil, 0
  br i1 %.not.i.i1951, label %lean_dec.exit1953, label %bb.bbc

bb.bbc:                                           ; preds = %bb.bbb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.chv) #7
  br label %lean_dec.exit1953

lean_dec.exit1953:                                ; preds = %lean_inc.exit1648, %bb.bbc, %bb.bbb, %bb.bba, %bb.bat
  %.01487 = phi ptr [ %i.chv, %bb.bat ], [ inttoptr (i64 1 to ptr), %bb.bba ], [ inttoptr (i64 1 to ptr), %bb.bbb ], [ inttoptr (i64 1 to ptr), %bb.bbc ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1648 ] ; 4 uses
  %.not = icmp eq ptr %i.chr, %i.cie
  br i1 %.not, label %8, label %bb.bbd

bb.bbd:                                           ; preds = %lean_dec.exit1953
  %i.cio = ptrtoint ptr %i.chp to i64
  %i.cip = and i64 %i.cio, 1
  %.not.i1646 = icmp eq i64 %i.cip, 0
  br i1 %.not.i1646, label %bb.bbe, label %lean_inc.exit

bb.bbe:                                           ; preds = %bb.bbd
  %.val.i.i3031 = load i32, ptr %i.chp, align 4, !tbaa !10 ; 3 uses
  %i.ciq = icmp sgt i32 %.val.i.i3031, 0
  br i1 %i.ciq, label %bb.bbf, label %bb.bbg, !prof !13

bb.bbf:                                           ; preds = %bb.bbe
  %i.cir = add nuw i32 %.val.i.i3031, 1
  store i32 %i.cir, ptr %i.chp, align 4, !tbaa !10
  br label %lean_inc.exit

bb.bbg:                                           ; preds = %bb.bbe
  %.not.i.i3032 = icmp eq i32 %.val.i.i3031, 0
  br i1 %.not.i.i3032, label %lean_inc.exit, label %bb.bbh

bb.bbh:                                           ; preds = %bb.bbg
  %i.cis = atomicrmw add ptr %i.chp, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bbh, %bb.bbg, %bb.bbf, %bb.bbd
  %.val.i3034 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.cit = icmp eq i32 %.val.i3034, 1
  br i1 %i.cit, label %.preheader.i3037.preheader, label %bb.bbq

.preheader.i3037.preheader:                       ; preds = %lean_inc.exit
  %i.ciu = load ptr, ptr %i.cho, align 8, !tbaa !12 ; 4 uses
  %i.civ = ptrtoint ptr %i.ciu to i64
  %i.ciw = and i64 %i.civ, 1
  %.not.i7.i3039 = icmp eq i64 %i.ciw, 0
  br i1 %.not.i7.i3039, label %bb.bbi, label %lean_dec.exit.i3040

bb.bbi:                                           ; preds = %.preheader.i3037.preheader
  %i.cix = load i32, ptr %i.ciu, align 4, !tbaa !10 ; 3 uses
  %i.ciy = icmp sgt i32 %i.cix, 1
  br i1 %i.ciy, label %bb.bbj, label %bb.bbk, !prof !13

bb.bbj:                                           ; preds = %bb.bbi
  %i.ciz = add nsw i32 %i.cix, -1
  store i32 %i.ciz, ptr %i.ciu, align 4, !tbaa !10
  br label %lean_dec.exit.i3040

bb.bbk:                                           ; preds = %bb.bbi
  %.not.i.i.i3043 = icmp eq i32 %i.cix, 0
  br i1 %.not.i.i.i3043, label %lean_dec.exit.i3040, label %bb.bbl

bb.bbl:                                           ; preds = %bb.bbk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ciu) #7
  br label %lean_dec.exit.i3040

lean_dec.exit.i3040:                              ; preds = %bb.bbl, %bb.bbk, %bb.bbj, %.preheader.i3037.preheader
  %i.cja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cjb = load ptr, ptr %i.cja, align 8, !tbaa !12 ; 4 uses
  %i.cjc = ptrtoint ptr %i.cjb to i64
  %i.cjd = and i64 %i.cjc, 1
  %.not.i7.i3039.1 = icmp eq i64 %i.cjd, 0
  br i1 %.not.i7.i3039.1, label %bb.bbm, label %lean_dec.exit.i3040.1

bb.bbm:                                           ; preds = %lean_dec.exit.i3040
  %i.cje = load i32, ptr %i.cjb, align 4, !tbaa !10 ; 3 uses
  %i.cjf = icmp sgt i32 %i.cje, 1
  br i1 %i.cjf, label %bb.bbp, label %bb.bbn, !prof !13

bb.bbn:                                           ; preds = %bb.bbm
  %.not.i.i.i3043.1 = icmp eq i32 %i.cje, 0
  br i1 %.not.i.i.i3043.1, label %lean_dec.exit.i3040.1, label %bb.bbo

bb.bbo:                                           ; preds = %bb.bbn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cjb) #7
  br label %lean_dec.exit.i3040.1

bb.bbp:                                           ; preds = %bb.bbm
  %i.cjg = add nsw i32 %i.cje, -1
  store i32 %i.cjg, ptr %i.cjb, align 4, !tbaa !10
  br label %lean_dec.exit.i3040.1

lean_dec.exit.i3040.1:                            ; preds = %bb.bbp, %bb.bbo, %bb.bbn, %lean_dec.exit.i3040
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit3044

bb.bbq:                                           ; preds = %lean_inc.exit
  %i.cjh = icmp sgt i32 %.val.i3034, 1
  br i1 %i.cjh, label %bb.bbr, label %bb.bbs, !prof !13

bb.bbr:                                           ; preds = %bb.bbq
  %i.cji = add nsw i32 %.val.i3034, -1
  store i32 %i.cji, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit3044

bb.bbs:                                           ; preds = %bb.bbq
  %.not.i.i3035 = icmp eq i32 %.val.i3034, 0
  br i1 %.not.i.i3035, label %lean_dec_ref_known.exit3044, label %bb.bbt

bb.bbt:                                           ; preds = %bb.bbs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit3044

lean_dec_ref_known.exit3044:                      ; preds = %lean_dec.exit.i3040.1, %bb.bbr, %bb.bbs, %bb.bbt
  %i.cjj = tail call ptr @l_Lean_Expr_mdata___override(ptr noundef %i.chp, ptr noundef %i.cie) #7 ; 2 uses
  br i1 %i.cif, label %bb.bbu, label %bb.bbv

bb.bbu:                                           ; preds = %lean_dec_ref_known.exit3044
  %i.cjk = getelementptr inbounds nuw i8, ptr %.01487, i64 8
  store ptr %i.cjj, ptr %i.cjk, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

bb.bbv:                                           ; preds = %lean_dec_ref_known.exit3044
  %i.cjl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 8
  store ptr %i.cjj, ptr %i.cjm, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

8:                                                ; preds = %lean_dec.exit1953
  %9 = ptrtoint ptr %i.cie to i64
  %10 = and i64 %9, 1
  %.not.i1949 = icmp eq i64 %10, 0
  br i1 %.not.i1949, label %bb.bbw, label %lean_dec.exit

bb.bbw:                                           ; preds = %8
  %i.cjn = load i32, ptr %i.cie, align 4, !tbaa !10 ; 3 uses
  %i.cjo = icmp sgt i32 %i.cjn, 1
  br i1 %i.cjo, label %bb.bbx, label %bb.bby, !prof !13

bb.bbx:                                           ; preds = %bb.bbw
  %i.cjp = add nsw i32 %i.cjn, -1
  store i32 %i.cjp, ptr %i.cie, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bby:                                           ; preds = %bb.bbw
  %.not.i.i = icmp eq i32 %i.cjn, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bbz

bb.bbz:                                           ; preds = %bb.bby
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cie) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bbx, %bb.bby, %bb.bbz, %8
  br i1 %i.cif, label %bb.bca, label %bb.bcb

bb.bca:                                           ; preds = %lean_dec.exit
  %i.cjq = getelementptr inbounds nuw i8, ptr %.01487, i64 8
  store ptr %0, ptr %i.cjq, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

bb.bcb:                                           ; preds = %lean_dec.exit
  %i.cjr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 8
  store ptr %0, ptr %i.cjs, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

bb.bcc:                                           ; preds = %lean_obj_tag.exit3027
  %.val.i3045 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.cjt = icmp eq i32 %.val.i3045, 1
  br i1 %i.cjt, label %.preheader.i3048.preheader, label %bb.bcl

.preheader.i3048.preheader:                       ; preds = %bb.bcc
  %i.cju = load ptr, ptr %i.cho, align 8, !tbaa !12 ; 4 uses
  %i.cjv = ptrtoint ptr %i.cju to i64
  %i.cjw = and i64 %i.cjv, 1
  %.not.i7.i3050 = icmp eq i64 %i.cjw, 0
  br i1 %.not.i7.i3050, label %bb.bcd, label %lean_dec.exit.i3051

bb.bcd:                                           ; preds = %.preheader.i3048.preheader
  %i.cjx = load i32, ptr %i.cju, align 4, !tbaa !10 ; 3 uses
  %i.cjy = icmp sgt i32 %i.cjx, 1
  br i1 %i.cjy, label %bb.bce, label %bb.bcf, !prof !13

bb.bce:                                           ; preds = %bb.bcd
  %i.cjz = add nsw i32 %i.cjx, -1
  store i32 %i.cjz, ptr %i.cju, align 4, !tbaa !10
  br label %lean_dec.exit.i3051

bb.bcf:                                           ; preds = %bb.bcd
  %.not.i.i.i3054 = icmp eq i32 %i.cjx, 0
  br i1 %.not.i.i.i3054, label %lean_dec.exit.i3051, label %bb.bcg

bb.bcg:                                           ; preds = %bb.bcf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cju) #7
  br label %lean_dec.exit.i3051

lean_dec.exit.i3051:                              ; preds = %bb.bcg, %bb.bcf, %bb.bce, %.preheader.i3048.preheader
  %i.cka = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ckb = load ptr, ptr %i.cka, align 8, !tbaa !12 ; 4 uses
  %i.ckc = ptrtoint ptr %i.ckb to i64
  %i.ckd = and i64 %i.ckc, 1
  %.not.i7.i3050.1 = icmp eq i64 %i.ckd, 0
  br i1 %.not.i7.i3050.1, label %bb.bch, label %lean_dec.exit.i3051.1

bb.bch:                                           ; preds = %lean_dec.exit.i3051
  %i.cke = load i32, ptr %i.ckb, align 4, !tbaa !10 ; 3 uses
  %i.ckf = icmp sgt i32 %i.cke, 1
  br i1 %i.ckf, label %bb.bck, label %bb.bci, !prof !13

bb.bci:                                           ; preds = %bb.bch
  %.not.i.i.i3054.1 = icmp eq i32 %i.cke, 0
  br i1 %.not.i.i.i3054.1, label %lean_dec.exit.i3051.1, label %bb.bcj

bb.bcj:                                           ; preds = %bb.bci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ckb) #7
  br label %lean_dec.exit.i3051.1

bb.bck:                                           ; preds = %bb.bch
  %i.ckg = add nsw i32 %i.cke, -1
  store i32 %i.ckg, ptr %i.ckb, align 4, !tbaa !10
  br label %lean_dec.exit.i3051.1

lean_dec.exit.i3051.1:                            ; preds = %bb.bck, %bb.bcj, %bb.bci, %lean_dec.exit.i3051
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit2381

bb.bcl:                                           ; preds = %bb.bcc
  %i.ckh = icmp sgt i32 %.val.i3045, 1
  br i1 %i.ckh, label %bb.bcm, label %bb.bcn, !prof !13

bb.bcm:                                           ; preds = %bb.bcl
  %i.cki = add nsw i32 %.val.i3045, -1
  store i32 %i.cki, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit2381

bb.bcn:                                           ; preds = %bb.bcl
  %.not.i.i3046 = icmp eq i32 %.val.i3045, 0
  br i1 %.not.i.i3046, label %lean_dec_ref_known.exit2381, label %bb.bco

bb.bco:                                           ; preds = %bb.bcn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit2381

bb.bcp:                                           ; preds = %lean_obj_tag.exit
  tail call void @lean_inc_heartbeat() #7
  %i.ckj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.ckk = icmp eq ptr %i.ckj, null
  br i1 %i.ckk, label %bb.bcq, label %lean_alloc_ctor.exit3056

bb.bcq:                                           ; preds = %bb.bcp
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit3056:                         ; preds = %bb.bcp
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckj, i64 4
  store i32 1, ptr %i.ckj, align 4, !tbaa !10
  store i32 65552, ptr %i.ckl, align 4
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckj, i64 8
  store ptr %0, ptr %i.ckm, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2381

lean_dec_ref_known.exit2381:                      ; preds = %bb.bco, %bb.bcn, %bb.bcm, %lean_dec.exit.i3051.1, %bb.bam, %bb.bal, %bb.bak, %lean_dec.exit.i3016.2, %bb.apv, %bb.apu, %bb.apt, %lean_dec.exit.i2858.1, %bb.afq, %bb.afp, %bb.afo, %lean_dec.exit.i2700.3, %bb.un, %bb.um, %bb.ul, %lean_dec.exit.i2542.2, %bb.jt, %bb.js, %bb.jr, %lean_dec.exit.i2377.2, %bb.bcb, %bb.bca, %bb.bbv, %bb.bbu, %lean_dec.exit1973, %lean_alloc_ctor.exit2960, %bb.azu, %bb.azv, %lean_dec.exit1997, %bb.arn, %bb.auu, %bb.auv, %bb.auw, %lean_dec.exit2021, %lean_alloc_ctor.exit2802, %bb.aph, %bb.api, %lean_dec.exit2045, %bb.ahe, %bb.akl, %bb.akm, %bb.akn, %bb.zs, %bb.zr, %bb.zq, %bb.wj, %lean_dec.exit2093, %bb.aev, %bb.aeu, %lean_alloc_ctor.exit2644, %lean_dec.exit2069, %lean_dec.exit2117, %lean_alloc_ctor.exit2482, %bb.tv, %bb.tw, %lean_dec.exit2141, %bb.ll, %bb.os, %bb.ot, %bb.ou, %bb.ed, %bb.ec, %bb.eb, %bb.au, %lean_dec.exit2189, %bb.jc, %bb.jb, %lean_alloc_ctor.exit, %lean_dec.exit2165, %lean_alloc_ctor.exit3056
  %.66 = phi ptr [ %i.ckj, %lean_alloc_ctor.exit3056 ], [ %.01496, %bb.azu ], [ %.01601, %bb.jb ], [ %.01587, %bb.os ], [ %.01574, %bb.tv ], [ %.01549, %bb.aeu ], [ %.01537, %bb.akl ], [ %.01523, %bb.aph ], [ %.01510, %bb.auu ], [ %.01524, %bb.eb ], [ %i.bu, %bb.au ], [ %i.y, %lean_dec.exit2189 ], [ %i.cc, %bb.ed ], [ %i.hk, %bb.ec ], [ %i.jv, %lean_alloc_ctor.exit ], [ %i.hz, %lean_dec.exit2165 ], [ %i.cjr, %bb.bcb ], [ %i.pm, %bb.jc ], [ %i.ta, %bb.ll ], [ %i.re, %lean_dec.exit2141 ], [ %i.ti, %bb.ou ], [ %i.yq, %bb.ot ], [ %i.abb, %lean_alloc_ctor.exit2482 ], [ %i.zf, %lean_dec.exit2117 ], [ %i.kf, %bb.jt ], [ %i.agw, %bb.tw ], [ %.01561, %bb.zq ], [ %i.akr, %bb.wj ], [ %i.aio, %lean_dec.exit2093 ], [ %i.akz, %bb.zs ], [ %i.aqh, %bb.zr ], [ %i.asz, %lean_alloc_ctor.exit2644 ], [ %i.aqw, %lean_dec.exit2069 ], [ %i.abp, %bb.un ], [ %i.ayq, %bb.aev ], [ %i.bce, %bb.ahe ], [ %i.bap, %lean_dec.exit2045 ], [ %i.bcm, %bb.akn ], [ %i.bhu, %bb.akm ], [ %i.bjy, %lean_alloc_ctor.exit2802 ], [ %i.bij, %lean_dec.exit2021 ], [ %i.atj, %bb.afq ], [ %i.bpp, %bb.api ], [ %i.bsw, %bb.arn ], [ %i.bra, %lean_dec.exit1997 ], [ %i.bte, %bb.auw ], [ %i.bym, %bb.auv ], [ %i.cax, %lean_alloc_ctor.exit2960 ], [ %i.bzb, %lean_dec.exit1973 ], [ %i.bki, %bb.apv ], [ %i.cgo, %bb.azv ], [ %i.cbh, %bb.bam ], [ %i.cjl, %bb.bbv ], [ %.01487, %bb.bbu ], [ %.01487, %bb.bca ], [ %i.kf, %lean_dec.exit.i2377.2 ], [ %i.kf, %bb.jr ], [ %i.kf, %bb.js ], [ %i.abp, %lean_dec.exit.i2542.2 ], [ %i.abp, %bb.ul ], [ %i.abp, %bb.um ], [ %i.atj, %lean_dec.exit.i2700.3 ], [ %i.atj, %bb.afo ], [ %i.atj, %bb.afp ], [ %i.bki, %lean_dec.exit.i2858.1 ], [ %i.bki, %bb.apt ], [ %i.bki, %bb.apu ], [ %i.cbh, %lean_dec.exit.i3016.2 ], [ %i.cbh, %bb.bak ], [ %i.cbh, %bb.bal ], [ %i.chv, %lean_dec.exit.i3051.1 ], [ %i.chv, %bb.bcm ], [ %i.chv, %bb.bcn ], [ %i.chv, %bb.bco ]
  ret ptr %.66
}

declare ptr @l_Lean_Meta_mkLambdaFVars(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLambda(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLambdaLoop(ptr noundef nonnull @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLambda___closed__0_value, ptr noundef %0, i8 noundef zeroext 0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @l_Lean_Meta_Sym_etaReduce(ptr noundef %0) #7
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.g = tail call ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLambdaLoop(ptr noundef nonnull @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLambda___closed__0_value, ptr noundef %i.c, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.g, %lean_dec_ref.exit ]
  ret ptr %.0
}

declare ptr @l_Lean_Meta_Sym_etaReduce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLet___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_array_push(ptr noundef %0, ptr noundef %2) #7
  %i.b = tail call ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLet(ptr noundef %i.a, ptr noundef %1, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Sym_Canon_0__Lean_Meta_Sym_Canon_canon_canonLet(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i131 = icmp eq i64 %i.b, 0
  br i1 %.not.i131, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 8
  br i1 %i.g, label %bb.d, label %bb.cy

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 11 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i120 = icmp eq i64 %i.k, 0                ; 3 uses
  br i1 %.not.i120, label %bb.e, label %lean_inc.exit121

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !13

end_hunk_0
