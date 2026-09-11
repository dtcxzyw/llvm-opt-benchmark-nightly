Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEESB_SH_NS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  store ptr %.sroa.0180.0, ptr %12, align 8, !tbaa !397, !noalias !8504
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

bb.w:                                             ; preds = %.thread324, %bb.u
  %i.dp = phi i1 [ true, %.thread324 ], [ %i.ca, %bb.u ]
  store ptr %.sroa.0209.0267, ptr %13, align 8, !tbaa !397, !noalias !8504
  store ptr %.sroa.0203.0266, ptr %14, align 8, !tbaa !397, !noalias !8504
  store ptr %.sroa.0173.0, ptr %15, align 8, !tbaa !397, !noalias !8504
  store ptr %.sroa.0180.0, ptr %16, align 8, !tbaa !397, !noalias !8504
  store ptr %8, ptr %17, align 8, !tbaa !477, !noalias !8504
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS0_10antistableINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7move_opEEET_SL_SL_RSL_SL_SL_RT0_SO_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit: ; preds = %bb.v, %bb.w
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
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !349 ; 4 uses
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !349 ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt                ; 2 uses
  br i1 %i.du, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !349
  %i.dv = load ptr, ptr %.sroa.0173.0, align 8, !tbaa !395 ; 2 uses
  %i.dw = load ptr, ptr %18, align 8, !tbaa !397  ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = load ptr, ptr %.sroa.0178.0240, align 8, !tbaa !395, !noalias !8505
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !391, !noalias !8505
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0150.0 = phi ptr [ %.sroa.0178.0240, %bb.x ], [ %i.ef, %bb.y ] ; 2 uses
  %.not.i88 = icmp eq ptr %i.dw, %.sroa.0150.0
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100, label %.preheader.i89

.preheader.i89:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %.not79.i90 = icmp eq ptr %i.dw, %.sroa.0173.0
  br i1 %.not79.i90, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.preheader.i89, %.lr.ph.i91
  %.sroa.0142.0 = phi ptr [ %i.em, %.lr.ph.i91 ], [ %.sroa.0150.0, %.preheader.i89 ] ; 3 uses
  %i.eg = phi ptr [ %i.ej, %.lr.ph.i91 ], [ %i.dw, %.preheader.i89 ] ; 3 uses
  %.010.i92 = phi ptr [ %i.en, %.lr.ph.i91 ], [ %7, %.preheader.i89 ] ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !395, !noalias !8506
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !391, !noalias !8506 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.0142.0, align 8, !tbaa !395, !noalias !8507
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !391, !noalias !8507
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i92, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !343
  store i32 %i.ep, ptr %.010.i92, align 4, !tbaa !343
  store i32 0, ptr %i.eo, align 8, !tbaa !343
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 12 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i92, i64 4
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !343
  store i32 %i.es, ptr %i.er, align 4, !tbaa !343
  store i32 0, ptr %i.eq, align 4, !tbaa !343
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !343
  store i32 %i.eu, ptr %i.eo, align 8, !tbaa !343
  store i32 0, ptr %i.et, align 8, !tbaa !343
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !343
  store i32 %i.ew, ptr %i.eq, align 4, !tbaa !343
  store i32 0, ptr %i.ev, align 4, !tbaa !343
  %.not7.i93 = icmp eq ptr %i.ej, %.sroa.0173.0
  br i1 %.not7.i93, label %._crit_edge.i94, label %.lr.ph.i91, !llvm.loop !8457

