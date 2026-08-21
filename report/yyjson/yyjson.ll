inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_val_write_opts:bb.a
  store i64 %., ptr %i.aqj, align 1
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqj, i64 5
  %.neg.i719 = sext i1 %i.aqm to i64
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 %.neg.i719
  br label %write_str.exit605

bb.fh:                                            ; preds = %get_enc_table_with_flag.exit66
  %i.aqp = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef 8) #33, !inline_history !330 ; 4 uses
  %.not100.i = icmp eq ptr %i.aqp, null
  br i1 %.not100.i, label %bb.fp, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i64 11185913886062, ptr %i.aqp, align 1
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  br label %write_str.exit605

bb.fj:                                            ; preds = %get_enc_table_with_flag.exit66
  %i.aqr = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef 4) #33, !inline_history !330 ; 4 uses
  %.not99.i = icmp eq ptr %i.aqr, null
  br i1 %.not99.i, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store i16 23899, ptr %i.aqr, align 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 2
  br label %write_str.exit605

bb.fl:                                            ; preds = %get_enc_table_with_flag.exit66
  %i.aqt = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef 4) #33, !inline_history !330 ; 4 uses
  %.not.i = icmp eq ptr %i.aqt, null
  br i1 %.not.i, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i16 32123, ptr %i.aqt, align 1
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 2
  br label %write_str.exit605

write_str.exit605:                                ; preds = %bb.en, %bb.em, %bb.ek, %bb.ei, %write_u32_len_1_to_8.exit55.i693, %write_u32_len_5_to_8.exit.i677, %.preheader1325._crit_edge, %bb.bq, %.preheader1309._crit_edge, %bb.dz, %bb.fm, %bb.fk, %bb.fi, %write_bool.exit720, %write_num.exit716, %write_str_noesc.exit92, %bb.j
  %.080.i = phi ptr [ %i.p, %bb.j ], [ %i.x, %write_str_noesc.exit92 ], [ %i.aqt, %bb.fm ], [ %i.adh, %write_num.exit716 ], [ %i.aqj, %write_bool.exit720 ], [ %i.aqp, %bb.fi ], [ %i.aqr, %bb.fk ], [ %i.x, %bb.dz ], [ %i.x, %.preheader1309._crit_edge ], [ %i.x, %bb.bq ], [ %i.x, %.preheader1325._crit_edge ], [ %i.adh, %write_u32_len_5_to_8.exit.i677 ], [ %i.adh, %write_u32_len_1_to_8.exit55.i693 ], [ %i.adh, %bb.ei ], [ %i.adh, %bb.ek ], [ %i.adh, %bb.em ], [ %i.adh, %bb.en ] ; 2 uses
  %.0.i = phi ptr [ %i.q, %bb.j ], [ %i.adg, %write_str_noesc.exit92 ], [ %i.aqu, %bb.fm ], [ %.1.i667, %write_num.exit716 ], [ %i.aqo, %write_bool.exit720 ], [ %i.aqq, %bb.fi ], [ %i.aqs, %bb.fk ], [ %i.aai, %bb.dz ], [ %i.te, %.preheader1309._crit_edge ], [ %i.my, %bb.bq ], [ %i.fu, %.preheader1325._crit_edge ], [ %i.apy, %write_u32_len_5_to_8.exit.i677 ], [ %i.alu, %write_u32_len_1_to_8.exit55.i693 ], [ %i.aeb, %bb.ei ], [ %i.aet, %bb.ek ], [ %i.aft, %bb.em ], [ %i.ahb, %bb.en ] ; 3 uses
  br i1 %.not1303, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %write_str.exit605
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 10, ptr %.0.i, align 1, !tbaa !81
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %write_str.exit605
  %.1.i = phi ptr [ %i.aqv, %bb.fn ], [ %.0.i, %write_str.exit605 ] ; 2 uses
  store i8 0, ptr %.1.i, align 1, !tbaa !81
  br i1 %.not27, label %.cont787, label %.else789

.else789:                                         ; preds = %bb.fo
  %i.aqw = ptrtoint ptr %.1.i to i64
  %i.aqx = ptrtoint ptr %.080.i to i64
  %i.aqy = sub i64 %i.aqw, %i.aqx
  store i64 %i.aqy, ptr %3, align 8, !tbaa !91
  br label %.cont787

.cont787:                                         ; preds = %bb.fo, %.else789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_write_single.exit

bb.fp:                                            ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ee, %bb.k, %bb.i
  br i1 %.not27, label %.cont784, label %.else786

.else786:                                         ; preds = %bb.fp
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont784

.cont784:                                         ; preds = %bb.fp, %.else786
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel802.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

default.unreachable:                              ; preds = %get_enc_table_with_flag.exit66
  unreachable

bb.fq:                                            ; preds = %get_enc_table_with_flag.exit66
  br i1 %.not27, label %.cont790, label %.else792

.else792:                                         ; preds = %bb.fq
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont790

.cont790:                                         ; preds = %bb.fq, %.else792
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel799.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

bb.fr:                                            ; preds = %write_num.exit716
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.adh) #33, !inline_history !330
  br i1 %.not27, label %.cont781, label %.else783

.else783:                                         ; preds = %bb.fr
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont781

.cont781:                                         ; preds = %bb.fr, %.else783
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel805.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

.loopexit:                                        ; preds = %.thread1054, %.thread, %.thread1064, %.thread1074
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.x) #33, !inline_history !330
  br i1 %.not27, label %.cont778, label %.else780

.else780:                                         ; preds = %.loopexit
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont778

.cont778:                                         ; preds = %.loopexit, %.else780
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel808.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_write_single.exit

bb.fs:                                            ; preds = %bb.e
  %i.aqz = and i32 %1, 65
  %.not29 = icmp eq i32 %i.aqz, 0
  %i.ara = and i32 %1, 2
  %.not1291 = icmp eq i32 %i.ara, 0               ; 6 uses
  %i.arb = and i32 %1, 4
  %.not1292 = icmp eq i32 %i.arb, 0               ; 4 uses
  br i1 %.not29, label %bb.ms, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  br i1 %.not1291, label %bb.fv, label %bb.fu, !prof !25

bb.fu:                                            ; preds = %bb.ft
  %enc_table_esc_slash.enc_table_esc.i61 = select i1 %.not1292, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %size_align_up.exit632.i

bb.fv:                                            ; preds = %bb.ft
  %enc_table_cpy_slash.enc_table_cpy.i59 = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %size_align_up.exit632.i

size_align_up.exit632.i:                          ; preds = %bb.fu, %bb.fv
  %.0.i60 = phi ptr [ %enc_table_esc_slash.enc_table_esc.i61, %bb.fu ], [ %enc_table_cpy_slash.enc_table_cpy.i59, %bb.fv ] ; 28 uses
  %i.arc = icmp eq ptr %.0.i60, @enc_table_cpy
  %i.ard = and i32 %1, 32
  %.not1286 = icmp eq i32 %i.ard, 0               ; 4 uses
  %i.are = and i32 %1, 64
  %.not1287 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not1287, i64 4, i64 2, !prof !25 ; 72 uses
  %i.arg = and i32 %1, 128
  %.not1288 = icmp eq i32 %i.arg, 0
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !81
  %i.arj = shl i64 %i.ari, 1
  %i.ark = and i64 %i.arj, -32
  %i.arl = add i64 %i.ark, 64                     ; 3 uses
  %i.arm = tail call ptr %.sroa.0849.0(ptr noundef %.sroa.9.0, i64 noundef %i.arl) #33, !inline_history !346 ; 6 uses
  %.not.i30 = icmp eq ptr %i.arm, null
  br i1 %.not.i30, label %.loopexit1398, label %bb.fw

bb.fw:                                            ; preds = %size_align_up.exit632.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.arl ; 2 uses
  %i.aro = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.arp = and i64 %i.aro, 7
  %i.arq = icmp eq i64 %i.arp, 7                  ; 3 uses
  %i.arr = zext i1 %i.arq to i8
  %i.ars = lshr i64 %i.aro, 8
  %i.art = zext i1 %i.arq to i64
  %i.aru = shl nuw nsw i64 %i.ars, %i.art
  %i.arv = select i1 %i.arq, i8 123, i8 91
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  store i8 %i.arv, ptr %i.arm, align 1, !tbaa !81
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arm, i64 2
  store i8 10, ptr %i.arw, align 1, !tbaa !81
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arz = lshr i32 %1, 28
  br label %.outer1403

.outer1403:                                       ; preds = %.outer1403.backedge, %bb.fw
  %.01041.ph = phi i64 [ %i.aru, %bb.fw ], [ %.01041.ph.be, %.outer1403.backedge ]
  %.01040.ph = phi i8 [ %i.arr, %bb.fw ], [ %.01040.ph.be, %.outer1403.backedge ] ; 3 uses
  %.0565.i.ph = phi ptr [ %i.ary, %bb.fw ], [ %.0565.i.ph.be, %.outer1403.backedge ]
  %.0542.i.ph = phi ptr [ %i.arm, %bb.fw ], [ %.0542.i.ph.be, %.outer1403.backedge ]
  %.0523.i.ph = phi ptr [ %i.arx, %bb.fw ], [ %.0523.i.ph.be, %.outer1403.backedge ]
  %.0504.i.ph = phi ptr [ %i.arn, %bb.fw ], [ %.0504.i.ph.be, %.outer1403.backedge ]
  %.0493.i.ph = phi ptr [ %i.arn, %bb.fw ], [ %.0493.i.ph.be, %.outer1403.backedge ]
  %.0484.i.ph = phi i64 [ %i.arl, %bb.fw ], [ %.0484.i.ph.be, %.outer1403.backedge ]
  %.0482.i.ph = phi i64 [ 1, %bb.fw ], [ %.0482.i.ph.be, %.outer1403.backedge ] ; 33 uses
  %i.asa = zext nneg i8 %.01040.ph to i32         ; 7 uses
  %i.asb = shl i64 %.0482.i.ph, 2                 ; 4 uses
  %i.asc = add i64 %i.asb, 40
  %i.asd = add i64 %i.asb, 16                     ; 4 uses
  %.not.i74923513285 = icmp eq i64 %.0482.i.ph, 0
  %.not.i74123543286 = icmp eq i64 %.0482.i.ph, 0
  %.not.i73724383290 = icmp eq i64 %.0482.i.ph, 0
  %.not.i73324443291 = icmp eq i64 %.0482.i.ph, 0
  %.not.i72924503292 = icmp eq i64 %.0482.i.ph, 0
  %.not.i72224563294 = icmp eq i64 %.0482.i.ph, 0
  %i.ase = add i64 %.0482.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0482.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.asf = icmp ult i64 %i.ase, 7
  %xtraiter5942 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5943.not = icmp eq i64 %xtraiter5942, 0
  %i.asg = icmp ult i64 %i.ase, 7
  %xtraiter5962 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5963.not = icmp eq i64 %xtraiter5962, 0
  %i.ash = icmp ult i64 %i.ase, 7
  %xtraiter5965 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5966.not = icmp eq i64 %xtraiter5965, 0
  %i.asi = icmp ult i64 %i.ase, 7
  %xtraiter5968 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5969.not = icmp eq i64 %xtraiter5968, 0
  %i.asj = icmp ult i64 %i.ase, 7
  %xtraiter5971 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5972.not = icmp eq i64 %xtraiter5971, 0
  %i.ask = icmp ult i64 %i.ase, 7
  br label %bb.fx

bb.fx:                                            ; preds = %.outer1403, %bb.mf
  %.01041 = phi i64 [ %i.ctr, %bb.mf ], [ %.01041.ph, %.outer1403 ] ; 8 uses
  %.0565.i = phi ptr [ %i.ctq, %bb.mf ], [ %.0565.i.ph, %.outer1403 ] ; 9 uses
  %.0542.i = phi ptr [ %.15557.i, %bb.mf ], [ %.0542.i.ph, %.outer1403 ] ; 29 uses
  %.0523.i = phi ptr [ %.16539.i, %bb.mf ], [ %.0523.i.ph, %.outer1403 ] ; 21 uses
  %.0504.i = phi ptr [ %.15519.i, %bb.mf ], [ %.0504.i.ph, %.outer1403 ] ; 14 uses
  %.0493.i = phi ptr [ %.15.i, %bb.mf ], [ %.0493.i.ph, %.outer1403 ] ; 21 uses
  %.0484.i = phi i64 [ %.8492.i, %bb.mf ], [ %.0484.i.ph, %.outer1403 ] ; 28 uses
  %i.asl = load i64, ptr %.0565.i, align 8, !tbaa !79 ; 5 uses
  %i.asm = trunc i64 %i.asl to i8                 ; 2 uses
  %i.asn = and i8 %i.asm, 7                       ; 3 uses
  switch i8 %i.asn, label %bb.ls [
    i8 5, label %bb.fy
    i8 4, label %bb.kq
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.aso = trunc i64 %.01041 to i32               ; 2 uses
  %i.asp = xor i32 %i.aso, -1
  %i.asq = and i32 %i.asa, %i.asp
  %.not593.i = icmp eq i32 %i.asq, 0              ; 2 uses
  %i.asr = and i32 %i.asa, %i.aso
  %.not594.i = icmp ne i32 %i.asr, 0              ; 2 uses
  %i.ass = lshr i64 %i.asl, 8                     ; 7 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.0565.i, i64 8
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !81 ; 7 uses
  %i.asv = ptrtoaddr ptr %i.asu to i64            ; 2 uses
  %i.asw = mul nuw nsw i64 %i.ass, 6
  %i.asx = select i1 %.not594.i, i64 16, i64 %i.asd
  %i.asy = add i64 %i.asx, %i.asw                 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.asy
  %.not595.i = icmp ult ptr %i.asz, %.0493.i
  br i1 %.not595.i, label %bb.fz, label %size_align_up.exit630.i, !prof !25

size_align_up.exit630.i:                          ; preds = %bb.fy
  %i.ata = lshr i64 %.0484.i, 1
  %i.atb = tail call i64 @llvm.umax.i64(i64 %i.ata, i64 %i.asy)
  %i.atc = add i64 %i.atb, 7
  %i.atd = and i64 %i.atc, -8
  %i.ate = add i64 %i.atd, %.0484.i               ; 4 uses
  %i.atf = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.ate) #33, !inline_history !346 ; 6 uses
  %.not596.i = icmp eq ptr %i.atf, null
  br i1 %.not596.i, label %.loopexit1398, label %.thread1088, !prof !8

