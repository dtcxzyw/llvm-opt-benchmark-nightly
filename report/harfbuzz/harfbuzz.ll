Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tE:bb.a
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cr, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0261, %.lr.ph265 ] ; 3 uses
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !1791 ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 2
  %i.cu = load ptr, ptr %i.as, align 8
  %i.cv = add i32 %i.cs, -2
  %i.cw = load ptr, ptr %i.av, align 8
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %i.cx
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.ct, ptr %i.cu, ptr %i.cy ; 5 uses
  %i.cz = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.db = load atomic i32, ptr %i.da monotonic, align 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1231 ; 3 uses
  %i.de = icmp ult i32 %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !551 ; 3 uses
  br i1 %i.de, label %bb.r, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !266

bb.r:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %i.dh = zext i32 %i.db to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !1233
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dj, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.r, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.dd, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = add nsw i32 %i.dd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.dk, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dl = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dm = lshr i32 %i.dl, 1                       ; 4 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !1233 ; 2 uses
  %i.dr = icmp slt i32 %i.cz, %i.dq
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = add nsw i32 %i.dm, -1
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cz, %i.dq
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = add nuw nsw i32 %i.dm, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dt, %bb.u ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.ds, %bb.s ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !134

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  store atomic i32 %i.dm, ptr %i.da monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.du = phi i64 [ %i.dn, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dh, %bb.r ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1234 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !1236
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1238
  %i.eg = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = lshr i64 %i.ef, %i.eh
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = and i8 %i.ej, 1
  br label %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"

"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i": ; preds = %bb.v, %bb.w, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ek, %bb.w ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.v ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 64
  %i.em = load i8, ptr %i.el, align 8, !tbaa !944, !range !378, !noundef !291
  %.not5.i.i.i = icmp eq i8 %i.em, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not5.i.i.i, label %bb.x, label %.split.preheader.i

bb.x:                                             ; preds = %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"
  switch i16 %i.bl, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit [
    i16 1, label %bb.y
    i16 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.en = add nuw nsw i32 %.sroa.13.0263, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.z:                                             ; preds = %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.eo = load i16, ptr %i.cd, align 1, !tbaa !281
  %i.ep = tail call noundef i16 @llvm.bswap.i16(i16 %i.eo)
  %i.eq = zext i16 %i.ep to i32
  %.not.i.i.i.i.i23 = icmp ult i32 %.sroa.13.0263, %i.eq
  br i1 %.not.i.i.i.i.i23, label %bb.aa, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !266

bb.aa:                                            ; preds = %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.er = zext nneg i32 %.sroa.13.0263 to i64
  %i.es = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.er
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi ptr [ %i.es, %bb.aa ], [ @_hb_Null_OT_RangeRecord, %bb.z ]
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.eu = load i16, ptr %i.et, align 1, !tbaa !281
  %i.ev = tail call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %i.ew = zext i16 %i.ev to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0261, %i.ew
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.ex = add nuw nsw i32 %.sroa.13.0263, 1       ; 4 uses
  %i.ey = load i16, ptr %i.cd, align 1, !tbaa !281
  %i.ez = tail call noundef i16 @llvm.bswap.i16(i16 %i.ey)
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = icmp ult i32 %i.ex, %i.fa
  br i1 %i.fb, label %bb.ac, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fc = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 1, !tbaa !281
  %i.ff = tail call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw [6 x i8], ptr %.0.i.i13, i64 %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i16, ptr %i.fi, align 1, !tbaa !281
  %i.fk = tail call noundef i16 @llvm.bswap.i16(i16 %i.fj)
  %i.fl = zext i16 %i.fk to i32                   ; 3 uses
  %i.fm = add i32 %.sroa.22.0262, 1
  %.not1.i.i.i.i = icmp eq i32 %i.fm, %i.fl
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !266

bb.ad:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.fn = add i32 %.sroa.22.0262, 1
  %i.fo = add nuw nsw i32 %.sroa.27.0261, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.ac
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.ab, %bb.ad, %bb.x, %bb.y, %bb.ac, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ %.sroa.27.0261, %bb.x ], [ %.sroa.27.0261, %bb.y ], [ %i.fg, %bb.ac ], [ 0, %bb.ab ], [ %i.fo, %bb.ad ], [ 0, %.sink.split.i.i.i.i ] ; 2 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.0262, %bb.x ], [ %.sroa.22.0262, %bb.y ], [ %i.fl, %bb.ac ], [ %.sroa.22.0262, %bb.ab ], [ %i.fn, %bb.ad ], [ %i.fl, %.sink.split.i.i.i.i ] ; 2 uses
  %.sroa.13.2 = phi i32 [ %.sroa.13.0263, %bb.x ], [ %i.en, %bb.y ], [ %i.ex, %bb.ac ], [ %i.ex, %bb.ab ], [ %.sroa.13.0263, %bb.ad ], [ %i.fa, %.sink.split.i.i.i.i ] ; 3 uses
  %i.fp = add nuw nsw i32 %.sroa.34.sroa.0.0260, 1 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59
  %i.fq = load i16, ptr %i.cd, align 1, !tbaa !281
  %i.fr = tail call noundef i16 @llvm.bswap.i16(i16 %i.fq)
  %i.fs = zext i16 %i.fr to i32
  %i.ft = icmp uge i32 %.sroa.13.2, %i.fs
  %.not.i.i.i = icmp eq i32 %i.fp, %i.bj          ; 2 uses
  %or.cond = select i1 %i.ft, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.preheader.i, label %.lr.ph265, !llvm.loop !4168

