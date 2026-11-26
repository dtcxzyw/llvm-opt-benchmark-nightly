Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExplicitRC?download=true
inline.NumInlined: 4283
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumUnrolled: 49
begin_hunk_0_@l___private_Lean_Compiler_LCNF_ExplicitRC_0__Lean_Compiler_LCNF_Code_explicitRc:bb.a
  br label %lean_inc.exit1348

lean_inc.exit1348:                                ; preds = %bb.sa, %bb.rz, %bb.ry, %bb.rw
  %.val.i2069 = load i32, ptr %i.ade, align 8, !tbaa !12 ; 4 uses
  %i.adt = icmp eq i32 %.val.i2069, 1
  br i1 %i.adt, label %.preheader.i2071, label %bb.sf

.preheader.i2071:                                 ; preds = %lean_inc.exit1348
  %i.adu = load ptr, ptr %i.adm, align 8, !tbaa !10 ; 4 uses
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = and i64 %i.adv, 1
  %.not.i.i2073 = icmp eq i64 %i.adw, 0
  br i1 %.not.i.i2073, label %bb.sb, label %lean_dec.exit.i2074

bb.sb:                                            ; preds = %.preheader.i2071
  %i.adx = load i32, ptr %i.adu, align 4, !tbaa !12 ; 3 uses
  %i.ady = icmp sgt i32 %i.adx, 1
  br i1 %i.ady, label %bb.sc, label %bb.sd, !prof !13

bb.sc:                                            ; preds = %bb.sb
  %i.adz = add nsw i32 %i.adx, -1
  store i32 %i.adz, ptr %i.adu, align 4, !tbaa !12
  br label %lean_dec.exit.i2074

bb.sd:                                            ; preds = %bb.sb
  %.not.i7.i2077 = icmp eq i32 %i.adx, 0
  br i1 %.not.i7.i2077, label %lean_dec.exit.i2074, label %bb.se

bb.se:                                            ; preds = %bb.sd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.adu) #5
  br label %lean_dec.exit.i2074

lean_dec.exit.i2074:                              ; preds = %bb.se, %bb.sd, %bb.sc, %.preheader.i2071
  tail call void @lean_free_object(ptr noundef nonnull %i.ade) #5
  br label %lean_dec_ref_known.exit2078

bb.sf:                                            ; preds = %lean_inc.exit1348
  %i.aea = icmp sgt i32 %.val.i2069, 1
  br i1 %i.aea, label %bb.sg, label %bb.sh, !prof !13

bb.sg:                                            ; preds = %bb.sf
  %i.aeb = add nsw i32 %.val.i2069, -1
  store i32 %i.aeb, ptr %i.ade, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2078

bb.sh:                                            ; preds = %bb.sf
  %.not.i8.i2070 = icmp eq i32 %.val.i2069, 0
  br i1 %.not.i8.i2070, label %lean_dec_ref_known.exit2078, label %bb.si

bb.si:                                            ; preds = %bb.sh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ade) #5
  br label %lean_dec_ref_known.exit2078

lean_dec_ref_known.exit2078:                      ; preds = %lean_dec.exit.i2074, %bb.sg, %bb.sh, %bb.si
  %i.aec = load atomic i32, ptr @l_Lean_Compiler_LCNF_instInhabitedLiveVars_default___closed__0_once seq_cst, align 4, !tbaa !21
  %i.aed = icmp eq i32 %i.aec, 1
  br i1 %i.aed, label %bb.sj, label %bb.sk, !prof !13

bb.sj:                                            ; preds = %lean_dec_ref_known.exit2078
  %i.aee = load ptr, ptr @l_Lean_Compiler_LCNF_instInhabitedLiveVars_default___closed__0, align 8, !tbaa !10
  br label %lean_nat_lt.exit1694

bb.sk:                                            ; preds = %lean_dec_ref_known.exit2078
  %i.aef = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instInhabitedLiveVars_default___closed__0, ptr noundef nonnull @l_Lean_Compiler_LCNF_instInhabitedLiveVars_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instInhabitedLiveVars_default___closed__0) #5
  br label %lean_nat_lt.exit1694