.thread1088:                                      ; preds = %size_align_up.exit630.i
  %i.atg = ptrtoint ptr %.0504.i to i64
  %i.ath = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.ati = sub i64 %i.atg, %i.ath                 ; 2 uses
  %i.atj = ptrtoint ptr %.0523.i to i64
  %i.atk = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.atl = sub i64 %i.atj, %i.atk
  %i.atm = sub i64 %i.ath, %i.atk
  %i.atn = sub i64 %i.ate, %i.ati
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atn ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ato, ptr nonnull align 1 %i.atp, i64 %i.ati, i1 false)
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atl
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.ate
  br label %bb.fz

bb.fz:                                            ; preds = %.thread1088, %bb.fy
  %.2544.i = phi ptr [ %i.atf, %.thread1088 ], [ %.0542.i, %bb.fy ] ; 2 uses
  %.2525.i = phi ptr [ %i.atq, %.thread1088 ], [ %.0523.i, %bb.fy ] ; 3 uses
  %.2506.i = phi ptr [ %i.atr, %.thread1088 ], [ %.0504.i, %bb.fy ]
  %.2495.i = phi ptr [ %i.ato, %.thread1088 ], [ %.0493.i, %bb.fy ]
  %.1485.i = phi i64 [ %i.ate, %.thread1088 ], [ %.0484.i, %bb.fy ]
  %.not.i7412354 = select i1 %.not594.i, i1 true, i1 %.not.i74123543286
  br i1 %.not.i7412354, label %write_indent.exit742, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.fz
  br i1 %lcmp.mod5943.not, label %select.unfold.prol.loopexit, label %select.unfold.prol

select.unfold.prol:                               ; preds = %select.unfold.preheader, %select.unfold.prol
  %.0.i7402356.prol = phi ptr [ %i.att, %select.unfold.prol ], [ %.2525.i, %select.unfold.preheader ] ; 2 uses
  %.04.i7392355.prol = phi i64 [ %i.ats, %select.unfold.prol ], [ %.0482.i.ph, %select.unfold.preheader ]
  %prol.iter5944 = phi i64 [ %prol.iter5944.next, %select.unfold.prol ], [ 0, %select.unfold.preheader ]
  %i.ats = add i64 %.04.i7392355.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7402356.prol, align 1
  %i.att = getelementptr inbounds nuw i8, ptr %.0.i7402356.prol, i64 %i.arf ; 3 uses
  %prol.iter5944.next = add i64 %prol.iter5944, 1 ; 2 uses
  %prol.iter5944.cmp.not = icmp eq i64 %prol.iter5944.next, %xtraiter5942
  br i1 %prol.iter5944.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !347

select.unfold.prol.loopexit:                      ; preds = %select.unfold.prol, %select.unfold.preheader
  %.lcssa5714.unr = phi ptr [ poison, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  %.0.i7402356.unr = phi ptr [ %.2525.i, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  %.04.i7392355.unr = phi i64 [ %.0482.i.ph, %select.unfold.preheader ], [ %i.ats, %select.unfold.prol ]
  br i1 %i.asg, label %write_indent.exit742, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.prol.loopexit, %select.unfold
  %.0.i7402356 = phi ptr [ %i.auc, %select.unfold ], [ %.0.i7402356.unr, %select.unfold.prol.loopexit ] ; 2 uses
  %.04.i7392355 = phi i64 [ %i.aub, %select.unfold ], [ %.04.i7392355.unr, %select.unfold.prol.loopexit ]
  store i32 538976288, ptr %.0.i7402356, align 1
  %i.atu = getelementptr inbounds nuw i8, ptr %.0.i7402356, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atu, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atv, align 1
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atw, align 1
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atx, align 1
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aty, align 1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atz, align 1
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %i.arf ; 2 uses
  %i.aub = add i64 %.04.i7392355, -8              ; 2 uses
  store i32 538976288, ptr %i.aua, align 1
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.arf ; 2 uses
  %.not.i741.7 = icmp eq i64 %i.aub, 0
  br i1 %.not.i741.7, label %write_indent.exit742, label %select.unfold, !llvm.loop !348

write_indent.exit742:                             ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.fz
  %.0.i740.lcssa = phi ptr [ %.2525.i, %bb.fz ], [ %.lcssa5714.unr, %select.unfold.prol.loopexit ], [ %i.auc, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ih, label %.split.i33, !prof !25

.split.i33:                                       ; preds = %write_indent.exit742
  %i.aud = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.ass ; 4 uses
  store i8 34, ptr %.0.i740.lcssa, align 1, !tbaa !81
  %i.aue = ptrtoint ptr %i.aud to i64             ; 5 uses
  %i.auf = add i64 %i.ass, %i.asv
  br label %bb.ga

bb.ga:                                            ; preds = %bb.hm, %.split.i33
  %.pn.i309 = phi ptr [ %.0.i740.lcssa, %.split.i33 ], [ %.8253.i322, %bb.hm ]
  %.0238.i310 = phi ptr [ %i.asu, %.split.i33 ], [ %i.bby, %bb.hm ] ; 3 uses
  %.0245.i311 = getelementptr inbounds nuw i8, ptr %.pn.i309, i64 1 ; 2 uses
  %i.aug = ptrtoint ptr %.0238.i310 to i64
  %i.auh = sub i64 %i.aue, %i.aug                 ; 2 uses
  %i.aui = icmp sgt i64 %i.auh, 15
  br i1 %i.aui, label %.lr.ph2373, label %.preheader1388

.preheader1388:                                   ; preds = %bb.gq, %bb.ga
  %.pre-phi3208 = phi i64 [ %i.auh, %bb.ga ], [ %i.axo, %bb.gq ]
  %.1246.i312.lcssa = phi ptr [ %.0245.i311, %bb.ga ], [ %i.axl, %bb.gq ] ; 2 uses
  %.1239.i313.lcssa = phi ptr [ %.0238.i310, %bb.ga ], [ %i.axm, %bb.gq ] ; 2 uses
  %i.auj = icmp sgt i64 %.pre-phi3208, 3
  br i1 %i.auj, label %.lr.ph2379, label %.preheader1386

.lr.ph2373:                                       ; preds = %bb.ga, %bb.gq
  %.1239.i3132372 = phi ptr [ %i.axm, %bb.gq ], [ %.0238.i310, %bb.ga ] ; 46 uses
  %.1246.i3122371 = phi ptr [ %i.axl, %bb.gq ], [ %.0245.i311, %bb.ga ] ; 30 uses
  %i.auk = load i8, ptr %.1239.i3132372, align 1, !tbaa !81 ; 2 uses
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !81
  %.not272.i391 = icmp eq i8 %i.aun, 0
  br i1 %.not272.i391, label %bb.gb, label %.preheader1383.preheader, !prof !25

bb.gb:                                            ; preds = %.lr.ph2373
  %i.auo = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 1
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !81
  %.not273.i392 = icmp eq i8 %i.aus, 0
  br i1 %.not273.i392, label %bb.gc, label %.loopexit1390, !prof !25

bb.gc:                                            ; preds = %bb.gb
  %i.aut = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 2
  %i.auu = load i8, ptr %i.aut, align 1, !tbaa !81
  %i.auv = zext i8 %i.auu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !81
  %.not274.i393 = icmp eq i8 %i.aux, 0
  br i1 %.not274.i393, label %bb.gd, label %.loopexit1391, !prof !25

bb.gd:                                            ; preds = %bb.gc
  %i.auy = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 3
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !81
  %i.ava = zext i8 %i.auz to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.i60, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !81
  %.not275.i394 = icmp eq i8 %i.avc, 0
  br i1 %.not275.i394, label %bb.ge, label %.loopexit1392, !prof !25

bb.ge:                                            ; preds = %bb.gd
  %i.avd = getelementptr inbounds nuw i8, ptr %.1239.i3132372, i64 4
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
  %i.avf = zext i8 %i.ave to i64
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
  %i.cqy = tail call i64 @llvm.umax.i64(i64 %i.cqx, i64 %i.cqv)
  %i.cqz = add i64 %i.cqy, 7
  %i.cra = and i64 %i.cqz, -8
  %i.crb = add i64 %i.cra, %.0484.i               ; 4 uses
  %i.crc = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.crb) #33, !inline_history !346 ; 6 uses
  %.not579.i = icmp eq ptr %i.crc, null
  br i1 %.not579.i, label %.loopexit1398, label %.thread1167, !prof !8

.thread1167:                                      ; preds = %size_align_up.exit620.i
  %i.crd = ptrtoint ptr %.0504.i to i64
  %i.cre = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.crf = sub i64 %i.crd, %i.cre                 ; 2 uses
  %i.crg = ptrtoint ptr %.0523.i to i64
  %i.crh = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.cri = sub i64 %i.crg, %i.crh
  %i.crj = sub i64 %i.cre, %i.crh
  %i.crk = sub i64 %i.crb, %i.crf
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crc, i64 %i.crk ; 2 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crc, i64 %i.crj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.crl, ptr nonnull align 1 %i.crm, i64 %i.crf, i1 false)
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crc, i64 %i.cri
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crc, i64 %i.crb
  br label %bb.mc

bb.mc:                                            ; preds = %.thread1167, %bb.mb
  %.12554.i = phi ptr [ %i.crc, %.thread1167 ], [ %.0542.i, %bb.mb ]
  %.13536.i = phi ptr [ %i.crn, %.thread1167 ], [ %.0523.i, %bb.mb ] ; 3 uses
  %.12516.i = phi ptr [ %i.cro, %.thread1167 ], [ %.0504.i, %bb.mb ]
  %.12.i = phi ptr [ %i.crl, %.thread1167 ], [ %.0493.i, %bb.mb ]
  %.6490.i = phi i64 [ %i.crb, %.thread1167 ], [ %.0484.i, %bb.mb ]
  %.not.i7332444 = select i1 %.not577.i, i1 true, i1 %.not.i73324443291
  br i1 %.not.i7332444, label %write_indent.exit734, label %select.unfold1173.preheader

select.unfold1173.preheader:                      ; preds = %bb.mc
  br i1 %lcmp.mod5966.not, label %select.unfold1173.prol.loopexit, label %select.unfold1173.prol

select.unfold1173.prol:                           ; preds = %select.unfold1173.preheader, %select.unfold1173.prol
  %.0.i7322446.prol = phi ptr [ %i.crq, %select.unfold1173.prol ], [ %.13536.i, %select.unfold1173.preheader ] ; 2 uses
  %.04.i7312445.prol = phi i64 [ %i.crp, %select.unfold1173.prol ], [ %.0482.i.ph, %select.unfold1173.preheader ]
  %prol.iter5967 = phi i64 [ %prol.iter5967.next, %select.unfold1173.prol ], [ 0, %select.unfold1173.preheader ]
  %i.crp = add i64 %.04.i7312445.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7322446.prol, align 1
  %i.crq = getelementptr inbounds nuw i8, ptr %.0.i7322446.prol, i64 %i.arf ; 3 uses
  %prol.iter5967.next = add i64 %prol.iter5967, 1 ; 2 uses
  %prol.iter5967.cmp.not = icmp eq i64 %prol.iter5967.next, %xtraiter5965
  br i1 %prol.iter5967.cmp.not, label %select.unfold1173.prol.loopexit, label %select.unfold1173.prol, !llvm.loop !363

select.unfold1173.prol.loopexit:                  ; preds = %select.unfold1173.prol, %select.unfold1173.preheader
  %.lcssa5875.unr = phi ptr [ poison, %select.unfold1173.preheader ], [ %i.crq, %select.unfold1173.prol ]
  %.0.i7322446.unr = phi ptr [ %.13536.i, %select.unfold1173.preheader ], [ %i.crq, %select.unfold1173.prol ]
  %.04.i7312445.unr = phi i64 [ %.0482.i.ph, %select.unfold1173.preheader ], [ %i.crp, %select.unfold1173.prol ]
  br i1 %i.asi, label %write_indent.exit734, label %select.unfold1173

select.unfold1173:                                ; preds = %select.unfold1173.prol.loopexit, %select.unfold1173
  %.0.i7322446 = phi ptr [ %i.crz, %select.unfold1173 ], [ %.0.i7322446.unr, %select.unfold1173.prol.loopexit ] ; 2 uses
  %.04.i7312445 = phi i64 [ %i.cry, %select.unfold1173 ], [ %.04.i7312445.unr, %select.unfold1173.prol.loopexit ]
  store i32 538976288, ptr %.0.i7322446, align 1
  %i.crr = getelementptr inbounds nuw i8, ptr %.0.i7322446, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crr, align 1
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crs, align 1
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crt, align 1
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crt, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cru, align 1
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cru, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crv, align 1
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crw, align 1
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crw, i64 %i.arf ; 2 uses
  %i.cry = add i64 %.04.i7312445, -8              ; 2 uses
  store i32 538976288, ptr %i.crx, align 1
  %i.crz = getelementptr inbounds nuw i8, ptr %i.crx, i64 %i.arf ; 2 uses
  %.not.i733.7 = icmp eq i64 %i.cry, 0
  br i1 %.not.i733.7, label %write_indent.exit734, label %select.unfold1173, !llvm.loop !348

write_indent.exit734:                             ; preds = %select.unfold1173.prol.loopexit, %select.unfold1173, %bb.mc
  %.0.i732.lcssa = phi ptr [ %.13536.i, %bb.mc ], [ %.lcssa5875.unr, %select.unfold1173.prol.loopexit ], [ %i.crz, %select.unfold1173 ] ; 2 uses
  store i64 11185913886062, ptr %.0.i732.lcssa, align 1
  %i.csa = getelementptr inbounds nuw i8, ptr %.0.i732.lcssa, i64 6
  br label %bb.mf

bb.md:                                            ; preds = %bb.ly
  %i.csb = trunc i64 %.01041 to i32
  %i.csc = and i32 %i.asa, %i.csb
  %.not574.i = icmp ne i32 %i.csc, 0              ; 2 uses
  %i.csd = lshr i64 %i.asl, 8                     ; 3 uses
  %i.cse = getelementptr inbounds nuw i8, ptr %.0565.i, i64 8
  %i.csf = load ptr, ptr %i.cse, align 8, !tbaa !81
  %i.csg = add nuw nsw i64 %i.csd, 3
  %i.csh = select i1 %.not574.i, i64 0, i64 %i.asb
  %i.csi = add i64 %i.csg, %i.csh                 ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.csi
  %.not575.i = icmp ult ptr %i.csj, %.0493.i
  br i1 %.not575.i, label %bb.me, label %size_align_up.exit618.i, !prof !25

size_align_up.exit618.i:                          ; preds = %bb.md
  %i.csk = lshr i64 %.0484.i, 1
  %i.csl = tail call i64 @llvm.umax.i64(i64 %i.csk, i64 %i.csi)
  %i.csm = add i64 %i.csl, 7
  %i.csn = and i64 %i.csm, -8
  %i.cso = add i64 %i.csn, %.0484.i               ; 4 uses
  %i.csp = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.cso) #33, !inline_history !346 ; 6 uses
  %.not576.i = icmp eq ptr %i.csp, null
  br i1 %.not576.i, label %.loopexit1398, label %.thread1174, !prof !8

