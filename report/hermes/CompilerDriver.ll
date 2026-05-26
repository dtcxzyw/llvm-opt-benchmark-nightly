inline.NumInlined: 6810
inline.NumDeleted: 3465
begin_hunk_0_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br i1 %i.agh, label %bb.gr, label %.critedge94.i

bb.gr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit131.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.072358.i, i64 8 ; 2 uses
  %.not91.i = icmp eq ptr %i.agp, %i.acp
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.gr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %.sroa.19.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.19.1.i, %bb.gr ] ; 2 uses
  %.sroa.13.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.13.1.i, %bb.gr ] ; 5 uses
  %.sroa.0197.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.0197.1.i, %bb.gr ] ; 9 uses
  %.1.lcssa.i = phi i32 [ %.0365.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.4.i31, %bb.gr ]
  %.val.i.i.i149.i = load ptr, ptr %i.qo, align 8, !tbaa !295 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i149.i, null
  br i1 %.not2.i.i.i.i.i, label %.critedge.i153.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i149.i, %._crit_edge.i ] ; 4 uses
  %.083.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.qn, %._crit_edge.i ] ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 32
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !3
  %i.ags = icmp ult i32 %i.agr, %i.abw            ; 3 uses
  %.19.i.i.i.i.i = select i1 %i.ags, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ags, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !296 ; 2 uses
  %.not.i.i.i.i150.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i150.i, label %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !297

_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.agt = icmp eq ptr %.19.i.i.i.i.i, %i.qn
  br i1 %i.agt, label %.critedge.i153.i, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ags, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.agu = load i32, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !3
  %i.agv = icmp ugt i32 %i.agu, %i.abw
  br i1 %i.agv, label %.critedge.i153.i, label %bb.gx

.critedge.i153.i:                                 ; preds = %bb.gs, %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i28.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.gs ], [ %.19.i.i.i.i.i, %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i ], [ %i.qn, %._crit_edge.i ]
  %i.agw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 6 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  store i32 %i.abw, ptr %i.agx, align 8, !tbaa !298
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 40 ; 2 uses
  store ptr %.sroa.0197.0.lcssa.i, ptr %i.agy, align 8, !tbaa !305
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 48
  store ptr %.sroa.13.0.lcssa.i, ptr %i.agz, align 8, !tbaa !306
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 56 ; 2 uses
  store ptr %.sroa.19.0.lcssa.i, ptr %i.aha, align 8, !tbaa !307
  %i.ahb = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr %.08.lcssa.i.i.i28.i.i, i32 %i.abw) ; 2 uses
  %i.ahc = extractvalue { ptr, ptr } %i.ahb, 1    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i.i.i, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %.critedge.i153.i
  %i.ahd = extractvalue { ptr, ptr } %i.ahb, 0
  %.not.i.i.i.i.i.i = icmp ne ptr %i.ahd, null
  %i.ahe = icmp eq ptr %i.ahc, %i.qn
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ahe
  br i1 %or.cond.i.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 32
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !3
  %i.ahh = icmp ugt i32 %i.ahg, %i.abw
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.gu, %bb.gt
  %i.ahi = phi i1 [ %i.ahh, %bb.gu ], [ true, %bb.gt ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahi, ptr noundef nonnull %i.agw, ptr noundef nonnull %i.ahc, ptr noundef nonnull align 8 dereferenceable(32) %i.qn) #26
  %i.ahj = load i64, ptr %i.qr, align 8, !tbaa !203
  %i.ahk = add i64 %i.ahj, 1
  store i64 %i.ahk, ptr %i.qr, align 8, !tbaa !203
  br label %bb.hc

bb.gv:                                            ; preds = %.critedge.i153.i
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0197.0.lcssa.i, %.sroa.13.0.lcssa.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gv, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahv, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0197.0.lcssa.i, %bb.gv ] ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !7
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8
  call void %i.ahp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahm) #26, !inline_history !308
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !227 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahr, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !7
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8
  call void %i.ahu(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahr) #26, !inline_history !308
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahv, %.sroa.13.0.lcssa.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agy, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.gv
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %.sroa.0197.0.lcssa.i, %bb.gv ] ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aha, align 8, !tbaa !307
  %i.ahw = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i to i64
  %i.ahx = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.ahy = sub i64 %i.ahw, %i.ahx
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahy) #25
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i: ; preds = %bb.gw, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.agw, i64 noundef 64) #25
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gs
  %i.ahz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 4 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !173
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 3 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !176 ; 2 uses
  %i.aie = ptrtoint ptr %i.aib to i64
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = icmp ult i64 %i.aig, 37
  br i1 %i.aih, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aii = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ahz, ptr noundef nonnull @.str.302, i64 noundef 37) #26
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit157.i

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.aid, ptr noundef nonnull align 1 dereferenceable(37) @.str.302, i64 37, i1 false)
  %i.aij = load ptr, ptr %i.aic, align 8, !tbaa !176
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 37
  store ptr %i.aik, ptr %i.aic, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit157.i

_ZN4llvh11raw_ostreamlsEPKc.exit157.i:            ; preds = %bb.gz, %bb.gy
  %.0.i.i156.i = phi ptr [ %i.aii, %bb.gy ], [ %i.ahz, %bb.gz ]
  %i.ail = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i156.i, ptr noundef nonnull %i.abx) #26 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !173
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 24 ; 3 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !176 ; 2 uses
  %i.aiq = icmp eq ptr %i.ain, %i.aip
  br i1 %i.aiq, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit157.i
  %i.air = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ail, ptr noundef nonnull @.str.266, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit161.i

bb.hb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit157.i
  store i8 10, ptr %i.aip, align 1
  %i.ais = load ptr, ptr %i.aio, align 8, !tbaa !176
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 1
  store ptr %i.ait, ptr %i.aio, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit161.i

bb.hc:                                            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i, %.thread.i.i.i.i
  %.not.i162.i = icmp eq ptr %.sroa.10.2, %.sroa.17.3
  br i1 %.not.i162.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  store i32 %i.abw, ptr %.sroa.10.2, align 4, !tbaa !3
  br label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i

bb.he:                                            ; preds = %bb.hc
  %i.aiu = ptrtoint ptr %.sroa.17.3 to i64
  %i.aiv = ptrtoint ptr %.sroa.0241.3 to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv                 ; 6 uses
  %i.aix = icmp eq i64 %i.aiw, 9223372036854775804
  br i1 %i.aix, label %bb.hf, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.hf:                                            ; preds = %bb.he
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.he
  %i.aiy = ashr exact i64 %i.aiw, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aiy, i64 1)
  %i.aiz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aiy ; 2 uses
  %114 = icmp ult i64 %i.aiz, %i.aiy
  %i.aja = call i64 @llvm.umin.i64(i64 %i.aiz, i64 2305843009213693951)
  %115 = select i1 %114, i64 2305843009213693951, i64 %i.aja ; 3 uses
  %.not.i.i.i163.i = icmp ne i64 %115, 0
  call void @llvm.assume(i1 %.not.i.i.i163.i)
  %i.ajb = shl nuw nsw i64 %115, 2
  %i.ajc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajb) #28 ; 4 uses
  %i.ajd = getelementptr inbounds i8, ptr %i.ajc, i64 %i.aiw ; 2 uses
  store i32 %i.abw, ptr %i.ajd, align 4, !tbaa !3
  %i.aje = icmp sgt i64 %i.aiw, 0
  br i1 %i.aje, label %bb.hg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.hg:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajc, ptr align 4 %.sroa.0241.3, i64 %i.aiw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.hg, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0241.3, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0241.3, i64 noundef %i.aiw) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.hh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %115
  br label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i

_ZN4llvh11raw_ostreamlsEPKc.exit161.i:            ; preds = %bb.hb, %bb.ha
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0197.0.lcssa.i, %.sroa.13.0.lcssa.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit161.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ajq, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i ], [ %.sroa.0197.0.lcssa.i, %_ZN4llvh11raw_ostreamlsEPKc.exit161.i ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i164.i = icmp eq ptr %i.ajh, null
  br i1 %.not.i.i.i.i.i.i164.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !7
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8
  call void %i.ajk(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ajh) #26, !inline_history !310
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !227 ; 3 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ajm, null
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !7
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  call void %i.ajp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ajm) #26, !inline_history !310
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ajq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i165.i = icmp eq ptr %i.ajq, %.sroa.13.0.lcssa.i
  br i1 %.not.i.i.i165.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit161.i
  %.not.i.i2.i.i = icmp eq ptr %.sroa.0197.0.lcssa.i, null
  br i1 %.not.i.i2.i.i, label %.critedge.i, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i
  %i.ajr = ptrtoint ptr %.sroa.19.0.lcssa.i to i64
  %i.ajs = ptrtoint ptr %.sroa.0197.0.lcssa.i to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.0.lcssa.i, i64 noundef %i.ajt) #25
  br label %.critedge.i

_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.hd
  %.sroa.17.5 = phi ptr [ %i.ajf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.17.3, %bb.hd ] ; 2 uses
  %.pn = phi ptr [ %i.ajd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.10.2, %bb.hd ]
  %.sroa.0241.5 = phi ptr [ %i.ajc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0241.3, %bb.hd ] ; 2 uses
  %.sroa.10.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.aju = add nuw i64 %.sroa.5210.0364.i, 1      ; 2 uses
  %.not308.i = icmp eq i64 %i.aju, %i.zy
  br i1 %.not308.i, label %.critedge.i, label %bb.fh

.critedge94.i:                                    ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit131.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread255.i, %bb.fz, %bb.fy
  %.sroa.19.4.ph.i = phi ptr [ %.sroa.19.0354.i, %bb.fy ], [ %.sroa.19.0354.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread255.i ], [ %.sroa.19.0354.i, %bb.fz ], [ %.sroa.19.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.19.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ]
  %.sroa.13.4.ph.i = phi ptr [ %.sroa.13.0355.i, %bb.fy ], [ %.sroa.13.0355.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread255.i ], [ %.sroa.13.0355.i, %bb.fz ], [ %.sroa.13.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.13.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ] ; 2 uses
  %.sroa.0197.4.ph.i = phi ptr [ %.sroa.0197.0356.i, %bb.fy ], [ %.sroa.0197.0356.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.thread255.i ], [ %.sroa.0197.0356.i, %bb.fz ], [ %.sroa.0197.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i147.i ], [ %.sroa.0197.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit131.i ] ; 5 uses
  %.not4.i.i.i166.i = icmp eq ptr %.sroa.0197.4.ph.i, %.sroa.13.4.ph.i
  br i1 %.not4.i.i.i166.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i

