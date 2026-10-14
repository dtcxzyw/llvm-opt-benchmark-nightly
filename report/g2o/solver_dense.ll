Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILin1ELin1EEEE5solveEv:bb.a
  br i1 %niter546.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.i, !llvm.loop !964

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.i
  br i1 %lcmp.mod542.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, label %.lr.ph.i.i.i.i.i.i35.i.epil.preheader

.lr.ph.i.i.i.i.i.i35.i.epil.preheader:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.i.preheader
  %.01724.i.i.i.i.i.i36.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader ], [ %i.agp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.i37.i.epil.init = phi double [ %i.afx, %.lr.ph.i.i.i.i.i.i35.i.preheader ], [ %i.ago, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.agq = mul nsw i64 %.01724.i.i.i.i.i.i36.i.epil.init, %i.afm
  %i.agr = getelementptr [8 x i8], ptr %i.afu, i64 %i.agq
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !370
  %i.agt = mul nsw i64 %.01724.i.i.i.i.i.i36.i.epil.init, %i.afo
  %i.agu = getelementptr [8 x i8], ptr %i.afj, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !370
  %i.agw = fmul double %i.ags, %i.agv
  %i.agx = fadd double %.02223.i.i.i.i.i.i37.i.epil.init, %i.agw
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %.lr.ph.i.i.i.i.i.i35.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, %bb.as
  %.0.i.i.i.i34.i = phi double [ %i.afx, %bb.as ], [ %i.ago, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ], [ %i.agx, %.lr.ph.i.i.i.i.i.i35.i.epil.preheader ]
  %gep54.i = getelementptr [8 x i8], ptr %invariant.gep53.i, i64 %.051.i ; 2 uses
  %i.agy = load double, ptr %gep54.i, align 8, !tbaa !370
  %i.agz = fsub double %i.agy, %.0.i.i.i.i34.i
  store double %i.agz, ptr %gep54.i, align 8, !tbaa !370
  %i.aha = add nsw i64 %.051.i, 1                 ; 2 uses
  %i.ahb = icmp slt i64 %i.aha, %i.abe
  br i1 %i.ahb, label %bb.as, label %._crit_edge.i118, !llvm.loop !970

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !370
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS3_EENS_10DenseShapeES7_Li8EE13scaleAndAddToIS3_EEvRT_RS5_RKS6_RKd(ptr noundef nonnull align 8 dereferenceable(24) %i.aba, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc104 unwind label %bb.au

.noexc104:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit: ; preds = %._crit_edge.i118, %.noexc104, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.0159.0253, i64 16 ; 2 uses
  %i.ahd = load ptr, ptr %i.mu, align 8, !tbaa !460
  %.not223 = icmp eq ptr %i.ahc, %i.ahd
  br i1 %.not223, label %._crit_edge255, label %.lr.ph254, !llvm.loop !971

bb.au:                                            ; preds = %bb.at
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %.body115

._crit_edge255:                                   ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit
  %i.ahf = load ptr, ptr %6, align 8, !tbaa !358
  call void @free(ptr noundef %i.ahf) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0176.0257, i64 16 ; 2 uses
  %i.ahh = load ptr, ptr %i.mu, align 8, !tbaa !460
  %.not222 = icmp eq ptr %i.ahg, %i.ahh
  br i1 %.not222, label %._crit_edge260, label %.lr.ph259, !llvm.loop !972

.body115:                                         ; preds = %bb.an, %bb.au, %.loopexit, %.loopexit.split-lp
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ahe, %bb.au ], [ %i.aay, %bb.an ]
  %i.ahi = load ptr, ptr %6, align 8, !tbaa !358
  call void @free(ptr noundef %i.ahi) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.av

bb.av:                                            ; preds = %.body115, %.body
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn83.pn.pn.pn, %.body115 ]
  %i.ahj = load ptr, ptr %4, align 8, !tbaa !341
  call void @free(ptr noundef %i.ahj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %common.resume

._crit_edge267:                                   ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446, %middle.block461, %._crit_edge263
  %i.ahk = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 6 uses
  %.not81 = icmp eq ptr %i.ahk, null              ; 2 uses
  br i1 %.not81, label %bb.ax, label %bb.aw

scalar.ph446:                                     ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.3, %scalar.ph446 ], [ %indvars.iv295.unr, %scalar.ph446.prol.loopexit ] ; 6 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv295
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !370
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv295 ; 2 uses
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !370
  %i.ahp = fsub double %i.aho, %i.ahm
  store double %i.ahp, ptr %i.ahn, align 8, !tbaa !370
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !370
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296 ; 2 uses
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !370
  %i.ahu = fsub double %i.aht, %i.ahr
  store double %i.ahu, ptr %i.ahs, align 8, !tbaa !370
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296.1
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !370
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296.1 ; 2 uses
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !370
  %i.ahz = fsub double %i.ahy, %i.ahw
  store double %i.ahz, ptr %i.ahx, align 8, !tbaa !370
  %indvars.iv.next296.2 = add nuw nsw i64 %indvars.iv295, 3 ; 2 uses
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296.2
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !370
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296.2 ; 2 uses
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !370
  %i.aie = fsub double %i.aid, %i.aib
  store double %i.aie, ptr %i.aic, align 8, !tbaa !370
  %indvars.iv.next296.3 = add nuw nsw i64 %indvars.iv295, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next296.3, %wide.trip.count
  br i1 %exitcond298.not.3, label %._crit_edge267, label %scalar.ph446, !llvm.loop !973

bb.aw:                                            ; preds = %._crit_edge267
  %i.aif = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aig = fsub double %i.aif, %i.h
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahk, i64 56
  store double %i.aig, ptr %i.aih, align 8, !tbaa !476
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge267
  %i.aii = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !120 ; 2 uses
  %i.ail = load ptr, ptr %i.aj, align 8, !tbaa !360
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !441
  %i.aio = load ptr, ptr %i.ee, align 8, !tbaa !338
  %i.aip = load ptr, ptr %i.aik, align 8, !tbaa !80
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.air = load ptr, ptr %i.aiq, align 8
  %i.ais = call noundef zeroext i1 %i.air(ptr noundef nonnull align 8 dereferenceable(9) %i.aik, ptr noundef nonnull align 8 dereferenceable(73) %i.ail, ptr noundef %i.ain, ptr noundef %i.aio)
  br i1 %.not81, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ait = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aiu = fsub double %i.ait, %i.aii
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahk, i64 88
  store double %i.aiu, ptr %i.aiv, align 8, !tbaa !445
  %i.aiw = load ptr, ptr %i.bj, align 8, !tbaa !360 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 32
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !433 ; 2 uses
  %i.aja = load ptr, ptr %i.aix, align 8, !tbaa !435
  %.not.i105 = icmp eq ptr %i.aiz, %i.aja
  br i1 %.not.i105, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ajb = getelementptr inbounds i8, ptr %i.aiz, i64 -4
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !81
  %i.ajd = sext i32 %i.ajc to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106: ; preds = %bb.ay, %bb.az
  %i.aje = phi i64 [ %i.ajd, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ahk, i64 136
  store i64 %i.aje, ptr %i.ajf, align 8, !tbaa !446
  %i.ajg = load ptr, ptr %i.dg, align 8, !tbaa !360 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 24
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 32
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !433 ; 2 uses
  %i.ajk = load ptr, ptr %i.ajh, align 8, !tbaa !435
  %.not.i107 = icmp eq ptr %i.ajj, %i.ajk
  br i1 %.not.i107, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108, label %bb.ba

bb.ba:                                            ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106
  %i.ajl = getelementptr inbounds i8, ptr %i.ajj, i64 -4
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !81
  %i.ajn = sext i32 %i.ajm to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106, %bb.ba
  %i.ajo = phi i64 [ %i.ajn, %bb.ba ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106 ] ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 144
  store i64 %i.ajo, ptr %i.ajp, align 8, !tbaa !477
  %i.ajq = add nsw i64 %i.ajo, %i.aje
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ahk, i64 128
  store i64 %i.ajq, ptr %i.ajr, align 8, !tbaa !447
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108, %bb.ax
  br i1 %i.ais, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ajs = load ptr, ptr %i.aim, align 8, !tbaa !441 ; 8 uses
  %i.ajt = load ptr, ptr %i.da, align 8, !tbaa !338 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %i.aju = load i32, ptr %i.dc, align 8, !tbaa !397 ; 4 uses
  %i.ajv = sext i32 %i.aju to i64                 ; 3 uses
  %i.ajw = getelementptr inbounds [8 x i8], ptr %i.ajs, i64 %i.ajv ; 2 uses
  store ptr %i.ajw, ptr %i.c, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.ajx = getelementptr inbounds [8 x i8], ptr %i.ajt, i64 %i.ajv ; 2 uses
  store ptr %i.ajx, ptr %i.d, align 8, !tbaa !338
  %i.ajy = load ptr, ptr %i.eg, align 8, !tbaa !440
  %i.ajz = getelementptr inbounds [8 x i8], ptr %i.ajy, i64 %i.ajv
  %i.aka = icmp sgt i32 %i.aju, 0
  br i1 %i.aka, label %.lr.ph270.preheader, label %._crit_edge271

.lr.ph270.preheader:                              ; preds = %bb.bc
  %wide.trip.count302 = zext nneg i32 %i.aju to i64 ; 5 uses
  %min.iters.check467 = icmp ult i32 %i.aju, 6
  %8 = ptrtoaddr ptr %i.ajt to i64
  %9 = ptrtoaddr ptr %i.ajs to i64
  %i.akb = sub i64 %9, %8
  %diff.check465 = icmp ugt i64 %i.akb, -32
  %or.cond478 = select i1 %min.iters.check467, i1 true, i1 %diff.check465
  br i1 %or.cond478, label %.lr.ph270.preheader479, label %vector.ph468

vector.ph468:                                     ; preds = %.lr.ph270.preheader
  %n.vec469 = and i64 %wide.trip.count302, 2147483644 ; 3 uses
  br label %vector.body470

vector.body470:                                   ; preds = %vector.body470, %vector.ph468
  %index471 = phi i64 [ 0, %vector.ph468 ], [ %index.next474, %vector.body470 ] ; 3 uses
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %index471 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  %wide.load472 = load <2 x double>, ptr %i.akc, align 8, !tbaa !370
  %wide.load473 = load <2 x double>, ptr %i.akd, align 8, !tbaa !370
  %i.ake = fneg <2 x double> %wide.load472
  %i.akf = fneg <2 x double> %wide.load473
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %index471 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  store <2 x double> %i.ake, ptr %i.akg, align 8, !tbaa !370
  store <2 x double> %i.akf, ptr %i.akh, align 8, !tbaa !370
  %index.next474 = add nuw i64 %index471, 4       ; 2 uses
  %i.aki = icmp eq i64 %index.next474, %n.vec469
  br i1 %i.aki, label %middle.block475, label %vector.body470, !llvm.loop !974

middle.block475:                                  ; preds = %vector.body470
  %cmp.n476 = icmp eq i64 %n.vec469, %wide.trip.count302
  br i1 %cmp.n476, label %._crit_edge271, label %.lr.ph270.preheader479

.lr.ph270.preheader479:                           ; preds = %.lr.ph270.preheader, %middle.block475
  %indvars.iv299.ph = phi i64 [ 0, %.lr.ph270.preheader ], [ %n.vec469, %middle.block475 ] ; 3 uses
  %xtraiter550 = and i64 %wide.trip.count302, 3   ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol

.lr.ph270.prol:                                   ; preds = %.lr.ph270.preheader479, %.lr.ph270.prol
  %indvars.iv299.prol = phi i64 [ %indvars.iv.next300.prol, %.lr.ph270.prol ], [ %indvars.iv299.ph, %.lr.ph270.preheader479 ] ; 3 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.lr.ph270.prol ], [ 0, %.lr.ph270.preheader479 ]
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %indvars.iv299.prol
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !370
  %i.akl = fneg double %i.akk
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %indvars.iv299.prol
  store double %i.akl, ptr %i.akm, align 8, !tbaa !370
  %indvars.iv.next300.prol = add nuw nsw i64 %indvars.iv299.prol, 1 ; 2 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol, !llvm.loop !975

.lr.ph270.prol.loopexit:                          ; preds = %.lr.ph270.prol, %.lr.ph270.preheader479
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph270.preheader479 ], [ %indvars.iv.next300.prol, %.lr.ph270.prol ]
  %i.akn = sub nsw i64 %indvars.iv299.ph, %wide.trip.count302
  %i.ako = icmp ugt i64 %i.akn, -4
  br i1 %i.ako, label %._crit_edge271, label %.lr.ph270

._crit_edge271:                                   ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270, %middle.block475, %bb.bc
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !399
  %i.akr = sext i32 %i.akq to i64
  %i.aks = shl nsw i64 %i.akr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ajx, ptr align 8 %i.ajz, i64 %i.aks, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !343
  call void @_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE13rightMultiplyERPdPKd(ptr noundef nonnull align 8 dereferenceable(40) %i.aku, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ajt)
  %i.akv = load i32, ptr %i.akp, align 4, !tbaa !399
  %i.akw = sext i32 %i.akv to i64
  %i.akx = shl nsw i64 %i.akw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ajw, i8 0, i64 %i.akx, i1 false)
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !353
  %i.ala = load ptr, ptr %i.d, align 8, !tbaa !338
  call void @_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8multiplyERPdPKd(ptr noundef nonnull align 8 dereferenceable(32) %i.akz, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ala)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %bb.bd

.lr.ph270:                                        ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph270 ], [ %indvars.iv299.unr, %.lr.ph270.prol.loopexit ] ; 6 uses
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %indvars.iv299
  %i.alc = load double, ptr %i.alb, align 8, !tbaa !370
  %i.ald = fneg double %i.alc
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %indvars.iv299
  store double %i.ald, ptr %i.ale, align 8, !tbaa !370
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %indvars.iv.next300
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !370
  %i.alh = fneg double %i.alg
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %indvars.iv.next300
  store double %i.alh, ptr %i.ali, align 8, !tbaa !370
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %indvars.iv.next300.1
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !370
  %i.all = fneg double %i.alk
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %indvars.iv.next300.1
  store double %i.all, ptr %i.alm, align 8, !tbaa !370
  %indvars.iv.next300.2 = add nuw nsw i64 %indvars.iv299, 3 ; 2 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.ajs, i64 %indvars.iv.next300.2
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !370
  %i.alp = fneg double %i.alo
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.ajt, i64 %indvars.iv.next300.2
  store double %i.alp, ptr %i.alq, align 8, !tbaa !370
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %exitcond303.not.3 = icmp eq i64 %indvars.iv.next300.3, %wide.trip.count302
  br i1 %exitcond303.not.3, label %._crit_edge271, label %.lr.ph270, !llvm.loop !976