.thread1174:                                      ; preds = %size_align_up.exit618.i
  %i.csq = ptrtoint ptr %.0504.i to i64
  %i.csr = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.css = sub i64 %i.csq, %i.csr                 ; 2 uses
  %i.cst = ptrtoint ptr %.0523.i to i64
  %i.csu = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.csv = sub i64 %i.cst, %i.csu
  %i.csw = sub i64 %i.csr, %i.csu
  %i.csx = sub i64 %i.cso, %i.css
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csp, i64 %i.csx ; 2 uses
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csp, i64 %i.csw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.csy, ptr nonnull align 1 %i.csz, i64 %i.css, i1 false)
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csp, i64 %i.csv
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.csp, i64 %i.cso
  br label %bb.me

bb.me:                                            ; preds = %.thread1174, %bb.md
  %.14556.i = phi ptr [ %i.csp, %.thread1174 ], [ %.0542.i, %bb.md ]
  %.15538.i = phi ptr [ %i.cta, %.thread1174 ], [ %.0523.i, %bb.md ] ; 3 uses
  %.14518.i = phi ptr [ %i.ctb, %.thread1174 ], [ %.0504.i, %bb.md ]
  %.14.i = phi ptr [ %i.csy, %.thread1174 ], [ %.0493.i, %bb.md ]
  %.7491.i = phi i64 [ %i.cso, %.thread1174 ], [ %.0484.i, %bb.md ]
  %.not.i7372438 = select i1 %.not574.i, i1 true, i1 %.not.i73724383290
  br i1 %.not.i7372438, label %write_indent.exit738, label %select.unfold1180.preheader

select.unfold1180.preheader:                      ; preds = %bb.me
  br i1 %lcmp.mod5963.not, label %select.unfold1180.prol.loopexit, label %select.unfold1180.prol

select.unfold1180.prol:                           ; preds = %select.unfold1180.preheader, %select.unfold1180.prol
  %.0.i7362440.prol = phi ptr [ %i.ctd, %select.unfold1180.prol ], [ %.15538.i, %select.unfold1180.preheader ] ; 2 uses
  %.04.i7352439.prol = phi i64 [ %i.ctc, %select.unfold1180.prol ], [ %.0482.i.ph, %select.unfold1180.preheader ]
  %prol.iter5964 = phi i64 [ %prol.iter5964.next, %select.unfold1180.prol ], [ 0, %select.unfold1180.preheader ]
  %i.ctc = add i64 %.04.i7352439.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7362440.prol, align 1
  %i.ctd = getelementptr inbounds nuw i8, ptr %.0.i7362440.prol, i64 %i.arf ; 3 uses
  %prol.iter5964.next = add i64 %prol.iter5964, 1 ; 2 uses
  %prol.iter5964.cmp.not = icmp eq i64 %prol.iter5964.next, %xtraiter5962
  br i1 %prol.iter5964.cmp.not, label %select.unfold1180.prol.loopexit, label %select.unfold1180.prol, !llvm.loop !364

select.unfold1180.prol.loopexit:                  ; preds = %select.unfold1180.prol, %select.unfold1180.preheader
  %.lcssa5874.unr = phi ptr [ poison, %select.unfold1180.preheader ], [ %i.ctd, %select.unfold1180.prol ]
  %.0.i7362440.unr = phi ptr [ %.15538.i, %select.unfold1180.preheader ], [ %i.ctd, %select.unfold1180.prol ]
  %.04.i7352439.unr = phi i64 [ %.0482.i.ph, %select.unfold1180.preheader ], [ %i.ctc, %select.unfold1180.prol ]
  br i1 %i.ash, label %write_indent.exit738, label %select.unfold1180

select.unfold1180:                                ; preds = %select.unfold1180.prol.loopexit, %select.unfold1180
  %.0.i7362440 = phi ptr [ %i.ctm, %select.unfold1180 ], [ %.0.i7362440.unr, %select.unfold1180.prol.loopexit ] ; 2 uses
  %.04.i7352439 = phi i64 [ %i.ctl, %select.unfold1180 ], [ %.04.i7352439.unr, %select.unfold1180.prol.loopexit ]
  store i32 538976288, ptr %.0.i7362440, align 1
  %i.cte = getelementptr inbounds nuw i8, ptr %.0.i7362440, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cte, align 1
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cte, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctf, align 1
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.ctf, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctg, align 1
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cth, align 1
  %i.cti = getelementptr inbounds nuw i8, ptr %i.cth, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cti, align 1
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cti, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctj, align 1
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.ctj, i64 %i.arf ; 2 uses
  %i.ctl = add i64 %.04.i7352439, -8              ; 2 uses
  store i32 538976288, ptr %i.ctk, align 1
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.ctk, i64 %i.arf ; 2 uses
  %.not.i737.7 = icmp eq i64 %i.ctl, 0
  br i1 %.not.i737.7, label %write_indent.exit738, label %select.unfold1180, !llvm.loop !348

write_indent.exit738:                             ; preds = %select.unfold1180.prol.loopexit, %select.unfold1180, %bb.me
  %.0.i736.lcssa = phi ptr [ %.15538.i, %bb.me ], [ %.lcssa5874.unr, %select.unfold1180.prol.loopexit ], [ %i.ctm, %select.unfold1180 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i736.lcssa, ptr align 1 %i.csf, i64 range(i64 0, 72057594037927936) %i.csd, i1 false)
  %i.ctn = getelementptr inbounds nuw i8, ptr %.0.i736.lcssa, i64 %i.csd ; 3 uses
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctn, i64 1
  store i8 44, ptr %i.ctn, align 1, !tbaa !81
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctn, i64 2
  store i8 10, ptr %i.cto, align 1, !tbaa !81
  br label %bb.mf

bb.mf:                                            ; preds = %write_indent.exit738, %write_indent.exit734, %write_indent.exit730, %write_indent.exit, %write_num.exit662.thread, %write_str.exit407
  %.15557.i = phi ptr [ %.2544.i, %write_str.exit407 ], [ %.4546.i, %write_num.exit662.thread ], [ %.6548.i, %write_indent.exit ], [ %.10552.i, %write_indent.exit730 ], [ %.12554.i, %write_indent.exit734 ], [ %.14556.i, %write_indent.exit738 ] ; 2 uses
  %.16539.i = phi ptr [ %i.bxl, %write_str.exit407 ], [ %i.clu, %write_num.exit662.thread ], [ %i.cnn, %write_indent.exit ], [ %i.cqs, %write_indent.exit730 ], [ %i.csa, %write_indent.exit734 ], [ %i.ctp, %write_indent.exit738 ] ; 2 uses
  %.15519.i = phi ptr [ %.2506.i, %write_str.exit407 ], [ %.4508.i, %write_num.exit662.thread ], [ %.6510.i, %write_indent.exit ], [ %.10514.i, %write_indent.exit730 ], [ %.12516.i, %write_indent.exit734 ], [ %.14518.i, %write_indent.exit738 ] ; 2 uses
  %.15.i = phi ptr [ %.2495.i, %write_str.exit407 ], [ %.4497.i, %write_num.exit662.thread ], [ %.6499.i, %write_indent.exit ], [ %.10503.i, %write_indent.exit730 ], [ %.12.i, %write_indent.exit734 ], [ %.14.i, %write_indent.exit738 ] ; 2 uses
  %.8492.i = phi i64 [ %.1485.i, %write_str.exit407 ], [ %.2486.i, %write_num.exit662.thread ], [ %.3487.i, %write_indent.exit ], [ %.5489.i, %write_indent.exit730 ], [ %.6490.i, %write_indent.exit734 ], [ %.7491.i, %write_indent.exit738 ] ; 2 uses
  %i.ctq = getelementptr inbounds nuw i8, ptr %.0565.i, i64 16 ; 2 uses
  %i.ctr = add i64 %.01041, -1                    ; 2 uses
  %i.cts = icmp eq i64 %i.ctr, 0
  br i1 %i.cts, label %.preheader1397.preheader, label %bb.fx, !prof !8

.preheader1397.preheader:                         ; preds = %bb.mf
  %i.ctt = add i64 %.0482.i.ph, -2
  br label %.preheader1397

.preheader1397:                                   ; preds = %.preheader1397.preheader, %bb.mh
  %indvar = phi i64 [ 0, %.preheader1397.preheader ], [ %indvar.next, %bb.mh ] ; 2 uses
  %.1 = phi i8 [ %.01040.ph, %.preheader1397.preheader ], [ %i.cvl, %bb.mh ]
  %.16558.i = phi ptr [ %.15557.i, %.preheader1397.preheader ], [ %.18560.i, %bb.mh ] ; 4 uses
  %.17540.i = phi ptr [ %.16539.i, %.preheader1397.preheader ], [ %i.cvo, %bb.mh ] ; 2 uses
  %.16520.i = phi ptr [ %.15519.i, %.preheader1397.preheader ], [ %.18522.i, %bb.mh ] ; 2 uses
  %.16.i = phi ptr [ %.15.i, %.preheader1397.preheader ], [ %i.cvh, %bb.mh ] ; 3 uses
  %.9.i = phi i64 [ %.8492.i, %.preheader1397.preheader ], [ %.10.i, %bb.mh ] ; 4 uses
  %.1483.i = phi i64 [ %.0482.i.ph, %.preheader1397.preheader ], [ %i.cur, %bb.mh ] ; 2 uses
  %i.ctu = sub i64 %i.ctt, %indvar
  %i.ctv = getelementptr inbounds i8, ptr %.17540.i, i64 -2
  %i.ctw = getelementptr inbounds i8, ptr %.17540.i, i64 -1 ; 3 uses
  store i8 10, ptr %i.ctv, align 1, !tbaa !81
  %i.ctx = shl i64 %.1483.i, 2                    ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctw, i64 %i.ctx
  %.not600.i = icmp ult ptr %i.cty, %.16.i
  br i1 %.not600.i, label %bb.mg, label %size_align_up.exit616.i, !prof !25

size_align_up.exit616.i:                          ; preds = %.preheader1397
  %i.ctz = lshr i64 %.9.i, 1
  %i.cua = tail call i64 @llvm.umax.i64(i64 %i.ctz, i64 %i.ctx)
  %i.cub = add i64 %i.cua, 7
  %i.cuc = and i64 %i.cub, -8
  %i.cud = add i64 %i.cuc, %.9.i                  ; 4 uses
  %i.cue = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.16558.i, i64 noundef %.9.i, i64 noundef %i.cud) #33, !inline_history !346 ; 6 uses
  %.not601.i = icmp eq ptr %i.cue, null
  br i1 %.not601.i, label %.loopexit1398, label %.thread1181, !prof !8