.lr.ph.i.i.i167.i:                                ; preds = %.critedge94.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i
  %.05.i.i.i168.i = phi ptr [ %i.akf, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i ], [ %.sroa.0197.4.ph.i, %.critedge94.i ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 16
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i169.i = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i.i.i.i.i169.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i: ; preds = %.lr.ph.i.i.i167.i
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !7
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ajz = load ptr, ptr %i.ajy, align 8
  call void %i.ajz(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ajw) #26, !inline_history !310
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i, %.lr.ph.i.i.i167.i
  %i.aka = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 8
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !227 ; 3 uses
  %.not.i1.i.i.i.i.i172.i = icmp eq ptr %i.akb, null
  br i1 %.not.i1.i.i.i.i.i172.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !7
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  %i.ake = load ptr, ptr %i.akd, align 8
  call void %i.ake(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.akb) #26, !inline_history !310
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %i.akf = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 24 ; 2 uses
  %.not.i.i.i175.i = icmp eq ptr %i.akf, %.sroa.13.4.ph.i
  br i1 %.not.i.i.i175.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, %.critedge94.i
  %.not.i.i2.i180.i = icmp eq ptr %.sroa.0197.4.ph.i, null
  br i1 %.not.i.i2.i180.i, label %.critedge.i, label %bb.hj

bb.hj:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i
  %i.akg = ptrtoint ptr %.sroa.19.4.ph.i to i64
  %i.akh = ptrtoint ptr %.sroa.0197.4.ph.i to i64
  %i.aki = sub i64 %i.akg, %i.akh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.4.ph.i, i64 noundef %i.aki) #25
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i, %bb.hj, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, %bb.hi, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, %bb.fv, %bb.fu, %bb.fq, %bb.fp, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i
  %.sroa.17.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.17.3, %bb.fq ], [ %.sroa.17.3, %bb.fp ], [ %.sroa.17.3, %bb.fu ], [ %.sroa.17.3, %bb.fv ], [ %.sroa.17.3, %bb.hj ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.17.3, %bb.hi ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.17.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %.sroa.10.3 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.10.2, %bb.fq ], [ %.sroa.10.2, %bb.fp ], [ %.sroa.10.2, %bb.fu ], [ %.sroa.10.2, %bb.fv ], [ %.sroa.10.2, %bb.hj ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.10.2, %bb.hi ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.10.4, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %.sroa.0241.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.0241.3, %bb.fq ], [ %.sroa.0241.3, %bb.fp ], [ %.sroa.0241.3, %bb.fu ], [ %.sroa.0241.3, %bb.fv ], [ %.sroa.0241.3, %bb.hj ], [ %.sroa.0241.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.0241.3, %bb.hi ], [ %.sroa.0241.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.0241.5, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %spec.select.i = phi ptr [ %i.sk, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ null, %bb.fq ], [ null, %bb.fp ], [ null, %bb.fu ], [ null, %bb.fv ], [ null, %bb.hj ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ null, %bb.hi ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %i.sk, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EED2Ev.exit.thread.i ] ; 2 uses
  %i.akj = load ptr, ptr %96, align 8, !tbaa !266
  call void @_ZdlPv(ptr noundef %i.akj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  %i.akk = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.akl = load i8, ptr %i.akk, align 8, !tbaa !240, !range !179, !noundef !61
  %i.akm = trunc nuw i8 %i.akl to i1
  br i1 %i.akm, label %bb.hk, label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.hk:                                            ; preds = %.critedge.i
  %i.akn = load ptr, ptr %95, align 8, !tbaa !266
  call void @_ZdlPv(ptr noundef %i.akn) #26
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.hk, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  %.pr300.pre.i = load ptr, ptr %93, align 8, !tbaa !227 ; 2 uses
  %.not.i183.i = icmp eq ptr %.pr300.pre.i, null
  br i1 %.not.i183.i, label %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %bb.ed, %bb.ec, %bb.dz, %bb.dy, %bb.dv
  %.sroa.17.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.10.1 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.0241.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.0241.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.17303.i = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %i.ako = phi ptr [ %i.rx, %bb.dv ], [ %i.rx, %bb.ec ], [ %i.rx, %bb.ed ], [ %.pr300.pre.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ %i.rx, %bb.dy ], [ %i.rx, %bb.dz ] ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !7
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8
  call void %i.akr(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ako) #26, !inline_history !294
  br label %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit

_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit: ; preds = %bb.dt, %bb.du, %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i
  %.sroa.17.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.17.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.sroa.10.5 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.10.1, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  %.sroa.0241.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.0241.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %.sroa.0241.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.17304.i = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.17303.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i184.i ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %101)
  br i1 %i.rp, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit
  call void @zip_close(ptr noundef nonnull %i.rg) #26
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit
  %.not19.not = icmp eq ptr %.17304.i, null
  br i1 %.not19.not, label %_ZNSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EED2Ev.exit.thread, label %bb.hn

_ZNSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EED2Ev.exit.thread: ; preds = %bb.hm
  store i32 5, ptr %0, align 8, !tbaa !186
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aks, i8 0, i64 64, i1 false)
  store ptr %i.aku, ptr %i.akt, align 8, !tbaa !178
  br label %_ZNSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191

bb.hn:                                            ; preds = %bb.hm
  %i.akv = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !311 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.akv, i8 0, i64 20, i1 false), !noalias !311
  %i.akw = getelementptr inbounds nuw i8, ptr %.17304.i, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !232, !noalias !316
  %i.aky = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.akx, ptr nonnull @.str.311, i64 15), !noalias !316 ; 2 uses
  %i.akz = extractvalue { i64, i8 } %i.aky, 1
  %i.ala = trunc nuw i8 %i.akz to i1
  br i1 %i.ala, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40: ; preds = %bb.hn
  %i.alb = extractvalue { i64, i8 } %i.aky, 0
  %i.alc = getelementptr inbounds nuw i8, ptr %.17304.i, i64 16
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.alb
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !235, !noalias !316 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.ale, null
  br i1 %.not.i.i41, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38, label %bb.ho

bb.ho:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !229, !noalias !316
  %.fr.i42 = freeze i32 %i.alf
  %i.alg = icmp eq i32 %.fr.i42, 0
  br i1 %i.alg, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i43, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i43: ; preds = %bb.ho
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ale, i64 8 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !232, !noalias !316
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !58, !noalias !316 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  %i.chg = add i32 %i.che, %i.chf
  store i32 %i.chg, ptr %i.cgc, align 8, !tbaa !55, !noalias !573
  br i1 %.not.i142.i, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.pi

bb.pi:                                            ; preds = %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i
  %i.chh = load ptr, ptr %13, align 8, !tbaa !636, !noalias !573 ; 2 uses
  %i.chi = load i32, ptr %i.cge, align 8, !tbaa !639, !noalias !573 ; 2 uses
  %i.chj = icmp eq i32 %i.chi, 0
  br i1 %i.chj, label %.loopexit.i.i, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.chk = load i32, ptr %.sroa.0233.0318.i.i, align 8, !tbaa !3 ; 3 uses
  %i.chl = mul i32 %i.chk, 37
  %i.chm = add i32 %i.chi, -1                     ; 2 uses
  %.02744.i.i.i.i.i = and i32 %i.chl, %i.chm      ; 2 uses
  %i.chn = zext i32 %.02744.i.i.i.i.i to i64
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.chh, i64 %i.chn
  %i.chp = load i32, ptr %i.cho, align 4, !tbaa !3 ; 2 uses
  %i.chq = icmp eq i32 %i.chk, %i.chp
  br i1 %i.chq, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %.lr.ph.i.i.i.i.i175, !prof !640

.lr.ph.i.i.i.i.i175:                              ; preds = %bb.pj, %bb.pk
  %i.chr = phi i32 [ %i.chx, %bb.pk ], [ %i.chp, %bb.pj ]
  %.02747.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i, %bb.pk ], [ %.02744.i.i.i.i.i, %bb.pj ]
  %.02546.i.i.i.i.i = phi i32 [ %i.cht, %bb.pk ], [ 1, %bb.pj ] ; 2 uses
  %i.chs = icmp eq i32 %i.chr, -1
  br i1 %i.chs, label %.loopexit.i.i, label %bb.pk, !prof !65

bb.pk:                                            ; preds = %.lr.ph.i.i.i.i.i175
  %i.cht = add i32 %.02546.i.i.i.i.i, 1
  %i.chu = add i32 %.02546.i.i.i.i.i, %.02747.i.i.i.i.i
  %.027.i.i.i.i.i = and i32 %i.chu, %i.chm        ; 2 uses
  %i.chv = zext i32 %.027.i.i.i.i.i to i64
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.chh, i64 %i.chv
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !3 ; 2 uses
  %i.chy = icmp eq i32 %i.chk, %i.chx
  br i1 %i.chy, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %.lr.ph.i.i.i.i.i175, !prof !641, !llvm.loop !642

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i175, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !573
  %i.chz = load ptr, ptr %i.cgs, align 8, !tbaa !227 ; 2 uses
  %i.cia = load ptr, ptr %i.chz, align 8, !tbaa !7
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 16
  %i.cic = load ptr, ptr %i.cib, align 8
  %i.cid = call { ptr, i64 } %i.cic(ptr noundef nonnull align 8 dereferenceable(24) %i.chz) #26, !inline_history !620 ; 2 uses
  %i.cie = extractvalue { ptr, i64 } %i.cid, 0    ; 3 uses
  %i.cif = extractvalue { ptr, i64 } %i.cid, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %.not.i.i105.i.i = icmp eq ptr %i.cie, null
  store ptr %i.cgf, ptr %15, align 8, !tbaa !178, !alias.scope !649, !noalias !573
  br i1 %.not.i.i105.i.i, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %.loopexit.i.i
  store i64 0, ptr %i.cgg, align 8, !tbaa !155, !alias.scope !649, !noalias !573
  store i8 0, ptr %i.cgf, align 8, !tbaa !23, !alias.scope !649, !noalias !573
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i

bb.pm:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !650
  store i64 %i.cif, ptr %i.b, align 8, !tbaa !58, !noalias !650
  %i.cig = icmp ugt i64 %i.cif, 15
  br i1 %i.cig, label %bb.pn, label %._crit_edge.i.i.i.i.i.i

bb.pn:                                            ; preds = %bb.pm
  %i.cih = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cih, ptr %15, align 8, !tbaa !18, !alias.scope !649, !noalias !573
  %i.cii = load i64, ptr %i.b, align 8, !tbaa !58, !noalias !650
  store i64 %i.cii, ptr %i.cgf, align 8, !tbaa !23, !alias.scope !649, !noalias !573
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.pn, %bb.pm
  %i.cij = phi ptr [ %i.cih, %bb.pn ], [ %i.cgf, %bb.pm ] ; 2 uses
  switch i64 %i.cif, label %bb.pp [
    i64 1, label %bb.po
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i
  ]

bb.po:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cik = load i8, ptr %i.cie, align 1, !tbaa !23
  store i8 %i.cik, ptr %i.cij, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i

