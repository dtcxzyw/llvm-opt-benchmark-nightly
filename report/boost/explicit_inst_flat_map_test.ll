Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  store ptr %.sroa.0180.0, ptr %12, align 8, !tbaa !292, !noalias !5402
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

bb.w:                                             ; preds = %.thread324, %bb.u
  %i.dp = phi i1 [ true, %.thread324 ], [ %i.ca, %bb.u ]
  store ptr %.sroa.0209.0267, ptr %13, align 8, !tbaa !292, !noalias !5402
  store ptr %.sroa.0203.0266, ptr %14, align 8, !tbaa !292, !noalias !5402
  store ptr %.sroa.0173.0, ptr %15, align 8, !tbaa !292, !noalias !5402
  store ptr %.sroa.0180.0, ptr %16, align 8, !tbaa !292, !noalias !5402
  store ptr %8, ptr %17, align 8, !tbaa !342, !noalias !5402
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7move_opEEET_SL_SL_RSL_SL_SL_RT0_SO_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit: ; preds = %bb.v, %bb.w
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
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !262 ; 4 uses
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !262 ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt                ; 2 uses
  br i1 %i.du, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.dv = load ptr, ptr %.sroa.0173.0, align 8, !tbaa !289 ; 2 uses
  %i.dw = load ptr, ptr %18, align 8, !tbaa !292  ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = load ptr, ptr %.sroa.0178.0240, align 8, !tbaa !289, !noalias !5403
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !287, !noalias !5403
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0150.0 = phi ptr [ %.sroa.0178.0240, %bb.x ], [ %i.ef, %bb.y ] ; 2 uses
  %.not.i88 = icmp eq ptr %i.dw, %.sroa.0150.0
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100, label %.preheader.i89

.preheader.i89:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %.not79.i90 = icmp eq ptr %i.dw, %.sroa.0173.0
  br i1 %.not79.i90, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.preheader.i89, %.lr.ph.i91
  %.sroa.0142.0 = phi ptr [ %i.em, %.lr.ph.i91 ], [ %.sroa.0150.0, %.preheader.i89 ] ; 3 uses
  %i.eg = phi ptr [ %i.ej, %.lr.ph.i91 ], [ %i.dw, %.preheader.i89 ] ; 3 uses
  %.010.i92 = phi ptr [ %i.en, %.lr.ph.i91 ], [ %7, %.preheader.i89 ] ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !289, !noalias !5404
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !287, !noalias !5404 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.0142.0, align 8, !tbaa !289, !noalias !5405
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !287, !noalias !5405
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i92, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !254
  store i32 %i.ep, ptr %.010.i92, align 4, !tbaa !254
  store i32 0, ptr %i.eo, align 8, !tbaa !254
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 12 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i92, i64 4
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !254
  store i32 %i.es, ptr %i.er, align 4, !tbaa !254
  store i32 0, ptr %i.eq, align 4, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !254
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !254
  store i32 0, ptr %i.et, align 8, !tbaa !254
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !254
  store i32 %i.ew, ptr %i.eq, align 4, !tbaa !254
  store i32 0, ptr %i.ev, align 4, !tbaa !254
  %.not7.i93 = icmp eq ptr %i.ej, %.sroa.0173.0
  br i1 %.not7.i93, label %._crit_edge.i94, label %.lr.ph.i91, !llvm.loop !5355

