Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.sroa.0210.0268, ptr %9, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0204.0267, ptr %10, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0174.0, ptr %11, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0181.0, ptr %12, align 8, !tbaa !478, !noalias !12214
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

bb.w:                                             ; preds = %.thread321, %bb.u
  %i.dp = phi i1 [ true, %.thread321 ], [ %i.ca, %bb.u ]
  store ptr %.sroa.0210.0268, ptr %13, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0204.0267, ptr %14, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0174.0, ptr %15, align 8, !tbaa !478, !noalias !12214
  store ptr %.sroa.0181.0, ptr %16, align 8, !tbaa !478, !noalias !12214
  store ptr %8, ptr %17, align 8, !tbaa !385, !noalias !12214
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit: ; preds = %bb.v, %bb.w
  %i.dq = phi i1 [ %i.ca, %bb.v ], [ %i.dp, %bb.w ]
  %i.dr = phi i1 [ true, %bb.v ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !331 ; 4 uses
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !331 ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt                ; 2 uses
  br i1 %i.du, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !331
  %i.dv = load ptr, ptr %.sroa.0174.0, align 8, !tbaa !468 ; 2 uses
  %i.dw = load ptr, ptr %18, align 8, !tbaa !478  ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !468 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = load ptr, ptr %.sroa.0179.0241, align 8, !tbaa !468, !noalias !12215
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !466, !noalias !12215
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0151.0 = phi ptr [ %.sroa.0179.0241, %bb.x ], [ %i.ef, %bb.y ] ; 2 uses
  %.not.i88 = icmp eq ptr %i.dw, %.sroa.0151.0
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100, label %.preheader.i89

.preheader.i89:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %.not79.i90 = icmp eq ptr %i.dw, %.sroa.0174.0
  br i1 %.not79.i90, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.preheader.i89, %.lr.ph.i91
  %.sroa.0143.0 = phi ptr [ %i.em, %.lr.ph.i91 ], [ %.sroa.0151.0, %.preheader.i89 ] ; 3 uses
  %i.eg = phi ptr [ %i.ej, %.lr.ph.i91 ], [ %i.dw, %.preheader.i89 ] ; 3 uses
  %.010.i92 = phi ptr [ %i.en, %.lr.ph.i91 ], [ %7, %.preheader.i89 ] ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !468, !noalias !12216
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !466, !noalias !12216 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.0143.0, align 8, !tbaa !468, !noalias !12217
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !466, !noalias !12217
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i92, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0143.0, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !338
  store i32 %i.ep, ptr %.010.i92, align 4, !tbaa !347
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0143.0, i64 12 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !338
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i92, i64 4
  store i32 %i.er, ptr %i.es, align 4, !tbaa !348
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !338
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !347
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !338
  store i32 %i.ew, ptr %i.eq, align 4, !tbaa !348
  %.not7.i93 = icmp eq ptr %i.ej, %.sroa.0174.0
  br i1 %.not7.i93, label %._crit_edge.i94, label %.lr.ph.i91, !llvm.loop !12167

._crit_edge.i94:                                  ; preds = %.lr.ph.i91, %.preheader.i89
  %.0.lcssa.i95 = phi ptr [ %7, %.preheader.i89 ], [ %i.en, %.lr.ph.i91 ] ; 2 uses
  %.not8.i96 = icmp eq ptr %.sroa.0170.0, %.sroa.0193.0264
  br i1 %.not8.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i94
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0193.0264, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !338
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !338
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !338
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !338
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0193.0264, i64 12 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !338
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !338
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !338
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !338
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i94
  %i.ff = icmp eq ptr %.sroa.0170.0, %.sroa.0214.0269
  br i1 %i.ff, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = icmp eq ptr %.sroa.0214.0269, %.sroa.0193.0264
  %spec.select253 = select i1 %i.fg, ptr %.sroa.0170.0, ptr %.sroa.0214.0269
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %.sroa.0214.7 = phi ptr [ %.sroa.0214.0269, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %spec.select253, %bb.ab ], [ %.sroa.0193.0264, %bb.aa ]
  %.1.i97 = phi ptr [ %7, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %.0.lcssa.i95, %bb.ab ], [ %.0.lcssa.i95, %bb.aa ] ; 2 uses
  store ptr %.1.i97, ptr %i.b, align 8, !tbaa !331
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i101 = icmp eq ptr %.sroa.0170.0, %.sroa.0193.0264
  br i1 %.not.i101, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0193.0264, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !338
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !338
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !338
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !338
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 12 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0193.0264, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !338
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !338
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !338
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !338
  %i.fp = icmp eq ptr %.sroa.0170.0, %.sroa.0214.0269
  br i1 %i.fp, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = icmp eq ptr %.sroa.0214.0269, %.sroa.0193.0264
  %spec.select254 = select i1 %i.fq, ptr %.sroa.0170.0, ptr %.sroa.0214.0269
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100
  %i.fr = phi ptr [ %.1.i97, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %i.dt, %bb.ac ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.ad ]
  %i.fs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ad ]
  %.sroa.0214.1 = phi ptr [ %.sroa.0214.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %.sroa.0214.0269, %bb.ac ], [ %spec.select254, %bb.ae ], [ %.sroa.0193.0264, %bb.ad ]
  %i.ft = xor i1 %i.dr, %i.du
  %i.fu = zext i1 %i.ft to i8
  %i.fv = load ptr, ptr %19, align 8, !tbaa !478
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.fw = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.fx = phi ptr [ %i.fs, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.fy = phi i1 [ %i.dq, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0210.1 = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0214.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.fu, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.058272, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.fy, true
  %i.fz = sext i1 %not. to i64
  %.164 = add i64 %.063271, %i.fz
  br i1 %.not.i.i78, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %.sroa.0204.0267, align 8, !tbaa !468
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %2
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !466
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0204.4 = phi ptr [ %.sroa.0204.0267, %bb.af ], [ %i.gc, %bb.ag ] ; 2 uses
  store ptr %.sroa.0174.0, ptr %18, align 8, !tbaa !478
  %i.gd = load ptr, ptr %.sroa.0193.0264, align 8, !tbaa !468
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !466
  %i.gg = icmp ne i64 %.057273, 0
  %.neg = sext i1 %i.gg to i64
  %i.gh = add i64 %.057273, %.neg
  %i.gi = icmp ne i64 %i.ax, 0
  %.neg69 = sext i1 %i.gi to i64
  %i.gj = add i64 %.sroa.speculated228, %.neg69
  %i.gk = add i64 %.0239270, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gk, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !12176

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.gl = phi ptr [ %i.fw, %bb.ah ], [ %i.t, %bb.l ], [ %i.t, %bb.m ] ; 2 uses
  %i.gm = phi ptr [ %i.fx, %bb.ah ], [ %i.u, %bb.l ], [ %i.u, %bb.m ] ; 2 uses
  %.sroa.0204.0.lcssa.ph = phi ptr [ %.sroa.0204.4, %bb.ah ], [ %.sroa.0204.0267, %bb.l ], [ %.sroa.0204.0267, %bb.m ] ; 2 uses
  %.sroa.0210.0.lcssa.ph = phi ptr [ %.sroa.0210.1, %bb.ah ], [ %.sroa.0210.0268, %bb.l ], [ %.sroa.0210.0268, %bb.m ] ; 3 uses
  %.sroa.0214.0.lcssa.ph = phi ptr [ %.sroa.0214.2, %bb.ah ], [ %.sroa.0214.0269, %bb.l ], [ %.sroa.0214.0269, %bb.m ] ; 2 uses
  %.0239.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0239270, %bb.l ], [ %.0239270, %bb.m ] ; 2 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.ah ], [ %.058272, %bb.l ], [ 1, %bb.m ] ; 2 uses
  %.not4.i.i105 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not4.i.i105, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.thread, %.lr.ph.i.i106
  %i.gn = phi ptr [ %i.gw, %.lr.ph.i.i106 ], [ %.sroa.0210.0.lcssa.ph, %.thread ] ; 3 uses
  %.05.i.i107 = phi ptr [ %i.gt, %.lr.ph.i.i106 ], [ %i.gm, %.thread ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %.05.i.i107, align 4, !tbaa !338, !noalias !12218
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !347, !noalias !12218
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !338, !noalias !12218
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !348, !noalias !12218
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !468, !noalias !12218
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !466, !noalias !12218
  %.not.i.i108 = icmp eq ptr %i.gt, %i.gl
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106, !llvm.loop !149

_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75, %.thread
  %.058.lcssa348 = phi i8 [ 1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75 ], [ %.058.lcssa.ph, %.thread ], [ %.058.lcssa.ph, %.lr.ph.i.i106 ]
  %.0239.lcssa330 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75 ], [ %.0239.lcssa.ph, %.thread ], [ %.0239.lcssa.ph, %.lr.ph.i.i106 ] ; 2 uses
  %.sroa.0214.0.lcssa329 = phi ptr [ %.sroa.0214.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75 ], [ %.sroa.0214.0.lcssa.ph, %.thread ], [ %.sroa.0214.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.sroa.0210.0.lcssa345 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75 ], [ %.sroa.0210.0.lcssa.ph, %.thread ], [ %.sroa.0210.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.sroa.0204.0.lcssa328 = phi ptr [ %.sroa.0204.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit75 ], [ %.sroa.0204.0.lcssa.ph, %.thread ], [ %.sroa.0204.0.lcssa.ph, %.lr.ph.i.i106 ] ; 2 uses
  %.not.i.i110 = icmp eq i64 %6, 0
  br i1 %.not.i.i110, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109
  %i.gx = load ptr, ptr %.sroa.0199.0, align 8, !tbaa !468, !noalias !12219
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %6
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !466, !noalias !12219
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, %bb.ai
  %.sroa.0136.0 = phi ptr [ %i.gz, %bb.ai ], [ %.sroa.0199.0, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container22stable_vector_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109 ] ; 3 uses
  %.not3.i.i = icmp eq ptr %.sroa.0199.0, %.sroa.0136.0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113, %.lr.ph.i.i114
  %i.ha = phi ptr [ %i.hi, %.lr.ph.i.i114 ], [ %.sroa.0199.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.hj, %.lr.ph.i.i114 ], [ %7, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !338
  store i32 %i.hc, ptr %.04.i.i, align 4, !tbaa !347
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !338
  %i.hf = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !348
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !468
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !466 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i115 = icmp eq ptr %i.hi, %.sroa.0136.0
  br i1 %.not.i.i115, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i114, !llvm.loop !152

_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i114, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113
  store ptr %7, ptr %i.a, align 8, !tbaa !331
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.hk, ptr %i.b, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %i.hk, ptr %20, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.hl = load ptr, ptr %0, align 8, !tbaa !478, !noalias !12220 ; 2 uses
  br i1 %i.p, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !468, !noalias !12220
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %5
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !466, !noalias !12220
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117: ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.aj
  %.sroa.0133.0 = phi ptr [ %i.hl, %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ho, %bb.aj ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117
  %i.hp = load ptr, ptr %.sroa.0133.0, align 8, !tbaa !468, !noalias !12221
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %4
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !466, !noalias !12221
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117, %bb.ak
  %.sroa.0134.0 = phi ptr [ %.sroa.0133.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit117 ], [ %i.hr, %bb.ak ]
  store ptr %.sroa.0134.0, ptr %22, align 8, !tbaa !478, !alias.scope !12222
  store ptr %.sroa.0214.0.lcssa329, ptr %23, align 8, !tbaa !478, !alias.scope !12223
  store ptr %.sroa.0199.0, ptr %24, align 8, !tbaa !478, !alias.scope !12224
  store ptr %7, ptr %25, align 8, !tbaa !387, !alias.scope !12225
  store ptr %.sroa.0136.0, ptr %26, align 8, !tbaa !478, !alias.scope !12226
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_NS3_IS8_EESA_SJ_NS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.175") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0239.lcssa330, i64 noundef 0, i64 noundef %.0239.lcssa330, i1 noundef zeroext true)
  %i.hs = load ptr, ptr %21, align 8, !tbaa !478, !noalias !12227
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.ht = load ptr, ptr %20, align 8, !tbaa !387  ; 2 uses
  %27 = trunc nuw i8 %.058.lcssa348 to i1
  %.sroa.speculated209 = select i1 %27, ptr %.sroa.0210.0.lcssa345, ptr %.sroa.0204.0.lcssa328
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !331 ; 3 uses
  %.not15.i = icmp eq ptr %i.hu, %i.ht
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_22stable_vector_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119, %bb.ao
  %.sroa.0127.0 = phi ptr [ %.sroa.0127.1, %bb.ao ], [ %.sroa.0204.0.lcssa328, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.ao ], [ %i.hs, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119 ] ; 3 uses
  %.016.i = phi ptr [ %.1.i121, %bb.ao ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119 ] ; 4 uses
  %i.hv = icmp eq ptr %.sroa.speculated209, %.sroa.0127.0
  br i1 %i.hv, label %.lr.ph.i.i.i, label %bb.al

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i120, %.lr.ph.i.i.i
  %i.hw = phi ptr [ %i.ia, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i120 ]
  %.05.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i120 ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !468, !noalias !12228
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !466, !noalias !12228 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.hx, align 4, !tbaa !338, !noalias !12228
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !347, !noalias !12228
  %i.id = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !338, !noalias !12228
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !348, !noalias !12228
  %.not.i.i.i124 = icmp eq ptr %i.hu, %i.hx
  br i1 %.not.i.i.i124, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_22stable_vector_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !155

bb.al:                                            ; preds = %.lr.ph.i120
  %i.ig = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.ih = load ptr, ptr %.sroa.0127.0, align 8, !tbaa !468
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !466 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !338 ; 2 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !338 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.io = load ptr, ptr %.sroa.0.0, align 8, !tbaa !468
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !466 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.im, ptr %i.ir, align 4, !tbaa !347
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.it = load ptr, ptr %i.ij, align 8, !tbaa !468
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !466
  %i.iw = load ptr, ptr %.sroa.0.0, align 8, !tbaa !468
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !466 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %i.il, ptr %i.iz, align 4, !tbaa !347
  %i.ja = getelementptr inbounds i8, ptr %.016.i, i64 -4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0127.1 = phi ptr [ %i.ij, %bb.am ], [ %i.iv, %bb.an ]
  %.sroa.0.1 = phi ptr [ %i.iq, %bb.am ], [ %i.iy, %bb.an ] ; 2 uses
  %.sink.in.i = phi ptr [ %i.is, %bb.am ], [ %i.ja, %bb.an ]
  %.1.i121 = phi ptr [ %.016.i, %bb.am ], [ %i.ig, %bb.an ] ; 2 uses
  %.sink.i122 = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 12
  store i32 %.sink.i122, ptr %i.jb, align 4, !tbaa !348
  %.not.i123 = icmp eq ptr %i.hu, %.1.i121
  br i1 %.not.i123, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_22stable_vector_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i120, !llvm.loop !156

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_22stable_vector_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ao, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 11 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 7 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.175", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !478, !noalias !12306 ; 3 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468, !noalias !12306
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !466, !noalias !12306
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0230.5 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.f = load ptr, ptr %7, align 8, !tbaa !478    ; 4 uses
  store ptr %i.f, ptr %18, align 8, !tbaa !478
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.f, ptr %19, align 8, !tbaa !478
  %i.g = load ptr, ptr %1, align 8, !tbaa !478    ; 4 uses
  %.not.i.i66 = icmp eq i64 %3, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !468, !noalias !12307
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %3
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466, !noalias !12307
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.c
  %.sroa.0220.3 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %i.j, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %.sroa.0220.3, ptr %20, align 8, !tbaa !478
  %i.k = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i68, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67
  %i.l = load ptr, ptr %.sroa.0220.3, align 8, !tbaa !468, !noalias !12308
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !466, !noalias !12308
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67, %bb.d
  %.sroa.0215.0 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit67 ], [ %i.n, %bb.d ] ; 6 uses
  %i.o = icmp eq i64 %5, 0                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0215.0, i64 8
  %.not279 = icmp eq i64 %i.a, 0
  br i1 %.not279, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69
  %i.q = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.r = add i64 %i.q, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.a)
  %.not.i.i72 = icmp eq i64 %2, 0                 ; 2 uses
  %.not62 = icmp eq i64 %6, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ah
  %i.s = phi ptr [ %i.f, %.lr.ph ], [ %i.gk, %bb.ah ] ; 4 uses
  %i.t = phi ptr [ %i.f, %.lr.ph ], [ %i.gl, %bb.ah ] ; 4 uses
  %i.u = phi ptr [ %.sroa.0220.3, %.lr.ph ], [ %.sroa.0190.0, %bb.ah ] ; 9 uses
  %.051290 = phi i64 [ %i.q, %.lr.ph ], [ %i.gv, %bb.ah ] ; 4 uses
  %.052289 = phi i8 [ 1, %.lr.ph ], [ %.153, %bb.ah ] ; 5 uses
  %.057288 = phi i64 [ %5, %.lr.ph ], [ %.158, %bb.ah ] ; 2 uses
  %.0255287 = phi i64 [ %i.a, %.lr.ph ], [ %i.gy, %bb.ah ] ; 4 uses
  %.sroa.0230.0286 = phi ptr [ %.sroa.0230.5, %.lr.ph ], [ %.sroa.0230.2, %bb.ah ] ; 16 uses
  %.sroa.0226.0285 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0226.1, %bb.ah ] ; 5 uses
  %.sroa.0220.0284 = phi ptr [ %.sroa.0220.3, %.lr.ph ], [ %.sroa.0220.4, %bb.ah ] ; 6 uses
  %.sroa.0209.0281 = phi ptr [ %i.b, %.lr.ph ], [ %i.gt, %bb.ah ] ; 19 uses
  %.val278280 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gx, %bb.ah ] ; 3 uses
  %i.v = icmp ult i64 %.051290, %.val278280
  br i1 %i.v, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !468  ; 2 uses
  %i.x = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !468 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.051290, %.lr.ph.i ], [ %i.au, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %.thread20.i ] ; 4 uses
  %i.y = mul i64 %.01822.i, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !466
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = mul i64 %.023.i, %2
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !466
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.01822.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !466
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.023.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !466
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.af, align 4, !tbaa !338 ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !338 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp slt i32 %i.an, %i.am
  br i1 %i.ap, label %.thread20.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !338
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  store ptr %.sroa.0190.0, ptr %11, align 8, !tbaa !478, !noalias !12319
  store ptr %.sroa.0197.0, ptr %12, align 8, !tbaa !478, !noalias !12319
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %21, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