bb.bd:                                            ; preds = %._crit_edge271, %bb.bb, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit
  %.1 = phi i1 [ %i.t, %bb.b ], [ %i.t, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit ], [ false, %bb.bb ], [ true, %._crit_edge271 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILin1ELin1EEEE16computeMarginalsERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISC_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !360
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %i.e)
  %i.j = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.l = fsub double %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store double %i.l, ptr %i.m, align 8, !tbaa !478
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILin1ELin1EEEE9setLambdaEdb(ptr noundef nonnull align 8 dereferenceable(216) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %2, label %bb.b, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit23

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !376
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !340  ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !339  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.m)
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !341
  tail call void @free(ptr noundef %i.p) #35
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !340
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.t = load i32, ptr %i.s, align 4, !tbaa !377
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !340  ; 3 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !339  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.u
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE6resizeEm.exit
  %i.ad = sub nuw nsw i64 %i.u, %i.ab
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ad)
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15compute_inverseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lin1EE3runERKS3_RS3_:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen7InverseINS_12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.d) #35
  %i.e = load ptr, ptr %0, align 8, !tbaa !358
  tail call void @free(ptr noundef %i.e) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.d) #35
  %i.e = load ptr, ptr %0, align 8, !tbaa !358
  tail call void @free(ptr noundef %i.e) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !369  ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.d, %i.b
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !368  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i64 %i.m, 4611686018427387903
  br i1 %i.o, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = shl nuw i64 %i.m, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #41 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.invoke.i.i, label %.sink.split.i.i.i.i.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.f
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.e
  %.sink.i.i.i.i.i = phi ptr [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.e ]
  store ptr %.sink.i.i.i.i.i, ptr %i.l, align 8, !tbaa !501
  br label %bb.h

bb.g:                                             ; preds = %.invoke.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body13

bb.h:                                             ; preds = %.sink.split.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.u, align 8, !tbaa !502
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !368  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %.not.i.i.i.i.i15 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i15, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %.sink.split.i.i.i.i.i16

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ugt i64 %i.w, 4611686018427387903
  br i1 %i.y, label %.invoke.i.i19, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i18

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i18: ; preds = %bb.j
  %i.z = shl nuw i64 %i.w, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #41 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke.i.i19, label %.sink.split.i.i.i.i.i16

.invoke.i.i19:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i18, %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.cont.i.i20 unwind label %bb.k

.cont.i.i20:                                      ; preds = %.invoke.i.i19
  unreachable

.sink.split.i.i.i.i.i16:                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i18, %bb.i
  %.sink.i.i.i.i.i17 = phi ptr [ %i.aa, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i18 ], [ null, %bb.i ]
  store ptr %.sink.i.i.i.i.i17, ptr %i.v, align 8, !tbaa !501
  br label %bb.l

bb.k:                                             ; preds = %.invoke.i.i19
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.l:                                             ; preds = %.sink.split.i.i.i.i.i16, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.w, ptr %i.ae, align 8, !tbaa !502
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !505
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !506
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.ah, align 1, !tbaa !507
  %i.ai = invoke noundef nonnull align 8 dereferenceable(66) ptr @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  ret void

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.k, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ad, %bb.k ]
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.ak) #35
  br label %.body13

.body13:                                          ; preds = %bb.g, %.body21
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body21 ], [ %i.t, %bb.g ]
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.al) #35
  br label %.body

.body:                                            ; preds = %bb.d, %.body13
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body13 ], [ %i.k, %bb.d ]
  %i.am = load ptr, ptr %0, align 8, !tbaa !358
  tail call void @free(ptr noundef %i.am) #35
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(66) ptr @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !358    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !368  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !369  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.c, %i.l
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = mul nsw i64 %i.e, %i.c
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.c, i64 noundef %i.e)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !368
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !369
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.p = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.c, %bb.a ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !358    ; 8 uses
  %i.s = mul nsw i64 %i.q, %i.p                   ; 7 uses
  %i.t = sdiv i64 %i.s, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 6 uses
  %i.v = icmp sgt i64 %i.s, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.w = icmp slt i64 %i.u, %i.s
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = sub i64 %i.s, %i.u                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %2 = ptrtoaddr ptr %i.r to i64
  %3 = ptrtoaddr ptr %i.a to i64
  %i.y = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.z = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.u, %index                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !370
  %wide.load7 = load <2 x double>, ptr %i.ad, align 8, !tbaa !370
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load, ptr %i.ab, align 8, !tbaa !370
  store <2 x double> %wide.load7, ptr %i.ae, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.i.preheader8:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ] ; 4 uses
  %i.ag = sub i64 %i.s, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !370
  store double %i.aj, ptr %i.ah, align 8, !tbaa !370
  %i.ak = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1176

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.al = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.s
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !370
  store double %i.ap, ptr %i.an, align 8, !tbaa !370
  %i.aq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !370
  store double %i.at, ptr %i.ar, align 8, !tbaa !370
  %i.au = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !370
  store double %i.ax, ptr %i.av, align 8, !tbaa !370
  %i.ay = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !370
  store double %i.bb, ptr %i.az, align 8, !tbaa !370
  %i.bc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1177

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !71
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !71
  %i.bg = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.u
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !15

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::internal::redux_evaluator", align 8 ; 4 uses
  %2 = alloca %"struct.Eigen::internal::scalar_max_op", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::PartialReduxExpr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !369
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !485, !alias.scope !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %0, ptr %1, align 8, !tbaa !485, !alias.scope !1184
  %i.f = call noundef double @_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi0ELi0EE3runISG_EEdRKSH_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sink, ptr %i.g, align 8, !tbaa !505
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !368  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !502
  %.not.i.i.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !501
  call void @free(ptr noundef %i.m) #35
  %i.n = icmp sgt i64 %i.i, 0
  br i1 %i.n, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %i.i, 4611686018427387903
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !80
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.e
  %i.q = shl nuw i64 %i.i, 2
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #41 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.sink.split.i.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !80
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.d
  %.sink.i.i.i = phi ptr [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %i.j, align 8, !tbaa !501
  %.pr = load i64, ptr %i.h, align 8, !tbaa !368
  br label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.c, %.sink.split.i.i.i
  %i.u = phi i64 [ %i.i, %bb.c ], [ %.pr, %.sink.split.i.i.i ] ; 3 uses
  store i64 %i.i, ptr %i.k, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  store i32 0, ptr %i.a, align 4, !tbaa !81
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !358
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !501
  %i.aa = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %i.u, i64 noundef %i.w, ptr noundef nonnull %i.y, i64 noundef %i.u, ptr noundef nonnull %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 256) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !81
  %.pre3 = load i64, ptr %i.k, align 8, !tbaa !502
  %i.ab = and i32 %.pre, 1
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i8 1, i8 -1
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit: ; preds = %bb.i, %bb.j
  %i.ae = phi i64 [ %i.i, %bb.i ], [ %.pre3, %bb.j ]
  %.not = phi i8 [ 1, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.not, ptr %i.af, align 8, !tbaa !506
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !502 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS3_EENS_10DenseShapeES7_Li8EE13scaleAndAddToIS3_EEvRT_RS5_RKS6_RKd:bb.a

bb.n:                                             ; preds = %bb.i
  %i.ed = load double, ptr %3, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bw, ptr %i.ee, align 8, !tbaa !522
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.ef, align 8, !tbaa !525
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.eg, align 8, !tbaa !521
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i64 noundef 1)
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !522
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !521 ; 2 uses
  %i.ej = mul nsw i64 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !538
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !525
  %i.em = mul nsw i64 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.em, ptr %i.en, align 8, !tbaa !539
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !368 ; 2 uses
  %i.ep = load ptr, ptr %2, align 8, !tbaa !541, !nonnull !396, !align !469
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !368 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  %i.et = load i64, ptr %i.h, align 8, !tbaa !368 ; 2 uses
  %..i.i = select i1 %i.es, i64 %i.et, i64 %i.er
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !369
  %i.ev = load ptr, ptr %1, align 8, !tbaa !358
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.ex = load ptr, ptr %0, align 8, !tbaa !358
  %i.ey = load i64, ptr %i.bv, align 8, !tbaa !368
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.eo, i64 noundef %..i.i, i64 noundef %i.eu, ptr noundef nonnull %i.ev, i64 noundef %i.eo, ptr noundef nonnull %i.ew, i64 noundef %i.et, ptr noundef nonnull %i.ex, i64 noundef 1, i64 noundef %i.ey, double noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.o

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %bb.n
  %i.ez = load ptr, ptr %9, align 8, !tbaa !527
  call void @free(ptr noundef %i.ez) #35
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !528
  call void @free(ptr noundef %i.fb) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKNS_9TransposeIKS3_EELin1ELi1ELb0EEENS_10DenseShapeESB_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS6_RSA_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_9TransposeIS4_EELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EES6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit
  ret void

bb.o:                                             ; preds = %bb.n
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %9, align 8, !tbaa !527
  call void @free(ptr noundef %i.fd) #35
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !528
  call void @free(ptr noundef %i.ff) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  resume { ptr, i32 } %i.fc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi0ELb1EE3runINS_9TransposeIKNS4_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INSB_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.611", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !541, !nonnull !396, !align !469 ; 3 uses
  %.sroa.040.0.copyload = load ptr, ptr %1, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8
  %i.b = load double, ptr %3, align 8, !tbaa !370
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !500  ; 10 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 3                      ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, 16384        ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #41 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.m = add nuw nsw i64 %i.g, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.thread, %bb.e
  %i.p = phi ptr [ %i.k, %.thread ], [ %i.o, %bb.e ] ; 4 uses
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %bb.e ] ; 9 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !543    ; 6 uses
  %.pn = load ptr, ptr %i.p, align 8, !tbaa !1630, !nonnull !396, !align !469
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.s = load i64, ptr %.in, align 8, !tbaa !368  ; 6 uses
  %min.iters.check = icmp ugt i64 %i.d, 3
  %ident.check.not = icmp eq i64 %i.s, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.preheader70

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.d, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !370
  %wide.load51 = load <2 x double>, ptr %i.v, align 8, !tbaa !370
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %wide.load, ptr %i.t, align 8, !tbaa !370
  store <2 x double> %wide.load51, ptr %i.w, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.i.i.preheader70:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader70, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader70 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader70 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.z = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.s
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !370
  store double %i.ab, ptr %i.y, align 8, !tbaa !370
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1623

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader70 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.d
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i
  %i.ag = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.s
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !370
  store double %i.ai, ptr %i.af, align 8, !tbaa !370
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aj
  %i.al = mul nsw i64 %i.aj, %i.s
  %i.am = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !370
  store double %i.an, ptr %i.ak, align 8, !tbaa !370
  %i.ao = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  %i.aq = mul nsw i64 %i.ao, %i.s
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !370
  store double %i.as, ptr %i.ap, align 8, !tbaa !370
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.at
  %i.av = mul nsw i64 %i.at, %i.s
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !370
  store double %i.ax, ptr %i.au, align 8, !tbaa !370
  %i.ay = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ay, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1624

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.az = phi ptr [ %i.o, %bb.e ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ba = phi i1 [ false, %bb.e ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bb = phi ptr [ %i.n, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !368 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !358
  store ptr %i.bg, ptr %4, align 8, !tbaa !471
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.542.0.copyload, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !368
  store ptr %.sroa.040.0.copyload, ptr %5, align 8, !tbaa !474
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !475
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.bd, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.bb, i64 noundef 1, double noundef %i.b)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.bl = load ptr, ptr %2, align 8, !tbaa !543   ; 7 uses
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !1630, !nonnull !396, !align !469
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !368 ; 6 uses
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !500 ; 7 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i26.preheader:               ; preds = %bb.f
  %min.iters.check55 = icmp ult i64 %i.bp, 10
  %ident.check53.not = icmp ne i64 %i.bo, 1
  %or.cond66.not68 = select i1 %min.iters.check55, i1 true, i1 %ident.check53.not
  %6 = ptrtoaddr ptr %i.bl to i64
  %7 = ptrtoaddr ptr %i.bb to i64
  %i.br = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond67 = select i1 %or.cond66.not68, i1 true, i1 %diff.check
  br i1 %or.cond67, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader69, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader
  %n.vec57 = and i64 %i.bp, 9223372036854775804   ; 3 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %index59 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index59 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load60 = load <2 x double>, ptr %i.bt, align 8, !tbaa !370
  %wide.load61 = load <2 x double>, ptr %i.bu, align 8, !tbaa !370
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x double> %wide.load60, ptr %i.bs, align 8, !tbaa !370
  store <2 x double> %wide.load61, ptr %i.bv, align 8, !tbaa !370
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.bw, label %middle.block63, label %vector.body58, !llvm.loop !1625

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %i.bp, %n.vec57
  br i1 %cmp.n64, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26.preheader69

.lr.ph.i.i.i.i.i.i.i.i26.preheader69:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader, %middle.block63
  %.05.i.i.i.i.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader ], [ %n.vec57, %middle.block63 ] ; 3 uses
  %xtraiter71 = and i64 %i.bp, 3                  ; 2 uses
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i26.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.preheader69, %.lr.ph.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader69 ] ; 3 uses
  %prol.iter73 = phi i64 [ %prol.iter73.next, %.lr.ph.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i26.preheader69 ]
  %i.bx = mul nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, %i.bo
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27.prol
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !370
  store double %i.ca, ptr %i.by, align 8, !tbaa !370
  %i.cb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter73.next = add i64 %prol.iter73, 1     ; 2 uses
  %prol.iter73.cmp.not = icmp eq i64 %prol.iter73.next, %xtraiter71
  br i1 %prol.iter73.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i26.prol, !llvm.loop !1626