bb.pp:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cij, ptr nonnull align 1 %i.cie, i64 %i.cif, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i: ; preds = %bb.pp, %bb.po, %._crit_edge.i.i.i.i.i.i
  %i.cil = load i64, ptr %i.b, align 8, !tbaa !58, !noalias !650 ; 2 uses
  store i64 %i.cil, ptr %i.cgg, align 8, !tbaa !155, !alias.scope !649, !noalias !573
  %i.cim = load ptr, ptr %15, align 8, !tbaa !18, !alias.scope !649, !noalias !573
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 %i.cil
  store i8 0, ptr %i.cin, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !650
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i, %bb.pl
  %i.cio = load ptr, ptr %i.cfy, align 8, !tbaa !17, !noalias !573 ; 7 uses
  %i.cip = load ptr, ptr %i.cfu, align 8, !tbaa !26, !noalias !573
  %.not.i.i106.i.i = icmp eq ptr %i.cio, %i.cip
  br i1 %.not.i.i106.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i.i, label %bb.pq

bb.pq:                                            ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cio, i64 16 ; 3 uses
  store ptr %i.ciq, ptr %i.cio, align 8, !tbaa !178
  %i.cir = load ptr, ptr %15, align 8, !tbaa !18, !noalias !573 ; 2 uses
  %i.cis = icmp eq ptr %i.cir, %i.cgf
  br i1 %i.cis, label %bb.pr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.pr:                                            ; preds = %bb.pq
  %i.cit = load i64, ptr %i.cgg, align 8, !tbaa !155, !noalias !573 ; 3 uses
  %i.ciu = icmp ult i64 %i.cit, 16
  call void @llvm.assume(i1 %i.ciu)
  %i.civ = add nuw nsw i64 %i.cit, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ciq, ptr noundef nonnull align 8 dereferenceable(1) %i.cgf, i64 %i.civ, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.pq
  store ptr %i.cir, ptr %i.cio, align 8, !tbaa !18
  %i.ciw = load i64, ptr %i.cgf, align 8, !tbaa !23, !noalias !573
  store i64 %i.ciw, ptr %i.ciq, align 8, !tbaa !23
  %.pre358.i.i = load i64, ptr %i.cgg, align 8, !tbaa !155, !noalias !573
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.pr
  %i.cix = phi i64 [ %.pre358.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cit, %bb.pr ]
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cio, i64 8
  store i64 %i.cix, ptr %i.ciy, align 8, !tbaa !155
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cio, i64 32
  store ptr %i.ciz, ptr %i.cfy, align 8, !tbaa !17, !noalias !573
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.cio, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %.pre359.i.i = load ptr, ptr %15, align 8, !tbaa !18, !noalias !573 ; 2 uses
  %i.cja = icmp eq ptr %.pre359.i.i, %i.cgf
  br i1 %i.cja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i.i
  %i.cjb = load i64, ptr %i.cgf, align 8, !tbaa !23, !noalias !573
  %i.cjc = add i64 %i.cjb, 1
  call void @_ZdlPvm(ptr noundef %.pre359.i.i, i64 noundef %i.cjc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !573
  %i.cjd = getelementptr inbounds nuw i8, ptr %.sroa.0233.0318.i.i, i64 16 ; 2 uses
  %i.cje = load ptr, ptr %i.cjd, align 8, !tbaa !227
  %.not284.i.i = icmp eq ptr %i.cje, null
  br i1 %.not284.i.i, label %bb.pw, label %bb.ps

bb.ps:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !573
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !573
  %i.cjf = load ptr, ptr %i.cjd, align 8, !tbaa !227 ; 4 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cjf, i64 8
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !351 ; 2 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjf, i64 16
  %i.cjj = load ptr, ptr %i.cji, align 8, !tbaa !353
  %i.cjk = ptrtoint ptr %i.cjj to i64
  %i.cjl = ptrtoint ptr %i.cjh to i64
  %i.cjm = sub i64 %i.cjk, %i.cjl
  store ptr %i.cjh, ptr %18, align 8, !noalias !573
  store i64 %i.cjm, ptr %i.cgh, align 8, !noalias !573
  %i.cjn = load ptr, ptr %i.cjf, align 8, !tbaa !7
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 16
  %i.cjp = load ptr, ptr %i.cjo, align 8
  %i.cjq = call { ptr, i64 } %i.cjp(ptr noundef nonnull align 8 dereferenceable(24) %i.cjf) #26, !inline_history !651 ; 2 uses
  %i.cjr = extractvalue { ptr, i64 } %i.cjq, 0
  store ptr %i.cjr, ptr %i.cgi, align 8, !noalias !573
  %i.cjs = extractvalue { ptr, i64 } %i.cjq, 1
  store i64 %i.cjs, ptr %i.cgj, align 8, !noalias !573
  call void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.671") align 8 %17, ptr noundef nonnull byval(%"class.llvh::MemoryBufferRef") align 8 %18, ptr noundef nonnull align 8 dereferenceable(464) %16) #26
  %i.cjt = load ptr, ptr %17, align 8, !noalias !573 ; 2 uses
  %.not285.i.i = icmp eq ptr %i.cjt, null
  %i.cju = ptrtoint ptr %i.cjt to i64             ; 2 uses
  br i1 %.not285.i.i, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit137.i.i, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %.not.i.i110.i.i = icmp eq ptr %.sroa.14.1320.i.i, %.sroa.28.1319.i.i
  br i1 %.not.i.i110.i.i, label %bb.pu, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i

_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i: ; preds = %bb.pt
  store i64 %i.cju, ptr %.sroa.14.1320.i.i, align 8, !tbaa !624
  %i.cjv = getelementptr inbounds nuw i8, ptr %.sroa.14.1320.i.i, i64 8
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i

bb.pu:                                            ; preds = %bb.pt
  %i.cjw = ptrtoint ptr %.sroa.14.1320.i.i to i64 ; 3 uses
  %i.cjx = ptrtoint ptr %.sroa.0240.1321.i.i to i64 ; 3 uses
  %i.cjy = sub i64 %i.cjw, %i.cjx                 ; 4 uses
  %i.cjz = icmp eq i64 %i.cjy, 9223372036854775800
  br i1 %i.cjz, label %bb.pv, label %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i

bb.pv:                                            ; preds = %bb.pu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i: ; preds = %bb.pu
  %i.cka = ashr exact i64 %i.cjy, 3               ; 3 uses
  %.sroa.speculated.i.i175.i.i = call i64 @llvm.umax.i64(i64 %i.cka, i64 1)
  %i.ckb = add nsw i64 %.sroa.speculated.i.i175.i.i, %i.cka ; 2 uses
  %116 = icmp ult i64 %i.ckb, %i.cka
  %i.ckc = call i64 @llvm.umin.i64(i64 %i.ckb, i64 1152921504606846975)
  %117 = select i1 %116, i64 1152921504606846975, i64 %i.ckc ; 3 uses
  %.not.i.i176.i.i = icmp ne i64 %117, 0
  call void @llvm.assume(i1 %.not.i.i176.i.i)
  %i.ckd = shl nuw nsw i64 %117, 3
  %i.cke = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ckd) #28 ; 11 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 %i.cjy
  store i64 %i.cju, ptr %i.ckf, align 8, !tbaa !624
  store ptr null, ptr %17, align 8, !tbaa !624, !noalias !573
  %.not10.i.i.i.i177.i.i = icmp eq ptr %.sroa.0240.1321.i.i, %.sroa.14.1320.i.i
  br i1 %.not10.i.i.i.i177.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, label %.lr.ph.i.i.i.i178.i.i.preheader

.lr.ph.i.i.i.i178.i.i.preheader:                  ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i
  %i.ckg = add i64 %i.cjw, -8
  %i.ckh = sub i64 %i.ckg, %i.cjx                 ; 2 uses
  %i.cki = lshr i64 %i.ckh, 3
  %i.ckj = add nuw nsw i64 %i.cki, 1              ; 2 uses
  %min.iters.check1041 = icmp ult i64 %i.ckh, 56
  br i1 %min.iters.check1041, label %.lr.ph.i.i.i.i178.i.i.preheader1061, label %vector.memcheck1032

vector.memcheck1032:                              ; preds = %.lr.ph.i.i.i.i178.i.i.preheader
  %scevgep1033 = getelementptr i8, ptr %i.cke, i64 8
  %i.ckk = add i64 %i.cjw, -8
  %i.ckl = sub i64 %i.ckk, %i.cjx
  %i.ckm = and i64 %i.ckl, -8                     ; 2 uses
  %scevgep1034 = getelementptr i8, ptr %scevgep1033, i64 %i.ckm
  %scevgep1035 = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 8
  %scevgep1036 = getelementptr i8, ptr %scevgep1035, i64 %i.ckm
  %bound01037 = icmp ult ptr %i.cke, %scevgep1036
  %bound11038 = icmp ult ptr %.sroa.0240.1321.i.i, %scevgep1034
  %found.conflict1039 = and i1 %bound01037, %bound11038
  br i1 %found.conflict1039, label %.lr.ph.i.i.i.i178.i.i.preheader1061, label %vector.ph1042

vector.ph1042:                                    ; preds = %vector.memcheck1032
  %n.vec1044 = and i64 %i.ckj, 4611686018427387900 ; 3 uses
  %i.ckn = shl i64 %n.vec1044, 3                  ; 2 uses
  %i.cko = getelementptr i8, ptr %i.cke, i64 %i.ckn ; 2 uses
  %i.ckp = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 %i.ckn
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %vector.ph1042
  %index1046 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1051, %vector.body1045 ] ; 2 uses
  %i.ckq = shl i64 %index1046, 3                  ; 2 uses
  %next.gep1047 = getelementptr i8, ptr %i.cke, i64 %i.ckq ; 2 uses
  %next.gep1048 = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 %i.ckq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ckr = getelementptr i8, ptr %next.gep1048, i64 16
  %wide.load1049 = load <2 x i64>, ptr %next.gep1048, align 8, !tbaa !624, !alias.scope !657, !noalias !652
  %wide.load1050 = load <2 x i64>, ptr %i.ckr, align 8, !tbaa !624, !alias.scope !657, !noalias !652
  %i.cks = getelementptr i8, ptr %next.gep1047, i64 16
  store <2 x i64> %wide.load1049, ptr %next.gep1047, align 8, !tbaa !624, !alias.scope !660, !noalias !657
  store <2 x i64> %wide.load1050, ptr %i.cks, align 8, !tbaa !624, !alias.scope !660, !noalias !657
  %i.ckt = getelementptr i8, ptr %next.gep1048, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1048, align 8, !tbaa !624, !alias.scope !657, !noalias !652
  store <2 x ptr> splat (ptr null), ptr %i.ckt, align 8, !tbaa !624, !alias.scope !657, !noalias !652
  %index.next1051 = add nuw i64 %index1046, 4     ; 2 uses
  %i.cku = icmp eq i64 %index.next1051, %n.vec1044
  br i1 %i.cku, label %middle.block1052, label %vector.body1045, !llvm.loop !662