lean_nat_lt.exit1694:                             ; preds = %bb.sk, %bb.sj
  %.0.i2079 = phi ptr [ %i.aee, %bb.sj ], [ %i.aef, %bb.sk ] ; 2 uses
  %i.aeg = getelementptr i8, ptr %i.adn, i64 8    ; 2 uses
  %.val1725 = load i64, ptr %i.aeg, align 8, !tbaa !15
  %.mask2396 = and i64 %.val1725, 9223372036854775807 ; 2 uses
  %.not2395 = icmp eq i64 %.mask2396, 0
  br i1 %.not2395, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %lean_nat_lt.exit1694
  %i.aeh = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Compiler_LCNF_ExplicitRC_0__Lean_Compiler_LCNF_Code_explicitRc_spec__9(ptr noundef nonnull %i.adn, i64 noundef 0, i64 noundef %.mask2396, ptr noundef %.0.i2079)
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %lean_nat_lt.exit1694
  %.11280 = phi ptr [ %.0.i2079, %lean_nat_lt.exit1694 ], [ %i.aeh, %bb.sl ]
  %i.aei = tail call ptr @lean_st_ref_take(ptr noundef %2) #5 ; 4 uses
  %i.aej = ptrtoint ptr %i.aei to i64
  %i.aek = and i64 %i.aej, 1
  %.not.i1472 = icmp eq i64 %i.aek, 0
  br i1 %.not.i1472, label %bb.sn, label %lean_dec.exit1473

bb.sn:                                            ; preds = %bb.sm
  %i.ael = load i32, ptr %i.aei, align 4, !tbaa !12 ; 3 uses
  %i.aem = icmp sgt i32 %i.ael, 1
  br i1 %i.aem, label %bb.so, label %bb.sp, !prof !13

bb.so:                                            ; preds = %bb.sn
  %i.aen = add nsw i32 %i.ael, -1
  store i32 %i.aen, ptr %i.aei, align 4, !tbaa !12
  br label %lean_dec.exit1473

bb.sp:                                            ; preds = %bb.sn
  %.not.i1561 = icmp eq i32 %i.ael, 0
  br i1 %.not.i1561, label %lean_dec.exit1473, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aei) #5
  br label %lean_dec.exit1473

lean_dec.exit1473:                                ; preds = %bb.sq, %bb.sp, %bb.so, %bb.sm
  %i.aeo = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef %.11280) #5 ; 0 uses
  %i.aep = ptrtoint ptr %i.acu to i64
  %i.aeq = and i64 %i.aep, 1
  %.not.i1345 = icmp eq i64 %i.aeq, 0             ; 3 uses
  br i1 %.not.i1345, label %bb.sr, label %lean_inc.exit1346

bb.sr:                                            ; preds = %lean_dec.exit1473
  %.val.i.i2083 = load i32, ptr %i.acu, align 4, !tbaa !12 ; 3 uses
  %i.aer = icmp sgt i32 %.val.i.i2083, 0
  br i1 %i.aer, label %bb.ss, label %bb.st, !prof !13

bb.ss:                                            ; preds = %bb.sr
  %i.aes = add nuw i32 %.val.i.i2083, 1
  store i32 %i.aes, ptr %i.acu, align 4, !tbaa !12
  br label %lean_inc.exit1346

bb.st:                                            ; preds = %bb.sr
  %.not.i.i2084 = icmp eq i32 %.val.i.i2083, 0
  br i1 %.not.i.i2084, label %lean_inc.exit1346, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.aet = atomicrmw add ptr %i.acu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1346