.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i26.preheader69
  %.05.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i26.preheader69 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i26.prol ]
  %i.cc = sub nsw i64 %.05.i.i.i.i.i.i.i.i27.ph, %i.bp
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i26:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i27 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.ce = mul nsw i64 %.05.i.i.i.i.i.i.i.i27, %i.bo
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.05.i.i.i.i.i.i.i.i27
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !370
  store double %i.ch, ptr %i.cf, align 8, !tbaa !370
  %i.ci = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %i.bo
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ci
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !370
  store double %i.cm, ptr %i.ck, align 8, !tbaa !370
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.co = mul nsw i64 %i.cn, %i.bo
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cn
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !370
  store double %i.cr, ptr %i.cp, align 8, !tbaa !370
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.bo
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cs
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !370
  store double %i.cw, ptr %i.cu, align 8, !tbaa !370
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.cx, %i.bp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i28.3, label %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i26, !llvm.loop !1627

_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i26, %middle.block63, %bb.f
  br i1 %i.ba, label %bb.g, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.g:                                             ; preds = %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  call void @free(ptr noundef nonnull %i.bb) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen9TransposeINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEaSINS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi2ENS_6StrideILi0ELi0EEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, %bb.g
  ret void

bb.h:                                             ; preds = %.loopexit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.ba, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit29

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.bb) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit29

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit29: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.cy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, double noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %12) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %14 = alloca %"struct.Eigen::internal::gemm_pack_rhs.1115", align 1 ; 4 uses
  %15 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 5 uses
  %16 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 14 uses
  %17 = alloca %"class.Eigen::internal::const_blas_data_mapper.611", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !521  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !522  ; 2 uses
  %.sroa.speculated145 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !525  ; 2 uses
  %.sroa.speculated140 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.g = mul nsw i64 %.sroa.speculated145, %i.b   ; 4 uses
  %i.h = mul nsw i64 %.sroa.speculated140, %i.b   ; 4 uses
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99: ; preds = %bb.a
  %i.k = load ptr, ptr %11, align 8, !tbaa !527   ; 2 uses
  %.not89 = icmp eq ptr %i.k, null
  br i1 %.not89, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99
  %i.l = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.m = icmp samesign ult i64 %i.g, 16385
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.l, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #41 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99, %bb.d
  %i.s = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 5 uses
  %i.u = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.v = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc111 unwind label %bb.u

.noexc111:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !528  ; 2 uses
  %.not90 = icmp eq ptr %i.y, null
  br i1 %.not90, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.h, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.h, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #41 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  %.03246.i = phi i64 [ %i.ge, %.lr.ph47.i ], [ %.03552.i, %.lr.ph47.i.preheader ] ; 3 uses
  %i.gc = getelementptr [8 x i8], ptr %i.fn, i64 %.03246.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03246.i
  %i.gd = load <2 x double>, ptr %gep, align 1, !tbaa !71
  store <2 x double> %i.gd, ptr %i.gc, align 16, !tbaa !71
  %i.ge = add nsw i64 %.03246.i, 2                ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %i.ff
  br i1 %i.gf, label %.lr.ph47.i, label %.preheader.i, !llvm.loop !1745

._crit_edge.i:                                    ; preds = %scalar.ph134, %middle.block143, %.preheader.i
  %i.gg = add nsw i64 %.03552.i, %i.er
  %i.gh = srem i64 %i.gg, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cr, i64 %i.gh)
  %i.gi = add nuw nsw i64 %.03453.i, 1            ; 2 uses
  %exitcond57.not.i = icmp eq i64 %i.gi, %i.br
  br i1 %exitcond57.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %bb.o, !llvm.loop !1746

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %.048.i = phi i64 [ %i.gl, %scalar.ph134 ], [ %.048.i.ph, %scalar.ph134.preheader ] ; 3 uses
  %i.gj = getelementptr [8 x i8], ptr %i.fr, i64 %.048.i
  %gep51.i = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %.048.i
  %i.gk = load double, ptr %gep51.i, align 8, !tbaa !370
  store double %i.gk, ptr %i.gj, align 8, !tbaa !370
  %i.gl = add nsw i64 %.048.i, 1                  ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.cr
  br i1 %i.gm, label %scalar.ph134, label %._crit_edge.i, !llvm.loop !1747

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.cm, %.042101
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit
  %i.gn = load ptr, ptr %i.co, align 8, !tbaa !367 ; 2 uses
  %i.go = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !1762 ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.go, i64 %i.bq
  %i.gq = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !1762 ; 4 uses
  %i.gr = mul i64 %i.gq, %i.cq
  %i.gs = getelementptr [8 x i8], ptr %i.gp, i64 %i.gr ; 2 uses
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !358 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !368 ; 6 uses
  %i.gw = icmp sgt i32 %i.cn, 0
  %or.cond96 = select i1 %i.gw, i1 %i.bs, i1 false
  br i1 %or.cond96, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.p
  %i.gx = getelementptr i8, ptr %i.go, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gx, i64 %i.bu
  %i.gy = shl nsw i64 %i.cq, 3
  %i.gz = add nsw i64 %i.gy, -8
  %i.ha = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.hb = add nsw i64 %i.gz, %i.ha
  %i.hc = mul i64 %i.gq, %i.hb
  %scevgep128 = getelementptr i8, ptr %scevgep, i64 %i.hc
  %scevgep129 = getelementptr i8, ptr %i.gt, i64 -8
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.bt
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.ha
  %ident.check.not = icmp eq i64 %i.gv, 1
  %or.cond168 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.gs, %scevgep131
  %bound1 = icmp ult ptr %i.gt, %scevgep128
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.gq, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.hd = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ht, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.he = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gq
  %i.hf = getelementptr [8 x i8], ptr %i.gs, i64 %i.he ; 6 uses
  %i.hg = getelementptr [8 x i8], ptr %i.gt, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %or.cond168.not = xor i1 %or.cond168, true
  %brmerge174 = select i1 %or.cond168.not, i1 true, i1 %i.hd
  br i1 %brmerge174, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hh = getelementptr [8 x i8], ptr %i.hf, i64 %index ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hg, i64 %index ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  %wide.load = load <2 x double>, ptr %i.hi, align 8, !tbaa !370, !alias.scope !1763
  %wide.load132 = load <2 x double>, ptr %i.hj, align 8, !tbaa !370, !alias.scope !1763
  %i.hk = getelementptr i8, ptr %i.hh, i64 16
  store <2 x double> %wide.load, ptr %i.hh, align 8, !tbaa !370, !alias.scope !1764, !noalias !1763
  store <2 x double> %wide.load132, ptr %i.hk, align 8, !tbaa !370, !alias.scope !1764, !noalias !1763
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !1753

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod171.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hq, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hm = getelementptr [8 x i8], ptr %i.hf, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.hn = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, %i.gv
  %i.ho = getelementptr [8 x i8], ptr %i.hg, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !370
  store double %i.hp, ptr %i.hm, align 8, !tbaa !370
  %i.hq = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1754

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.hq, %scalar.ph.prol ]
  %i.hr = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ht = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ht, %i.cr
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1755

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hu = getelementptr [8 x i8], ptr %i.hf, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.hv = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %i.gv
  %i.hw = getelementptr [8 x i8], ptr %i.hg, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !370
  store double %i.hx, ptr %i.hu, align 8, !tbaa !370
  %i.hy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %i.hf, i64 %i.hy
  %i.ia = mul nsw i64 %i.hy, %i.gv
  %i.ib = getelementptr [8 x i8], ptr %i.hg, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !370
  store double %i.ic, ptr %i.hz, align 8, !tbaa !370
  %i.id = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %i.hf, i64 %i.id
  %i.if = mul nsw i64 %i.id, %i.gv
  %i.ig = getelementptr [8 x i8], ptr %i.hg, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !370
  store double %i.ih, ptr %i.ie, align 8, !tbaa !370
  %i.ii = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.hf, i64 %i.ii
  %i.ik = mul nsw i64 %i.ii, %i.gv
  %i.il = getelementptr [8 x i8], ptr %i.hg, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !370
  store double %i.im, ptr %i.ij, align 8, !tbaa !370
  %i.in = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.in, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !1756

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.io = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.0100) #40 ; 2 uses
  %.not97 = icmp eq ptr %i.io, %i.bp
  br i1 %.not97, label %.loopexit.loopexit, label %bb.k, !llvm.loop !1757

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre108 = load ptr, ptr %i.am, align 8, !tbaa !364
  %.pre109 = load ptr, ptr %i.al, align 8, !tbaa !365
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit
  %i.ip = phi ptr [ %.pre109, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre108, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ir = add nsw i32 %i.bj, %.042101
  %i.is = add nuw i64 %.041102, 1                 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 48
  %i.ix = icmp ult i64 %i.is, %i.iw
  br i1 %i.ix, label %bb.g, label %._crit_edge, !llvm.loop !1758

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS_17SparseBlockMatrixIS3_EERKSt6vectorISt4pairIiiESaISA_EERKS6_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(76) ptr @_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368  ; 17 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !358    ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !369  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.b, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.b, %i.l
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = mul nsw i64 %i.e, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.b, i64 noundef %i.e)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !368
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !369
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.p = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !358    ; 8 uses
  %i.s = mul nsw i64 %i.q, %i.p                   ; 7 uses
  %i.t = sdiv i64 %i.s, 2
  %i.u = shl nsw i64 %i.t, 1                      ; 6 uses
  %i.v = icmp sgt i64 %i.s, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.w = icmp slt i64 %i.u, %i.s
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = sub i64 %i.s, %i.u                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %2 = ptrtoaddr ptr %i.r to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.y = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.z = add i64 %i.u, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %i.u, %index                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x double>, ptr %i.ac, align 8, !tbaa !370
  %wide.load73 = load <2 x double>, ptr %i.ad, align 8, !tbaa !370
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %wide.load, ptr %i.ab, align 8, !tbaa !370
  store <2 x double> %wide.load73, ptr %i.ae, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1765

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.i.i.preheader78:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ] ; 4 uses
  %i.ag = sub i64 %i.s, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !370
  store double %i.aj, ptr %i.ah, align 8, !tbaa !370
  %i.ak = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1766

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader78 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.al = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.s
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !370
  store double %i.ap, ptr %i.an, align 8, !tbaa !370
  %i.aq = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !370
  store double %i.at, ptr %i.ar, align 8, !tbaa !370
  %i.au = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !370
  store double %i.ax, ptr %i.av, align 8, !tbaa !370
  %i.ay = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !370
  store double %i.bb, ptr %i.az, align 8, !tbaa !370
  %i.bc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1767

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = load <2 x double>, ptr %i.be, align 16, !tbaa !71
  store <2 x double> %i.bf, ptr %i.bd, align 16, !tbaa !71
  %i.bg = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.u
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !15

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !1775
  %i.bj = icmp sgt i64 %i.b, 0                    ; 3 uses
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !358, !noalias !1776 ; 2 uses
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !368, !noalias !1776 ; 7 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.u, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !502
  %.not.i.i.i = icmp eq i64 %i.b, %i.bo
  br i1 %.not.i.i.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !501
  tail call void @free(ptr noundef %i.bp) #35
  br i1 %i.bj, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bq = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.bq, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.br, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.f
  %i.bs = shl nuw i64 %i.b, 2
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.bs) #41 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.h, label %.sink.split.i.i.i

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bv, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.e
  %.sink.i.i.i = phi ptr [ %i.bt, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.e ]
  store ptr %.sink.i.i.i, ptr %i.bm, align 8, !tbaa !501
  br label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i.i
  store i64 %i.b, ptr %i.bn, align 8, !tbaa !502
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i8 0, ptr %i.bw, align 4, !tbaa !118
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !459
  %.not.i.i = icmp eq i64 %i.b, %i.bz
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !341
  tail call void @free(ptr noundef %i.ca) #35
  br i1 %i.bj, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.cb, label %bb.k, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cc, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.j
  %i.cd = shl nuw i64 %i.b, 3
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #41 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cg = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cg, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.i
  %.sink.i.i = phi ptr [ %i.ce, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.i ]
  store ptr %.sink.i.i, ptr %i.bx, align 8, !tbaa !341
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit, %.sink.split.i.i
  store i64 %i.b, ptr %i.by, align 8, !tbaa !459
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 2, ptr %i.ch, align 8, !tbaa !117
  %i.ci = tail call noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.ch)
  %not. = xor i1 %i.ci, true
  %i.cj = zext i1 %not. to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !1777
  store i8 1, ptr %i.bw, align 4, !tbaa !118
  ret ptr %0

bb.m:                                             ; preds = %.lr.ph, %bb.u
  %i.cl = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fm, %bb.u ] ; 2 uses
  %.050 = phi i64 [ 0, %.lr.ph ], [ %i.fn, %bb.u ] ; 8 uses
  %i.cm = add nsw i64 %.050, -1                   ; 2 uses
  %i.cn = add nsw i64 %.050, -2
  %i.co = mul nsw i64 %i.bl, %.050
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.co
  %i.cq = sub nuw nsw i64 %i.b, %.050             ; 8 uses
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE:bb.a

vector.ph520:                                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %n.vec521 = and i64 %.0.i.i.i.i.i.i.i138, -2    ; 3 uses
  %broadcast.splatinsert522 = insertelement <2 x double> poison, double %i.pd, i64 0
  %broadcast.splat523 = shufflevector <2 x double> %broadcast.splatinsert522, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph520
  %index525 = phi i64 [ 0, %vector.ph520 ], [ %index.next527, %vector.body524 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index525 ; 2 uses
  %wide.load526 = load <2 x double>, ptr %i.pm, align 8, !tbaa !370
  %i.pn = fdiv <2 x double> %wide.load526, %broadcast.splat523
  store <2 x double> %i.pn, ptr %i.pm, align 8, !tbaa !370
  %index.next527 = add nuw i64 %index525, 2       ; 2 uses
  %i.po = icmp eq i64 %index.next527, %n.vec521
  br i1 %i.po, label %middle.block528, label %vector.body524, !llvm.loop !1818

middle.block528:                                  ; preds = %vector.body524
  %cmp.n529 = icmp eq i64 %.0.i.i.i.i.i.i.i138, %n.vec521
  br i1 %cmp.n529, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145.preheader

.lr.ph.i.i.i.i.i.i.i145.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137, %middle.block528
  %.05.i.i.i.i.i.i.i146.ph = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137 ], [ %n.vec521, %middle.block528 ]
  br label %.lr.ph.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i145:                          ; preds = %.lr.ph.i.i.i.i.i.i.i145.preheader, %.lr.ph.i.i.i.i.i.i.i145
  %.05.i.i.i.i.i.i.i146 = phi i64 [ %i.ps, %.lr.ph.i.i.i.i.i.i.i145 ], [ %.05.i.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i.i145.preheader ] ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %.05.i.i.i.i.i.i.i146 ; 2 uses
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !370
  %i.pr = fdiv double %i.pq, %i.pd
  store double %i.pr, ptr %i.pp, align 8, !tbaa !370
  %i.ps = add nuw nsw i64 %.05.i.i.i.i.i.i.i146, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i147 = icmp eq i64 %i.ps, %.0.i.i.i.i.i.i.i138
  br i1 %exitcond.not.i.i.i.i.i.i.i147, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i145, !llvm.loop !1819

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i145, %middle.block528, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i137
  %i.pt = icmp sgt i64 %i.pi, 1
  br i1 %i.pt, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i139

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.pu = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i143