bb.w:                                             ; preds = %.thread341, %bb.u
  %i.dy = phi i1 [ true, %.thread341 ], [ %i.bz, %bb.u ]
  store ptr %.sroa.0226.0285, ptr %13, align 8, !tbaa !478, !noalias !12319
  store ptr %.sroa.0220.0284, ptr %14, align 8, !tbaa !478, !noalias !12319
  store ptr %.sroa.0190.0, ptr %15, align 8, !tbaa !478, !noalias !12319
  store ptr %.sroa.0197.0, ptr %16, align 8, !tbaa !478, !noalias !12319
  store ptr %8, ptr %17, align 8, !tbaa !385, !noalias !12319
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %21, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit: ; preds = %bb.v, %bb.w
  %i.dz = phi i1 [ %i.bz, %bb.v ], [ %i.dy, %bb.w ]
  %i.ea = phi i1 [ true, %bb.v ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.eb = load ptr, ptr %18, align 8, !tbaa !478  ; 4 uses
  %i.ec = load ptr, ptr %19, align 8, !tbaa !478  ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ed, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %i.ee = load ptr, ptr %7, align 8, !tbaa !478   ; 6 uses
  store ptr %i.ee, ptr %19, align 8, !tbaa !478
  store ptr %i.ee, ptr %18, align 8, !tbaa !478
  %i.ef = load ptr, ptr %.sroa.0190.0, align 8, !tbaa !468 ; 2 uses
  %i.eg = load ptr, ptr %20, align 8, !tbaa !478  ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !468 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = load ptr, ptr %.sroa.0195.0257, align 8, !tbaa !468, !noalias !12320
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !466, !noalias !12320
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0162.0 = phi ptr [ %.sroa.0195.0257, %bb.x ], [ %i.ep, %bb.y ] ; 2 uses
  %.not.i82 = icmp eq ptr %i.eg, %.sroa.0162.0
  br i1 %.not.i82, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91, label %.preheader.i83

.preheader.i83:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %.not68.i84 = icmp eq ptr %i.eg, %.sroa.0190.0
  br i1 %.not68.i84, label %._crit_edge.i87, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i83, %.lr.ph.i85
  %.sroa.0153.0 = phi ptr [ %i.ew, %.lr.ph.i85 ], [ %.sroa.0162.0, %.preheader.i83 ] ; 3 uses
  %.sroa.0151.0 = phi ptr [ %i.ez, %.lr.ph.i85 ], [ %i.ee, %.preheader.i83 ] ; 3 uses
  %i.eq = phi ptr [ %i.et, %.lr.ph.i85 ], [ %i.eg, %.preheader.i83 ] ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !468, !noalias !12321
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !466, !noalias !12321 ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0153.0, align 8, !tbaa !468, !noalias !12322
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !466, !noalias !12322
  %i.ex = load ptr, ptr %.sroa.0151.0, align 8, !tbaa !468, !noalias !12323
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !466, !noalias !12323 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !12324
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !338, !noalias !12324
  store i32 %i.fd, ptr %i.fa, align 8, !tbaa !347, !noalias !12324
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 12 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !338, !noalias !12324
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 12
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !348, !noalias !12324
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !338, !noalias !12324
  store i32 %i.fi, ptr %i.fc, align 8, !tbaa !347, !noalias !12324
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !338, !noalias !12324
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !348, !noalias !12324
  store i64 %i.fb, ptr %i.fh, align 8, !noalias !12324
  %.not6.i86 = icmp eq ptr %i.et, %.sroa.0190.0
  br i1 %.not6.i86, label %._crit_edge.i87, label %.lr.ph.i85, !llvm.loop !12257

._crit_edge.i87:                                  ; preds = %.lr.ph.i85, %.preheader.i83
  %.sroa.0151.1 = phi ptr [ %i.ee, %.preheader.i83 ], [ %i.ez, %.lr.ph.i85 ] ; 2 uses
  %.not7.i88 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not7.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i87
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !338, !noalias !12324
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !338, !noalias !12324
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !338, !noalias !12324
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !338, !noalias !12324
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !338, !noalias !12324
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !338, !noalias !12324
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !338, !noalias !12324
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !338, !noalias !12324
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i87
  %i.ft = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.ft, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select269 = select i1 %i.fu, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %.sroa.0151.2 = phi ptr [ %i.ee, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %.sroa.0151.1, %bb.ab ], [ %.sroa.0151.1, %bb.aa ] ; 2 uses
  %.sroa.0230.7 = phi ptr [ %.sroa.0230.0286, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %spec.select269, %bb.ab ], [ %.sroa.0209.0281, %bb.aa ]
  store ptr %.sroa.0151.2, ptr %19, align 8, !tbaa !478
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i92 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not.i92, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !338
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !338
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !338
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !338
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !338
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !338
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !338
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !338
  %i.gd = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.gd, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select270 = select i1 %i.ge, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91
  %i.gf = phi ptr [ %.sroa.0151.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.ad ]
  %i.gg = phi ptr [ %i.ee, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %i.eb, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.ad ]
  %.sroa.0230.1 = phi ptr [ %.sroa.0230.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %.sroa.0230.0286, %bb.ac ], [ %spec.select270, %bb.ae ], [ %.sroa.0209.0281, %bb.ad ]
  %i.gh = xor i1 %i.ea, %i.ed
  %i.gi = zext i1 %i.gh to i8
  %i.gj = load ptr, ptr %21, align 8, !tbaa !478
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.gk = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0170.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.gl = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.cs, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.gm = phi i1 [ %i.dz, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0226.1 = phi ptr [ %i.gj, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %i.u, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0230.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.153 = phi i8 [ %i.gi, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEEvT_S9_RS9_.exit ], [ %.052289, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gm, true
  %i.gn = sext i1 %not. to i64
  %.158 = add i64 %.057288, %i.gn
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = load ptr, ptr %.sroa.0220.0284, align 8, !tbaa !468
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %2
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !466
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0220.4 = phi ptr [ %.sroa.0220.0284, %bb.af ], [ %i.gq, %bb.ag ] ; 2 uses
  store ptr %.sroa.0190.0, ptr %20, align 8, !tbaa !478
  %i.gr = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !468
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !466
  %i.gu = icmp ne i64 %.051290, 0
  %.neg = sext i1 %i.gu to i64
  %i.gv = add i64 %.051290, %.neg
  %i.gw = icmp ne i64 %i.aw, 0
  %.neg63 = sext i1 %i.gw to i64
  %i.gx = add i64 %.sroa.speculated244, %.neg63
  %i.gy = add i64 %.0255287, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !12270

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.gz = phi ptr [ %i.gk, %bb.ah ], [ %i.s, %bb.l ], [ %i.s, %bb.m ] ; 2 uses
  %i.ha = phi ptr [ %i.gl, %bb.ah ], [ %i.t, %bb.l ], [ %i.t, %bb.m ] ; 2 uses
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.4, %bb.ah ], [ %.sroa.0220.0284, %bb.l ], [ %.sroa.0220.0284, %bb.m ] ; 2 uses
  %.sroa.0226.0.lcssa.ph = phi ptr [ %.sroa.0226.1, %bb.ah ], [ %.sroa.0226.0285, %bb.l ], [ %.sroa.0226.0285, %bb.m ] ; 3 uses
  %.sroa.0230.0.lcssa.ph = phi ptr [ %.sroa.0230.2, %bb.ah ], [ %.sroa.0230.0286, %bb.l ], [ %.sroa.0230.0286, %bb.m ] ; 2 uses
  %.0255.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0255287, %bb.l ], [ %.0255287, %bb.m ] ; 2 uses
  %.052.lcssa.ph = phi i8 [ %.153, %bb.ah ], [ %.052289, %bb.l ], [ 1, %bb.m ] ; 2 uses
  %.not1.i.i96 = icmp eq ptr %i.ha, %i.gz
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.thread, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.hp, %.lr.ph.i.i97 ], [ %.sroa.0226.0.lcssa.ph, %.thread ] ; 3 uses
  %i.hb = phi ptr [ %i.hm, %.lr.ph.i.i97 ], [ %i.ha, %.thread ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !338, !noalias !12325
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !338, !noalias !12325
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !338, !noalias !12325
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !338, !noalias !12325
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 12 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !338, !noalias !12325
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !338, !noalias !12325
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !338, !noalias !12325
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !338, !noalias !12325
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !468, !noalias !12325
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !466, !noalias !12325 ; 2 uses
  %i.hn = load ptr, ptr %.sroa.0.0.i98, align 8, !tbaa !468, !noalias !12325
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !466, !noalias !12325
  %.not.i.i99 = icmp eq ptr %i.hm, %i.gz
  br i1 %.not.i.i99, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97, !llvm.loop !157

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100: ; preds = %.lr.ph.i.i97, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69, %.thread
  %.052.lcssa368 = phi i8 [ 1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69 ], [ %.052.lcssa.ph, %.thread ], [ %.052.lcssa.ph, %.lr.ph.i.i97 ]
  %.0255.lcssa350 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69 ], [ %.0255.lcssa.ph, %.thread ], [ %.0255.lcssa.ph, %.lr.ph.i.i97 ] ; 2 uses
  %.sroa.0230.0.lcssa349 = phi ptr [ %.sroa.0230.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69 ], [ %.sroa.0230.0.lcssa.ph, %.thread ], [ %.sroa.0230.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.sroa.0226.0.lcssa365 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69 ], [ %.sroa.0226.0.lcssa.ph, %.thread ], [ %.sroa.0226.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.sroa.0220.0.lcssa348 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit69 ], [ %.sroa.0220.0.lcssa.ph, %.thread ], [ %.sroa.0220.0.lcssa.ph, %.lr.ph.i.i97 ] ; 2 uses
  %.not.i.i101 = icmp eq i64 %6, 0                ; 2 uses
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  %i.hq = load ptr, ptr %.sroa.0215.0, align 8, !tbaa !468, !noalias !12326
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %6
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !466, !noalias !12326
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, %bb.ai
  %.sroa.0142.0 = phi ptr [ %i.hs, %bb.ai ], [ %.sroa.0215.0, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100 ] ; 3 uses
  %i.ht = load ptr, ptr %7, align 8, !tbaa !478   ; 5 uses
  %.not1.i.i105 = icmp eq ptr %.sroa.0215.0, %.sroa.0142.0
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.ii, %.lr.ph.i.i106 ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104 ] ; 3 uses
  %i.hu = phi ptr [ %i.if, %.lr.ph.i.i106 ], [ %.sroa.0215.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !338, !noalias !12327
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !338, !noalias !12327
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !338, !noalias !12327
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !338, !noalias !12327
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 12 ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !338, !noalias !12327
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !338, !noalias !12327
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !338, !noalias !12327
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !338, !noalias !12327
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !468, !noalias !12327
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !466, !noalias !12327 ; 2 uses
  %i.ig = load ptr, ptr %.sroa.0.0.i107, align 8, !tbaa !468, !noalias !12327
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !466, !noalias !12327
  %.not.i.i108 = icmp eq ptr %i.if, %.sroa.0142.0
  br i1 %.not.i.i108, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106, !llvm.loop !157

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit104
  store ptr %i.ht, ptr %18, align 8, !tbaa !478
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109
  %i.ij = load ptr, ptr %i.ht, align 8, !tbaa !468, !noalias !12328
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %6
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !466, !noalias !12328
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, %bb.aj
  %.sroa.0139.0 = phi ptr [ %i.ht, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109 ], [ %i.il, %bb.aj ] ; 2 uses
  store ptr %.sroa.0139.0, ptr %19, align 8, !tbaa !478
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %.sroa.0139.0, ptr %22, align 8, !tbaa !478
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.im = load ptr, ptr %0, align 8, !tbaa !478, !noalias !12329 ; 2 uses
  br i1 %i.o, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !468, !noalias !12329
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %5
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !466, !noalias !12329
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111, %bb.ak
  %.sroa.0135.0 = phi ptr [ %i.im, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit111 ], [ %i.ip, %bb.ak ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113
  %i.iq = load ptr, ptr %.sroa.0135.0, align 8, !tbaa !468, !noalias !12330
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %4
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !466, !noalias !12330
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113, %bb.al
  %.sroa.0136.0 = phi ptr [ %.sroa.0135.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit113 ], [ %i.is, %bb.al ]
  store ptr %.sroa.0136.0, ptr %24, align 8, !tbaa !478, !alias.scope !12331
  store ptr %.sroa.0230.0.lcssa349, ptr %25, align 8, !tbaa !478, !alias.scope !12332
  store ptr %.sroa.0215.0, ptr %26, align 8, !tbaa !478, !alias.scope !12333
  store ptr %i.ht, ptr %27, align 8, !tbaa !478, !alias.scope !12334
  store ptr %.sroa.0142.0, ptr %28, align 8, !tbaa !478, !alias.scope !12335
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.175") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0255.lcssa350, i64 noundef 0, i64 noundef %.0255.lcssa350, i1 noundef zeroext true)
  %i.it = load ptr, ptr %23, align 8, !tbaa !478, !noalias !12336
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.iu = load ptr, ptr %22, align 8, !tbaa !478, !noalias !12337 ; 3 uses
  store ptr %i.iu, ptr %19, align 8, !tbaa !478
  %29 = trunc nuw i8 %.052.lcssa368 to i1
  %.sroa.speculated225 = select i1 %29, ptr %.sroa.0226.0.lcssa365, ptr %.sroa.0220.0.lcssa348
  %i.iv = load ptr, ptr %18, align 8, !tbaa !478  ; 3 uses
  %.not12.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not12.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_22stable_vector_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115, %bb.ap
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ap ], [ %.sroa.0220.0.lcssa348, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ %i.ka, %bb.ap ], [ %i.it, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115 ] ; 2 uses
  %i.iw = phi ptr [ %i.kk, %bb.ap ], [ %i.iu, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115 ] ; 2 uses
  %i.ix = icmp eq ptr %.sroa.speculated225, %.sroa.0126.0
  br i1 %i.ix, label %.lr.ph.i.i.i, label %bb.am

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i116, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i ], [ %.sroa.0123.0, %.lr.ph.i116 ]
  %i.iy = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %i.iw, %.lr.ph.i116 ]
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !468, !noalias !12338
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !466, !noalias !12338 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.jd = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !468, !noalias !12338
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !466, !noalias !12338 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jc, align 4, !tbaa !338, !noalias !12338
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !338, !noalias !12338
  store i32 %i.ji, ptr %i.jc, align 4, !tbaa !338, !noalias !12338
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !338, !noalias !12338
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 12 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !338, !noalias !12338
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !338, !noalias !12338
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !338, !noalias !12338
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !338, !noalias !12338
  %.not.i.i.i118 = icmp eq ptr %i.iv, %i.jb
  br i1 %.not.i.i.i118, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_22stable_vector_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !159