middle.block1052:                                 ; preds = %vector.body1045
  %cmp.n1053 = icmp eq i64 %i.ckj, %n.vec1044
  br i1 %cmp.n1053, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, label %.lr.ph.i.i.i.i178.i.i.preheader1061

.lr.ph.i.i.i.i178.i.i.preheader1061:              ; preds = %vector.memcheck1032, %.lr.ph.i.i.i.i178.i.i.preheader, %middle.block1052
  %.012.i.i.i.i179.i.i.ph = phi ptr [ %i.cke, %vector.memcheck1032 ], [ %i.cke, %.lr.ph.i.i.i.i178.i.i.preheader ], [ %i.cko, %middle.block1052 ]
  %.0911.i.i.i.i180.i.i.ph = phi ptr [ %.sroa.0240.1321.i.i, %vector.memcheck1032 ], [ %.sroa.0240.1321.i.i, %.lr.ph.i.i.i.i178.i.i.preheader ], [ %i.ckp, %middle.block1052 ]
  br label %.lr.ph.i.i.i.i178.i.i

.lr.ph.i.i.i.i178.i.i:                            ; preds = %.lr.ph.i.i.i.i178.i.i.preheader1061, %.lr.ph.i.i.i.i178.i.i
  %.012.i.i.i.i179.i.i = phi ptr [ %i.ckx, %.lr.ph.i.i.i.i178.i.i ], [ %.012.i.i.i.i179.i.i.ph, %.lr.ph.i.i.i.i178.i.i.preheader1061 ] ; 2 uses
  %.0911.i.i.i.i180.i.i = phi ptr [ %i.ckw, %.lr.ph.i.i.i.i178.i.i ], [ %.0911.i.i.i.i180.i.i.ph, %.lr.ph.i.i.i.i178.i.i.preheader1061 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ckv = load i64, ptr %.0911.i.i.i.i180.i.i, align 8, !tbaa !624, !alias.scope !655, !noalias !652
  store i64 %i.ckv, ptr %.012.i.i.i.i179.i.i, align 8, !tbaa !624, !alias.scope !652, !noalias !655
  store ptr null, ptr %.0911.i.i.i.i180.i.i, align 8, !tbaa !624, !alias.scope !655, !noalias !652
  %i.ckw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i180.i.i, i64 8 ; 2 uses
  %i.ckx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i179.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i181.i.i = icmp eq ptr %i.ckw, %.sroa.14.1320.i.i
  br i1 %.not.i.i.i.i181.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, label %.lr.ph.i.i.i.i178.i.i, !llvm.loop !663

_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i: ; preds = %.lr.ph.i.i.i.i178.i.i, %middle.block1052, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i
  %.0.lcssa.i.i.i.i183.i.i = phi ptr [ %i.cke, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i174.i.i ], [ %i.cko, %middle.block1052 ], [ %i.ckx, %.lr.ph.i.i.i.i178.i.i ]
  %i.cky = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i183.i.i, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0240.1321.i.i, i64 noundef %i.cjy) #25
  %i.ckz = getelementptr inbounds nuw [8 x i8], ptr %i.cke, i64 %117 ; 2 uses
  %.pr.i.i = load ptr, ptr %17, align 8, !tbaa !624, !noalias !573 ; 3 uses
  %.not.i112.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i112.i.i, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr.i.i) #26
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i
  %.sroa.0240.8272.i.i = phi ptr [ %.sroa.0240.1321.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %i.cke, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %i.cke, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  %.sroa.14.8271.i.i = phi ptr [ %i.cjv, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %i.cky, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %i.cky, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  %.sroa.28.8270.i.i = phi ptr [ %.sroa.28.1319.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.thread.i.i ], [ %i.ckz, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit111.i.i ], [ %i.ckz, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i113.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !573
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !573
  br label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i

bb.pw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i
  %.not.i.i115.i.i = icmp eq ptr %.sroa.14.1320.i.i, %.sroa.28.1319.i.i
  br i1 %.not.i.i115.i.i, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  store i64 0, ptr %.sroa.14.1320.i.i, align 8, !tbaa !624
  %i.cla = getelementptr inbounds nuw i8, ptr %.sroa.14.1320.i.i, i64 8
  br label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i

bb.py:                                            ; preds = %bb.pw
  %i.clb = ptrtoint ptr %.sroa.14.1320.i.i to i64 ; 3 uses
  %i.clc = ptrtoint ptr %.sroa.0240.1321.i.i to i64 ; 3 uses
  %i.cld = sub i64 %i.clb, %i.clc                 ; 4 uses
  %i.cle = icmp eq i64 %i.cld, 9223372036854775800
  br i1 %i.cle, label %bb.pz, label %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i193.i.i

bb.pz:                                            ; preds = %bb.py
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i193.i.i: ; preds = %bb.py
  %i.clf = ashr exact i64 %i.cld, 3               ; 3 uses
  %.sroa.speculated.i.i194.i.i = call i64 @llvm.umax.i64(i64 %i.clf, i64 1)
  %i.clg = add nsw i64 %.sroa.speculated.i.i194.i.i, %i.clf ; 2 uses
  %118 = icmp ult i64 %i.clg, %i.clf
  %i.clh = call i64 @llvm.umin.i64(i64 %i.clg, i64 1152921504606846975)
  %119 = select i1 %118, i64 1152921504606846975, i64 %i.clh ; 3 uses
  %.not.i.i195.i.i.a = icmp ne i64 %119, 0
  call void @llvm.assume(i1 %.not.i.i195.i.i.a)
  %i.cli = shl nuw nsw i64 %119, 3
  %i.clj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cli) #28 ; 10 uses
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 %i.cld
  store i64 0, ptr %i.clk, align 8, !tbaa !624
  %.not10.i.i.i.i196.i.i = icmp eq ptr %.sroa.0240.1321.i.i, %.sroa.14.1320.i.i
  br i1 %.not10.i.i.i.i196.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i, label %.lr.ph.i.i.i.i197.i.i.preheader

.lr.ph.i.i.i.i197.i.i.preheader:                  ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i193.i.i
  %i.cll = add i64 %i.clb, -8
  %i.clm = sub i64 %i.cll, %i.clc                 ; 2 uses
  %i.cln = lshr i64 %i.clm, 3
  %i.clo = add nuw nsw i64 %i.cln, 1              ; 2 uses
  %min.iters.check1018 = icmp ult i64 %i.clm, 56
  br i1 %min.iters.check1018, label %.lr.ph.i.i.i.i197.i.i.preheader1060, label %vector.memcheck1014

vector.memcheck1014:                              ; preds = %.lr.ph.i.i.i.i197.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.clj, i64 8
  %i.clp = add i64 %i.clb, -8
  %i.clq = sub i64 %i.clp, %i.clc
  %i.clr = and i64 %i.clq, -8                     ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %scevgep, i64 %i.clr
  %scevgep1016 = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 8
  %scevgep1017 = getelementptr i8, ptr %scevgep1016, i64 %i.clr
  %bound0 = icmp ult ptr %i.clj, %scevgep1017
  %bound1 = icmp ult ptr %.sroa.0240.1321.i.i, %scevgep1015
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i197.i.i.preheader1060, label %vector.ph1019

vector.ph1019:                                    ; preds = %vector.memcheck1014
  %n.vec1021 = and i64 %i.clo, 4611686018427387900 ; 3 uses
  %i.cls = shl i64 %n.vec1021, 3                  ; 2 uses
  %i.clt = getelementptr i8, ptr %i.clj, i64 %i.cls ; 2 uses
  %i.clu = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 %i.cls
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %vector.ph1019
  %index1023 = phi i64 [ 0, %vector.ph1019 ], [ %index.next1028, %vector.body1022 ] ; 2 uses
  %i.clv = shl i64 %index1023, 3                  ; 2 uses
  %next.gep1024 = getelementptr i8, ptr %i.clj, i64 %i.clv ; 2 uses
  %next.gep1025 = getelementptr i8, ptr %.sroa.0240.1321.i.i, i64 %i.clv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.clw = getelementptr i8, ptr %next.gep1025, i64 16
  %wide.load1026 = load <2 x i64>, ptr %next.gep1025, align 8, !tbaa !624, !alias.scope !669, !noalias !664
  %wide.load1027 = load <2 x i64>, ptr %i.clw, align 8, !tbaa !624, !alias.scope !669, !noalias !664
  %i.clx = getelementptr i8, ptr %next.gep1024, i64 16
  store <2 x i64> %wide.load1026, ptr %next.gep1024, align 8, !tbaa !624, !alias.scope !672, !noalias !669
  store <2 x i64> %wide.load1027, ptr %i.clx, align 8, !tbaa !624, !alias.scope !672, !noalias !669
  %i.cly = getelementptr i8, ptr %next.gep1025, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1025, align 8, !tbaa !624, !alias.scope !669, !noalias !664
  store <2 x ptr> splat (ptr null), ptr %i.cly, align 8, !tbaa !624, !alias.scope !669, !noalias !664
  %index.next1028 = add nuw i64 %index1023, 4     ; 2 uses
  %i.clz = icmp eq i64 %index.next1028, %n.vec1021
  br i1 %i.clz, label %middle.block1029, label %vector.body1022, !llvm.loop !674

middle.block1029:                                 ; preds = %vector.body1022
  %cmp.n1030 = icmp eq i64 %i.clo, %n.vec1021
  br i1 %cmp.n1030, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i, label %.lr.ph.i.i.i.i197.i.i.preheader1060

.lr.ph.i.i.i.i197.i.i.preheader1060:              ; preds = %vector.memcheck1014, %.lr.ph.i.i.i.i197.i.i.preheader, %middle.block1029
  %.012.i.i.i.i198.i.i.ph = phi ptr [ %i.clj, %vector.memcheck1014 ], [ %i.clj, %.lr.ph.i.i.i.i197.i.i.preheader ], [ %i.clt, %middle.block1029 ]
  %.0911.i.i.i.i199.i.i.ph = phi ptr [ %.sroa.0240.1321.i.i, %vector.memcheck1014 ], [ %.sroa.0240.1321.i.i, %.lr.ph.i.i.i.i197.i.i.preheader ], [ %i.clu, %middle.block1029 ]
  br label %.lr.ph.i.i.i.i197.i.i

.lr.ph.i.i.i.i197.i.i:                            ; preds = %.lr.ph.i.i.i.i197.i.i.preheader1060, %.lr.ph.i.i.i.i197.i.i
  %.012.i.i.i.i198.i.i = phi ptr [ %i.cmc, %.lr.ph.i.i.i.i197.i.i ], [ %.012.i.i.i.i198.i.i.ph, %.lr.ph.i.i.i.i197.i.i.preheader1060 ] ; 2 uses
  %.0911.i.i.i.i199.i.i = phi ptr [ %i.cmb, %.lr.ph.i.i.i.i197.i.i ], [ %.0911.i.i.i.i199.i.i.ph, %.lr.ph.i.i.i.i197.i.i.preheader1060 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.cma = load i64, ptr %.0911.i.i.i.i199.i.i, align 8, !tbaa !624, !alias.scope !667, !noalias !664
  store i64 %i.cma, ptr %.012.i.i.i.i198.i.i, align 8, !tbaa !624, !alias.scope !664, !noalias !667
  store ptr null, ptr %.0911.i.i.i.i199.i.i, align 8, !tbaa !624, !alias.scope !667, !noalias !664
  %i.cmb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i199.i.i, i64 8 ; 2 uses
  %i.cmc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i198.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i200.i.i = icmp eq ptr %i.cmb, %.sroa.14.1320.i.i
  br i1 %.not.i.i.i.i200.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i, label %.lr.ph.i.i.i.i197.i.i, !llvm.loop !675

_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i: ; preds = %.lr.ph.i.i.i.i197.i.i, %middle.block1029, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i193.i.i
  %.0.lcssa.i.i.i.i202.i.i = phi ptr [ %i.clj, %_ZNKSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i193.i.i ], [ %i.clt, %middle.block1029 ], [ %i.cmc, %.lr.ph.i.i.i.i197.i.i ]
  %i.cmd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i202.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0240.1321.i.i, i64 noundef %i.cld) #25
  %i.cme = getelementptr inbounds nuw [8 x i8], ptr %i.clj, i64 %119
  br label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i

_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i: ; preds = %bb.pk, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i, %bb.px, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i, %bb.pj, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i
  %.sroa.28.2.i.i = phi ptr [ %.sroa.28.1319.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.28.8270.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %.sroa.28.1319.i.i, %bb.px ], [ %.sroa.28.1319.i.i, %bb.pj ], [ %i.cme, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.28.1319.i.i, %bb.pk ] ; 2 uses
  %.sroa.14.2.i.i = phi ptr [ %.sroa.14.1320.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.14.8271.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %i.cla, %bb.px ], [ %.sroa.14.1320.i.i, %bb.pj ], [ %i.cmd, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.14.1320.i.i, %bb.pk ] ; 2 uses
  %.sroa.0240.2.i.i = phi ptr [ %.sroa.0240.1321.i.i, %_ZN4llvh11SmallStringILj64EEC2ENS_9StringRefE.exit104.i.i ], [ %.sroa.0240.8272.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit114.i.i ], [ %.sroa.0240.1321.i.i, %bb.px ], [ %.sroa.0240.1321.i.i, %bb.pj ], [ %i.clj, %_ZNSt6vectorISt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit211.i.i ], [ %.sroa.0240.1321.i.i, %bb.pk ] ; 2 uses
  %i.cmf = load ptr, ptr %13, align 8, !tbaa !636, !noalias !676 ; 2 uses
  %i.cmg = load i32, ptr %i.cge, align 8, !tbaa !639, !noalias !676 ; 7 uses
  %i.cmh = icmp eq i32 %i.cmg, 0
  br i1 %i.cmh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i.i, label %bb.qa

bb.qa:                                            ; preds = %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i
  %i.cmi = load i32, ptr %.sroa.0233.0318.i.i, align 8, !tbaa !3, !noalias !681 ; 3 uses
  %i.cmj = mul i32 %i.cmi, 37
  %i.cmk = add i32 %i.cmg, -1                     ; 2 uses
  %.02744.i.i.i212.i.i = and i32 %i.cmj, %i.cmk   ; 2 uses
  %i.cml = zext i32 %.02744.i.i.i212.i.i to i64
  %i.cmm = getelementptr inbounds nuw [4 x i8], ptr %i.cmf, i64 %i.cml ; 2 uses
  %i.cmn = load i32, ptr %i.cmm, align 4, !tbaa !3, !noalias !681 ; 2 uses
  %i.cmo = icmp eq i32 %i.cmi, %i.cmn
  br i1 %i.cmo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i, label %.lr.ph.i.i.i213.i.i, !prof !640

.lr.ph.i.i.i213.i.i:                              ; preds = %bb.qa, %bb.qc
  %i.cmp = phi i32 [ %i.cmz, %bb.qc ], [ %i.cmn, %bb.qa ] ; 2 uses
  %i.cmq = phi ptr [ %i.cmy, %bb.qc ], [ %i.cmm, %bb.qa ] ; 2 uses
  %.02747.i.i.i214.i.i = phi i32 [ %.027.i.i.i216.i.i, %bb.qc ], [ %.02744.i.i.i212.i.i, %bb.qa ]
  %.02546.i.i.i215.i.i = phi i32 [ %i.cmv, %bb.qc ], [ 1, %bb.qa ] ; 2 uses
  %.02945.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.qc ], [ null, %bb.qa ] ; 4 uses
  %i.cmr = icmp eq i32 %i.cmp, -1
  br i1 %i.cmr, label %bb.qb, label %bb.qc, !prof !65

bb.qb:                                            ; preds = %.lr.ph.i.i.i213.i.i
  %.not.i.i.i217.i.i = icmp eq ptr %.02945.i.i.i.i.i, null
  %i.cms = select i1 %.not.i.i.i217.i.i, ptr %i.cmq, ptr %.02945.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i.i

bb.qc:                                            ; preds = %.lr.ph.i.i.i213.i.i
  %i.cmt = icmp eq i32 %i.cmp, -2
  %i.cmu = icmp eq ptr %.02945.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i = select i1 %i.cmt, i1 %i.cmu, i1 false
  %spec.select.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i, ptr %i.cmq, ptr %.02945.i.i.i.i.i
  %i.cmv = add i32 %.02546.i.i.i215.i.i, 1
  %i.cmw = add i32 %.02546.i.i.i215.i.i, %.02747.i.i.i214.i.i
  %.027.i.i.i216.i.i = and i32 %i.cmw, %i.cmk     ; 2 uses
  %i.cmx = zext i32 %.027.i.i.i216.i.i to i64
  %i.cmy = getelementptr inbounds nuw [4 x i8], ptr %i.cmf, i64 %i.cmx ; 2 uses
  %i.cmz = load i32, ptr %i.cmy, align 4, !tbaa !3, !noalias !681 ; 2 uses
  %i.cna = icmp eq i32 %i.cmi, %i.cmz
  br i1 %i.cna, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i, label %.lr.ph.i.i.i213.i.i, !prof !641, !llvm.loop !642

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i.i: ; preds = %bb.qb, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i
  %.sink.i.i.i.i143.i = phi ptr [ %i.cms, %bb.qb ], [ null, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ]
  %i.cnb = load i32, ptr %i.cgk, align 8, !tbaa !682, !noalias !676 ; 3 uses
  %i.cnc = shl i32 %i.cnb, 2
  %i.cnd = add i32 %i.cnc, 4
  %i.cne = mul i32 %i.cmg, 3
  %.not.i.i4.i.i.i = icmp ult i32 %i.cnd, %i.cne
  br i1 %.not.i.i4.i.i.i, label %bb.qe, label %bb.qd, !prof !65

bb.qd:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i.i
  %i.cnf = shl i32 %i.cmg, 1
  br label %.sink.split.i.i.i.i.i

bb.qe:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i.i
  %i.cng = load i32, ptr %i.cgl, align 4, !tbaa !683, !noalias !676
  %.neg.i.i.i.i.i = xor i32 %i.cnb, -1
  %.neg11.i.i.i.i.i = add i32 %i.cmg, %.neg.i.i.i.i.i
  %i.cnh = sub i32 %.neg11.i.i.i.i.i, %i.cng
  %i.cni = lshr i32 %i.cmg, 3
  %.not9.i.i.i.i.i = icmp ugt i32 %i.cnh, %i.cni
  br i1 %.not9.i.i.i.i.i, label %bb.qi, label %.sink.split.i.i.i.i.i, !prof !65

.sink.split.i.i.i.i.i:                            ; preds = %bb.qe, %bb.qd
  %.sink.i.i5.i.i.i = phi i32 [ %i.cnf, %bb.qd ], [ %i.cmg, %bb.qe ]
  call void @_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %.sink.i.i5.i.i.i), !noalias !681
  %i.cnj = load ptr, ptr %13, align 8, !tbaa !636, !noalias !676 ; 2 uses
  %i.cnk = load i32, ptr %i.cge, align 8, !tbaa !639, !noalias !676 ; 2 uses
  %i.cnl = icmp eq i32 %i.cnk, 0
  br i1 %i.cnl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i, label %bb.qf