._crit_edge.i.i.i.i.i.i139:                       ; preds = %.lr.ph.i.i.i.i.i.i143, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.pw = icmp slt i64 %i.pl, %i.pa
  br i1 %i.pw, label %.lr.ph.i17.i.i.i.i.i.i140.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i140.preheader:              ; preds = %._crit_edge.i.i.i.i.i.i139
  %i.px = add i64 %.0.i.i.i.i.i.i.i138, %i.pk
  %i.py = sub i64 %i.pa, %i.px                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.py, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader
  %n.vec = and i64 %i.py, -2                      ; 3 uses
  %i.pz = add i64 %i.pl, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.pd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = getelementptr [8 x i8], ptr %i.pb, i64 %i.pl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %i.qa, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.qb, align 8, !tbaa !370
  %i.qc = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.qc, ptr %i.qb, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %middle.block, label %vector.body, !llvm.loop !1820

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.py, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140.preheader657

.lr.ph.i17.i.i.i.i.i.i140.preheader657:           ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i141.ph = phi i64 [ %i.pl, %.lr.ph.i17.i.i.i.i.i.i140.preheader ], [ %i.pz, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i140

.lr.ph.i17.i.i.i.i.i.i140:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i140.preheader657, %.lr.ph.i17.i.i.i.i.i.i140
  %.05.i18.i.i.i.i.i.i141 = phi i64 [ %i.qh, %.lr.ph.i17.i.i.i.i.i.i140 ], [ %.05.i18.i.i.i.i.i.i141.ph, %.lr.ph.i17.i.i.i.i.i.i140.preheader657 ] ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %.05.i18.i.i.i.i.i.i141 ; 2 uses
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !370
  %i.qg = fdiv double %i.qf, %i.pd
  store double %i.qg, ptr %i.qe, align 8, !tbaa !370
  %i.qh = add nsw i64 %.05.i18.i.i.i.i.i.i141, 1  ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i142 = icmp eq i64 %i.qh, %i.pa
  br i1 %exitcond.not.i19.i.i.i.i.i.i142, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i140, !llvm.loop !1821

.lr.ph.i.i.i.i.i.i143:                            ; preds = %.lr.ph.i.i.i.i.i.i143, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i144 = phi i64 [ %i.ql, %.lr.ph.i.i.i.i.i.i143 ], [ %.0.i.i.i.i.i.i.i138, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %.021.i.i.i.i.i.i144 ; 2 uses
  %i.qj = load <2 x double>, ptr %i.qi, align 16, !tbaa !71
  %i.qk = fdiv <2 x double> %i.qj, %i.pv
  store <2 x double> %i.qk, ptr %i.qi, align 16, !tbaa !71
  %i.ql = add nsw i64 %.021.i.i.i.i.i.i144, 2     ; 2 uses
  %i.qm = icmp slt i64 %i.ql, %i.pl
  br i1 %i.qm, label %.lr.ph.i.i.i.i.i.i143, label %._crit_edge.i.i.i.i.i.i139, !llvm.loop !1822

bb.t:                                             ; preds = %bb.s
  br i1 %i.ad, label %bb.u, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

bb.u:                                             ; preds = %bb.t
  %i.qn = trunc nuw i8 %.0118.ph to i1
  br i1 %i.qn, label %.preheader.us.i150, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

.preheader.us.i150:                               ; preds = %bb.u, %.preheader.us.i150
  %.01324.us.i151 = phi i64 [ %i.qr, %.preheader.us.i150 ], [ 0, %bb.u ] ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %i.pb, i64 %.01324.us.i151
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !370
  %i.qq = fcmp oeq double %i.qp, 0.000000e+00     ; 2 uses
  %i.qr = add nuw nsw i64 %.01324.us.i151, 1      ; 2 uses
  %exitcond.not.i152 = icmp ne i64 %i.qr, %i.pa
  %or.cond419.not = select i1 %i.qq, i1 %exitcond.not.i152, i1 false
  br i1 %or.cond419.not, label %.preheader.us.i150, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, !llvm.loop !1823

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit: ; preds = %.preheader.us.i150
  %i.qs = zext i1 %i.qq to i8
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i140, %middle.block, %bb.u, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit, %._crit_edge.i.i.i.i.i.i139, %bb.t
  %.2 = phi i8 [ %.0118.ph, %bb.t ], [ %i.qs, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIddLNS2_14ComparisonNameE0EEEKNS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEEE3allEv.exit ], [ %.0118.ph, %._crit_edge.i.i.i.i.i.i139 ], [ 0, %bb.u ], [ %.0118.ph, %middle.block ], [ %.0118.ph, %.lr.ph.i17.i.i.i.i.i.i140 ]
  %or.cond6 = and i1 %.0120.ph, %i.pc
  %not. = xor i1 %i.pc, true
  %.1121 = select i1 %not., i1 true, i1 %.0120.ph
  %.3 = select i1 %or.cond6, i8 0, i8 %.2
  %i.qt = load i32, ptr %3, align 4, !tbaa !1824
  switch i32 %i.qt, label %bb.z [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qu = fcmp olt double %i.pd, 0.000000e+00
  br i1 %i.qu, label %.sink.split, label %bb.z

bb.w:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qv = fcmp ogt double %i.pd, 0.000000e+00
  br i1 %i.qv, label %.sink.split, label %bb.z

bb.x:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.qw = fcmp ogt double %i.pd, 0.000000e+00
  br i1 %i.qw, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qx = fcmp olt double %i.pd, 0.000000e+00
  br i1 %i.qx, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sink = phi i32 [ 3, %bb.v ], [ 0, %bb.x ], [ 3, %bb.w ], [ 1, %bb.y ]
  store i32 %.sink, ptr %3, align 4, !tbaa !1824
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v, %bb.y, %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEdVERKd.exit
  %indvar.next = add i64 %indvar, 1
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.z
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.z ] ; 15 uses
  %.0120.ph = phi i1 [ false, %.preheader ], [ %.1121, %bb.z ] ; 2 uses
  %.0118.ph = phi i8 [ 1, %.preheader ], [ %.3, %bb.z ] ; 7 uses
  %.0116.ph = phi i64 [ 0, %.preheader ], [ %.pre-phi, %bb.z ] ; 40 uses
  %i.qy = add i64 %.0116.ph, -2                   ; 2 uses
  %i.qz = add i64 %.0116.ph, -1                   ; 5 uses
  %i.ra = xor i64 %indvar, -1
  %i.rb = add i64 %i.b, %i.ra                     ; 3 uses
  %i.rc = shl i64 %indvar, 4
  %i.rd = shl i64 %indvar, 3
  %i.re = shl i64 %indvar, 3
  %i.rf = xor i64 %indvar, -1
  %i.rg = add i64 %i.b, %i.rf                     ; 2 uses
  %i.rh = shl i64 %indvar, 3                      ; 2 uses
  %i.ri = add i64 %i.rh, 8
  %i.rj = add i64 %.0116.ph, 1
  %i.rk = xor i64 %indvar, -1
  %i.rl = add i64 %.0116.ph, 2
  %i.rm = shl i64 %indvar, 4                      ; 2 uses
  %i.rn = add i64 %.0116.ph, 2
  %i.ro = shl i64 %indvar, 3                      ; 2 uses
  %i.rp = shl i64 %indvar, 3
  %i.rq = shl i64 %indvar, 4
  %exitcond433.not = icmp eq i64 %.0116.ph, %i.b
  br i1 %exitcond433.not, label %.thread410, label %bb.i

.thread410:                                       ; preds = %.outer
  %i.rr = trunc nuw i8 %.0118.ph to i1
  br label %.loopexit420

.loopexit420:                                     ; preds = %._crit_edge, %bb.c, %bb.g, %bb.h, %bb.e, %.thread410
  %.3126 = phi i1 [ true, %bb.c ], [ %i.rr, %.thread410 ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ %i.og, %._crit_edge ]
  ret i1 %.3126
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(19) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::TriangularView.1684", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.446.8.copyload = load ptr, ptr %1, align 8 ; 16 uses
  %.sroa.647.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.647.8.copyload = load i64, ptr %.sroa.647.8..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !502  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !500  ; 9 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !577    ; 15 uses
  %i.g = icmp eq ptr %i.f, %.sroa.446.8.copyload
  %i.h = icmp eq i64 %i.e, %.sroa.647.8.copyload
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.k = and i64 %i.j, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = lshr exact i64 %i.j, 3
  %i.m = and i64 %i.l, 1
  %i.n = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.e)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.e, %bb.b ] ; 11 uses
  %i.o = sub nsw i64 %i.e, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.p = sdiv i64 %i.o, 2
  %i.q = shl nsw i64 %i.p, 1                      ; 2 uses
  %i.r = add nsw i64 %i.q, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.s = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %4 = ptrtoaddr ptr %.sroa.446.8.copyload to i64
  %i.t = sub i64 %4, %i.j
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !370
  %wide.load60 = load <2 x double>, ptr %i.w, align 8, !tbaa !370
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !370
  store <2 x double> %wide.load60, ptr %i.x, align 8, !tbaa !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1839

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !370
  store double %i.ab, ptr %i.z, align 8, !tbaa !370
  %i.ac = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1840

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader77 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ad = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !370
  store double %i.ah, ptr %i.af, align 8, !tbaa !370
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.ai
  %i.al = load double, ptr %i.ak, align 8, !tbaa !370
  store double %i.al, ptr %i.aj, align 8, !tbaa !370
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.am
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !370
  store double %i.ap, ptr %i.an, align 8, !tbaa !370
  %i.aq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !370
  store double %i.at, ptr %i.ar, align 8, !tbaa !370
  %i.au = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.au, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1841

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = icmp sgt i64 %i.o, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = icmp slt i64 %i.r, %i.e
  br i1 %i.aw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  %i.ay = sub i64 %i.e, %i.ax                     ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.ay, 8
  %5 = ptrtoaddr ptr %.sroa.446.8.copyload to i64
  %i.az = sub i64 %5, %i.j
  %diff.check62 = icmp ugt i64 %i.az, -32
  %or.cond75 = or i1 %min.iters.check64, %diff.check62
  br i1 %or.cond75, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec66 = and i64 %i.ay, -4                    ; 3 uses
  %i.ba = add i64 %i.r, %n.vec66
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next71, %vector.body67 ] ; 2 uses
  %i.bb = add i64 %i.r, %index68                  ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load69 = load <2 x double>, ptr %i.bd, align 8, !tbaa !370
  %wide.load70 = load <2 x double>, ptr %i.be, align 8, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %wide.load69, ptr %i.bc, align 8, !tbaa !370
  store <2 x double> %wide.load70, ptr %i.bf, align 8, !tbaa !370
  %index.next71 = add nuw i64 %index68, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.bg, label %middle.block72, label %vector.body67, !llvm.loop !1842