.thread1181:                                      ; preds = %size_align_up.exit616.i
  %i.cuf = ptrtoint ptr %.16520.i to i64
  %i.cug = ptrtoint ptr %.16.i to i64             ; 2 uses
  %i.cuh = sub i64 %i.cuf, %i.cug                 ; 2 uses
  %i.cui = ptrtoint ptr %i.ctw to i64
  %i.cuj = ptrtoint ptr %.16558.i to i64          ; 2 uses
  %i.cuk = sub i64 %i.cui, %i.cuj
  %i.cul = sub i64 %i.cug, %i.cuj
  %i.cum = sub i64 %i.cud, %i.cuh
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cue, i64 %i.cum ; 2 uses
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cue, i64 %i.cul
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cun, ptr nonnull align 1 %i.cuo, i64 %i.cuh, i1 false)
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cue, i64 %i.cuk
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cue, i64 %i.cud
  br label %bb.mg

bb.mg:                                            ; preds = %.thread1181, %.preheader1397
  %.18560.i = phi ptr [ %i.cue, %.thread1181 ], [ %.16558.i, %.preheader1397 ] ; 7 uses
  %.19.i = phi ptr [ %i.cup, %.thread1181 ], [ %i.ctw, %.preheader1397 ] ; 3 uses
  %.18522.i = phi ptr [ %i.cuq, %.thread1181 ], [ %.16520.i, %.preheader1397 ] ; 4 uses
  %.18.i = phi ptr [ %i.cun, %.thread1181 ], [ %.16.i, %.preheader1397 ] ; 5 uses
  %.10.i = phi i64 [ %i.cud, %.thread1181 ], [ %.9.i, %.preheader1397 ] ; 5 uses
  %i.cur = add i64 %.1483.i, -1                   ; 6 uses
  %.not.i7452469 = icmp eq i64 %i.cur, 0
  br i1 %.not.i7452469, label %write_indent.exit746, label %.lr.ph2473.preheader

.lr.ph2473.preheader:                             ; preds = %bb.mg
  %xtraiter5977 = and i64 %i.cur, 7               ; 2 uses
  %lcmp.mod5978.not = icmp eq i64 %xtraiter5977, 0
  br i1 %lcmp.mod5978.not, label %.lr.ph2473.prol.loopexit, label %.lr.ph2473.prol

.lr.ph2473.prol:                                  ; preds = %.lr.ph2473.preheader, %.lr.ph2473.prol
  %.0.i7442471.prol = phi ptr [ %i.cut, %.lr.ph2473.prol ], [ %.19.i, %.lr.ph2473.preheader ] ; 2 uses
  %.04.i7432470.prol = phi i64 [ %i.cus, %.lr.ph2473.prol ], [ %i.cur, %.lr.ph2473.preheader ]
  %prol.iter5979 = phi i64 [ %prol.iter5979.next, %.lr.ph2473.prol ], [ 0, %.lr.ph2473.preheader ]
  %i.cus = add i64 %.04.i7432470.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7442471.prol, align 1
  %i.cut = getelementptr inbounds nuw i8, ptr %.0.i7442471.prol, i64 %i.arf ; 3 uses
  %prol.iter5979.next = add i64 %prol.iter5979, 1 ; 2 uses
  %prol.iter5979.cmp.not = icmp eq i64 %prol.iter5979.next, %xtraiter5977
  br i1 %prol.iter5979.cmp.not, label %.lr.ph2473.prol.loopexit, label %.lr.ph2473.prol, !llvm.loop !365

.lr.ph2473.prol.loopexit:                         ; preds = %.lr.ph2473.prol, %.lr.ph2473.preheader
  %.lcssa5926.unr = phi ptr [ poison, %.lr.ph2473.preheader ], [ %i.cut, %.lr.ph2473.prol ]
  %.0.i7442471.unr = phi ptr [ %.19.i, %.lr.ph2473.preheader ], [ %i.cut, %.lr.ph2473.prol ]
  %.04.i7432470.unr = phi i64 [ %i.cur, %.lr.ph2473.preheader ], [ %i.cus, %.lr.ph2473.prol ]
  %i.cuu = icmp ult i64 %i.ctu, 7
  br i1 %i.cuu, label %write_indent.exit746, label %.lr.ph2473

.lr.ph2473:                                       ; preds = %.lr.ph2473.prol.loopexit, %.lr.ph2473
  %.0.i7442471 = phi ptr [ %i.cvd, %.lr.ph2473 ], [ %.0.i7442471.unr, %.lr.ph2473.prol.loopexit ] ; 2 uses
  %.04.i7432470 = phi i64 [ %i.cvc, %.lr.ph2473 ], [ %.04.i7432470.unr, %.lr.ph2473.prol.loopexit ]
  store i32 538976288, ptr %.0.i7442471, align 1
  %i.cuv = getelementptr inbounds nuw i8, ptr %.0.i7442471, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cuv, align 1
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cuw, align 1
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cux, align 1
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cux, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cuy, align 1
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuy, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cuz, align 1
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cva, align 1
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cva, i64 %i.arf ; 2 uses
  %i.cvc = add i64 %.04.i7432470, -8              ; 2 uses
  store i32 538976288, ptr %i.cvb, align 1
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvb, i64 %i.arf ; 2 uses
  %.not.i745.7 = icmp eq i64 %i.cvc, 0
  br i1 %.not.i745.7, label %write_indent.exit746, label %.lr.ph2473, !llvm.loop !348

write_indent.exit746:                             ; preds = %.lr.ph2473.prol.loopexit, %.lr.ph2473, %bb.mg
  %.0.i744.lcssa = phi ptr [ %.19.i, %bb.mg ], [ %.lcssa5926.unr, %.lr.ph2473.prol.loopexit ], [ %i.cvd, %.lr.ph2473 ] ; 5 uses
  %i.cve = shl nuw nsw i8 %.1, 5
  %i.cvf = add nuw nsw i8 %i.cve, 93
  %i.cvg = getelementptr inbounds nuw i8, ptr %.0.i744.lcssa, i64 1 ; 4 uses
  store i8 %i.cvf, ptr %.0.i744.lcssa, align 1, !tbaa !81
  %.not602.i = icmp ult ptr %.18.i, %.18522.i
  br i1 %.not602.i, label %bb.mh, label %bb.mi, !prof !25

bb.mh:                                            ; preds = %write_indent.exit746
  %i.cvh = getelementptr inbounds nuw i8, ptr %.18.i, i64 8 ; 2 uses
  %i.cvi = load i64, ptr %.18.i, align 8, !tbaa !359 ; 2 uses
  %i.cvj = lshr i64 %i.cvi, 1
  %i.cvk = trunc i64 %i.cvi to i8
  %i.cvl = and i8 %i.cvk, 1                       ; 2 uses
  %i.cvm = add nsw i64 %i.cvj, -1                 ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %.0.i744.lcssa, i64 2
  store i8 44, ptr %i.cvg, align 1, !tbaa !81
  %i.cvo = getelementptr inbounds nuw i8, ptr %.0.i744.lcssa, i64 3 ; 2 uses
  store i8 10, ptr %i.cvn, align 1, !tbaa !81
  %.not603.i = icmp eq i64 %i.cvm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not603.i, label %.preheader1397, label %.outer1403.backedge, !prof !8

bb.mi:                                            ; preds = %write_indent.exit746
  br i1 %.not1288, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.cvp = getelementptr inbounds nuw i8, ptr %.0.i744.lcssa, i64 3
  %.not604.i = icmp ult ptr %i.cvp, %.18.i
  br i1 %.not604.i, label %bb.mk, label %size_align_up.exit.i, !prof !25

size_align_up.exit.i:                             ; preds = %bb.mj
  %i.cvq = lshr i64 %.10.i, 1
  %i.cvr = tail call i64 @llvm.umax.i64(i64 %i.cvq, i64 2)
  %i.cvs = add nuw i64 %i.cvr, 7
  %i.cvt = and i64 %i.cvs, -8
  %i.cvu = add i64 %i.cvt, %.10.i                 ; 2 uses
  %i.cvv = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.18560.i, i64 noundef %.10.i, i64 noundef %i.cvu) #33, !inline_history !346 ; 5 uses
  %.not605.i = icmp eq ptr %i.cvv, null
  br i1 %.not605.i, label %.loopexit1398, label %.thread1187, !prof !8

.thread1187:                                      ; preds = %size_align_up.exit.i
  %i.cvw = ptrtoint ptr %.18522.i to i64
  %i.cvx = ptrtoint ptr %.18.i to i64             ; 2 uses
  %i.cvy = sub i64 %i.cvw, %i.cvx                 ; 2 uses
  %i.cvz = ptrtoint ptr %i.cvg to i64
  %i.cwa = ptrtoint ptr %.18560.i to i64          ; 2 uses
  %i.cwb = sub i64 %i.cvz, %i.cwa
  %i.cwc = sub i64 %i.cvx, %i.cwa
  %i.cwd = sub i64 %i.cvu, %i.cvy
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwd
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cwe, ptr nonnull align 1 %i.cwf, i64 %i.cvy, i1 false)
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cvv, i64 %i.cwb
  br label %bb.mk

bb.mk:                                            ; preds = %.thread1187, %bb.mj
  %.20562.i = phi ptr [ %i.cvv, %.thread1187 ], [ %.18560.i, %bb.mj ]
  %.21.i = phi ptr [ %i.cwg, %.thread1187 ], [ %i.cvg, %bb.mj ] ; 2 uses
  %i.cwh = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 10, ptr %.21.i, align 1, !tbaa !81
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mi
  %.21563.i = phi ptr [ %.20562.i, %bb.mk ], [ %.18560.i, %bb.mi ] ; 2 uses
  %.22.i = phi ptr [ %i.cwh, %bb.mk ], [ %i.cvg, %bb.mi ] ; 2 uses
  store i8 0, ptr %.22.i, align 1, !tbaa !81
  br i1 %.not27, label %.cont772, label %.else774

.else774:                                         ; preds = %bb.ml
  %i.cwi = ptrtoint ptr %.22.i to i64
  %i.cwj = ptrtoint ptr %.21563.i to i64
  %i.cwk = sub i64 %i.cwi, %i.cwj
  store i64 %i.cwk, ptr %3, align 8, !tbaa !91
  br label %.cont772

.cont772:                                         ; preds = %bb.ml, %.else774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_write_single.exit

.loopexit1398:                                    ; preds = %size_align_up.exit624.i, %size_align_up.exit618.i, %size_align_up.exit620.i, %size_align_up.exit622.i, %size_align_up.exit626.i, %size_align_up.exit628.i, %size_align_up.exit630.i, %size_align_up.exit616.i, %size_align_up.exit.i, %size_align_up.exit632.i
  %.22564.i = phi ptr [ %.18560.i, %size_align_up.exit.i ], [ %.16558.i, %size_align_up.exit616.i ], [ null, %size_align_up.exit632.i ], [ %.0542.i, %size_align_up.exit618.i ], [ %.0542.i, %size_align_up.exit630.i ], [ %.0542.i, %size_align_up.exit628.i ], [ %.0542.i, %size_align_up.exit626.i ], [ %.0542.i, %size_align_up.exit622.i ], [ %.0542.i, %size_align_up.exit620.i ], [ %.0542.i, %size_align_up.exit624.i ] ; 2 uses
  br i1 %.not27, label %.cont775, label %.else777

.else777:                                         ; preds = %.loopexit1398
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont775

.cont775:                                         ; preds = %.loopexit1398, %.else777
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel811.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  %.not606.i = icmp eq ptr %.22564.i, null
  br i1 %.not606.i, label %yyjson_write_single.exit, label %bb.mm

bb.mm:                                            ; preds = %.cont775
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22564.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.mn:                                            ; preds = %bb.ly
  br i1 %.not27, label %bb.mo, label %.else765

.else765:                                         ; preds = %bb.mn
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mo

bb.mo:                                            ; preds = %.else765, %bb.mn
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel820.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0542.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.mp:                                            ; preds = %write_num.exit662
  br i1 %.not27, label %bb.mq, label %.else771

.else771:                                         ; preds = %bb.mp
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mq

bb.mq:                                            ; preds = %.else771, %bb.mp
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel814.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4546.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

.loopexit1370:                                    ; preds = %.thread1104, %.thread1094, %.thread1114, %.thread1124
  br i1 %.not27, label %bb.mr, label %.else768

.else768:                                         ; preds = %.loopexit1370
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %bb.mr

bb.mr:                                            ; preds = %.else768, %.loopexit1370
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel817.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2544.i) #33, !inline_history !346
  br label %yyjson_write_single.exit

bb.ms:                                            ; preds = %bb.fs
  br i1 %.not1291, label %bb.mu, label %bb.mt, !prof !25

bb.mt:                                            ; preds = %bb.ms
  %enc_table_esc_slash.enc_table_esc.i = select i1 %.not1292, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %size_align_up.exit469.i

bb.mu:                                            ; preds = %bb.ms
  %enc_table_cpy_slash.enc_table_cpy.i = select i1 %.not1292, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %size_align_up.exit469.i
end_hunk_1
begin_hunk_2_@yyjson_mut_write_opts_impl:bb.a

bb.fi:                                            ; preds = %bb.fh
  store i64 11185913886062, ptr %i.aqp, align 1
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  br label %write_str.exit109.i

bb.fj:                                            ; preds = %get_enc_table_with_flag.exit.i
  %i.aqr = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef 4) #33, !inline_history !376 ; 4 uses
  %.not99.i.i = icmp eq ptr %i.aqr, null
  br i1 %.not99.i.i, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store i16 23899, ptr %i.aqr, align 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 2
  br label %write_str.exit109.i

bb.fl:                                            ; preds = %get_enc_table_with_flag.exit.i
  %i.aqt = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef 4) #33, !inline_history !376 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aqt, null
  br i1 %.not.i.i, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i16 32123, ptr %i.aqt, align 1
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 2
  br label %write_str.exit109.i