lean_inc.exit1346:                                ; preds = %bb.su, %bb.st, %bb.ss, %lean_dec.exit1473
  %i.aeu = tail call ptr @l___private_Lean_Compiler_LCNF_ExplicitRC_0__Lean_Compiler_LCNF_useVar___at___00__private_Lean_Compiler_LCNF_ExplicitRC_0__Lean_Compiler_LCNF_useLetValue_spec__0___redArg(ptr noundef %i.acu, ptr noundef %1, ptr noundef %2) ; 9 uses
  %i.aev = ptrtoint ptr %i.aeu to i64             ; 2 uses
  %i.aew = and i64 %i.aev, 1
  %.not.i2086 = icmp eq i64 %i.aew, 0             ; 2 uses
  br i1 %.not.i2086, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %lean_inc.exit1346
  %i.aex = lshr i64 %i.aev, 1
  %i.aey = trunc i64 %i.aex to i32
  br label %lean_obj_tag.exit2089

bb.sw:                                            ; preds = %lean_inc.exit1346
  %i.aez = getelementptr i8, ptr %i.aeu, i64 4
  %.val.i2088 = load i32, ptr %i.aez, align 4
  %i.afa = lshr i32 %.val.i2088, 24
  br label %lean_obj_tag.exit2089

lean_obj_tag.exit2089:                            ; preds = %bb.sv, %bb.sw
  %.0.i2087 = phi i32 [ %i.aey, %bb.sv ], [ %i.afa, %bb.sw ]
  %i.afb = icmp eq i32 %.0.i2087, 0
  br i1 %i.afb, label %bb.sx, label %bb.vf

bb.sx:                                            ; preds = %lean_obj_tag.exit2089
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aeu, i32 noundef 1)
  %.val1721 = load i64, ptr %i.aeg, align 8, !tbaa !15
  br i1 %.not.i1345, label %bb.sy, label %lean_inc.exit1344

bb.sy:                                            ; preds = %bb.sx
  %.val.i.i2090 = load i32, ptr %i.acu, align 4, !tbaa !12 ; 3 uses
  %i.afc = icmp sgt i32 %.val.i.i2090, 0
  br i1 %i.afc, label %bb.sz, label %bb.ta, !prof !13

bb.sz:                                            ; preds = %bb.sy
  %i.afd = add nuw i32 %.val.i.i2090, 1
  store i32 %i.afd, ptr %i.acu, align 4, !tbaa !12
  br label %lean_inc.exit1344

bb.ta:                                            ; preds = %bb.sy
  %.not.i.i2091 = icmp eq i32 %.val.i.i2090, 0
  br i1 %.not.i.i2091, label %lean_inc.exit1344, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.afe = atomicrmw add ptr %i.acu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1344

lean_inc.exit1344:                                ; preds = %bb.tb, %bb.ta, %bb.sz, %bb.sx
  %i.aff = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_Compiler_LCNF_ExplicitRC_0__Lean_Compiler_LCNF_Code_explicitRc_spec__8(ptr noundef %i.acu, i64 noundef %.val1721, i64 noundef 0, ptr noundef nonnull %i.adn, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr poison, ptr poison) ; 14 uses
  %i.afg = ptrtoint ptr %i.aff to i64             ; 2 uses
  %i.afh = and i64 %i.afg, 1
  %.not.i2093 = icmp eq i64 %i.afh, 0             ; 3 uses
  br i1 %.not.i2093, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %lean_inc.exit1344
  %i.afi = lshr i64 %i.afg, 1
  %i.afj = trunc i64 %i.afi to i32
  br label %lean_obj_tag.exit2096

bb.td:                                            ; preds = %lean_inc.exit1344
  %i.afk = getelementptr i8, ptr %i.aff, i64 4
  %.val.i2095 = load i32, ptr %i.afk, align 4
  %i.afl = lshr i32 %.val.i2095, 24
  br label %lean_obj_tag.exit2096

lean_obj_tag.exit2096:                            ; preds = %bb.tc, %bb.td
  %.0.i2094 = phi i32 [ %i.afj, %bb.tc ], [ %i.afl, %bb.td ]
  %i.afm = icmp eq i32 %.0.i2094, 0
  br i1 %i.afm, label %bb.te, label %bb.uu