._crit_edge.i94:                                  ; preds = %.lr.ph.i91, %.preheader.i89
  %.0.lcssa.i95 = phi ptr [ %7, %.preheader.i89 ], [ %i.en, %.lr.ph.i91 ] ; 2 uses
  %.not8.i96 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not8.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i94
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !343
  store i32 0, ptr %i.ex, align 4, !tbaa !343
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !343
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !343
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !343
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 12 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 12 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !343
  store i32 0, ptr %i.fb, align 4, !tbaa !343
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !343
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !343
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !343
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i94
  %i.ff = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.ff, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select252 = select i1 %i.fg, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %.sroa.0213.7 = phi ptr [ %.sroa.0213.0268, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %spec.select252, %bb.ab ], [ %.sroa.0192.0263, %bb.aa ]
  %.1.i97 = phi ptr [ %7, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %.0.lcssa.i95, %bb.ab ], [ %.0.lcssa.i95, %bb.aa ] ; 2 uses
  store ptr %.1.i97, ptr %i.b, align 8, !tbaa !349
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7move_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i101 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not.i101, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !343
  store i32 0, ptr %i.fh, align 4, !tbaa !343
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !343
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !343
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !343
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 12 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !343
  store i32 0, ptr %i.fl, align 4, !tbaa !343
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !343
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !343
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !343
  %i.fp = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.fp, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select253 = select i1 %i.fq, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100
  %i.fr = phi ptr [ %.1.i97, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100 ], [ %i.dt, %bb.ac ], [ %i.dt, %bb.ae ], [ %i.dt, %bb.ad ]
  %i.fs = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100 ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ad ]
  %.sroa.0213.1 = phi ptr [ %.sroa.0213.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit100 ], [ %.sroa.0213.0268, %bb.ac ], [ %spec.select253, %bb.ae ], [ %.sroa.0192.0263, %bb.ad ]
  %i.ft = xor i1 %i.dr, %i.du
  %i.fu = zext i1 %i.ft to i8
  %i.fv = load ptr, ptr %19, align 8, !tbaa !397
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit
  %i.fw = phi ptr [ %i.fr, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %i.fx = phi ptr [ %i.fs, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %i.fy = phi i1 [ %i.dq, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ]
  %.sroa.0209.1 = phi ptr [ %i.fv, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %i.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %.sroa.0213.2 = phi ptr [ %.sroa.0213.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.sroa.0213.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.fu, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.058271, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SA_NS0_7move_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.fy, true
  %i.fz = sext i1 %not. to i64
  %.164 = add i64 %.063270, %i.fz
  br i1 %.not.i.i78, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %.sroa.0203.0266, align 8, !tbaa !395
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %2
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !391
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0203.4 = phi ptr [ %.sroa.0203.0266, %bb.af ], [ %i.gc, %bb.ag ] ; 2 uses
  store ptr %.sroa.0173.0, ptr %18, align 8, !tbaa !397
  %i.gd = load ptr, ptr %.sroa.0192.0263, align 8, !tbaa !395
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !391
  %i.gg = icmp ne i64 %.057272, 0
  %.neg = sext i1 %i.gg to i64
  %i.gh = add i64 %.057272, %.neg
  %i.gi = icmp ne i64 %i.ax, 0
  %.neg69 = sext i1 %i.gi to i64
  %i.gj = add i64 %.sroa.speculated227, %.neg69
  %i.gk = add i64 %.0238269, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gk, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !8466

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
  br i1 %.not4.i.i105, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.thread, %.lr.ph.i.i106
  %i.gn = phi ptr [ %i.gw, %.lr.ph.i.i106 ], [ %.sroa.0209.0.lcssa.ph, %.thread ] ; 3 uses
  %.05.i.i107 = phi ptr [ %i.gt, %.lr.ph.i.i106 ], [ %i.gm, %.thread ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %.05.i.i107, align 4, !tbaa !343, !noalias !8508
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !343, !noalias !8508
  store i32 0, ptr %.05.i.i107, align 4, !tbaa !343, !noalias !8508
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !343, !noalias !8508
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !343, !noalias !8508
  store i32 0, ptr %i.gq, align 4, !tbaa !343, !noalias !8508
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gn, align 8, !tbaa !395, !noalias !8508
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !391, !noalias !8508
  %.not.i.i108 = icmp eq ptr %i.gt, %i.gl
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109, label %.lr.ph.i.i106, !llvm.loop !157

_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit75, %.thread
  %.058.lcssa334 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit75 ], [ %28, %.thread ], [ %28, %.lr.ph.i.i106 ]
  %.0238.lcssa333 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit75 ], [ %.0238.lcssa.ph, %.thread ], [ %.0238.lcssa.ph, %.lr.ph.i.i106 ] ; 2 uses
  %.sroa.0213.0.lcssa332 = phi ptr [ %.sroa.0213.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit75 ], [ %.sroa.0213.0.lcssa.ph, %.thread ], [ %.sroa.0213.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.sroa.0203.0.lcssa331 = phi ptr [ %.sroa.0203.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit75 ], [ %.sroa.0203.0.lcssa.ph, %.thread ], [ %.sroa.0203.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.not.i.i110 = icmp eq i64 %6, 0
  br i1 %.not.i.i110, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109
  %i.gx = load ptr, ptr %.sroa.0198.0, align 8, !tbaa !395, !noalias !8509
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %6
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !391, !noalias !8509
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113: ; preds = %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109, %bb.ai
  %.sroa.0135.0 = phi ptr [ %i.gz, %bb.ai ], [ %.sroa.0198.0, %_ZN5boost7movelib7move_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS3_22stable_vector_iteratorIS9_Lb0EEEEET0_NS0_9forward_tET_SE_SC_.exit109 ] ; 3 uses
  %.not3.i.i = icmp eq ptr %.sroa.0198.0, %.sroa.0135.0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113, %.lr.ph.i.i114
  %i.ha = phi ptr [ %i.hi, %.lr.ph.i.i114 ], [ %.sroa.0198.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.hj, %.lr.ph.i.i114 ], [ %7, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !343
  store i32 %i.hc, ptr %.04.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.hb, align 4, !tbaa !343
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 12 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !343
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !343
  store i32 0, ptr %i.hd, align 4, !tbaa !343
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !395
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !391 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i115 = icmp eq ptr %i.hi, %.sroa.0135.0
  br i1 %.not.i.i115, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit, label %.lr.ph.i.i114, !llvm.loop !163

_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit: ; preds = %.lr.ph.i.i114, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113
  store ptr %7, ptr %i.a, align 8, !tbaa !349
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.hk, ptr %i.b, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %i.hk, ptr %20, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.hl = load ptr, ptr %0, align 8, !tbaa !397, !noalias !8510 ; 2 uses
  br i1 %i.p, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !395, !noalias !8510
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %5
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !391, !noalias !8510
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117: ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit, %bb.aj
  %.sroa.0132.0 = phi ptr [ %i.hl, %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESA_EET0_NS0_9forward_tET_SE_SC_.exit ], [ %i.ho, %bb.aj ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117
  %i.hp = load ptr, ptr %.sroa.0132.0, align 8, !tbaa !395, !noalias !8511
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %4
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !391, !noalias !8511
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117, %bb.ak
  %.sroa.0133.0 = phi ptr [ %.sroa.0132.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit117 ], [ %i.hr, %bb.ak ]
  store ptr %.sroa.0133.0, ptr %22, align 8, !tbaa !397, !alias.scope !8512
  store ptr %.sroa.0213.0.lcssa332, ptr %23, align 8, !tbaa !397, !alias.scope !8513
  store ptr %.sroa.0198.0, ptr %24, align 8, !tbaa !397, !alias.scope !8514
  store ptr %7, ptr %25, align 8, !tbaa !479, !alias.scope !8515
  store ptr %.sroa.0135.0, ptr %26, align 8, !tbaa !397, !alias.scope !8516
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPNS4_3dtl4pairINS4_4test24movable_and_copyable_intES9_EELb0EEEEENS0_7inverseINS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEESD_NS3_ISB_EESD_SL_NS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.20") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0238.lcssa333, i64 noundef 0, i64 noundef %.0238.lcssa333, i1 noundef zeroext true)
  %i.hs = load ptr, ptr %21, align 8, !tbaa !397, !noalias !8517
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.ht = load ptr, ptr %20, align 8, !tbaa !479  ; 2 uses
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !349 ; 3 uses
  %.not15.i = icmp eq ptr %i.hu, %i.ht
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119, %bb.ao
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ao ], [ %.sroa.0203.0.lcssa331, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.ao ], [ %i.hs, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119 ] ; 3 uses
  %.016.i = phi ptr [ %.1.i121, %bb.ao ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119 ] ; 4 uses
  %i.hv = icmp eq ptr %.058.lcssa334, %.sroa.0126.0
  br i1 %i.hv, label %.lr.ph.i.i.i, label %bb.al

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i120, %.lr.ph.i.i.i
  %i.hw = phi ptr [ %i.ia, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i120 ]
  %.05.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i120 ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 4 uses
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !395, !noalias !8518
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !391, !noalias !8518 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.hx, align 4, !tbaa !343, !noalias !8518
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !343, !noalias !8518
  store i32 0, ptr %i.hx, align 4, !tbaa !343, !noalias !8518
  %i.id = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.if = load i32, ptr %i.id, align 4, !tbaa !343, !noalias !8518
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !343, !noalias !8518
  store i32 0, ptr %i.id, align 4, !tbaa !343, !noalias !8518
  %.not.i.i.i123 = icmp eq ptr %i.hu, %i.hx
  br i1 %.not.i.i.i123, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !161

bb.al:                                            ; preds = %.lr.ph.i120
  %i.ig = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 3 uses
  %i.ih = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !395
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !391 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !343 ; 2 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !343 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  br i1 %i.in, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.io = load ptr, ptr %.sroa.0.0, align 8, !tbaa !395
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !391 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %i.im, ptr %i.ir, align 4, !tbaa !343
  store i32 0, ptr %i.ik, align 4, !tbaa !343
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !343
  store i32 %i.iu, ptr %i.it, align 4, !tbaa !343
  store i32 0, ptr %i.is, align 4, !tbaa !343
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.iv = load ptr, ptr %i.ij, align 8, !tbaa !395
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !391
  %i.iy = load ptr, ptr %.sroa.0.0, align 8, !tbaa !395
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !391 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i32 %i.il, ptr %i.jb, align 4, !tbaa !343
  store i32 0, ptr %i.ig, align 4, !tbaa !343
  %i.jc = getelementptr inbounds i8, ptr %.016.i, i64 -4 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.je = load i32, ptr %i.jc, align 4, !tbaa !343
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !343
  store i32 0, ptr %i.jc, align 4, !tbaa !343
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0126.1 = phi ptr [ %i.ij, %bb.am ], [ %i.ix, %bb.an ]
  %.sroa.0.1 = phi ptr [ %i.iq, %bb.am ], [ %i.ja, %bb.an ]
  %.1.i121 = phi ptr [ %.016.i, %bb.am ], [ %i.ig, %bb.an ] ; 2 uses
  %.not.i122 = icmp eq ptr %i.hu, %.1.i121
  br i1 %.not.i122, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i120, !llvm.loop !162

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7move_opEPSA_NS2_22stable_vector_iteratorISF_Lb0EEEEEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.ao, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEESB_SH_NS0_7swap_opESB_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  %22 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !397, !noalias !8596 ; 3 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !8596
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !391, !noalias !8596
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0230.5 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.f = load ptr, ptr %7, align 8, !tbaa !397    ; 4 uses
  store ptr %i.f, ptr %18, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.f, ptr %19, align 8, !tbaa !397
  %i.g = load ptr, ptr %1, align 8, !tbaa !397    ; 4 uses
  %.not.i.i66 = icmp eq i64 %3, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !395, !noalias !8597
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %3
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !391, !noalias !8597
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, %bb.c
  %.sroa.0220.3 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %i.j, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %.sroa.0220.3, ptr %20, align 8, !tbaa !397
  %i.k = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i68, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67
  %i.l = load ptr, ptr %.sroa.0220.3, align 8, !tbaa !395, !noalias !8598
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !8598
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67, %bb.d
  %.sroa.0215.0 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit67 ], [ %i.n, %bb.d ] ; 6 uses
  %i.o = icmp eq i64 %5, 0                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0215.0, i64 8
  %.not279 = icmp eq i64 %i.a, 0
  br i1 %.not279, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69
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
  br i1 %i.v, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEESB_SH_EENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !395  ; 2 uses
  %i.x = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !395 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.051290, %.lr.ph.i ], [ %i.au, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %.thread20.i ] ; 4 uses
  %i.y = mul i64 %.01822.i, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !391
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = mul i64 %.023.i, %2
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !391
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.01822.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !391
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.023.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !391
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.af, align 4, !tbaa !343 ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEESB_SH_NS0_7swap_opESB_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_:bb.a
  store ptr %.sroa.0220.0284, ptr %14, align 8, !tbaa !397, !noalias !8609
  store ptr %.sroa.0190.0, ptr %15, align 8, !tbaa !397, !noalias !8609
  store ptr %.sroa.0197.0, ptr %16, align 8, !tbaa !397, !noalias !8609
  store ptr %8, ptr %17, align 8, !tbaa !477, !noalias !8609
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_NS0_10antistableINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS0_7swap_opEEET_SL_SL_RSL_SL_SL_RT0_SO_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator") align 8 %21, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit: ; preds = %bb.v, %bb.w
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
  %i.eb = load ptr, ptr %18, align 8, !tbaa !397  ; 4 uses
  %i.ec = load ptr, ptr %19, align 8, !tbaa !397  ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ed, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %i.ee = load ptr, ptr %7, align 8, !tbaa !397   ; 6 uses
  store ptr %i.ee, ptr %19, align 8, !tbaa !397
  store ptr %i.ee, ptr %18, align 8, !tbaa !397
  %i.ef = load ptr, ptr %.sroa.0190.0, align 8, !tbaa !395 ; 2 uses
  %i.eg = load ptr, ptr %20, align 8, !tbaa !397  ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = load ptr, ptr %.sroa.0195.0257, align 8, !tbaa !395, !noalias !8610
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !391, !noalias !8610
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0162.0 = phi ptr [ %.sroa.0195.0257, %bb.x ], [ %i.ep, %bb.y ] ; 2 uses
  %.not.i82 = icmp eq ptr %i.eg, %.sroa.0162.0
  br i1 %.not.i82, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91, label %.preheader.i83

.preheader.i83:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %.not68.i84 = icmp eq ptr %i.eg, %.sroa.0190.0
  br i1 %.not68.i84, label %._crit_edge.i87, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i83, %.lr.ph.i85
  %.sroa.0153.0 = phi ptr [ %i.ew, %.lr.ph.i85 ], [ %.sroa.0162.0, %.preheader.i83 ] ; 3 uses
  %.sroa.0151.0 = phi ptr [ %i.ez, %.lr.ph.i85 ], [ %i.ee, %.preheader.i83 ] ; 3 uses
  %i.eq = phi ptr [ %i.et, %.lr.ph.i85 ], [ %i.eg, %.preheader.i83 ] ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !395, !noalias !8611
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !391, !noalias !8611 ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0153.0, align 8, !tbaa !395, !noalias !8612
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !391, !noalias !8612
  %i.ex = load ptr, ptr %.sroa.0151.0, align 8, !tbaa !395, !noalias !8613
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !391, !noalias !8613 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 12 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.fg = load <2 x i32>, ptr %i.fa, align 8, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fa, align 8, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fb, align 4, !tbaa !343, !noalias !8614
  %i.fh = load i32, ptr %i.fc, align 8, !tbaa !343, !noalias !8614
  store i32 %i.fh, ptr %i.fa, align 8, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fc, align 8, !tbaa !343, !noalias !8614
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fi, ptr %i.fb, align 4, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fd, align 4, !tbaa !343, !noalias !8614
  %i.fj = load i32, ptr %i.fe, align 8, !tbaa !343, !noalias !8614
  store i32 %i.fj, ptr %i.fc, align 8, !tbaa !343, !noalias !8614
  %i.fk = load i32, ptr %i.ff, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fk, ptr %i.fd, align 4, !tbaa !343, !noalias !8614
  store <2 x i32> %i.fg, ptr %i.fe, align 8, !tbaa !343, !noalias !8614
  %.not6.i86 = icmp eq ptr %i.et, %.sroa.0190.0
  br i1 %.not6.i86, label %._crit_edge.i87, label %.lr.ph.i85, !llvm.loop !8547

._crit_edge.i87:                                  ; preds = %.lr.ph.i85, %.preheader.i83
  %.sroa.0151.1 = phi ptr [ %i.ee, %.preheader.i83 ], [ %i.ez, %.lr.ph.i85 ] ; 2 uses
  %.not7.i88 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not7.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i87
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fl, align 4, !tbaa !343, !noalias !8614
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !343, !noalias !8614
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !343, !noalias !8614
  store i32 0, ptr %i.fp, align 4, !tbaa !343, !noalias !8614
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !343, !noalias !8614
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !343, !noalias !8614
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i87
  %i.ft = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.ft, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select269 = select i1 %i.fu, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %.sroa.0151.2 = phi ptr [ %i.ee, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %.sroa.0151.1, %bb.ab ], [ %.sroa.0151.1, %bb.aa ] ; 2 uses
  %.sroa.0230.7 = phi ptr [ %.sroa.0230.0286, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %spec.select269, %bb.ab ], [ %.sroa.0209.0281, %bb.aa ]
  store ptr %.sroa.0151.2, ptr %19, align 8, !tbaa !397
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_NS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_b.exit
  %.not.i92 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not.i92, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !343
  store i32 0, ptr %i.fv, align 4, !tbaa !343
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !343
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !343
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !343
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 12 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 12 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !343
  store i32 0, ptr %i.fz, align 4, !tbaa !343
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !343
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !343
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !343
  %i.gd = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.gd, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select270 = select i1 %i.ge, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91
  %i.gf = phi ptr [ %.sroa.0151.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91 ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.ad ]
  %i.gg = phi ptr [ %i.ee, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91 ], [ %i.eb, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.ad ]
  %.sroa.0230.1 = phi ptr [ %.sroa.0230.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit91 ], [ %.sroa.0230.0286, %bb.ac ], [ %spec.select270, %bb.ae ], [ %.sroa.0209.0281, %bb.ad ]
  %i.gh = xor i1 %i.ea, %i.ed
  %i.gi = zext i1 %i.gh to i8
  %i.gj = load ptr, ptr %21, align 8, !tbaa !397
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit
  %i.gk = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.sroa.0170.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %i.gl = phi ptr [ %i.gg, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %i.cs, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %i.gm = phi i1 [ %i.dz, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ]
  %.sroa.0226.1 = phi ptr [ %i.gj, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %i.u, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.sroa.0230.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %.153 = phi i8 [ %i.gi, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEEEEvT_SC_RSC_.exit ], [ %.052289, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_SB_NS0_7swap_opEEET1_T_SE_RSE_T0_SG_SG_SD_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gm, true
  %i.gn = sext i1 %not. to i64
  %.158 = add i64 %.057288, %i.gn
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = load ptr, ptr %.sroa.0220.0284, align 8, !tbaa !395
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %2
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !391
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0220.4 = phi ptr [ %.sroa.0220.0284, %bb.af ], [ %i.gq, %bb.ag ] ; 2 uses
  store ptr %.sroa.0190.0, ptr %20, align 8, !tbaa !397
  %i.gr = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !395
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !391
  %i.gu = icmp ne i64 %.051290, 0
  %.neg = sext i1 %i.gu to i64
  %i.gv = add i64 %.051290, %.neg
  %i.gw = icmp ne i64 %i.aw, 0
  %.neg63 = sext i1 %i.gw to i64
  %i.gx = add i64 %.sroa.speculated244, %.neg63
  %i.gy = add i64 %.0255287, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gy, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !8560

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
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.thread, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.hp, %.lr.ph.i.i97 ], [ %.sroa.0226.0.lcssa.ph, %.thread ] ; 3 uses
  %i.hb = phi ptr [ %i.hm, %.lr.ph.i.i97 ], [ %i.ha, %.thread ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 8 ; 2 uses
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !343, !noalias !8615
  store i32 0, ptr %i.hc, align 4, !tbaa !343, !noalias !8615
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !343, !noalias !8615
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !343, !noalias !8615
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !343, !noalias !8615
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 12 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !343, !noalias !8615
  store i32 0, ptr %i.hg, align 4, !tbaa !343, !noalias !8615
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !343, !noalias !8615
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !343, !noalias !8615
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !343, !noalias !8615
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !395, !noalias !8615
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !391, !noalias !8615 ; 2 uses
  %i.hn = load ptr, ptr %.sroa.0.0.i98, align 8, !tbaa !395, !noalias !8615
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !391, !noalias !8615
  %.not.i.i99 = icmp eq ptr %i.hm, %i.gz
  br i1 %.not.i.i99, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100, label %.lr.ph.i.i97, !llvm.loop !164

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100: ; preds = %.lr.ph.i.i97, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69, %.thread
  %.052.lcssa349 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69 ], [ %30, %.thread ], [ %30, %.lr.ph.i.i97 ]
  %.0255.lcssa348 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69 ], [ %.0255.lcssa.ph, %.thread ], [ %.0255.lcssa.ph, %.lr.ph.i.i97 ] ; 2 uses
  %.sroa.0230.0.lcssa347 = phi ptr [ %.sroa.0230.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69 ], [ %.sroa.0230.0.lcssa.ph, %.thread ], [ %.sroa.0230.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.sroa.0220.0.lcssa346 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit69 ], [ %.sroa.0220.0.lcssa.ph, %.thread ], [ %.sroa.0220.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.not.i.i101 = icmp eq i64 %6, 0                ; 2 uses
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100
  %i.hq = load ptr, ptr %.sroa.0215.0, align 8, !tbaa !395, !noalias !8616
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %6
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !391, !noalias !8616
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100, %bb.ai
  %.sroa.0142.0 = phi ptr [ %i.hs, %bb.ai ], [ %.sroa.0215.0, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit100 ] ; 3 uses
  %i.ht = load ptr, ptr %7, align 8, !tbaa !397   ; 5 uses
  %.not1.i.i105 = icmp eq ptr %.sroa.0215.0, %.sroa.0142.0
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.ii, %.lr.ph.i.i106 ], [ %i.ht, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104 ] ; 3 uses
  %i.hu = phi ptr [ %i.if, %.lr.ph.i.i106 ], [ %.sroa.0215.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !343, !noalias !8617
  store i32 0, ptr %i.hv, align 4, !tbaa !343, !noalias !8617
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !343, !noalias !8617
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !343, !noalias !8617
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !343, !noalias !8617
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 12 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 12 ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !343, !noalias !8617
  store i32 0, ptr %i.hz, align 4, !tbaa !343, !noalias !8617
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !343, !noalias !8617
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !343, !noalias !8617
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !343, !noalias !8617
  %i.id = load ptr, ptr %i.hu, align 8, !tbaa !395, !noalias !8617
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !391, !noalias !8617 ; 2 uses
  %i.ig = load ptr, ptr %.sroa.0.0.i107, align 8, !tbaa !395, !noalias !8617
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !391, !noalias !8617
  %.not.i.i108 = icmp eq ptr %i.if, %.sroa.0142.0
  br i1 %.not.i.i108, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109, label %.lr.ph.i.i106, !llvm.loop !164

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit104
  store ptr %i.ht, ptr %18, align 8, !tbaa !397
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109
  %i.ij = load ptr, ptr %i.ht, align 8, !tbaa !395, !noalias !8618
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %6
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !391, !noalias !8618
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109, %bb.aj
  %.sroa.0139.0 = phi ptr [ %i.ht, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEESB_EET0_NS0_9forward_tET_SE_SC_.exit109 ], [ %i.il, %bb.aj ] ; 2 uses
  store ptr %.sroa.0139.0, ptr %19, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store ptr %.sroa.0139.0, ptr %22, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.im = load ptr, ptr %0, align 8, !tbaa !397, !noalias !8619 ; 2 uses
  br i1 %i.o, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !395, !noalias !8619
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %5
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !391, !noalias !8619
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111, %bb.ak
  %.sroa.0135.0 = phi ptr [ %i.im, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit111 ], [ %i.ip, %bb.ak ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113
  %i.iq = load ptr, ptr %.sroa.0135.0, align 8, !tbaa !395, !noalias !8620
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %4
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !391, !noalias !8620
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113, %bb.al
  %.sroa.0136.0 = phi ptr [ %.sroa.0135.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit113 ], [ %i.is, %bb.al ]
  store ptr %.sroa.0136.0, ptr %24, align 8, !tbaa !397, !alias.scope !8621
  store ptr %.sroa.0230.0.lcssa347, ptr %25, align 8, !tbaa !397, !alias.scope !8622
  store ptr %.sroa.0215.0, ptr %26, align 8, !tbaa !397, !alias.scope !8623
  store ptr %i.ht, ptr %27, align 8, !tbaa !397, !alias.scope !8624
  store ptr %.sroa.0142.0, ptr %28, align 8, !tbaa !397, !alias.scope !8625
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPNS4_3dtl4pairINS4_4test24movable_and_copyable_intES9_EELb0EEEEENS0_7inverseINS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEESD_SD_SD_SL_NS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.20") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0255.lcssa348, i64 noundef 0, i64 noundef %.0255.lcssa348, i1 noundef zeroext true)
  %i.it = load ptr, ptr %23, align 8, !tbaa !397, !noalias !8626
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.iu = load ptr, ptr %22, align 8, !tbaa !397, !noalias !8627 ; 3 uses
  store ptr %i.iu, ptr %19, align 8, !tbaa !397
  %i.iv = load ptr, ptr %18, align 8, !tbaa !397  ; 3 uses
  %.not12.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not12.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115, %bb.ap
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ap ], [ %.sroa.0220.0.lcssa346, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ %i.ka, %bb.ap ], [ %i.it, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115 ] ; 2 uses
  %i.iw = phi ptr [ %i.km, %bb.ap ], [ %i.iu, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115 ] ; 2 uses
  %i.ix = icmp eq ptr %.052.lcssa349, %.sroa.0126.0
  br i1 %i.ix, label %.lr.ph.i.i.i, label %bb.am

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i116, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.jf, %.lr.ph.i.i.i ], [ %.sroa.0123.0, %.lr.ph.i116 ]
  %i.iy = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %i.iw, %.lr.ph.i116 ]
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !395, !noalias !8628
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !391, !noalias !8628 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.jd = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !395, !noalias !8628
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !391, !noalias !8628 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jc, align 4, !tbaa !343, !noalias !8628
  store i32 0, ptr %i.jc, align 4, !tbaa !343, !noalias !8628
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !343, !noalias !8628
  store i32 %i.ji, ptr %i.jc, align 4, !tbaa !343, !noalias !8628
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !343, !noalias !8628
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 12 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !343, !noalias !8628
  store i32 0, ptr %i.jj, align 4, !tbaa !343, !noalias !8628
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !343, !noalias !8628
  store i32 %i.jm, ptr %i.jj, align 4, !tbaa !343, !noalias !8628
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !343, !noalias !8628
  %.not.i.i.i118 = icmp eq ptr %i.iv, %i.jb
  br i1 %.not.i.i.i118, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !166

bb.am:                                            ; preds = %.lr.ph.i116
  %i.jn = load ptr, ptr %i.iw, align 8, !tbaa !395
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !391 ; 4 uses
  %i.jq = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !395
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !391 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 3 uses
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !343
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !343
  %i.jx = icmp slt i32 %i.jv, %i.jw
  %i.jy = load ptr, ptr %.sroa.0123.0, align 8, !tbaa !395
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !391 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 5 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !343 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 12 ; 3 uses
  br i1 %i.jx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ke = load ptr, ptr %i.jp, align 8, !tbaa !395
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !391
  store i32 0, ptr %i.kb, align 4, !tbaa !343
  %i.kh = load i32, ptr %i.ju, align 4, !tbaa !343
  store i32 %i.kh, ptr %i.kb, align 4, !tbaa !343
  store i32 %i.kc, ptr %i.ju, align 4, !tbaa !343
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ki = load ptr, ptr %i.js, align 8, !tbaa !395
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !391
  store i32 0, ptr %i.kb, align 4, !tbaa !343
  %i.kl = load i32, ptr %i.jt, align 4, !tbaa !343
  store i32 %i.kl, ptr %i.kb, align 4, !tbaa !343
  store i32 %i.kc, ptr %i.jt, align 4, !tbaa !343
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink = phi ptr [ %i.jp, %bb.ao ], [ %i.js, %bb.an ]
  %.sroa.0126.1 = phi ptr [ %i.kk, %bb.ao ], [ %i.js, %bb.an ]
  %i.km = phi ptr [ %i.jp, %bb.ao ], [ %i.kg, %bb.an ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sink, i64 12 ; 2 uses
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !343
  store i32 0, ptr %i.kd, align 4, !tbaa !343
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !343
  store i32 %i.kp, ptr %i.kd, align 4, !tbaa !343
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !343
  %.not.i117 = icmp eq ptr %i.iv, %i.km
  br i1 %.not.i117, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit, label %.lr.ph.i116, !llvm.loop !8595

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPSA_Lb0EEESH_EEvT2_SI_SI_T1_SJ_T_T0_.exit: ; preds = %bb.ap, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEESB_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !397, !noalias !8663 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !8663
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !391, !noalias !8663
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0142.1 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = mul i64 %i.a, %2
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !397, !noalias !8664 ; 9 uses
  %.not.i.i37 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !8664
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391, !noalias !8664
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit, %bb.c
  %.sroa.0139.0 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit ], [ %i.k, %bb.c ] ; 5 uses
  %.not.i.i39 = icmp eq i64 %6, 0
  br i1 %.not.i.i39, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38
  %i.l = load ptr, ptr %.sroa.0139.0, align 8, !tbaa !395, !noalias !8665
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %6
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !8665
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38, %bb.d
  %.sroa.0138.0 = phi ptr [ %.sroa.0139.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit38 ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = icmp eq i64 %5, 0
  %i.p = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.q = add i64 %i.p, 1
  %.sroa.speculated114 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.a)
  %.not.i.i41 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !8666
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !391, !noalias !8666
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40, %bb.e
  %.sroa.0108.1 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit40 ], [ %i.t, %bb.e ]
  %.not191 = icmp eq i64 %i.a, 0                  ; 2 uses
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42
  %i.u = icmp ne i64 %6, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0139.0, i64 8
  %.not.i.i51 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42
  %.sroa.0142.0.lcssa = phi ptr [ %.sroa.0142.1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42 ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit42 ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit44, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !8667
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %3
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !391, !noalias !8667
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit44

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit44: ; preds = %._crit_edge, %bb.f
  %.sroa.093.1 = phi ptr [ %i.h, %._crit_edge ], [ %i.y, %bb.f ]
  %.not.i.i45 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not.i.i45, label %._crit_edge210, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit46

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit46: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !8668
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.035.lcssa
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !391, !noalias !8668 ; 2 uses
  %.not173203 = icmp eq ptr %i.b, %i.ab
  br i1 %.not173203, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEEl.exit46
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.lcssa, i64 8
  %.not.i.i57 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit
  %.0200 = phi i64 [ %i.p, %.lr.ph ], [ %i.db, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 4 uses
  %.034199 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 2 uses
  %.035198 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ]
  %.sroa.0142.0197 = phi ptr [ %.sroa.0142.1, %.lr.ph ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 4 uses
  %.sroa.0108.0195 = phi ptr [ %.sroa.0108.1, %.lr.ph ], [ %.sroa.0108.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 10 uses
  %.0167194 = phi i64 [ %i.a, %.lr.ph ], [ %i.de, %_ZN5boost9container22stable_vector_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EELb0EEpLEl.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEES8_SG_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_:bb.a
  %.sroa.0213.6 = phi ptr [ %.sroa.0213.0268, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.t ], [ %.sroa.0192.0263, %bb.s ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit ], [ %.0.lcssa.i, %bb.t ], [ %.0.lcssa.i, %bb.s ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !419
  br label %bb.af

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.sroa.0209.0267, ptr %9, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0203.0266, ptr %10, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0173.0, ptr %11, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0180.0, ptr %12, align 8, !tbaa !450, !noalias !15898
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %19, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.w:                                             ; preds = %.thread324, %bb.u
  %i.dd = phi i1 [ true, %.thread324 ], [ %i.ca, %bb.u ]
  store ptr %.sroa.0209.0267, ptr %13, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0203.0266, ptr %14, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0173.0, ptr %15, align 8, !tbaa !450, !noalias !15898
  store ptr %.sroa.0180.0, ptr %16, align 8, !tbaa !450, !noalias !15898
  store ptr %8, ptr %17, align 8, !tbaa !520, !noalias !15898
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %19, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.v, %bb.w
  %i.de = phi i1 [ %i.ca, %bb.v ], [ %i.dd, %bb.w ]
  %i.df = phi i1 [ true, %bb.v ], [ false, %bb.w ]
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
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !419 ; 4 uses
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !419 ; 4 uses
  %i.di = icmp eq ptr %i.dg, %i.dh                ; 2 uses
  br i1 %i.di, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !419
  %i.dj = load ptr, ptr %.sroa.0173.0, align 8, !tbaa !395 ; 2 uses
  %i.dk = load ptr, ptr %18, align 8, !tbaa !450  ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dn, %i.dm
  %i.dp = ashr exact i64 %i.do, 3
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = load ptr, ptr %.sroa.0178.0240, align 8, !tbaa !395, !noalias !15899
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !391, !noalias !15899
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0150.0 = phi ptr [ %.sroa.0178.0240, %bb.x ], [ %i.dt, %bb.y ] ; 2 uses
  %.not.i88 = icmp eq ptr %i.dk, %.sroa.0150.0
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100, label %.preheader.i89

.preheader.i89:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %.not79.i90 = icmp eq ptr %i.dk, %.sroa.0173.0
  br i1 %.not79.i90, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.preheader.i89, %.lr.ph.i91
  %.sroa.0142.0 = phi ptr [ %i.ea, %.lr.ph.i91 ], [ %.sroa.0150.0, %.preheader.i89 ] ; 2 uses
  %i.du = phi ptr [ %i.dx, %.lr.ph.i91 ], [ %i.dk, %.preheader.i89 ] ; 2 uses
  %.010.i92 = phi ptr [ %i.eb, %.lr.ph.i91 ], [ %7, %.preheader.i89 ] ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !395, !noalias !15900
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !391, !noalias !15900 ; 2 uses
  %i.dy = load ptr, ptr %.sroa.0142.0, align 8, !tbaa !395, !noalias !15901
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !391, !noalias !15901
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i92, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 8 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !343
  store i32 %i.ed, ptr %.010.i92, align 4, !tbaa !343
  store i32 0, ptr %i.ec, align 8, !tbaa !343
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !343
  store i32 %i.ef, ptr %i.ec, align 8, !tbaa !343
  store i32 0, ptr %i.ee, align 8, !tbaa !343
  %.not7.i93 = icmp eq ptr %i.dx, %.sroa.0173.0
  br i1 %.not7.i93, label %._crit_edge.i94, label %.lr.ph.i91, !llvm.loop !15851

._crit_edge.i94:                                  ; preds = %.lr.ph.i91, %.preheader.i89
  %.0.lcssa.i95 = phi ptr [ %7, %.preheader.i89 ], [ %i.eb, %.lr.ph.i91 ] ; 2 uses
  %.not8.i96 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not8.i96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i94
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !343
  store i32 0, ptr %i.eg, align 4, !tbaa !343
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !343
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !343
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !343
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i94
  %i.ek = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.ek, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select252 = select i1 %i.el, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %.sroa.0213.7 = phi ptr [ %.sroa.0213.0268, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %spec.select252, %bb.ab ], [ %.sroa.0192.0263, %bb.aa ]
  %.1.i97 = phi ptr [ %7, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %.0.lcssa.i95, %bb.ab ], [ %.0.lcssa.i95, %bb.aa ] ; 2 uses
  store ptr %.1.i97, ptr %i.b, align 8, !tbaa !419
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %.not.i101 = icmp eq ptr %.sroa.0169.0, %.sroa.0192.0263
  br i1 %.not.i101, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0169.0, i64 8 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0192.0263, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !343
  store i32 0, ptr %i.em, align 4, !tbaa !343
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !343
  store i32 %i.ep, ptr %i.em, align 4, !tbaa !343
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !343
  %i.eq = icmp eq ptr %.sroa.0169.0, %.sroa.0213.0268
  br i1 %i.eq, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = icmp eq ptr %.sroa.0213.0268, %.sroa.0192.0263
  %spec.select253 = select i1 %i.er, ptr %.sroa.0169.0, ptr %.sroa.0213.0268
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100
  %i.es = phi ptr [ %.1.i97, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %i.dh, %bb.ac ], [ %i.dh, %bb.ae ], [ %i.dh, %bb.ad ]
  %i.et = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %i.dg, %bb.ac ], [ %i.dg, %bb.ae ], [ %i.dg, %bb.ad ]
  %.sroa.0213.1 = phi ptr [ %.sroa.0213.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit100 ], [ %.sroa.0213.0268, %bb.ac ], [ %spec.select253, %bb.ae ], [ %.sroa.0192.0263, %bb.ad ]
  %i.eu = xor i1 %i.df, %i.di
  %i.ev = zext i1 %i.eu to i8
  %i.ew = load ptr, ptr %19, align 8, !tbaa !450
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.ex = phi ptr [ %i.es, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.ey = phi ptr [ %i.et, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.ez = phi i1 [ %i.de, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0209.1 = phi ptr [ %i.ew, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %i.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0213.2 = phi ptr [ %.sroa.0213.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0213.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.159 = phi i8 [ %i.ev, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.058271, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S7_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.ez, true
  %i.fa = sext i1 %not. to i64
  %.164 = add i64 %.063270, %i.fa
  br i1 %.not.i.i78, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %.sroa.0203.0266, align 8, !tbaa !395
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %2
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !391
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0203.4 = phi ptr [ %.sroa.0203.0266, %bb.af ], [ %i.fd, %bb.ag ] ; 2 uses
  store ptr %.sroa.0173.0, ptr %18, align 8, !tbaa !450
  %i.fe = load ptr, ptr %.sroa.0192.0263, align 8, !tbaa !395
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !391
  %i.fh = icmp ne i64 %.057272, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.057272, %.neg
  %i.fj = icmp ne i64 %i.ax, 0
  %.neg69 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated227, %.neg69
  %i.fl = add i64 %.0238269, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !15860

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.fm = phi ptr [ %i.ex, %bb.ah ], [ %i.t, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %i.fn = phi ptr [ %i.ey, %bb.ah ], [ %i.u, %bb.m ], [ %i.u, %bb.l ] ; 2 uses
  %.sroa.0203.0.lcssa.ph = phi ptr [ %.sroa.0203.4, %bb.ah ], [ %.sroa.0203.0266, %bb.m ], [ %.sroa.0203.0266, %bb.l ] ; 3 uses
  %.sroa.0209.0.lcssa.ph = phi ptr [ %.sroa.0209.1, %bb.ah ], [ %.sroa.0209.0267, %bb.m ], [ %.sroa.0209.0267, %bb.l ] ; 2 uses
  %.sroa.0213.0.lcssa.ph = phi ptr [ %.sroa.0213.2, %bb.ah ], [ %.sroa.0213.0268, %bb.m ], [ %.sroa.0213.0268, %bb.l ] ; 2 uses
  %.0238.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0238269, %bb.m ], [ %.0238269, %bb.l ] ; 2 uses
  %.058.lcssa.ph = phi i8 [ %.159, %bb.ah ], [ 1, %bb.m ], [ %.058271, %bb.l ]
  %27 = trunc nuw i8 %.058.lcssa.ph to i1
  %28 = select i1 %27, ptr %.sroa.0209.0.lcssa.ph, ptr %.sroa.0203.0.lcssa.ph ; 2 uses
  %.not4.i.i105 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not4.i.i105, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.thread, %.lr.ph.i.i106
  %i.fo = phi ptr [ %i.fu, %.lr.ph.i.i106 ], [ %.sroa.0209.0.lcssa.ph, %.thread ] ; 2 uses
  %.05.i.i107 = phi ptr [ %i.fr, %.lr.ph.i.i106 ], [ %i.fn, %.thread ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %.05.i.i107, align 4, !tbaa !343, !noalias !15902
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !343, !noalias !15902
  store i32 0, ptr %.05.i.i107, align 4, !tbaa !343, !noalias !15902
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i107, i64 4 ; 2 uses
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !395, !noalias !15902
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !391, !noalias !15902
  %.not.i.i108 = icmp eq ptr %i.fr, %i.fm
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106, !llvm.loop !266

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit75, %.thread
  %.058.lcssa334 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit75 ], [ %28, %.thread ], [ %28, %.lr.ph.i.i106 ]
  %.0238.lcssa333 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit75 ], [ %.0238.lcssa.ph, %.thread ], [ %.0238.lcssa.ph, %.lr.ph.i.i106 ] ; 2 uses
  %.sroa.0213.0.lcssa332 = phi ptr [ %.sroa.0213.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit75 ], [ %.sroa.0213.0.lcssa.ph, %.thread ], [ %.sroa.0213.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.sroa.0203.0.lcssa331 = phi ptr [ %.sroa.0203.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit75 ], [ %.sroa.0203.0.lcssa.ph, %.thread ], [ %.sroa.0203.0.lcssa.ph, %.lr.ph.i.i106 ]
  %.not.i.i110 = icmp eq i64 %6, 0
  br i1 %.not.i.i110, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109
  %i.fv = load ptr, ptr %.sroa.0198.0, align 8, !tbaa !395, !noalias !15903
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %6
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !391, !noalias !15903
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113: ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109, %bb.ai
  %.sroa.0135.0 = phi ptr [ %i.fx, %bb.ai ], [ %.sroa.0198.0, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intENS3_22stable_vector_iteratorIS6_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit109 ] ; 3 uses
  %.not3.i.i = icmp eq ptr %.sroa.0198.0, %.sroa.0135.0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113, %.lr.ph.i.i114
  %i.fy = phi ptr [ %i.gd, %.lr.ph.i.i114 ], [ %.sroa.0198.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113 ] ; 2 uses
  %.04.i.i = phi ptr [ %i.ge, %.lr.ph.i.i114 ], [ %7, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !343
  store i32 %i.ga, ptr %.04.i.i, align 4, !tbaa !343
  store i32 0, ptr %i.fz, align 4, !tbaa !343
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !395
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !391 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %.not.i.i115 = icmp eq ptr %i.gd, %.sroa.0135.0
  br i1 %.not.i.i115, label %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i114, !llvm.loop !272

_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i114, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113
  store ptr %7, ptr %i.a, align 8, !tbaa !419
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.gf, ptr %i.b, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %i.gf, ptr %20, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.gg = load ptr, ptr %0, align 8, !tbaa !450, !noalias !15904 ; 2 uses
  br i1 %i.p, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !395, !noalias !15904
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %5
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !391, !noalias !15904
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117: ; preds = %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.aj
  %.sroa.0132.0 = phi ptr [ %i.gg, %_ZN5boost7movelib7move_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.gj, %bb.aj ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117
  %i.gk = load ptr, ptr %.sroa.0132.0, align 8, !tbaa !395, !noalias !15905
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %4
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !391, !noalias !15905
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117, %bb.ak
  %.sroa.0133.0 = phi ptr [ %.sroa.0132.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit117 ], [ %i.gm, %bb.ak ]
  store ptr %.sroa.0133.0, ptr %22, align 8, !tbaa !450, !alias.scope !15906
  store ptr %.sroa.0213.0.lcssa332, ptr %23, align 8, !tbaa !450, !alias.scope !15907
  store ptr %.sroa.0198.0, ptr %24, align 8, !tbaa !450, !alias.scope !15908
  store ptr %7, ptr %25, align 8, !tbaa !522, !alias.scope !15909
  store ptr %.sroa.0135.0, ptr %26, align 8, !tbaa !450, !alias.scope !15910
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPNS4_4test24movable_and_copyable_intELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEESA_NS3_IS8_EESA_SK_NS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.73") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0238.lcssa333, i64 noundef 0, i64 noundef %.0238.lcssa333, i1 noundef zeroext true)
  %i.gn = load ptr, ptr %21, align 8, !tbaa !450, !noalias !15911
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.go = load ptr, ptr %20, align 8, !tbaa !522  ; 2 uses
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !419 ; 3 uses
  %.not15.i = icmp eq ptr %i.gp, %i.go
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_NS2_22stable_vector_iteratorISE_Lb0EEEEEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119, %bb.ao
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ao ], [ %.sroa.0203.0.lcssa331, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.ao ], [ %i.gn, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119 ] ; 3 uses
  %.016.i = phi ptr [ %.1.i121, %bb.ao ], [ %i.go, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119 ] ; 3 uses
  %i.gq = icmp eq ptr %.058.lcssa334, %.sroa.0126.0
  br i1 %i.gq, label %.lr.ph.i.i.i, label %bb.al

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i120, %.lr.ph.i.i.i
  %i.gr = phi ptr [ %i.gv, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i120 ]
  %.05.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i120 ]
  %i.gs = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4 ; 4 uses
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !395, !noalias !15912
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !391, !noalias !15912 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gs, align 4, !tbaa !343, !noalias !15912
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !343, !noalias !15912
  store i32 0, ptr %i.gs, align 4, !tbaa !343, !noalias !15912
  %.not.i.i.i123 = icmp eq ptr %i.gp, %i.gs
  br i1 %.not.i.i.i123, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_NS2_22stable_vector_iteratorISE_Lb0EEEEEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !270

bb.al:                                            ; preds = %.lr.ph.i120
  %i.gy = getelementptr inbounds i8, ptr %.016.i, i64 -4 ; 3 uses
  %i.gz = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !395
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !391 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.gy, align 4, !tbaa !343 ; 2 uses
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !343 ; 2 uses
  %i.hf = icmp slt i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hg = load ptr, ptr %.sroa.0.0, align 8, !tbaa !395
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !391 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %i.he, ptr %i.hj, align 4, !tbaa !343
  store i32 0, ptr %i.hc, align 4, !tbaa !343
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !395
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !391
  %i.hn = load ptr, ptr %.sroa.0.0, align 8, !tbaa !395
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !391 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 %i.hd, ptr %i.hq, align 4, !tbaa !343
  store i32 0, ptr %i.gy, align 4, !tbaa !343
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.0126.1 = phi ptr [ %i.hb, %bb.am ], [ %i.hm, %bb.an ]
  %.sroa.0.1 = phi ptr [ %i.hi, %bb.am ], [ %i.hp, %bb.an ]
  %.1.i121 = phi ptr [ %.016.i, %bb.am ], [ %i.gy, %bb.an ] ; 2 uses
  %.not.i122 = icmp eq ptr %i.gp, %.1.i121
  br i1 %.not.i122, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_NS2_22stable_vector_iteratorISE_Lb0EEEEEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i120, !llvm.loop !271

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEPS7_NS2_22stable_vector_iteratorISE_Lb0EEEEEvT2_SH_SH_T1_SI_T_T0_.exit: ; preds = %bb.ao, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEES8_SG_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.32", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable.181", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 10 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 11 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 7 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 6 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.73", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !450, !noalias !15990 ; 3 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !15990
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !391, !noalias !15990
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0230.5 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.f = load ptr, ptr %7, align 8, !tbaa !450    ; 4 uses
  store ptr %i.f, ptr %18, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.f, ptr %19, align 8, !tbaa !450
  %i.g = load ptr, ptr %1, align 8, !tbaa !450    ; 4 uses
  %.not.i.i66 = icmp eq i64 %3, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !395, !noalias !15991
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %3
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !391, !noalias !15991
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, %bb.c
  %.sroa.0220.3 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %i.j, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %.sroa.0220.3, ptr %20, align 8, !tbaa !450
  %i.k = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i68 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i68, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67
  %i.l = load ptr, ptr %.sroa.0220.3, align 8, !tbaa !395, !noalias !15992
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !15992
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67, %bb.d
  %.sroa.0215.0 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit67 ], [ %i.n, %bb.d ] ; 6 uses
  %i.o = icmp eq i64 %5, 0                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0215.0, i64 8
  %.not279 = icmp eq i64 %i.a, 0
  br i1 %.not279, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69
  %i.q = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.r = add i64 %i.q, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.a)
  %.not.i.i72 = icmp eq i64 %2, 0                 ; 2 uses
  %.not62 = icmp eq i64 %6, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ah
  %i.s = phi ptr [ %i.f, %.lr.ph ], [ %i.fk, %bb.ah ] ; 4 uses
  %i.t = phi ptr [ %i.f, %.lr.ph ], [ %i.fl, %bb.ah ] ; 4 uses
  %i.u = phi ptr [ %.sroa.0220.3, %.lr.ph ], [ %.sroa.0190.0, %bb.ah ] ; 9 uses
  %.051290 = phi i64 [ %i.q, %.lr.ph ], [ %i.fv, %bb.ah ] ; 4 uses
  %.052289 = phi i8 [ 1, %.lr.ph ], [ %.153, %bb.ah ] ; 5 uses
  %.057288 = phi i64 [ %5, %.lr.ph ], [ %.158, %bb.ah ] ; 2 uses
  %.0255287 = phi i64 [ %i.a, %.lr.ph ], [ %i.fy, %bb.ah ] ; 4 uses
  %.sroa.0230.0286 = phi ptr [ %.sroa.0230.5, %.lr.ph ], [ %.sroa.0230.2, %bb.ah ] ; 16 uses
  %.sroa.0226.0285 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.0226.1, %bb.ah ] ; 5 uses
  %.sroa.0220.0284 = phi ptr [ %.sroa.0220.3, %.lr.ph ], [ %.sroa.0220.4, %bb.ah ] ; 6 uses
  %.sroa.0209.0281 = phi ptr [ %i.b, %.lr.ph ], [ %i.ft, %bb.ah ] ; 16 uses
  %.val278280 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fx, %bb.ah ] ; 3 uses
  %i.v = icmp ult i64 %.051290, %.val278280
  br i1 %i.v, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEES8_SG_EENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !395  ; 2 uses
  %i.x = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !395 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.051290, %.lr.ph.i ], [ %i.au, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %.thread20.i ] ; 4 uses
  %i.y = mul i64 %.01822.i, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !391
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = mul i64 %.023.i, %2
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !391
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.01822.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !391
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.023.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !391
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.af, align 4, !tbaa !343 ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp slt i32 %i.an, %i.am
  br i1 %i.ap, label %.thread20.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !343
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !343
  %i.as = icmp slt i32 %i.aq, %i.ar
  %cond.fr.i = freeze i1 %i.as
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.h, %bb.f
  br label %.thread20.i
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEES8_SG_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.sroa.0226.0285, ptr %9, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0220.0284, ptr %10, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0190.0, ptr %11, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0197.0, ptr %12, align 8, !tbaa !450, !noalias !16003
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %21, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

bb.w:                                             ; preds = %.thread339, %bb.u
  %i.dl = phi i1 [ true, %.thread339 ], [ %i.bz, %bb.u ]
  store ptr %.sroa.0226.0285, ptr %13, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0220.0284, ptr %14, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0190.0, ptr %15, align 8, !tbaa !450, !noalias !16003
  store ptr %.sroa.0197.0, ptr %16, align 8, !tbaa !450, !noalias !16003
  store ptr %8, ptr %17, align 8, !tbaa !520, !noalias !16003
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %21, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit: ; preds = %bb.v, %bb.w
  %i.dm = phi i1 [ %i.bz, %bb.v ], [ %i.dl, %bb.w ]
  %i.dn = phi i1 [ true, %bb.v ], [ false, %bb.w ]
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
  %i.do = load ptr, ptr %18, align 8, !tbaa !450  ; 4 uses
  %i.dp = load ptr, ptr %19, align 8, !tbaa !450  ; 4 uses
  %i.dq = icmp eq ptr %i.do, %i.dp                ; 2 uses
  br i1 %i.dq, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %i.dr = load ptr, ptr %7, align 8, !tbaa !450   ; 6 uses
  store ptr %i.dr, ptr %19, align 8, !tbaa !450
  store ptr %i.dr, ptr %18, align 8, !tbaa !450
  %i.ds = load ptr, ptr %.sroa.0190.0, align 8, !tbaa !395 ; 2 uses
  %i.dt = load ptr, ptr %20, align 8, !tbaa !450  ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !395 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ds, %i.du
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = ashr exact i64 %i.dx, 3
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = load ptr, ptr %.sroa.0195.0257, align 8, !tbaa !395, !noalias !16004
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !391, !noalias !16004
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit: ; preds = %bb.x, %bb.y
  %.sroa.0162.0 = phi ptr [ %.sroa.0195.0257, %bb.x ], [ %i.ec, %bb.y ] ; 2 uses
  %.not.i82 = icmp eq ptr %i.dt, %.sroa.0162.0
  br i1 %.not.i82, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91, label %.preheader.i83

.preheader.i83:                                   ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %.not68.i84 = icmp eq ptr %i.dt, %.sroa.0190.0
  br i1 %.not68.i84, label %._crit_edge.i87, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.preheader.i83, %.lr.ph.i85
  %.sroa.0153.0 = phi ptr [ %i.ej, %.lr.ph.i85 ], [ %.sroa.0162.0, %.preheader.i83 ] ; 2 uses
  %.sroa.0151.0 = phi ptr [ %i.em, %.lr.ph.i85 ], [ %i.dr, %.preheader.i83 ] ; 2 uses
  %i.ed = phi ptr [ %i.eg, %.lr.ph.i85 ], [ %i.dt, %.preheader.i83 ] ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !395, !noalias !16005
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !391, !noalias !16005 ; 2 uses
  %i.eh = load ptr, ptr %.sroa.0153.0, align 8, !tbaa !395, !noalias !16006
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !391, !noalias !16006
  %i.ek = load ptr, ptr %.sroa.0151.0, align 8, !tbaa !395, !noalias !16007
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !391, !noalias !16007 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0151.0, i64 8 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !343, !noalias !16008
  store i32 0, ptr %i.en, align 8, !tbaa !343, !noalias !16008
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !343, !noalias !16008
  store i32 %i.eq, ptr %i.en, align 8, !tbaa !343, !noalias !16008
  store i32 0, ptr %i.ep, align 8, !tbaa !343, !noalias !16008
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !343, !noalias !16008
  store i32 %i.es, ptr %i.ep, align 8, !tbaa !343, !noalias !16008
  store i32 %i.eo, ptr %i.er, align 8, !tbaa !343, !noalias !16008
  %.not6.i86 = icmp eq ptr %i.eg, %.sroa.0190.0
  br i1 %.not6.i86, label %._crit_edge.i87, label %.lr.ph.i85, !llvm.loop !15941

._crit_edge.i87:                                  ; preds = %.lr.ph.i85, %.preheader.i83
  %.sroa.0151.1 = phi ptr [ %i.dr, %.preheader.i83 ], [ %i.em, %.lr.ph.i85 ] ; 2 uses
  %.not7.i88 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not7.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i87
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !343, !noalias !16008
  store i32 0, ptr %i.et, align 4, !tbaa !343, !noalias !16008
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !343, !noalias !16008
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !343, !noalias !16008
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !343, !noalias !16008
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i87
  %i.ex = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.ex, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select269 = select i1 %i.ey, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91: ; preds = %bb.ab, %bb.aa, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %.sroa.0151.2 = phi ptr [ %i.dr, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %.sroa.0151.1, %bb.ab ], [ %.sroa.0151.1, %bb.aa ] ; 2 uses
  %.sroa.0230.7 = phi ptr [ %.sroa.0230.0286, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %spec.select269, %bb.ab ], [ %.sroa.0209.0281, %bb.aa ]
  store ptr %.sroa.0151.2, ptr %19, align 8, !tbaa !450
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit

bb.ac:                                            ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEENS0_7swap_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_b.exit
  %.not.i92 = icmp eq ptr %.sroa.0186.0, %.sroa.0209.0281
  br i1 %.not.i92, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0186.0, i64 8 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0209.0281, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !343
  store i32 0, ptr %i.ez, align 4, !tbaa !343
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !343
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !343
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !343
  %i.fd = icmp eq ptr %.sroa.0186.0, %.sroa.0230.0286
  br i1 %i.fd, label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = icmp eq ptr %.sroa.0230.0286, %.sroa.0209.0281
  %spec.select270 = select i1 %i.fe, ptr %.sroa.0186.0, ptr %.sroa.0230.0286
  br label %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit

_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit: ; preds = %bb.ae, %bb.ac, %bb.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91
  %i.ff = phi ptr [ %.sroa.0151.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %i.dp, %bb.ac ], [ %i.dp, %bb.ae ], [ %i.dp, %bb.ad ]
  %i.fg = phi ptr [ %i.dr, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %i.do, %bb.ac ], [ %i.do, %bb.ae ], [ %i.do, %bb.ad ]
  %.sroa.0230.1 = phi ptr [ %.sroa.0230.7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit91 ], [ %.sroa.0230.0286, %bb.ac ], [ %spec.select270, %bb.ae ], [ %.sroa.0209.0281, %bb.ad ]
  %i.fh = xor i1 %i.dn, %i.dq
  %i.fi = zext i1 %i.fh to i8
  %i.fj = load ptr, ptr %21, align 8, !tbaa !450
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.af

bb.af:                                            ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit
  %i.fk = phi ptr [ %i.ff, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0170.2, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.fl = phi ptr [ %i.fg, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %i.co, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %i.fm = phi i1 [ %i.dm, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ]
  %.sroa.0226.1 = phi ptr [ %i.fj, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %i.u, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.sroa.0230.2 = phi ptr [ %.sroa.0230.1, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.sroa.0230.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %.153 = phi i8 [ %i.fi, %_ZN5boost7movelib15detail_adaptive10update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEEvT_S9_RS9_.exit ], [ %.052289, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.fm, true
  %i.fn = sext i1 %not. to i64
  %.158 = add i64 %.057288, %i.fn
  br i1 %.not.i.i72, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load ptr, ptr %.sroa.0220.0284, align 8, !tbaa !395
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %2
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !391
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0220.4 = phi ptr [ %.sroa.0220.0284, %bb.af ], [ %i.fq, %bb.ag ] ; 2 uses
  store ptr %.sroa.0190.0, ptr %20, align 8, !tbaa !450
  %i.fr = load ptr, ptr %.sroa.0209.0281, align 8, !tbaa !395
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !391
  %i.fu = icmp ne i64 %.051290, 0
  %.neg = sext i1 %i.fu to i64
  %i.fv = add i64 %.051290, %.neg
  %i.fw = icmp ne i64 %i.aw, 0
  %.neg63 = sext i1 %i.fw to i64
  %i.fx = add i64 %.sroa.speculated244, %.neg63
  %i.fy = add i64 %.0255287, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fy, 0
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !15954

.thread:                                          ; preds = %bb.ah, %bb.m, %bb.l
  %i.fz = phi ptr [ %i.fk, %bb.ah ], [ %i.s, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.ga = phi ptr [ %i.fl, %bb.ah ], [ %i.t, %bb.m ], [ %i.t, %bb.l ] ; 2 uses
  %.sroa.0220.0.lcssa.ph = phi ptr [ %.sroa.0220.4, %bb.ah ], [ %.sroa.0220.0284, %bb.m ], [ %.sroa.0220.0284, %bb.l ] ; 3 uses
  %.sroa.0226.0.lcssa.ph = phi ptr [ %.sroa.0226.1, %bb.ah ], [ %.sroa.0226.0285, %bb.m ], [ %.sroa.0226.0285, %bb.l ] ; 2 uses
  %.sroa.0230.0.lcssa.ph = phi ptr [ %.sroa.0230.2, %bb.ah ], [ %.sroa.0230.0286, %bb.m ], [ %.sroa.0230.0286, %bb.l ] ; 2 uses
  %.0255.lcssa.ph = phi i64 [ 0, %bb.ah ], [ %.0255287, %bb.m ], [ %.0255287, %bb.l ] ; 2 uses
  %.052.lcssa.ph = phi i8 [ %.153, %bb.ah ], [ 1, %bb.m ], [ %.052289, %bb.l ]
  %29 = trunc nuw i8 %.052.lcssa.ph to i1
  %30 = select i1 %29, ptr %.sroa.0226.0.lcssa.ph, ptr %.sroa.0220.0.lcssa.ph ; 2 uses
  %.not1.i.i96 = icmp eq ptr %i.ga, %i.fz
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.thread, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.gl, %.lr.ph.i.i97 ], [ %.sroa.0226.0.lcssa.ph, %.thread ] ; 2 uses
  %i.gb = phi ptr [ %i.gi, %.lr.ph.i.i97 ], [ %i.ga, %.thread ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i98, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !343, !noalias !16009
  store i32 0, ptr %i.gc, align 4, !tbaa !343, !noalias !16009
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !343, !noalias !16009
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !343, !noalias !16009
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !343, !noalias !16009
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !395, !noalias !16009
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !391, !noalias !16009 ; 2 uses
  %i.gj = load ptr, ptr %.sroa.0.0.i98, align 8, !tbaa !395, !noalias !16009
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !391, !noalias !16009
  %.not.i.i99 = icmp eq ptr %i.gi, %i.fz
  br i1 %.not.i.i99, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97, !llvm.loop !273

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100: ; preds = %.lr.ph.i.i97, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69, %.thread
  %.052.lcssa349 = phi ptr [ %i.g, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69 ], [ %30, %.thread ], [ %30, %.lr.ph.i.i97 ]
  %.0255.lcssa348 = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69 ], [ %.0255.lcssa.ph, %.thread ], [ %.0255.lcssa.ph, %.lr.ph.i.i97 ] ; 2 uses
  %.sroa.0230.0.lcssa347 = phi ptr [ %.sroa.0230.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69 ], [ %.sroa.0230.0.lcssa.ph, %.thread ], [ %.sroa.0230.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.sroa.0220.0.lcssa346 = phi ptr [ %.sroa.0220.3, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69 ], [ %.sroa.0220.0.lcssa.ph, %.thread ], [ %.sroa.0220.0.lcssa.ph, %.lr.ph.i.i97 ]
  %.not.i.i101 = icmp eq i64 %6, 0                ; 2 uses
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  %i.gm = load ptr, ptr %.sroa.0215.0, align 8, !tbaa !395, !noalias !16010
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %6
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !391, !noalias !16010
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, %bb.ai
  %.sroa.0142.0 = phi ptr [ %i.go, %bb.ai ], [ %.sroa.0215.0, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit100 ] ; 3 uses
  %i.gp = load ptr, ptr %7, align 8, !tbaa !450   ; 5 uses
  %.not1.i.i105 = icmp eq ptr %.sroa.0215.0, %.sroa.0142.0
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.ha, %.lr.ph.i.i106 ], [ %i.gp, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104 ] ; 2 uses
  %i.gq = phi ptr [ %i.gx, %.lr.ph.i.i106 ], [ %.sroa.0215.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i107, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !343, !noalias !16011
  store i32 0, ptr %i.gr, align 4, !tbaa !343, !noalias !16011
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !343, !noalias !16011
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !343, !noalias !16011
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !343, !noalias !16011
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !395, !noalias !16011
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !391, !noalias !16011 ; 2 uses
  %i.gy = load ptr, ptr %.sroa.0.0.i107, align 8, !tbaa !395, !noalias !16011
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !391, !noalias !16011
  %.not.i.i108 = icmp eq ptr %i.gx, %.sroa.0142.0
  br i1 %.not.i.i108, label %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, label %.lr.ph.i.i106, !llvm.loop !273

_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109: ; preds = %.lr.ph.i.i106, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit104
  store ptr %i.gp, ptr %18, align 8, !tbaa !450
  br i1 %.not.i.i101, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109
  %i.hb = load ptr, ptr %i.gp, align 8, !tbaa !395, !noalias !16012
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %6
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !391, !noalias !16012
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111: ; preds = %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109, %bb.aj
  %.sroa.0139.0 = phi ptr [ %i.gp, %_ZN5boost7movelib7swap_opclINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit109 ], [ %i.hd, %bb.aj ] ; 2 uses
  store ptr %.sroa.0139.0, ptr %19, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store ptr %.sroa.0139.0, ptr %22, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.he = load ptr, ptr %0, align 8, !tbaa !450, !noalias !16013 ; 2 uses
  br i1 %i.o, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !395, !noalias !16013
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %5
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !391, !noalias !16013
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111, %bb.ak
  %.sroa.0135.0 = phi ptr [ %i.he, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit111 ], [ %i.hh, %bb.ak ] ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113
  %i.hi = load ptr, ptr %.sroa.0135.0, align 8, !tbaa !395, !noalias !16014
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %4
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !391, !noalias !16014
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113, %bb.al
  %.sroa.0136.0 = phi ptr [ %.sroa.0135.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit113 ], [ %i.hk, %bb.al ]
  store ptr %.sroa.0136.0, ptr %24, align 8, !tbaa !450, !alias.scope !16015
  store ptr %.sroa.0230.0.lcssa347, ptr %25, align 8, !tbaa !450, !alias.scope !16016
  store ptr %.sroa.0215.0, ptr %26, align 8, !tbaa !450, !alias.scope !16017
  store ptr %i.gp, ptr %27, align 8, !tbaa !450, !alias.scope !16018
  store ptr %.sroa.0142.0, ptr %28, align 8, !tbaa !450, !alias.scope !16019
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPNS4_4test24movable_and_copyable_intELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEESA_SA_SA_SK_NS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.73") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0255.lcssa348, i64 noundef 0, i64 noundef %.0255.lcssa348, i1 noundef zeroext true)
  %i.hl = load ptr, ptr %23, align 8, !tbaa !450, !noalias !16020
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.hm = load ptr, ptr %22, align 8, !tbaa !450, !noalias !16021 ; 3 uses
  store ptr %i.hm, ptr %19, align 8, !tbaa !450
  %i.hn = load ptr, ptr %18, align 8, !tbaa !450  ; 3 uses
  %.not12.i = icmp eq ptr %i.hn, %i.hm
  br i1 %.not12.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPS7_Lb0EEESG_EEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115, %bb.ap
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.1, %bb.ap ], [ %.sroa.0220.0.lcssa346, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ %i.io, %bb.ap ], [ %i.hl, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115 ] ; 2 uses
  %i.ho = phi ptr [ %i.iz, %bb.ap ], [ %i.hm, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115 ] ; 2 uses
  %i.hp = icmp eq ptr %.052.lcssa349, %.sroa.0126.0
  br i1 %i.hp, label %.lr.ph.i.i.i, label %bb.am

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i116, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i ], [ %.sroa.0123.0, %.lr.ph.i116 ]
  %i.hq = phi ptr [ %i.ht, %.lr.ph.i.i.i ], [ %i.ho, %.lr.ph.i116 ]
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !395, !noalias !16022
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !391, !noalias !16022 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 3 uses
  %i.hv = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !395, !noalias !16022
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !391, !noalias !16022 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.hz = load i32, ptr %i.hu, align 4, !tbaa !343, !noalias !16022
  store i32 0, ptr %i.hu, align 4, !tbaa !343, !noalias !16022
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !343, !noalias !16022
  store i32 %i.ia, ptr %i.hu, align 4, !tbaa !343, !noalias !16022
  store i32 %i.hz, ptr %i.hy, align 4, !tbaa !343, !noalias !16022
  %.not.i.i.i118 = icmp eq ptr %i.hn, %i.ht
  br i1 %.not.i.i.i118, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPS7_Lb0EEESG_EEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !275

bb.am:                                            ; preds = %.lr.ph.i116
  %i.ib = load ptr, ptr %i.ho, align 8, !tbaa !395
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !391 ; 3 uses
  %i.ie = load ptr, ptr %.sroa.0126.0, align 8, !tbaa !395
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !391 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !343
  %i.ik = load i32, ptr %i.ii, align 4, !tbaa !343
  %i.il = icmp slt i32 %i.ij, %i.ik
  %i.im = load ptr, ptr %.sroa.0123.0, align 8, !tbaa !395
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !391 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 5 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !343 ; 2 uses
  br i1 %i.il, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !395
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !391
  store i32 0, ptr %i.ip, align 4, !tbaa !343
  %i.iu = load i32, ptr %i.ii, align 4, !tbaa !343
  store i32 %i.iu, ptr %i.ip, align 4, !tbaa !343
  store i32 %i.iq, ptr %i.ii, align 4, !tbaa !343
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.iv = load ptr, ptr %i.ig, align 8, !tbaa !395
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !391
  store i32 0, ptr %i.ip, align 4, !tbaa !343
  %i.iy = load i32, ptr %i.ih, align 4, !tbaa !343
  store i32 %i.iy, ptr %i.ip, align 4, !tbaa !343
  store i32 %i.iq, ptr %i.ih, align 4, !tbaa !343
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.0126.1 = phi ptr [ %i.ig, %bb.an ], [ %i.ix, %bb.ao ]
  %i.iz = phi ptr [ %i.it, %bb.an ], [ %i.id, %bb.ao ] ; 2 uses
  %.not.i117 = icmp eq ptr %i.hn, %i.iz
  br i1 %.not.i117, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPS7_Lb0EEESG_EEvT2_SH_SH_T1_SI_T_T0_.exit, label %.lr.ph.i116, !llvm.loop !15989

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opENS2_22stable_vector_iteratorIPS7_Lb0EEESG_EEvT2_SH_SH_T1_SI_T_T0_.exit: ; preds = %bb.ap, %.lr.ph.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEES8_SG_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 4 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !450, !noalias !16057 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !16057
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !391, !noalias !16057
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0142.1 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = mul i64 %i.a, %2
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !450, !noalias !16058 ; 9 uses
  %.not.i.i37 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !16058
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391, !noalias !16058
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit, %bb.c
  %.sroa.0139.0 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit ], [ %i.k, %bb.c ] ; 5 uses
  %.not.i.i39 = icmp eq i64 %6, 0
  br i1 %.not.i.i39, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38
  %i.l = load ptr, ptr %.sroa.0139.0, align 8, !tbaa !395, !noalias !16059
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %6
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391, !noalias !16059
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, %bb.d
  %.sroa.0138.0 = phi ptr [ %.sroa.0139.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38 ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = icmp eq i64 %5, 0
  %i.p = select i1 %i.o, i64 0, i64 %4            ; 2 uses
  %i.q = add i64 %i.p, 1
  %.sroa.speculated114 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.a)
  %.not.i.i41 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !16060
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %3
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !391, !noalias !16060
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40, %bb.e
  %.sroa.0108.1 = phi ptr [ %i.h, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit40 ], [ %i.t, %bb.e ]
  %.not191 = icmp eq i64 %i.a, 0                  ; 2 uses
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42
  %i.u = icmp ne i64 %6, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0139.0, i64 8
  %.not.i.i51 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42
  %.sroa.0142.0.lcssa = phi ptr [ %.sroa.0142.1, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42 ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 2 uses
  %.035.lcssa = phi i64 [ 0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit42 ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 2 uses
  br i1 %.not.i.i41, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit44, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !395, !noalias !16061
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %3
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !391, !noalias !16061
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit44

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit44: ; preds = %._crit_edge, %bb.f
  %.sroa.093.1 = phi ptr [ %i.h, %._crit_edge ], [ %i.y, %bb.f ]
  %.not.i.i45 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not.i.i45, label %._crit_edge210, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit46

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit46: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !395, !noalias !16062
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.035.lcssa
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !391, !noalias !16062 ; 2 uses
  %.not173203 = icmp eq ptr %i.b, %i.ab
  br i1 %.not173203, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit46
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.lcssa, i64 8
  %.not.i.i57 = icmp eq i64 %2, 0                 ; 2 uses
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit
  %.0200 = phi i64 [ %i.p, %.lr.ph ], [ %i.ct, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 4 uses
  %.034199 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 2 uses
  %.035198 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ]
  %.sroa.0142.0197 = phi ptr [ %.sroa.0142.1, %.lr.ph ], [ %.sroa.0142.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 4 uses
  %.sroa.0108.0195 = phi ptr [ %.sroa.0108.1, %.lr.ph ], [ %.sroa.0108.2, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 10 uses
  %.0167194 = phi i64 [ %i.a, %.lr.ph ], [ %i.cw, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 2 uses
  %.sroa.0120.0193 = phi ptr [ %i.b, %.lr.ph ], [ %i.co, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 8 uses
  %.val190192 = phi i64 [ %.sroa.speculated114, %.lr.ph ], [ %i.cv, %_ZN5boost9container22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEpLEl.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.0200, %.val190192
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit48

.lr.ph.i:                                         ; preds = %bb.g
  %i.ae = load ptr, ptr %.sroa.0108.0195, align 8, !tbaa !395 ; 2 uses
  %i.af = load ptr, ptr %.sroa.0120.0193, align 8, !tbaa !395 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.0200, %.lr.ph.i ], [ %i.bc, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bb, %.thread20.i ] ; 4 uses
  %i.ag = mul i64 %.01822.i, %2
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
end_hunk_3