write_str.exit109.i:                              ; preds = %bb.en, %bb.em, %bb.ek, %bb.ei, %write_u32_len_1_to_8.exit55.i.i, %write_u32_len_5_to_8.exit.i.i, %bb.bq, %.preheader976._crit_edge, %bb.dz, %.preheader960._crit_edge, %bb.fm, %bb.fk, %bb.fi, %write_bool.exit.i, %write_num.exit.i, %write_str_noesc.exit.i, %bb.j
  %.080.i.i = phi ptr [ %i.p, %bb.j ], [ %i.x, %write_str_noesc.exit.i ], [ %i.aqt, %bb.fm ], [ %i.adh, %write_num.exit.i ], [ %i.aqj, %write_bool.exit.i ], [ %i.aqp, %bb.fi ], [ %i.aqr, %bb.fk ], [ %i.x, %.preheader960._crit_edge ], [ %i.x, %bb.dz ], [ %i.x, %.preheader976._crit_edge ], [ %i.x, %bb.bq ], [ %i.adh, %write_u32_len_5_to_8.exit.i.i ], [ %i.adh, %write_u32_len_1_to_8.exit55.i.i ], [ %i.adh, %bb.ei ], [ %i.adh, %bb.ek ], [ %i.adh, %bb.em ], [ %i.adh, %bb.en ] ; 2 uses
  %.0.i.i = phi ptr [ %i.q, %bb.j ], [ %i.adg, %write_str_noesc.exit.i ], [ %i.aqu, %bb.fm ], [ %.1.i111.i, %write_num.exit.i ], [ %i.aqo, %write_bool.exit.i ], [ %i.aqq, %bb.fi ], [ %i.aqs, %bb.fk ], [ %i.te, %.preheader960._crit_edge ], [ %i.aai, %bb.dz ], [ %i.fu, %.preheader976._crit_edge ], [ %i.my, %bb.bq ], [ %i.apy, %write_u32_len_5_to_8.exit.i.i ], [ %i.alu, %write_u32_len_1_to_8.exit55.i.i ], [ %i.aeb, %bb.ei ], [ %i.aet, %bb.ek ], [ %i.aft, %bb.em ], [ %i.ahb, %bb.en ] ; 3 uses
  br i1 %.not954, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %write_str.exit109.i
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 10, ptr %.0.i.i, align 1, !tbaa !81
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %write_str.exit109.i
  %.1.i.i = phi ptr [ %i.aqv, %bb.fn ], [ %.0.i.i, %write_str.exit109.i ] ; 2 uses
  store i8 0, ptr %.1.i.i, align 1, !tbaa !81
  br i1 %.not29, label %.cont417, label %.else419

.else419:                                         ; preds = %bb.fo
  %i.aqw = ptrtoint ptr %.1.i.i to i64
  %i.aqx = ptrtoint ptr %.080.i.i to i64
  %i.aqy = sub i64 %i.aqw, %i.aqx
  store i64 %i.aqy, ptr %4, align 8, !tbaa !91
  br label %.cont417

.cont417:                                         ; preds = %bb.fo, %.else419
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %spec.store.select, i8 0, i64 16, i1 false)
  br label %yyjson_mut_write_single.exit

bb.fp:                                            ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.fg, %bb.ee, %bb.k, %bb.i
  br i1 %.not29, label %.cont414, label %.else416

.else416:                                         ; preds = %bb.fp
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont414

.cont414:                                         ; preds = %bb.fp, %.else416
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel432.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

default.unreachable:                              ; preds = %get_enc_table_with_flag.exit.i
  unreachable

bb.fq:                                            ; preds = %get_enc_table_with_flag.exit.i
  br i1 %.not29, label %.cont420, label %.else422

.else422:                                         ; preds = %bb.fq
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont420

.cont420:                                         ; preds = %bb.fq, %.else422
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel429.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

bb.fr:                                            ; preds = %write_num.exit.i
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.adh) #33, !inline_history !376
  br i1 %.not29, label %.cont411, label %.else413

.else413:                                         ; preds = %bb.fr
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont411

.cont411:                                         ; preds = %bb.fr, %.else413
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel435.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

.loopexit:                                        ; preds = %.thread705, %.thread, %.thread715, %.thread725
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %i.x) #33, !inline_history !376
  br i1 %.not29, label %.cont408, label %.else410

.else410:                                         ; preds = %.loopexit
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont408

.cont408:                                         ; preds = %.loopexit, %.else410
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel438.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

bb.fs:                                            ; preds = %bb.e
  %i.aqz = and i32 %2, 65
  %.not31 = icmp eq i32 %i.aqz, 0
  %i.ara = and i32 %2, 2
  %.not942 = icmp eq i32 %i.ara, 0                ; 6 uses
  %i.arb = and i32 %2, 4
  %.not943 = icmp eq i32 %i.arb, 0                ; 4 uses
  br i1 %.not31, label %bb.ng, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  br i1 %.not942, label %bb.fv, label %bb.fu, !prof !25

bb.fu:                                            ; preds = %bb.ft
  %enc_table_esc_slash.enc_table_esc.i.i194 = select i1 %.not943, ptr @enc_table_esc, ptr @enc_table_esc_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i33

bb.fv:                                            ; preds = %bb.ft
  %enc_table_cpy_slash.enc_table_cpy.i.i32 = select i1 %.not943, ptr @enc_table_cpy, ptr @enc_table_cpy_slash, !prof !25
  br label %get_enc_table_with_flag.exit.i33

get_enc_table_with_flag.exit.i33:                 ; preds = %bb.fv, %bb.fu
  %.0.i640.i = phi ptr [ %enc_table_esc_slash.enc_table_esc.i.i194, %bb.fu ], [ %enc_table_cpy_slash.enc_table_cpy.i.i32, %bb.fv ] ; 28 uses
  %i.arc = icmp eq ptr %.0.i640.i, @enc_table_cpy
  %i.ard = and i32 %2, 32
  %.not937 = icmp eq i32 %i.ard, 0                ; 4 uses
  %i.are = and i32 %2, 64
  %.not938 = icmp eq i32 %i.are, 0
  %i.arf = select i1 %.not938, i64 4, i64 2, !prof !25 ; 72 uses
  %i.arg = and i32 %2, 128
  %.not939 = icmp eq i32 %i.arg, 0
  %i.arh = shl i64 %1, 5
  %i.ari = add i64 %i.arh, 64                     ; 3 uses
  %i.arj = tail call ptr %.sroa.0486.0(ptr noundef %.sroa.9.0, i64 noundef %i.ari) #33, !inline_history !385 ; 6 uses
  %.not.i = icmp eq ptr %i.arj, null
  br i1 %.not.i, label %.loopexit1049, label %bb.fw

bb.fw:                                            ; preds = %get_enc_table_with_flag.exit.i33
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ari ; 2 uses
  %i.arl = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.arm = and i64 %i.arl, 7
  %i.arn = icmp eq i64 %i.arm, 7                  ; 4 uses
  %i.aro = zext i1 %i.arn to i8
  %i.arp = lshr i64 %i.arl, 8
  %i.arq = zext i1 %i.arn to i64
  %i.arr = shl nuw nsw i64 %i.arp, %i.arq
  %i.ars = select i1 %i.arn, i8 123, i8 91
  %i.art = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  store i8 %i.ars, ptr %i.arj, align 1, !tbaa !81
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arj, i64 2
  store i8 10, ptr %i.art, align 1, !tbaa !81
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !81 ; 2 uses
  br i1 %i.arn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 16
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !85
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.pn.i = phi ptr [ %i.ary, %bb.fx ], [ %i.arw, %bb.fw ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.arz = load ptr, ptr %.in.i, align 8, !tbaa !85
  %i.asa = lshr i32 %2, 28
  br label %.outer1054

.outer1054:                                       ; preds = %.outer1054.backedge, %bb.fy
  %.0689.ph = phi ptr [ %0, %bb.fy ], [ %.0689.ph.be, %.outer1054.backedge ] ; 2 uses
  %.0688.ph = phi i64 [ %i.arr, %bb.fy ], [ %.0688.ph.be, %.outer1054.backedge ]
  %.0687.ph = phi i8 [ %i.aro, %bb.fy ], [ %.0687.ph.be, %.outer1054.backedge ] ; 3 uses
  %.0570.i.ph = phi ptr [ %i.arz, %bb.fy ], [ %.0570.i.ph.be, %.outer1054.backedge ]
  %.0547.i.ph = phi ptr [ %i.arj, %bb.fy ], [ %.0547.i.ph.be, %.outer1054.backedge ]
  %.0528.i.ph = phi ptr [ %i.aru, %bb.fy ], [ %.0528.i.ph.be, %.outer1054.backedge ]
  %.0509.i.ph = phi ptr [ %i.ark, %bb.fy ], [ %.0509.i.ph.be, %.outer1054.backedge ]
  %.0498.i.ph = phi ptr [ %i.ark, %bb.fy ], [ %.0498.i.ph.be, %.outer1054.backedge ]
  %.0489.i.ph = phi i64 [ %i.ari, %bb.fy ], [ %.0489.i.ph.be, %.outer1054.backedge ]
  %.0487.i.ph = phi i64 [ 1, %bb.fy ], [ %.0487.i.ph.be, %.outer1054.backedge ] ; 33 uses
  %i.asb = zext nneg i8 %.0687.ph to i32          ; 7 uses
  %i.asc = shl i64 %.0487.i.ph, 2                 ; 4 uses
  %i.asd = add i64 %i.asc, 40
  %i.ase = add i64 %i.asc, 16                     ; 4 uses
  %.not.i771.i20042944 = icmp eq i64 %.0487.i.ph, 0
  %.not.i775.i20072945 = icmp eq i64 %.0487.i.ph, 0
  %.not.i751.i20912949 = icmp eq i64 %.0487.i.ph, 0
  %.not.i755.i20972950 = icmp eq i64 %.0487.i.ph, 0
  %.not.i759.i21032951 = icmp eq i64 %.0487.i.ph, 0
  %.not.i767.i21092953 = icmp eq i64 %.0487.i.ph, 0
  %i.asf = add i64 %.0487.i.ph, -1                ; 7 uses
  %xtraiter = and i64 %.0487.i.ph, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.asg = icmp ult i64 %i.asf, 7
  %xtraiter5607 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5608.not = icmp eq i64 %xtraiter5607, 0
  %i.ash = icmp ult i64 %i.asf, 7
  %xtraiter5627 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5628.not = icmp eq i64 %xtraiter5627, 0
  %i.asi = icmp ult i64 %i.asf, 7
  %xtraiter5630 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5631.not = icmp eq i64 %xtraiter5630, 0
  %i.asj = icmp ult i64 %i.asf, 7
  %xtraiter5633 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5634.not = icmp eq i64 %xtraiter5633, 0
  %i.ask = icmp ult i64 %i.asf, 7
  %xtraiter5636 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5637.not = icmp eq i64 %xtraiter5636, 0
  %i.asl = icmp ult i64 %i.asf, 7
  br label %bb.fz

bb.fz:                                            ; preds = %.outer1054, %bb.mr
  %.0688 = phi i64 [ %i.ctw, %bb.mr ], [ %.0688.ph, %.outer1054 ] ; 8 uses
  %.0570.i = phi ptr [ %i.cua, %bb.mr ], [ %.0570.i.ph, %.outer1054 ] ; 10 uses
  %.0547.i = phi ptr [ %.15562.i, %bb.mr ], [ %.0547.i.ph, %.outer1054 ] ; 29 uses
  %.0528.i = phi ptr [ %.16544.i, %bb.mr ], [ %.0528.i.ph, %.outer1054 ] ; 21 uses
  %.0509.i = phi ptr [ %.15524.i, %bb.mr ], [ %.0509.i.ph, %.outer1054 ] ; 14 uses
  %.0498.i = phi ptr [ %.15.i, %bb.mr ], [ %.0498.i.ph, %.outer1054 ] ; 21 uses
  %.0489.i = phi i64 [ %.8497.i, %bb.mr ], [ %.0489.i.ph, %.outer1054 ] ; 28 uses
  %i.asm = load i64, ptr %.0570.i, align 8, !tbaa !79 ; 5 uses
  %i.asn = trunc i64 %i.asm to i8                 ; 2 uses
  %i.aso = and i8 %i.asn, 7                       ; 3 uses
  switch i8 %i.aso, label %bb.lw [
    i8 5, label %bb.ga
    i8 4, label %bb.kt
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.asp = trunc i64 %.0688 to i32                ; 2 uses
  %i.asq = xor i32 %i.asp, -1
  %i.asr = and i32 %i.asb, %i.asq
  %.not600.i = icmp eq i32 %i.asr, 0              ; 2 uses
  %i.ass = and i32 %i.asb, %i.asp
  %.not601.i = icmp ne i32 %i.ass, 0              ; 2 uses
  %i.ast = lshr i64 %i.asm, 8                     ; 7 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !81 ; 7 uses
  %i.asw = ptrtoaddr ptr %i.asv to i64            ; 2 uses
  %i.asx = mul nuw nsw i64 %i.ast, 6
  %i.asy = select i1 %.not601.i, i64 16, i64 %i.ase
  %i.asz = add i64 %i.asy, %i.asx                 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.asz
  %.not602.i = icmp ult ptr %i.ata, %.0498.i
  br i1 %.not602.i, label %bb.gc, label %bb.gb, !prof !25

bb.gb:                                            ; preds = %bb.ga
  %i.atb = lshr i64 %.0489.i, 1
  %i.atc = tail call i64 @llvm.umax.i64(i64 %i.atb, i64 %i.asz)
  %i.atd = add i64 %i.atc, 15
  %i.ate = and i64 %i.atd, -16
  %i.atf = add i64 %i.ate, %.0489.i               ; 4 uses
  %i.atg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.atf) #33, !inline_history !385 ; 6 uses
  %.not603.i = icmp eq ptr %i.atg, null
  br i1 %.not603.i, label %.loopexit1049, label %.thread739, !prof !8

.thread739:                                       ; preds = %bb.gb
  %i.ath = ptrtoint ptr %.0509.i to i64
  %i.ati = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.atj = sub i64 %i.ath, %i.ati                 ; 2 uses
  %i.atk = ptrtoint ptr %.0528.i to i64
  %i.atl = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.atm = sub i64 %i.atk, %i.atl
  %i.atn = sub i64 %i.ati, %i.atl
  %i.ato = sub i64 %i.atf, %i.atj
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.ato ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.atp, ptr nonnull align 1 %i.atq, i64 %i.atj, i1 false)
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atm
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atf
  br label %bb.gc