bb.te:                                            ; preds = %lean_obj_tag.exit2096
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !10 ; 9 uses
  %.val1714 = load i32, ptr %i.aff, align 8, !tbaa !12
  %i.afp = icmp eq i32 %.val1714, 1               ; 3 uses
  br i1 %i.afp, label %lean_dec.exit1471, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.afq = ptrtoint ptr %i.afo to i64
  %i.afr = and i64 %i.afq, 1
  %.not.i1341 = icmp eq i64 %i.afr, 0
  br i1 %.not.i1341, label %bb.tg, label %lean_inc.exit1342

bb.tg:                                            ; preds = %bb.tf
  %.val.i.i2097 = load i32, ptr %i.afo, align 4, !tbaa !12 ; 3 uses
  %i.afs = icmp sgt i32 %.val.i.i2097, 0
  br i1 %i.afs, label %bb.th, label %bb.ti, !prof !13

bb.th:                                            ; preds = %bb.tg
  %i.aft = add nuw i32 %.val.i.i2097, 1
  store i32 %i.aft, ptr %i.afo, align 4, !tbaa !12
  br label %lean_inc.exit1342

bb.ti:                                            ; preds = %bb.tg
  %.not.i.i2098 = icmp eq i32 %.val.i.i2097, 0
  br i1 %.not.i.i2098, label %lean_inc.exit1342, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.afu = atomicrmw add ptr %i.afo, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1342

lean_inc.exit1342:                                ; preds = %bb.tj, %bb.ti, %bb.th, %bb.tf
  br i1 %.not.i2093, label %bb.tk, label %lean_dec.exit1471

bb.tk:                                            ; preds = %lean_inc.exit1342
  %i.afv = load i32, ptr %i.aff, align 8, !tbaa !12 ; 3 uses
  %i.afw = icmp sgt i32 %i.afv, 1
  br i1 %i.afw, label %bb.tl, label %bb.tm, !prof !13

bb.tl:                                            ; preds = %bb.tk
  %i.afx = add nsw i32 %i.afv, -1
  store i32 %i.afx, ptr %i.aff, align 8, !tbaa !12
  br label %lean_dec.exit1471

bb.tm:                                            ; preds = %bb.tk
  %.not.i1563 = icmp eq i32 %i.afv, 0
  br i1 %.not.i1563, label %lean_dec.exit1471, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aff) #5
  br label %lean_dec.exit1471

lean_dec.exit1471:                                ; preds = %lean_inc.exit1342, %bb.tl, %bb.tm, %bb.tn, %bb.te
  %.01278 = phi ptr [ %i.aff, %bb.te ], [ inttoptr (i64 1 to ptr), %bb.tn ], [ inttoptr (i64 1 to ptr), %bb.tm ], [ inttoptr (i64 1 to ptr), %bb.tl ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1342 ] ; 4 uses
  %.not2397 = icmp eq ptr %i.acw, %i.afo
  br i1 %.not2397, label %bb.uo, label %bb.to

bb.to:                                            ; preds = %lean_dec.exit1471
  br i1 %.not.i1345, label %bb.tp, label %lean_inc.exit1340

bb.tp:                                            ; preds = %bb.to
  %.val.i.i2100 = load i32, ptr %i.acu, align 4, !tbaa !12 ; 3 uses
  %i.afy = icmp sgt i32 %.val.i.i2100, 0
  br i1 %i.afy, label %bb.tq, label %bb.tr, !prof !13

bb.tq:                                            ; preds = %bb.tp
  %i.afz = add nuw i32 %.val.i.i2100, 1
  store i32 %i.afz, ptr %i.acu, align 4, !tbaa !12
  br label %lean_inc.exit1340

bb.tr:                                            ; preds = %bb.tp
  %.not.i.i2101 = icmp eq i32 %.val.i.i2100, 0
  br i1 %.not.i.i2101, label %lean_inc.exit1340, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.aga = atomicrmw add ptr %i.acu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1340