bb.qf:                                            ; preds = %.sink.split.i.i.i.i.i
  %i.cnm = load i32, ptr %.sroa.0233.0318.i.i, align 8, !tbaa !3, !noalias !681 ; 3 uses
  %i.cnn = mul i32 %i.cnm, 37
  %i.cno = add i32 %i.cnk, -1                     ; 2 uses
  %.02744.i.i.i.i = and i32 %i.cnn, %i.cno        ; 2 uses
  %i.cnp = zext i32 %.02744.i.i.i.i to i64
  %i.cnq = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %i.cnp ; 3 uses
  %i.cnr = load i32, ptr %i.cnq, align 4, !tbaa !3, !noalias !681 ; 2 uses
  %i.cns = icmp eq i32 %i.cnm, %i.cnr
  br i1 %i.cns, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i, label %.lr.ph.i.i.i.i178, !prof !640

.lr.ph.i.i.i.i178:                                ; preds = %bb.qf, %bb.qh
  %i.cnt = phi i32 [ %i.cod, %bb.qh ], [ %i.cnr, %bb.qf ] ; 2 uses
  %i.cnu = phi ptr [ %i.coc, %bb.qh ], [ %i.cnq, %bb.qf ] ; 2 uses
  %.02747.i.i.i.i = phi i32 [ %.027.i.i.i.i, %bb.qh ], [ %.02744.i.i.i.i, %bb.qf ]
  %.02546.i.i.i.i = phi i32 [ %i.cnz, %bb.qh ], [ 1, %bb.qf ] ; 2 uses
  %.02945.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.qh ], [ null, %bb.qf ] ; 4 uses
  %i.cnv = icmp eq i32 %i.cnt, -1
  br i1 %i.cnv, label %bb.qg, label %bb.qh, !prof !65

bb.qg:                                            ; preds = %.lr.ph.i.i.i.i178
  %.not.i.i218.i.i = icmp eq ptr %.02945.i.i.i.i, null
  %i.cnw = select i1 %.not.i.i218.i.i, ptr %i.cnu, ptr %.02945.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i