bb.gc:                                            ; preds = %.thread739, %bb.ga
  %.2549.i = phi ptr [ %i.atg, %.thread739 ], [ %.0547.i, %bb.ga ] ; 2 uses
  %.2530.i = phi ptr [ %i.atr, %.thread739 ], [ %.0528.i, %bb.ga ] ; 3 uses
  %.2511.i = phi ptr [ %i.ats, %.thread739 ], [ %.0509.i, %bb.ga ]
  %.2500.i = phi ptr [ %i.atp, %.thread739 ], [ %.0498.i, %bb.ga ]
  %.1490.i = phi i64 [ %i.atf, %.thread739 ], [ %.0489.i, %bb.ga ]
  %.not.i775.i2007 = select i1 %.not601.i, i1 true, i1 %.not.i775.i20072945
  br i1 %.not.i775.i2007, label %write_indent.exit776.i, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %bb.gc
  br i1 %lcmp.mod5608.not, label %select.unfold.prol.loopexit, label %select.unfold.prol

select.unfold.prol:                               ; preds = %select.unfold.preheader, %select.unfold.prol
  %.0.i774.i2009.prol = phi ptr [ %i.atu, %select.unfold.prol ], [ %.2530.i, %select.unfold.preheader ] ; 2 uses
  %.04.i773.i2008.prol = phi i64 [ %i.att, %select.unfold.prol ], [ %.0487.i.ph, %select.unfold.preheader ]
  %prol.iter5609 = phi i64 [ %prol.iter5609.next, %select.unfold.prol ], [ 0, %select.unfold.preheader ]
  %i.att = add i64 %.04.i773.i2008.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i774.i2009.prol, align 1
  %i.atu = getelementptr inbounds nuw i8, ptr %.0.i774.i2009.prol, i64 %i.arf ; 3 uses
  %prol.iter5609.next = add i64 %prol.iter5609, 1 ; 2 uses
  %prol.iter5609.cmp.not = icmp eq i64 %prol.iter5609.next, %xtraiter5607
  br i1 %prol.iter5609.cmp.not, label %select.unfold.prol.loopexit, label %select.unfold.prol, !llvm.loop !386

select.unfold.prol.loopexit:                      ; preds = %select.unfold.prol, %select.unfold.preheader
  %.lcssa5378.unr = phi ptr [ poison, %select.unfold.preheader ], [ %i.atu, %select.unfold.prol ]
  %.0.i774.i2009.unr = phi ptr [ %.2530.i, %select.unfold.preheader ], [ %i.atu, %select.unfold.prol ]
  %.04.i773.i2008.unr = phi i64 [ %.0487.i.ph, %select.unfold.preheader ], [ %i.att, %select.unfold.prol ]
  br i1 %i.ash, label %write_indent.exit776.i, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.prol.loopexit, %select.unfold
  %.0.i774.i2009 = phi ptr [ %i.aud, %select.unfold ], [ %.0.i774.i2009.unr, %select.unfold.prol.loopexit ] ; 2 uses
  %.04.i773.i2008 = phi i64 [ %i.auc, %select.unfold ], [ %.04.i773.i2008.unr, %select.unfold.prol.loopexit ]
  store i32 538976288, ptr %.0.i774.i2009, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %.0.i774.i2009, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atv, align 1
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atw, align 1
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atx, align 1
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aty, align 1
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.atz, align 1
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.aua, align 1
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 %i.arf ; 2 uses
  %i.auc = add i64 %.04.i773.i2008, -8            ; 2 uses
  store i32 538976288, ptr %i.aub, align 1
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.arf ; 2 uses
  %.not.i775.i.7 = icmp eq i64 %i.auc, 0
  br i1 %.not.i775.i.7, label %write_indent.exit776.i, label %select.unfold, !llvm.loop !348

write_indent.exit776.i:                           ; preds = %select.unfold.prol.loopexit, %select.unfold, %bb.gc
  %.0.i774.i.lcssa = phi ptr [ %.2530.i, %bb.gc ], [ %.lcssa5378.unr, %select.unfold.prol.loopexit ], [ %i.aud, %select.unfold ] ; 5 uses
  br i1 %i.arc, label %bb.ik, label %.split.i, !prof !25

.split.i:                                         ; preds = %write_indent.exit776.i
  %i.aue = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.ast ; 4 uses
  store i8 34, ptr %.0.i774.i.lcssa, align 1, !tbaa !81
  %i.auf = ptrtoint ptr %i.aue to i64             ; 5 uses
  %i.aug = add i64 %i.ast, %i.asw
  br label %bb.gd

bb.gd:                                            ; preds = %bb.hp, %.split.i
  %.pn.i646.i = phi ptr [ %.0.i774.i.lcssa, %.split.i ], [ %.8253.i659.i, %bb.hp ]
  %.0238.i647.i = phi ptr [ %i.asv, %.split.i ], [ %i.bbz, %bb.hp ] ; 3 uses
  %.0245.i648.i = getelementptr inbounds nuw i8, ptr %.pn.i646.i, i64 1 ; 2 uses
  %i.auh = ptrtoint ptr %.0238.i647.i to i64
  %i.aui = sub i64 %i.auf, %i.auh                 ; 2 uses
  %i.auj = icmp sgt i64 %i.aui, 15
  br i1 %i.auj, label %.lr.ph2026, label %.preheader1039

.preheader1039:                                   ; preds = %bb.gt, %bb.gd
  %.pre-phi2867 = phi i64 [ %i.aui, %bb.gd ], [ %i.axp, %bb.gt ]
  %.1246.i649.i.lcssa = phi ptr [ %.0245.i648.i, %bb.gd ], [ %i.axm, %bb.gt ] ; 2 uses
  %.1239.i650.i.lcssa = phi ptr [ %.0238.i647.i, %bb.gd ], [ %i.axn, %bb.gt ] ; 2 uses
  %i.auk = icmp sgt i64 %.pre-phi2867, 3
  br i1 %i.auk, label %.lr.ph2032, label %.preheader1037

.lr.ph2026:                                       ; preds = %bb.gd, %bb.gt
  %.1239.i650.i2025 = phi ptr [ %i.axn, %bb.gt ], [ %.0238.i647.i, %bb.gd ] ; 46 uses
  %.1246.i649.i2024 = phi ptr [ %i.axm, %bb.gt ], [ %.0245.i648.i, %bb.gd ] ; 30 uses
  %i.aul = load i8, ptr %.1239.i650.i2025, align 1, !tbaa !81 ; 2 uses
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !81
  %.not272.i728.i = icmp eq i8 %i.auo, 0
  br i1 %.not272.i728.i, label %bb.ge, label %.preheader1034.preheader, !prof !25

bb.ge:                                            ; preds = %.lr.ph2026
  %i.aup = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 1
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !81
  %i.aur = zext i8 %i.auq to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %.not273.i729.i = icmp eq i8 %i.aut, 0
  br i1 %.not273.i729.i, label %bb.gf, label %.loopexit1041, !prof !25

bb.gf:                                            ; preds = %bb.ge
  %i.auu = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 2
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !81
  %i.auw = zext i8 %i.auv to i64
  %i.aux = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !81
  %.not274.i730.i = icmp eq i8 %i.auy, 0
  br i1 %.not274.i730.i, label %bb.gg, label %.loopexit1042, !prof !25

bb.gg:                                            ; preds = %bb.gf
  %i.auz = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 3
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !81
  %.not275.i731.i = icmp eq i8 %i.avd, 0
  br i1 %.not275.i731.i, label %bb.gh, label %.loopexit1043, !prof !25

bb.gh:                                            ; preds = %bb.gg
  %i.ave = getelementptr inbounds nuw i8, ptr %.1239.i650.i2025, i64 4
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !81
  %i.avg = zext i8 %i.avf to i64
end_hunk_2
begin_hunk_3_@yyjson_mut_write_opts_impl:bb.a
  %i.cri = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.crh) #33, !inline_history !385 ; 6 uses
  %.not584.i = icmp eq ptr %i.cri, null
  br i1 %.not584.i, label %.loopexit1049, label %.thread818, !prof !8

.thread818:                                       ; preds = %bb.ml
  %i.crj = ptrtoint ptr %.0509.i to i64
  %i.crk = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.crl = sub i64 %i.crj, %i.crk                 ; 2 uses
  %i.crm = ptrtoint ptr %.0528.i to i64
  %i.crn = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.cro = sub i64 %i.crm, %i.crn
  %i.crp = sub i64 %i.crk, %i.crn
  %i.crq = sub i64 %i.crh, %i.crl
  %i.crr = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.crq ; 2 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.crp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.crr, ptr nonnull align 1 %i.crs, i64 %i.crl, i1 false)
  %i.crt = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.cro
  %i.cru = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.crh
  br label %bb.mm

bb.mm:                                            ; preds = %.thread818, %bb.mk
  %.12559.i = phi ptr [ %i.cri, %.thread818 ], [ %.0547.i, %bb.mk ]
  %.13541.i = phi ptr [ %i.crt, %.thread818 ], [ %.0528.i, %bb.mk ] ; 3 uses
  %.12521.i = phi ptr [ %i.cru, %.thread818 ], [ %.0509.i, %bb.mk ]
  %.12.i = phi ptr [ %i.crr, %.thread818 ], [ %.0498.i, %bb.mk ]
  %.6495.i = phi i64 [ %i.crh, %.thread818 ], [ %.0489.i, %bb.mk ]
  %.not.i755.i2097 = select i1 %.not582.i, i1 true, i1 %.not.i755.i20972950
  br i1 %.not.i755.i2097, label %write_indent.exit756.i, label %select.unfold824.preheader

select.unfold824.preheader:                       ; preds = %bb.mm
  br i1 %lcmp.mod5631.not, label %select.unfold824.prol.loopexit, label %select.unfold824.prol

select.unfold824.prol:                            ; preds = %select.unfold824.preheader, %select.unfold824.prol
  %.0.i754.i2099.prol = phi ptr [ %i.crw, %select.unfold824.prol ], [ %.13541.i, %select.unfold824.preheader ] ; 2 uses
  %.04.i753.i2098.prol = phi i64 [ %i.crv, %select.unfold824.prol ], [ %.0487.i.ph, %select.unfold824.preheader ]
  %prol.iter5632 = phi i64 [ %prol.iter5632.next, %select.unfold824.prol ], [ 0, %select.unfold824.preheader ]
  %i.crv = add i64 %.04.i753.i2098.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i754.i2099.prol, align 1
  %i.crw = getelementptr inbounds nuw i8, ptr %.0.i754.i2099.prol, i64 %i.arf ; 3 uses
  %prol.iter5632.next = add i64 %prol.iter5632, 1 ; 2 uses
  %prol.iter5632.cmp.not = icmp eq i64 %prol.iter5632.next, %xtraiter5630
  br i1 %prol.iter5632.cmp.not, label %select.unfold824.prol.loopexit, label %select.unfold824.prol, !llvm.loop !402

select.unfold824.prol.loopexit:                   ; preds = %select.unfold824.prol, %select.unfold824.preheader
  %.lcssa5539.unr = phi ptr [ poison, %select.unfold824.preheader ], [ %i.crw, %select.unfold824.prol ]
  %.0.i754.i2099.unr = phi ptr [ %.13541.i, %select.unfold824.preheader ], [ %i.crw, %select.unfold824.prol ]
  %.04.i753.i2098.unr = phi i64 [ %.0487.i.ph, %select.unfold824.preheader ], [ %i.crv, %select.unfold824.prol ]
  br i1 %i.asj, label %write_indent.exit756.i, label %select.unfold824

select.unfold824:                                 ; preds = %select.unfold824.prol.loopexit, %select.unfold824
  %.0.i754.i2099 = phi ptr [ %i.csf, %select.unfold824 ], [ %.0.i754.i2099.unr, %select.unfold824.prol.loopexit ] ; 2 uses
  %.04.i753.i2098 = phi i64 [ %i.cse, %select.unfold824 ], [ %.04.i753.i2098.unr, %select.unfold824.prol.loopexit ]
  store i32 538976288, ptr %.0.i754.i2099, align 1
  %i.crx = getelementptr inbounds nuw i8, ptr %.0.i754.i2099, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crx, align 1
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crx, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cry, align 1
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.crz, align 1
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crz, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.csa, align 1
  %i.csb = getelementptr inbounds nuw i8, ptr %i.csa, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.csb, align 1
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.csc, align 1
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csc, i64 %i.arf ; 2 uses
  %i.cse = add i64 %.04.i753.i2098, -8            ; 2 uses
  store i32 538976288, ptr %i.csd, align 1
  %i.csf = getelementptr inbounds nuw i8, ptr %i.csd, i64 %i.arf ; 2 uses
  %.not.i755.i.7 = icmp eq i64 %i.cse, 0
  br i1 %.not.i755.i.7, label %write_indent.exit756.i, label %select.unfold824, !llvm.loop !348