middle.block72:                                   ; preds = %vector.body67
  %cmp.n73 = icmp eq i64 %i.ay, %n.vec66
  br i1 %cmp.n73, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block72
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block72 ] ; 4 uses
  %i.bh = sub i64 %i.e, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter78 = and i64 %i.bh, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !370
  store double %i.bk, ptr %i.bi, align 8, !tbaa !370
  %i.bl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1843

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader76 ], [ %i.bl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.e
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !370
  store double %i.bq, ptr %i.bo, align 8, !tbaa !370
  %i.br = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !370
  store double %i.bu, ptr %i.bs, align 8, !tbaa !370
  %i.bv = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.bv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !370
  store double %i.by, ptr %i.bw, align 8, !tbaa !370
  %i.bz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !370
  store double %i.cc, ptr %i.ca, align 8, !tbaa !370
  %i.cd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cd, %i.e
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1844

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sroa.446.8.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !71
  store <2 x double> %i.cg, ptr %i.ce, align 16, !tbaa !71
  %i.ch = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.r
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1845

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block72, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.cj = icmp sgt i64 %i.c, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !501 ; 3 uses
  %xtraiter81 = and i64 %i.c, 1
  %i.cl = icmp eq i64 %i.c, 1
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.new:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %unroll_iter = and i64 %i.c, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.new
  %.027.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.new ], [ %i.dd, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.027.i.i.i.i.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !81
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.027.i.i.i.i.i.i.i.i, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = load ptr, ptr %2, align 8, !tbaa !577, !noalias !1853 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.027.i.i.i.i.i.i.i.i ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !370
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !370
  store double %i.ct, ptr %i.cq, align 8, !tbaa !370
  store double %i.cs, ptr %i.cr, align 8, !tbaa !370
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cu = or disjoint i64 %.027.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !81
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cu, %i.cx
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = load ptr, ptr %2, align 8, !tbaa !577, !noalias !1853 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !370
  %i.dc = load double, ptr %i.da, align 8, !tbaa !370
  store double %i.dc, ptr %i.cz, align 8, !tbaa !370
  store double %i.db, ptr %i.da, align 8, !tbaa !370
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dd = add nuw nsw i64 %.027.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1848

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i
  %.027.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dd, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod83 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.027.i.i.i.i.i.i.i.i.epil.init
  %i.df = load i32, ptr %i.de, align 4, !tbaa !81
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.epil = icmp eq i64 %.027.i.i.i.i.i.i.i.i.epil.init, %i.dg
  br i1 %.not.i.i.i.i.i.i.i.i.epil, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.dh = load ptr, ptr %2, align 8, !tbaa !577, !noalias !1853 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.027.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %i.dk = load double, ptr %i.di, align 8, !tbaa !370
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !370
  store double %i.dl, ptr %i.di, align 8, !tbaa !370
  store double %i.dk, ptr %i.dj, align 8, !tbaa !370
  br label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %bb.i, %.epil.preheader, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS0_IKS2_Li0ES4_EEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !369
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceINS_3MapINS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_10MatrixBaseIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit
  tail call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi5ELi0ELi1EE3runERS4_RS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(19) %2)
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !369
  br label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceINS_3MapINS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceINS_3MapINS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit, %bb.j
  %i.dp = phi i64 [ 0, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_14TranspositionsILin1ELin1EiEENS0_IKS2_Li0ES4_EELi2EEEEERS5_RKNS_9DenseBaseIT_EE.exit ], [ %.pre, %bb.j ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !368 ; 5 uses
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.dp, i64 %i.dr) ; 5 uses
  %i.ds = icmp sgt i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ds, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceINS_3MapINS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_10MatrixBaseIT_EE.exit
  %i.dt = load ptr, ptr %0, align 8, !tbaa !358   ; 3 uses
  %xtraiter85 = and i64 %.sroa.speculated.i.i.i, 1
  %i.du = icmp eq i64 %.sroa.speculated.i.i.i, 1
  br i1 %i.du, label %.epil.preheader84, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter88 = and i64 %.sroa.speculated.i.i.i, 9223372036854775806
  %i.dv = load ptr, ptr %2, align 8, !tbaa !577, !noalias !396 ; 2 uses
  br label %bb.r

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.v
end_hunk_4
begin_hunk_5_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi3ELi2EEEE5solveEv:bb.a
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x double> %i.ik, %i.lh
  %i.lj = getelementptr i8, ptr %i.kz, i64 24     ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !370
  %i.ll = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x double> %i.iz, %i.lm
  %i.lo = fadd <2 x double> %i.li, %i.ln
  %i.lp = load <2 x double>, ptr %i.le, align 1, !tbaa !71
  %i.lq = fsub <2 x double> %i.lp, %i.lo
  store <2 x double> %i.lq, ptr %i.le, align 1, !tbaa !71
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.ls = load double, ptr %i.kz, align 8, !tbaa !370
  %i.lt = fmul double %i.it, %i.ls
  %i.lu = load double, ptr %i.lj, align 8, !tbaa !370
  %i.lv = fmul double %i.je, %i.lu
  %i.lw = fadd double %i.lt, %i.lv
  %i.lx = load double, ptr %i.lr, align 8, !tbaa !370
  %i.ly = fsub double %i.lx, %i.lw
  store double %i.ly, ptr %i.lr, align 8, !tbaa !370
  %i.lz = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.kz, i64 8      ; 2 uses
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !370
  %i.mc = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x double> %i.ik, %i.md
  %i.mf = getelementptr i8, ptr %i.kz, i64 32     ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !370
  %i.mh = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x double> %i.iz, %i.mi
  %i.mk = fadd <2 x double> %i.me, %i.mj
  %i.ml = load <2 x double>, ptr %i.lz, align 8, !tbaa !71
  %i.mm = fsub <2 x double> %i.ml, %i.mk
  store <2 x double> %i.mm, ptr %i.lz, align 8, !tbaa !71
  %i.mn = getelementptr inbounds nuw i8, ptr %i.le, i64 40 ; 2 uses
  %i.mo = load double, ptr %i.ma, align 8, !tbaa !370
  %i.mp = fmul double %i.it, %i.mo
  %i.mq = load double, ptr %i.mf, align 8, !tbaa !370
  %i.mr = fmul double %i.je, %i.mq
  %i.ms = fadd double %i.mp, %i.mr
  %i.mt = load double, ptr %i.mn, align 8, !tbaa !370
  %i.mu = fsub double %i.mt, %i.ms
  store double %i.mu, ptr %i.mn, align 8, !tbaa !370
  %i.mv = getelementptr inbounds nuw i8, ptr %i.le, i64 48 ; 2 uses
  %i.mw = getelementptr i8, ptr %i.kz, i64 16     ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !370
  %i.my = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x double> %i.ik, %i.mz
  %i.nb = getelementptr i8, ptr %i.kz, i64 40     ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !370
  %i.nd = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nf = fmul <2 x double> %i.iz, %i.ne
  %i.ng = fadd <2 x double> %i.na, %i.nf
  %i.nh = load <2 x double>, ptr %i.mv, align 8, !tbaa !71
  %i.ni = fsub <2 x double> %i.nh, %i.ng
  store <2 x double> %i.ni, ptr %i.mv, align 8, !tbaa !71
  %i.nj = getelementptr inbounds nuw i8, ptr %i.le, i64 64 ; 2 uses
  %i.nk = load double, ptr %i.mw, align 8, !tbaa !370
  %i.nl = fmul double %i.it, %i.nk
  %i.nm = load double, ptr %i.nb, align 8, !tbaa !370
  %i.nn = fmul double %i.je, %i.nm
  %i.no = fadd double %i.nl, %i.nn
  %i.np = load double, ptr %i.nj, align 8, !tbaa !370
  %i.nq = fsub double %i.np, %i.no
  store double %i.nq, ptr %i.nj, align 8, !tbaa !370
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0104.0140, i64 16 ; 3 uses
  %i.ns = load ptr, ptr %i.gu, align 8, !tbaa !656
  %.not132 = icmp eq ptr %i.nr, %i.ns
  br i1 %.not132, label %._crit_edge, label %.lr.ph, !llvm.loop !1923

._crit_edge:                                      ; preds = %bb.n, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit
  %i.nt = phi ptr [ %i.kj, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ], [ %i.nr, %bb.n ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0122.0143, i64 16 ; 2 uses
  %.not131 = icmp eq ptr %i.nu, %i.nt
  br i1 %.not131, label %._crit_edge146.loopexit, label %bb.k, !llvm.loop !1924

._crit_edge153:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge149
  %i.nv = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 6 uses
  %.not71 = icmp eq ptr %i.nv, null               ; 2 uses
  br i1 %.not71, label %bb.p, label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.3, %scalar.ph ], [ %indvars.iv164.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv164
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !370
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv164 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !370
  %i.oa = fsub double %i.nz, %i.nx
  store double %i.oa, ptr %i.ny, align 8, !tbaa !370
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next165
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !370
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next165 ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !370
  %i.of = fsub double %i.oe, %i.oc
  store double %i.of, ptr %i.od, align 8, !tbaa !370
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next165.1
  %i.oh = load double, ptr %i.og, align 8, !tbaa !370
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next165.1 ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !370
  %i.ok = fsub double %i.oj, %i.oh
  store double %i.ok, ptr %i.oi, align 8, !tbaa !370
  %indvars.iv.next165.2 = add nuw nsw i64 %indvars.iv164, 3 ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next165.2
  %i.om = load double, ptr %i.ol, align 8, !tbaa !370
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next165.2 ; 2 uses
  %i.oo = load double, ptr %i.on, align 8, !tbaa !370
  %i.op = fsub double %i.oo, %i.om
  store double %i.op, ptr %i.on, align 8, !tbaa !370
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next165.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge153, label %scalar.ph, !llvm.loop !1925

bb.o:                                             ; preds = %._crit_edge153
  %i.oq = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.or = fsub double %i.oq, %i.d
  %i.os = getelementptr inbounds nuw i8, ptr %i.nv, i64 56
  store double %i.or, ptr %i.os, align 8, !tbaa !476
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge153
  %i.ot = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !172 ; 2 uses
  %i.ow = load ptr, ptr %i.af, align 8, !tbaa !608
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !441
  %i.oz = load ptr, ptr %i.ea, align 8, !tbaa !338
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !80
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = tail call noundef zeroext i1 %i.pc(ptr noundef nonnull align 8 dereferenceable(9) %i.ov, ptr noundef nonnull align 8 dereferenceable(73) %i.ow, ptr noundef %i.oy, ptr noundef %i.oz)
  br i1 %.not71, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pe = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.pf = fsub double %i.pe, %i.ot
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nv, i64 88
  store double %i.pf, ptr %i.pg, align 8, !tbaa !445
  %i.ph = load ptr, ptr %i.bn, align 8, !tbaa !608 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !433 ; 2 uses
  %i.pl = load ptr, ptr %i.pi, align 8, !tbaa !435
  %.not.i82 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not.i82, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.pm = getelementptr inbounds i8, ptr %i.pk, i64 -4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !81
  %i.po = sext i32 %i.pn to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83: ; preds = %bb.q, %bb.r
  %i.pp = phi i64 [ %i.po, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nv, i64 136
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !446
  %i.pr = load ptr, ptr %i.dk, align 8, !tbaa !610 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !433 ; 2 uses
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !435
  %.not.i84 = icmp eq ptr %i.pu, %i.pv
  br i1 %.not.i84, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4colsEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83
  %i.pw = getelementptr inbounds i8, ptr %i.pu, i64 -4
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !81
  %i.py = sext i32 %i.px to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4colsEv.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83, %bb.s
  %i.pz = phi i64 [ %i.py, %bb.s ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit83 ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nv, i64 144
  store i64 %i.pz, ptr %i.qa, align 8, !tbaa !477
  %i.qb = add nsw i64 %i.pz, %i.pp
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nv, i64 128
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !447
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4colsEv.exit, %bb.p
  br i1 %i.pd, label %bb.u, label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE8multiplyERPdPKd.exit

bb.u:                                             ; preds = %bb.t
  %i.qd = load ptr, ptr %i.ox, align 8, !tbaa !441 ; 9 uses
  %i.qe = load ptr, ptr %i.de, align 8, !tbaa !338 ; 10 uses
  %i.qf = load i32, ptr %i.dg, align 8, !tbaa !633 ; 4 uses
  %i.qg = sext i32 %i.qf to i64                   ; 3 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qd, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.qg ; 2 uses
  %i.qj = load ptr, ptr %i.ec, align 8, !tbaa !440
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.qj, i64 %i.qg
  %i.ql = icmp sgt i32 %i.qf, 0
  br i1 %i.ql, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %bb.u
  %wide.trip.count170 = zext nneg i32 %i.qf to i64 ; 5 uses
  %min.iters.check228 = icmp ult i32 %i.qf, 6
  %1 = ptrtoaddr ptr %i.qe to i64
  %2 = ptrtoaddr ptr %i.qd to i64
  %i.qm = sub i64 %2, %1
  %diff.check = icmp ugt i64 %i.qm, -32
  %or.cond = select i1 %min.iters.check228, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph156.preheader239, label %vector.ph229

vector.ph229:                                     ; preds = %.lr.ph156.preheader
  %n.vec230 = and i64 %wide.trip.count170, 2147483644 ; 3 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next235, %vector.body231 ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %index232 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %wide.load233 = load <2 x double>, ptr %i.qn, align 8, !tbaa !370
  %wide.load234 = load <2 x double>, ptr %i.qo, align 8, !tbaa !370
  %i.qp = fneg <2 x double> %wide.load233
  %i.qq = fneg <2 x double> %wide.load234
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %index232 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store <2 x double> %i.qp, ptr %i.qr, align 8, !tbaa !370
  store <2 x double> %i.qq, ptr %i.qs, align 8, !tbaa !370
  %index.next235 = add nuw i64 %index232, 4       ; 2 uses
  %i.qt = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.qt, label %middle.block236, label %vector.body231, !llvm.loop !1926

middle.block236:                                  ; preds = %vector.body231
  %cmp.n237 = icmp eq i64 %n.vec230, %wide.trip.count170
  br i1 %cmp.n237, label %._crit_edge157, label %.lr.ph156.preheader239

.lr.ph156.preheader239:                           ; preds = %.lr.ph156.preheader, %middle.block236
  %indvars.iv167.ph = phi i64 [ 0, %.lr.ph156.preheader ], [ %n.vec230, %middle.block236 ] ; 3 uses
  %xtraiter243 = and i64 %wide.trip.count170, 3   ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader239, %.lr.ph156.prol
  %indvars.iv167.prol = phi i64 [ %indvars.iv.next168.prol, %.lr.ph156.prol ], [ %indvars.iv167.ph, %.lr.ph156.preheader239 ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader239 ]
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv167.prol
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !370
  %i.qw = fneg double %i.qv
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv167.prol
  store double %i.qw, ptr %i.qx, align 8, !tbaa !370
  %indvars.iv.next168.prol = add nuw nsw i64 %indvars.iv167.prol, 1 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !1927

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader239
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %.lr.ph156.preheader239 ], [ %indvars.iv.next168.prol, %.lr.ph156.prol ]
  %i.qy = sub nsw i64 %indvars.iv167.ph, %wide.trip.count170
  %i.qz = icmp ugt i64 %i.qy, -4
  br i1 %i.qz, label %._crit_edge157, label %.lr.ph156

._crit_edge157:                                   ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block236, %bb.u
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !634
  %i.rc = sext i32 %i.rb to i64
  %i.rd = shl nsw i64 %i.rc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qi, ptr align 8 %i.qk, i64 %i.rd, i1 false)
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !593 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !1945, !nonnull !396, !align !469 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !433 ; 2 uses
  %i.rk = load ptr, ptr %i.rh, align 8, !tbaa !435
  %.not.i.i = icmp eq ptr %i.rj, %i.rk
  br i1 %.not.i.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge157
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 -4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !81
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i: ; preds = %bb.v, %._crit_edge157
  %i.rn = phi i32 [ %i.rm, %bb.v ], [ 0, %._crit_edge157 ] ; 2 uses
  %.not.i85 = icmp eq ptr %i.qe, null
  br i1 %.not.i85, label %bb.w, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i

bb.w:                                             ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i
  %i.ro = sext i32 %i.rn to i64
  %i.rp = icmp slt i32 %i.rn, 0
  %i.rq = shl nsw i64 %i.ro, 3                    ; 2 uses
  %i.rr = select i1 %i.rp, i64 -1, i64 %i.rq
  %i.rs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.rr) #39 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rs, i8 0, i64 %i.rq, i1 false)
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i: ; preds = %bb.w, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i
  %.0130 = phi ptr [ %i.rs, %bb.w ], [ %i.qi, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4colsEv.exit.i ] ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rf, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rf, i64 24 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !597 ; 2 uses
  %i.rw = load ptr, ptr %i.rt, align 8, !tbaa !596 ; 2 uses
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = sdiv exact i64 %i.rz, 24
  %i.sb = trunc i64 %i.sa to i32
  %i.sc = icmp sgt i32 %i.sb, 0
  br i1 %i.sc, label %.lr.ph33.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE13rightMultiplyERPdPKd.exit