bb.am:                                            ; preds = %.lr.ph.i116
  %i.jn = load ptr, ptr %i.iw, align 8, !tbaa !468
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !466 ; 4 uses
  %i.jq = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !468
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !466 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !338 ; 2 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !338 ; 2 uses
  %i.jx = icmp slt i32 %i.jv, %i.jw
  %i.jy = load ptr, ptr %.sroa.0123.0, align 8, !tbaa !468
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !466 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !338 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 12 ; 2 uses
  br i1 %i.jx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ke = load ptr, ptr %i.jp, align 8, !tbaa !468
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !466
  store i32 %i.jw, ptr %i.kb, align 4, !tbaa !338
  store i32 %i.kc, ptr %i.ju, align 4, !tbaa !338
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.kh = load ptr, ptr %i.js, align 8, !tbaa !468
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !466
  store i32 %i.jv, ptr %i.kb, align 4, !tbaa !338
  store i32 %i.kc, ptr %i.jt, align 4, !tbaa !338
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink = phi ptr [ %i.jp, %bb.ao ], [ %i.js, %bb.an ]
  %.sroa.0126.1 = phi ptr [ %i.kj, %bb.ao ], [ %i.js, %bb.an ]
  %i.kk = phi ptr [ %i.jp, %bb.ao ], [ %i.kg, %bb.an ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sink, i64 12 ; 2 uses
  %i.km = load i32, ptr %i.kd, align 4, !tbaa !338
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !338
  store i32 %i.kn, ptr %i.kd, align 4, !tbaa !338
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !338
  %.not.i117 = icmp eq ptr %i.iv, %i.kk
  br i1 %.not.i117, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_22stable_vector_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i116, !llvm.loop !12305

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_22stable_vector_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ap, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !478, !noalias !12373 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468, !noalias !12373
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !466, !noalias !12373
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0142.1 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = mul i64 %i.a, %2
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !478, !noalias !12374 ; 9 uses
  %.not.i.i37 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !468, !noalias !12374
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !466, !noalias !12374
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit, %bb.c
  %.sroa.0139.0 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit ], [ %i.k, %bb.c ] ; 5 uses
  %.not.i.i39 = icmp eq i64 %6, 0
  br i1 %.not.i.i39, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38
  %i.l = load ptr, ptr %.sroa.0139.0, align 8, !tbaa !468, !noalias !12375
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %6
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !466, !noalias !12375
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38, %bb.d
  %.sroa.0138.0 = phi ptr [ %.sroa.0139.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38 ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = icmp eq i64 %5, 0
  %i.p = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.q = add i64 %i.p, 1
  %.sroa.speculated114 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.a)
  %.not.i.i41 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !468, !noalias !12376
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !466, !noalias !12376
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40, %bb.e
  %.sroa.0108.1 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit40 ], [ %i.t, %bb.e ]
  %.not191 = icmp eq i64 %i.a, 0                  ; 2 uses
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42
  %i.u = icmp ne i64 %6, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0139.0, i64 8
  %.not.i.i51 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42
  %.sroa.0142.0.lcssa = phi ptr [ %.sroa.0142.1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42 ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit42 ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit44, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !468, !noalias !12377
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %3
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !466, !noalias !12377
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit44

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit44: ; preds = %._crit_edge, %bb.f
  %.sroa.093.1 = phi ptr [ %i.h, %._crit_edge ], [ %i.y, %bb.f ]
  %.not.i.i45 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not.i.i45, label %._crit_edge210, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit46

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit46: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !468, !noalias !12378
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.035.lcssa
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !466, !noalias !12378 ; 2 uses
  %.not173203 = icmp eq ptr %i.b, %i.ab
  br i1 %.not173203, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit46
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.lcssa, i64 8
  %.not.i.i57 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit
  %.0200 = phi i64 [ %i.p, %.lr.ph ], [ %i.db, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 4 uses
  %.034199 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 2 uses
  %.035198 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ]
  %.sroa.0142.0197 = phi ptr [ %.sroa.0142.1, %.lr.ph ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 4 uses
  %.sroa.0108.0195 = phi ptr [ %.sroa.0108.1, %.lr.ph ], [ %.sroa.0108.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 10 uses
  %.0167194 = phi i64 [ %i.a, %.lr.ph ], [ %i.de, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 2 uses
  %.sroa.0120.0193 = phi ptr [ %i.b, %.lr.ph ], [ %i.cw, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 9 uses
  %.val190192 = phi i64 [ %.sroa.speculated114, %.lr.ph ], [ %i.dd, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.0200, %.val190192
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit48

.lr.ph.i:                                         ; preds = %bb.g
  %i.ae = load ptr, ptr %.sroa.0108.0195, align 8, !tbaa !468 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %.sroa.6.1.i108 = phi ptr [ %.sroa.6.1.i89353, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit ], [ %.sroa.6.1.i89353, %bb.aq ], [ %i.ja, %bb.ar ]
  %.sroa.0.0.i109 = phi ptr [ %.sroa.0.0.i90355, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit ], [ %i.iv, %bb.aq ], [ %i.je, %bb.ar ] ; 2 uses
  %.not.i110 = icmp eq ptr %i.hv, %.sroa.0.0.i109
  br i1 %.not.i110, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125, label %.lr.ph.i113

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread: ; preds = %bb.ao
  %.not.i110360 = icmp eq ptr %.sroa.0.0.i95, %.sroa.0.0.i90355
  br i1 %.not.i110360, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125, label %._crit_edge.i118

.lr.ph.i113:                                      ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116
  %i.jf = phi ptr [ %i.jm, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.ii, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.5208.0 = phi ptr [ %.sroa.5208.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.hx, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %.sroa.6.1.i108, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %.sroa.0201.0 = phi ptr [ %.sroa.0201.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %.sroa.0.0.i109, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 4 uses
  %i.jg = phi ptr [ %.sroa.0206.0, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.hv, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %.012.i114 = phi ptr [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1024
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.as, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115, !prof !344

bb.as:                                            ; preds = %.lr.ph.i113
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.5208.0, i64 8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !331, !noalias !21707 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115: ; preds = %bb.as, %.lr.ph.i113
  %i.jm = phi ptr [ %i.jl, %bb.as ], [ %i.jf, %.lr.ph.i113 ]
  %.sroa.5208.1 = phi ptr [ %i.jk, %bb.as ], [ %.sroa.5208.0, %.lr.ph.i113 ]
  %.sroa.0206.0 = phi ptr [ %i.jl, %bb.as ], [ %i.jh, %.lr.ph.i113 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0201.0, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %.sroa.5.0, align 8, !tbaa !331, !noalias !21708
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1024
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.at, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116, !prof !344

bb.at:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !331, !noalias !21708
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116: ; preds = %bb.at, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115
  %.sroa.5.1 = phi ptr [ %i.jr, %bb.at ], [ %.sroa.5.0, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115 ]
  %.sroa.0201.1 = phi ptr [ %i.js, %bb.at ], [ %i.jn, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit.i115 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i114, i64 8 ; 2 uses
  %i.ju = load i32, ptr %.sroa.0201.0, align 4, !tbaa !338
  store i32 %i.ju, ptr %.012.i114, align 4, !tbaa !347
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0201.0, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !338
  %i.jx = getelementptr inbounds nuw i8, ptr %.012.i114, i64 4
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !348
  %i.jy = load i32, ptr %i.jg, align 4, !tbaa !338
  store i32 %i.jy, ptr %.sroa.0201.0, align 4, !tbaa !347
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !338
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !348
  %.not9.i117 = icmp eq ptr %.sroa.0206.0, %.sroa.0.0.i95
  br i1 %.not9.i117, label %._crit_edge.i118, label %.lr.ph.i113, !llvm.loop !21656

._crit_edge.i118:                                 ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread
  %.0.lcssa.i119 = phi ptr [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread ], [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEi.exit6.i116 ] ; 2 uses
  %.not10.i120 = icmp eq ptr %.sroa.0.0.i100, %.sroa.0283.0391
  br i1 %.not10.i120, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i118
  %i.kb = load i32, ptr %.sroa.0.0.i100, align 4, !tbaa !338
  %i.kc = load i32, ptr %.sroa.0283.0391, align 4, !tbaa !338
  store i32 %i.kc, ptr %.sroa.0.0.i100, align 4, !tbaa !338
  store i32 %i.kb, ptr %.sroa.0283.0391, align 4, !tbaa !338
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i100, i64 4 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0283.0391, i64 4 ; 2 uses
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !338
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !338
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !338
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !338
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i118
  %i.kh = icmp eq ptr %.sroa.0.0.i100, %.sroa.0324.0402
  br i1 %i.kh, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ki = icmp eq ptr %.sroa.0324.0402, %.sroa.0283.0391 ; 2 uses
  %spec.select521 = select i1 %i.ki, ptr %.sroa.0.0.i100, ptr %.sroa.0324.0402
  %spec.select522 = select i1 %i.ki, ptr %.sroa.6.1.i99, ptr %.sroa.12.0403
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125: ; preds = %bb.aw, %bb.av, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit
  %.sroa.0324.6 = phi ptr [ %.sroa.0324.0402, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.0324.0402, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select521, %bb.aw ], [ %.sroa.0283.0391, %bb.av ]
  %.sroa.12.6 = phi ptr [ %.sroa.12.0403, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.12.0403, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select522, %bb.aw ], [ %.sroa.11.0395, %bb.av ]
  %.1.i121 = phi ptr [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit ], [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.0.lcssa.i119, %bb.aw ], [ %.0.lcssa.i119, %bb.av ] ; 2 uses
  store ptr %.1.i121, ptr %i.b, align 8, !tbaa !331
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit

bb.ax:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %.not.i126 = icmp eq ptr %.sroa.0.0.i100, %.sroa.0283.0391
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kj = load i32, ptr %.sroa.0.0.i100, align 4, !tbaa !338
  %i.kk = load i32, ptr %.sroa.0283.0391, align 4, !tbaa !338
  store i32 %i.kk, ptr %.sroa.0.0.i100, align 4, !tbaa !338
  store i32 %i.kj, ptr %.sroa.0283.0391, align 4, !tbaa !338
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i100, i64 4 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0283.0391, i64 4 ; 2 uses
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !338
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !338
  store i32 %i.ko, ptr %i.kl, align 4, !tbaa !338
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !338
  %i.kp = icmp eq ptr %.sroa.0.0.i100, %.sroa.0324.0402
  br i1 %i.kp, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kq = icmp eq ptr %.sroa.0324.0402, %.sroa.0283.0391 ; 2 uses
  %spec.select523 = select i1 %i.kq, ptr %.sroa.0.0.i100, ptr %.sroa.0324.0402
  %spec.select524 = select i1 %i.kq, ptr %.sroa.6.1.i99, ptr %.sroa.12.0403
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit: ; preds = %bb.az, %bb.ay, %bb.ax, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125
  %i.kr = phi ptr [ %.1.i121, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125 ], [ %i.ht, %bb.ax ], [ %i.ht, %bb.az ], [ %i.ht, %bb.ay ]
  %i.ks = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125 ], [ %i.hs, %bb.ax ], [ %i.hs, %bb.az ], [ %i.hs, %bb.ay ]
  %.sroa.0324.1 = phi ptr [ %.sroa.0324.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125 ], [ %.sroa.0324.0402, %bb.ax ], [ %spec.select523, %bb.az ], [ %.sroa.0283.0391, %bb.ay ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit125 ], [ %.sroa.12.0403, %bb.ax ], [ %spec.select524, %bb.az ], [ %.sroa.11.0395, %bb.ay ]
  %i.kt = xor i1 %i.hr, %i.hu
  %i.ku = zext i1 %i.kt to i8
  %i.kv = load ptr, ptr %21, align 8, !tbaa !525
  %i.kw = load ptr, ptr %i.bu, align 8, !tbaa !526
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.kx = phi ptr [ %i.kr, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %i.ky = phi ptr [ %i.ks, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %i.kz = phi i1 [ %i.hq, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0316.1 = phi ptr [ %i.kv, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.10320.1 = phi ptr [ %i.kw, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0324.2 = phi ptr [ %.sroa.0324.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %.sroa.0324.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %.sroa.12.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.ku, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEEvT_S9_RS9_.exit ], [ %.058406, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.kz, true
  %i.la = sext i1 %not. to i64
  %.164 = add i64 %.063405, %i.la
  br i1 %.not.i.i87, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lb = load ptr, ptr %.sroa.9.0398, align 8, !tbaa !331
  %i.lc = ptrtoint ptr %.sroa.0304.0399 to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3
  %i.lg = add nsw i64 %i.lf, %2                   ; 4 uses
  %or.cond.i = icmp ult i64 %i.lg, 128
  br i1 %or.cond.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lh = getelementptr inbounds [8 x i8], ptr %.sroa.0304.0399, i64 %2
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

bb.bd:                                            ; preds = %bb.bb
  %i.li = icmp sgt i64 %i.lg, 0
  %i.lj = lshr i64 %i.lg, 7                       ; 2 uses
  %i.lk = or disjoint i64 %i.lj, -144115188075855872
  %i.ll = select i1 %i.li, i64 %i.lj, i64 %i.lk   ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %.sroa.9.0398, i64 %i.ll ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !331
  %i.lo = shl nsw i64 %i.ll, 7
  %i.lp = sub nsw i64 %i.lg, %i.lo
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lp
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.bc, %bb.bd, %bb.ba
  %.sroa.9.4 = phi ptr [ %.sroa.9.0398, %bb.ba ], [ %.sroa.9.0398, %bb.bc ], [ %i.lm, %bb.bd ] ; 2 uses
  %.sroa.0304.3 = phi ptr [ %.sroa.0304.0399, %bb.ba ], [ %i.lh, %bb.bc ], [ %i.lq, %bb.bd ] ; 2 uses
  store ptr %.sroa.0.0.i95, ptr %18, align 8, !tbaa !525
  store ptr %.sroa.6.1.i94, ptr %i.ap, align 8, !tbaa !526
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0283.0391, i64 8 ; 2 uses
  %i.ls = load ptr, ptr %.sroa.11.0395, align 8, !tbaa !331
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1024
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %bb.be, label %bb.bf, !prof !344

bb.be:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.11.0395, i64 8 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !331
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit, %bb.be
  %.sroa.0283.2 = phi ptr [ %i.lw, %bb.be ], [ %i.lr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit ]
  %.sroa.11.2 = phi ptr [ %i.lv, %bb.be ], [ %.sroa.11.0395, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit ]
  %i.lx = icmp ne i64 %.057407, 0
  %.neg = sext i1 %i.lx to i64
  %i.ly = add i64 %.057407, %.neg
  %i.lz = icmp ne i64 %i.bz, 0
  %.neg69 = sext i1 %i.lz to i64
  %i.ma = add i64 %.sroa.speculated338, %.neg69
  %i.mb = add i64 %.0349404, -1                   ; 2 uses
  %.not = icmp eq i64 %i.mb, 0
  br i1 %.not, label %.thread, label %bb.k, !llvm.loop !21665

.thread:                                          ; preds = %bb.bf, %bb.w, %bb.v
  %i.mc = phi ptr [ %i.kx, %bb.bf ], [ %i.ea, %bb.v ], [ %i.ea, %bb.w ] ; 2 uses
  %i.md = phi ptr [ %i.ky, %bb.bf ], [ %i.dz, %bb.v ], [ %i.dz, %bb.w ] ; 2 uses
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.4, %bb.bf ], [ %.sroa.9.0398, %bb.v ], [ %.sroa.9.0398, %bb.w ] ; 2 uses
  %.sroa.0304.0.lcssa.ph = phi ptr [ %.sroa.0304.3, %bb.bf ], [ %.sroa.0304.0399, %bb.v ], [ %.sroa.0304.0399, %bb.w ] ; 2 uses
  %.sroa.0316.0.lcssa.ph = phi ptr [ %.sroa.0316.1, %bb.bf ], [ %.sroa.0316.0400, %bb.v ], [ %.sroa.0316.0400, %bb.w ] ; 3 uses
  %.sroa.10320.0.lcssa.ph = phi ptr [ %.sroa.10320.1, %bb.bf ], [ %.sroa.10320.0401, %bb.v ], [ %.sroa.10320.0401, %bb.w ] ; 2 uses
  %.sroa.0324.0.lcssa.ph = phi ptr [ %.sroa.0324.2, %bb.bf ], [ %.sroa.0324.0402, %bb.v ], [ %.sroa.0324.0402, %bb.w ] ; 2 uses
  %.sroa.12.0.lcssa.ph = phi ptr [ %.sroa.12.2, %bb.bf ], [ %.sroa.12.0403, %bb.v ], [ %.sroa.12.0403, %bb.w ] ; 2 uses
  %.0349.lcssa.ph = phi i64 [ 0, %bb.bf ], [ %.0349404, %bb.v ], [ %.0349404, %bb.w ] ; 2 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.bf ], [ %.058406, %bb.v ], [ 1, %bb.w ] ; 2 uses
  %.not4.i.i130 = icmp eq ptr %i.md, %i.mc
  br i1 %.not4.i.i130, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137, label %.lr.ph.i.preheader.i131

.lr.ph.i.preheader.i131:                          ; preds = %.thread
  %.pre.i132 = load ptr, ptr %.sroa.10320.0.lcssa.ph, align 8, !tbaa !331, !noalias !21709
  br label %.lr.ph.i.i133

.lr.ph.i.i133:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135, %.lr.ph.i.preheader.i131
  %i.me = phi ptr [ %i.mr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.pre.i132, %.lr.ph.i.preheader.i131 ] ; 2 uses
  %i.mf = phi ptr [ %i.ms, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.sroa.10320.0.lcssa.ph, %.lr.ph.i.preheader.i131 ] ; 2 uses
  %i.mg = phi ptr [ %i.mt, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.sroa.0316.0.lcssa.ph, %.lr.ph.i.preheader.i131 ] ; 3 uses
  %.05.i.i134 = phi ptr [ %i.ml, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %i.md, %.lr.ph.i.preheader.i131 ] ; 3 uses
  %i.mh = load i32, ptr %.05.i.i134, align 4, !tbaa !338, !noalias !21709
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !347, !noalias !21709
  %i.mi = getelementptr inbounds nuw i8, ptr %.05.i.i134, i64 4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !338, !noalias !21709
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !348, !noalias !21709
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i134, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 1024
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %bb.bg, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135, !prof !344

bb.bg:                                            ; preds = %.lr.ph.i.i133
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !331, !noalias !21709 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135: ; preds = %bb.bg, %.lr.ph.i.i133
  %i.mr = phi ptr [ %i.me, %.lr.ph.i.i133 ], [ %i.mq, %bb.bg ]
  %i.ms = phi ptr [ %i.mf, %.lr.ph.i.i133 ], [ %i.mp, %bb.bg ]
  %i.mt = phi ptr [ %i.mm, %.lr.ph.i.i133 ], [ %i.mq, %bb.bg ]
  %.not.i.i136 = icmp eq ptr %i.ml, %i.mc
  br i1 %.not.i.i136, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137, label %.lr.ph.i.i133, !llvm.loop !226

_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81, %.thread
  %.058.lcssa530 = phi i8 [ 1, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.058.lcssa.ph, %.thread ], [ %.058.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.0349.lcssa508 = phi i64 [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.0349.lcssa.ph, %.thread ], [ %.0349.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ] ; 2 uses
  %.sroa.12.0.lcssa507 = phi ptr [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.12.0.lcssa.ph, %.thread ], [ %.sroa.12.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.0324.0.lcssa506 = phi ptr [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.0324.0.lcssa.ph, %.thread ], [ %.sroa.0324.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.0316.0.lcssa526 = phi ptr [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.0316.0.lcssa.ph, %.thread ], [ %.sroa.0316.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.0304.0.lcssa505 = phi ptr [ %.sroa.0.0.i75, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.0304.0.lcssa.ph, %.thread ], [ %.sroa.0304.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ] ; 2 uses
  %.sroa.9.0.lcssa504 = phi ptr [ %.sroa.6.1.i74, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.9.0.lcssa.ph, %.thread ], [ %.sroa.9.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.not.i.i138 = icmp eq i64 %6, 0
  br i1 %.not.i.i138, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137
  %i.mu = load ptr, ptr %.sroa.6.1.i79, align 8, !tbaa !331, !noalias !21710
  %i.mv = ptrtoint ptr %.sroa.0.0.i80 to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = ashr exact i64 %i.mx, 3
  %i.mz = add nsw i64 %i.my, %6                   ; 7 uses
  %or.cond.i.i139 = icmp ult i64 %i.mz, 128
  br i1 %or.cond.i.i139, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.na = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i80, i64 %6
  %i.nb = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i80, i64 %6
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147

bb.bj:                                            ; preds = %bb.bh
  %i.nc = icmp sgt i64 %i.mz, 0
  %i.nd = lshr i64 %i.mz, 7                       ; 2 uses
  %i.ne = or disjoint i64 %i.nd, -144115188075855872
  %i.nf = select i1 %i.nc, i64 %i.nd, i64 %i.ne   ; 2 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i79, i64 %i.nf ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !331, !noalias !21710
  %i.ni = shl nsw i64 %i.nf, 7
  %i.nj = sub nsw i64 %i.mz, %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = icmp sgt i64 %i.mz, 0
  %i.nm = lshr i64 %i.mz, 7                       ; 2 uses
  %i.nn = or disjoint i64 %i.nm, -144115188075855872
  %i.no = select i1 %i.nl, i64 %i.nm, i64 %i.nn   ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i79, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !331, !noalias !21711
  %i.nr = shl nsw i64 %i.no, 7
  %i.ns = sub nsw i64 %i.mz, %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.ns
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137, %bb.bi, %bb.bj
  %.sroa.0.0.i141383 = phi ptr [ %i.nk, %bb.bj ], [ %i.na, %bb.bi ], [ %.sroa.0.0.i80, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137 ]
  %.sroa.6.1.i140381 = phi ptr [ %i.ng, %bb.bj ], [ %.sroa.6.1.i79, %bb.bi ], [ %.sroa.6.1.i79, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137 ]
  %.sroa.0.0.i146 = phi ptr [ %i.nt, %bb.bj ], [ %i.nb, %bb.bi ], [ %.sroa.0.0.i80, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container14deque_iteratorIS5_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SB_S9_.exit137 ] ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.0.0.i80, %.sroa.0.0.i146
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147
  %.pre.i149 = load ptr, ptr %.sroa.6.1.i79, align 8, !tbaa !331
  br label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151, %.lr.ph.i.preheader.i148
  %i.nu = phi ptr [ %i.og, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.pre.i149, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %i.nv = phi ptr [ %i.oi, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.sroa.6.1.i79, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %i.nw = phi ptr [ %i.oh, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.sroa.0.0.i80, %.lr.ph.i.preheader.i148 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.oj, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %7, %.lr.ph.i.preheader.i148 ] ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !338
  store i32 %i.nx, ptr %.04.i.i, align 4, !tbaa !347
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !338
  %i.oa = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !348
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 1024
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %bb.bk, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151, !prof !344

bb.bk:                                            ; preds = %.lr.ph.i.i150
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !331 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151: ; preds = %bb.bk, %.lr.ph.i.i150
  %i.og = phi ptr [ %i.nu, %.lr.ph.i.i150 ], [ %i.of, %bb.bk ]
  %i.oh = phi ptr [ %i.ob, %.lr.ph.i.i150 ], [ %i.of, %bb.bk ] ; 2 uses
  %i.oi = phi ptr [ %i.nv, %.lr.ph.i.i150 ], [ %i.oe, %bb.bk ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i152 = icmp eq ptr %i.oh, %.sroa.0.0.i146
  br i1 %.not.i.i152, label %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i150, !llvm.loop !232

_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i151, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit147
  store ptr %7, ptr %i.a, align 8, !tbaa !331
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ok, ptr %i.b, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.ok, ptr %22, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ol = load ptr, ptr %0, align 8, !tbaa !525, !noalias !21712 ; 3 uses
  %i.om = load ptr, ptr %i.e, align 8, !tbaa !526, !noalias !21712 ; 4 uses
  br i1 %i.bh, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !331, !noalias !21712
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = ashr exact i64 %i.oq, 3
  %i.os = add nsw i64 %i.or, %5                   ; 4 uses
  %or.cond.i.i154 = icmp ult i64 %i.os, 128
  br i1 %or.cond.i.i154, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %5
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157

bb.bn:                                            ; preds = %bb.bl
  %i.ou = icmp sgt i64 %i.os, 0
  %i.ov = lshr i64 %i.os, 7                       ; 2 uses
  %i.ow = or disjoint i64 %i.ov, -144115188075855872
  %i.ox = select i1 %i.ou, i64 %i.ov, i64 %i.ow   ; 2 uses
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ox ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !331, !noalias !21712
  %i.pa = shl nsw i64 %i.ox, 7
  %i.pb = sub nsw i64 %i.os, %i.pa
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pb
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157: ; preds = %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.bm, %bb.bn
  %.sroa.6.1.i155 = phi ptr [ %i.om, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.om, %bb.bm ], [ %i.oy, %bb.bn ] ; 4 uses
  %.sroa.0.0.i156 = phi ptr [ %i.ol, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES7_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.ot, %bb.bm ], [ %i.pc, %bb.bn ] ; 3 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157
  %i.pd = load ptr, ptr %.sroa.6.1.i155, align 8, !tbaa !331, !noalias !21713
  %i.pe = ptrtoint ptr %.sroa.0.0.i156 to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = ashr exact i64 %i.pg, 3
  %i.pi = add nsw i64 %i.ph, %4                   ; 4 uses
  %or.cond.i.i159 = icmp ult i64 %i.pi, 128
  br i1 %or.cond.i.i159, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pj = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i156, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162

bb.bq:                                            ; preds = %bb.bo
  %i.pk = icmp sgt i64 %i.pi, 0
  %i.pl = lshr i64 %i.pi, 7                       ; 2 uses
  %i.pm = or disjoint i64 %i.pl, -144115188075855872
  %i.pn = select i1 %i.pk, i64 %i.pl, i64 %i.pm   ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i155, i64 %i.pn ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !331, !noalias !21713
  %i.pq = shl nsw i64 %i.pn, 7
  %i.pr = sub nsw i64 %i.pi, %i.pq
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pr
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157, %bb.bp, %bb.bq
  %.sroa.6.1.i160 = phi ptr [ %.sroa.6.1.i155, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157 ], [ %.sroa.6.1.i155, %bb.bp ], [ %i.po, %bb.bq ]
  %.sroa.0.0.i161 = phi ptr [ %.sroa.0.0.i156, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit157 ], [ %i.pj, %bb.bp ], [ %i.ps, %bb.bq ]
  store ptr %.sroa.0.0.i161, ptr %24, align 8, !tbaa !525, !alias.scope !21714
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sroa.6.1.i160, ptr %i.pt, align 8, !tbaa !526, !alias.scope !21714
  store ptr %.sroa.0324.0.lcssa506, ptr %25, align 8, !tbaa !525, !alias.scope !21715
  %i.pu = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.12.0.lcssa507, ptr %i.pu, align 8, !tbaa !526, !alias.scope !21715
  store ptr %.sroa.0.0.i80, ptr %26, align 8, !tbaa !525, !alias.scope !21716
  %i.pv = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.6.1.i79, ptr %i.pv, align 8, !tbaa !526, !alias.scope !21716
  store ptr %7, ptr %27, align 8, !tbaa !387, !alias.scope !21717
  store ptr %.sroa.0.0.i141383, ptr %28, align 8, !tbaa !525, !alias.scope !21718
  %i.pw = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.6.1.i140381, ptr %i.pw, align 8, !tbaa !526, !alias.scope !21718
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_NS3_IS8_EESA_SJ_NS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.213") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0349.lcssa508, i64 noundef 0, i64 noundef %.0349.lcssa508, i1 noundef zeroext true)
  %i.px = load ptr, ptr %23, align 8, !tbaa !525, !noalias !21719
  %i.py = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !526, !noalias !21719
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.qa = load ptr, ptr %22, align 8, !tbaa !387  ; 3 uses
  store ptr %i.qa, ptr %i.b, align 8, !tbaa !331
  %29 = trunc nuw i8 %.058.lcssa530 to i1
  %.sroa.speculated315 = select i1 %29, ptr %.sroa.0316.0.lcssa526, ptr %.sroa.0304.0.lcssa505
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !331 ; 3 uses
  %.not22.i = icmp eq ptr %i.qb, %i.qa
  br i1 %.not22.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_14deque_iteratorISD_Lb0ELj0ELj0EmEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162, %bb.cd
  %.sroa.6174.0 = phi ptr [ %.sroa.6174.3, %bb.cd ], [ %.sroa.9.0.lcssa504, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162 ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %.sroa.0172.2, %bb.cd ], [ %.sroa.0304.0.lcssa505, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162 ] ; 3 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.2, %bb.cd ], [ %i.pz, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162 ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.cd ], [ %i.px, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162 ] ; 5 uses
  %.023.i = phi ptr [ %.1.i164, %bb.cd ], [ %i.qa, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162 ] ; 4 uses
  %i.qc = icmp eq ptr %.sroa.speculated315, %.sroa.0172.0
  br i1 %i.qc, label %.lr.ph.i.preheader.i.i, label %bb.bt

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i163
  %.pre.i.i = load ptr, ptr %.sroa.6.0, align 8, !tbaa !331, !noalias !21720
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %i.qd = phi ptr [ %i.ql, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.pre.i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.qe = phi ptr [ %i.qm, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.sroa.6.0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %storemerge.i6.i.i.i = phi ptr [ %storemerge.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.sroa.0.0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.05.i.i.i = phi ptr [ %i.qf, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.023.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.qg = icmp eq ptr %storemerge.i6.i.i.i, %i.qd
  br i1 %i.qg, label %bb.br, label %bb.bs, !prof !344

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.qh = getelementptr inbounds i8, ptr %i.qe, i64 -8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !331, !noalias !21720 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.qk = getelementptr inbounds i8, ptr %storemerge.i6.i.i.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i: ; preds = %bb.bs, %bb.br
  %i.ql = phi ptr [ %i.qd, %bb.bs ], [ %i.qi, %bb.br ]
  %i.qm = phi ptr [ %i.qe, %bb.bs ], [ %i.qh, %bb.br ]
  %storemerge.i.i.i.i = phi ptr [ %i.qk, %bb.bs ], [ %i.qj, %bb.br ] ; 3 uses
  %i.qn = load i32, ptr %i.qf, align 4, !tbaa !338, !noalias !21720
  store i32 %i.qn, ptr %storemerge.i.i.i.i, align 4, !tbaa !347, !noalias !21720
  %i.qo = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !338, !noalias !21720
  %i.qq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 4
  store i32 %i.qp, ptr %i.qq, align 4, !tbaa !348, !noalias !21720
  %.not.i.i.i167 = icmp eq ptr %i.qb, %i.qf
  br i1 %.not.i.i.i167, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_14deque_iteratorISD_Lb0ELj0ELj0EmEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !230

bb.bt:                                            ; preds = %.lr.ph.i163
  %i.qr = getelementptr inbounds i8, ptr %.023.i, i64 -8 ; 2 uses
  %i.qs = load ptr, ptr %.sroa.6174.0, align 8, !tbaa !331 ; 2 uses
  %i.qt = icmp eq ptr %.sroa.0172.0, %i.qs
  br i1 %i.qt, label %bb.bu, label %bb.bv, !prof !344

bb.bu:                                            ; preds = %bb.bt
  %i.qu = getelementptr inbounds i8, ptr %.sroa.6174.0, i64 -8 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !331 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.qx = getelementptr inbounds i8, ptr %.sroa.0172.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.bv, %bb.bu
  %i.qy = phi ptr [ %i.qv, %bb.bu ], [ %i.qs, %bb.bv ]
  %.sroa.6174.1 = phi ptr [ %i.qu, %bb.bu ], [ %.sroa.6174.0, %bb.bv ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.qw, %bb.bu ], [ %i.qx, %bb.bv ] ; 4 uses
  %i.qz = load i32, ptr %i.qr, align 4, !tbaa !338 ; 2 uses
  %i.ra = load i32, ptr %storemerge.i.i, align 4, !tbaa !338 ; 2 uses
  %i.rb = icmp slt i32 %i.qz, %i.ra
  br i1 %i.rb, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.rc = load ptr, ptr %.sroa.6.0, align 8, !tbaa !331
  %i.rd = icmp eq ptr %.sroa.0.0, %i.rc
  br i1 %i.rd, label %bb.bx, label %bb.by, !prof !344

bb.bx:                                            ; preds = %bb.bw
  %i.re = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !331
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i

bb.by:                                            ; preds = %bb.bw
  %i.rh = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i: ; preds = %bb.by, %bb.bx
  %.sroa.6.3 = phi ptr [ %i.re, %bb.bx ], [ %.sroa.6.0, %bb.by ]
  %storemerge.i9.i = phi ptr [ %i.rg, %bb.bx ], [ %i.rh, %bb.by ] ; 2 uses
  store i32 %i.ra, ptr %storemerge.i9.i, align 4, !tbaa !347
  %i.ri = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4
  br label %bb.cd

bb.bz:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.rj = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qy, i64 1024
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %bb.ca, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, !prof !344

bb.ca:                                            ; preds = %bb.bz
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.6174.1, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.ca, %bb.bz
  %.sroa.6174.2 = phi ptr [ %i.rm, %bb.ca ], [ %.sroa.6174.1, %bb.bz ]
  %.sroa.0172.1 = phi ptr [ %i.rn, %bb.ca ], [ %i.rj, %bb.bz ]
  %i.ro = load ptr, ptr %.sroa.6.0, align 8, !tbaa !331
  %i.rp = icmp eq ptr %.sroa.0.0, %i.ro
  br i1 %i.rp, label %bb.cb, label %bb.cc, !prof !344

bb.cb:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i
  %i.rq = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !331
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i

bb.cc:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i
  %i.rt = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i: ; preds = %bb.cc, %bb.cb
  %.sroa.6.1 = phi ptr [ %i.rq, %bb.cb ], [ %.sroa.6.0, %bb.cc ]
  %storemerge.i11.i = phi ptr [ %i.rs, %bb.cb ], [ %i.rt, %bb.cc ] ; 2 uses
  store i32 %i.qz, ptr %storemerge.i11.i, align 4, !tbaa !347
  %i.ru = getelementptr inbounds i8, ptr %.023.i, i64 -4
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i
  %.sroa.6174.3 = phi ptr [ %.sroa.6174.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6174.2, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0172.2 = phi ptr [ %storemerge.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.0172.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.3, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0.1 = phi ptr [ %storemerge.i9.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %storemerge.i11.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ] ; 2 uses
  %.sink.in.i = phi ptr [ %i.ri, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %i.ru, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.1.i164 = phi ptr [ %.023.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit10.i ], [ %i.qr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit12.i ] ; 2 uses
  %.sink.i165 = load i32, ptr %.sink.in.i, align 4, !tbaa !338
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  store i32 %.sink.i165, ptr %i.rv, align 4, !tbaa !348
  %.not.i166 = icmp eq ptr %i.qb, %.1.i164
  br i1 %.not.i166, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_14deque_iteratorISD_Lb0ELj0ELj0EmEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i163, !llvm.loop !231

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_14deque_iteratorISD_Lb0ELj0ELj0EmEEEEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.cd, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 13 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 14 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 8 ; 10 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 6 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.213", align 16 ; 4 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 3 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 3 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 3 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 3 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.213", align 8 ; 3 uses
  %31 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %32 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %33 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %34 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %35 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = add i64 %5, %4                           ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !525, !noalias !21795 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !526, !noalias !21795 ; 5 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !331, !noalias !21795
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, %4                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.j, 128
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %i.b, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %i.j, 0
  %i.m = lshr i64 %i.j, 7                         ; 2 uses
  %i.n = or disjoint i64 %i.m, -144115188075855872
  %i.o = select i1 %i.l, i64 %i.m, i64 %i.n       ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !331, !noalias !21795
end_hunk_2
begin_hunk_3_@_ZN5boost9container3dtl22flat_tree_merge_uniqueINS0_8devectorISt4pairIiiEvvEENS_13move_iteratorIPS5_EENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_T0_SI_T1_NS_11move_detail5bool_ILb0EEE:bb.a
.preheader.i.i:                                   ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE5eraseEPS3_S5_.exit
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !338
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.ai, %.preheader.i.i ] ; 4 uses
  %i.ap = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aj
  br i1 %i.as, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e, !llvm.loop !27

bb.g:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !338
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.025.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.av, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !338
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ay = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.az = ptrtoint ptr %.0.i.i to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %.025.i.i to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bf = icmp eq ptr %i.av, %i.aj
  br i1 %i.bf, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.h, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.f, %bb.j, %bb.i, %_ZN5boost9container8devectorISt4pairIiiEvvE5eraseEPS3_S5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeINS_13move_iteratorIPS3_EEEES7_PKS3_T_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 17 uses
  %.not = icmp eq ptr %3, %2
  %i.e = load ptr, ptr %0, align 8, !tbaa !548    ; 8 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not49 = icmp ult i64 %i.s, %i.d
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre80 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre80, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp ult i64 %i.y, %i.d
  br i1 %.not48, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not78 = icmp eq ptr %2, null
  br i1 %.not78, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre79, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not72 = icmp ult i64 %i.ak, %i.am
  br i1 %.not72, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not47 = icmp ult i64 %i.ap, %i.d
  br i1 %.not47, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.r:                                             ; preds = %bb.m
  %.not94 = icmp eq ptr %1, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i: ; preds = %bb.r, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %bb.s
  %.not77 = icmp eq ptr %i.e, null
  br i1 %.not77, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit41.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not46 = icmp ult i64 %i.y, %i.d
  br i1 %.not46, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i54 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not75 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not73 = icmp eq ptr %i.bk, %1
  br i1 %.not73, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.i = icmp eq ptr %2, null
  br i1 %.not52.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread: ; preds = %bb.z
  %.not52.i67 = icmp eq ptr %2, null
  br i1 %.not52.i67, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i58, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEESB_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS4_EES7_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit53 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPS3_EEEEEESB_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.bl = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %.pre62, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIS4_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = ptrtoint ptr %i.j to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  ret ptr %i.bq
}
end_hunk_3
begin_hunk_4_@_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE19insert_unique_rangeIPKS4_EEvT_SF_:bb.a
.preheader.i.i:                                   ; preds = %bb.e
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.az, %bb.g ], [ %i.ar, %.preheader.i.i ] ; 4 uses
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !27

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.at, %bb.h ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !338
  %i.bf = icmp slt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bg = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bh = ptrtoint ptr %.0.i.i to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = ptrtoint ptr %.025.i.i to i64
  %i.bl = sub i64 %i.bk, %i.bg
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.bj, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = icmp eq ptr %i.bd, %i.e
  br i1 %i.bn, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container8devectorISt4pairIiiEvvE5eraseEPKS3_S6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeIPKS3_EEPS3_S7_T_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 17 uses
  %.not = icmp eq ptr %3, %2
  %i.e = load ptr, ptr %0, align 8, !tbaa !548    ; 8 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not48 = icmp ult i64 %i.s, %i.d
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre79 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre79, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp ult i64 %i.y, %i.d
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not77 = icmp eq ptr %2, null
  br i1 %.not77, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre78, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not71 = icmp ult i64 %i.ak, %i.am
  br i1 %.not71, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not46 = icmp ult i64 %i.ap, %i.d
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.r:                                             ; preds = %bb.m
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i: ; preds = %bb.r, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %bb.s
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit40.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not45 = icmp ult i64 %i.y, %i.d
  br i1 %.not45, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i53 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not74 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i53, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not72 = icmp eq ptr %i.bk, %1
  br i1 %.not72, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.i = icmp eq ptr %2, null
  br i1 %.not52.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread: ; preds = %bb.z
  %.not52.i66 = icmp eq ptr %2, null
  br i1 %.not52.i66, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EEEEPS3_SB_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPKS4_PS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit52 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EEEEPS3_SB_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.bl = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %.pre62, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = ptrtoint ptr %i.j to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  ret ptr %i.bq
}
end_hunk_4
begin_hunk_5_@_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_8devectorIS4_vvEEE19insert_unique_rangeIPS4_EEvT_SE_:bb.a
.preheader.i.i:                                   ; preds = %bb.e
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.az, %bb.g ], [ %i.ar, %.preheader.i.i ] ; 4 uses
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !27

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.at, %bb.h ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !338
  %i.bf = icmp slt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bg = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.bh = ptrtoint ptr %.0.i.i to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = ptrtoint ptr %.025.i.i to i64
  %i.bl = sub i64 %i.bk, %i.bg
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.bj, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = icmp eq ptr %i.bd, %i.e
  br i1 %i.bn, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_8devectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container8devectorISt4pairIiiEvvE5eraseEPKS3_S6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeIPS3_EES6_PKS3_T_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 17 uses
  %.not = icmp eq ptr %3, %2
  %i.e = load ptr, ptr %0, align 8, !tbaa !548    ; 8 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !344

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !550  ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !549
  %i.s = sub i64 %i.r, %i.n
  %.not48 = icmp ult i64 %i.s, %i.d
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !367

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre79 = load i64, ptr %i.m, align 8, !tbaa !550
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre79, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !551  ; 5 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp ult i64 %i.y, %i.d
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not77 = icmp eq ptr %2, null
  br i1 %.not77, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, label %bb.j, !prof !344

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !551
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre78, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !553
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not71 = icmp ult i64 %i.ak, %i.am
  br i1 %.not71, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !549
  %i.ap = sub i64 %i.ao, %i.n
  %.not46 = icmp ult i64 %i.ap, %i.d
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %bb.o, !prof !433

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.p, !prof !344

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.r:                                             ; preds = %bb.m
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i: ; preds = %bb.r, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %bb.s
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %_ZN5boost9container13move_backwardIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E17copy_n_and_updateIS7_EEvRS6_T_m.exit40.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !550
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !554
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not45 = icmp ult i64 %i.y, %i.d
  br i1 %.not45, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i53 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not74 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i53, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not72 = icmp eq ptr %i.bk, %1
  br i1 %.not72, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.x, !prof !445

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ]
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, !prof !344

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.i = icmp eq ptr %2, null
  br i1 %.not52.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread: ; preds = %bb.z
  %.not52.i66 = icmp eq ptr %2, null
  br i1 %.not52.i66, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57.thread, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i57, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !551
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !553
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPS3_EEEESA_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPS3_EEEESA_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i, label %bb.n, !prof !344

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ax = icmp ne ptr %.0.i.i.i, null
  %i.ay = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.az = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.az, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ba = icmp ne ptr %1, %i.ap
  %i.bb = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.ba, %i.bb
  %i.bc = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bc, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit, !prof !367

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.be = ptrtoint ptr %i.ap to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 4 %1, i64 %i.bg, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEEPS5_E31uninitialized_copy_n_and_updateIS7_EEvRS6_T_m.exit.i
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bi) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.q, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_S6_EEEEvRT_T0_SC_SC_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.bj = add i64 %i.ak, %i.am
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit
  %i.bk = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.bl = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %.pre62, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EES4_EES8_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.bm = ptrtoint ptr %1 to i64
  %i.bn = ptrtoint ptr %i.j to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  ret ptr %i.bq
}
end_hunk_5