write_indent.exit756.i:                           ; preds = %select.unfold824.prol.loopexit, %select.unfold824, %bb.mm
  %.0.i754.i.lcssa = phi ptr [ %.13541.i, %bb.mm ], [ %.lcssa5539.unr, %select.unfold824.prol.loopexit ], [ %i.csf, %select.unfold824 ] ; 2 uses
  store i64 11185913886062, ptr %.0.i754.i.lcssa, align 1
  %i.csg = getelementptr inbounds nuw i8, ptr %.0.i754.i.lcssa, i64 6
  br label %bb.mq

bb.mn:                                            ; preds = %bb.mg
  %i.csh = trunc i64 %.0688 to i32
  %i.csi = and i32 %i.asb, %i.csh
  %.not579.i = icmp ne i32 %i.csi, 0              ; 2 uses
  %i.csj = lshr i64 %i.asm, 8                     ; 3 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.csl = load ptr, ptr %i.csk, align 8, !tbaa !81
  %i.csm = add nuw nsw i64 %i.csj, 3
  %i.csn = select i1 %.not579.i, i64 0, i64 %i.asc
  %i.cso = add i64 %i.csm, %i.csn                 ; 2 uses
  %i.csp = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.cso
  %.not580.i = icmp ult ptr %i.csp, %.0498.i
  br i1 %.not580.i, label %bb.mp, label %bb.mo, !prof !25

bb.mo:                                            ; preds = %bb.mn
  %i.csq = lshr i64 %.0489.i, 1
  %i.csr = tail call i64 @llvm.umax.i64(i64 %i.csq, i64 %i.cso)
  %i.css = add i64 %i.csr, 15
  %i.cst = and i64 %i.css, -16
  %i.csu = add i64 %i.cst, %.0489.i               ; 4 uses
  %i.csv = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.csu) #33, !inline_history !385 ; 6 uses
  %.not581.i = icmp eq ptr %i.csv, null
  br i1 %.not581.i, label %.loopexit1049, label %.thread825, !prof !8

.thread825:                                       ; preds = %bb.mo
  %i.csw = ptrtoint ptr %.0509.i to i64
  %i.csx = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.csy = sub i64 %i.csw, %i.csx                 ; 2 uses
  %i.csz = ptrtoint ptr %.0528.i to i64
  %i.cta = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.ctb = sub i64 %i.csz, %i.cta
  %i.ctc = sub i64 %i.csx, %i.cta
  %i.ctd = sub i64 %i.csu, %i.csy
  %i.cte = getelementptr inbounds nuw i8, ptr %i.csv, i64 %i.ctd ; 2 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.csv, i64 %i.ctc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cte, ptr nonnull align 1 %i.ctf, i64 %i.csy, i1 false)
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.csv, i64 %i.ctb
  %i.cth = getelementptr inbounds nuw i8, ptr %i.csv, i64 %i.csu
  br label %bb.mp

bb.mp:                                            ; preds = %.thread825, %bb.mn
  %.14561.i = phi ptr [ %i.csv, %.thread825 ], [ %.0547.i, %bb.mn ]
  %.15543.i = phi ptr [ %i.ctg, %.thread825 ], [ %.0528.i, %bb.mn ] ; 3 uses
  %.14523.i = phi ptr [ %i.cth, %.thread825 ], [ %.0509.i, %bb.mn ]
  %.14.i = phi ptr [ %i.cte, %.thread825 ], [ %.0498.i, %bb.mn ]
  %.7496.i = phi i64 [ %i.csu, %.thread825 ], [ %.0489.i, %bb.mn ]
  %.not.i751.i2091 = select i1 %.not579.i, i1 true, i1 %.not.i751.i20912949
  br i1 %.not.i751.i2091, label %write_indent.exit752.i, label %select.unfold831.preheader

select.unfold831.preheader:                       ; preds = %bb.mp
  br i1 %lcmp.mod5628.not, label %select.unfold831.prol.loopexit, label %select.unfold831.prol

select.unfold831.prol:                            ; preds = %select.unfold831.preheader, %select.unfold831.prol
  %.0.i750.i2093.prol = phi ptr [ %i.ctj, %select.unfold831.prol ], [ %.15543.i, %select.unfold831.preheader ] ; 2 uses
  %.04.i749.i2092.prol = phi i64 [ %i.cti, %select.unfold831.prol ], [ %.0487.i.ph, %select.unfold831.preheader ]
  %prol.iter5629 = phi i64 [ %prol.iter5629.next, %select.unfold831.prol ], [ 0, %select.unfold831.preheader ]
  %i.cti = add i64 %.04.i749.i2092.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i750.i2093.prol, align 1
  %i.ctj = getelementptr inbounds nuw i8, ptr %.0.i750.i2093.prol, i64 %i.arf ; 3 uses
  %prol.iter5629.next = add i64 %prol.iter5629, 1 ; 2 uses
  %prol.iter5629.cmp.not = icmp eq i64 %prol.iter5629.next, %xtraiter5627
  br i1 %prol.iter5629.cmp.not, label %select.unfold831.prol.loopexit, label %select.unfold831.prol, !llvm.loop !403

select.unfold831.prol.loopexit:                   ; preds = %select.unfold831.prol, %select.unfold831.preheader
  %.lcssa5538.unr = phi ptr [ poison, %select.unfold831.preheader ], [ %i.ctj, %select.unfold831.prol ]
  %.0.i750.i2093.unr = phi ptr [ %.15543.i, %select.unfold831.preheader ], [ %i.ctj, %select.unfold831.prol ]
  %.04.i749.i2092.unr = phi i64 [ %.0487.i.ph, %select.unfold831.preheader ], [ %i.cti, %select.unfold831.prol ]
  br i1 %i.asi, label %write_indent.exit752.i, label %select.unfold831

select.unfold831:                                 ; preds = %select.unfold831.prol.loopexit, %select.unfold831
  %.0.i750.i2093 = phi ptr [ %i.cts, %select.unfold831 ], [ %.0.i750.i2093.unr, %select.unfold831.prol.loopexit ] ; 2 uses
  %.04.i749.i2092 = phi i64 [ %i.ctr, %select.unfold831 ], [ %.04.i749.i2092.unr, %select.unfold831.prol.loopexit ]
  store i32 538976288, ptr %.0.i750.i2093, align 1
  %i.ctk = getelementptr inbounds nuw i8, ptr %.0.i750.i2093, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctk, align 1
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.ctk, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctl, align 1
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.ctl, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctm, align 1
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctm, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctn, align 1
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctn, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cto, align 1
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.ctp, align 1
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctp, i64 %i.arf ; 2 uses
  %i.ctr = add i64 %.04.i749.i2092, -8            ; 2 uses
  store i32 538976288, ptr %i.ctq, align 1
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctq, i64 %i.arf ; 2 uses
  %.not.i751.i.7 = icmp eq i64 %i.ctr, 0
  br i1 %.not.i751.i.7, label %write_indent.exit752.i, label %select.unfold831, !llvm.loop !348

write_indent.exit752.i:                           ; preds = %select.unfold831.prol.loopexit, %select.unfold831, %bb.mp
  %.0.i750.i.lcssa = phi ptr [ %.15543.i, %bb.mp ], [ %.lcssa5538.unr, %select.unfold831.prol.loopexit ], [ %i.cts, %select.unfold831 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i750.i.lcssa, ptr align 1 %i.csl, i64 range(i64 0, 72057594037927936) %i.csj, i1 false)
  %i.ctt = getelementptr inbounds nuw i8, ptr %.0.i750.i.lcssa, i64 %i.csj ; 3 uses
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctt, i64 1
  store i8 44, ptr %i.ctt, align 1, !tbaa !81
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctt, i64 2
  store i8 10, ptr %i.ctu, align 1, !tbaa !81
  br label %bb.mq

bb.mq:                                            ; preds = %write_indent.exit752.i, %write_indent.exit756.i, %write_indent.exit760.i, %write_indent.exit768.i, %write_num.exit.i37.thread, %write_str.exit744.i
  %.15562.i = phi ptr [ %.2549.i, %write_str.exit744.i ], [ %.4551.i, %write_num.exit.i37.thread ], [ %.6553.i, %write_indent.exit768.i ], [ %.10557.i, %write_indent.exit760.i ], [ %.12559.i, %write_indent.exit756.i ], [ %.14561.i, %write_indent.exit752.i ] ; 2 uses
  %.16544.i = phi ptr [ %i.bxm, %write_str.exit744.i ], [ %i.clv, %write_num.exit.i37.thread ], [ %i.cno, %write_indent.exit768.i ], [ %i.cqy, %write_indent.exit760.i ], [ %i.csg, %write_indent.exit756.i ], [ %i.ctv, %write_indent.exit752.i ] ; 2 uses
  %.15524.i = phi ptr [ %.2511.i, %write_str.exit744.i ], [ %.4513.i, %write_num.exit.i37.thread ], [ %.6515.i, %write_indent.exit768.i ], [ %.10519.i, %write_indent.exit760.i ], [ %.12521.i, %write_indent.exit756.i ], [ %.14523.i, %write_indent.exit752.i ] ; 2 uses
  %.15.i = phi ptr [ %.2500.i, %write_str.exit744.i ], [ %.4502.i, %write_num.exit.i37.thread ], [ %.6504.i, %write_indent.exit768.i ], [ %.10508.i, %write_indent.exit760.i ], [ %.12.i, %write_indent.exit756.i ], [ %.14.i, %write_indent.exit752.i ] ; 2 uses
  %.8497.i = phi i64 [ %.1490.i, %write_str.exit744.i ], [ %.2491.i, %write_num.exit.i37.thread ], [ %.3492.i, %write_indent.exit768.i ], [ %.5494.i, %write_indent.exit760.i ], [ %.6495.i, %write_indent.exit756.i ], [ %.7496.i, %write_indent.exit752.i ] ; 2 uses
  %i.ctw = add i64 %.0688, -1                     ; 2 uses
  %i.ctx = icmp eq i64 %i.ctw, 0
  br i1 %i.ctx, label %.preheader1048.preheader, label %bb.mr, !prof !8

.preheader1048.preheader:                         ; preds = %bb.mq
  %i.cty = add i64 %.0487.i.ph, -2
  br label %.preheader1048

bb.mr:                                            ; preds = %bb.mq
  %i.ctz = getelementptr inbounds nuw i8, ptr %.0570.i, i64 16
  %i.cua = load ptr, ptr %i.ctz, align 8, !tbaa !85
  br label %bb.fz

.preheader1048:                                   ; preds = %.preheader1048.preheader, %bb.mu
  %indvar = phi i64 [ 0, %.preheader1048.preheader ], [ %indvar.next, %bb.mu ] ; 2 uses
  %.1690 = phi ptr [ %.0689.ph, %.preheader1048.preheader ], [ %i.cvw, %bb.mu ]
  %.1 = phi i8 [ %.0687.ph, %.preheader1048.preheader ], [ %i.cvu, %bb.mu ]
  %.16563.i = phi ptr [ %.15562.i, %.preheader1048.preheader ], [ %.18565.i, %bb.mu ] ; 4 uses
  %.17545.i = phi ptr [ %.16544.i, %.preheader1048.preheader ], [ %i.cvz, %bb.mu ] ; 2 uses
  %.16525.i = phi ptr [ %.15524.i, %.preheader1048.preheader ], [ %.18527.i, %bb.mu ] ; 2 uses
  %.16.i = phi ptr [ %.15.i, %.preheader1048.preheader ], [ %i.cvq, %bb.mu ] ; 3 uses
  %.9.i = phi i64 [ %.8497.i, %.preheader1048.preheader ], [ %.10.i, %bb.mu ] ; 4 uses
  %.1488.i = phi i64 [ %.0487.i.ph, %.preheader1048.preheader ], [ %i.cuy, %bb.mu ] ; 2 uses
  %i.cub = sub i64 %i.cty, %indvar
  %i.cuc = getelementptr inbounds i8, ptr %.17545.i, i64 -2
  %i.cud = getelementptr inbounds i8, ptr %.17545.i, i64 -1 ; 3 uses
  store i8 10, ptr %i.cuc, align 1, !tbaa !81
  %i.cue = shl i64 %.1488.i, 2                    ; 2 uses
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.cud, i64 %i.cue
  %.not607.i = icmp ult ptr %i.cuf, %.16.i
  br i1 %.not607.i, label %bb.mt, label %bb.ms, !prof !25

bb.ms:                                            ; preds = %.preheader1048
  %i.cug = lshr i64 %.9.i, 1
  %i.cuh = tail call i64 @llvm.umax.i64(i64 %i.cug, i64 %i.cue)
  %i.cui = add i64 %i.cuh, 15
  %i.cuj = and i64 %i.cui, -16
  %i.cuk = add i64 %i.cuj, %.9.i                  ; 4 uses
  %i.cul = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.16563.i, i64 noundef %.9.i, i64 noundef %i.cuk) #33, !inline_history !385 ; 6 uses
  %.not608.i = icmp eq ptr %i.cul, null
  br i1 %.not608.i, label %.loopexit1049, label %.thread832, !prof !8