.lr.ph33.i:                                       ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i, %._crit_edge.i89
  %i.sd = phi ptr [ %i.sr, %._crit_edge.i89 ], [ %i.rw, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i ] ; 2 uses
  %i.se = phi ptr [ %i.ss, %._crit_edge.i89 ], [ %i.rv, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i ]
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i90, %._crit_edge.i89 ], [ 0, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE4rowsEv.exit.i ] ; 5 uses
  %.not.i17.i = icmp eq i64 %indvars.iv.i86, 0
  br i1 %.not.i17.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph33.i
  %i.sf = load ptr, ptr %i.rg, align 8, !tbaa !1945, !nonnull !396, !align !469
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !435
  %i.sh = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv.i86
  %i.si = getelementptr i8, ptr %i.sh, i64 -4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !81
  %i.sk = sext i32 %i.sj to i64
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i: ; preds = %bb.x, %.lr.ph33.i
  %i.sl = phi i64 [ %i.sk, %bb.x ], [ 0, %.lr.ph33.i ]
  %i.sm = getelementptr inbounds nuw [24 x i8], ptr %i.sd, i64 %indvars.iv.i86 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !656 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !656
  %.not2930.i = icmp eq ptr %i.sn, %i.sp
  br i1 %.not2930.i, label %._crit_edge.i89, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i
  %i.sq = getelementptr inbounds [8 x i8], ptr %.0130, i64 %i.sl ; 2 uses
  br label %bb.y

._crit_edge.loopexit.i:                           ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i
  %.pre.i88 = load ptr, ptr %i.ru, align 8, !tbaa !597
  br label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %._crit_edge.loopexit.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i
  %i.sr = phi ptr [ %i.uk, %._crit_edge.loopexit.i ], [ %i.sd, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i ] ; 2 uses
  %i.ss = phi ptr [ %.pre.i88, %._crit_edge.loopexit.i ], [ %i.se, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14colBaseOfBlockEi.exit.i ] ; 2 uses
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %i.st = ptrtoint ptr %i.ss to i64
  %i.su = ptrtoint ptr %i.sr to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = sdiv exact i64 %i.sv, 24
  %i.sx = shl i64 %i.sw, 32
  %i.sy = ashr exact i64 %i.sx, 32
  %i.sz = icmp slt i64 %indvars.iv.next.i90, %i.sy
  br i1 %i.sz, label %.lr.ph33.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE13rightMultiplyERPdPKd.exit, !llvm.loop !1928

bb.y:                                             ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i, %.lr.ph.i87
  %.sroa.019.031.i = phi ptr [ %i.sn, %.lr.ph.i87 ], [ %i.uj, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i ] ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.019.031.i, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !1936 ; 4 uses
  %i.tc = load i32, ptr %.sroa.019.031.i, align 8, !tbaa !1935 ; 2 uses
  %.not.i18.i = icmp eq i32 %i.tc, 0
  br i1 %.not.i18.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.td = load ptr, ptr %i.rf, align 8, !tbaa !1941, !nonnull !396, !align !469
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !435
  %i.tf = sext i32 %i.tc to i64
  %i.tg = getelementptr [4 x i8], ptr %i.te, i64 %i.tf
  %i.th = getelementptr i8, ptr %i.tg, i64 -4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !81
  %i.tj = sext i32 %i.ti to i64
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14rowBaseOfBlockEi.exit.i: ; preds = %bb.z, %bb.y
  %i.tk = phi i64 [ %i.tj, %bb.z ], [ 0, %bb.y ]
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.tk ; 2 uses
  %i.tm = load <2 x double>, ptr %i.tb, align 1, !tbaa !71
  %i.tn = load <2 x double>, ptr %i.tl, align 1, !tbaa !71 ; 2 uses
  %i.to = fmul <2 x double> %i.tm, %i.tn          ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !370
  %i.tr = getelementptr i8, ptr %i.tl, i64 16
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !370
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.tu = load <2 x double>, ptr %i.tt, align 8, !tbaa !71
  %i.tv = fmul <2 x double> %i.tn, %i.tu          ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !370
  %i.ty = shufflevector <2 x double> %i.to, <2 x double> %i.tv, <2 x i32> <i32 0, i32 2>
  %i.tz = shufflevector <2 x double> %i.to, <2 x double> %i.tv, <2 x i32> <i32 1, i32 3>
  %i.ua = fadd <2 x double> %i.ty, %i.tz
  %i.ub = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.uc = shufflevector <2 x double> %i.ub, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ud = insertelement <2 x double> poison, double %i.tq, i64 0
  %i.ue = insertelement <2 x double> %i.ud, double %i.tx, i64 1
  %i.uf = fmul <2 x double> %i.uc, %i.ue
  %i.ug = fadd <2 x double> %i.ua, %i.uf
  %i.uh = load <2 x double>, ptr %i.sq, align 1, !tbaa !71
  %i.ui = fadd <2 x double> %i.uh, %i.ug
  store <2 x double> %i.ui, ptr %i.sq, align 1, !tbaa !71
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.019.031.i, i64 16 ; 2 uses
  %i.uk = load ptr, ptr %i.rt, align 8, !tbaa !596 ; 2 uses
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.uk, i64 %indvars.iv.i86
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !656
  %.not29.i = icmp eq ptr %i.uj, %i.un
end_hunk_5
begin_hunk_6_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi6ELi3EEEE5solveEv:bb.a
  %i.aav = fadd <2 x double> %i.aaq, %i.aau
  %i.aaw = load double, ptr %i.zn, align 8, !tbaa !370
  %i.aax = insertelement <2 x double> poison, double %i.aaw, i64 0
  %i.aay = shufflevector <2 x double> %i.aax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aaz = fmul <2 x double> %i.oe, %i.aay
  %i.aba = fadd <2 x double> %i.aav, %i.aaz
  %i.abb = load <2 x double>, ptr %i.aam, align 16, !tbaa !71
  %i.abc = fsub <2 x double> %i.abb, %i.aba
  store <2 x double> %i.abc, ptr %i.aam, align 16, !tbaa !71
  %i.abd = getelementptr inbounds nuw i8, ptr %i.qu, i64 240 ; 2 uses
  %i.abe = getelementptr i8, ptr %i.qp, i64 40    ; 3 uses
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !370
  %i.abg = insertelement <2 x double> poison, double %i.abf, i64 0
  %i.abh = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abi = fmul <2 x double> %i.lt, %i.abh
  %i.abj = getelementptr i8, ptr %i.qp, i64 88    ; 3 uses
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !370
  %i.abl = insertelement <2 x double> poison, double %i.abk, i64 0
  %i.abm = shufflevector <2 x double> %i.abl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abn = fmul <2 x double> %i.na, %i.abm
  %i.abo = fadd <2 x double> %i.abi, %i.abn
  %i.abp = getelementptr i8, ptr %i.qp, i64 136   ; 3 uses
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !370
  %i.abr = insertelement <2 x double> poison, double %i.abq, i64 0
  %i.abs = shufflevector <2 x double> %i.abr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abt = fmul <2 x double> %i.nu, %i.abs
  %i.abu = fadd <2 x double> %i.abo, %i.abt
  %i.abv = load <2 x double>, ptr %i.abd, align 16, !tbaa !71
  %i.abw = fsub <2 x double> %i.abv, %i.abu
  store <2 x double> %i.abw, ptr %i.abd, align 16, !tbaa !71
  %i.abx = getelementptr inbounds nuw i8, ptr %i.qu, i64 256 ; 2 uses
  %i.aby = load double, ptr %i.abe, align 8, !tbaa !370
  %i.abz = insertelement <2 x double> poison, double %i.aby, i64 0
  %i.aca = shufflevector <2 x double> %i.abz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acb = fmul <2 x double> %i.me, %i.aca
  %i.acc = load double, ptr %i.abj, align 8, !tbaa !370
  %i.acd = insertelement <2 x double> poison, double %i.acc, i64 0
  %i.ace = shufflevector <2 x double> %i.acd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acf = fmul <2 x double> %i.nf, %i.ace
  %i.acg = fadd <2 x double> %i.acb, %i.acf
  %i.ach = load double, ptr %i.abp, align 8, !tbaa !370
  %i.aci = insertelement <2 x double> poison, double %i.ach, i64 0
  %i.acj = shufflevector <2 x double> %i.aci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ack = fmul <2 x double> %i.nz, %i.acj
  %i.acl = fadd <2 x double> %i.acg, %i.ack
  %i.acm = load <2 x double>, ptr %i.abx, align 16, !tbaa !71
  %i.acn = fsub <2 x double> %i.acm, %i.acl
  store <2 x double> %i.acn, ptr %i.abx, align 16, !tbaa !71
  %i.aco = getelementptr inbounds nuw i8, ptr %i.qu, i64 272 ; 2 uses
  %i.acp = load double, ptr %i.abe, align 8, !tbaa !370
  %i.acq = insertelement <2 x double> poison, double %i.acp, i64 0
  %i.acr = shufflevector <2 x double> %i.acq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acs = fmul <2 x double> %i.mp, %i.acr
  %i.act = load double, ptr %i.abj, align 8, !tbaa !370
  %i.acu = insertelement <2 x double> poison, double %i.act, i64 0
  %i.acv = shufflevector <2 x double> %i.acu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acw = fmul <2 x double> %i.nk, %i.acv
  %i.acx = fadd <2 x double> %i.acs, %i.acw
  %i.acy = load double, ptr %i.abp, align 8, !tbaa !370
  %i.acz = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.ada = shufflevector <2 x double> %i.acz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adb = fmul <2 x double> %i.oe, %i.ada
  %i.adc = fadd <2 x double> %i.acx, %i.adb
  %i.add = load <2 x double>, ptr %i.aco, align 16, !tbaa !71
  %i.ade = fsub <2 x double> %i.add, %i.adc
  store <2 x double> %i.ade, ptr %i.aco, align 16, !tbaa !71
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.097.0136, i64 16 ; 3 uses
  %i.adg = load ptr, ptr %i.kk, align 8, !tbaa !741
  %.not128 = icmp eq ptr %i.adf, %i.adg
  br i1 %.not128, label %._crit_edge, label %.lr.ph, !llvm.loop !2168

._crit_edge:                                      ; preds = %bb.n, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit
  %i.adh = phi ptr [ %i.pz, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ], [ %i.adf, %bb.n ]
  %i.adi = getelementptr inbounds nuw i8, ptr %.sroa.0115.0139, i64 16 ; 2 uses
  %.not127 = icmp eq ptr %i.adi, %i.adh
  br i1 %.not127, label %._crit_edge142, label %bb.k, !llvm.loop !2169

._crit_edge149:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge145
  %i.adj = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 6 uses
  %.not71 = icmp eq ptr %i.adj, null              ; 2 uses
  br i1 %.not71, label %bb.p, label %bb.o

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.3, %scalar.ph ], [ %indvars.iv160.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv160
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !370
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv160 ; 2 uses
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !370
  %i.ado = fsub double %i.adn, %i.adl
  store double %i.ado, ptr %i.adm, align 8, !tbaa !370
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next161
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !370
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next161 ; 2 uses
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !370
  %i.adt = fsub double %i.ads, %i.adq
  store double %i.adt, ptr %i.adr, align 8, !tbaa !370
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next161.1
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !370
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next161.1 ; 2 uses
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !370
  %i.ady = fsub double %i.adx, %i.adv
  store double %i.ady, ptr %i.adw, align 8, !tbaa !370
  %indvars.iv.next161.2 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.next161.2
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !370
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next161.2 ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !370
  %i.aed = fsub double %i.aec, %i.aea
  store double %i.aed, ptr %i.aeb, align 8, !tbaa !370
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next161.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge149, label %scalar.ph, !llvm.loop !2170

bb.o:                                             ; preds = %._crit_edge149
  %i.aee = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aef = fsub double %i.aee, %i.e
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adj, i64 56
  store double %i.aef, ptr %i.aeg, align 8, !tbaa !476
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge149
  %i.aeh = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !238 ; 2 uses
  %i.aek = load ptr, ptr %i.ag, align 8, !tbaa !701
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !441
  %i.aen = load ptr, ptr %i.eb, align 8, !tbaa !338
  %i.aeo = load ptr, ptr %i.aej, align 8, !tbaa !80
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = tail call noundef zeroext i1 %i.aeq(ptr noundef nonnull align 8 dereferenceable(9) %i.aej, ptr noundef nonnull align 8 dereferenceable(73) %i.aek, ptr noundef %i.aem, ptr noundef %i.aen)
  br i1 %.not71, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aes = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aet = fsub double %i.aes, %i.aeh
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adj, i64 88
  store double %i.aet, ptr %i.aeu, align 8, !tbaa !445
  %i.aev = load ptr, ptr %i.bo, align 8, !tbaa !701 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !433 ; 2 uses
  %i.aez = load ptr, ptr %i.aew, align 8, !tbaa !435
  %.not.i82 = icmp eq ptr %i.aey, %i.aez
  br i1 %.not.i82, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.afa = getelementptr inbounds i8, ptr %i.aey, i64 -4
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !81
  %i.afc = sext i32 %i.afb to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83: ; preds = %bb.q, %bb.r
  %i.afd = phi i64 [ %i.afc, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adj, i64 136
  store i64 %i.afd, ptr %i.afe, align 8, !tbaa !446
  %i.aff = load ptr, ptr %i.dl, align 8, !tbaa !608 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !433 ; 2 uses
  %i.afj = load ptr, ptr %i.afg, align 8, !tbaa !435
  %.not.i84 = icmp eq ptr %i.afi, %i.afj
  br i1 %.not.i84, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83
  %i.afk = getelementptr inbounds i8, ptr %i.afi, i64 -4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !81
  %i.afm = sext i32 %i.afl to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83, %bb.s
  %i.afn = phi i64 [ %i.afm, %bb.s ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit83 ] ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.adj, i64 144
  store i64 %i.afn, ptr %i.afo, align 8, !tbaa !477
  %i.afp = add nsw i64 %i.afn, %i.afd
  %i.afq = getelementptr inbounds nuw i8, ptr %i.adj, i64 128
  store i64 %i.afp, ptr %i.afq, align 8, !tbaa !447
  br label %bb.t

bb.t:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, %bb.p
  br i1 %i.aer, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.afr = load ptr, ptr %i.ael, align 8, !tbaa !441 ; 8 uses
  %i.afs = load ptr, ptr %i.df, align 8, !tbaa !338 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.aft = load i32, ptr %i.dh, align 8, !tbaa !719 ; 4 uses
  %i.afu = sext i32 %i.aft to i64                 ; 3 uses
  %i.afv = getelementptr inbounds [8 x i8], ptr %i.afr, i64 %i.afu ; 2 uses
  store ptr %i.afv, ptr %i.a, align 8, !tbaa !338
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.afs, i64 %i.afu ; 2 uses
  %i.afx = load ptr, ptr %i.ed, align 8, !tbaa !440
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.afx, i64 %i.afu
  %i.afz = icmp sgt i32 %i.aft, 0
  br i1 %i.afz, label %.lr.ph152.preheader, label %._crit_edge153

.lr.ph152.preheader:                              ; preds = %bb.u
  %wide.trip.count166 = zext nneg i32 %i.aft to i64 ; 5 uses
  %min.iters.check237 = icmp ult i32 %i.aft, 6
  %1 = ptrtoaddr ptr %i.afs to i64
  %2 = ptrtoaddr ptr %i.afr to i64
  %i.aga = sub i64 %2, %1
  %diff.check = icmp ugt i64 %i.aga, -32
  %or.cond = select i1 %min.iters.check237, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph152.preheader252, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph152.preheader
  %n.vec239 = and i64 %wide.trip.count166, 2147483644 ; 3 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next244, %vector.body240 ] ; 3 uses
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.afr, i64 %index241 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %wide.load242 = load <2 x double>, ptr %i.agb, align 8, !tbaa !370
  %wide.load243 = load <2 x double>, ptr %i.agc, align 8, !tbaa !370
  %i.agd = fneg <2 x double> %wide.load242
  %i.age = fneg <2 x double> %wide.load243
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %index241 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  store <2 x double> %i.agd, ptr %i.agf, align 8, !tbaa !370
  store <2 x double> %i.age, ptr %i.agg, align 8, !tbaa !370
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.agh = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.agh, label %middle.block245, label %vector.body240, !llvm.loop !2171

middle.block245:                                  ; preds = %vector.body240
  %cmp.n246 = icmp eq i64 %n.vec239, %wide.trip.count166
  br i1 %cmp.n246, label %._crit_edge153, label %.lr.ph152.preheader252

.lr.ph152.preheader252:                           ; preds = %.lr.ph152.preheader, %middle.block245
  %indvars.iv163.ph = phi i64 [ 0, %.lr.ph152.preheader ], [ %n.vec239, %middle.block245 ] ; 3 uses
  %xtraiter256 = and i64 %wide.trip.count166, 3   ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph152.prol.loopexit, label %.lr.ph152.prol

.lr.ph152.prol:                                   ; preds = %.lr.ph152.preheader252, %.lr.ph152.prol
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %.lr.ph152.prol ], [ %indvars.iv163.ph, %.lr.ph152.preheader252 ] ; 3 uses
  %prol.iter258 = phi i64 [ %prol.iter258.next, %.lr.ph152.prol ], [ 0, %.lr.ph152.preheader252 ]
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.afr, i64 %indvars.iv163.prol
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !370
  %i.agk = fneg double %i.agj
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv163.prol
  store double %i.agk, ptr %i.agl, align 8, !tbaa !370
  %indvars.iv.next164.prol = add nuw nsw i64 %indvars.iv163.prol, 1 ; 2 uses
  %prol.iter258.next = add i64 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i64 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph152.prol.loopexit, label %.lr.ph152.prol, !llvm.loop !2172