bb.qh:                                            ; preds = %.lr.ph.i.i.i.i178
  %i.cnx = icmp eq i32 %i.cnt, -2
  %i.cny = icmp eq ptr %.02945.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.cnx, i1 %i.cny, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.cnu, ptr %.02945.i.i.i.i
  %i.cnz = add i32 %.02546.i.i.i.i, 1
  %i.coa = add i32 %.02546.i.i.i.i, %.02747.i.i.i.i
  %.027.i.i.i.i = and i32 %i.coa, %i.cno          ; 2 uses
  %i.cob = zext i32 %.027.i.i.i.i to i64
  %i.coc = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %i.cob ; 3 uses
  %i.cod = load i32, ptr %i.coc, align 4, !tbaa !3, !noalias !681 ; 2 uses
  %i.coe = icmp eq i32 %i.cnm, %i.cod
  br i1 %i.coe, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i, label %.lr.ph.i.i.i.i178, !prof !641, !llvm.loop !642

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i: ; preds = %bb.qh, %bb.qg, %bb.qf, %.sink.split.i.i.i.i.i
  %.sink.i.i.i.i179 = phi ptr [ %i.cnw, %bb.qg ], [ null, %.sink.split.i.i.i.i.i ], [ %i.cnq, %bb.qf ], [ %i.coc, %bb.qh ]
  %.pre.i.i.i.i180 = load i32, ptr %i.cgk, align 8, !tbaa !682, !noalias !676
  br label %bb.qi

bb.qi:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i, %bb.qe
  %i.cof = phi ptr [ %.sink.i.i.i.i179, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i ], [ %.sink.i.i.i.i143.i, %bb.qe ] ; 2 uses
  %i.cog = phi i32 [ %.pre.i.i.i.i180, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i.i ], [ %i.cnb, %bb.qe ]
  %i.coh = add i32 %i.cog, 1
  store i32 %i.coh, ptr %i.cgk, align 8, !tbaa !682, !noalias !676
  %i.coi = load i32, ptr %i.cof, align 4, !tbaa !3, !noalias !681
  %i.coj = icmp eq i32 %i.coi, -1
  br i1 %i.coj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16InsertIntoBucketIRKjJRS3_EEEPS7_SE_OT_DpOT0_.exit.i.i.i, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.cok = load i32, ptr %i.cgl, align 4, !tbaa !683, !noalias !676
  %i.col = add i32 %i.cok, -1
  store i32 %i.col, ptr %i.cgl, align 4, !tbaa !683, !noalias !676
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16InsertIntoBucketIRKjJRS3_EEEPS7_SE_OT_DpOT0_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16InsertIntoBucketIRKjJRS3_EEEPS7_SE_OT_DpOT0_.exit.i.i.i: ; preds = %bb.qj, %bb.qi
  %i.com = load i32, ptr %.sroa.0233.0318.i.i, align 8, !tbaa !3, !noalias !681
  store i32 %i.com, ptr %i.cof, align 4, !tbaa !3, !noalias !681
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i: ; preds = %bb.qc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E16InsertIntoBucketIRKjJRS3_EEEPS7_SE_OT_DpOT0_.exit.i.i.i, %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !573
  %i.con = load ptr, ptr %2, align 8, !tbaa !53, !noalias !573
  %i.coo = load i32, ptr %i.cdi, align 8, !tbaa !55, !noalias !573
  %i.cop = zext i32 %i.coo to i64
  store ptr %i.con, ptr %19, align 8, !noalias !573
  store i64 %i.cop, ptr %i.cgm, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !573
  store ptr @.str.333, ptr %20, align 8, !tbaa !333, !noalias !573
  store i64 2, ptr %i.cgn, align 8, !tbaa !334, !noalias !573
  call void @_ZN4llvh3sys4path19replace_path_prefixERNS_15SmallVectorImplIcEERKNS_9StringRefES7_NS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !573
  %i.coq = load i64, ptr %i.cgs, align 8, !tbaa !227
  store i64 %i.coq, ptr %21, align 8, !tbaa !227, !noalias !573
  store ptr null, ptr %i.cgs, align 8, !tbaa !227
  store ptr null, ptr %22, align 8, !tbaa !621, !noalias !573
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false), !noalias !573
  %i.cor = call fastcc noundef ptr @_ZN12_GLOBAL__N_17parseJSERSt10shared_ptrIN6hermes7ContextEERNS1_3sem10SemContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteISA_EES8_INS1_9SourceMapESB_ISE_EES0_INS1_19SourceMapTranslatorEEb(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef %21, ptr noundef %22, ptr noundef %23, i1 noundef zeroext true) ; 2 uses
  %i.cos = load ptr, ptr %22, align 8, !tbaa !624, !noalias !573 ; 3 uses
  %.not.i127.i.i = icmp eq ptr %i.cos, null
  br i1 %.not.i127.i.i, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit129.i.i, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i128.i.i

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i128.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cos) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.cos, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit129.i.i

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit129.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i128.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbERKjDpOT_.exit.i.i
  %i.cot = load ptr, ptr %21, align 8, !tbaa !227, !noalias !573 ; 3 uses
  %.not.i130.i.i = icmp eq ptr %i.cot, null
  br i1 %.not.i130.i.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit132.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i131.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i131.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit129.i.i
  %i.cou = load ptr, ptr %i.cot, align 8, !tbaa !7
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 8
  %i.cow = load ptr, ptr %i.cov, align 8
  call void %i.cow(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cot) #26, !inline_history !625
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit132.i.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit132.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i131.i.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit129.i.i
  %.not69.i.i = icmp eq ptr %i.cor, null          ; 2 uses
  %brmerge.i.i = or i1 %i.cds, %.not69.i.i
  %.mux.i.i = select i1 %.not69.i.i, i32 1, i32 5
  br i1 %brmerge.i.i, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit132.i.i
  %i.cox = load i32, ptr %.sroa.0233.0318.i.i, align 8, !tbaa !280
  %i.coy = load ptr, ptr %14, align 8, !tbaa !53, !noalias !573
  %i.coz = load i32, ptr %i.cgc, align 8, !tbaa !55, !noalias !573
  %i.cpa = zext i32 %i.coz to i64
  %i.cpb = call { ptr, i64 } @_ZN4llvh3sys4path23remove_leading_dotslashENS_9StringRefENS1_5StyleE(ptr %i.coy, i64 %i.cpa, i32 noundef 2) #26 ; 2 uses
  %i.cpc = extractvalue { ptr, i64 } %i.cpb, 0
  %i.cpd = extractvalue { ptr, i64 } %i.cpb, 1
  call void @_ZN6hermes22generateIRForCJSModuleEPNS_6ESTree22FunctionExpressionNodeEjjN4llvh9StringRefEPNS_6ModuleEPNS_8FunctionERKSt6vectorIPNS0_11ProgramNodeESaISB_EE(ptr noundef nonnull %i.cor, i32 noundef %i.cgp, i32 noundef %i.cox, ptr %i.cpc, i64 %i.cpd, ptr noundef nonnull align 8 dereferenceable(1033) %34, ptr noundef %i.cga, ptr noundef nonnull align 8 dereferenceable(24) %27) #26
  br label %bb.ql