lean_inc.exit1340:                                ; preds = %bb.ts, %bb.tr, %bb.tq, %bb.to
  %.val.i.i2103 = load i32, ptr %i.acs, align 4, !tbaa !12 ; 3 uses
  %i.agb = icmp sgt i32 %.val.i.i2103, 0
  br i1 %i.agb, label %bb.tt, label %bb.tu, !prof !13

bb.tt:                                            ; preds = %lean_inc.exit1340
  %i.agc = add nuw i32 %.val.i.i2103, 1
  store i32 %i.agc, ptr %i.acs, align 4, !tbaa !12
  br label %lean_inc_ref.exit2105

bb.tu:                                            ; preds = %lean_inc.exit1340
  %.not.i.i2104 = icmp eq i32 %.val.i.i2103, 0
  br i1 %.not.i.i2104, label %lean_inc_ref.exit2105, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.agd = atomicrmw add ptr %i.acs, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2105

lean_inc_ref.exit2105:                            ; preds = %bb.tt, %bb.tu, %bb.tv
  %i.age = ptrtoint ptr %i.acq to i64
  %i.agf = and i64 %i.age, 1
  %.not.i1337 = icmp eq i64 %i.agf, 0
  br i1 %.not.i1337, label %bb.tw, label %lean_inc.exit1338

bb.tw:                                            ; preds = %lean_inc_ref.exit2105
  %.val.i.i2106 = load i32, ptr %i.acq, align 4, !tbaa !12 ; 3 uses
  %i.agg = icmp sgt i32 %.val.i.i2106, 0
  br i1 %i.agg, label %bb.tx, label %bb.ty, !prof !13

bb.tx:                                            ; preds = %bb.tw
  %i.agh = add nuw i32 %.val.i.i2106, 1
  store i32 %i.agh, ptr %i.acq, align 4, !tbaa !12
  br label %lean_inc.exit1338

bb.ty:                                            ; preds = %bb.tw
  %.not.i.i2107 = icmp eq i32 %.val.i.i2106, 0
  br i1 %.not.i.i2107, label %lean_inc.exit1338, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.agi = atomicrmw add ptr %i.acq, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1338

lean_inc.exit1338:                                ; preds = %bb.tz, %bb.ty, %bb.tx, %lean_inc_ref.exit2105
  %.val1713 = load i32, ptr %0, align 8, !tbaa !12 ; 4 uses
  %i.agj = icmp eq i32 %.val1713, 1               ; 2 uses
  br i1 %i.agj, label %bb.ua, label %bb.uf

bb.ua:                                            ; preds = %lean_inc.exit1338
  %i.agk = load ptr, ptr %i.acn, align 8, !tbaa !10 ; 4 uses
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = and i64 %i.agl, 1
  %.not.i1468 = icmp eq i64 %i.agm, 0
  br i1 %.not.i1468, label %bb.ub, label %lean_dec.exit1469

bb.ub:                                            ; preds = %bb.ua
  %i.agn = load i32, ptr %i.agk, align 4, !tbaa !12 ; 3 uses
  %i.ago = icmp sgt i32 %i.agn, 1
  br i1 %i.ago, label %bb.uc, label %bb.ud, !prof !13

bb.uc:                                            ; preds = %bb.ub
  %i.agp = add nsw i32 %i.agn, -1
  store i32 %i.agp, ptr %i.agk, align 4, !tbaa !12
  br label %lean_dec.exit1469

bb.ud:                                            ; preds = %bb.ub
  %.not.i1565 = icmp eq i32 %i.agn, 0
  br i1 %.not.i1565, label %lean_dec.exit1469, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.agk) #5
  br label %lean_dec.exit1469

bb.uf:                                            ; preds = %lean_inc.exit1338
  br i1 %.not.i1727, label %bb.ug, label %lean_dec.exit1469

bb.ug:                                            ; preds = %bb.uf
  %i.agq = icmp sgt i32 %.val1713, 1
  br i1 %i.agq, label %bb.uh, label %bb.ui, !prof !13