.lr.ph152.prol.loopexit:                          ; preds = %.lr.ph152.prol, %.lr.ph152.preheader252
  %indvars.iv163.unr = phi i64 [ %indvars.iv163.ph, %.lr.ph152.preheader252 ], [ %indvars.iv.next164.prol, %.lr.ph152.prol ]
  %i.agm = sub nsw i64 %indvars.iv163.ph, %wide.trip.count166
  %i.agn = icmp ugt i64 %i.agm, -4
  br i1 %i.agn, label %._crit_edge153, label %.lr.ph152

._crit_edge153:                                   ; preds = %.lr.ph152.prol.loopexit, %.lr.ph152, %middle.block245, %bb.u
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !720
  %i.agq = sext i32 %i.agp to i64
  %i.agr = shl nsw i64 %i.agq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afw, ptr align 8 %i.afy, i64 %i.agr, i1 false)
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !687 ; 4 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8 ; 2 uses
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !2189, !nonnull !396, !align !469 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !433 ; 2 uses
  %i.agy = load ptr, ptr %i.agv, align 8, !tbaa !435
  %.not.i.i = icmp eq ptr %i.agx, %i.agy
  br i1 %.not.i.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge153
  %i.agz = getelementptr inbounds i8, ptr %i.agx, i64 -4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !81
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i: ; preds = %bb.v, %._crit_edge153
  %i.ahb = phi i32 [ %i.aha, %bb.v ], [ 0, %._crit_edge153 ] ; 2 uses
  %.not.i85 = icmp eq ptr %i.afs, null
  br i1 %.not.i85, label %bb.w, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i

bb.w:                                             ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = icmp slt i32 %i.ahb, 0
  %i.ahe = shl nsw i64 %i.ahc, 3                  ; 2 uses
  %i.ahf = select i1 %i.ahd, i64 -1, i64 %i.ahe
  %i.ahg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ahf) #39 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ahg, i8 0, i64 %i.ahe, i1 false)
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i: ; preds = %bb.w, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i
  %.0126 = phi ptr [ %i.ahg, %bb.w ], [ %i.afw, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4colsEv.exit.i ] ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agt, i64 16 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agt, i64 24 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !691 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahh, align 8, !tbaa !690 ; 2 uses
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = ptrtoint ptr %i.ahk to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  %i.aho = sdiv exact i64 %i.ahn, 24
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = icmp sgt i32 %i.ahp, 0
  br i1 %i.ahq, label %.lr.ph33.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE13rightMultiplyERPdPKd.exit

.lr.ph33.i:                                       ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i, %._crit_edge.i89
  %i.ahr = phi ptr [ %i.aig, %._crit_edge.i89 ], [ %i.ahk, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i ] ; 2 uses
  %i.ahs = phi ptr [ %i.aih, %._crit_edge.i89 ], [ %i.ahj, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i ]
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i90, %._crit_edge.i89 ], [ 0, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE4rowsEv.exit.i ] ; 5 uses
  %.not.i17.i = icmp eq i64 %indvars.iv.i86, 0
  br i1 %.not.i17.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph33.i
  %i.aht = load ptr, ptr %i.agu, align 8, !tbaa !2189, !nonnull !396, !align !469
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !435
  %i.ahv = getelementptr [4 x i8], ptr %i.ahu, i64 %indvars.iv.i86
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 -4
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !81
  %i.ahy = sext i32 %i.ahx to i64
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i: ; preds = %bb.x, %.lr.ph33.i
  %i.ahz = phi i64 [ %i.ahy, %bb.x ], [ 0, %.lr.ph33.i ]
  %i.aia = getelementptr inbounds nuw [24 x i8], ptr %i.ahr, i64 %indvars.iv.i86 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !741 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !741
  %.not2930.i = icmp eq ptr %i.aib, %i.aid
  br i1 %.not2930.i, label %._crit_edge.i89, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i
  %i.aie = getelementptr inbounds [8 x i8], ptr %.0126, i64 %i.ahz ; 3 uses
  %i.aif = getelementptr i8, ptr %i.aie, i64 16   ; 2 uses
  %.promoted.i = load double, ptr %i.aif, align 8, !tbaa !370
  br label %bb.y

._crit_edge.loopexit.i:                           ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i
  %.pre.i88 = load ptr, ptr %i.ahi, align 8, !tbaa !691
  br label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %._crit_edge.loopexit.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i
  %i.aig = phi ptr [ %i.akv, %._crit_edge.loopexit.i ], [ %i.ahr, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i ] ; 2 uses
  %i.aih = phi ptr [ %.pre.i88, %._crit_edge.loopexit.i ], [ %i.ahs, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14colBaseOfBlockEi.exit.i ] ; 2 uses
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = ptrtoint ptr %i.aig to i64
  %i.aik = sub i64 %i.aii, %i.aij
  %i.ail = sdiv exact i64 %i.aik, 24
  %i.aim = shl i64 %i.ail, 32
  %i.ain = ashr exact i64 %i.aim, 32
  %i.aio = icmp slt i64 %indvars.iv.next.i90, %i.ain
  br i1 %i.aio, label %.lr.ph33.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE13rightMultiplyERPdPKd.exit, !llvm.loop !2173