._crit_edge.i94:                                  ; preds = %.lr.ph.i91, %.preheader.i89
  %.0.lcssa.i95 = phi ptr [ %7, %.preheader.i89 ], [ %i.en, %.lr.ph.i91 ] ; 2 uses
  %.not8.i96 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not8.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i94
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !254
  store i32 0, ptr %i.ex, align 4, !tbaa !254
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !254
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !254
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !254
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 12 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 12 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !254
  store i32 0, ptr %i.fb, align 4, !tbaa !254
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !254
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !254
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !254
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i94
  %i.ff = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.ff, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select252 = select i1 %i.fg, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %.sroa.0213.7 = phi ptr [ %.sroa.0213.0268, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %spec.select252, %bb.ab ], [ %.sroa.0192.0263, %bb.aa ]
  %.1.i97 = phi ptr [ %7, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %.0.lcssa.i95, %bb.ab ], [ %.0.lcssa.i95, %bb.aa ] ; 2 uses
  store ptr %.1.i97, ptr %i.b, align 8, !tbaa !262
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i101 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not.i101, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !254
  store i32 0, ptr %i.fh, align 4, !tbaa !254
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !254
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !254
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !254
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 12 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !254
  store i32 0, ptr %i.fl, align 4, !tbaa !254
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !254
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !254
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !254
  %i.fp = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.fp, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select253 = select i1 %i.fq, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100
  %i.fr = phi ptr [ %.1.i97, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100 ], [ %i.dt, %bb.ac ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.ad ]
  %i.fs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100 ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ad ]
  %.sroa.0213.1 = phi ptr [ %.sroa.0213.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit100 ], [ %.sroa.0213.0268, %bb.ac ], [ %spec.select253, %bb.ae ], [ %.sroa.0192.0263, %bb.ad ]
  %i.ft = xor i1 %i.dr, %i.du
  %i.fu = zext i1 %i.ft to i8
  %i.fv = load ptr, ptr %19, align 8, !tbaa !292
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit
  %i.fw = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %i.fx = phi ptr [ %i.fs, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %i.fy = phi i1 [ %i.dq, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %.sroa.0209.1 = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %i.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.0213.2 = phi ptr [ %.sroa.0213.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.sroa.0213.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.fu, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.058271, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.fy, true
  %i.fz = sext i1 %not. to i64
  %.164 = add i64 %.063270, %i.fz
  br i1 %.not.i.i78, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %.sroa.0203.0266, align 8, !tbaa !289
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %2
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !287
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0203.4 = phi ptr [ %.sroa.0203.0266, %bb.af ], [ %i.gc, %bb.ag ] ; 2 uses
  store ptr %.sroa.0173.0, ptr %18, align 8, !tbaa !292
  %i.gd = load ptr, ptr %.sroa.0192.0263, align 8, !tbaa !289
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !287
  %i.gg = icmp ne i64 %.057272, 0
  %.neg = sext i1 %i.gg to i64
  %i.gh = add i64 %.057272, %.neg
  %i.gi = icmp ne i64 %i.ax, 0
  %.neg69 = sext i1 %i.gi to i64
  %i.gj = add i64 %.sroa.speculated227, %.neg69
  %i.gk = add i64 %.0238269, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gk, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !5364

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.gl = phi ptr [ %i.fw, %bb.ah ], [ %i.t, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %i.gm = phi ptr [ %i.fx, %bb.ah ], [ %i.u, %bb.m ], [ %i.u, %bb.l ] ; 2 uses
  %.sroa.0203.0.lcssa.ph = phi ptr [ %.sroa.0203.4, %bb.ah ], [ %.sroa.0203.0266, %bb.m ], [ %.sroa.0203.0266, %bb.l ] ; 3 uses
  %.sroa.0209.0.lcssa.ph = phi ptr [ %.sroa.0209.1, %bb.ah ], [ %.sroa.0209.0267, %bb.m ], [ %.sroa.0209.0267, %bb.l ] ; 2 uses
  %.sroa.0213.0.lcssa.ph = phi ptr [ %.sroa.0213.2, %bb.ah ], [ %.sroa.0213.0268, %bb.m ], [ %.sroa.0213.0268, %bb.l ] ; 2 uses
  %.0238.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0238269, %bb.m ], [ %.0238269, %bb.l ] ; 2 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.ah ], [ 1, %bb.m ], [ %.058271, %bb.l ]
  %27 = trunc nuw i8 %.058.lcssa.ph to i1
  %28 = select i1 %27, ptr %.sroa.0209.0.lcssa.ph, ptr %.sroa.0203.0.lcssa.ph ; 2 uses
  %.not4.i.i105 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not4.i.i105, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.thread, %.lr.ph.i.i106
  %i.gn = phi ptr [ %i.gw, %.lr.ph.i.i106 ], [ %.sroa.0209.0.lcssa.ph, %.thread ] ; 3 uses
  %.05.i.i107 = phi ptr [ %i.gt, %.lr.ph.i.i106 ], [ %i.gm, %.thread ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %.05.i.i107, align 4, !tbaa !254, !noalias !5406
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !254, !noalias !5406
  store i32 0, ptr %.05.i.i107, align 4, !tbaa !254, !noalias !5406
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !254, !noalias !5406
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !254, !noalias !5406
  store i32 0, ptr %i.gq, align 4, !tbaa !254, !noalias !5406
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !289, !noalias !5406
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !287, !noalias !5406
  %.not.i.i108 = icmp eq ptr %i.gt, %i.gl
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109, label %.lr.ph.i.i106, !llvm.loop !98

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit75, %.thread
  %.058.lcssa334 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit75 ], [ %28, %.thread ], [ %28, %.lr.ph.i.i106 ]
  %.0238.lcssa333 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit75 ], [ %.0238.lcssa.ph, %.thread ], [ %.0238.lcssa.ph, %.lr.ph.i.i106 ] ; 2 uses
  %.sroa.0213.0.lcssa332 = phi ptr [ %.sroa.0213.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit75 ], [ %.sroa.0213.0.lcssa.ph, %.thread ], [ %.sroa.0213.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.sroa.0203.0.lcssa331 = phi ptr [ %.sroa.0203.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit75 ], [ %.sroa.0203.0.lcssa.ph, %.thread ], [ %.sroa.0203.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.not.i.i110 = icmp eq i64 %6, 0
  br i1 %.not.i.i110, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109
  %i.gx = load ptr, ptr %.sroa.0198.0, align 8, !tbaa !289, !noalias !5407
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %6
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !287, !noalias !5407
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109, %bb.ai
  %.sroa.0135.0 = phi ptr [ %i.gz, %bb.ai ], [ %.sroa.0198.0, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_22stable_vector_iteratorIS8_Lb0EEEEET0_NS0_9forward_tET_SD_SB_.exit109 ] ; 3 uses
  %.not3.i.i = icmp eq ptr %.sroa.0198.0, %.sroa.0135.0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113, %.lr.ph.i.i114
  %i.ha = phi ptr [ %i.hi, %.lr.ph.i.i114 ], [ %.sroa.0198.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.hj, %.lr.ph.i.i114 ], [ %7, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !254
  store i32 %i.hc, ptr %.04.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.hb, align 4, !tbaa !254
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 12 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !254
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !254
  store i32 0, ptr %i.hd, align 4, !tbaa !254
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !289
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !287 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i115 = icmp eq ptr %i.hi, %.sroa.0135.0
  br i1 %.not.i.i115, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i114, !llvm.loop !104

_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %.lr.ph.i.i114, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.hk, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %i.hk, ptr %20, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.hl = load ptr, ptr %0, align 8, !tbaa !292, !noalias !5408 ; 2 uses
  br i1 %i.p, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !289, !noalias !5408
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %5
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !287, !noalias !5408
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117: ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit, %bb.aj
  %.sroa.0132.0 = phi ptr [ %i.hl, %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEES9_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.ho, %bb.aj ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117
  %i.hp = load ptr, ptr %.sroa.0132.0, align 8, !tbaa !289, !noalias !5409
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %4
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !287, !noalias !5409
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117, %bb.ak
  %.sroa.0133.0 = phi ptr [ %.sroa.0132.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit117 ], [ %i.hr, %bb.ak ]
  store ptr %.sroa.0133.0, ptr %22, align 8, !tbaa !292, !alias.scope !5410
  store ptr %.sroa.0213.0.lcssa332, ptr %23, align 8, !tbaa !292, !alias.scope !5411
  store ptr %.sroa.0198.0, ptr %24, align 8, !tbaa !292, !alias.scope !5412
  store ptr %7, ptr %25, align 8, !tbaa !345, !alias.scope !5413
  store ptr %.sroa.0135.0, ptr %26, align 8, !tbaa !292, !alias.scope !5414
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_NS3_ISA_EESC_SL_NS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.38") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0238.lcssa333, i64 noundef 0, i64 noundef %.0238.lcssa333, i1 noundef zeroext true)
  %i.hs = load ptr, ptr %21, align 8, !tbaa !292, !noalias !5415
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.ht = load ptr, ptr %20, align 8, !tbaa !345  ; 2 uses
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %.not15.i = icmp eq ptr %i.hu, %i.ht
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119, %bb.ao
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ao ], [ %.sroa.0203.0.lcssa331, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.ao ], [ %i.hs, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119 ] ; 3 uses
  %.016.i = phi ptr [ %.1.i121, %bb.ao ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119 ] ; 4 uses
  %i.hv = icmp eq ptr %.058.lcssa334, %.sroa.0126.0
  br i1 %i.hv, label %.lr.ph.i.i.i, label %bb.al

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i120, %.lr.ph.i.i.i
  %i.hw = phi ptr [ %i.ia, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i120 ]
  %.05.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i120 ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 4 uses
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !289, !noalias !5416
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !287, !noalias !5416 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.hx, align 4, !tbaa !254, !noalias !5416
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !254, !noalias !5416
  store i32 0, ptr %i.hx, align 4, !tbaa !254, !noalias !5416
  %i.id = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.if = load i32, ptr %i.id, align 4, !tbaa !254, !noalias !5416
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !254, !noalias !5416
  store i32 0, ptr %i.id, align 4, !tbaa !254, !noalias !5416
  %.not.i.i.i123 = icmp eq ptr %i.hu, %i.hx
  br i1 %.not.i.i.i123, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !102

bb.al:                                            ; preds = %.lr.ph.i120
  %i.ig = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 3 uses
  %i.ih = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !289
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !287 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !254 ; 2 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !254 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.io = load ptr, ptr %.sroa.0.0, align 8, !tbaa !289
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !287 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.im, ptr %i.ir, align 4, !tbaa !254
  store i32 0, ptr %i.ik, align 4, !tbaa !254
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !254
  store i32 %i.iu, ptr %i.it, align 4, !tbaa !254
  store i32 0, ptr %i.is, align 4, !tbaa !254
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.iv = load ptr, ptr %i.ij, align 8, !tbaa !289
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !287
  %i.iy = load ptr, ptr %.sroa.0.0, align 8, !tbaa !289
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !287 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i32 %i.il, ptr %i.jb, align 4, !tbaa !254
  store i32 0, ptr %i.ig, align 4, !tbaa !254
  %i.jc = getelementptr inbounds i8, ptr %.016.i, i64 -4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.je = load i32, ptr %i.jc, align 4, !tbaa !254
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !254
  store i32 0, ptr %i.jc, align 4, !tbaa !254
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0126.1 = phi ptr [ %i.ij, %bb.am ], [ %i.ix, %bb.an ]
  %.sroa.0.1 = phi ptr [ %i.iq, %bb.am ], [ %i.ja, %bb.an ]
  %.1.i121 = phi ptr [ %.016.i, %bb.am ], [ %i.ig, %bb.an ] ; 2 uses
  %.not.i122 = icmp eq ptr %i.hu, %.1.i121
  br i1 %.not.i122, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i120, !llvm.loop !103

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.ao, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 11 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 7 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !292, !noalias !5494 ; 3 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !5494
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287, !noalias !5494
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0230.5 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.f = load ptr, ptr %7, align 8, !tbaa !292    ; 4 uses
  store ptr %i.f, ptr %18, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.f, ptr %19, align 8, !tbaa !292
  %i.g = load ptr, ptr %1, align 8, !tbaa !292    ; 4 uses
  %.not.i.i66 = icmp eq i64 %3, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289, !noalias !5495
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %3
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287, !noalias !5495
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, %bb.c
  %.sroa.0220.3 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %i.j, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %.sroa.0220.3, ptr %20, align 8, !tbaa !292
  %i.k = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i68, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67
  %i.l = load ptr, ptr %.sroa.0220.3, align 8, !tbaa !289, !noalias !5496
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !287, !noalias !5496
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67, %bb.d
  %.sroa.0215.0 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit67 ], [ %i.n, %bb.d ] ; 6 uses
  %i.o = icmp eq i64 %5, 0                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0215.0, i64 8
  %.not279 = icmp eq i64 %i.a, 0
  br i1 %.not279, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69
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
  br i1 %i.v, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !289  ; 2 uses
  %i.x = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !289 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.051290, %.lr.ph.i ], [ %i.au, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %.thread20.i ] ; 4 uses
  %i.y = mul i64 %.01822.i, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !287
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = mul i64 %.023.i, %2
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !287
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.01822.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !287
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.023.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !287
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.af, align 4, !tbaa !254 ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !254 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  store ptr %.sroa.0220.0284, ptr %14, align 8, !tbaa !292, !noalias !5507
  store ptr %.sroa.0190.0, ptr %15, align 8, !tbaa !292, !noalias !5507
  store ptr %.sroa.0197.0, ptr %16, align 8, !tbaa !292, !noalias !5507
  store ptr %8, ptr %17, align 8, !tbaa !342, !noalias !5507
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET_SL_SL_RSL_SL_SL_RT0_SO_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %21, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit: ; preds = %bb.v, %bb.w
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
  %i.eb = load ptr, ptr %18, align 8, !tbaa !292  ; 4 uses
  %i.ec = load ptr, ptr %19, align 8, !tbaa !292  ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ed, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %i.ee = load ptr, ptr %7, align 8, !tbaa !292   ; 6 uses
  store ptr %i.ee, ptr %19, align 8, !tbaa !292
  store ptr %i.ee, ptr %18, align 8, !tbaa !292
  %i.ef = load ptr, ptr %.sroa.0190.0, align 8, !tbaa !289 ; 2 uses
  %i.eg = load ptr, ptr %20, align 8, !tbaa !292  ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = load ptr, ptr %.sroa.0195.0257, align 8, !tbaa !289, !noalias !5508
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !287, !noalias !5508
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0162.0 = phi ptr [ %.sroa.0195.0257, %bb.x ], [ %i.ep, %bb.y ] ; 2 uses
  %.not.i82 = icmp eq ptr %i.eg, %.sroa.0162.0
  br i1 %.not.i82, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91, label %.preheader.i83

.preheader.i83:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %.not68.i84 = icmp eq ptr %i.eg, %.sroa.0190.0
  br i1 %.not68.i84, label %._crit_edge.i87, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i83, %.lr.ph.i85
  %.sroa.0153.0 = phi ptr [ %i.ew, %.lr.ph.i85 ], [ %.sroa.0162.0, %.preheader.i83 ] ; 3 uses
  %.sroa.0151.0 = phi ptr [ %i.ez, %.lr.ph.i85 ], [ %i.ee, %.preheader.i83 ] ; 3 uses
  %i.eq = phi ptr [ %i.et, %.lr.ph.i85 ], [ %i.eg, %.preheader.i83 ] ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !289, !noalias !5509
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !287, !noalias !5509 ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0153.0, align 8, !tbaa !289, !noalias !5510
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !287, !noalias !5510
  %i.ex = load ptr, ptr %.sroa.0151.0, align 8, !tbaa !289, !noalias !5511
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !287, !noalias !5511 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 12 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.fg = load <2 x i32>, ptr %i.fa, align 8, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fa, align 8, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fb, align 4, !tbaa !254, !noalias !5512
  %i.fh = load i32, ptr %i.fc, align 8, !tbaa !254, !noalias !5512
  store i32 %i.fh, ptr %i.fa, align 8, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fc, align 8, !tbaa !254, !noalias !5512
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fi, ptr %i.fb, align 4, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fd, align 4, !tbaa !254, !noalias !5512
  %i.fj = load i32, ptr %i.fe, align 8, !tbaa !254, !noalias !5512
  store i32 %i.fj, ptr %i.fc, align 8, !tbaa !254, !noalias !5512
  %i.fk = load i32, ptr %i.ff, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fk, ptr %i.fd, align 4, !tbaa !254, !noalias !5512
  store <2 x i32> %i.fg, ptr %i.fe, align 8, !tbaa !254, !noalias !5512
  %.not6.i86 = icmp eq ptr %i.et, %.sroa.0190.0
  br i1 %.not6.i86, label %._crit_edge.i87, label %.lr.ph.i85, !llvm.loop !5445

._crit_edge.i87:                                  ; preds = %.lr.ph.i85, %.preheader.i83
  %.sroa.0151.1 = phi ptr [ %i.ee, %.preheader.i83 ], [ %i.ez, %.lr.ph.i85 ] ; 2 uses
  %.not7.i88 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not7.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i87
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fl, align 4, !tbaa !254, !noalias !5512
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !254, !noalias !5512
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !254, !noalias !5512
  store i32 0, ptr %i.fp, align 4, !tbaa !254, !noalias !5512
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !254, !noalias !5512
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !254, !noalias !5512
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i87
  %i.ft = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.ft, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select269 = select i1 %i.fu, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %.sroa.0151.2 = phi ptr [ %i.ee, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %.sroa.0151.1, %bb.ab ], [ %.sroa.0151.1, %bb.aa ] ; 2 uses
  %.sroa.0230.7 = phi ptr [ %.sroa.0230.0286, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %spec.select269, %bb.ab ], [ %.sroa.0209.0281, %bb.aa ]
  store ptr %.sroa.0151.2, ptr %19, align 8, !tbaa !292
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i92 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not.i92, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !254
  store i32 0, ptr %i.fv, align 4, !tbaa !254
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !254
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !254
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !254
  store i32 0, ptr %i.fz, align 4, !tbaa !254
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !254
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !254
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !254
  %i.gd = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.gd, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select270 = select i1 %i.ge, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91
  %i.gf = phi ptr [ %.sroa.0151.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91 ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.ad ]
  %i.gg = phi ptr [ %i.ee, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91 ], [ %i.eb, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.ad ]
  %.sroa.0230.1 = phi ptr [ %.sroa.0230.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit91 ], [ %.sroa.0230.0286, %bb.ac ], [ %spec.select270, %bb.ae ], [ %.sroa.0209.0281, %bb.ad ]
  %i.gh = xor i1 %i.ea, %i.ed
  %i.gi = zext i1 %i.gh to i8
  %i.gj = load ptr, ptr %21, align 8, !tbaa !292
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit
  %i.gk = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.sroa.0170.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %i.gl = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %i.cs, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %i.gm = phi i1 [ %i.dz, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %.sroa.0226.1 = phi ptr [ %i.gj, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %i.u, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.sroa.0230.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.153 = phi i8 [ %i.gi, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEEvT_SB_RSB_.exit ], [ %.052289, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gm, true
  %i.gn = sext i1 %not. to i64
  %.158 = add i64 %.057288, %i.gn
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = load ptr, ptr %.sroa.0220.0284, align 8, !tbaa !289
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %2
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !287
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0220.4 = phi ptr [ %.sroa.0220.0284, %bb.af ], [ %i.gq, %bb.ag ] ; 2 uses
  store ptr %.sroa.0190.0, ptr %20, align 8, !tbaa !292
  %i.gr = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !289
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !287
  %i.gu = icmp ne i64 %.051290, 0
  %.neg = sext i1 %i.gu to i64
  %i.gv = add i64 %.051290, %.neg
  %i.gw = icmp ne i64 %i.aw, 0
  %.neg63 = sext i1 %i.gw to i64
  %i.gx = add i64 %.sroa.speculated244, %.neg63
  %i.gy = add i64 %.0255287, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !5458

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.gz = phi ptr [ %i.gk, %bb.ah ], [ %i.s, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.ha = phi ptr [ %i.gl, %bb.ah ], [ %i.t, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.4, %bb.ah ], [ %.sroa.0220.0284, %bb.m ], [ %.sroa.0220.0284, %bb.l ] ; 3 uses
  %.sroa.0226.0.lcssa.ph = phi ptr [ %.sroa.0226.1, %bb.ah ], [ %.sroa.0226.0285, %bb.m ], [ %.sroa.0226.0285, %bb.l ] ; 2 uses
  %.sroa.0230.0.lcssa.ph = phi ptr [ %.sroa.0230.2, %bb.ah ], [ %.sroa.0230.0286, %bb.m ], [ %.sroa.0230.0286, %bb.l ] ; 2 uses
  %.0255.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0255287, %bb.m ], [ %.0255287, %bb.l ] ; 2 uses
  %.052.lcssa.ph = phi i8 [ %.153, %bb.ah ], [ 1, %bb.m ], [ %.052289, %bb.l ]
  %29 = trunc nuw i8 %.052.lcssa.ph to i1
  %30 = select i1 %29, ptr %.sroa.0226.0.lcssa.ph, ptr %.sroa.0220.0.lcssa.ph ; 2 uses
  %.not1.i.i96 = icmp eq ptr %i.ha, %i.gz
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.thread, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.hp, %.lr.ph.i.i97 ], [ %.sroa.0226.0.lcssa.ph, %.thread ] ; 3 uses
  %i.hb = phi ptr [ %i.hm, %.lr.ph.i.i97 ], [ %i.ha, %.thread ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !254, !noalias !5513
  store i32 0, ptr %i.hc, align 4, !tbaa !254, !noalias !5513
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !254, !noalias !5513
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !254, !noalias !5513
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !254, !noalias !5513
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 12 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !254, !noalias !5513
  store i32 0, ptr %i.hg, align 4, !tbaa !254, !noalias !5513
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !254, !noalias !5513
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !254, !noalias !5513
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !254, !noalias !5513
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !289, !noalias !5513
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !287, !noalias !5513 ; 2 uses
  %i.hn = load ptr, ptr %.sroa.0.0.i98, align 8, !tbaa !289, !noalias !5513
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !287, !noalias !5513
  %.not.i.i99 = icmp eq ptr %i.hm, %i.gz
  br i1 %.not.i.i99, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100, label %.lr.ph.i.i97, !llvm.loop !105

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100: ; preds = %.lr.ph.i.i97, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69, %.thread
  %.052.lcssa349 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69 ], [ %30, %.thread ], [ %30, %.lr.ph.i.i97 ]
  %.0255.lcssa348 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69 ], [ %.0255.lcssa.ph, %.thread ], [ %.0255.lcssa.ph, %.lr.ph.i.i97 ] ; 2 uses
  %.sroa.0230.0.lcssa347 = phi ptr [ %.sroa.0230.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69 ], [ %.sroa.0230.0.lcssa.ph, %.thread ], [ %.sroa.0230.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.sroa.0220.0.lcssa346 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69 ], [ %.sroa.0220.0.lcssa.ph, %.thread ], [ %.sroa.0220.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.not.i.i101 = icmp eq i64 %6, 0                ; 2 uses
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100
  %i.hq = load ptr, ptr %.sroa.0215.0, align 8, !tbaa !289, !noalias !5514
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %6
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !287, !noalias !5514
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100, %bb.ai
  %.sroa.0142.0 = phi ptr [ %i.hs, %bb.ai ], [ %.sroa.0215.0, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit100 ] ; 3 uses
  %i.ht = load ptr, ptr %7, align 8, !tbaa !292   ; 5 uses
  %.not1.i.i105 = icmp eq ptr %.sroa.0215.0, %.sroa.0142.0
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.ii, %.lr.ph.i.i106 ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104 ] ; 3 uses
  %i.hu = phi ptr [ %i.if, %.lr.ph.i.i106 ], [ %.sroa.0215.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !254, !noalias !5515
  store i32 0, ptr %i.hv, align 4, !tbaa !254, !noalias !5515
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !254, !noalias !5515
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !254, !noalias !5515
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !254, !noalias !5515
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 12 ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !254, !noalias !5515
  store i32 0, ptr %i.hz, align 4, !tbaa !254, !noalias !5515
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !254, !noalias !5515
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !254, !noalias !5515
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !254, !noalias !5515
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !289, !noalias !5515
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !287, !noalias !5515 ; 2 uses
  %i.ig = load ptr, ptr %.sroa.0.0.i107, align 8, !tbaa !289, !noalias !5515
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !287, !noalias !5515
  %.not.i.i108 = icmp eq ptr %i.if, %.sroa.0142.0
  br i1 %.not.i.i108, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109, label %.lr.ph.i.i106, !llvm.loop !105

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit104
  store ptr %i.ht, ptr %18, align 8, !tbaa !292
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109
  %i.ij = load ptr, ptr %i.ht, align 8, !tbaa !289, !noalias !5516
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %6
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !287, !noalias !5516
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109, %bb.aj
  %.sroa.0139.0 = phi ptr [ %i.ht, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEESA_EET0_NS0_9forward_tET_SD_SB_.exit109 ], [ %i.il, %bb.aj ] ; 2 uses
  store ptr %.sroa.0139.0, ptr %19, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %.sroa.0139.0, ptr %22, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.im = load ptr, ptr %0, align 8, !tbaa !292, !noalias !5517 ; 2 uses
  br i1 %i.o, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !289, !noalias !5517
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %5
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !287, !noalias !5517
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111, %bb.ak
  %.sroa.0135.0 = phi ptr [ %i.im, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit111 ], [ %i.ip, %bb.ak ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113
  %i.iq = load ptr, ptr %.sroa.0135.0, align 8, !tbaa !289, !noalias !5518
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %4
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !287, !noalias !5518
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113, %bb.al
  %.sroa.0136.0 = phi ptr [ %.sroa.0135.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit113 ], [ %i.is, %bb.al ]
  store ptr %.sroa.0136.0, ptr %24, align 8, !tbaa !292, !alias.scope !5519
  store ptr %.sroa.0230.0.lcssa347, ptr %25, align 8, !tbaa !292, !alias.scope !5520
  store ptr %.sroa.0215.0, ptr %26, align 8, !tbaa !292, !alias.scope !5521
  store ptr %i.ht, ptr %27, align 8, !tbaa !292, !alias.scope !5522
  store ptr %.sroa.0142.0, ptr %28, align 8, !tbaa !292, !alias.scope !5523
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.38") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0255.lcssa348, i64 noundef 0, i64 noundef %.0255.lcssa348, i1 noundef zeroext true)
  %i.it = load ptr, ptr %23, align 8, !tbaa !292, !noalias !5524
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.iu = load ptr, ptr %22, align 8, !tbaa !292, !noalias !5525 ; 3 uses
  store ptr %i.iu, ptr %19, align 8, !tbaa !292
  %i.iv = load ptr, ptr %18, align 8, !tbaa !292  ; 3 uses
  %.not12.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not12.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115, %bb.ap
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ap ], [ %.sroa.0220.0.lcssa346, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ %i.ka, %bb.ap ], [ %i.it, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115 ] ; 2 uses
  %i.iw = phi ptr [ %i.km, %bb.ap ], [ %i.iu, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115 ] ; 2 uses
  %i.ix = icmp eq ptr %.052.lcssa349, %.sroa.0126.0
  br i1 %i.ix, label %.lr.ph.i.i.i, label %bb.am

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i116, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i ], [ %.sroa.0123.0, %.lr.ph.i116 ]
  %i.iy = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %i.iw, %.lr.ph.i116 ]
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !289, !noalias !5526
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !287, !noalias !5526 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.jd = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !289, !noalias !5526
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !287, !noalias !5526 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jc, align 4, !tbaa !254, !noalias !5526
  store i32 0, ptr %i.jc, align 4, !tbaa !254, !noalias !5526
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !254, !noalias !5526
  store i32 %i.ji, ptr %i.jc, align 4, !tbaa !254, !noalias !5526
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !254, !noalias !5526
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 12 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !254, !noalias !5526
  store i32 0, ptr %i.jj, align 4, !tbaa !254, !noalias !5526
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !254, !noalias !5526
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !254, !noalias !5526
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !254, !noalias !5526
  %.not.i.i.i118 = icmp eq ptr %i.iv, %i.jb
  br i1 %.not.i.i.i118, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !107

bb.am:                                            ; preds = %.lr.ph.i116
  %i.jn = load ptr, ptr %i.iw, align 8, !tbaa !289
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !287 ; 4 uses
  %i.jq = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !289
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !287 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 3 uses
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !254
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !254
  %i.jx = icmp slt i32 %i.jv, %i.jw
  %i.jy = load ptr, ptr %.sroa.0123.0, align 8, !tbaa !289
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !287 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 5 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !254 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 12 ; 3 uses
  br i1 %i.jx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ke = load ptr, ptr %i.jp, align 8, !tbaa !289
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !287
  store i32 0, ptr %i.kb, align 4, !tbaa !254
  %i.kh = load i32, ptr %i.ju, align 4, !tbaa !254
  store i32 %i.kh, ptr %i.kb, align 4, !tbaa !254
  store i32 %i.kc, ptr %i.ju, align 4, !tbaa !254
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ki = load ptr, ptr %i.js, align 8, !tbaa !289
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !287
  store i32 0, ptr %i.kb, align 4, !tbaa !254
  %i.kl = load i32, ptr %i.jt, align 4, !tbaa !254
  store i32 %i.kl, ptr %i.kb, align 4, !tbaa !254
  store i32 %i.kc, ptr %i.jt, align 4, !tbaa !254
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink = phi ptr [ %i.jp, %bb.ao ], [ %i.js, %bb.an ]
  %.sroa.0126.1 = phi ptr [ %i.kk, %bb.ao ], [ %i.js, %bb.an ]
  %i.km = phi ptr [ %i.jp, %bb.ao ], [ %i.kg, %bb.an ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sink, i64 12 ; 2 uses
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !254
  store i32 0, ptr %i.kd, align 4, !tbaa !254
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !254
  store i32 %i.kp, ptr %i.kd, align 4, !tbaa !254
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !254
  %.not.i117 = icmp eq ptr %i.iv, %i.km
  br i1 %.not.i117, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i116, !llvm.loop !5493

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.ap, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !292, !noalias !5561 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !5561
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287, !noalias !5561
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0142.1 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = mul i64 %i.a, %2
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !292, !noalias !5562 ; 9 uses
  %.not.i.i37 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289, !noalias !5562
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !287, !noalias !5562
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, %bb.c
  %.sroa.0139.0 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %i.k, %bb.c ] ; 5 uses
  %.not.i.i39 = icmp eq i64 %6, 0
  br i1 %.not.i.i39, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38
  %i.l = load ptr, ptr %.sroa.0139.0, align 8, !tbaa !289, !noalias !5563
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %6
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !287, !noalias !5563
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38, %bb.d
  %.sroa.0138.0 = phi ptr [ %.sroa.0139.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38 ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = icmp eq i64 %5, 0
  %i.p = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.q = add i64 %i.p, 1
  %.sroa.speculated114 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.a)
  %.not.i.i41 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !289, !noalias !5564
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !287, !noalias !5564
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40, %bb.e
  %.sroa.0108.1 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit40 ], [ %i.t, %bb.e ]
  %.not191 = icmp eq i64 %i.a, 0                  ; 2 uses
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42
  %i.u = icmp ne i64 %6, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0139.0, i64 8
  %.not.i.i51 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42
  %.sroa.0142.0.lcssa = phi ptr [ %.sroa.0142.1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42 ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit42 ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit44, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !289, !noalias !5565
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %3
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287, !noalias !5565
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit44

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit44: ; preds = %._crit_edge, %bb.f
  %.sroa.093.1 = phi ptr [ %i.h, %._crit_edge ], [ %i.y, %bb.f ]
  %.not.i.i45 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not.i.i45, label %._crit_edge210, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit46

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit46: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !289, !noalias !5566
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.035.lcssa
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !287, !noalias !5566 ; 2 uses
  %.not173203 = icmp eq ptr %i.b, %i.ab
  br i1 %.not173203, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit46
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.lcssa, i64 8
  %.not.i.i57 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit
  %.0200 = phi i64 [ %i.p, %.lr.ph ], [ %i.db, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 4 uses
  %.034199 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 2 uses
  %.035198 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ]
  %.sroa.0142.0197 = phi ptr [ %.sroa.0142.1, %.lr.ph ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 4 uses
  %.sroa.0108.0195 = phi ptr [ %.sroa.0108.1, %.lr.ph ], [ %.sroa.0108.2, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 10 uses
  %.0167194 = phi i64 [ %i.a, %.lr.ph ], [ %i.de, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a

.lr.ph.i113:                                      ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116
  %i.jf = phi ptr [ %i.jm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.ii, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.5207.0 = phi ptr [ %.sroa.5207.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.hx, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %.sroa.6.1.i108, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %.sroa.0200.0 = phi ptr [ %.sroa.0200.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %.sroa.0.0.i109, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 5 uses
  %i.jg = phi ptr [ %.sroa.0205.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %i.hv, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 4 uses
  %.012.i114 = phi ptr [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ], [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1024
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.as, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115, !prof !225

bb.as:                                            ; preds = %.lr.ph.i113
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.5207.0, i64 8 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !262, !noalias !10774 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115: ; preds = %bb.as, %.lr.ph.i113
  %i.jm = phi ptr [ %i.jl, %bb.as ], [ %i.jf, %.lr.ph.i113 ]
  %.sroa.5207.1 = phi ptr [ %i.jk, %bb.as ], [ %.sroa.5207.0, %.lr.ph.i113 ]
  %.sroa.0205.0 = phi ptr [ %i.jl, %bb.as ], [ %i.jh, %.lr.ph.i113 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %.sroa.5.0, align 8, !tbaa !262, !noalias !10775
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1024
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.at, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116, !prof !225

bb.at:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !262, !noalias !10775
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116: ; preds = %bb.at, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115
  %.sroa.5.1 = phi ptr [ %i.jr, %bb.at ], [ %.sroa.5.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115 ]
  %.sroa.0200.1 = phi ptr [ %i.js, %bb.at ], [ %i.jn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i115 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i114, i64 8 ; 2 uses
  %i.ju = load i32, ptr %.sroa.0200.0, align 4, !tbaa !254
  store i32 %i.ju, ptr %.012.i114, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0200.0, align 4, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0200.0, i64 4 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.012.i114, i64 4
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !254
  store i32 %i.jx, ptr %i.jw, align 4, !tbaa !254
  store i32 0, ptr %i.jv, align 4, !tbaa !254
  %i.jy = load i32, ptr %i.jg, align 4, !tbaa !254
  store i32 %i.jy, ptr %.sroa.0200.0, align 4, !tbaa !254
  store i32 0, ptr %i.jg, align 4, !tbaa !254
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !254
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !254
  store i32 0, ptr %i.jz, align 4, !tbaa !254
  %.not9.i117 = icmp eq ptr %.sroa.0205.0, %.sroa.0.0.i95
  br i1 %.not9.i117, label %._crit_edge.i118, label %.lr.ph.i113, !llvm.loop !10723

._crit_edge.i118:                                 ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread
  %.0.lcssa.i119 = phi ptr [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit6.i116 ] ; 2 uses
  %.not10.i120 = icmp eq ptr %.sroa.0.0.i100, %.sroa.0282.0390
  br i1 %.not10.i120, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i118
  %i.kb = load i32, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  %i.kc = load i32, ptr %.sroa.0282.0390, align 4, !tbaa !254
  store i32 %i.kc, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  store i32 %i.kb, ptr %.sroa.0282.0390, align 4, !tbaa !254
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i100, i64 4 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0282.0390, i64 4 ; 2 uses
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !254
  store i32 0, ptr %i.kd, align 4, !tbaa !254
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !254
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !254
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !254
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i118
  %i.kh = icmp eq ptr %.sroa.0.0.i100, %.sroa.0323.0401
  br i1 %i.kh, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ki = icmp eq ptr %.sroa.0323.0401, %.sroa.0282.0390 ; 2 uses
  %spec.select524 = select i1 %i.ki, ptr %.sroa.0.0.i100, ptr %.sroa.0323.0401
  %spec.select525 = select i1 %i.ki, ptr %.sroa.6.1.i99, ptr %.sroa.12.0402
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125: ; preds = %bb.aw, %bb.av, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
  %.sroa.0323.6 = phi ptr [ %.sroa.0323.0401, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.0323.0401, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select524, %bb.aw ], [ %.sroa.0282.0390, %bb.av ]
  %.sroa.12.6 = phi ptr [ %.sroa.12.0402, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.12.0402, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select525, %bb.aw ], [ %.sroa.11.0394, %bb.av ]
  %.1.i121 = phi ptr [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %7, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.0.lcssa.i119, %bb.aw ], [ %.0.lcssa.i119, %bb.av ] ; 2 uses
  store ptr %.1.i121, ptr %i.b, align 8, !tbaa !262
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit

bb.ax:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i126 = icmp eq ptr %.sroa.0.0.i100, %.sroa.0282.0390
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kj = load i32, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  %i.kk = load i32, ptr %.sroa.0282.0390, align 4, !tbaa !254
  store i32 %i.kk, ptr %.sroa.0.0.i100, align 4, !tbaa !254
  store i32 %i.kj, ptr %.sroa.0282.0390, align 4, !tbaa !254
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i100, i64 4 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0282.0390, i64 4 ; 2 uses
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !254
  store i32 0, ptr %i.kl, align 4, !tbaa !254
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !254
  store i32 %i.ko, ptr %i.kl, align 4, !tbaa !254
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !254
  %i.kp = icmp eq ptr %.sroa.0.0.i100, %.sroa.0323.0401
  br i1 %i.kp, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kq = icmp eq ptr %.sroa.0323.0401, %.sroa.0282.0390 ; 2 uses
  %spec.select526 = select i1 %i.kq, ptr %.sroa.0.0.i100, ptr %.sroa.0323.0401
  %spec.select527 = select i1 %i.kq, ptr %.sroa.6.1.i99, ptr %.sroa.12.0402
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit: ; preds = %bb.az, %bb.ay, %bb.ax, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125
  %i.kr = phi ptr [ %.1.i121, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125 ], [ %i.ht, %bb.ax ], [ %i.ht, %bb.az ], [ %i.ht, %bb.ay ]
  %i.ks = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125 ], [ %i.hs, %bb.ax ], [ %i.hs, %bb.az ], [ %i.hs, %bb.ay ]
  %.sroa.0323.1 = phi ptr [ %.sroa.0323.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125 ], [ %.sroa.0323.0401, %bb.ax ], [ %spec.select526, %bb.az ], [ %.sroa.0282.0390, %bb.ay ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit125 ], [ %.sroa.12.0402, %bb.ax ], [ %spec.select527, %bb.az ], [ %.sroa.11.0394, %bb.ay ]
  %i.kt = xor i1 %i.hr, %i.hu
  %i.ku = zext i1 %i.kt to i8
  %i.kv = load ptr, ptr %21, align 8, !tbaa !311
  %i.kw = load ptr, ptr %i.bu, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit
  %i.kx = phi ptr [ %i.kr, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %i.ky = phi ptr [ %i.ks, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %i.kz = phi i1 [ %i.hq, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %.sroa.0315.1 = phi ptr [ %i.kv, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.10319.1 = phi ptr [ %i.kw, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.0323.2 = phi ptr [ %.sroa.0323.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.sroa.0323.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.sroa.12.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.ku, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.058405, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_S9_NS0_7move_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.kz, true
  %i.la = sext i1 %not. to i64
  %.164 = add i64 %.063404, %i.la
  br i1 %.not.i.i87, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lb = load ptr, ptr %.sroa.9.0397, align 8, !tbaa !262
  %i.lc = ptrtoint ptr %.sroa.0303.0398 to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3
  %i.lg = add nsw i64 %i.lf, %2                   ; 4 uses
  %or.cond.i = icmp ult i64 %i.lg, 128
  br i1 %or.cond.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lh = getelementptr inbounds [8 x i8], ptr %.sroa.0303.0398, i64 %2
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit

bb.bd:                                            ; preds = %bb.bb
  %i.li = icmp sgt i64 %i.lg, 0
  %i.lj = lshr i64 %i.lg, 7                       ; 2 uses
  %i.lk = or disjoint i64 %i.lj, -144115188075855872
  %i.ll = select i1 %i.li, i64 %i.lj, i64 %i.lk   ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %.sroa.9.0397, i64 %i.ll ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !262
  %i.lo = shl nsw i64 %i.ll, 7
  %i.lp = sub nsw i64 %i.lg, %i.lo
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lp
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.bc, %bb.bd, %bb.ba
  %.sroa.9.4 = phi ptr [ %.sroa.9.0397, %bb.ba ], [ %.sroa.9.0397, %bb.bc ], [ %i.lm, %bb.bd ] ; 2 uses
  %.sroa.0303.3 = phi ptr [ %.sroa.0303.0398, %bb.ba ], [ %i.lh, %bb.bc ], [ %i.lq, %bb.bd ] ; 2 uses
  store ptr %.sroa.0.0.i95, ptr %18, align 8, !tbaa !311
  store ptr %.sroa.6.1.i94, ptr %i.ap, align 8, !tbaa !312
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0282.0390, i64 8 ; 2 uses
  %i.ls = load ptr, ptr %.sroa.11.0394, align 8, !tbaa !262
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1024
  %i.lu = icmp eq ptr %i.lr, %i.lt
  br i1 %i.lu, label %bb.be, label %bb.bf, !prof !225

bb.be:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.11.0394, i64 8 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !262
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit, %bb.be
  %.sroa.0282.2 = phi ptr [ %i.lw, %bb.be ], [ %i.lr, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit ]
  %.sroa.11.2 = phi ptr [ %i.lv, %bb.be ], [ %.sroa.11.0394, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit ]
  %i.lx = icmp ne i64 %.057406, 0
  %.neg = sext i1 %i.lx to i64
  %i.ly = add i64 %.057406, %.neg
  %i.lz = icmp ne i64 %i.bz, 0
  %.neg69 = sext i1 %i.lz to i64
  %i.ma = add i64 %.sroa.speculated337, %.neg69
  %i.mb = add i64 %.0348403, -1                   ; 2 uses
  %.not = icmp eq i64 %i.mb, 0
  br i1 %.not, label %.thread, label %bb.k, !llvm.loop !10732

.thread:                                          ; preds = %bb.bf, %bb.w, %bb.v
  %i.mc = phi ptr [ %i.kx, %bb.bf ], [ %i.ea, %bb.w ], [ %i.ea, %bb.v ] ; 2 uses
  %i.md = phi ptr [ %i.ky, %bb.bf ], [ %i.dz, %bb.w ], [ %i.dz, %bb.v ] ; 2 uses
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.4, %bb.bf ], [ %.sroa.9.0397, %bb.w ], [ %.sroa.9.0397, %bb.v ] ; 2 uses
  %.sroa.0303.0.lcssa.ph = phi ptr [ %.sroa.0303.3, %bb.bf ], [ %.sroa.0303.0398, %bb.w ], [ %.sroa.0303.0398, %bb.v ] ; 3 uses
  %.sroa.0315.0.lcssa.ph = phi ptr [ %.sroa.0315.1, %bb.bf ], [ %.sroa.0315.0399, %bb.w ], [ %.sroa.0315.0399, %bb.v ] ; 2 uses
  %.sroa.10319.0.lcssa.ph = phi ptr [ %.sroa.10319.1, %bb.bf ], [ %.sroa.10319.0400, %bb.w ], [ %.sroa.10319.0400, %bb.v ] ; 2 uses
  %.sroa.0323.0.lcssa.ph = phi ptr [ %.sroa.0323.2, %bb.bf ], [ %.sroa.0323.0401, %bb.w ], [ %.sroa.0323.0401, %bb.v ] ; 2 uses
  %.sroa.12.0.lcssa.ph = phi ptr [ %.sroa.12.2, %bb.bf ], [ %.sroa.12.0402, %bb.w ], [ %.sroa.12.0402, %bb.v ] ; 2 uses
  %.0348.lcssa.ph = phi i64 [ 0, %bb.bf ], [ %.0348403, %bb.w ], [ %.0348403, %bb.v ] ; 2 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.bf ], [ 1, %bb.w ], [ %.058405, %bb.v ]
  %29 = trunc nuw i8 %.058.lcssa.ph to i1
  %30 = select i1 %29, ptr %.sroa.0315.0.lcssa.ph, ptr %.sroa.0303.0.lcssa.ph ; 2 uses
  %.not4.i.i130 = icmp eq ptr %i.md, %i.mc
  br i1 %.not4.i.i130, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137, label %.lr.ph.i.preheader.i131

.lr.ph.i.preheader.i131:                          ; preds = %.thread
  %.pre.i132 = load ptr, ptr %.sroa.10319.0.lcssa.ph, align 8, !tbaa !262, !noalias !10776
  br label %.lr.ph.i.i133

.lr.ph.i.i133:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135, %.lr.ph.i.preheader.i131
  %i.me = phi ptr [ %i.mr, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.pre.i132, %.lr.ph.i.preheader.i131 ] ; 2 uses
  %i.mf = phi ptr [ %i.ms, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.sroa.10319.0.lcssa.ph, %.lr.ph.i.preheader.i131 ] ; 2 uses
  %i.mg = phi ptr [ %i.mt, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %.sroa.0315.0.lcssa.ph, %.lr.ph.i.preheader.i131 ] ; 3 uses
  %.05.i.i134 = phi ptr [ %i.ml, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ], [ %i.md, %.lr.ph.i.preheader.i131 ] ; 4 uses
  %i.mh = load i32, ptr %.05.i.i134, align 4, !tbaa !254, !noalias !10776
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !254, !noalias !10776
  store i32 0, ptr %.05.i.i134, align 4, !tbaa !254, !noalias !10776
  %i.mi = getelementptr inbounds nuw i8, ptr %.05.i.i134, i64 4 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mk = load i32, ptr %i.mi, align 4, !tbaa !254, !noalias !10776
  store i32 %i.mk, ptr %i.mj, align 4, !tbaa !254, !noalias !10776
  store i32 0, ptr %i.mi, align 4, !tbaa !254, !noalias !10776
  %i.ml = getelementptr inbounds nuw i8, ptr %.05.i.i134, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 1024
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %bb.bg, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135, !prof !225

bb.bg:                                            ; preds = %.lr.ph.i.i133
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !262, !noalias !10776 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135: ; preds = %bb.bg, %.lr.ph.i.i133
  %i.mr = phi ptr [ %i.me, %.lr.ph.i.i133 ], [ %i.mq, %bb.bg ]
  %i.ms = phi ptr [ %i.mf, %.lr.ph.i.i133 ], [ %i.mp, %bb.bg ]
  %i.mt = phi ptr [ %i.mm, %.lr.ph.i.i133 ], [ %i.mq, %bb.bg ]
  %.not.i.i136 = icmp eq ptr %i.ml, %i.mc
  br i1 %.not.i.i136, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137, label %.lr.ph.i.i133, !llvm.loop !163

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81, %.thread
  %.058.lcssa512 = phi ptr [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %30, %.thread ], [ %30, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.0348.lcssa511 = phi i64 [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %.0348.lcssa.ph, %.thread ], [ %.0348.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ] ; 2 uses
  %.sroa.12.0.lcssa510 = phi ptr [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.12.0.lcssa.ph, %.thread ], [ %.sroa.12.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.0323.0.lcssa509 = phi ptr [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.0323.0.lcssa.ph, %.thread ], [ %.sroa.0323.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.0303.0.lcssa508 = phi ptr [ %.sroa.0.0.i75, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.0303.0.lcssa.ph, %.thread ], [ %.sroa.0303.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.sroa.9.0.lcssa507 = phi ptr [ %.sroa.6.1.i74, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit81 ], [ %.sroa.9.0.lcssa.ph, %.thread ], [ %.sroa.9.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i135 ]
  %.not.i.i138 = icmp eq i64 %6, 0
  br i1 %.not.i.i138, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147, label %bb.bh

bb.bh:                                            ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137
  %i.mu = load ptr, ptr %.sroa.6.1.i79, align 8, !tbaa !262, !noalias !10777
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
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147

bb.bj:                                            ; preds = %bb.bh
  %i.nc = icmp sgt i64 %i.mz, 0
  %i.nd = lshr i64 %i.mz, 7                       ; 2 uses
  %i.ne = or disjoint i64 %i.nd, -144115188075855872
  %i.nf = select i1 %i.nc, i64 %i.nd, i64 %i.ne   ; 2 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i79, i64 %i.nf ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !262, !noalias !10777
  %i.ni = shl nsw i64 %i.nf, 7
  %i.nj = sub nsw i64 %i.mz, %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = icmp sgt i64 %i.mz, 0
  %i.nm = lshr i64 %i.mz, 7                       ; 2 uses
  %i.nn = or disjoint i64 %i.nm, -144115188075855872
  %i.no = select i1 %i.nl, i64 %i.nm, i64 %i.nn   ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i79, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !262, !noalias !10778
  %i.nr = shl nsw i64 %i.no, 7
  %i.ns = sub nsw i64 %i.mz, %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.ns
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147: ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137, %bb.bi, %bb.bj
  %.sroa.0.0.i141382 = phi ptr [ %i.nk, %bb.bj ], [ %i.na, %bb.bi ], [ %.sroa.0.0.i80, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137 ]
  %.sroa.6.1.i140380 = phi ptr [ %i.ng, %bb.bj ], [ %.sroa.6.1.i79, %bb.bi ], [ %.sroa.6.1.i79, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137 ]
  %.sroa.0.0.i146 = phi ptr [ %i.nt, %bb.bj ], [ %i.nb, %bb.bi ], [ %.sroa.0.0.i80, %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_14deque_iteratorIS8_Lb0ELj0ELj0EmEEEET0_NS0_9forward_tET_SD_SB_.exit137 ] ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.0.0.i80, %.sroa.0.0.i146
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147
  %.pre.i149 = load ptr, ptr %.sroa.6.1.i79, align 8, !tbaa !262
  br label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151, %.lr.ph.i.preheader.i148
  %i.nu = phi ptr [ %i.og, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.pre.i149, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %i.nv = phi ptr [ %i.oi, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.sroa.6.1.i79, %.lr.ph.i.preheader.i148 ] ; 2 uses
  %i.nw = phi ptr [ %i.oh, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %.sroa.0.0.i80, %.lr.ph.i.preheader.i148 ] ; 4 uses
  %.04.i.i = phi ptr [ %i.oj, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151 ], [ %7, %.lr.ph.i.preheader.i148 ] ; 3 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !254
  store i32 %i.nx, ptr %.04.i.i, align 4, !tbaa !254
  store i32 0, ptr %i.nw, align 4, !tbaa !254
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.oa = load i32, ptr %i.ny, align 4, !tbaa !254
  store i32 %i.oa, ptr %i.nz, align 4, !tbaa !254
  store i32 0, ptr %i.ny, align 4, !tbaa !254
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 1024
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %bb.bk, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151, !prof !225

bb.bk:                                            ; preds = %.lr.ph.i.i150
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !262 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151: ; preds = %bb.bk, %.lr.ph.i.i150
  %i.og = phi ptr [ %i.nu, %.lr.ph.i.i150 ], [ %i.of, %bb.bk ]
  %i.oh = phi ptr [ %i.ob, %.lr.ph.i.i150 ], [ %i.of, %bb.bk ] ; 2 uses
  %i.oi = phi ptr [ %i.nv, %.lr.ph.i.i150 ], [ %i.oe, %bb.bk ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i152 = icmp eq ptr %i.oh, %.sroa.0.0.i146
  br i1 %.not.i.i152, label %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i150, !llvm.loop !169

_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i151, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ok, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.ok, ptr %22, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ol = load ptr, ptr %0, align 8, !tbaa !311, !noalias !10779 ; 3 uses
  %i.om = load ptr, ptr %i.e, align 8, !tbaa !312, !noalias !10779 ; 4 uses
  br i1 %i.bh, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !262, !noalias !10779
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = ashr exact i64 %i.oq, 3
  %i.os = add nsw i64 %i.or, %5                   ; 4 uses
  %or.cond.i.i154 = icmp ult i64 %i.os, 128
  br i1 %or.cond.i.i154, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %5
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157

bb.bn:                                            ; preds = %bb.bl
  %i.ou = icmp sgt i64 %i.os, 0
  %i.ov = lshr i64 %i.os, 7                       ; 2 uses
  %i.ow = or disjoint i64 %i.ov, -144115188075855872
  %i.ox = select i1 %i.ou, i64 %i.ov, i64 %i.ow   ; 2 uses
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.om, i64 %i.ox ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !262, !noalias !10779
  %i.pa = shl nsw i64 %i.ox, 7
  %i.pb = sub nsw i64 %i.os, %i.pa
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.pb
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157: ; preds = %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit, %bb.bm, %bb.bn
  %.sroa.6.1.i155 = phi ptr [ %i.om, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.om, %bb.bm ], [ %i.oy, %bb.bn ] ; 4 uses
  %.sroa.0.0.i156 = phi ptr [ %i.ol, %_ZN5boost7movelib7move_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEES9_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.ot, %bb.bm ], [ %i.pc, %bb.bn ] ; 3 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157
  %i.pd = load ptr, ptr %.sroa.6.1.i155, align 8, !tbaa !262, !noalias !10780
  %i.pe = ptrtoint ptr %.sroa.0.0.i156 to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = ashr exact i64 %i.pg, 3
  %i.pi = add nsw i64 %i.ph, %4                   ; 4 uses
  %or.cond.i.i159 = icmp ult i64 %i.pi, 128
  br i1 %or.cond.i.i159, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pj = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i156, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162

bb.bq:                                            ; preds = %bb.bo
  %i.pk = icmp sgt i64 %i.pi, 0
  %i.pl = lshr i64 %i.pi, 7                       ; 2 uses
  %i.pm = or disjoint i64 %i.pl, -144115188075855872
  %i.pn = select i1 %i.pk, i64 %i.pl, i64 %i.pm   ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i155, i64 %i.pn ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !262, !noalias !10780
  %i.pq = shl nsw i64 %i.pn, 7
  %i.pr = sub nsw i64 %i.pi, %i.pq
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pr
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157, %bb.bp, %bb.bq
  %.sroa.6.1.i160 = phi ptr [ %.sroa.6.1.i155, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157 ], [ %.sroa.6.1.i155, %bb.bp ], [ %i.po, %bb.bq ]
  %.sroa.0.0.i161 = phi ptr [ %.sroa.0.0.i156, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit157 ], [ %i.pj, %bb.bp ], [ %i.ps, %bb.bq ]
  store ptr %.sroa.0.0.i161, ptr %24, align 8, !tbaa !311, !alias.scope !10781
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sroa.6.1.i160, ptr %i.pt, align 8, !tbaa !312, !alias.scope !10781
  store ptr %.sroa.0323.0.lcssa509, ptr %25, align 8, !tbaa !311, !alias.scope !10782
  %i.pu = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.12.0.lcssa510, ptr %i.pu, align 8, !tbaa !312, !alias.scope !10782
  store ptr %.sroa.0.0.i80, ptr %26, align 8, !tbaa !311, !alias.scope !10783
  %i.pv = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.6.1.i79, ptr %i.pv, align 8, !tbaa !312, !alias.scope !10783
  store ptr %7, ptr %27, align 8, !tbaa !345, !alias.scope !10784
  store ptr %.sroa.0.0.i141382, ptr %28, align 8, !tbaa !311, !alias.scope !10785
  %i.pw = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.6.1.i140380, ptr %i.pw, align 8, !tbaa !312, !alias.scope !10785
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_NS3_ISA_EESC_SL_NS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0348.lcssa511, i64 noundef 0, i64 noundef %.0348.lcssa511, i1 noundef zeroext true)
  %i.px = load ptr, ptr %23, align 8, !tbaa !311, !noalias !10786
  %i.py = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !312, !noalias !10786
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.qa = load ptr, ptr %22, align 8, !tbaa !345  ; 3 uses
  store ptr %i.qa, ptr %i.b, align 8, !tbaa !262
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %.not22.i = icmp eq ptr %i.qb, %i.qa
  br i1 %.not22.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162, %bb.cd
  %.sroa.6173.0 = phi ptr [ %.sroa.6173.3, %bb.cd ], [ %.sroa.9.0.lcssa507, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162 ] ; 3 uses
  %.sroa.0171.0 = phi ptr [ %.sroa.0171.2, %bb.cd ], [ %.sroa.0303.0.lcssa508, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162 ] ; 3 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.2, %bb.cd ], [ %i.pz, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162 ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.cd ], [ %i.px, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162 ] ; 5 uses
  %.023.i = phi ptr [ %.1.i164, %bb.cd ], [ %i.qa, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162 ] ; 4 uses
  %i.qc = icmp eq ptr %.058.lcssa512, %.sroa.0171.0
  br i1 %i.qc, label %.lr.ph.i.preheader.i.i, label %bb.bt

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i163
  %.pre.i.i = load ptr, ptr %.sroa.6.0, align 8, !tbaa !262, !noalias !10787
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %i.qd = phi ptr [ %i.ql, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.pre.i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.qe = phi ptr [ %i.qm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.sroa.6.0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %storemerge.i6.i.i.i = phi ptr [ %storemerge.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.sroa.0.0, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.05.i.i.i = phi ptr [ %i.qf, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i ], [ %.023.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 4 uses
  %i.qg = icmp eq ptr %storemerge.i6.i.i.i, %i.qd
  br i1 %i.qg, label %bb.br, label %bb.bs, !prof !225

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.qh = getelementptr inbounds i8, ptr %i.qe, i64 -8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !262, !noalias !10787 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.qk = getelementptr inbounds i8, ptr %storemerge.i6.i.i.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i: ; preds = %bb.bs, %bb.br
  %i.ql = phi ptr [ %i.qd, %bb.bs ], [ %i.qi, %bb.br ]
  %i.qm = phi ptr [ %i.qe, %bb.bs ], [ %i.qh, %bb.br ]
  %storemerge.i.i.i.i = phi ptr [ %i.qk, %bb.bs ], [ %i.qj, %bb.br ] ; 3 uses
  %i.qn = load i32, ptr %i.qf, align 4, !tbaa !254, !noalias !10787
  store i32 %i.qn, ptr %storemerge.i.i.i.i, align 4, !tbaa !254, !noalias !10787
  store i32 0, ptr %i.qf, align 4, !tbaa !254, !noalias !10787
  %i.qo = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 4
  %i.qq = load i32, ptr %i.qo, align 4, !tbaa !254, !noalias !10787
  store i32 %i.qq, ptr %i.qp, align 4, !tbaa !254, !noalias !10787
  store i32 0, ptr %i.qo, align 4, !tbaa !254, !noalias !10787
  %.not.i.i.i166 = icmp eq ptr %i.qb, %i.qf
  br i1 %.not.i.i.i166, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !167

bb.bt:                                            ; preds = %.lr.ph.i163
  %i.qr = getelementptr inbounds i8, ptr %.023.i, i64 -8 ; 3 uses
  %i.qs = load ptr, ptr %.sroa.6173.0, align 8, !tbaa !262 ; 2 uses
  %i.qt = icmp eq ptr %.sroa.0171.0, %i.qs
  br i1 %i.qt, label %bb.bu, label %bb.bv, !prof !225

bb.bu:                                            ; preds = %bb.bt
  %i.qu = getelementptr inbounds i8, ptr %.sroa.6173.0, i64 -8 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !262 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.qx = getelementptr inbounds i8, ptr %.sroa.0171.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.bv, %bb.bu
  %i.qy = phi ptr [ %i.qv, %bb.bu ], [ %i.qs, %bb.bv ]
  %.sroa.6173.1 = phi ptr [ %i.qu, %bb.bu ], [ %.sroa.6173.0, %bb.bv ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.qw, %bb.bu ], [ %i.qx, %bb.bv ] ; 5 uses
  %i.qz = load i32, ptr %i.qr, align 4, !tbaa !254 ; 2 uses
  %i.ra = load i32, ptr %storemerge.i.i, align 4, !tbaa !254 ; 2 uses
  %i.rb = icmp slt i32 %i.qz, %i.ra
  br i1 %i.rb, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  %i.rc = load ptr, ptr %.sroa.6.0, align 8, !tbaa !262
  %i.rd = icmp eq ptr %.sroa.0.0, %i.rc
  br i1 %i.rd, label %bb.bx, label %bb.by, !prof !225

bb.bx:                                            ; preds = %bb.bw
  %i.re = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !262
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i

bb.by:                                            ; preds = %bb.bw
  %i.rh = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i: ; preds = %bb.by, %bb.bx
  %.sroa.6.3 = phi ptr [ %i.re, %bb.bx ], [ %.sroa.6.0, %bb.by ]
  %storemerge.i9.i = phi ptr [ %i.rg, %bb.bx ], [ %i.rh, %bb.by ] ; 3 uses
  store i32 %i.ra, ptr %storemerge.i9.i, align 4, !tbaa !254
  store i32 0, ptr %storemerge.i.i, align 4, !tbaa !254
  %i.ri = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %storemerge.i9.i, i64 4
  %i.rk = load i32, ptr %i.ri, align 4, !tbaa !254
  store i32 %i.rk, ptr %i.rj, align 4, !tbaa !254
  store i32 0, ptr %i.ri, align 4, !tbaa !254
  br label %bb.cd

bb.bz:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  %i.rl = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qy, i64 1024
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.ca, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, !prof !225

bb.ca:                                            ; preds = %bb.bz
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.6173.1, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !262
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.ca, %bb.bz
  %.sroa.6173.2 = phi ptr [ %i.ro, %bb.ca ], [ %.sroa.6173.1, %bb.bz ]
  %.sroa.0171.1 = phi ptr [ %i.rp, %bb.ca ], [ %i.rl, %bb.bz ]
  %i.rq = load ptr, ptr %.sroa.6.0, align 8, !tbaa !262
  %i.rr = icmp eq ptr %.sroa.0.0, %i.rq
  br i1 %i.rr, label %bb.cb, label %bb.cc, !prof !225

bb.cb:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.rs = getelementptr inbounds i8, ptr %.sroa.6.0, i64 -8 ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !262
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i

bb.cc:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.rv = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i: ; preds = %bb.cc, %bb.cb
  %.sroa.6.1 = phi ptr [ %i.rs, %bb.cb ], [ %.sroa.6.0, %bb.cc ]
  %storemerge.i11.i = phi ptr [ %i.ru, %bb.cb ], [ %i.rv, %bb.cc ] ; 3 uses
  store i32 %i.qz, ptr %storemerge.i11.i, align 4, !tbaa !254
  store i32 0, ptr %i.qr, align 4, !tbaa !254
  %i.rw = getelementptr inbounds i8, ptr %.023.i, i64 -4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %storemerge.i11.i, i64 4
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !254
  store i32 %i.ry, ptr %i.rx, align 4, !tbaa !254
  store i32 0, ptr %i.rw, align 4, !tbaa !254
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i
  %.sroa.6173.3 = phi ptr [ %.sroa.6173.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6173.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0171.2 = phi ptr [ %storemerge.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.0171.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %.sroa.6.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.sroa.0.1 = phi ptr [ %storemerge.i9.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %storemerge.i11.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ]
  %.1.i164 = phi ptr [ %.023.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit10.i ], [ %i.qr, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit12.i ] ; 2 uses
  %.not.i165 = icmp eq ptr %i.qb, %.1.i164
  br i1 %.not.i165, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i163, !llvm.loop !168

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_14deque_iteratorISF_Lb0ELj0ELj0EmEEEEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.cd, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %17 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 12 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 14 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 8 ; 9 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 6 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.47", align 16 ; 4 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 3 uses
  %31 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %32 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %33 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %34 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %35 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = add i64 %5, %4                           ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !311, !noalias !10862 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312, !noalias !10862 ; 5 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262, !noalias !10862
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, %4                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.j, 128
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %i.b, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1024
  %i.km = icmp eq ptr %i.kj, %i.kl
  br i1 %i.km, label %bb.av, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110, !prof !225

bb.av:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i109
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.5222.0, i64 8 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !262, !noalias !10878
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110: ; preds = %bb.av, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i109
  %.sroa.5222.1 = phi ptr [ %i.kn, %bb.av ], [ %.sroa.5222.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i109 ]
  %.sroa.0220.1 = phi ptr [ %i.ko, %bb.av ], [ %i.kj, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit.i109 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0217.0, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %.sroa.5.0, align 8, !tbaa !262, !noalias !10879
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1024
  %i.ks = icmp eq ptr %i.kp, %i.kr
  br i1 %i.ks, label %bb.aw, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111, !prof !225

bb.aw:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 8 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !262, !noalias !10879
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111: ; preds = %bb.aw, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110
  %.sroa.5.1 = phi ptr [ %i.kt, %bb.aw ], [ %.sroa.5.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110 ] ; 2 uses
  %.sroa.0217.1 = phi ptr [ %i.ku, %bb.aw ], [ %i.kp, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit4.i110 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0217.0, i64 4 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0220.0, i64 4 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ky = load <2 x i32>, ptr %.sroa.0217.0, align 4, !tbaa !254, !noalias !10880
  store i32 0, ptr %.sroa.0217.0, align 4, !tbaa !254, !noalias !10880
  %i.kz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !10880
  store i32 0, ptr %i.kv, align 4, !tbaa !254, !noalias !10880
  %i.la = add i32 %i.kz, 2
  store i32 %i.la, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !10880
  %i.lb = load i32, ptr %.sroa.0220.0, align 4, !tbaa !254, !noalias !10880
  store i32 %i.lb, ptr %.sroa.0217.0, align 4, !tbaa !254, !noalias !10880
  store i32 0, ptr %.sroa.0220.0, align 4, !tbaa !254, !noalias !10880
  %i.lc = load i32, ptr %i.kw, align 4, !tbaa !254, !noalias !10880
  store i32 %i.lc, ptr %i.kv, align 4, !tbaa !254, !noalias !10880
  store i32 0, ptr %i.kw, align 4, !tbaa !254, !noalias !10880
  %i.ld = load i32, ptr %i.kc, align 4, !tbaa !254, !noalias !10880
  store i32 %i.ld, ptr %.sroa.0220.0, align 4, !tbaa !254, !noalias !10880
  %i.le = load i32, ptr %i.kx, align 4, !tbaa !254, !noalias !10880
  store i32 %i.le, ptr %i.kw, align 4, !tbaa !254, !noalias !10880
  store <2 x i32> %i.ky, ptr %i.kc, align 4, !tbaa !254, !noalias !10880
  %i.lf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !10880
  %i.lg = add i32 %i.lf, -2
  store i32 %i.lg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !10880
  %.not10.i112 = icmp eq ptr %.sroa.0226.0, %.sroa.0.0.i89
  br i1 %.not10.i112, label %._crit_edge.i113, label %.lr.ph.i108, !llvm.loop !10816

._crit_edge.i113:                                 ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread
  %.sroa.5.2 = phi ptr [ %i.iq, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.sroa.5.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111 ] ; 2 uses
  %.sroa.0217.2 = phi ptr [ %i.ip, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.sroa.0217.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEi.exit5.i111 ] ; 2 uses
  %.not11.i114 = icmp eq ptr %.sroa.0.0.i94, %.sroa.0315.0418
  br i1 %.not11.i114, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i113
  %i.lh = load i32, ptr %.sroa.0.0.i94, align 4, !tbaa !254, !noalias !10880
  store i32 0, ptr %.sroa.0.0.i94, align 4, !tbaa !254, !noalias !10880
  %i.li = load i32, ptr %.sroa.0315.0418, align 4, !tbaa !254, !noalias !10880
  store i32 %i.li, ptr %.sroa.0.0.i94, align 4, !tbaa !254, !noalias !10880
  store i32 %i.lh, ptr %.sroa.0315.0418, align 4, !tbaa !254, !noalias !10880
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i94, i64 4 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0315.0418, i64 4 ; 2 uses
  %i.ll = load i32, ptr %i.lj, align 4, !tbaa !254, !noalias !10880
  store i32 0, ptr %i.lj, align 4, !tbaa !254, !noalias !10880
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !254, !noalias !10880
  store i32 %i.lm, ptr %i.lj, align 4, !tbaa !254, !noalias !10880
  store i32 %i.ll, ptr %i.lk, align 4, !tbaa !254, !noalias !10880
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i113
  %i.ln = icmp eq ptr %.sroa.0.0.i94, %.sroa.0356.0429
  br i1 %i.ln, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lo = icmp eq ptr %.sroa.0356.0429, %.sroa.0315.0418 ; 2 uses
  %spec.select536 = select i1 %i.lo, ptr %.sroa.0.0.i94, ptr %.sroa.0356.0429
  %spec.select537 = select i1 %i.lo, ptr %.sroa.6.1.i93, ptr %.sroa.12.0430
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118: ; preds = %bb.az, %bb.ay, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
  %.sroa.5.3 = phi ptr [ %i.iq, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %i.iq, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.sroa.5.2, %bb.az ], [ %.sroa.5.2, %bb.ay ]
  %.sroa.0217.3 = phi ptr [ %i.ip, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %i.ip, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %.sroa.0217.2, %bb.az ], [ %.sroa.0217.2, %bb.ay ] ; 2 uses
  %.sroa.0356.6 = phi ptr [ %.sroa.0356.0429, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.0356.0429, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select536, %bb.az ], [ %.sroa.0315.0418, %bb.ay ]
  %.sroa.12.6 = phi ptr [ %.sroa.12.0430, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit ], [ %.sroa.12.0430, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.thread ], [ %spec.select537, %bb.az ], [ %.sroa.11.0422, %bb.ay ]
  store ptr %.sroa.0217.3, ptr %19, align 8, !tbaa !311
  store ptr %.sroa.5.3, ptr %i.y, align 8, !tbaa !312
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit

bb.ba:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i119 = icmp eq ptr %.sroa.0.0.i94, %.sroa.0315.0418
  br i1 %.not.i119, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lp = load i32, ptr %.sroa.0.0.i94, align 4, !tbaa !254
  store i32 0, ptr %.sroa.0.0.i94, align 4, !tbaa !254
  %i.lq = load i32, ptr %.sroa.0315.0418, align 4, !tbaa !254
  store i32 %i.lq, ptr %.sroa.0.0.i94, align 4, !tbaa !254
  store i32 %i.lp, ptr %.sroa.0315.0418, align 4, !tbaa !254
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i94, i64 4 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0315.0418, i64 4 ; 2 uses
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !254
  store i32 0, ptr %i.lr, align 4, !tbaa !254
  %i.lu = load i32, ptr %i.ls, align 4, !tbaa !254
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !254
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !254
  %i.lv = icmp eq ptr %.sroa.0.0.i94, %.sroa.0356.0429
  br i1 %i.lv, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lw = icmp eq ptr %.sroa.0356.0429, %.sroa.0315.0418 ; 2 uses
  %spec.select538 = select i1 %i.lw, ptr %.sroa.0.0.i94, ptr %.sroa.0356.0429
  %spec.select539 = select i1 %i.lw, ptr %.sroa.6.1.i93, ptr %.sroa.12.0430
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit: ; preds = %bb.bc, %bb.bb, %bb.ba, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118
  %i.lx = phi ptr [ %.sroa.0217.3, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118 ], [ %i.in, %bb.ba ], [ %i.in, %bb.bc ], [ %i.in, %bb.bb ]
  %i.ly = phi ptr [ %i.ip, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118 ], [ %i.im, %bb.ba ], [ %i.im, %bb.bc ], [ %i.im, %bb.bb ]
  %.sroa.0356.1 = phi ptr [ %.sroa.0356.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118 ], [ %.sroa.0356.0429, %bb.ba ], [ %spec.select538, %bb.bc ], [ %.sroa.0315.0418, %bb.bb ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit118 ], [ %.sroa.12.0430, %bb.ba ], [ %spec.select539, %bb.bc ], [ %.sroa.11.0422, %bb.bb ]
  %i.lz = xor i1 %i.il, %i.io
  %i.ma = zext i1 %i.lz to i8
  %i.mb = load ptr, ptr %23, align 8, !tbaa !311
  %i.mc = load ptr, ptr %i.bx, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit
  %i.md = phi ptr [ %i.lx, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.sroa.0253.3, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %i.me = phi ptr [ %i.ly, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.gt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %i.mf = phi i1 [ %i.ik, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.fx, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ]
  %.sroa.0348.1 = phi ptr [ %i.mb, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.10352.1 = phi ptr [ %i.mc, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.0356.2 = phi ptr [ %.sroa.0356.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.sroa.0356.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.sroa.12.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %.153 = phi i8 [ %i.ma, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEEEEvT_SB_RSB_.exit ], [ %.052433, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_SA_NS0_7swap_opEEET1_T_SD_RSD_T0_SF_SF_SC_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.mf, true
  %i.mg = sext i1 %not. to i64
  %.158 = add i64 %.057432, %i.mg
  br i1 %.not.i.i81, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mh = load ptr, ptr %.sroa.9.0425, align 8, !tbaa !262
  %i.mi = ptrtoint ptr %.sroa.0336.0426 to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 3
  %i.mm = add nsw i64 %i.ml, %2                   ; 4 uses
  %or.cond.i = icmp ult i64 %i.mm, 128
  br i1 %or.cond.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mn = getelementptr inbounds [8 x i8], ptr %.sroa.0336.0426, i64 %2
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit

bb.bg:                                            ; preds = %bb.be
  %i.mo = icmp sgt i64 %i.mm, 0
  %i.mp = lshr i64 %i.mm, 7                       ; 2 uses
  %i.mq = or disjoint i64 %i.mp, -144115188075855872
  %i.mr = select i1 %i.mo, i64 %i.mp, i64 %i.mq   ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %.sroa.9.0425, i64 %i.mr ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !262
  %i.mu = shl nsw i64 %i.mr, 7
  %i.mv = sub nsw i64 %i.mm, %i.mu
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.mv
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.bf, %bb.bg, %bb.bd
  %.sroa.9.4 = phi ptr [ %.sroa.9.0425, %bb.bd ], [ %.sroa.9.0425, %bb.bf ], [ %i.ms, %bb.bg ] ; 2 uses
  %.sroa.0336.3 = phi ptr [ %.sroa.0336.0426, %bb.bd ], [ %i.mn, %bb.bf ], [ %i.mw, %bb.bg ] ; 2 uses
  store ptr %.sroa.0.0.i89, ptr %20, align 8, !tbaa !311
  store ptr %.sroa.6.1.i88, ptr %i.as, align 8, !tbaa !312
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0315.0418, i64 8 ; 2 uses
  %i.my = load ptr, ptr %.sroa.11.0422, align 8, !tbaa !262
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1024
  %i.na = icmp eq ptr %i.mx, %i.mz
  br i1 %i.na, label %bb.bh, label %bb.bi, !prof !225

bb.bh:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.11.0422, i64 8 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !262
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit, %bb.bh
  %.sroa.0315.2 = phi ptr [ %i.nc, %bb.bh ], [ %i.mx, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit ]
  %.sroa.11.2 = phi ptr [ %i.nb, %bb.bh ], [ %.sroa.11.0422, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit ]
  %i.nd = icmp ne i64 %.051434, 0
  %.neg = sext i1 %i.nd to i64
  %i.ne = add i64 %.051434, %.neg
  %i.nf = icmp ne i64 %i.cc, 0
  %.neg63 = sext i1 %i.nf to i64
  %i.ng = add i64 %.sroa.speculated370, %.neg63
  %i.nh = add i64 %.0381431, -1                   ; 2 uses
  %.not = icmp eq i64 %i.nh, 0
  br i1 %.not, label %.thread, label %bb.k, !llvm.loop !10829

.thread:                                          ; preds = %bb.bi, %bb.w, %bb.v
  %i.ni = phi ptr [ %i.md, %bb.bi ], [ %i.ed, %bb.w ], [ %i.ed, %bb.v ] ; 2 uses
  %i.nj = phi ptr [ %i.me, %bb.bi ], [ %i.ec, %bb.w ], [ %i.ec, %bb.v ] ; 2 uses
  %.sroa.9.0.lcssa.ph = phi ptr [ %.sroa.9.4, %bb.bi ], [ %.sroa.9.0425, %bb.w ], [ %.sroa.9.0425, %bb.v ] ; 2 uses
  %.sroa.0336.0.lcssa.ph = phi ptr [ %.sroa.0336.3, %bb.bi ], [ %.sroa.0336.0426, %bb.w ], [ %.sroa.0336.0426, %bb.v ] ; 2 uses
  %.sroa.0348.0.lcssa.ph = phi ptr [ %.sroa.0348.1, %bb.bi ], [ %.sroa.0348.0427, %bb.w ], [ %.sroa.0348.0427, %bb.v ] ; 3 uses
  %.sroa.10352.0.lcssa.ph = phi ptr [ %.sroa.10352.1, %bb.bi ], [ %.sroa.10352.0428, %bb.w ], [ %.sroa.10352.0428, %bb.v ] ; 3 uses
  %.sroa.0356.0.lcssa.ph = phi ptr [ %.sroa.0356.2, %bb.bi ], [ %.sroa.0356.0429, %bb.w ], [ %.sroa.0356.0429, %bb.v ] ; 2 uses
  %.sroa.12.0.lcssa.ph = phi ptr [ %.sroa.12.2, %bb.bi ], [ %.sroa.12.0430, %bb.w ], [ %.sroa.12.0430, %bb.v ] ; 2 uses
  %.0381.lcssa.ph = phi i64 [ 0, %bb.bi ], [ %.0381431, %bb.w ], [ %.0381431, %bb.v ] ; 2 uses
  %.052.lcssa.ph = phi i8 [ %.153, %bb.bi ], [ 1, %bb.w ], [ %.052433, %bb.v ]
  %36 = trunc nuw i8 %.052.lcssa.ph to i1         ; 2 uses
  %.not2.i.i123 = icmp eq ptr %i.nj, %i.ni
  br i1 %.not2.i.i123, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137, label %.lr.ph.i.preheader.i124

.lr.ph.i.preheader.i124:                          ; preds = %.thread
  %i.nk = load ptr, ptr %i.v, align 8, !tbaa !312 ; 2 uses
  %.pre.i125 = load ptr, ptr %i.nk, align 8, !tbaa !262, !noalias !10881
  br label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133, %.lr.ph.i.preheader.i124
  %i.nl = phi ptr [ %i.ny, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ], [ %.pre.i125, %.lr.ph.i.preheader.i124 ] ; 2 uses
  %.sroa.55.0.i127 = phi ptr [ %.sroa.55.1.i132, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ], [ %i.nk, %.lr.ph.i.preheader.i124 ] ; 2 uses
  %.sroa.5.0.i128 = phi ptr [ %.sroa.5.1.i134, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ], [ %.sroa.10352.0.lcssa.ph, %.lr.ph.i.preheader.i124 ] ; 3 uses
  %.sroa.0.0.i129 = phi ptr [ %.sroa.0.1.i135, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ], [ %.sroa.0348.0.lcssa.ph, %.lr.ph.i.preheader.i124 ] ; 4 uses
  %i.nm = phi ptr [ %.sroa.03.0.i131, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ], [ %i.nj, %.lr.ph.i.preheader.i124 ] ; 5 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !254, !noalias !10881
  store i32 0, ptr %i.nm, align 4, !tbaa !254, !noalias !10881
  %i.no = load i32, ptr %.sroa.0.0.i129, align 4, !tbaa !254, !noalias !10881
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !254, !noalias !10881
  store i32 %i.nn, ptr %.sroa.0.0.i129, align 4, !tbaa !254, !noalias !10881
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 4 ; 2 uses
  %i.nr = load i32, ptr %i.np, align 4, !tbaa !254, !noalias !10881
  store i32 0, ptr %i.np, align 4, !tbaa !254, !noalias !10881
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !254, !noalias !10881
  store i32 %i.ns, ptr %i.np, align 4, !tbaa !254, !noalias !10881
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !254, !noalias !10881
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 1024
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %bb.bj, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130, !prof !225

bb.bj:                                            ; preds = %.lr.ph.i.i126
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i127, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !262, !noalias !10881 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130: ; preds = %bb.bj, %.lr.ph.i.i126
  %i.ny = phi ptr [ %i.nx, %bb.bj ], [ %i.nl, %.lr.ph.i.i126 ]
  %.sroa.03.0.i131 = phi ptr [ %i.nx, %bb.bj ], [ %i.nt, %.lr.ph.i.i126 ] ; 2 uses
  %.sroa.55.1.i132 = phi ptr [ %i.nw, %bb.bj ], [ %.sroa.55.0.i127, %.lr.ph.i.i126 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 8 ; 2 uses
  %i.oa = load ptr, ptr %.sroa.5.0.i128, align 8, !tbaa !262, !noalias !10881
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 1024
  %i.oc = icmp eq ptr %i.nz, %i.ob
  br i1 %i.oc, label %bb.bk, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133, !prof !225

bb.bk:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i128, i64 8 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !262, !noalias !10881
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133: ; preds = %bb.bk, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130
  %.sroa.5.1.i134 = phi ptr [ %i.od, %bb.bk ], [ %.sroa.5.0.i128, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130 ]
  %.sroa.0.1.i135 = phi ptr [ %i.oe, %bb.bk ], [ %i.nz, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i130 ]
  %.not.i.i136 = icmp eq ptr %.sroa.03.0.i131, %i.ni
  br i1 %.not.i.i136, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137, label %.lr.ph.i.i126, !llvm.loop !170

_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75, %.thread
  %.052.lcssa529 = phi i1 [ true, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %36, %.thread ], [ %36, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ] ; 2 uses
  %.0381.lcssa528 = phi i64 [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.0381.lcssa.ph, %.thread ], [ %.0381.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ] ; 2 uses
  %.sroa.12.0.lcssa527 = phi ptr [ %.sroa.6.1.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.12.0.lcssa.ph, %.thread ], [ %.sroa.12.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ]
  %.sroa.0356.0.lcssa526 = phi ptr [ %.sroa.0.0.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.0356.0.lcssa.ph, %.thread ], [ %.sroa.0356.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ]
  %.sroa.10352.0.lcssa525 = phi ptr [ %i.ab, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.10352.0.lcssa.ph, %.thread ], [ %.sroa.10352.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ]
  %.sroa.0348.0.lcssa524 = phi ptr [ %i.z, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.0348.0.lcssa.ph, %.thread ], [ %.sroa.0348.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ]
  %.sroa.0336.0.lcssa523 = phi ptr [ %.sroa.0.0.i69, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.0336.0.lcssa.ph, %.thread ], [ %.sroa.0336.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ] ; 2 uses
  %.sroa.9.0.lcssa522 = phi ptr [ %.sroa.6.1.i68, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit75 ], [ %.sroa.9.0.lcssa.ph, %.thread ], [ %.sroa.9.0.lcssa.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i133 ] ; 2 uses
  %.not.i.i138 = icmp eq i64 %6, 0                ; 2 uses
  br i1 %.not.i.i138, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137
  %i.of = load ptr, ptr %.sroa.6.1.i73, align 8, !tbaa !262, !noalias !10882
  %i.og = ptrtoint ptr %.sroa.0.0.i74 to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = ashr exact i64 %i.oi, 3
  %i.ok = add nsw i64 %i.oj, %6                   ; 7 uses
  %or.cond.i.i139 = icmp ult i64 %i.ok, 128
  br i1 %or.cond.i.i139, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ol = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i74, i64 %6
  %i.om = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i74, i64 %6
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147

bb.bn:                                            ; preds = %bb.bl
  %i.on = icmp sgt i64 %i.ok, 0
  %i.oo = lshr i64 %i.ok, 7                       ; 2 uses
  %i.op = or disjoint i64 %i.oo, -144115188075855872
  %i.oq = select i1 %i.on, i64 %i.oo, i64 %i.op   ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i73, i64 %i.oq ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !262, !noalias !10882
  %i.ot = shl nsw i64 %i.oq, 7
  %i.ou = sub nsw i64 %i.ok, %i.ot
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.ou
  %i.ow = icmp sgt i64 %i.ok, 0
  %i.ox = lshr i64 %i.ok, 7                       ; 2 uses
  %i.oy = or disjoint i64 %i.ox, -144115188075855872
  %i.oz = select i1 %i.ow, i64 %i.ox, i64 %i.oy   ; 2 uses
  %i.pa = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i73, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !262, !noalias !10883
  %i.pc = shl nsw i64 %i.oz, 7
  %i.pd = sub nsw i64 %i.ok, %i.pc
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.pd
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147: ; preds = %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137, %bb.bm, %bb.bn
  %.sroa.0.0.i141415 = phi ptr [ %i.ov, %bb.bn ], [ %i.ol, %bb.bm ], [ %.sroa.0.0.i74, %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137 ]
  %.sroa.6.1.i140413 = phi ptr [ %i.or, %bb.bn ], [ %.sroa.6.1.i73, %bb.bm ], [ %.sroa.6.1.i73, %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137 ]
  %.sroa.0.0.i146 = phi ptr [ %i.pe, %bb.bn ], [ %i.om, %bb.bm ], [ %.sroa.0.0.i74, %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit137 ] ; 2 uses
  %i.pf = load ptr, ptr %7, align 8, !tbaa !311   ; 6 uses
  %i.pg = load ptr, ptr %i.w, align 8, !tbaa !312 ; 7 uses
  %.not2.i.i148 = icmp eq ptr %.sroa.0.0.i74, %.sroa.0.0.i146
  br i1 %.not2.i.i148, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162, label %.lr.ph.i.preheader.i149

.lr.ph.i.preheader.i149:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147
  %.pre.i150 = load ptr, ptr %.sroa.6.1.i73, align 8, !tbaa !262, !noalias !10884
  br label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158, %.lr.ph.i.preheader.i149
  %i.ph = phi ptr [ %i.pu, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158 ], [ %.pre.i150, %.lr.ph.i.preheader.i149 ] ; 2 uses
  %.sroa.55.0.i152 = phi ptr [ %.sroa.55.1.i157, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158 ], [ %.sroa.6.1.i73, %.lr.ph.i.preheader.i149 ] ; 2 uses
  %.sroa.5.0.i153 = phi ptr [ %.sroa.5.1.i159, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158 ], [ %i.pg, %.lr.ph.i.preheader.i149 ] ; 3 uses
  %.sroa.0.0.i154 = phi ptr [ %.sroa.0.1.i160, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158 ], [ %i.pf, %.lr.ph.i.preheader.i149 ] ; 4 uses
  %i.pi = phi ptr [ %.sroa.03.0.i156, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158 ], [ %.sroa.0.0.i74, %.lr.ph.i.preheader.i149 ] ; 5 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !254, !noalias !10884
  store i32 0, ptr %i.pi, align 4, !tbaa !254, !noalias !10884
  %i.pk = load i32, ptr %.sroa.0.0.i154, align 4, !tbaa !254, !noalias !10884
  store i32 %i.pk, ptr %i.pi, align 4, !tbaa !254, !noalias !10884
  store i32 %i.pj, ptr %.sroa.0.0.i154, align 4, !tbaa !254, !noalias !10884
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 4 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i154, i64 4 ; 2 uses
  %i.pn = load i32, ptr %i.pl, align 4, !tbaa !254, !noalias !10884
  store i32 0, ptr %i.pl, align 4, !tbaa !254, !noalias !10884
  %i.po = load i32, ptr %i.pm, align 4, !tbaa !254, !noalias !10884
  store i32 %i.po, ptr %i.pl, align 4, !tbaa !254, !noalias !10884
  store i32 %i.pn, ptr %i.pm, align 4, !tbaa !254, !noalias !10884
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ph, i64 1024
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %bb.bo, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155, !prof !225

bb.bo:                                            ; preds = %.lr.ph.i.i151
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i152, i64 8 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !262, !noalias !10884 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155: ; preds = %bb.bo, %.lr.ph.i.i151
  %i.pu = phi ptr [ %i.pt, %bb.bo ], [ %i.ph, %.lr.ph.i.i151 ]
  %.sroa.03.0.i156 = phi ptr [ %i.pt, %bb.bo ], [ %i.pp, %.lr.ph.i.i151 ] ; 2 uses
  %.sroa.55.1.i157 = phi ptr [ %i.ps, %bb.bo ], [ %.sroa.55.0.i152, %.lr.ph.i.i151 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i154, i64 8 ; 2 uses
  %i.pw = load ptr, ptr %.sroa.5.0.i153, align 8, !tbaa !262, !noalias !10884
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 1024
  %i.py = icmp eq ptr %i.pv, %i.px
  br i1 %i.py, label %bb.bp, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158, !prof !225

bb.bp:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i153, i64 8 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !262, !noalias !10884
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158: ; preds = %bb.bp, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155
  %.sroa.5.1.i159 = phi ptr [ %i.pz, %bb.bp ], [ %.sroa.5.0.i153, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155 ]
  %.sroa.0.1.i160 = phi ptr [ %i.qa, %bb.bp ], [ %i.pv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i155 ]
  %.not.i.i161 = icmp eq ptr %.sroa.03.0.i156, %.sroa.0.0.i146
  br i1 %.not.i.i161, label %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162, label %.lr.ph.i.i151, !llvm.loop !170

_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1.i.i158, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit147
  store ptr %i.pf, ptr %18, align 16, !tbaa !311
  store ptr %i.pg, ptr %i.v, align 8, !tbaa !312
  br i1 %.not.i.i138, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167, label %bb.bq

bb.bq:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162
  %i.qb = load ptr, ptr %i.pg, align 8, !tbaa !262, !noalias !10885
  %i.qc = ptrtoint ptr %i.pf to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = ashr exact i64 %i.qe, 3
  %i.qg = add nsw i64 %i.qf, %6                   ; 4 uses
  %or.cond.i.i164 = icmp ult i64 %i.qg, 128
  br i1 %or.cond.i.i164, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %6
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167

bb.bs:                                            ; preds = %bb.bq
  %i.qi = icmp sgt i64 %i.qg, 0
  %i.qj = lshr i64 %i.qg, 7                       ; 2 uses
  %i.qk = or disjoint i64 %i.qj, -144115188075855872
  %i.ql = select i1 %i.qi, i64 %i.qj, i64 %i.qk   ; 2 uses
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.ql ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !262, !noalias !10885
  %i.qo = shl nsw i64 %i.ql, 7
  %i.qp = sub nsw i64 %i.qg, %i.qo
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.qp
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167: ; preds = %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162, %bb.br, %bb.bs
  %.sroa.6.1.i165 = phi ptr [ %i.pg, %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162 ], [ %i.pg, %bb.br ], [ %i.qm, %bb.bs ] ; 2 uses
  %.sroa.0.0.i166 = phi ptr [ %i.pf, %_ZN5boost7movelib7swap_opclINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEESA_EET0_NS0_9forward_tET_SD_SB_.exit162 ], [ %i.qh, %bb.br ], [ %i.qq, %bb.bs ] ; 2 uses
  store ptr %.sroa.0.0.i166, ptr %19, align 8, !tbaa !311
  store ptr %.sroa.6.1.i165, ptr %i.y, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %.sroa.0.0.i166, ptr %24, align 8, !tbaa !311
  %i.qr = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store ptr %.sroa.6.1.i165, ptr %i.qr, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.qs = load ptr, ptr %0, align 8, !tbaa !311, !noalias !10886 ; 3 uses
  %i.qt = load ptr, ptr %i.c, align 8, !tbaa !312, !noalias !10886 ; 4 uses
  br i1 %i.bk, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172, label %bb.bt

bb.bt:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !262, !noalias !10886
  %i.qv = ptrtoint ptr %i.qs to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 3
  %i.qz = add nsw i64 %i.qy, %5                   ; 4 uses
  %or.cond.i.i169 = icmp ult i64 %i.qz, 128
  br i1 %or.cond.i.i169, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %5
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172

bb.bv:                                            ; preds = %bb.bt
  %i.rb = icmp sgt i64 %i.qz, 0
  %i.rc = lshr i64 %i.qz, 7                       ; 2 uses
  %i.rd = or disjoint i64 %i.rc, -144115188075855872
  %i.re = select i1 %i.rb, i64 %i.rc, i64 %i.rd   ; 2 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.qt, i64 %i.re ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !262, !noalias !10886
  %i.rh = shl nsw i64 %i.re, 7
  %i.ri = sub nsw i64 %i.qz, %i.rh
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.ri
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167, %bb.bu, %bb.bv
  %.sroa.6.1.i170 = phi ptr [ %i.qt, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167 ], [ %i.qt, %bb.bu ], [ %i.rf, %bb.bv ] ; 4 uses
  %.sroa.0.0.i171 = phi ptr [ %i.qs, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit167 ], [ %i.ra, %bb.bu ], [ %i.rj, %bb.bv ] ; 3 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit177, label %bb.bw

bb.bw:                                            ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172
  %i.rk = load ptr, ptr %.sroa.6.1.i170, align 8, !tbaa !262, !noalias !10887
  %i.rl = ptrtoint ptr %.sroa.0.0.i171 to i64
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = ashr exact i64 %i.rn, 3
  %i.rp = add nsw i64 %i.ro, %4                   ; 4 uses
  %or.cond.i.i174 = icmp ult i64 %i.rp, 128
  br i1 %or.cond.i.i174, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i171, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit177

bb.by:                                            ; preds = %bb.bw
  %i.rr = icmp sgt i64 %i.rp, 0
  %i.rs = lshr i64 %i.rp, 7                       ; 2 uses
  %i.rt = or disjoint i64 %i.rs, -144115188075855872
  %i.ru = select i1 %i.rr, i64 %i.rs, i64 %i.rt   ; 2 uses
  %i.rv = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i170, i64 %i.ru ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !262, !noalias !10887
  %i.rx = shl nsw i64 %i.ru, 7
  %i.ry = sub nsw i64 %i.rp, %i.rx
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.ry
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit177

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit177: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172, %bb.bx, %bb.by
  %.sroa.6.1.i175 = phi ptr [ %.sroa.6.1.i170, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172 ], [ %.sroa.6.1.i170, %bb.bx ], [ %i.rv, %bb.by ]
  %.sroa.0.0.i176 = phi ptr [ %.sroa.0.0.i171, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit172 ], [ %i.rq, %bb.bx ], [ %i.rz, %bb.by ]
  store ptr %.sroa.0.0.i176, ptr %26, align 8, !tbaa !311, !alias.scope !10888
  %i.sa = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.6.1.i175, ptr %i.sa, align 8, !tbaa !312, !alias.scope !10888
  store ptr %.sroa.0356.0.lcssa526, ptr %27, align 8, !tbaa !311, !alias.scope !10889
  %i.sb = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %.sroa.12.0.lcssa527, ptr %i.sb, align 8, !tbaa !312, !alias.scope !10889
  store ptr %.sroa.0.0.i74, ptr %28, align 8, !tbaa !311, !alias.scope !10890
  %i.sc = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.6.1.i73, ptr %i.sc, align 8, !tbaa !312, !alias.scope !10890
  store ptr %i.pf, ptr %29, align 8, !tbaa !311, !alias.scope !10891
  %i.sd = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.pg, ptr %i.sd, align 8, !tbaa !312, !alias.scope !10891
  store ptr %.sroa.0.0.i141415, ptr %30, align 8, !tbaa !311, !alias.scope !10892
  %i.se = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %.sroa.6.1.i140413, ptr %i.se, align 8, !tbaa !312, !alias.scope !10892
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SC_SC_SL_NS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.47") align 8 %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dead_on_return %29, ptr noundef nonnull align 8 dead_on_return %30, i64 noundef %2, i64 noundef %.0381.lcssa528, i64 noundef 0, i64 noundef %.0381.lcssa528, i1 noundef zeroext true)
  %.sroa.speculated347 = select i1 %.052.lcssa529, ptr %.sroa.0348.0.lcssa524, ptr %.sroa.0336.0.lcssa523
  %i.sf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.speculated344 = select i1 %.052.lcssa529, ptr %.sroa.10352.0.lcssa525, ptr %.sroa.9.0.lcssa522
  %i.sg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.sh = load <2 x ptr>, ptr %25, align 16, !tbaa !314, !noalias !10893
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.si = load ptr, ptr %24, align 8, !tbaa !311, !noalias !10894 ; 2 uses
  %i.sj = load ptr, ptr %i.qr, align 8, !tbaa !312, !noalias !10894 ; 2 uses
  store ptr %i.si, ptr %19, align 8, !tbaa !311
  store ptr %i.sj, ptr %i.y, align 8, !tbaa !312
  store ptr %.sroa.speculated347, ptr %31, align 8, !tbaa !311
  store ptr %.sroa.speculated344, ptr %i.sf, align 8, !tbaa !312
  store ptr %.sroa.0336.0.lcssa523, ptr %32, align 8, !tbaa !311
  store ptr %.sroa.9.0.lcssa522, ptr %i.sg, align 8, !tbaa !312
  store <2 x ptr> %i.sh, ptr %33, align 16, !tbaa !314
  %i.sk = load <2 x ptr>, ptr %18, align 16, !tbaa !314
  store <2 x ptr> %i.sk, ptr %34, align 16, !tbaa !314
  store ptr %i.si, ptr %35, align 8, !tbaa !311
  %i.sl = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.sj, ptr %i.sl, align 8, !tbaa !312
  call void @_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEESH_EEvT2_SI_SI_T1_SJ_T_T0_(ptr noundef nonnull align 8 dead_on_return %31, ptr noundef nonnull align 8 dead_on_return %32, ptr noundef nonnull align 8 dead_on_return %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 3 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %14 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 8 ; 6 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !311, !noalias !10923 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312, !noalias !10923 ; 3 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262, !noalias !10923
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = add nsw i64 %i.j, %4                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.k, 128
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %i.k, 0
  %i.n = lshr i64 %i.k, 7                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -144115188075855872
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !262, !noalias !10923
  %i.s = shl nsw i64 %i.p, 7
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  %i.v = mul i64 %i.b, %2
  %i.w = add i64 %i.v, %3                         ; 3 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !311, !noalias !10924 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !312, !noalias !10924 ; 9 uses
  %.not.i.i37 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i37, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !262, !noalias !10924
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = add nsw i64 %i.ae, %i.w                 ; 4 uses
  %or.cond.i.i38 = icmp ult i64 %i.af, 128
  br i1 %or.cond.i.i38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.w
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp sgt i64 %i.af, 0
  %i.ai = lshr i64 %i.af, 7                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -144115188075855872
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !262, !noalias !10924
  %i.an = shl nsw i64 %i.ak, 7
  %i.ao = sub nsw i64 %i.af, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, %bb.f, %bb.g
  %.sroa.6.1.i39 = phi ptr [ %i.z, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.z, %bb.f ], [ %i.al, %bb.g ] ; 9 uses
  %.sroa.0.0.i40 = phi ptr [ %i.x, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.ag, %bb.f ], [ %i.ap, %bb.g ] ; 9 uses
  %.not.i.i42 = icmp eq i64 %6, 0
  br i1 %.not.i.i42, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41
  %i.aq = load ptr, ptr %.sroa.6.1.i39, align 8, !tbaa !262, !noalias !10925
  %i.ar = ptrtoint ptr %.sroa.0.0.i40 to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, %6                   ; 4 uses
  %or.cond.i.i43 = icmp ult i64 %i.av, 128
  br i1 %or.cond.i.i43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i40, i64 %6
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp sgt i64 %i.av, 0
  %i.ay = lshr i64 %i.av, 7                       ; 2 uses
  %i.az = or disjoint i64 %i.ay, -144115188075855872
  %i.ba = select i1 %i.ax, i64 %i.ay, i64 %i.az   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i39, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !262, !noalias !10925
  %i.bd = shl nsw i64 %i.ba, 7
  %i.be = sub nsw i64 %i.av, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.be
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41, %bb.i, %bb.j
  %.sroa.6.1.i44 = phi ptr [ %.sroa.6.1.i39, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41 ], [ %.sroa.6.1.i39, %bb.i ], [ %i.bb, %bb.j ] ; 3 uses
  %.sroa.0.0.i45 = phi ptr [ %.sroa.0.0.i40, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit41 ], [ %i.aw, %bb.i ], [ %i.bf, %bb.j ] ; 3 uses
  %i.bg = icmp eq i64 %5, 0
  %i.bh = select i1 %i.bg, i64 0, i64 %4          ; 2 uses
  %i.bi = add i64 %i.bh, 1
  %.sroa.speculated152 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.b)
  %.not.i.i47 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i47, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51, label %bb.k

bb.k:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !262, !noalias !10926
  %i.bk = ptrtoint ptr %i.x to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = add nsw i64 %i.bn, %3                   ; 4 uses
  %or.cond.i.i48 = icmp ult i64 %i.bo, 128
  br i1 %or.cond.i.i48, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %3
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51

bb.m:                                             ; preds = %bb.k
  %i.bq = icmp sgt i64 %i.bo, 0
  %i.br = lshr i64 %i.bo, 7                       ; 2 uses
  %i.bs = or disjoint i64 %i.br, -144115188075855872
  %i.bt = select i1 %i.bq, i64 %i.br, i64 %i.bs   ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !262, !noalias !10926
  %i.bw = shl nsw i64 %i.bt, 7
  %i.bx = sub nsw i64 %i.bo, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46, %bb.l, %bb.m
  %.sroa.6.1.i49 = phi ptr [ %i.z, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46 ], [ %i.z, %bb.l ], [ %i.bu, %bb.m ]
  %.sroa.0.0.i50 = phi ptr [ %i.x, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit46 ], [ %i.bp, %bb.l ], [ %i.by, %bb.m ]
  %.not196 = icmp eq i64 %i.b, 0                  ; 2 uses
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cb = icmp ne i64 %6, 0
  %.not.i.i72 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !311
  %.pre223 = load ptr, ptr %i.y, align 8, !tbaa !312
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51
  %i.cc = phi ptr [ %i.z, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit51 ], [ %.pre223, %._crit_edge.loopexit ] ; 7 uses
end_hunk_3