.split.preheader.i:                               ; preds = %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader"
  %.sroa.34.sroa.0.0.lcssa = phi i32 [ 0, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader" ], [ %i.fp, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.34.sroa.0.0260, %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.11.1.i.ph, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.27.0261, %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" ]
  %.sroa.22.0.lcssa = phi i32 [ 0, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.22.0262, %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" ]
  %.sroa.13.0.lcssa = phi i32 [ %.sroa.7.0.i.ph, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.13.0263, %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" ] ; 2 uses
  %.not.i.i.i.lcssa = phi i1 [ %.not.i.i.i258, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageE15hb_range_iter_tIjjETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_.exit.split.preheader" ], [ %.not.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ false, %"_ZNK4$_35clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59
  %i.fv = load i16, ptr %i.cd, align 1, !tbaa !281
  %i.fw = tail call noundef i16 @llvm.bswap.i16(i16 %i.fv)
  %i.fx = zext i16 %i.fw to i32
  %i.fy = icmp uge i32 %.sroa.13.0.lcssa, %i.fx
  %or.cond37.i.i115 = select i1 %i.fy, i1 true, i1 %.not.i.i.i.lcssa
  br i1 %or.cond37.i.i115, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EE10hb_apply_tIZNKSD_7closureESF_EUlRKSM_IjRKNS3_12ChainRuleSetISC_EEEE_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS12_6item_tEEE5valueEvE4typeELSK_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS12_Efp_EEEOS12_OS17_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEppEv.exit.i.i"
  %i.ga = phi i32 [ %i.ot, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEppEv.exit.i.i" ], [ %.sroa.13.0.lcssa, %.lr.ph ] ; 3 uses
  %i.gb = phi i32 [ %i.ov, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEppEv.exit.i.i" ], [ %.sroa.34.sroa.0.0.lcssa, %.lr.ph ] ; 3 uses
  %i.gc = phi i32 [ %i.ou, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEppEv.exit.i.i" ], [ %.sroa.27.0.lcssa, %.lr.ph ] ; 2 uses
  %.lcssa2835.i.i116 = phi i32 [ %i.os, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEppEv.exit.i.i" ], [ %.sroa.22.0.lcssa, %.lr.ph ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59
  br i1 %i.ce, label %bb.af, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"

bb.af:                                            ; preds = %bb.ae
  %i.gd = load i16, ptr %i.cd, align 1, !tbaa !281
  %i.ge = tail call noundef i16 @llvm.bswap.i16(i16 %i.gd)
  %i.gf = zext i16 %i.ge to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i21 = icmp samesign ult i32 %i.ga, %i.gf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i21, label %bb.ag, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !266

bb.ag:                                            ; preds = %bb.af
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.gg = zext nneg i32 %i.ga to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.gg
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i22 = phi ptr [ %i.gh, %bb.ag ], [ @_hb_NullPool, %bb.af ]
  %i.gi = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i22, align 1, !tbaa !281
  %i.gj = tail call noundef i16 @llvm.bswap.i16(i16 %i.gi)
  %i.gk = zext i16 %i.gj to i32
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i": ; preds = %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gk, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gc, %bb.ae ]
  %i.gl = load i16, ptr %i.bg, align 1, !tbaa !281
  %i.gm = tail call noundef i16 @llvm.bswap.i16(i16 %i.gl)
  %i.gn = zext i16 %i.gm to i32
  %.not.i.i.i.i.i.i.i.i.i.i19 = icmp ult i32 %i.gb, %i.gn
  br i1 %.not.i.i.i.i.i.i.i.i.i.i19, label %bb.ah, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEdeEv.exit.i.i", !prof !266

bb.ah:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i = zext nneg i32 %i.gb to i64
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEdeEv.exit.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEdeEv.exit.i.i": ; preds = %bb.ah, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i"
  %.0.i.i.i.i.i.i.i.i.i.i20 = phi ptr [ %i.go, %bb.ah ], [ @_hb_NullPool, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS2_21ChainContextFormat1_4INS3_10SmallTypesEE7closureEPNS2_20hb_closure_context_tEEUljE_RK3$_6LPv0EE9hb_pair_tIjjEEdeEv.exit.i.i.i.i" ]
  %i.gp = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i20, align 1, !tbaa !281 ; 2 uses
  %i.gq = icmp eq i16 %i.gp, 0
  %i.gr = tail call i16 @llvm.bswap.i16(i16 %i.gp)
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %i.gs
  %.0.i.i.i.i.i.i.i2.i.i.i.i = select i1 %i.gq, ptr @_hb_NullPool, ptr %i.gt, !prof !265 ; 3 uses
  %i.gu = load i32, ptr %i.fz, align 8, !tbaa !1225
  %i.gv = icmp ugt i32 %i.gu, 35000
  br i1 %i.gv, label %"_ZNK4$_33clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUlRK9hb_pair_tIjRKNS1_12ChainRuleSetIS4_EEEE_JSD_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSI_DpOSL_.exit.i.split.i.preheader", label %bb.ai, !prof !265

bb.ai:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNKS3_21ChainContextFormat1_4INS4_10SmallTypesEE7closureEPNS3_20hb_closure_context_tEEUljE_RK3$_6LPv0EEZNKSD_7closureESF_EUl9hb_pair_tIjjEE_L24hb_function_sortedness_t0ELSK_0EESM_IjRKNS3_12ChainRuleSetISC_EEEEdeEv.exit.i.i"
  %i.gw = load i16, ptr %.0.i.i.i.i.i.i.i2.i.i.i.i, align 1, !tbaa !281 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %"_ZNK4$_33clIRZNK2OT21ChainContextFormat1_4INS1_6Layout10SmallTypesEE7closureEPNS1_20hb_closure_context_tEEUlRK9hb_pair_tIjRKNS1_12ChainRuleSetIS4_EEEE_JSD_EEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSI_DpOSL_.exit.i.split.i.preheader", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.preheader.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.preheader.i.i": ; preds = %bb.ai
  %i.gx = tail call noundef i16 @llvm.bswap.i16(i16 %i.gw)
  %.sroa.423.8.extract.trunc.i.i.i.i.i.i = zext i16 %i.gx to i32
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i": ; preds = %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tEjRNS_32ChainContextClosureLookupContextE.exit.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.preheader.i.i"
  %.val25.i.i.i.i.i.i.i.i = phi i32 [ %i.ni, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tEjRNS_32ChainContextClosureLookupContextE.exit.i.i ], [ %.sroa.423.8.extract.trunc.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.preheader.i.i" ]
  %.pn.i.i.i.i.i.i = phi ptr [ %i.gy, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tEjRNS_32ChainContextClosureLookupContextE.exit.i.i ], [ %.0.i.i.i.i.i.i.i2.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.preheader.i.i" ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.gz = load i32, ptr %i.fz, align 8, !tbaa !1225
  %i.ha = icmp ugt i32 %i.gz, 35000
  br i1 %i.ha, label %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tEjRNS_32ChainContextClosureLookupContextE.exit.i.i, label %bb.aj, !prof !265

bb.aj:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gy, align 1, !tbaa !281 ; 2 uses
  %i.hb = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.hc = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i2.i.i.i.i, i64 %i.hd
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.hb, ptr @_hb_NullPool, ptr %i.he, !prof !265 ; 3 uses
  %i.hf = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !281 ; 2 uses
  %i.hg = tail call noundef i16 @llvm.bswap.i16(i16 %i.hf)
  %i.hh = zext i16 %i.hg to i64
  %i.hi = shl nuw nsw i64 %i.hh, 1                ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2 ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 1, !tbaa !281 ; 2 uses
  %i.hm = tail call noundef i16 @llvm.bswap.i16(i16 %i.hl) ; 3 uses
  %i.hn = zext i16 %i.hm to i64
  %.not.i.i.i.i9.i.i = icmp eq i16 %i.hl, 0
  %i.ho = shl nuw nsw i64 %i.hn, 1
  %i.hp = select i1 %.not.i.i.i.i9.i.i, i64 2, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hp ; 3 uses
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !281 ; 2 uses
  %i.hs = tail call noundef i16 @llvm.bswap.i16(i16 %i.hr)
  %i.ht = zext i16 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 1                ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.hy = zext i16 %i.hm to i32                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 2 ; 2 uses
  %i.ib = load i16, ptr %i.hw, align 1, !tbaa !281
  %i.ic = tail call noundef i16 @llvm.bswap.i16(i16 %i.ib)
  %i.id = zext i16 %i.ic to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.if = load ptr, ptr %i.as, align 8, !tbaa !1221 ; 15 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hi
  %.not22.i.i.i.i.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not22.i.i.i.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aj
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %.pre = load i32, ptr %i.ii, align 4, !tbaa !1231 ; 3 uses
  %.pre300.a = load ptr, ptr %i.ij, align 8, !tbaa !551 ; 3 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.pre, 0
  %i.il = add nsw i32 %.pre, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit
  %.01523.i.i.i.i.i.i = phi ptr [ %i.jx, %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit ], [ %i.hx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.im = load i16, ptr %.01523.i.i.i.i.i.i, align 1, !tbaa !281
  %i.in = tail call noundef i16 @llvm.bswap.i16(i16 %i.im)
  %i.io = zext i16 %i.in to i32                   ; 3 uses
  %i.ip = lshr i32 %i.io, 9                       ; 3 uses
  %i.iq = load atomic i32, ptr %i.ih monotonic, align 8 ; 2 uses
  %i.ir = icmp ult i32 %i.iq, %.pre
  br i1 %i.ir, label %bb.ak, label %._crit_edge.i.i.i.i.i.i.i, !prof !266

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.is = zext i32 %i.iq to i64                   ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.pre300.a, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !1233
  %.not.i.i.i.i.i.i.i194 = icmp eq i32 %i.iu, %i.ip
  br i1 %.not.i.i.i.i.i.i.i194, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.ao
  %.0203.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ %i.il, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ], [ 0, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.iv = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = lshr i32 %i.iv, 1                       ; 4 uses
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre300.a, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !1233 ; 2 uses
  %i.jb = icmp slt i32 %i.ip, %i.ja
  br i1 %i.jb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = add nsw i32 %i.iw, -1
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ip, %i.ja
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jd = add nuw nsw i32 %i.iw, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.223.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jd, %bb.an ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.jc, %bb.al ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !134

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i: ; preds = %bb.am
  store atomic i32 %i.iw, ptr %i.ih monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i:   ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i, %bb.ak
  %i.je = phi i64 [ %i.ix, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i ], [ %i.is, %bb.ak ]
  %.sink.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i, align 8, !tbaa !1234 ; 2 uses
  %.not.i.i.i.i.i.i193 = icmp eq ptr %.sink.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i193, label %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.pre300.a, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !1236
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = lshr i32 %i.io, 6
  %i.jm = and i32 %i.jl, 7
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !1238
  %i.jq = and i32 %i.io, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i64 %i.jp, %i.jr
  %i.jt = trunc i64 %i.js to i8
  %i.ju = and i8 %i.jt, 1
  br label %_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit

_ZN2OTL16intersects_glyphEPK8hb_set_tjPKvPv.exit: ; preds = %bb.ao, %._crit_edge.i.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, %bb.ap
  %.0.i.i.i.i.i.i = phi i8 [ %i.ju, %bb.ap ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.ao ]
  %i.jv = load i8, ptr %i.ik, align 8, !tbaa !944, !range !378, !noundef !291
end_hunk_0