end_hunk_1
begin_hunk_2_@_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev:bb.a
  br i1 %.not4.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph
  %i.j = zext i32 %i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i ], [ %i.k, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !496  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !496
  tail call void %i.o(ptr noundef nonnull %i.n) #26, !inline_history !757
  br label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i:    ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.l
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !758

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !53
  br label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %.lr.ph
  %i.p = phi ptr [ %.pre.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  tail call void @free(ptr noundef %i.p) #26
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit

_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #25
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !759

._crit_edge:                                      ; preds = %_ZN6hermes28BacktrackingBumpPtrAllocator8popScopeEv.exit, %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !224    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !222 ; 2 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i1, label %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 262144) #25
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes28BacktrackingBumpPtrAllocator4SlabEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !760

_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %._crit_edge
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.s, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !226
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4llvh2cl14OptionCategory16registerCategoryEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !155
  store i8 0, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = call noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.e, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !178
  %i.k = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !155  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.l, ptr %i.a, align 8, !tbaa !58
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !18
  %i.o = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.o, ptr %i.j, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !23
  store i8 %i.q, ptr %i.p, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !155
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.f, align 8, !tbaa !17
  br label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit

_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.y, align 8, !tbaa !431
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !386 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit
  store i32 %1, ptr %i.ab, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !386
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.i:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE8addValueIS7_EEvRKT_.exit
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !9   ; 4 uses
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %7 = icmp ult i64 %i.al, %i.ak
  %i.am = call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %8 = select i1 %7, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %8, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %8, 2
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #28 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ai ; 2 uses
  store i32 %1, ptr %i.ap, align 4, !tbaa !3
  %i.aq = icmp sgt i64 %i.ai, 0
  br i1 %i.aq, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !9
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !386
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %8
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !13
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.h, %bb.a
  %i.at = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.av = load i64, ptr %i.b, align 8, !tbaa !23
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvh2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(145)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !761
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25, !inline_history !761
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25, !inline_history !761
  br label %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i

_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i
  tail call void @free(ptr noundef %i.z) #26, !inline_history !761
  br label %_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit

_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev.exit: ; preds = %_ZN4llvh2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZN4llvh2cl6Option13addOccurrenceEjNS_9StringRefES2_b(ptr noundef nonnull align 8 dereferenceable(145), i32 noundef, ptr, i64, ptr, i64, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat align 2 {
end_hunk_2
begin_hunk_3_@_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_:bb.a
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %4, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !58, !noalias !762 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !155, !alias.scope !762
  %i.k = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !762
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !762
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !18     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %7, align 8, !tbaa !18     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !155  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %7, %6
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !383

bb.h:                                             ; preds = %bb.g
  switch i64 %i.t, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %i.p, align 1, !tbaa !23
  store i8 %i.v, ptr %i.m, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.w = load i64, ptr %i.s, align 8, !tbaa !155  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !155
  %i.y = load ptr, ptr %6, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.p, ptr %6, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !23
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !23
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !23
  store ptr %i.p, ptr %6, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !23
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !23
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %7, align 8, !tbaa !18
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ah = phi ptr [ %i.m, %bb.k ], [ %i.q, %bb.l ], [ %i.p, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !155
  store i8 0, ptr %i.ah, align 1, !tbaa !23
  %i.aj = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh9StringRef3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !333    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !178
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !155
  store i8 0, ptr %i.c, align 8, !tbaa !23
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !334  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !58
  %i.h = icmp ugt i64 %i.f, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !18
  %i.j = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.j, ptr %i.g, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !23
  store i8 %i.l, ptr %i.k, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.b, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !155
  %i.o = load ptr, ptr %0, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %4, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !178
  %i.s = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !155  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.u, ptr %i.a, align 8, !tbaa !58
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !18
  %i.x = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.x, ptr %i.r, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %bb.d ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !23
  store i8 %i.z, ptr %i.y, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !155
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !178, !alias.scope !765, !noalias !768
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !768, !noalias !765 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155, !alias.scope !768, !noalias !765 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !770
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !765, !noalias !768
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !23, !alias.scope !768, !noalias !765
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !23, !alias.scope !765, !noalias !768
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !155, !alias.scope !768, !noalias !765
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !155, !alias.scope !765, !noalias !768
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !768, !noalias !765
  store i64 0, ptr %i.ao, align 8, !tbaa !155, !alias.scope !768, !noalias !765
  store i8 0, ptr %i.ag, align 8, !tbaa !23, !alias.scope !768, !noalias !765
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !178, !alias.scope !772, !noalias !775
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !775, !noalias !772 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.h:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !155, !alias.scope !775, !noalias !772 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !777
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !772, !noalias !775
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !23, !alias.scope !775, !noalias !772
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !23, !alias.scope !772, !noalias !775
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !155, !alias.scope !775, !noalias !772
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !155, !alias.scope !772, !noalias !775
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !775, !noalias !772
  store i64 0, ptr %i.bd, align 8, !tbaa !155, !alias.scope !775, !noalias !772
  store i8 0, ptr %i.av, align 8, !tbaa !23, !alias.scope !775, !noalias !772
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %4
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #6

declare void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN2cl8OptLevelEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_2cl6parserIN2cl8OptLevelEE10OptionInfoELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE16handleOccurrenceEjNS_9StringRefES7_(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = call noundef zeroext i1 @_ZN4llvh2cl6parserIN2cl8OptLevelEE5parseERNS0_6OptionENS_9StringRefES7_RS3_(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.a, align 4, !tbaa !63
  store i32 %i.e, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !431
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %.not.i = icmp eq i64 %i.d, 0
  %..i = select i1 %.not.i, i32 3, i32 2
  ret i32 %..i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN2cl8OptLevelEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #26, !inline_history !778
  br label %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i

_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i:    ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i
  tail call void @free(ptr noundef %i.h) #26, !inline_history !779
  br label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit

_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEED2Ev.exit: ; preds = %_ZN4llvh2cl6parserIN2cl8OptLevelEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 592) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i64 @_ZNK4llvh2cl19generic_parser_base14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZNK4llvh2cl19generic_parser_base15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvh::cl::OptionValue", align 8 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 2 uses
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !64, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, %.pre
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN2cl8OptLevelEEE, i64 16), ptr %3, align 8, !tbaa !7
  store i8 1, ptr %i.j, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.pre, ptr %i.k, align 8, !tbaa !50
  call void @_ZNK4llvh2cl19generic_parser_base22printGenericOptionDiffERKNS0_6OptionERKNS0_18GenericOptionValueES7_m(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.b = load i8, ptr %i.a, align 4, !tbaa !64, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.f, ptr %i.d, align 8, !tbaa !43
  br label %_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit

_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE14setDefaultImplIS3_vEEvv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optIN2cl8OptLevelELb0ENS0_6parserIS3_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %bb.b, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !780 ; 2 uses
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN4llvh2cl6parserIN6hermes16LocationDumpModeEE5parseERNS0_6OptionENS_9StringRefES7_RS3_:bb.a
  %spec.select = select i1 %.not20, ptr %2, ptr %4 ; 2 uses
  %spec.select35 = select i1 %.not20, i64 %3, i64 %5
  %.sroa.2.0.copyload.fr = freeze i64 %spec.select35 ; 4 uses
  store ptr %spec.select, ptr %7, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.fr, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %_ZN4llvhplERKNS_5TwineES2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %i.k = icmp eq i64 %.sroa.2.0.copyload.fr, 0
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us
  %.01522.us = phi i64 [ %i.n, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.01522.us
  %.sroa.22.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.22.0.copyload.us = load i64, ptr %.sroa.22.0..sroa_idx.us, align 8, !tbaa !58
  %i.m = icmp eq i64 %.sroa.22.0.copyload.us, 0
  br i1 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread18, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us:    ; preds = %.lr.ph.split.us
  %i.n = add nuw nsw i64 %.01522.us, 1            ; 2 uses
  %.not.us = icmp eq i64 %i.n, %i.h
  br i1 %.not.us, label %_ZN4llvhplERKNS_5TwineES2_.exit, label %.lr.ph.split.us, !llvm.loop !845

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  %.01522 = phi i64 [ %i.v, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.01522 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !58
  %i.p = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload.fr
  br i1 %i.p, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %.lr.ph.split
  %.sroa.01.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !57
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %spec.select, i64 %.sroa.2.0.copyload.fr)
  %i.q = icmp eq i32 %bcmp, 0
  br i1 %i.q, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread18, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread18:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %.lr.ph.split.us
  %i.r = phi i64 [ %.01522.us, %.lr.ph.split.us ], [ %.01522, %_ZNK4llvh9StringRef6equalsES0_.exit ]
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 4, !tbaa !840
  store i32 %i.u, ptr %6, align 4, !tbaa !840
  br label %bb.b

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %.lr.ph.split, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.v = add nuw nsw i64 %.01522, 1               ; 2 uses
  %.not = icmp eq i64 %i.v, %i.h
  br i1 %.not, label %_ZN4llvhplERKNS_5TwineES2_.exit, label %.lr.ph.split, !llvm.loop !845

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 3, ptr %i.w, align 8, !tbaa !105, !alias.scope !846
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 5, ptr %i.x, align 1, !tbaa !102, !alias.scope !846
  store ptr @.str.257, ptr %9, align 8, !tbaa !23, !alias.scope !846
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.y, align 8, !tbaa !23, !alias.scope !846
  store ptr %9, ptr %8, align 8, !tbaa !23, !alias.scope !849
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.258, ptr %i.z, align 8, !tbaa !23, !alias.scope !849
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 2, ptr %i.aa, align 8, !tbaa !105, !alias.scope !849
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 3, ptr %i.ab, align 1, !tbaa !102, !alias.scope !849
  %i.ac = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26
  %i.ad = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(18) %8, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.ac) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread18, %_ZN4llvhplERKNS_5TwineES2_.exit
  %.1 = phi i1 [ %i.ad, %_ZN4llvhplERKNS_5TwineES2_.exit ], [ false, %_ZNK4llvh9StringRef6equalsES0_.exit.thread18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIN6hermes16LocationDumpModeEE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !843, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !843, !range !179, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp ne i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !161, !range !179, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !161, !range !179, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !179
  %i.j = load i8, ptr %i.d, align 8, !range !179
  %i.k = icmp ne i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #6

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN6hermes7WarningEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorINS_2cl6parserIN6hermes7WarningEE10OptionInfoELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZN4llvh11SmallVectorINS_2cl6parserIN6hermes7WarningEE10OptionInfoELj8EED2Ev.exit

_ZN4llvh11SmallVectorINS_2cl6parserIN6hermes7WarningEE10OptionInfoELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE16handleOccurrenceEjNS_9StringRefES7_(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !497
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = call noundef zeroext i1 @_ZN4llvh2cl6parserIN6hermes7WarningEE5parseERNS0_6OptionENS_9StringRefES7_RS3_(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.c, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !854  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !497
  store i32 %i.i, ptr %i.f, align 4, !tbaa !497
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.j, ptr %i.e, align 8, !tbaa !854
  br label %_ZN4llvh2cl12list_storageIN6hermes7WarningEbE8addValueIS3_EEvRKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !170  ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIN6hermes7WarningESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIN6hermes7WarningESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %6 = icmp ult i64 %i.q, %i.p
  %i.r = call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %7 = select i1 %6, i64 2305843009213693951, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %7, 2
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !497
  store i32 %i.v, ptr %i.u, align 4, !tbaa !497
  %i.w = icmp sgt i64 %i.n, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIN6hermes7WarningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6hermes7WarningESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6hermes7WarningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6hermes7WarningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6hermes7WarningESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes7WarningESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes7WarningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIN6hermes7WarningESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes7WarningESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6hermes7WarningESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.t, ptr %i.d, align 8, !tbaa !170
  store ptr %i.x, ptr %i.e, align 8, !tbaa !854
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %7
  store ptr %i.y, ptr %i.g, align 8, !tbaa !172
  br label %_ZN4llvh2cl12list_storageIN6hermes7WarningEbE8addValueIS3_EEvRKT_.exit

_ZN4llvh2cl12list_storageIN6hermes7WarningEbE8addValueIS3_EEvRKT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6hermes7WarningESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.z, align 8, !tbaa !431
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !386 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh2cl12list_storageIN6hermes7WarningEbE8addValueIS3_EEvRKT_.exit
  store i32 %1, ptr %i.ac, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !386
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.i:                                             ; preds = %_ZN4llvh2cl12list_storageIN6hermes7WarningEbE8addValueIS3_EEvRKT_.exit
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !9  ; 4 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %8 = icmp ult i64 %i.am, %i.al
  %i.an = call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %9 = select i1 %8, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %9, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %9, 2
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #28 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store i32 %1, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !9
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !386
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %9
  store ptr %i.at, ptr %i.ad, align 8, !tbaa !13
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334
  %.not.i = icmp eq i64 %i.d, 0
  %..i = select i1 %.not.i, i32 3, i32 2
  ret i32 %..i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN6hermes7WarningEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #26, !inline_history !855
  br label %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit.i

_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25, !inline_history !856
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c, %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh2cl12list_storageIN6hermes7WarningEbED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25, !inline_history !856
  br label %_ZN4llvh2cl12list_storageIN6hermes7WarningEbED2Ev.exit.i

_ZN4llvh2cl12list_storageIN6hermes7WarningEbED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh2cl12list_storageIN6hermes7WarningEbED2Ev.exit.i
  tail call void @free(ptr noundef %i.v) #26, !inline_history !856
  br label %_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEED2Ev.exit

_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEED2Ev.exit: ; preds = %_ZN4llvh2cl12list_storageIN6hermes7WarningEbED2Ev.exit.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 616) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call noundef i64 @_ZNK4llvh2cl19generic_parser_base14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #26
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNK4llvh2cl19generic_parser_base15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl4listIN6hermes7WarningEbNS0_6parserIS3_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66, !nonnull !61, !align !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %bb.b, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !780 ; 2 uses
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, %.lr.ph.i
  %.07.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aa, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i ] ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call { ptr, i64 } %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %.07.i) #26, !inline_history !780 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = load i32, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %i.t = load i32, ptr %i.k, align 4, !tbaa !56
  %.not.i.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 16) #26
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i: ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %.pre.i.i, %bb.d ], [ %i.s, %bb.c ]
  %i.v = load ptr, ptr %1, align 8, !tbaa !53
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  store ptr %i.q, ptr %i.x, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.y = load i32, ptr %i.j, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.j, align 8, !tbaa !55
  %i.aa = add nuw i32 %.07.i, 1                   ; 2 uses
  %.not.i = icmp eq i32 %i.aa, %i.i
  br i1 %.not.i, label %_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit, label %bb.c, !llvm.loop !781

_ZN4llvh2cl19generic_parser_base19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl6parserIN6hermes7WarningEED0Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN6hermes7WarningEEE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #26, !inline_history !169
  br label %_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit

_ZN4llvh2cl6parserIN6hermes7WarningEED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 416) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl6parserIN6hermes7WarningEE13getNumOptionsEv(ptr noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  ret i32 %i.b
}
end_hunk_4
begin_hunk_5_@_ZN6hermes7ContextD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !912
  tail call void @_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !913  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  tail call void @_ZN6hermes14CompiledRegExpD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.e) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 240) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1057

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes14CompiledRegExpD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit
  %.05 = phi ptr [ %i.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds i8, ptr %.05, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1058 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1060 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre1.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1063 ; 3 uses
  br i1 %i.e, label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = zext i32 %i.d to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.f, 80
  %i.g = getelementptr inbounds nuw i8, ptr %.pre1.i.i.i.i, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.w, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i ], [ %.pre1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.h = load ptr, ptr %.010.i.i.i.i.i, align 8, !tbaa !1064
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.n, 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -24
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.q) #26
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.p
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1066

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 40
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.t) #26
  br label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i