bb.uh:                                            ; preds = %bb.ug
  %i.agr = add nsw i32 %.val1713, -1
  store i32 %i.agr, ptr %0, align 8, !tbaa !12
  br label %lean_dec.exit1469

bb.ui:                                            ; preds = %bb.ug
  %.not.i1567 = icmp eq i32 %.val1713, 0
  br i1 %.not.i1567, label %lean_dec.exit1469, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit1469

lean_dec.exit1469:                                ; preds = %bb.uf, %bb.uh, %bb.ui, %bb.uj, %bb.ua, %bb.uc, %bb.ud, %bb.ue
  %.01276 = phi ptr [ %0, %bb.ua ], [ %0, %bb.ue ], [ %0, %bb.ud ], [ %0, %bb.uc ], [ inttoptr (i64 1 to ptr), %bb.uj ], [ inttoptr (i64 1 to ptr), %bb.ui ], [ inttoptr (i64 1 to ptr), %bb.uh ], [ inttoptr (i64 1 to ptr), %bb.uf ]
  %i.ags = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  store ptr %i.acq, ptr %i.agt, align 8, !tbaa !10
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  store ptr %i.acs, ptr %i.agu, align 8, !tbaa !10
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  store ptr %i.acu, ptr %i.agv, align 8, !tbaa !10
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ags, i64 32
  store ptr %i.afo, ptr %i.agw, align 8, !tbaa !10
  br i1 %i.agj, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %lean_dec.exit1469
  %i.agx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 4, i32 noundef 1, i32 noundef 0)
  br label %bb.ul

bb.ul:                                            ; preds = %lean_dec.exit1469, %bb.uk
  %.sink2667 = phi ptr [ %i.agx, %bb.uk ], [ %.01276, %lean_dec.exit1469 ] ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.sink2667, i64 8
  store ptr %i.ags, ptr %i.agy, align 8, !tbaa !10
  br i1 %i.afp, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.agz = getelementptr inbounds nuw i8, ptr %.01278, i64 8
  store ptr %.sink2667, ptr %i.agz, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1778

bb.un:                                            ; preds = %bb.ul
  %i.aha = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %.sink2667, ptr %i.ahb, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1778

bb.uo:                                            ; preds = %lean_dec.exit1471
  %i.ahc = load i32, ptr %i.afo, align 4, !tbaa !12 ; 3 uses
  %i.ahd = icmp sgt i32 %i.ahc, 1
  br i1 %i.ahd, label %bb.up, label %bb.uq, !prof !13

bb.up:                                            ; preds = %bb.uo
  %i.ahe = add nsw i32 %i.ahc, -1
  store i32 %i.ahe, ptr %i.afo, align 4, !tbaa !12
  br label %lean_dec.exit1465

bb.uq:                                            ; preds = %bb.uo
  %.not.i1569 = icmp eq i32 %i.ahc, 0
  br i1 %.not.i1569, label %lean_dec.exit1465, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.afo) #5
  br label %lean_dec.exit1465

lean_dec.exit1465:                                ; preds = %bb.ur, %bb.uq, %bb.up
  br i1 %i.afp, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %lean_dec.exit1465
  %i.ahf = getelementptr inbounds nuw i8, ptr %.01278, i64 8
  store ptr %0, ptr %i.ahf, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1778

bb.ut:                                            ; preds = %lean_dec.exit1465
  %i.ahg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  store ptr %0, ptr %i.ahh, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1778

bb.uu:                                            ; preds = %lean_obj_tag.exit2096
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 1)
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !10 ; 5 uses
  %.val1712 = load i32, ptr %i.aff, align 8, !tbaa !12
  %i.ahk = icmp eq i32 %.val1712, 1
  br i1 %i.ahk, label %lean_dec_ref_known.exit1778, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = and i64 %i.ahl, 1
  %.not.i1335 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i1335, label %bb.uw, label %lean_inc.exit1336