.thread832:                                       ; preds = %bb.ms
  %i.cum = ptrtoint ptr %.16525.i to i64
  %i.cun = ptrtoint ptr %.16.i to i64             ; 2 uses
  %i.cuo = sub i64 %i.cum, %i.cun                 ; 2 uses
  %i.cup = ptrtoint ptr %i.cud to i64
  %i.cuq = ptrtoint ptr %.16563.i to i64          ; 2 uses
  %i.cur = sub i64 %i.cup, %i.cuq
  %i.cus = sub i64 %i.cun, %i.cuq
  %i.cut = sub i64 %i.cuk, %i.cuo
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cut ; 2 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cus
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cuu, ptr nonnull align 1 %i.cuv, i64 %i.cuo, i1 false)
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cur
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cuk
  br label %bb.mt

bb.mt:                                            ; preds = %.thread832, %.preheader1048
  %.18565.i = phi ptr [ %i.cul, %.thread832 ], [ %.16563.i, %.preheader1048 ] ; 7 uses
  %.19.i = phi ptr [ %i.cuw, %.thread832 ], [ %i.cud, %.preheader1048 ] ; 3 uses
  %.18527.i = phi ptr [ %i.cux, %.thread832 ], [ %.16525.i, %.preheader1048 ] ; 4 uses
  %.18.i = phi ptr [ %i.cuu, %.thread832 ], [ %.16.i, %.preheader1048 ] ; 6 uses
  %.10.i = phi i64 [ %i.cuk, %.thread832 ], [ %.9.i, %.preheader1048 ] ; 5 uses
  %i.cuy = add i64 %.1488.i, -1                   ; 6 uses
  %.not.i748.i2122 = icmp eq i64 %i.cuy, 0
  br i1 %.not.i748.i2122, label %write_indent.exit.i, label %.lr.ph2126.preheader

.lr.ph2126.preheader:                             ; preds = %bb.mt
  %xtraiter5642 = and i64 %i.cuy, 7               ; 2 uses
  %lcmp.mod5643.not = icmp eq i64 %xtraiter5642, 0
  br i1 %lcmp.mod5643.not, label %.lr.ph2126.prol.loopexit, label %.lr.ph2126.prol

.lr.ph2126.prol:                                  ; preds = %.lr.ph2126.preheader, %.lr.ph2126.prol
  %.0.i747.i2124.prol = phi ptr [ %i.cva, %.lr.ph2126.prol ], [ %.19.i, %.lr.ph2126.preheader ] ; 2 uses
  %.04.i.i2123.prol = phi i64 [ %i.cuz, %.lr.ph2126.prol ], [ %i.cuy, %.lr.ph2126.preheader ]
  %prol.iter5644 = phi i64 [ %prol.iter5644.next, %.lr.ph2126.prol ], [ 0, %.lr.ph2126.preheader ]
  %i.cuz = add i64 %.04.i.i2123.prol, -1          ; 2 uses
  store i32 538976288, ptr %.0.i747.i2124.prol, align 1
  %i.cva = getelementptr inbounds nuw i8, ptr %.0.i747.i2124.prol, i64 %i.arf ; 3 uses
  %prol.iter5644.next = add i64 %prol.iter5644, 1 ; 2 uses
  %prol.iter5644.cmp.not = icmp eq i64 %prol.iter5644.next, %xtraiter5642
  br i1 %prol.iter5644.cmp.not, label %.lr.ph2126.prol.loopexit, label %.lr.ph2126.prol, !llvm.loop !404

.lr.ph2126.prol.loopexit:                         ; preds = %.lr.ph2126.prol, %.lr.ph2126.preheader
  %.lcssa5589.unr = phi ptr [ poison, %.lr.ph2126.preheader ], [ %i.cva, %.lr.ph2126.prol ]
  %.0.i747.i2124.unr = phi ptr [ %.19.i, %.lr.ph2126.preheader ], [ %i.cva, %.lr.ph2126.prol ]
  %.04.i.i2123.unr = phi i64 [ %i.cuy, %.lr.ph2126.preheader ], [ %i.cuz, %.lr.ph2126.prol ]
  %i.cvb = icmp ult i64 %i.cub, 7
  br i1 %i.cvb, label %write_indent.exit.i, label %.lr.ph2126

.lr.ph2126:                                       ; preds = %.lr.ph2126.prol.loopexit, %.lr.ph2126
  %.0.i747.i2124 = phi ptr [ %i.cvk, %.lr.ph2126 ], [ %.0.i747.i2124.unr, %.lr.ph2126.prol.loopexit ] ; 2 uses
  %.04.i.i2123 = phi i64 [ %i.cvj, %.lr.ph2126 ], [ %.04.i.i2123.unr, %.lr.ph2126.prol.loopexit ]
  store i32 538976288, ptr %.0.i747.i2124, align 1
  %i.cvc = getelementptr inbounds nuw i8, ptr %.0.i747.i2124, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cvc, align 1
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvc, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cvd, align 1
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cve, align 1
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cve, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cvf, align 1
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cvg, align 1
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.arf ; 2 uses
  store i32 538976288, ptr %i.cvh, align 1
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvh, i64 %i.arf ; 2 uses
  %i.cvj = add i64 %.04.i.i2123, -8               ; 2 uses
  store i32 538976288, ptr %i.cvi, align 1
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvi, i64 %i.arf ; 2 uses
  %.not.i748.i.7 = icmp eq i64 %i.cvj, 0
  br i1 %.not.i748.i.7, label %write_indent.exit.i, label %.lr.ph2126, !llvm.loop !348

write_indent.exit.i:                              ; preds = %.lr.ph2126.prol.loopexit, %.lr.ph2126, %bb.mt
  %.0.i747.i.lcssa = phi ptr [ %.19.i, %bb.mt ], [ %.lcssa5589.unr, %.lr.ph2126.prol.loopexit ], [ %i.cvk, %.lr.ph2126 ] ; 5 uses
  %i.cvl = shl nuw nsw i8 %.1, 5
  %i.cvm = add nuw nsw i8 %i.cvl, 93
  %i.cvn = getelementptr inbounds nuw i8, ptr %.0.i747.i.lcssa, i64 1 ; 4 uses
  store i8 %i.cvm, ptr %.0.i747.i.lcssa, align 1, !tbaa !81
  %.not609.i = icmp ult ptr %.18.i, %.18527.i
  br i1 %.not609.i, label %bb.mu, label %bb.mv, !prof !25

bb.mu:                                            ; preds = %write_indent.exit.i
  %i.cvo = getelementptr inbounds nuw i8, ptr %.1690, i64 16
  %i.cvp = load ptr, ptr %i.cvo, align 8, !tbaa !85
  %i.cvq = getelementptr inbounds nuw i8, ptr %.18.i, i64 16 ; 2 uses
  %i.cvr = load i64, ptr %.18.i, align 8, !tbaa !397 ; 2 uses
  %i.cvs = lshr i64 %i.cvr, 1
  %i.cvt = trunc i64 %i.cvr to i8
  %i.cvu = and i8 %i.cvt, 1                       ; 2 uses
  %i.cvv = getelementptr inbounds nuw i8, ptr %.18.i, i64 8
  %i.cvw = load ptr, ptr %i.cvv, align 8, !tbaa !399 ; 2 uses
  %i.cvx = add nsw i64 %i.cvs, -1                 ; 2 uses
  %i.cvy = getelementptr inbounds nuw i8, ptr %.0.i747.i.lcssa, i64 2
  store i8 44, ptr %i.cvn, align 1, !tbaa !81
  %i.cvz = getelementptr inbounds nuw i8, ptr %.0.i747.i.lcssa, i64 3 ; 2 uses
  store i8 10, ptr %i.cvy, align 1, !tbaa !81
  %.not610.i = icmp eq i64 %i.cvx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not610.i, label %.preheader1048, label %.outer1054.backedge, !prof !8

bb.mv:                                            ; preds = %write_indent.exit.i
  br i1 %.not939, label %bb.mz, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.cwa = getelementptr inbounds nuw i8, ptr %.0.i747.i.lcssa, i64 3
  %.not611.i = icmp ult ptr %i.cwa, %.18.i
  br i1 %.not611.i, label %bb.my, label %bb.mx, !prof !25

bb.mx:                                            ; preds = %bb.mw
  %i.cwb = lshr i64 %.10.i, 1
  %i.cwc = tail call i64 @llvm.umax.i64(i64 %i.cwb, i64 2)
  %i.cwd = add nuw i64 %i.cwc, 15
  %i.cwe = and i64 %i.cwd, -16
  %i.cwf = add i64 %i.cwe, %.10.i                 ; 2 uses
  %i.cwg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.18565.i, i64 noundef %.10.i, i64 noundef %i.cwf) #33, !inline_history !385 ; 5 uses
  %.not612.i = icmp eq ptr %i.cwg, null
  br i1 %.not612.i, label %.loopexit1049, label %.thread838, !prof !8

.thread838:                                       ; preds = %bb.mx
  %i.cwh = ptrtoint ptr %.18527.i to i64
  %i.cwi = ptrtoint ptr %.18.i to i64             ; 2 uses
  %i.cwj = sub i64 %i.cwh, %i.cwi                 ; 2 uses
  %i.cwk = ptrtoint ptr %i.cvn to i64
  %i.cwl = ptrtoint ptr %.18565.i to i64          ; 2 uses
  %i.cwm = sub i64 %i.cwk, %i.cwl
  %i.cwn = sub i64 %i.cwi, %i.cwl
  %i.cwo = sub i64 %i.cwf, %i.cwj
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwo
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cwp, ptr nonnull align 1 %i.cwq, i64 %i.cwj, i1 false)
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwg, i64 %i.cwm
  br label %bb.my

bb.my:                                            ; preds = %.thread838, %bb.mw
  %.20567.i = phi ptr [ %i.cwg, %.thread838 ], [ %.18565.i, %bb.mw ]
  %.21.i = phi ptr [ %i.cwr, %.thread838 ], [ %i.cvn, %bb.mw ] ; 2 uses
  %i.cws = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 10, ptr %.21.i, align 1, !tbaa !81
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mv
  %.21568.i = phi ptr [ %.20567.i, %bb.my ], [ %.18565.i, %bb.mv ] ; 2 uses
  %.22.i = phi ptr [ %i.cws, %bb.my ], [ %i.cvn, %bb.mv ] ; 2 uses
  store i8 0, ptr %.22.i, align 1, !tbaa !81
  br i1 %.not29, label %.cont402, label %.else404

.else404:                                         ; preds = %bb.mz
  %i.cwt = ptrtoint ptr %.22.i to i64
  %i.cwu = ptrtoint ptr %.21568.i to i64
  %i.cwv = sub i64 %i.cwt, %i.cwu
  store i64 %i.cwv, ptr %4, align 8, !tbaa !91
  br label %.cont402

.cont402:                                         ; preds = %bb.mz, %.else404
  store i32 0, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr null, ptr %spec.store.select.sroa.sel444.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  br label %yyjson_mut_write_single.exit

.loopexit1049:                                    ; preds = %bb.mc, %bb.mo, %bb.ml, %bb.mi, %bb.lz, %bb.ku, %bb.gb, %bb.ms, %bb.mx, %get_enc_table_with_flag.exit.i33
  %.22569.i = phi ptr [ %.18565.i, %bb.mx ], [ %.16563.i, %bb.ms ], [ null, %get_enc_table_with_flag.exit.i33 ], [ %.0547.i, %bb.mo ], [ %.0547.i, %bb.gb ], [ %.0547.i, %bb.ku ], [ %.0547.i, %bb.lz ], [ %.0547.i, %bb.mi ], [ %.0547.i, %bb.ml ], [ %.0547.i, %bb.mc ] ; 2 uses
  br i1 %.not29, label %.cont405, label %.else407

.else407:                                         ; preds = %.loopexit1049
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %.cont405

.cont405:                                         ; preds = %.loopexit1049, %.else407
  store i32 2, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.2, ptr %spec.store.select.sroa.sel441.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  %.not613.i = icmp eq ptr %.22569.i, null
  br i1 %.not613.i, label %yyjson_mut_write_single.exit, label %bb.na

bb.na:                                            ; preds = %.cont405
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.22569.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.nb:                                            ; preds = %bb.mg
  br i1 %.not29, label %bb.nc, label %.else395

.else395:                                         ; preds = %bb.nb
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.nc

bb.nc:                                            ; preds = %.else395, %bb.nb
  store i32 3, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.110, ptr %spec.store.select.sroa.sel453.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.0547.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.nd:                                            ; preds = %write_num.exit.i37
  br i1 %.not29, label %bb.ne, label %.else401

.else401:                                         ; preds = %bb.nd
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.ne

bb.ne:                                            ; preds = %.else401, %bb.nd
  store i32 4, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.111, ptr %spec.store.select.sroa.sel447.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.4551.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

.loopexit1021:                                    ; preds = %.thread755, %.thread745, %.thread765, %.thread775
  br i1 %.not29, label %bb.nf, label %.else398

.else398:                                         ; preds = %.loopexit1021
  store i64 0, ptr %4, align 8, !tbaa !91
  br label %bb.nf

bb.nf:                                            ; preds = %.else398, %.loopexit1021
  store i32 7, ptr %spec.store.select, align 8, !tbaa !329
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v = select i1 %.not28, ptr %6, ptr %5
  %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.76, ptr %spec.store.select.sroa.sel450.v.sroa.sel.v.sroa.sel, align 8, !tbaa !327
  tail call void %.sroa.8.0(ptr noundef %.sroa.9.0, ptr noundef nonnull %.2549.i) #33, !inline_history !385
  br label %yyjson_mut_write_single.exit

bb.ng:                                            ; preds = %bb.fs
  br i1 %.not942, label %bb.ni, label %bb.nh, !prof !25

end_hunk_3
