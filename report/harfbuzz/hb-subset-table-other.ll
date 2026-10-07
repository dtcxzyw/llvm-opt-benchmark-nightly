Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK2OT4name6subsetEP19hb_subset_context_t:bb.a
  %i.kc = phi ptr [ %i.kb, %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i ], [ %i.jz, %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i" ] ; 7 uses
  %.in257 = phi i32 [ %i.ke, %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i ], [ %.promoted96100.i, %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i" ]
  %i.kd = phi i32 [ %i.ka, %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i ], [ %i.jy, %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i" ] ; 5 uses
  %i.ke = add i32 %.in257, 1                      ; 4 uses
  %.val.i.i.i30.i = load i64, ptr %i.in, align 8, !tbaa !238
  %i.kf = getelementptr inbounds i8, ptr %i.kc, i64 %.val.i.i.i30.i
  %i.kg = load i16, ptr %i.kf, align 1, !tbaa !180
  %i.kh = call noundef i16 @llvm.bswap.i16(i16 %i.kg)
  %i.ki = zext i16 %i.kh to i32                   ; 3 uses
  %i.kj = lshr i32 %i.ki, 9                       ; 3 uses
  %i.kk = load atomic i32, ptr %i.jl monotonic, align 4 ; 2 uses
  %i.kl = load i32, ptr %i.jm, align 4, !tbaa !444 ; 3 uses
  %i.km = icmp ult i32 %i.kk, %i.kl
  %i.kn = load ptr, ptr %i.jn, align 8, !tbaa !445 ; 3 uses
  br i1 %i.km, label %bb.ad, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i, !prof !175

bb.ad:                                            ; preds = %.lr.ph250
  %i.ko = zext i32 %i.kk to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i.i.i51.i = icmp eq i32 %i.kq, %i.kj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i51.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i:            ; preds = %bb.ad, %.lr.ph250
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i32.i = icmp sgt i32 %i.kl, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i32.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i
  %i.kr = add nsw i32 %i.kl, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i39.i:         ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i40.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44.i, %bb.ah ], [ %i.kr, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i41.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, %bb.ah ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i38.i ] ; 2 uses
  %i.ks = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i41.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i40.i
  %i.kt = lshr i32 %i.ks, 1                       ; 4 uses
  %i.ku = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.kv = shl nuw nsw i64 %i.ku, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !447 ; 2 uses
  %i.ky = icmp slt i32 %i.kj, %i.kx
  br i1 %i.ky, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i39.i
  %i.kz = add nsw i32 %i.kt, -1
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i39.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i42.i = icmp eq i32 %i.kj, %i.kx
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i42.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i46.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.la = add nuw nsw i32 %i.kt, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i = phi i32 [ %i.la, %bb.ag ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i41.i, %bb.ae ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i40.i, %bb.ag ], [ %i.kz, %bb.ae ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i45.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i43.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i45.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i39.i, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i46.i: ; preds = %bb.af
  store atomic i32 %i.kt, ptr %i.jl monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i46.i, %bb.ad
  %i.lb = phi i64 [ %i.ku, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i46.i ], [ %i.ko, %bb.ad ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i49.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i48.i, align 8, !tbaa !448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i50.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i49.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i50.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i", label %bb.ai

bb.ai:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !449
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i49.i, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = lshr i32 %i.ki, 6
  %i.lj = and i32 %i.li, 7
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !210
  %i.ln = and i32 %i.ki, 63
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = lshr i64 %i.lm, %i.lo
  %i.lq = trunc i64 %i.lp to i8
  %i.lr = and i8 %i.lq, 1
  br label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i"

"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i": ; preds = %bb.ah, %bb.ai, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i
  %.0.i.i.i.i.i.i.i.i.i.i34.i = phi i8 [ %i.lr, %bb.ai ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i47.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i31.i ], [ 0, %bb.ah ]
  %i.ls = load i8, ptr %i.jo, align 8, !tbaa !203, !range !169, !noundef !193
  %.not2.i.i.i35.i = icmp eq i8 %i.ls, %.0.i.i.i.i.i.i.i.i.i.i34.i
  br i1 %.not2.i.i.i35.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i, label %_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit.i.i, !llvm.loop !44

_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit.i.i: ; preds = %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i.i33.i"
  store i32 %i.kd, ptr %i.ih, align 8, !tbaa !646
  store i32 %i.ke, ptr %i.il, align 4, !tbaa !647
  store ptr %i.kc, ptr %4, align 8, !tbaa !648
  %i.lt = load ptr, ptr %i.io, align 8, !tbaa !606 ; 5 uses
  %.val.i.i = load i64, ptr %i.ip, align 8, !tbaa !238
  %i.lu = getelementptr inbounds i8, ptr %i.kc, i64 %.val.i.i
  %i.lv = load i16, ptr %i.lu, align 1, !tbaa !180
  %i.lw = call noundef i16 @llvm.bswap.i16(i16 %i.lv)
  %i.lx = zext i16 %i.lw to i32                   ; 3 uses
  %i.ly = lshr i32 %i.lx, 9                       ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 24 ; 2 uses
  %i.ma = load atomic i32, ptr %i.lz monotonic, align 4 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 36
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !444 ; 3 uses
  %i.md = icmp ult i32 %i.ma, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !445 ; 3 uses
  br i1 %i.md, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !prof !175

bb.aj:                                            ; preds = %_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit.i.i
  %i.mg = zext i32 %i.ma to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i37.i = icmp eq i32 %i.mi, %i.ly
  br i1 %.not.i.i.i.i.i.i.i.i.i37.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.aj, %_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.mc, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.mj = add nsw i32 %i.mc, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.an, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.mj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.mk = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = lshr i32 %i.mk, 1                       ; 4 uses
  %i.mm = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mn = shl nuw nsw i64 %i.mm, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !447 ; 2 uses
  %i.mq = icmp slt i32 %i.ly, %i.mp
  br i1 %i.mq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mr = add nsw i32 %i.ml, -1
  br label %bb.an

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ly, %i.mp
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ms = add nuw nsw i32 %i.ml, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ms, %bb.am ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.mr, %bb.ak ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  store atomic i32 %i.ml, ptr %i.lz monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.mt = phi i64 [ %i.mm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.mg, %bb.aj ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i36.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i36.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i", label %bb.ao

bb.ao:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !449
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = lshr i32 %i.lx, 6
  %i.nb = and i32 %i.na, 7
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.nc
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !210
  %i.nf = and i32 %i.lx, 63
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = lshr i64 %i.ne, %i.ng
  %i.ni = trunc i64 %i.nh to i8
  %i.nj = and i8 %i.ni, 1
  br label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i"

"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i": ; preds = %bb.an, %bb.ao, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.nj, %bb.ao ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.an ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.nl = load i8, ptr %i.nk, align 8, !tbaa !203, !range !169, !noundef !193
  %.not2.i.i = icmp eq i8 %i.nl, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not2.i.i, label %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i", label %.lr.ph.i.i26.i.loopexit, !llvm.loop !43

"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.loopexit.i": ; preds = %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i
  %.lcssa215 = phi ptr [ %i.kb, %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i.i.i ], [ %i.jz, %"_ZNK4$_23clIRZNK2OT4name6subsetEP19hb_subset_context_tEUlRKNS1_10NameRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.backedge.i.i.i" ] ; 2 uses
  %i.nm = add i32 %.promoted99.i, %.promoted96100.i
  store i32 0, ptr %i.ih, align 8, !tbaa !646
  store i32 %i.nm, ptr %i.il, align 4, !tbaa !647
  store ptr %.lcssa215, ptr %4, align 8, !tbaa !648
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.i"

"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.i": ; preds = %.lr.ph.i.i26.i.loopexit, %.lr.ph104, %.split.i.i.i, %.lr.ph.i.i26.preheader.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.loopexit.i", %bb.ac
  %.val17.i = phi i32 [ 0, %bb.ac ], [ 0, %"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.loopexit.i" ], [ %i.jj, %.lr.ph.i.i26.preheader.i ], [ %i.kd, %.lr.ph.i.i26.i.loopexit ], [ %.val17167.i100, %.lr.ph104 ], [ %.val17167.i100, %.split.i.i.i ] ; 2 uses
  %.val.i = phi ptr [ %.val.pre.i, %bb.ac ], [ %.lcssa215, %"_ZNR9hb_iter_tI16hb_filter_iter_tIS0_IS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EEZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LSB_0EESH_EppEv.exit.loopexit.i" ], [ %.val.pre.i, %.lr.ph.i.i26.preheader.i ], [ %i.kc, %.lr.ph.i.i26.i.loopexit ], [ %.promoted101110.i102, %.lr.ph104 ], [ %.promoted101110.i102, %.split.i.i.i ] ; 2 uses
  %.val18.i = load ptr, ptr %5, align 8, !tbaa !648
  %.val19.i = load i32, ptr %i.hu, align 8
  %.not.i.i.i.i23.i = icmp ne ptr %.val.i, %.val18.i
  %i.nn = icmp ne i32 %.val17.i, %.val19.i
  %i.no = select i1 %.not.i.i.i.i23.i, i1 true, i1 %i.nn
  br i1 %i.no, label %bb.ac, label %._crit_edge.i

bb.ap:                                            ; preds = %_ZN22hb_serialize_context_t8copy_allI10hb_array_tIN2OT10NameRecordEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EJRPKvEEEvS6_DpOT1_.exit.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !170 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.nq, null
  br i1 %.not.i28.i, label %_ZNK22hb_serialize_context_t6lengthEv.exit.i, label %bb.aq, !prof !74

bb.aq:                                            ; preds = %bb.ap
  %i.nr = load ptr, ptr %i.ch, align 8, !tbaa !151
  %i.ns = load ptr, ptr %i.nq, align 8, !tbaa !237
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = trunc i64 %i.nv to i16
  %i.nx = call i16 @llvm.bswap.i16(i16 %i.nw)
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit.i

_ZNK22hb_serialize_context_t6lengthEv.exit.i:     ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi i16 [ %i.nx, %bb.aq ], [ 0, %bb.ap ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %.0.i.i, ptr %i.ny, align 1, !tbaa !238
  br label %"_ZN2OT4name9serializeI16hb_filter_iter_tIS2_IS2_I10hb_array_tIKNS_10NameRecordEER8hb_set_tMS4_NS_7NumTypeILb1EtLj2EEELPv0EES8_SB_LSC_0EEZNKS0_6subsetEP19hb_subset_context_tEUlRS5_E_RK4$_19LSC_0EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_SH_EE5valueEvE4typeELSC_0EEEbP22hb_serialize_context_tSO_PKv.exit"

"_ZN2OT4name9serializeI16hb_filter_iter_tIS2_IS2_I10hb_array_tIKNS_10NameRecordEER8hb_set_tMS4_NS_7NumTypeILb1EtLj2EEELPv0EES8_SB_LSC_0EEZNKS0_6subsetEP19hb_subset_context_tEUlRS5_E_RK4$_19LSC_0EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_SH_EE5valueEvE4typeELSC_0EEEbP22hb_serialize_context_tSO_PKv.exit": ; preds = %"_ZorI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EE24hb_filter_iter_factory_tIZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSU_.exit", %.critedge.i.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i, %bb.y, %_ZN22hb_serialize_context_t8copy_allI10hb_array_tIN2OT10NameRecordEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EJRPKvEEEvS6_DpOT1_.exit.i, %_ZNK22hb_serialize_context_t6lengthEv.exit.i
  %.3.i = phi i1 [ false, %_ZN22hb_serialize_context_t8copy_allI10hb_array_tIN2OT10NameRecordEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EJRPKvEEEvS6_DpOT1_.exit.i ], [ false, %"_ZorI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EES7_SA_LSB_0EE24hb_filter_iter_factory_tIZNKS2_4name6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELSB_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSU_.exit" ], [ false, %.critedge.i.i.i.i.i ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i ], [ false, %bb.y ], [ true, %_ZNK22hb_serialize_context_t6lengthEv.exit.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i1 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_filter_iter_tIS_I10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS2_NS1_7NumTypeILb1EtLj2EEELPv0EES6_S9_LSA_0EE8__next__Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !646  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %.critedge, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i, !prof !74

_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i: ; preds = %bb.b
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !646
  %i.i = load i32, ptr %i.b, align 4, !tbaa !647
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 4, !tbaa !647
  %i.k = load ptr, ptr %0, align 8, !tbaa !648
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !648
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT10NameRecordEERS3_EppEv.exit.i.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !606  ; 5 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !tbaa !238
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %.val.i.i
  %i.o = load i16, ptr %i.n, align 1, !tbaa !180
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = lshr i32 %i.q, 9                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !444  ; 3 uses
  %i.w = icmp ult i32 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !445  ; 3 uses
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !prof !175

bb.d:                                             ; preds = %bb.c
  %i.z = zext i32 %i.t to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ab, %i.r
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.d, %bb.c
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.v, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ac = add nsw i32 %i.v, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ad = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = lshr i32 %i.ad, 1                       ; 4 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !447 ; 2 uses
  %i.aj = icmp slt i32 %i.r, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ak = add nsw i32 %i.ae, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, %i.ai
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw nsw i32 %i.ae, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.g ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ak, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  store atomic i32 %i.ae, ptr %i.s monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.af, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.d ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !449
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = lshr i32 %i.q, 6
  %i.au = and i32 %i.at, 7
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !210
  %i.ay = and i32 %i.q, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.ax, %i.az
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 1
  br label %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i"

"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i": ; preds = %bb.h, %bb.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bc, %bb.i ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !203, !range !169, !noundef !193
  %.not2.i.i = icmp eq i8 %i.be, %.0.i.i.i.i.i.i.i.i.i
  br i1 %.not2.i.i, label %.backedge, label %_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit

.backedge:                                        ; preds = %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i", %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit"
  br label %bb.b, !llvm.loop !43

_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit: ; preds = %"_ZNK4$_23clIR8hb_set_tRKN2OT7NumTypeILb1EtLj2EEEEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS9_OSA_.exit.i.i"
  %.pr.pre = load i32, ptr %i.a, align 8, !tbaa !646
  %i.bf = icmp eq i32 %.pr.pre, 0
  br i1 %i.bf, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNR9hb_iter_tI16hb_filter_iter_tI10hb_array_tIKN2OT10NameRecordEER8hb_set_tMS3_NS2_7NumTypeILb1EtLj2EEELPv0EERS4_EppEv.exit
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !606 ; 5 uses
  %i.bh = load ptr, ptr %0, align 8
  %.val = load i64, ptr %i.f, align 8, !tbaa !238
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.val
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !180
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i32                   ; 3 uses
  %i.bm = lshr i32 %i.bl, 9                       ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bo = load atomic i32, ptr %i.bn monotonic, align 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !444 ; 3 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !445 ; 3 uses
  br i1 %i.br, label %bb.k, label %._crit_edge.i.i.i.i.i.i.i.i, !prof !175

bb.k:                                             ; preds = %bb.j
  %i.bu = zext i32 %i.bo to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
end_hunk_0
begin_hunk_1_@"_ZN2OT4cmap9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EES2_IS3_IKNS_14EncodingRecordEEZNKS0_6subsetES9_EUlRSH_E_SD_LSE_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSN_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tT_SN_PKvP16hb_subset_plan_tbj":bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = and i32 %i.dq, 2
  %.not.i.i.i.i87 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i87, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i, label %bb.p, !llvm.loop !50

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.i: ; preds = %bb.p
  %i.ds = trunc i32 %i.dq to i1
  br i1 %i.ds, label %.lr.ph.i.i10.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread25.i: ; preds = %.lr.ph.i.i.i.i86
  %i.dt = trunc i32 %i.dd to i1
  br i1 %i.dt, label %._crit_edge.i.i.i.thread, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread25.i
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i10.i
  %i.dw = load i32, ptr %i.ee, align 4, !tbaa !174
  %i.dx = icmp eq i32 %i.dw, %i.cu
  br i1 %i.dx, label %._crit_edge.i.i.i, label %.lr.ph.i.i10.i, !llvm.loop !50

._crit_edge.i.i.i:                                ; preds = %bb.q
  %.pre490 = trunc i32 %.fr to i1
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.ed
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %spec.select670 = select i1 %.pre490, ptr %i.dz, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i

.lr.ph.i.i10.i:                                   ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.i, %bb.q
  %.01016.i13.i.i.i = phi i32 [ %i.ec, %bb.q ], [ %i.cz, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.i ]
  %.017.i12.i.i.i = phi i32 [ %i.ea, %bb.q ], [ 0, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.i ]
  %i.ea = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.eb = add i32 %i.ea, %.01016.i13.i.i.i
  %i.ec = and i32 %i.eb, %i.df                    ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %.fr = freeze i32 %i.eg                         ; 2 uses
  %i.eh = and i32 %.fr, 2
  %.not.i.i.i11.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i11.i, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i, label %bb.q, !llvm.loop !50

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i: ; preds = %.lr.ph.i.i10.i, %._crit_edge.i.i.i, %._crit_edge.i.i.i.thread
  %.0.i12.i = phi ptr [ %i.dv, %._crit_edge.i.i.i.thread ], [ %spec.select670, %._crit_edge.i.i.i ], [ @_hb_NullPool, %.lr.ph.i.i10.i ]
  %i.ei = load ptr, ptr %.0.i12.i, align 8, !tbaa !673
  br label %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread25.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.i, %bb.o, %bb.n
  %i.ej = call noundef ptr @_ZN2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull %spec.select.i.i.i.i)
  br label %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit

_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit: ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i
  %.0.i = phi ptr [ %i.ei, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3getERKj.exit.i ], [ %i.ej, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread.i ] ; 22 uses
  %i.ek = icmp ne i16 %i.co, 1024
  %or.cond6.not = or i1 %6, %i.ek
  br i1 %or.cond6.not, label %bb.af, label %bb.r

bb.r:                                             ; preds = %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false)
  store ptr %.0.i, ptr %i.bw, align 8, !tbaa !2857
  store ptr @_ZL8hb_first, ptr %i.bx, align 8, !tbaa !608
  %.val413.i = load i32, ptr %i.by, align 8, !tbaa !657 ; 2 uses
  %.not14.i = icmp eq i32 %.val413.i, 0
  br i1 %.not14.i, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %.val5.pre.i = load ptr, ptr %9, align 8        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %.promoted338 = load i32, ptr %i.bz, align 4
  %.sink.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %.pre = load i32, ptr %i.em, align 4, !tbaa !444 ; 3 uses
  %.pre484 = load ptr, ptr %i.en, align 8, !tbaa !445 ; 3 uses
  %.val7.i.pre = load i32, ptr %.val5.pre.i, align 4, !tbaa !269
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.pre, 0
  %i.ep = add nsw i32 %.pre, -1
  %.promoted = load ptr, ptr %9, align 8
  br label %bb.s

bb.s:                                             ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i", %.lr.ph.i
  %.lcssa575661 = phi ptr [ %.promoted, %.lr.ph.i ], [ %i.gb, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i" ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.i.pre, %.lr.ph.i ], [ %i.gd, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i" ] ; 3 uses
  %.lcssa321339 = phi i32 [ %.promoted338, %.lr.ph.i ], [ %i.ga, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i" ] ; 2 uses
  %.lcssa319336 = phi i32 [ %.val413.i, %.lr.ph.i ], [ %i.fz, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i" ] ; 3 uses
  %.val5.i = phi ptr [ %.val5.pre.i, %.lr.ph.i ], [ %i.gb, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i" ] ; 2 uses
  %i.eq = lshr i32 %.val7.i, 9                    ; 3 uses
  %i.er = load atomic i32, ptr %i.el monotonic, align 8 ; 2 uses
  %i.es = icmp ult i32 %i.er, %.pre
  br i1 %i.es, label %bb.t, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !175

bb.t:                                             ; preds = %bb.s
  %i.et = zext i32 %i.er to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.pre484, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i128 = icmp eq i32 %i.ev, %i.eq
  br i1 %.not.i.i.i.i.i.i.i.i.i128, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.t, %bb.s
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.x
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ %i.ep, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ew = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = lshr i32 %i.ew, 1                       ; 4 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre484, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !447 ; 2 uses
  %i.fc = icmp slt i32 %i.eq, %i.fb
  br i1 %i.fc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = add nsw i32 %i.ex, -1
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eq, %i.fb
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = add nuw nsw i32 %i.ex, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.w ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.fd, %bb.u ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  store atomic i32 %i.ex, ptr %i.el monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i, %bb.t
  %i.ff = phi i64 [ %i.ey, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.t ]
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i127 = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i127, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i", label %bb.y

bb.y:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.pre484, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !449
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = lshr i32 %.val7.i, 6
  %i.fn = and i32 %i.fm, 7
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !210
  %i.fr = and i32 %.val7.i, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = lshr i64 %i.fq, %i.fs
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = and i8 %i.fu, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i": ; preds = %bb.x, %bb.y, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i123 = phi i8 [ %i.fv, %bb.y ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %bb.x ]
  %i.fw = load i8, ptr %i.eo, align 8, !tbaa !203, !range !169, !noundef !193
  %.not9.i = icmp eq i8 %i.fw, %.0.i.i.i.i.i.i.i.i123
  br i1 %.not9.i, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.sink.split"

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader: ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i"
  %i.fx = add i32 %.lcssa319336, -1               ; 2 uses
  %.not.i.i.i125769 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i.i125769, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.loopexit", label %.lr.ph770

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i: ; preds = %.lr.ph770
  %i.fy = add i32 %i.fz, -1                       ; 2 uses
  %.not.i.i.i125 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i.i125, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.loopexit", label %.lr.ph770, !llvm.loop !51

.lr.ph770:                                        ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i
  %.val5.i.pn = phi ptr [ %i.gb, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i ], [ %.val5.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader ]
  %.in = phi i32 [ %i.ga, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i ], [ %.lcssa321339, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader ]
  %i.fz = phi i32 [ %i.fy, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i ], [ %i.fx, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader ] ; 3 uses
  %i.ga = add i32 %.in, 1                         ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val5.i.pn, i64 8 ; 4 uses
  %.val.i.i.i126 = load i64, ptr %i.gb, align 4   ; 2 uses
  %i.gc = icmp ult i64 %.val.i.i.i126, -4294967296
  br i1 %i.gc, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i", label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i, !llvm.loop !51

"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i": ; preds = %.lr.ph770
  %i.gd = trunc i64 %.val.i.i.i126 to i32
  store i32 %i.fz, ptr %i.by, align 8
  store i32 %i.ga, ptr %i.bz, align 4
  br label %bb.s, !llvm.loop !2836

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.loopexit": ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.preheader, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i
  store ptr %.lcssa575661, ptr %9, align 8
  %i.ge = add i32 %.lcssa319336, %.lcssa321339
  %scevgep.le = getelementptr i8, ptr %.val5.i, i64 8
  %i.gf = add i32 %.lcssa319336, -1
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %scevgep478.le = getelementptr i8, ptr %scevgep.le, i64 %i.gh
  store i32 0, ptr %i.by, align 8
  store i32 %i.ge, ptr %i.bz, align 4
  br label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.sink.split"

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.sink.split": ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i", %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.loopexit"
  %.lcssa575661.lcssa.sink = phi ptr [ %scevgep478.le, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.loopexit" ], [ %.lcssa575661, %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i" ]
  store ptr %.lcssa575661.lcssa.sink, ptr %9, align 8
  br label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit"

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit": ; preds = %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit.sink.split", %bb.r
  call fastcc void @"_ZN22hb_serialize_context_t4copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEPT_RKSW_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(8) %spec.select.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %9, i32 4, ptr %4, ptr %5, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.gi = load i32, ptr %i.c, align 4, !tbaa !150
  switch i32 %i.gi, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" [
    i32 8, label %.critedge.i
    i32 16, label %.critedge.i
    i32 2, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit", %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit", %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit"
  %i.gj = load ptr, ptr %i.u, align 8, !tbaa !170 ; 5 uses
  %.not.i88 = icmp eq ptr %i.gj, null
  br i1 %.not.i88, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i, label %bb.z

bb.z:                                             ; preds = %.critedge.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !216
  %.not.i.i89 = icmp ult i32 %.sink.i, %i.gm
  br i1 %.not.i.i89, label %bb.aa, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i

bb.aa:                                            ; preds = %bb.z
  store i32 %.sink.i, ptr %i.gl, align 4, !tbaa !216
  %i.gn = load i32, ptr %i.gk, align 8, !tbaa !215
  %i.go = add i32 %i.gn, -1
  %spec.select.i.i.i90 = icmp ult i32 %i.go, -2
  br i1 %spec.select.i.i.i90, label %bb.ab, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.gp = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i32 noundef %.sink.i, i1 noundef zeroext true) ; 0 uses
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !170
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gq = phi ptr [ %i.gj, %bb.z ], [ %i.gj, %bb.aa ], [ %.pre.i, %bb.ab ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 36 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !216
  %.not.i1.i = icmp ult i32 %i.ac, %i.gt
  br i1 %.not.i1.i, label %bb.ac, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i

bb.ac:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i
  store i32 %i.ac, ptr %i.gs, align 4, !tbaa !216
  %i.gu = load i32, ptr %i.gr, align 8, !tbaa !215
  %i.gv = add i32 %i.gu, -1
  %spec.select.i.i2.i = icmp ult i32 %i.gv, -2
  br i1 %spec.select.i.i2.i, label %bb.ad, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i

bb.ad:                                            ; preds = %bb.ac
  %i.gw = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.ac, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i: ; preds = %bb.ad, %bb.ac, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i, %.critedge.i
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !150
  %.not.i4.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i4.i, label %bb.ae, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit, !prof !175

bb.ae:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i
  store <2 x ptr> %i.t, ptr %i.f, align 8, !tbaa !260
  call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit

bb.af:                                            ; preds = %_ZNK2OT21SubtableUnicodesCache7set_forEPKNS_14EncodingRecordERS0_.exit
  switch i16 %i.cp, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" [
    i16 12, label %bb.ag
    i16 14, label %bb.dc
  ]

bb.ag:                                            ; preds = %bb.af
  %.sroa.0204.0.copyload = load ptr, ptr %2, align 8 ; 6 uses
  %.sroa.4205.0.copyload = load i64, ptr %.sroa.4205.0..sroa_idx, align 8
  %.sroa.0211.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.2212.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3213.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.4208.sroa.0.0.extract.trunc = trunc i64 %.sroa.2212.0.copyload to i32 ; 2 uses
  %.sroa.5201.sroa.0.0.extract.trunc = trunc i64 %.sroa.4205.0.copyload to i32 ; 4 uses
  %.not12.i.i = icmp eq i32 %.sroa.5201.sroa.0.0.extract.trunc, 0 ; 2 uses
  br i1 %.not12.i.i, label %._crit_edge.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ag
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !444 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !445 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !203, !range !169, !noundef !193 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gz, 0 ; 2 uses
  %i.he = add nsw i32 %i.gz, -1                   ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i128.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, null ; 2 uses
  %.val1.i.i.i.pre.i = load i32, ptr %.sroa.0204.0.copyload, align 4, !tbaa !269
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EEjEppEv.exit.i.i", %.lr.ph.i.preheader.i
  %.val1.i.i.i.i = phi i32 [ %i.iq, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EEjEppEv.exit.i.i" ], [ %.val1.i.i.i.pre.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.8.sroa.0.0.i = phi i32 [ %i.in, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EEjEppEv.exit.i.i" ], [ %.sroa.5201.sroa.0.0.extract.trunc, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.051.0.i = phi ptr [ %i.io, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EEjEppEv.exit.i.i" ], [ %.sroa.0204.0.copyload, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.hf = lshr i32 %.val1.i.i.i.i, 9              ; 3 uses
  %i.hg = load atomic i32, ptr %i.gx monotonic, align 8 ; 2 uses
  %i.hh = icmp ult i32 %i.hg, %i.gz
  br i1 %i.hh, label %bb.ah, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !prof !175

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.hi = zext i32 %i.hg to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i129.i = icmp eq i32 %i.hk, %i.hf
  br i1 %.not.i.i.i.i.i.i.i.i.i129.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ah, %.lr.ph.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.al
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.he, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hl = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = lshr i32 %i.hl, 1                       ; 4 uses
  %i.hn = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !447 ; 2 uses
  %i.hr = icmp slt i32 %i.hf, %i.hq
  br i1 %i.hr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = add nsw i32 %i.hm, -1
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.hf, %i.hq
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ht = add nuw nsw i32 %i.hm, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ht, %bb.ak ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.hs, %bb.ai ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  store atomic i32 %i.hm, ptr %i.gx monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %i.hu = phi i64 [ %i.hn, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.hi, %bb.ah ]
  br i1 %.not.i.i.i.i.i.i.i.i128.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i", label %bb.am

bb.am:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !449
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = lshr i32 %.val1.i.i.i.i, 6
  %i.ic = and i32 %i.ib, 7
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !210
  %i.ig = and i32 %.val1.i.i.i.i, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 %i.if, %i.ih
  %i.ij = trunc i64 %i.ii to i8
  %i.ik = and i8 %i.ij, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i": ; preds = %bb.al, %bb.am, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i126.i = phi i8 [ %i.ik, %bb.am ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.al ]
  %.not7.i.i = icmp eq i8 %i.hd, %.0.i.i.i.i.i.i.i.i126.i
  br i1 %.not7.i.i, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.preheader, label %_ZNK9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_E4_endEv.exit.i.i.i.i.i.i.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i.preheader: ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"
  %i.il = add i32 %.sroa.8.sroa.0.0.i, -1         ; 2 uses
  %.not.i.i.i.i.i.i778 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i.i.i.i778, label %._crit_edge.i, label %.lr.ph780

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph780
  %i.im = add i32 %i.in, -1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph780, !llvm.loop !51
end_hunk_1
begin_hunk_2_@"_ZN2OT4cmap9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EES2_IS3_IKNS_14EncodingRecordEEZNKS0_6subsetES9_EUlRSH_E_SD_LSE_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSN_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tT_SN_PKvP16hb_subset_plan_tbj":bb.a

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i.i: ; preds = %bb.cq, %bb.cr
  %.sroa.036.1.i790 = phi ptr [ %i.wi, %bb.cr ], [ %.sroa.036.0186.i, %bb.cq ] ; 4 uses
  %.sroa.737.1.i789 = phi i32 [ %i.wh, %bb.cr ], [ %.sroa.737.0185.i, %bb.cq ]
  %i.wh = add i32 %.sroa.737.1.i789, -1           ; 7 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i790, i64 8 ; 7 uses
  %.not.i.i124.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i.i124.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i", label %bb.cs

bb.cs:                                            ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i.i
  %i.wj = load i16, ptr %i.wi, align 1, !tbaa !180
  %i.wk = call noundef i16 @llvm.bswap.i16(i16 %i.wj)
  switch i16 %i.wk, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" [
    i16 0, label %bb.ct
    i16 3, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i790, i64 10
  %i.wm = load i16, ptr %i.wl, align 1, !tbaa !180
  switch i16 %i.wm, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" [
    i16 1024, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i"
    i16 768, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i"
  ]

bb.cu:                                            ; preds = %bb.cs
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i790, i64 10
  %i.wo = load i16, ptr %i.wn, align 1, !tbaa !180
  switch i16 %i.wo, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i" [
    i16 2560, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i"
    i16 256, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i"
  ]

"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i": ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i790, i64 12
  %i.wq = load i32, ptr %i.wp, align 1, !tbaa !178 ; 2 uses
  %i.wr = icmp eq i32 %i.wq, 0
  %i.ws = call i32 @llvm.bswap.i32(i32 %i.wq)
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.3213.0.copyload, i64 %i.wt
  %.0.i.i.i.i.i.i.i.i.i.i125.i = select i1 %i.wr, ptr @_hb_NullPool, ptr %i.wu, !prof !74
  %i.wv = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i125.i, align 1, !tbaa !180
  %i.ww = icmp eq i16 %i.wv, 3584
  br i1 %i.ww, label %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i_crit_edge", label %bb.cr, !llvm.loop !49

"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i"
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i", !llvm.loop !49

"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i": ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i.i, %bb.ct, %bb.ct, %bb.cu, %bb.cu, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i_crit_edge", %bb.cq
  %.sroa.737.2.i = phi i32 [ 0, %bb.cq ], [ %i.wh, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i.i ], [ %i.wh, %bb.cu ], [ %i.wh, %bb.ct ], [ %i.wh, %bb.cu ], [ %i.wh, %bb.ct ] ; 2 uses
  %.sroa.036.2.i = phi ptr [ %scevgep283.i, %bb.cq ], [ %i.wi, %"_ZNK4$_23clIRZNK2OT4cmap6subsetEP19hb_subset_context_tEUlRKNS1_14EncodingRecordEE_S7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i._ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i_crit_edge" ], [ %scevgep285.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEERS3_EppEv.exit.i.i.i ], [ %i.wi, %bb.cu ], [ %i.wi, %bb.ct ], [ %i.wi, %bb.cu ], [ %i.wi, %bb.ct ] ; 2 uses
  %.not.i.i.i = icmp ne ptr %.sroa.036.2.i, %i.lr
  %i.wx = icmp ne i32 %.sroa.737.2.i, 0
  %i.wy = or i1 %i.wx, %.not.i.i.i
  br i1 %i.wy, label %.lr.ph187.i, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread"

"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit": ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EERK8hb_set_tSE_LSF_0EEjEppEi.exit122.i", %"_ZN16hb_filter_iter_tI13hb_map_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSE_0EERK8hb_set_tSD_LSE_0EEC2ERKSK_SN_SD_.exit234.i"
  %.sroa.10.3.lcssa.i = phi i32 [ %.sroa.10.2.i, %"_ZN16hb_filter_iter_tI13hb_map_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSE_0EERK8hb_set_tSD_LSE_0EEC2ERKSK_SN_SD_.exit234.i" ], [ %i.wa, %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS4_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EERK8hb_set_tSE_LSF_0EEjEppEi.exit122.i" ]
  %.not94.i = icmp eq i32 %.sroa.10.3.lcssa.i, 0
  br i1 %.not94.i, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread"

"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread": ; preds = %bb.an, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_EppEv.exit.i", %bb.cc, %.lr.ph196.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIKN2OT14EncodingRecordEEZNKS2_4cmap6subsetEP19hb_subset_context_tEUlRS4_E_RK4$_19LPv0EES9_E3endEv.exit.i", %bb.bc, %_ZNK2OT12CmapSubtable12get_languageEv.exit.i, %bb.bd, %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false)
  store ptr %.0.i, ptr %i.cd, align 8, !tbaa !2857
  store ptr @_ZL8hb_first, ptr %i.ce, align 8, !tbaa !608
  %.val413.i129 = load i32, ptr %i.cf, align 8, !tbaa !657 ; 2 uses
  %.not14.i130 = icmp eq i32 %.val413.i129, 0
  br i1 %.not14.i130, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164", label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread"
  %.val5.pre.i132 = load ptr, ptr %10, align 8    ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.xb = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.xc = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %.promoted362 = load i32, ptr %i.cg, align 4
  %.sink.in.i.i.i.i.i.i.i.i.i160 = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %.pre485 = load i32, ptr %i.xa, align 4, !tbaa !444 ; 3 uses
  %.pre486 = load ptr, ptr %i.xb, align 8, !tbaa !445 ; 3 uses
  %.val7.i134.pre = load i32, ptr %.val5.pre.i132, align 4, !tbaa !269
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i136 = icmp sgt i32 %.pre485, 0
  %i.xd = add nsw i32 %.pre485, -1
  %.promoted667 = load ptr, ptr %10, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149", %.lr.ph.i131
  %.lcssa651668 = phi ptr [ %.promoted667, %.lr.ph.i131 ], [ %i.yp, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149" ] ; 2 uses
  %.val7.i134 = phi i32 [ %.val7.i134.pre, %.lr.ph.i131 ], [ %i.yr, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149" ] ; 3 uses
  %.lcssa343363 = phi i32 [ %.promoted362, %.lr.ph.i131 ], [ %i.yo, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149" ] ; 2 uses
  %.lcssa341359 = phi i32 [ %.val413.i129, %.lr.ph.i131 ], [ %i.yn, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149" ] ; 3 uses
  %.val5.i133 = phi ptr [ %.val5.pre.i132, %.lr.ph.i131 ], [ %i.yp, %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149" ] ; 2 uses
  %i.xe = lshr i32 %.val7.i134, 9                 ; 3 uses
  %i.xf = load atomic i32, ptr %i.wz monotonic, align 8 ; 2 uses
  %i.xg = icmp ult i32 %i.xf, %.pre485
  br i1 %i.xg, label %bb.cw, label %._crit_edge.i.i.i.i.i.i.i.i.i135, !prof !175

bb.cw:                                            ; preds = %bb.cv
  %i.xh = zext i32 %i.xf to i64                   ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %.pre486, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !447
  %.not.i.i.i.i.i.i.i.i.i163 = icmp eq i32 %i.xj, %i.xe
  br i1 %.not.i.i.i.i.i.i.i.i.i163, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159, label %._crit_edge.i.i.i.i.i.i.i.i.i135

._crit_edge.i.i.i.i.i.i.i.i.i135:                 ; preds = %bb.cw, %bb.cv
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i136, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i151, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i151:              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i135, %bb.da
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i152 = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i156, %bb.da ], [ %i.xd, %._crit_edge.i.i.i.i.i.i.i.i.i135 ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i153 = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i155, %bb.da ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i135 ] ; 2 uses
  %i.xk = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i153, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i152
  %i.xl = lshr i32 %i.xk, 1                       ; 4 uses
  %i.xm = zext nneg i32 %i.xl to i64              ; 2 uses
  %i.xn = shl nuw nsw i64 %i.xm, 3
  %i.xo = getelementptr inbounds nuw i8, ptr %.pre486, i64 %i.xn
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !447 ; 2 uses
  %i.xq = icmp slt i32 %i.xe, %i.xp
  br i1 %i.xq, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i151
  %i.xr = add nsw i32 %i.xl, -1
  br label %bb.da

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i151
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i154 = icmp eq i32 %i.xe, %i.xp
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i154, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i158, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xs = add nuw nsw i32 %i.xl, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i155 = phi i32 [ %i.xs, %bb.cz ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i153, %bb.cx ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i156 = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i152, %bb.cz ], [ %i.xr, %bb.cx ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i157 = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i155, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i156
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i157, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i151, !llvm.loop !8

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i158: ; preds = %bb.cy
  store atomic i32 %i.xl, ptr %i.wz monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i158, %bb.cw
  %i.xt = phi i64 [ %i.xm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i158 ], [ %i.xh, %bb.cw ]
  %.sink.i.i.i.i.i.i.i.i.i161 = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i160, align 8, !tbaa !448 ; 2 uses
  %.not.i.i.i.i.i.i.i.i162 = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i161, null
  br i1 %.not.i.i.i.i.i.i.i.i162, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137", label %bb.db

bb.db:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.pre486, i64 %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !449
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i161, i64 %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.ya = lshr i32 %.val7.i134, 6
  %i.yb = and i32 %i.ya, 7
  %i.yc = zext nneg i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.yc
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !210
  %i.yf = and i32 %.val7.i134, 63
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = lshr i64 %i.ye, %i.yg
  %i.yi = trunc i64 %i.yh to i8
  %i.yj = and i8 %i.yi, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137": ; preds = %bb.da, %bb.db, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159, %._crit_edge.i.i.i.i.i.i.i.i.i135
  %.0.i.i.i.i.i.i.i.i138 = phi i8 [ %i.yj, %bb.db ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i159 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i135 ], [ 0, %bb.da ]
  %i.yk = load i8, ptr %i.xc, align 8, !tbaa !203, !range !169, !noundef !193
  %.not9.i139 = icmp eq i8 %i.yk, %.0.i.i.i.i.i.i.i.i138
  br i1 %.not9.i139, label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.sink.split"

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader: ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137"
  %i.yl = add i32 %.lcssa341359, -1               ; 2 uses
  %.not.i.i.i147842 = icmp eq i32 %i.yl, 0
  br i1 %.not.i.i.i147842, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.loopexit", label %.lr.ph843

_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146: ; preds = %.lr.ph843
  %i.ym = add i32 %i.yn, -1                       ; 2 uses
  %.not.i.i.i147 = icmp eq i32 %i.ym, 0
  br i1 %.not.i.i.i147, label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.loopexit", label %.lr.ph843, !llvm.loop !51

.lr.ph843:                                        ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146
  %.val5.i133.pn = phi ptr [ %i.yp, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146 ], [ %.val5.i133, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader ]
  %.in873 = phi i32 [ %i.yo, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146 ], [ %.lcssa343363, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader ]
  %i.yn = phi i32 [ %i.ym, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146 ], [ %i.yl, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader ] ; 3 uses
  %i.yo = add i32 %.in873, 1                      ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.val5.i133.pn, i64 8 ; 4 uses
  %.val.i.i.i148 = load i64, ptr %i.yp, align 4   ; 2 uses
  %i.yq = icmp ult i64 %.val.i.i.i148, -4294967296
  br i1 %i.yq, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149", label %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146, !llvm.loop !51

"_ZNR9hb_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS3_E_RK4$_19LPv0EERS4_EppEv.exit.i149": ; preds = %.lr.ph843
  %i.yr = trunc i64 %.val.i.i.i148 to i32
  store i32 %i.yn, ptr %i.cf, align 8
  store i32 %i.yo, ptr %i.cg, align 4
  br label %bb.cv, !llvm.loop !2836

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.loopexit": ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146.preheader, %_ZNR9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEv.exit.i.i.i146
  store ptr %.lcssa651668, ptr %10, align 8
  %i.ys = add i32 %.lcssa341359, %.lcssa343363
  %scevgep479.le = getelementptr i8, ptr %.val5.i133, i64 8
  %i.yt = add i32 %.lcssa341359, -1
  %i.yu = zext i32 %i.yt to i64
  %i.yv = shl nuw nsw i64 %i.yu, 3
  %scevgep480.le = getelementptr i8, ptr %scevgep479.le, i64 %i.yv
  store i32 0, ptr %i.cf, align 8
  store i32 %i.ys, ptr %i.cg, align 4
  br label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.sink.split"

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.sink.split": ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137", %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.loopexit"
  %.lcssa651668.lcssa.sink = phi ptr [ %scevgep480.le, %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.loopexit" ], [ %.lcssa651668, %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i137" ]
  store ptr %.lcssa651668.lcssa.sink, ptr %10, align 8
  br label %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164"

"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164": ; preds = %"_ZN16hb_filter_iter_tIS_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNK2OT4cmap6subsetEP19hb_subset_context_tEUlS2_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSD_0EEC2ERKSE_SH_SK_.exit164.sink.split", %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread"
  call fastcc void @"_ZN22hb_serialize_context_t4copyIN2OT14EncodingRecordEJ16hb_filter_iter_tIS3_I17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS1_4cmap6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK8hb_set_tRK3$_6LSG_0EEjRPKvRP16hb_subset_plan_tPjEEEPT_RKSW_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(8) %spec.select.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %10, i32 12, ptr %4, ptr %5, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"

bb.dc:                                            ; preds = %bb.af
  %i.yw = load ptr, ptr %i.f, align 8, !tbaa !151, !noalias !2860 ; 6 uses
  %i.yx = load ptr, ptr %i.l, align 8, !tbaa !152, !noalias !2860 ; 2 uses
  %i.yy = load ptr, ptr %i.u, align 8, !tbaa !170, !noalias !2860 ; 3 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i100, label %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 20
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !381, !noalias !2860
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 36
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !664, !noalias !2860
  %i.zd = call i32 @llvm.smax.i32(i32 %i.za, i32 0)
  %i.ze = call i32 @llvm.smax.i32(i32 %i.zc, i32 0)
  br label %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i

_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i: ; preds = %bb.dd, %bb.dc
  %.sink.i.i.i.i = phi i32 [ %i.zd, %bb.dd ], [ 0, %bb.dc ] ; 3 uses
  %i.zf = phi i32 [ %i.ze, %bb.dd ], [ 0, %bb.dc ] ; 3 uses
  %i.zg = load i32, ptr %i.c, align 4, !tbaa !150, !noalias !2860
  %.not.i.i.i.i.i101 = icmp eq i32 %i.zg, 0
  br i1 %.not.i.i.i.i.i101, label %bb.de, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", !prof !175

bb.de:                                            ; preds = %_ZN22hb_serialize_context_t8snapshotEv.exit.i.i.i
  %i.zh = ptrtoint ptr %i.yx to i64
  %i.zi = ptrtoint ptr %i.yw to i64
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = icmp slt i64 %i.zj, 8
  br i1 %i.zk, label %.critedge.i.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i.i, !prof !74

.critedge.i.i.i.i.i:                              ; preds = %bb.de
  store i32 4, ptr %i.c, align 4, !tbaa !150
  br label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"

_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i.i: ; preds = %bb.de
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store ptr %i.zl, ptr %i.f, align 8, !tbaa !151
  %.not.i21.i.i.i = icmp eq ptr %i.yw, null
  br i1 %.not.i21.i.i.i, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", label %bb.df, !prof !171

bb.df:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT14EncodingRecordEEEPT_mb.exit.i.i.i.i
  %i.zm = load i64, ptr %spec.select.i.i.i.i, align 1, !alias.scope !2861
  store i64 %i.zm, ptr %i.yw, align 1, !alias.scope !2861
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  store i32 0, ptr %i.zn, align 1, !tbaa !238
  %i.zo = icmp eq i32 %.0216365, 0
  br i1 %i.zo, label %bb.dg, label %.thread.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.zp = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT12CmapSubtableEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.zq = load ptr, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %.not.i22.i.i.i = icmp eq ptr %i.zq, null
  br i1 %.not.i22.i.i.i, label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSI_jPK16hb_subset_plan_tPKv.exit.i.i.i", label %bb.dh, !prof !74

bb.dh:                                            ; preds = %bb.dg
  %i.zr = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.zs = load ptr, ptr %i.zq, align 8, !tbaa !237
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = trunc i64 %i.zv to i32
  br label %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSI_jPK16hb_subset_plan_tPKv.exit.i.i.i"

"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSI_jPK16hb_subset_plan_tPKv.exit.i.i.i": ; preds = %bb.dg, %bb.dh
  %.0.i23.i.i.i = phi i32 [ %i.zw, %bb.dh ], [ 0, %bb.dg ]
  %i.zx = load i32, ptr %i.ci, align 1, !tbaa !178 ; 2 uses
  %i.zy = icmp eq i32 %i.zx, 0
  %i.zz = call i32 @llvm.bswap.i32(i32 %i.zx)
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aaa
  %.0.i.i.i.i.i = select i1 %i.zy, ptr @_hb_NullPool, ptr %i.aab, !prof !74
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !282
  %i.aac = load ptr, ptr %i.cc, align 8, !tbaa !357
  call void @_ZN2OT20CmapSubtableFormat149serializeEP22hb_serialize_context_tPK8hb_set_tS5_PK8hb_map_tPKv(ptr noundef nonnull align 1 dereferenceable(262) %i.zp, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef %i.aac, ptr noundef nonnull %.0.i.i.i.i.i)
  %i.aad = load ptr, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %i.aad, null
  br i1 %.not.i25.i.i.i, label %.thread, label %_ZNK22hb_serialize_context_t6lengthEv.exit27.i.i.i, !prof !74

_ZNK22hb_serialize_context_t6lengthEv.exit27.i.i.i: ; preds = %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSI_jPK16hb_subset_plan_tPKv.exit.i.i.i"
  %i.aae = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.aaf = load ptr, ptr %i.aad, align 8, !tbaa !237
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = trunc i64 %i.aai to i32
  %i.aak = icmp ult i32 %.0.i23.i.i.i, %i.aaj
  br i1 %i.aak, label %bb.di, label %.thread

bb.di:                                            ; preds = %_ZNK22hb_serialize_context_t6lengthEv.exit27.i.i.i
  %i.aal = load i32, ptr %i.c, align 4, !tbaa !150
  %.not.i.i.i105 = icmp eq i32 %i.aal, 0
  br i1 %.not.i.i.i105, label %bb.dj, label %.thread

.thread:                                          ; preds = %"_ZN2OT12CmapSubtable9serializeI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS_4cmap6subsetEP19hb_subset_context_tEUlS5_E_RK4$_19LPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELSF_0EEEvP22hb_serialize_context_tSI_jPK16hb_subset_plan_tPKv.exit.i.i.i", %_ZNK22hb_serialize_context_t6lengthEv.exit27.i.i.i, %bb.di
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aam = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.aan = icmp eq i32 %i.aam, 0
  br i1 %i.aan, label %bb.dk, label %.thread.i.i.i

bb.dk:                                            ; preds = %.thread, %bb.dj
  %i.aao = load i32, ptr %i.c, align 4, !tbaa !150
  switch i32 %i.aao, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222" [
    i32 0, label %.critedge.i.i.i.i103
    i32 2, label %.critedge.i.i.i.i103
    i32 8, label %.critedge.i.i.i.i103
    i32 16, label %.critedge.i.i.i.i103
  ]

.critedge.i.i.i.i103:                             ; preds = %bb.dk, %bb.dk, %bb.dk, %bb.dk
  %i.aap = load ptr, ptr %i.u, align 8, !tbaa !170 ; 5 uses
  %.not.i28.i.i.i = icmp eq ptr %i.aap, null
  br i1 %.not.i28.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %.critedge.i.i.i.i103
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 20 ; 2 uses
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !216
  %.not.i.i29.i.i.i = icmp ult i32 %.sink.i.i.i.i, %i.aas
  br i1 %.not.i.i29.i.i.i, label %bb.dm, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  store i32 %.sink.i.i.i.i, ptr %i.aar, align 4, !tbaa !216
  %i.aat = load i32, ptr %i.aaq, align 8, !tbaa !215
  %i.aau = add i32 %i.aat, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.aau, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.dn, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.aav = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aaq, i32 noundef %.sink.i.i.i.i, i1 noundef zeroext true) ; 0 uses
  %.pre.i.i.i.i104 = load ptr, ptr %i.u, align 8, !tbaa !170
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.aaw = phi ptr [ %i.aap, %bb.dl ], [ %i.aap, %bb.dm ], [ %.pre.i.i.i.i104, %bb.dn ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 36 ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !216
  %.not.i1.i.i.i.i = icmp ult i32 %i.zf, %i.aaz
  br i1 %.not.i1.i.i.i.i, label %bb.do, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

bb.do:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i
  store i32 %i.zf, ptr %i.aay, align 4, !tbaa !216
  %i.aba = load i32, ptr %i.aax, align 8, !tbaa !215
  %i.abb = add i32 %i.aba, -1
  %spec.select.i.i2.i.i.i.i = icmp ult i32 %i.abb, -2
  br i1 %spec.select.i.i2.i.i.i.i, label %bb.dp, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.abc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aax, i32 noundef %i.zf, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit3.i.i.i.i: ; preds = %bb.dp, %bb.do, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE6shrinkEib.exit.i.i.i.i, %.critedge.i.i.i.i103
  store i32 0, ptr %i.c, align 4, !tbaa !150
  store ptr %i.yw, ptr %i.f, align 8, !tbaa !151
  store ptr %i.yx, ptr %i.l, align 8, !tbaa !152
  call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222"

.thread.i.i.i:                                    ; preds = %bb.dj, %bb.df
  %i.abd = phi i32 [ %i.aam, %bb.dj ], [ %.0216365, %bb.df ] ; 3 uses
  %i.abe = load i32, ptr %i.c, align 4, !tbaa !150
  %.not54.i.i.i = icmp eq i32 %i.abe, 0
  br i1 %.not54.i.i.i, label %bb.dq, label %"_ZN2OT4cmap9_can_dropI13hb_map_iter_tI16hb_filter_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZNKS0_6subsetEP19hb_subset_context_tEUlS6_E_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t0ELSF_0EES3_IS4_IKNS_14EncodingRecordEEZNKS0_6subsetESA_EUlRSN_E_SE_LSF_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NST_6item_tEEE5valueEvE4typeELSF_0ETnPNSS_IXsr17hb_is_iterator_ofIT0_NSY_6item_tEEE5valueEvE4typeELSF_0EEEbSP_RK8hb_set_tPKvRKNS_21SubtableUnicodesCacheERS18_ST_SY_.exit.thread222", !prof !651

bb.dq:                                            ; preds = %.thread.i.i.i
  %i.abf = load ptr, ptr %i.u, align 8, !tbaa !170 ; 4 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 20 ; 3 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !216 ; 2 uses
  %i.abi = add i32 %i.abh, 1                      ; 5 uses
  %i.abj = icmp slt i32 %i.abi, 0
  br i1 %i.abj, label %bb.dv, label %bb.dr, !prof !74

bb.dr:                                            ; preds = %bb.dq
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abl = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.abk, i32 noundef %i.abi, i1 noundef zeroext false)
  br i1 %i.abl, label %bb.ds, label %bb.dv, !prof !257

bb.ds:                                            ; preds = %bb.dr
end_hunk_2