bb.uw:                                            ; preds = %bb.uv
  %.val.i.i2109 = load i32, ptr %i.ahj, align 4, !tbaa !12 ; 3 uses
  %i.ahn = icmp sgt i32 %.val.i.i2109, 0
  br i1 %i.ahn, label %bb.ux, label %bb.uy, !prof !13

bb.ux:                                            ; preds = %bb.uw
  %i.aho = add nuw i32 %.val.i.i2109, 1
  store i32 %i.aho, ptr %i.ahj, align 4, !tbaa !12
  br label %lean_inc.exit1336

bb.uy:                                            ; preds = %bb.uw
  %.not.i.i2110 = icmp eq i32 %.val.i.i2109, 0
  br i1 %.not.i.i2110, label %lean_inc.exit1336, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  %i.ahp = atomicrmw add ptr %i.ahj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1336

lean_inc.exit1336:                                ; preds = %bb.uz, %bb.uy, %bb.ux, %bb.uv
  br i1 %.not.i2093, label %bb.va, label %bb.ve

bb.va:                                            ; preds = %lean_inc.exit1336
  %i.ahq = load i32, ptr %i.aff, align 8, !tbaa !12 ; 3 uses
  %i.ahr = icmp sgt i32 %i.ahq, 1
  br i1 %i.ahr, label %bb.vb, label %bb.vc, !prof !13

bb.vb:                                            ; preds = %bb.va
  %i.ahs = add nsw i32 %i.ahq, -1
  store i32 %i.ahs, ptr %i.aff, align 8, !tbaa !12
  br label %bb.ve

bb.vc:                                            ; preds = %bb.va
  %.not.i1571 = icmp eq i32 %i.ahq, 0
  br i1 %.not.i1571, label %bb.ve, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aff) #5
  br label %bb.ve

bb.ve:                                            ; preds = %lean_inc.exit1336, %bb.vb, %bb.vc, %bb.vd
  %i.aht = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  store ptr %i.ahj, ptr %i.ahu, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1778

bb.vf:                                            ; preds = %lean_obj_tag.exit2089
  br i1 %.not.i1347, label %bb.vg, label %lean_dec.exit1461

bb.vg:                                            ; preds = %bb.vf
  %i.ahv = load i32, ptr %i.adn, align 8, !tbaa !12 ; 3 uses
  %i.ahw = icmp sgt i32 %i.ahv, 1
  br i1 %i.ahw, label %bb.vh, label %bb.vi, !prof !13

bb.vh:                                            ; preds = %bb.vg
  %i.ahx = add nsw i32 %i.ahv, -1
  store i32 %i.ahx, ptr %i.adn, align 8, !tbaa !12
  br label %lean_dec.exit1461

bb.vi:                                            ; preds = %bb.vg
  %.not.i1573 = icmp eq i32 %i.ahv, 0
  br i1 %.not.i1573, label %lean_dec.exit1461, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.adn) #5
  br label %lean_dec.exit1461

lean_dec.exit1461:                                ; preds = %bb.vj, %bb.vi, %bb.vh, %bb.vf
  %.val.i2112 = load i32, ptr %0, align 8, !tbaa !12 ; 4 uses
  %i.ahy = icmp eq i32 %.val.i2112, 1
  br i1 %i.ahy, label %.preheader.i2114, label %bb.vo

.preheader.i2114:                                 ; preds = %lean_dec.exit1461
  %i.ahz = load ptr, ptr %i.acn, align 8, !tbaa !10 ; 4 uses
  %i.aia = ptrtoint ptr %i.ahz to i64
  %i.aib = and i64 %i.aia, 1
  %.not.i.i2116 = icmp eq i64 %i.aib, 0
  br i1 %.not.i.i2116, label %bb.vk, label %lean_dec.exit.i2117

bb.vk:                                            ; preds = %.preheader.i2114
  %i.aic = load i32, ptr %i.ahz, align 4, !tbaa !12 ; 3 uses
  %i.aid = icmp sgt i32 %i.aic, 1
  br i1 %i.aid, label %bb.vl, label %bb.vm, !prof !13