_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1067

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i: ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1063
  br label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i ], [ %.pre1.i.i.i.i, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.x) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #25
  br label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1068

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

declare noundef i32 @_ZN4llvh3sys7Process18StandardErrColumnsEv() local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare { ptr, i64 } @_ZN4llvh4SHA15finalEv(ptr noundef nonnull align 4 dereferenceable(112)) local_unnamed_addr #6

declare void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.173") align 8, ptr, i64, ptr, i64, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_120loadGlobalDefinitionERN6hermes7ContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS5_EERSt6vectorIPNS0_6ESTree11ProgramNodeESaISC_EE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.hermes::parser::JSParser", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.173", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load i64, ptr %1, align 8, !tbaa !227
  store i64 %i.a, ptr %4, align 8, !tbaa !227
  store ptr null, ptr %1, align 8, !tbaa !227
  call void @_ZN6hermes6parser8JSParserC1ERNS_7ContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %4) #26
  %i.b = load ptr, ptr %4, align 8, !tbaa !227    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26, !inline_history !343
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  %i.f = call { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #26 ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.f, 0         ; 2 uses
  %i.h = extractvalue { i64, i8 } %i.f, 1
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE9push_backERKS3_.exit

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  call void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1069 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !752
  %.not.i3 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %i.g to ptr
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1070
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !1069
  br label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !749    ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %5 = icmp ult i64 %i.v, %i.u
  %i.w = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %6 = select i1 %5, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %6, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %6, 3
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.s ; 2 uses
  %i.aa = inttoptr i64 %i.g to ptr
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !1070
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #25
  br label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !749
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !1069
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %6
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !752
  br label %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceMapGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1072 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !1074 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.o, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.g = load i32, ptr %.010.i.i, align 4, !tbaa !3
  %switch.i.i = icmp ugt i32 %i.g, -3
  br i1 %switch.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1075

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1074
  br label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i
  %i.p = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.p) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1076 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1079 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !690, !range !179, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !570  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !442
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !445
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !1080
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !1080
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, !prof !383

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.d, %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1081

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !1076
  br label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i ], [ %i.r, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1082
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #25
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !266
  tail call void @_ZdlPv(ptr noundef %i.ax) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !177, !noalias !1083
  store <2 x ptr> %i.bc, ptr %1, align 16, !tbaa !177
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load <2 x ptr>, ptr %i.az, align 8, !tbaa !496, !noalias !1083
  store <2 x ptr> %i.be, ptr %i.bd, align 16, !tbaa !496
  %i.bf = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !177, !noalias !1086
  store <2 x ptr> %i.bf, ptr %2, align 16, !tbaa !177
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !496, !noalias !1086
  store <2 x ptr> %i.bh, ptr %i.bg, align 16, !tbaa !496
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !591 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i1, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !901 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !902 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.l ] ; 3 uses
  %i.bp = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !177
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef 512) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.br = icmp ult ptr %.06.i.i.i.i, %i.bm
  br i1 %i.br, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !903

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !591
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.l
  %i.bs = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.bi, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !590
end_hunk_5
begin_hunk_6_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !155
  store ptr %i.i, ptr %i.f, align 8, !tbaa !18
  store i64 0, ptr %i.q, align 8, !tbaa !155
  store i8 0, ptr %i.i, align 8, !tbaa !23
  ret void
}

declare void @_ZNK6hermes18SourceMapGenerator12outputAsJSONERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS4_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1216 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %.pre1 = load ptr, ptr %0, align 8, !tbaa !1213 ; 3 uses
  br i1 %i.c, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %.pre1, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, %.lr.ph.preheader.i
  %.010.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i ], [ %.pre1, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i32, ptr %.010.i, align 4, !tbaa !3
  %switch.i = icmp ugt i32 %i.f, -3
  br i1 %switch.i, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !375  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.h) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 376) #25
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i, %bb.b, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.e
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !1225

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1213
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS5_EENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS8_EEEEjS8_SA_SD_E10destroyAllEv.exit.loopexit ], [ %.pre1, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.j) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes6ModuleD1Ev(ptr noundef nonnull align 8 dereferenceable(1033)) unnamed_addr #12

declare void @_ZN4llvh4SHA14initEv(ptr noundef nonnull align 4 dereferenceable(112)) local_unnamed_addr #6

declare void @_ZN4llvh4SHA16updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(112), ptr, i64) local_unnamed_addr #6

declare void @_ZN6hermes6parser8JSParserC1ERNS_7ContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(656), ptr noundef) unnamed_addr #6

declare { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare void @_ZN4llvh14FoldingSetBase6anchorEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %4, i64 noundef %i.b) #26
  %i.c = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralNumberEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1226
  tail call void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.b) #26
  %i.c = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.c
}

declare void @_ZN4llvh14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #6

declare void @_ZN4llvh16FoldingSetNodeID10AddIntegerEm(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.b) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %i.b) #26
  %i.c = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralBigIntEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1228
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %i.b) #26
  %i.c = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.c
}

declare void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE14GetNodeProfileEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %.sroa.0.0.copyload.i.i) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE10NodeEqualsEPNS_14FoldingSetBase4NodeERKNS_16FoldingSetNodeIDEjRS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(144) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %.sroa.0.0.copyload.i.i.i) #26
  %i.b = tail call noundef zeroext i1 @_ZNK4llvh16FoldingSetNodeIDeqERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh10FoldingSetIN6hermes13LiteralStringEE15ComputeNodeHashEPNS_14FoldingSetBase4NodeERNS_16FoldingSetNodeIDE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !1230
  tail call void @_ZN4llvh16FoldingSetNodeID10AddPointerEPKv(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %.sroa.0.0.copyload.i.i.i) #26
  %i.b = tail call noundef i32 @_ZNK4llvh16FoldingSetNodeID11ComputeHashEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #26
  ret i32 %i.b
}

declare void @_ZN4llvh3sys4path15remove_filenameERNS_15SmallVectorImplIcEENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh3sys4path19replace_path_prefixERNS_15SmallVectorImplIcEERKNS_9StringRefES7_NS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvh12MemoryBuffer16getMemBufferCopyENS_9StringRefERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.173") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #6

declare void @_ZN6hermes22generateIRForCJSModuleEPNS_6ESTree22FunctionExpressionNodeEjjN4llvh9StringRefEPNS_6ModuleEPNS_8FunctionERKSt6vectorIPNS0_11ProgramNodeESaISB_EE(ptr noundef, i32 noundef, i32 noundef, ptr, i64, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !178
  %i.r = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !155  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !18
  %i.y = load i64, ptr %i.s, align 8, !tbaa !23
  store i64 %i.y, ptr %i.q, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !155
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !155
  store ptr %i.s, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.aa, align 8, !tbaa !155
  store i8 0, ptr %i.s, align 8, !tbaa !23
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !178, !alias.scope !1231, !noalias !1234
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !1234, !noalias !1231 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !1236
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !1231, !noalias !1234
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !23, !alias.scope !1234, !noalias !1231
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !23, !alias.scope !1231, !noalias !1234
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !155, !alias.scope !1231, !noalias !1234
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !1234, !noalias !1231
  store i64 0, ptr %i.am, align 8, !tbaa !155, !alias.scope !1234, !noalias !1231
  store i8 0, ptr %i.ae, align 8, !tbaa !23, !alias.scope !1234, !noalias !1231
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !178, !alias.scope !1237, !noalias !1240
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !1240, !noalias !1237 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !1242
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !1237, !noalias !1240
  %i.az = load i64, ptr %i.at, align 8, !tbaa !23, !alias.scope !1240, !noalias !1237
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !23, !alias.scope !1237, !noalias !1240
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !155, !alias.scope !1237, !noalias !1240
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !1240, !noalias !1237
  store i64 0, ptr %i.bb, align 8, !tbaa !155, !alias.scope !1240, !noalias !1237
  store i8 0, ptr %i.at, align 8, !tbaa !23, !alias.scope !1240, !noalias !1237
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !771

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !639  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !636    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !639
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #30 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !636
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !682
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !683
  %i.w = load i32, ptr %i.a, align 8, !tbaa !639  ; 2 uses
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.y = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !682
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !683
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !639 ; 2 uses
  %.not5.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, %bb.f
  %i.ae = phi i32 [ %i.bb, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %.019.i = phi ptr [ %i.bc, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %i.af = load i32, ptr %.019.i, align 4, !tbaa !3 ; 5 uses
  %switch.i = icmp ugt i32 %i.af, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !639 ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = mul i32 %i.af, 37
  %i.aj = add i32 %i.ag, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.aj, %i.ai            ; 2 uses
  %i.ak = zext i32 %.02744.i.i.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ak ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = icmp eq i32 %i.af, %i.am
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !640

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.ao = phi i32 [ %i.ay, %bb.e ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = phi ptr [ %i.ax, %bb.e ], [ %i.al, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.au, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.ar = select i1 %.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = icmp eq i32 %i.ao, -2
  %i.at = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  %i.au = add i32 %.02546.i.i.i, 1
  %i.av = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.av, %i.aj              ; 2 uses
  %i.aw = zext i32 %.027.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aw ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp eq i32 %i.af, %i.ay
  br i1 %i.az, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !641, !llvm.loop !642

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.al, %bb.c ], [ %i.ax, %bb.e ]
  store i32 %i.af, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.ba = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.aa, align 8, !tbaa !682
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, %.lr.ph.i
  %i.bb = phi i32 [ %i.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i ], [ %i.ae, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i, !llvm.loop !1243

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.preheader.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1076 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1079 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !690, !range !179, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !570  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !442
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !445
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !1080
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !1080
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
end_hunk_6