bb.y:                                             ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i, %.lr.ph.i87
  %i.aip = phi double [ %.promoted.i, %.lr.ph.i87 ], [ %i.akt, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i ]
  %.sroa.019.031.i = phi ptr [ %i.aib, %.lr.ph.i87 ], [ %i.aku, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.019.031.i, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !2180 ; 9 uses
  %i.ais = load i32, ptr %.sroa.019.031.i, align 8, !tbaa !2179 ; 2 uses
  %.not.i18.i = icmp eq i32 %i.ais, 0
  br i1 %.not.i18.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ait = load ptr, ptr %i.agt, align 8, !tbaa !2185, !nonnull !396, !align !469
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !435
  %i.aiv = sext i32 %i.ais to i64
  %i.aiw = getelementptr [4 x i8], ptr %i.aiu, i64 %i.aiv
  %i.aix = getelementptr i8, ptr %i.aiw, i64 -4
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !81
  %i.aiz = sext i32 %i.aiy to i64
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi3ELi0ELi6ELi3EEEE14rowBaseOfBlockEi.exit.i: ; preds = %bb.z, %bb.y
  %i.aja = phi i64 [ %i.aiz, %bb.z ], [ 0, %bb.y ]
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.afs, i64 %i.aja ; 3 uses
  %i.ajc = load <2 x double>, ptr %i.air, align 1, !tbaa !71
  %i.ajd = load <2 x double>, ptr %i.ajb, align 1, !tbaa !71 ; 3 uses
  %i.aje = fmul <2 x double> %i.ajc, %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.air, i64 16
  %i.ajg = load <2 x double>, ptr %i.ajf, align 1, !tbaa !71
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16
  %i.aji = load <2 x double>, ptr %i.ajh, align 1, !tbaa !71 ; 3 uses
  %i.ajj = fmul <2 x double> %i.ajg, %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.air, i64 32
  %i.ajl = load <2 x double>, ptr %i.ajk, align 1, !tbaa !71
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajb, i64 32
  %i.ajn = load <2 x double>, ptr %i.ajm, align 1, !tbaa !71 ; 3 uses
  %i.ajo = fmul <2 x double> %i.ajl, %i.ajn
  %i.ajp = fadd <2 x double> %i.ajj, %i.ajo
  %i.ajq = fadd <2 x double> %i.aje, %i.ajp       ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.air, i64 48
  %i.ajs = load <2 x double>, ptr %i.ajr, align 1, !tbaa !71
  %i.ajt = fmul <2 x double> %i.ajd, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.air, i64 64
  %i.ajv = load <2 x double>, ptr %i.aju, align 1, !tbaa !71
  %i.ajw = fmul <2 x double> %i.aji, %i.ajv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.air, i64 80
  %i.ajy = load <2 x double>, ptr %i.ajx, align 1, !tbaa !71
  %i.ajz = fmul <2 x double> %i.ajn, %i.ajy
  %i.aka = fadd <2 x double> %i.ajw, %i.ajz
  %i.akb = fadd <2 x double> %i.ajt, %i.aka       ; 2 uses
  %i.akc = shufflevector <2 x double> %i.ajq, <2 x double> %i.akb, <2 x i32> <i32 0, i32 2>
end_hunk_6
begin_hunk_7_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEE5solveEv:bb.a
  %i.te = fmul <2 x double> %i.nv, %i.td
  %i.tf = fadd <2 x double> %i.sz, %i.te
  %i.tg = getelementptr i8, ptr %i.sv, i64 112    ; 4 uses
  %i.th = load double, ptr %i.tg, align 8, !tbaa !370
  %i.ti = insertelement <2 x double> poison, double %i.th, i64 0
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tk = fmul <2 x double> %i.oy, %i.tj
  %i.tl = fadd <2 x double> %i.tf, %i.tk
  %i.tm = load <2 x double>, ptr %i.su, align 1, !tbaa !71
  %i.tn = fsub <2 x double> %i.tm, %i.tl
  store <2 x double> %i.tn, ptr %i.su, align 1, !tbaa !71
  %i.to = getelementptr i8, ptr %i.sr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tp = load double, ptr %i.sv, align 8, !tbaa !370
  %i.tq = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.tr = shufflevector <2 x double> %i.tq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = fmul <2 x double> %i.ml, %i.tr
  %i.tt = load double, ptr %i.ta, align 8, !tbaa !370
  %i.tu = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.tv = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tw = fmul <2 x double> %i.oa, %i.tv
  %i.tx = fadd <2 x double> %i.ts, %i.tw
  %i.ty = load double, ptr %i.tg, align 8, !tbaa !370
  %i.tz = insertelement <2 x double> poison, double %i.ty, i64 0
  %i.ua = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ub = fmul <2 x double> %i.pd, %i.ua
  %i.uc = fadd <2 x double> %i.tx, %i.ub
  %i.ud = load <2 x double>, ptr %i.to, align 1, !tbaa !71
  %i.ue = fsub <2 x double> %i.ud, %i.uc
  store <2 x double> %i.ue, ptr %i.to, align 1, !tbaa !71
  %i.uf = getelementptr i8, ptr %i.ss, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ug = load double, ptr %i.sv, align 8, !tbaa !370
  %i.uh = insertelement <2 x double> poison, double %i.ug, i64 0
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uj = fmul <2 x double> %i.mw, %i.ui
  %i.uk = load double, ptr %i.ta, align 8, !tbaa !370
  %i.ul = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.um = shufflevector <2 x double> %i.ul, <2 x double> poison, <2 x i32> zeroinitializer
  %i.un = fmul <2 x double> %i.of, %i.um
  %i.uo = fadd <2 x double> %i.uj, %i.un
  %i.up = load double, ptr %i.tg, align 8, !tbaa !370
  %i.uq = insertelement <2 x double> poison, double %i.up, i64 0
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = fmul <2 x double> %i.pi, %i.ur
  %i.ut = fadd <2 x double> %i.uo, %i.us
  %i.uu = load <2 x double>, ptr %i.uf, align 1, !tbaa !71
  %i.uv = fsub <2 x double> %i.uu, %i.ut
  store <2 x double> %i.uv, ptr %i.uf, align 1, !tbaa !71
  %i.uw = getelementptr i8, ptr %i.st, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ux = load double, ptr %i.sv, align 8, !tbaa !370
  %i.uy = fmul double %i.nh, %i.ux
  %i.uz = load double, ptr %i.ta, align 8, !tbaa !370
  %i.va = fmul double %i.ok, %i.uz
  %i.vb = load double, ptr %i.tg, align 8, !tbaa !370
  %i.vc = fmul double %i.pn, %i.vb
  %i.vd = fadd double %i.va, %i.vc
  %i.ve = fadd double %i.uy, %i.vd
  %i.vf = load double, ptr %i.uw, align 8, !tbaa !370
  %i.vg = fsub double %i.vf, %i.ve
  store double %i.vg, ptr %i.uw, align 8, !tbaa !370
  %i.vh = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.vh, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEENS_10MatrixBaseEEmIINS_7ProductINS1_IdLi7ELi3ELi0ELi7ELi3EEENS_9TransposeIKS7_EELi0EEEEERS2_RKNS3_IT_EE.exit, label %bb.o, !llvm.loop !2401

_ZN5Eigen7NoAliasINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEENS_10MatrixBaseEEmIINS_7ProductINS1_IdLi7ELi3ELi0ELi7ELi3EEENS_9TransposeIKS7_EELi0EEEEERS2_RKNS3_IT_EE.exit: ; preds = %bb.o
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.089.0175, i64 16 ; 3 uses
  %i.vj = load ptr, ptr %i.kl, align 8, !tbaa !815
  %.not167 = icmp eq ptr %i.vi, %i.vj
  br i1 %.not167, label %._crit_edge, label %.lr.ph, !llvm.loop !2402

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEENS_10MatrixBaseEEmIINS_7ProductINS1_IdLi7ELi3ELi0ELi7ELi3EEENS_9TransposeIKS7_EELi0EEEEERS2_RKNS3_IT_EE.exit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit
  %i.vk = phi ptr [ %i.rv, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ], [ %i.vi, %_ZN5Eigen7NoAliasINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEENS_10MatrixBaseEEmIINS_7ProductINS1_IdLi7ELi3ELi0ELi7ELi3EEENS_9TransposeIKS7_EELi0EEEEERS2_RKNS3_IT_EE.exit ]
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.0107.0177, i64 16 ; 2 uses
  %.not166 = icmp eq ptr %i.vl, %i.vk
  br i1 %.not166, label %._crit_edge180, label %bb.k, !llvm.loop !2403

._crit_edge187:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge183
  %i.vm = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 6 uses
  %.not71 = icmp eq ptr %i.vm, null               ; 2 uses
  br i1 %.not71, label %bb.q, label %bb.p

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.3, %scalar.ph ], [ %indvars.iv197.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv197
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !370
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv197 ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !370
  %i.vr = fsub double %i.vq, %i.vo
  store double %i.vr, ptr %i.vp, align 8, !tbaa !370
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next198
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !370
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next198 ; 2 uses
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !370
  %i.vw = fsub double %i.vv, %i.vt
  store double %i.vw, ptr %i.vu, align 8, !tbaa !370
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next198.1
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !370
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next198.1 ; 2 uses
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !370
  %i.wb = fsub double %i.wa, %i.vy
  store double %i.wb, ptr %i.vz, align 8, !tbaa !370
  %indvars.iv.next198.2 = add nuw nsw i64 %indvars.iv197, 3 ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next198.2
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !370
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next198.2 ; 2 uses
  %i.wf = load double, ptr %i.we, align 8, !tbaa !370
  %i.wg = fsub double %i.wf, %i.wd
  store double %i.wg, ptr %i.we, align 8, !tbaa !370
  %indvars.iv.next198.3 = add nuw nsw i64 %indvars.iv197, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next198.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge187, label %scalar.ph, !llvm.loop !2404

bb.p:                                             ; preds = %._crit_edge187
  %i.wh = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.wi = fsub double %i.wh, %i.f
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vm, i64 56
  store double %i.wi, ptr %i.wj, align 8, !tbaa !476
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge187
  %i.wk = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !292 ; 2 uses
  %i.wn = load ptr, ptr %i.ah, align 8, !tbaa !775
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !441
  %i.wq = load ptr, ptr %i.ec, align 8, !tbaa !338
  %i.wr = load ptr, ptr %i.wm, align 8, !tbaa !80
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8
  %i.wu = tail call noundef zeroext i1 %i.wt(ptr noundef nonnull align 8 dereferenceable(9) %i.wm, ptr noundef nonnull align 8 dereferenceable(73) %i.wn, ptr noundef %i.wp, ptr noundef %i.wq)
  br i1 %.not71, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.wv = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.ww = fsub double %i.wv, %i.wk
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vm, i64 88
  store double %i.ww, ptr %i.wx, align 8, !tbaa !445
  %i.wy = load ptr, ptr %i.bp, align 8, !tbaa !775 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !433 ; 2 uses
  %i.xc = load ptr, ptr %i.wz, align 8, !tbaa !435
  %.not.i82 = icmp eq ptr %i.xb, %i.xc
  br i1 %.not.i82, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.xd = getelementptr inbounds i8, ptr %i.xb, i64 -4
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !81
  %i.xf = sext i32 %i.xe to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83: ; preds = %bb.r, %bb.s
  %i.xg = phi i64 [ %i.xf, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vm, i64 136
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !446
  %i.xi = load ptr, ptr %i.dm, align 8, !tbaa !608 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !433 ; 2 uses
  %i.xm = load ptr, ptr %i.xj, align 8, !tbaa !435
  %.not.i84 = icmp eq ptr %i.xl, %i.xm
  br i1 %.not.i84, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83
  %i.xn = getelementptr inbounds i8, ptr %i.xl, i64 -4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !81
  %i.xp = sext i32 %i.xo to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83, %bb.t
  %i.xq = phi i64 [ %i.xp, %bb.t ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit83 ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.vm, i64 144
  store i64 %i.xq, ptr %i.xr, align 8, !tbaa !477
  %i.xs = add nsw i64 %i.xq, %i.xg
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vm, i64 128
  store i64 %i.xs, ptr %i.xt, align 8, !tbaa !447
  br label %bb.u

bb.u:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, %bb.q
  br i1 %i.wu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.xu = load ptr, ptr %i.wo, align 8, !tbaa !441 ; 8 uses
  %i.xv = load ptr, ptr %i.dg, align 8, !tbaa !338 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.xw = load i32, ptr %i.di, align 8, !tbaa !793 ; 4 uses
  %i.xx = sext i32 %i.xw to i64                   ; 3 uses
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.xu, i64 %i.xx ; 2 uses
  store ptr %i.xy, ptr %i.a, align 8, !tbaa !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.xv, i64 %i.xx ; 2 uses
  store ptr %i.xz, ptr %i.b, align 8, !tbaa !338
  %i.ya = load ptr, ptr %i.ee, align 8, !tbaa !440
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %i.xx
  %i.yc = icmp sgt i32 %i.xw, 0
  br i1 %i.yc, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %bb.v
  %wide.trip.count203 = zext nneg i32 %i.xw to i64 ; 5 uses
  %min.iters.check265 = icmp ult i32 %i.xw, 6
  %1 = ptrtoaddr ptr %i.xv to i64
  %2 = ptrtoaddr ptr %i.xu to i64
  %i.yd = sub i64 %2, %1
  %diff.check = icmp ugt i64 %i.yd, -32
  %or.cond = select i1 %min.iters.check265, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph190.preheader277, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph190.preheader
  %n.vec267 = and i64 %wide.trip.count203, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next272, %vector.body268 ] ; 3 uses
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %index269 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %wide.load270 = load <2 x double>, ptr %i.ye, align 8, !tbaa !370
  %wide.load271 = load <2 x double>, ptr %i.yf, align 8, !tbaa !370
  %i.yg = fneg <2 x double> %wide.load270
  %i.yh = fneg <2 x double> %wide.load271
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %index269 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store <2 x double> %i.yg, ptr %i.yi, align 8, !tbaa !370
  store <2 x double> %i.yh, ptr %i.yj, align 8, !tbaa !370
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.yk, label %middle.block273, label %vector.body268, !llvm.loop !2405

middle.block273:                                  ; preds = %vector.body268
  %cmp.n274 = icmp eq i64 %n.vec267, %wide.trip.count203
  br i1 %cmp.n274, label %._crit_edge191, label %.lr.ph190.preheader277

.lr.ph190.preheader277:                           ; preds = %.lr.ph190.preheader, %middle.block273
  %indvars.iv200.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec267, %middle.block273 ] ; 3 uses
  %xtraiter280 = and i64 %wide.trip.count203, 3   ; 2 uses
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %.lr.ph190.prol.loopexit, label %.lr.ph190.prol

.lr.ph190.prol:                                   ; preds = %.lr.ph190.preheader277, %.lr.ph190.prol
  %indvars.iv200.prol = phi i64 [ %indvars.iv.next201.prol, %.lr.ph190.prol ], [ %indvars.iv200.ph, %.lr.ph190.preheader277 ] ; 3 uses
  %prol.iter282 = phi i64 [ %prol.iter282.next, %.lr.ph190.prol ], [ 0, %.lr.ph190.preheader277 ]
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv200.prol
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !370
  %i.yn = fneg double %i.ym
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv200.prol
  store double %i.yn, ptr %i.yo, align 8, !tbaa !370
  %indvars.iv.next201.prol = add nuw nsw i64 %indvars.iv200.prol, 1 ; 2 uses
  %prol.iter282.next = add i64 %prol.iter282, 1   ; 2 uses
  %prol.iter282.cmp.not = icmp eq i64 %prol.iter282.next, %xtraiter280
  br i1 %prol.iter282.cmp.not, label %.lr.ph190.prol.loopexit, label %.lr.ph190.prol, !llvm.loop !2406

.lr.ph190.prol.loopexit:                          ; preds = %.lr.ph190.prol, %.lr.ph190.preheader277
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph190.preheader277 ], [ %indvars.iv.next201.prol, %.lr.ph190.prol ]
  %i.yp = sub nsw i64 %indvars.iv200.ph, %wide.trip.count203
  %i.yq = icmp ugt i64 %i.yp, -4
  br i1 %i.yq, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %.lr.ph190.prol.loopexit, %.lr.ph190, %middle.block273, %bb.v
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !794
  %i.yt = sext i32 %i.ys to i64
  %i.yu = shl nsw i64 %i.yt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.xz, ptr align 8 %i.yb, i64 %i.yu, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !765
  call void @_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi3ELi0ELi7ELi3EEEE13rightMultiplyERPdPKd(ptr noundef nonnull align 8 dereferenceable(40) %i.yw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.xv)
  %i.yx = load i32, ptr %i.yr, align 4, !tbaa !794
  %i.yy = sext i32 %i.yx to i64
  %i.yz = shl nsw i64 %i.yy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.xy, i8 0, i64 %i.yz, i1 false)
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !697
  %i.zc = load ptr, ptr %i.b, align 8, !tbaa !338
  call void @_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8multiplyERPdPKd(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.zc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.w

.lr.ph190:                                        ; preds = %.lr.ph190.prol.loopexit, %.lr.ph190
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.3, %.lr.ph190 ], [ %indvars.iv200.unr, %.lr.ph190.prol.loopexit ] ; 6 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv200
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !370
  %i.zf = fneg double %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv200
  store double %i.zf, ptr %i.zg, align 8, !tbaa !370
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv.next201
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !370
  %i.zj = fneg double %i.zi
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv.next201
  store double %i.zj, ptr %i.zk, align 8, !tbaa !370
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200, 2 ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv.next201.1
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !370
  %i.zn = fneg double %i.zm
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv.next201.1
  store double %i.zn, ptr %i.zo, align 8, !tbaa !370
  %indvars.iv.next201.2 = add nuw nsw i64 %indvars.iv200, 3 ; 2 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv.next201.2
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !370
  %i.zr = fneg double %i.zq
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %indvars.iv.next201.2
  store double %i.zr, ptr %i.zs, align 8, !tbaa !370
  %indvars.iv.next201.3 = add nuw nsw i64 %indvars.iv200, 4 ; 2 uses
  %exitcond204.not.3 = icmp eq i64 %indvars.iv.next201.3, %wide.trip.count203
  br i1 %exitcond204.not.3, label %._crit_edge191, label %.lr.ph190, !llvm.loop !2407

bb.w:                                             ; preds = %._crit_edge191, %bb.u, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit
  %.1 = phi i1 [ %i.r, %bb.b ], [ %i.r, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit ], [ false, %bb.u ], [ true, %._crit_edge191 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEE16computeMarginalsERNS_17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISC_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !775
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %i.e)
  %i.j = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !443 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.l = fsub double %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store double %i.l, ptr %i.m, align 8, !tbaa !478
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEE9setLambdaEdb(ptr noundef nonnull align 8 dereferenceable(216) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %2, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !791
  %i.d = sext i32 %i.c to i64
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.g = load i32, ptr %i.f, align 4, !tbaa !792
  %i.h = sext i32 %i.g to i64
  tail call void @_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !791
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.split.us.preheader, label %.preheader.thread38

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !791
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.split.preheader, label %.preheader

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !775
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = tail call noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %i.r, i32 noundef %i.s, i32 noundef %i.s, i1 noundef zeroext false) ; 9 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !753
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv ; 7 uses
  %i.w = load double, ptr %i.t, align 8, !tbaa !370
  store double %i.w, ptr %i.v, align 8, !tbaa !370
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr i8, ptr %i.t, i64 64       ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !370
  store double %i.z, ptr %i.x, align 8, !tbaa !370
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = getelementptr i8, ptr %i.t, i64 128     ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !370
  store double %i.ac, ptr %i.aa, align 8, !tbaa !370
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = getelementptr i8, ptr %i.t, i64 192     ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !370
  store double %i.af, ptr %i.ad, align 8, !tbaa !370
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ah = getelementptr i8, ptr %i.t, i64 256     ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !370
  store double %i.ai, ptr %i.ag, align 8, !tbaa !370
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ak = getelementptr i8, ptr %i.t, i64 320     ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !370
end_hunk_7