bb.vl:                                            ; preds = %bb.vk
  %i.aie = add nsw i32 %i.aic, -1
  store i32 %i.aie, ptr %i.ahz, align 4, !tbaa !12
  br label %lean_dec.exit.i2117

bb.vm:                                            ; preds = %bb.vk
  %.not.i7.i2120 = icmp eq i32 %i.aic, 0
  br i1 %.not.i7.i2120, label %lean_dec.exit.i2117, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahz) #5
  br label %lean_dec.exit.i2117

lean_dec.exit.i2117:                              ; preds = %bb.vn, %bb.vm, %bb.vl, %.preheader.i2114
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2121

bb.vo:                                            ; preds = %lean_dec.exit1461
  %i.aif = icmp sgt i32 %.val.i2112, 1
  br i1 %i.aif, label %bb.vp, label %bb.vq, !prof !13

bb.vp:                                            ; preds = %bb.vo
  %i.aig = add nsw i32 %.val.i2112, -1
  store i32 %i.aig, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit2121

bb.vq:                                            ; preds = %bb.vo
  %.not.i8.i2113 = icmp eq i32 %.val.i2112, 0
  br i1 %.not.i8.i2113, label %lean_dec_ref_known.exit2121, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit2121

lean_dec_ref_known.exit2121:                      ; preds = %lean_dec.exit.i2117, %bb.vp, %bb.vq, %bb.vr
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !10 ; 5 uses
  %.val1711 = load i32, ptr %i.aeu, align 8, !tbaa !12
  %i.aij = icmp eq i32 %.val1711, 1
  br i1 %i.aij, label %lean_dec_ref_known.exit1778, label %bb.vs

bb.vs:                                            ; preds = %lean_dec_ref_known.exit2121
  %i.aik = ptrtoint ptr %i.aii to i64
  %i.ail = and i64 %i.aik, 1
  %.not.i1333 = icmp eq i64 %i.ail, 0
  br i1 %.not.i1333, label %bb.vt, label %lean_inc.exit1334

bb.vt:                                            ; preds = %bb.vs
  %.val.i.i2122 = load i32, ptr %i.aii, align 4, !tbaa !12 ; 3 uses
  %i.aim = icmp sgt i32 %.val.i.i2122, 0
  br i1 %i.aim, label %bb.vu, label %bb.vv, !prof !13

bb.vu:                                            ; preds = %bb.vt
  %i.ain = add nuw i32 %.val.i.i2122, 1
  store i32 %i.ain, ptr %i.aii, align 4, !tbaa !12
  br label %lean_inc.exit1334

bb.vv:                                            ; preds = %bb.vt
  %.not.i.i2123 = icmp eq i32 %.val.i.i2122, 0
  br i1 %.not.i.i2123, label %lean_inc.exit1334, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.aio = atomicrmw add ptr %i.aii, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1334

lean_inc.exit1334:                                ; preds = %bb.vw, %bb.vv, %bb.vu, %bb.vs
  br i1 %.not.i2086, label %bb.vx, label %bb.wb

bb.vx:                                            ; preds = %lean_inc.exit1334
  %i.aip = load i32, ptr %i.aeu, align 8, !tbaa !12 ; 3 uses
  %i.aiq = icmp sgt i32 %i.aip, 1
  br i1 %i.aiq, label %bb.vy, label %bb.vz, !prof !13

bb.vy:                                            ; preds = %bb.vx
  %i.air = add nsw i32 %i.aip, -1
  store i32 %i.air, ptr %i.aeu, align 8, !tbaa !12
  br label %bb.wb

bb.vz:                                            ; preds = %bb.vx
  %.not.i1575 = icmp eq i32 %i.aip, 0
  br i1 %.not.i1575, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aeu) #5
  br label %bb.wb

bb.wb:                                            ; preds = %lean_inc.exit1334, %bb.vy, %bb.vz, %bb.wa
  %i.ais = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store ptr %i.aii, ptr %i.ait, align 8, !tbaa !10
end_hunk_0
