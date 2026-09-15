Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN3igl15rigid_alignmentIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE:bb.a
  store ptr %17, ptr %i.cb, align 8, !tbaa !36, !alias.scope !508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef %i.coc, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_7ProductINS_9TransposeINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_Li0EEEEEKNSH_INS5_ISA_KNSB_ISD_KNS1_IdLin1ELin1ELi1ELin1ELin1EEEEEKSK_EES2_Li0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %.body495

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_7ProductINS_9TransposeINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_Li0EEEEEKNSH_INS5_ISA_KNSB_ISD_KNS1_IdLin1ELin1ELi1ELin1ELin1EEEEEKSK_EES2_Li0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS_7ProductINS_9TransposeINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_Li0EEEEENSD_INS4_IS6_KNS7_IS9_KNS2_IdLin1ELin1ELi1ELin1ELin1EEEEEKSG_EES3_Li0EEENS0_9assign_opIddEENS0_13add_assign_opIddEEE3runINS4_INS0_13scalar_sum_opIddEEKSJ_KSQ_EESS_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(121) %27, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.bz unwind label %.body495

.body495:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_7ProductINS_9TransposeINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_Li0EEEEEKNSH_INS5_ISA_KNSB_ISD_KNS1_IdLin1ELin1ELi1ELin1ELin1EEEEEKSK_EES2_Li0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %bb.by
  %i.coe = landingpad { ptr, i32 }
          cleanup
  %i.cof = load ptr, ptr %26, align 8, !tbaa !19
  call void @free(ptr noundef %i.cof) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.dc

bb.bz:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS_7ProductINS_9TransposeINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_Li0EEEEEKNSH_INS5_ISA_KNSB_ISD_KNS1_IdLin1ELin1ELi1ELin1ELin1EEEEEKSK_EES2_Li0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  invoke void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2IS2_EERNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(192) %28, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ca unwind label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.cog = load double, ptr %i.cc, align 8, !tbaa !86
  %i.coh = call noundef double @llvm.fabs.f64(double %i.cog)
  %i.coi = load i8, ptr %i.cd, align 1, !tbaa !87, !range !88, !noundef !89
  %i.coj = trunc nuw i8 %i.coi to i1
  br i1 %i.coj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.cok = load double, ptr %i.cg, align 8, !tbaa !90
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.col = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.com = load i64, ptr %i.cf, align 8, !tbaa !28
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.com, i64 %i.col)
  %i.con = sitofp i64 %.sroa.speculated.i.i.i.i to double
  %i.coo = fmul nnan double %i.con, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i: ; preds = %bb.cc, %bb.cb
  %i.cop = phi double [ %i.cok, %bb.cb ], [ %i.coo, %bb.cc ]
  %i.coq = fmul double %i.coh, %i.cop             ; 2 uses
  %i.cor = load i64, ptr %i.ch, align 8, !tbaa !91 ; 5 uses
  %i.cos = icmp sgt i64 %i.cor, 0
  br i1 %i.cos, label %.lr.ph.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i
  %i.cot = load ptr, ptr %28, align 8, !tbaa !25  ; 5 uses
  %i.cou = load i64, ptr %i.ce, align 8, !tbaa !16 ; 5 uses
  %min.iters.check1521 = icmp ult i64 %i.cor, 4
  br i1 %min.iters.check1521, label %scalar.ph1520.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %.lr.ph.i.i
  %n.vec1523 = and i64 %i.cor, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.coq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1524

vector.body1524:                                  ; preds = %vector.body1524, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1527, %vector.body1524 ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph1522 ], [ %i.cpy, %vector.body1524 ]
  %vec.phi1526 = phi <2 x i64> [ zeroinitializer, %vector.ph1522 ], [ %i.cpz, %vector.body1524 ]
  %i.cov = or disjoint i64 %index1525, 1          ; 2 uses
  %i.cow = or disjoint i64 %index1525, 2          ; 2 uses
  %i.cox = or disjoint i64 %index1525, 3          ; 2 uses
  %i.coy = mul nsw i64 %index1525, %i.cou
  %i.coz = mul nsw i64 %i.cov, %i.cou
  %i.cpa = mul nsw i64 %i.cow, %i.cou
  %i.cpb = mul nsw i64 %i.cox, %i.cou
  %i.cpc = getelementptr [8 x i8], ptr %i.cot, i64 %index1525
  %i.cpd = getelementptr [8 x i8], ptr %i.cot, i64 %i.cov
  %i.cpe = getelementptr [8 x i8], ptr %i.cot, i64 %i.cow
  %i.cpf = getelementptr [8 x i8], ptr %i.cot, i64 %i.cox
  %i.cpg = getelementptr [8 x i8], ptr %i.cpc, i64 %i.coy
  %i.cph = getelementptr [8 x i8], ptr %i.cpd, i64 %i.coz
  %i.cpi = getelementptr [8 x i8], ptr %i.cpe, i64 %i.cpa
  %i.cpj = getelementptr [8 x i8], ptr %i.cpf, i64 %i.cpb
  %i.cpk = load double, ptr %i.cpg, align 8, !tbaa !21
  %i.cpl = load double, ptr %i.cph, align 8, !tbaa !21
  %i.cpm = insertelement <2 x double> poison, double %i.cpk, i64 0
  %i.cpn = insertelement <2 x double> %i.cpm, double %i.cpl, i64 1
  %i.cpo = load double, ptr %i.cpi, align 8, !tbaa !21
  %i.cpp = load double, ptr %i.cpj, align 8, !tbaa !21
  %i.cpq = insertelement <2 x double> poison, double %i.cpo, i64 0
  %i.cpr = insertelement <2 x double> %i.cpq, double %i.cpp, i64 1
  %i.cps = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cpn)
  %i.cpt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cpr)
  %i.cpu = fcmp ogt <2 x double> %i.cps, %broadcast.splat
  %i.cpv = fcmp ogt <2 x double> %i.cpt, %broadcast.splat
  %i.cpw = zext <2 x i1> %i.cpu to <2 x i64>
  %i.cpx = zext <2 x i1> %i.cpv to <2 x i64>
  %i.cpy = add <2 x i64> %vec.phi, %i.cpw         ; 2 uses
  %i.cpz = add <2 x i64> %vec.phi1526, %i.cpx     ; 2 uses
  %index.next1527 = add nuw i64 %index1525, 4     ; 2 uses
  %i.cqa = icmp eq i64 %index.next1527, %n.vec1523
  br i1 %i.cqa, label %middle.block1528, label %vector.body1524, !llvm.loop !438

middle.block1528:                                 ; preds = %vector.body1524
  %bin.rdx = add <2 x i64> %i.cpz, %i.cpy
  %i.cqb = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n1529 = icmp eq i64 %i.cor, %n.vec1523
  br i1 %cmp.n1529, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph1520.preheader

scalar.ph1520.preheader:                          ; preds = %.lr.ph.i.i, %middle.block1528
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec1523, %middle.block1528 ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cqb, %middle.block1528 ]
  br label %scalar.ph1520

scalar.ph1520:                                    ; preds = %scalar.ph1520.preheader, %scalar.ph1520
  %.09.i.i = phi i64 [ %i.cqk, %scalar.ph1520 ], [ %.09.i.i.ph, %scalar.ph1520.preheader ] ; 3 uses
  %.078.i.i = phi i64 [ %i.cqj, %scalar.ph1520 ], [ %.078.i.i.ph, %scalar.ph1520.preheader ]
  %i.cqc = mul nsw i64 %.09.i.i, %i.cou
  %i.cqd = getelementptr [8 x i8], ptr %i.cot, i64 %.09.i.i
  %i.cqe = getelementptr [8 x i8], ptr %i.cqd, i64 %i.cqc
  %i.cqf = load double, ptr %i.cqe, align 8, !tbaa !21
  %i.cqg = call noundef double @llvm.fabs.f64(double %i.cqf)
  %i.cqh = fcmp ogt double %i.cqg, %i.coq
  %i.cqi = zext i1 %i.cqh to i64
  %i.cqj = add nuw nsw i64 %.078.i.i, %i.cqi      ; 2 uses
  %i.cqk = add nuw nsw i64 %.09.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cqk, %i.cor
  br i1 %exitcond.not.i.i, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph1520, !llvm.loop !439

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit: ; preds = %scalar.ph1520, %middle.block1528
  %.lcssa1454 = phi i64 [ %i.cqb, %middle.block1528 ], [ %i.cqj, %scalar.ph1520 ]
  %i.cql = icmp samesign ult i64 %.lcssa1454, 6
  br i1 %i.cql, label %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread, label %bb.ch

_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i.i, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit
  %i.cqm = fmul double %i.cnx, 5.000000e-01
  %i.cqn = fsub double 1.000000e+00, %i.cqm
  br label %bb.ch

bb.cd:                                            ; preds = %bb.bq
  %i.cqo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.df

bb.ce:                                            ; preds = %.loopexit1045
  %i.cqp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.de

bb.cf:                                            ; preds = %bb.bx
  %i.cqq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.dd

bb.cg:                                            ; preds = %bb.bz
  %i.cqr = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ch:                                            ; preds = %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread
  %.1 = phi double [ %i.cqn, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit.thread ], [ %.010391138, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.cqs = load i64, ptr %i.cf, align 8, !tbaa !28
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.cqs, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.cj

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.ch
  %i.cqt = load i64, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  %i.cqu = load i64, ptr %i.ci, align 8, !tbaa !18
  %.not.i.i.i.i.i499 = icmp eq i64 %i.cqu, %i.cqt
  br i1 %.not.i.i.i.i.i499, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.cqt, i64 noundef 1)
          to label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i unwind label %bb.cj

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i: ; preds = %bb.ci, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_5SolveINS_31CompleteOrthogonalDecompositionINS1_IdLin1ELin1ELi0ELin1ELin1EEEEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS1_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(192) %28, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i, %bb.ci, %bb.ch
  %i.cqv = landingpad { ptr, i32 }
          cleanup
  br label %.body501

bb.ck:                                            ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_5SolveINS_31CompleteOrthogonalDecompositionINS2_IdLin1ELin1ELi0ELin1ELin1EEEEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i
  %i.cqw = load i64, ptr %i.ci, align 8, !tbaa !18, !noalias !509 ; 2 uses
  %i.cqx = load ptr, ptr %29, align 8, !tbaa !19, !noalias !509 ; 4 uses
  %i.cqy = getelementptr [8 x i8], ptr %i.cqx, i64 %i.cqw ; 2 uses
  %i.cqz = getelementptr i8, ptr %i.cqy, i64 -24
  %i.cra = load <2 x double>, ptr %i.cqz, align 1, !tbaa !30
  %i.crb = getelementptr i8, ptr %i.cqy, i64 -8
  %i.crc = load double, ptr %i.crb, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01256)
  store double 0.000000e+00, ptr %.sroa.01256, align 16, !tbaa !21, !noalias !510
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqx, i64 8
  %i.cre = load <2 x double>, ptr %i.crd, align 8, !tbaa !21 ; 6 uses
  %i.crf = extractelement <2 x double> %i.cre, i64 1 ; 2 uses
  %i.crg = extractelement <2 x double> %i.cre, i64 0
  %i.crh = fneg double %i.crg
  %.sroa.20.48.vec.insert = insertelement <2 x double> poison, double %i.crh, i64 0 ; 2 uses
  %i.cri = fneg double %i.crf
  store double %i.cri, ptr %.sroa.01256.8..sroa_idx2334, align 8, !tbaa !21
  store double 0.000000e+00, ptr %.sroa.01256.32..sroa_idx, align 16, !tbaa !21
  %i.crj = load double, ptr %i.cqx, align 8, !tbaa !21 ; 7 uses
  %.sroa.20.56.vec.insert = insertelement <2 x double> %.sroa.20.48.vec.insert, double %i.crj, i64 1
  store <2 x double> %i.cre, ptr %.sroa.01256.16..sroa_idx2335, align 16, !tbaa !21
  %i.crk = fneg double %i.crj                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store ptr %i.cqx, ptr %30, align 8, !tbaa !93, !alias.scope !511
  store i64 3, ptr %i.cj, align 8, !tbaa !34, !alias.scope !511
  store ptr %29, ptr %i.ck, align 8, !tbaa !36, !alias.scope !511
  store i64 0, ptr %i.cl, align 8, !tbaa !34, !alias.scope !511
  store i64 %i.cqw, ptr %i.cm, align 8, !tbaa !97, !alias.scope !511
  %i.crl = invoke noundef double @_ZN5Eigen8internal16stable_norm_implINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENT_10RealScalarERKS6_PNS0_9enable_ifIXsrS6_21IsVectorAtCompileTimeEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef null)
          to label %bb.cl unwind label %bb.cn     ; 6 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.crm = fcmp oeq double %i.crl, 0.000000e+00
  br i1 %i.crm, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  store double 1.000000e+00, ptr %.sroa.0, align 16, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.8..sroa_idx2332, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %.sroa.0.32..sroa_idx2333, align 16, !tbaa !21
  store i64 0, ptr %.sroa.0.40..sroa_idx, align 8
  %.sroa.0.0..sroa.0.0..sroa.0.0..pre = load <2 x double>, ptr %.sroa.0, align 16, !noalias !512
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.crn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.da

bb.co:                                            ; preds = %bb.cl
  %i.cro = call double @sin(double noundef %i.crl) #24
  %i.crp = call double @cos(double noundef %i.crl) #24
  %i.crq = fsub double 1.000000e+00, %i.crp
  %i.crr = fmul double %i.crl, %i.crl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %.sroa.01256.0..sroa.01256.0..sroa.01256.0. = load <2 x double>, ptr %.sroa.01256, align 16, !tbaa !30 ; 3 uses
  %i.crs = shufflevector <2 x double> %.sroa.01256.0..sroa.01256.0..sroa.01256.0., <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.01256.24..sroa.01256.24..sroa.01256.24. = load <2 x double>, ptr %.sroa.01256.24..sroa_idx, align 8, !tbaa !30
  %.sroa.01256.8..sroa.01256.8..sroa.01256.8. = load <2 x double>, ptr %.sroa.01256.8..sroa_idx, align 8 ; 2 uses
  %i.crt = shufflevector <2 x double> %.sroa.01256.8..sroa.01256.8..sroa.01256.8., <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.01256.16..sroa.01256.16..sroa.01256.16. = load <2 x double>, ptr %.sroa.01256.16..sroa_idx, align 16 ; 5 uses
  %i.cru = shufflevector <2 x double> %.sroa.01256.16..sroa.01256.16..sroa.01256.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.crv = shufflevector <2 x double> %.sroa.01256.16..sroa.01256.16..sroa.01256.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.crw = insertelement <2 x double> poison, double %i.crk, i64 0
  %i.crx = shufflevector <2 x double> %i.crw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cry = shufflevector <2 x double> %.sroa.20.48.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.crz = insertelement <2 x double> poison, double %i.crj, i64 0
  %i.csa = shufflevector <2 x double> %i.crz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.csb = insertelement <2 x double> poison, double %i.cro, i64 0
  %i.csc = insertelement <2 x double> %i.csb, double %i.crq, i64 1
  %i.csd = insertelement <2 x double> poison, double %i.crl, i64 0
  %i.cse = insertelement <2 x double> %i.csd, double %i.crr, i64 1
  %i.csf = fdiv <2 x double> %i.csc, %i.cse       ; 5 uses
  %i.csg = fmul <2 x double> %i.csf, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.csh = fmul <2 x double> %i.csg, zeroinitializer
  %i.csi = extractelement <2 x double> %i.csf, i64 0 ; 2 uses
  %i.csj = fmul double %i.crf, %i.csi
  %i.csk = fsub double 0.000000e+00, %i.csj
  %i.csl = shufflevector <2 x double> %i.cre, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.csm = insertelement <2 x double> %i.csl, double %i.crj, i64 0
  %i.csn = shufflevector <2 x double> %i.csf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cso = fmul <2 x double> %i.csm, %i.csn
  %i.csp = fsub <2 x double> zeroinitializer, %i.cso ; 2 uses
  %i.csq = shufflevector <2 x double> %i.csp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.csr = fmul double %i.csi, %i.crj
  %i.css = fadd double %i.csr, 0.000000e+00
  %.sroa.17.56.vec.insert.i.i.i.i = insertelement <2 x double> %i.csq, double %i.css, i64 1
  %33 = shufflevector <2 x double> %i.csf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cst = shufflevector <2 x double> %i.csf, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.csu = fmul <2 x double> %i.cst, %.sroa.01256.0..sroa.01256.0..sroa.01256.0. ; 3 uses
  %i.csv = fmul <2 x double> %i.csu, %i.crs
  %i.csw = fmul <2 x double> %i.cst, %.sroa.01256.24..sroa.01256.24..sroa.01256.24. ; 3 uses
  %i.csx = fmul <2 x double> %i.csw, %i.crt
  %i.csy = fadd <2 x double> %i.csv, %i.csx
  %i.csz = fmul <2 x double> %i.cst, %.sroa.20.56.vec.insert ; 3 uses
  %i.cta = fmul <2 x double> %i.csz, %i.cru
  %i.ctb = fadd <2 x double> %i.csy, %i.cta
  %i.ctc = fmul <2 x double> %i.csn, %i.cre
  %i.ctd = fadd <2 x double> %i.ctc, <double 0.000000e+00, double -0.000000e+00>
  %i.cte = fmul <2 x double> %i.csu, %i.crv
  %i.ctf = fmul <2 x double> %i.csw, zeroinitializer
  %i.ctg = fadd <2 x double> %i.ctf, %i.cte
  %i.cth = fmul <2 x double> %i.crx, %i.csz
  %i.cti = fadd <2 x double> %i.cth, %i.ctg
  %34 = insertelement <2 x double> %.sroa.01256.16..sroa.01256.16..sroa.01256.16., double %i.crk, i64 1
  %35 = fmul <2 x double> %33, %34                ; 4 uses
  %36 = extractelement <2 x double> %35, i64 1
  %i.ctj = fmul double %36, %i.crj
  %i.ctk = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ctj, i64 1
  %i.ctl = fadd <2 x double> %i.csh, %i.ctk       ; 4 uses
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %i.ctl, double %i.csk, i64 1
  %i.ctm = extractelement <2 x double> %i.ctl, i64 0
  store double %i.ctm, ptr %.sroa.7.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx2338, align 16, !tbaa !21
  %i.ctn = fadd <2 x double> %.sroa.0.8.vec.insert.i.i.i.i, %i.ctb ; 2 uses
  %i.cto = shufflevector <2 x double> %.sroa.01256.0..sroa.01256.0..sroa.01256.0., <2 x double> %.sroa.01256.16..sroa.01256.16..sroa.01256.16., <2 x i32> <i32 0, i32 3>
  %i.ctp = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ctq = fmul <2 x double> %i.cto, %i.ctp
  %37 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ctr = insertelement <2 x double> %.sroa.01256.8..sroa.01256.8..sroa.01256.8., double 0.000000e+00, i64 1
  %i.cts = fmul <2 x double> %37, %i.ctr          ; 2 uses
  %i.ctt = insertelement <2 x double> %.sroa.01256.16..sroa.01256.16..sroa.01256.16., double %i.crj, i64 1
  %i.ctu = shufflevector <2 x double> %i.csg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ctv = fmul <2 x double> %i.ctt, %i.ctu       ; 2 uses
  %i.ctw = fadd <2 x double> %i.cts, %i.ctv
  %i.ctx = fsub <2 x double> %i.cts, %i.ctv
  %i.cty = shufflevector <2 x double> %i.ctw, <2 x double> %i.ctx, <2 x i32> <i32 0, i32 3>
  %i.ctz = fadd <2 x double> %i.ctq, %i.cty       ; 2 uses
  %i.cua = insertelement <2 x double> %i.ctz, double 0.000000e+00, i64 1
  %i.cub = fadd <2 x double> %i.ctd, %i.cua
  store <2 x double> %i.cub, ptr %.sroa.7.i.i.i.i, align 16, !tbaa !21
  %.sroa.7.i.i.i.i.8..sroa.7.i.i.i.i.8..sroa.7.i.i.i.i.8..sroa.7.i.i.i.8..sroa.7.i.i.i.8..sroa.7.i.i.8..sroa.7.i.i.8..sroa.7.i.8..sroa.7.i.8..sroa.7.8..sroa.7.8..sroa.7.24..i.i.i.i = load <2 x double>, ptr %.sroa.7.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !30
  %i.cuc = fadd <2 x double> %.sroa.7.i.i.i.i.8..sroa.7.i.i.i.i.8..sroa.7.i.i.i.i.8..sroa.7.i.i.i.8..sroa.7.i.i.i.8..sroa.7.i.i.8..sroa.7.i.i.8..sroa.7.i.8..sroa.7.i.8..sroa.7.8..sroa.7.8..sroa.7.24..i.i.i.i, %i.cti
  store <2 x double> %i.cuc, ptr %.sroa.7.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx2337, align 8, !tbaa !30
  %shift = shufflevector <2 x double> %i.ctz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.csp, %shift
  %i.cud = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.cud, ptr %.sroa.7.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !21
  %i.cue = fmul <2 x double> %i.csu, %i.cry
  %i.cuf = fmul <2 x double> %i.csa, %i.csw
  %i.cug = fadd <2 x double> %i.cuf, %i.cue
  %i.cuh = fmul <2 x double> %i.csz, zeroinitializer
  %i.cui = fadd <2 x double> %i.cuh, %i.cug
  %i.cuj = fadd <2 x double> %.sroa.17.56.vec.insert.i.i.i.i, %i.cui
  %foldExtExtBinop2111 = fmul <2 x double> %i.cre, %35
  %shift2113 = shufflevector <2 x double> %i.ctl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2114 = fsub <2 x double> %shift2113, %foldExtExtBinop2111
  %foldExtExtBinop2116 = fadd <2 x double> %i.ctl, %foldExtExtBinop2114
  %38 = extractelement <2 x double> %foldExtExtBinop2116, i64 0
  store <2 x double> %i.ctn, ptr %.sroa.0, align 16, !tbaa !30
  %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i.i.i.i = load <2 x double>, ptr %.sroa.7.i.i.i.i, align 16, !tbaa !30 ; 2 uses
  store <2 x double> %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i.i.i.i, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !30
  %.sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.16..sroa.7.i.i.16..sroa.7.i.16..sroa.7.i.16..sroa.7.16..sroa.7.16..sroa.7.32..i.i.i.i = load <2 x double>, ptr %.sroa.7.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !30 ; 3 uses
  store <2 x double> %.sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.16..sroa.7.i.i.16..sroa.7.i.16..sroa.7.i.16..sroa.7.16..sroa.7.16..sroa.7.32..i.i.i.i, ptr %.sroa.0.32..sroa_idx, align 16, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %.sroa.0.8..sroa.0.8..sroa.0.8..pre = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8, !noalias !512 ; 2 uses
  %i.cuk = extractelement <2 x double> %.sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.16..sroa.7.i.i.16..sroa.7.i.16..sroa.7.i.16..sroa.7.16..sroa.7.16..sroa.7.32..i.i.i.i, i64 0
  %i.cul = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8..pre, <2 x double> %.sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.i.16..sroa.7.i.i.16..sroa.7.i.i.16..sroa.7.i.16..sroa.7.i.16..sroa.7.16..sroa.7.16..sroa.7.32..i.i.i.i, <2 x i32> <i32 1, i32 3>
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.sroa.0.32..sroa.0.32. = phi double [ 1.000000e+00, %bb.cm ], [ %i.cuk, %bb.co ] ; 2 uses
  %.sroa.0.16..sroa.0.16. = phi <2 x double> [ zeroinitializer, %bb.cm ], [ %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.16..i.i.i.i, %bb.co ] ; 3 uses
  %.sroa.0.8..sroa.0.8. = phi <2 x double> [ zeroinitializer, %bb.cm ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.co ] ; 2 uses
  %.sroa.0.0..sroa.0.0. = phi <2 x double> [ %.sroa.0.0..sroa.0.0..sroa.0.0..pre, %bb.cm ], [ %i.ctn, %bb.co ] ; 3 uses
  %.sroa.21.0 = phi double [ 1.000000e+00, %bb.cm ], [ %38, %bb.co ] ; 3 uses
  %.sroa.17.0 = phi <2 x double> [ zeroinitializer, %bb.cm ], [ %i.cuj, %bb.co ] ; 4 uses
  %i.cum = phi <2 x double> [ zeroinitializer, %bb.cm ], [ %i.cul, %bb.co ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5594)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.cun = load <2 x double>, ptr %3, align 8, !tbaa !30, !noalias !512 ; 3 uses
  %i.cuo = shufflevector <2 x double> %.sroa.0.0..sroa.0.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cup = fmul <2 x double> %i.cun, %i.cuo
  %i.cuq = load <2 x double>, ptr %i.cn, align 8, !tbaa !30, !noalias !512 ; 3 uses
  %i.cur = shufflevector <2 x double> %.sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cus = fmul <2 x double> %i.cuq, %i.cur
  %i.cut = fadd <2 x double> %i.cup, %i.cus
  %i.cuu = load <2 x double>, ptr %i.co, align 8, !tbaa !30, !noalias !512 ; 3 uses
  %i.cuv = shufflevector <2 x double> %.sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.cuw = fmul <2 x double> %i.cuu, %i.cuv
  %i.cux = fadd <2 x double> %i.cut, %i.cuw
  %i.cuy = load double, ptr %i.cp, align 8, !tbaa !21, !noalias !512 ; 3 uses
  %i.cuz = extractelement <2 x double> %.sroa.0.0..sroa.0.0., i64 0
  %i.cva = fmul double %i.cuz, %i.cuy
  %i.cvb = load double, ptr %i.ad, align 8, !tbaa !21, !noalias !512 ; 3 uses
  %i.cvc = extractelement <2 x double> %.sroa.0.8..sroa.0.8., i64 0
  %i.cvd = fmul double %i.cvc, %i.cvb
  %i.cve = load double, ptr %i.ae, align 8, !tbaa !21, !noalias !512 ; 3 uses
  %i.cvf = shufflevector <2 x double> %.sroa.0.16..sroa.0.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cvg = fmul <2 x double> %i.cun, %i.cvf
  %i.cvh = insertelement <2 x double> poison, double %.sroa.0.32..sroa.0.32., i64 0
  %i.cvi = shufflevector <2 x double> %i.cvh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvj = fmul <2 x double> %i.cuq, %i.cvi
  %i.cvk = fadd <2 x double> %i.cvg, %i.cvj
  %i.cvl = shufflevector <2 x double> %i.cum, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cvm = fmul <2 x double> %i.cuu, %i.cvl
  %i.cvn = fadd <2 x double> %i.cvk, %i.cvm
  store <2 x double> %i.cvn, ptr %.sroa.5594.8..sroa_idx, align 8, !tbaa !30, !alias.scope !512
  %i.cvo = insertelement <2 x double> poison, double %i.cve, i64 0
  %i.cvp = insertelement <2 x double> %i.cvo, double %i.cuy, i64 1
  %i.cvq = fmul <2 x double> %.sroa.0.16..sroa.0.16., %i.cvp ; 2 uses
  %i.cvr = extractelement <2 x double> %i.cvq, i64 0
  %i.cvs = fadd double %i.cvd, %i.cvr
  %i.cvt = fadd double %i.cva, %i.cvs
  store double %i.cvt, ptr %.sroa.5594, align 16, !tbaa !21, !alias.scope !512
  %i.cvu = fmul double %i.cvb, %.sroa.0.32..sroa.0.32.
  %i.cvv = extractelement <2 x double> %i.cum, i64 1
  %i.cvw = fmul double %i.cve, %i.cvv
  %i.cvx = fadd double %i.cvu, %i.cvw
  %i.cvy = extractelement <2 x double> %i.cvq, i64 1
  %i.cvz = fadd double %i.cvy, %i.cvx
  store double %i.cvz, ptr %.sroa.5594.24..sroa_idx2331, align 8, !tbaa !21, !alias.scope !512
  %i.cwa = shufflevector <2 x double> %.sroa.17.0, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cwb = fmul <2 x double> %i.cun, %i.cwa
  %i.cwc = shufflevector <2 x double> %.sroa.17.0, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cwd = fmul <2 x double> %i.cuq, %i.cwc
  %i.cwe = fadd <2 x double> %i.cwb, %i.cwd
  %i.cwf = insertelement <2 x double> poison, double %.sroa.21.0, i64 0
  %i.cwg = shufflevector <2 x double> %i.cwf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cwh = fmul <2 x double> %i.cuu, %i.cwg
  %i.cwi = fadd <2 x double> %i.cwe, %i.cwh
  %i.cwj = insertelement <2 x double> poison, double %i.cuy, i64 0
  %i.cwk = insertelement <2 x double> %i.cwj, double %i.cvb, i64 1
  %i.cwl = fmul <2 x double> %i.cwk, %.sroa.17.0  ; 2 uses
  %i.cwm = fmul double %i.cve, %.sroa.21.0
  %i.cwn = extractelement <2 x double> %i.cwl, i64 1
  %i.cwo = fadd double %i.cwn, %i.cwm
  %i.cwp = extractelement <2 x double> %i.cwl, i64 0
  %i.cwq = fadd double %i.cwp, %i.cwo
  store <2 x double> %i.cux, ptr %3, align 8, !tbaa !30
  %.sroa.5594.0..sroa.5594.0..sroa.5594.0..sroa.5594.16. = load <2 x double>, ptr %.sroa.5594, align 16, !tbaa !30
  store <2 x double> %.sroa.5594.0..sroa.5594.0..sroa.5594.0..sroa.5594.16., ptr %i.cp, align 8, !tbaa !30
  %.sroa.5594.16..sroa.5594.16..sroa.5594.16..sroa.5594.32. = load <2 x double>, ptr %.sroa.5594.16..sroa_idx, align 16, !tbaa !30
  store <2 x double> %.sroa.5594.16..sroa.5594.16..sroa.5594.16..sroa.5594.32., ptr %i.ac, align 8, !tbaa !30
  store <2 x double> %i.cwi, ptr %i.co, align 8, !tbaa !30
  store double %i.cwq, ptr %i.ae, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5594)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !513
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !99, !noalias !513
  %i.cwr = load <2 x double>, ptr %4, align 8, !tbaa !30, !noalias !513 ; 3 uses
  %i.cws = fmul <2 x double> %.sroa.0.0..sroa.0.0., %i.cwr ; 2 uses
  %i.cwt = load double, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i, align 8, !tbaa !21, !noalias !513 ; 2 uses
  %.sroa.0.24..sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx, align 8, !tbaa !30, !noalias !513
  %i.cwu = fmul <2 x double> %i.cwr, %.sroa.0.24..sroa.0.24..sroa.0.24. ; 2 uses
  %i.cwv = shufflevector <2 x double> %i.cws, <2 x double> %i.cwu, <2 x i32> <i32 0, i32 2>
  %i.cww = shufflevector <2 x double> %i.cws, <2 x double> %i.cwu, <2 x i32> <i32 1, i32 3>
  %i.cwx = fadd <2 x double> %i.cwv, %i.cww
  %i.cwy = insertelement <2 x double> poison, double %i.cwt, i64 0
  %i.cwz = shufflevector <2 x double> %i.cwy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cxa = fmul <2 x double> %i.cwz, %i.cum
  %i.cxb = fadd <2 x double> %i.cwx, %i.cxa
  store <2 x double> %i.cxb, ptr %i.cr, align 8, !tbaa !21, !noalias !513
  %i.cxc = fmul <2 x double> %i.cwr, %.sroa.17.0  ; 2 uses
  %shift2118 = shufflevector <2 x double> %i.cxc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2119 = fadd <2 x double> %i.cxc, %shift2118
  %i.cxd = extractelement <2 x double> %foldExtExtBinop2119, i64 0
  %i.cxe = fmul double %.sroa.21.0, %i.cwt
  %i.cxf = fadd double %i.cxe, %i.cxd
  %i.cxg = load <2 x double>, ptr %i.cr, align 8, !tbaa !30, !noalias !513
  %i.cxh = fadd <2 x double> %i.cxg, %i.cra
  %i.cxi = fadd double %i.cxf, %i.crc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !513
  store <2 x double> %i.cxh, ptr %4, align 8, !tbaa !30
  store double %i.cxi, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.cxj = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !515
  store ptr %0, ptr %32, align 8
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %4, ptr %i.cs, align 8, !alias.scope !514
  store i64 %i.cxj, ptr %.sroa.4.0..sroa_idx.i550, align 8, !alias.scope !514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false), !alias.scope !516
  %i.cxk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(41) %32)
          to label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.cxl = landingpad { ptr, i32 }
          cleanup
  br label %.body551

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit: ; preds = %bb.cp
  %i.cxm = load ptr, ptr %31, align 8, !tbaa !101 ; 8 uses
  %i.cxn = ptrtoaddr ptr %i.cxm to i64
  %i.cxo = load i64, ptr %i.ct, align 8, !tbaa !102 ; 8 uses
  %i.cxp = load i64, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cxp, %i.cxo
  %i.cxq = load i64, ptr %i.cu, align 8           ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.cxq, 3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit._crit_edge, label %bb.cr

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit._crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit
  %.pre1298 = mul i64 %i.cxo, 3
  br label %bb.cu

bb.cr:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit
  %i.cxr = icmp sgt i64 %i.cxo, 3074457345618258602
  br i1 %i.cxr, label %.invoke2108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cr
  %i.cxs = mul nsw i64 %i.cxo, 3                  ; 3 uses
  %i.cxt = mul nsw i64 %i.cxq, %i.cxp
  %.not.i569 = icmp eq i64 %i.cxs, %i.cxt
  br i1 %.not.i569, label %.noexc554, label %bb.cs

bb.cs:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.cxu = load ptr, ptr %15, align 8, !tbaa !25
  call void @free(ptr noundef %i.cxu) #24
  %i.cxv = icmp sgt i64 %i.cxo, 0
  br i1 %i.cxv, label %bb.ct, label %.sink.split.i570

bb.ct:                                            ; preds = %bb.cs
  %i.cxw = icmp samesign ugt i64 %i.cxs, 2305843009213693951
  br i1 %i.cxw, label %.invoke2108, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i572

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i572: ; preds = %bb.ct
  %i.cxx = mul nuw i64 %i.cxo, 24
  %i.cxy = call noalias ptr @malloc(i64 noundef %i.cxx) #25 ; 2 uses
  %i.cxz = icmp eq ptr %i.cxy, null
  br i1 %i.cxz, label %.invoke2108, label %.sink.split.i570

.invoke2108:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i572, %bb.ct, %bb.cr
  %i.cya = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cya, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.cya, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont2109 unwind label %bb.cz

.cont2109:                                        ; preds = %.invoke2108
  unreachable

.sink.split.i570:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i572, %bb.cs
  %.sink.i571 = phi ptr [ %i.cxy, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i572 ], [ null, %bb.cs ]
  store ptr %.sink.i571, ptr %15, align 8, !tbaa !25
  br label %.noexc554

.noexc554:                                        ; preds = %.sink.split.i570, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.cxo, ptr %i.ak, align 8, !tbaa !16
  store i64 3, ptr %i.cu, align 8, !tbaa !28
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit._crit_edge, %.noexc554
  %.pre-phi = phi i64 [ %.pre1298, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS6_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEE4evalEv.exit._crit_edge ], [ %i.cxs, %.noexc554 ] ; 6 uses
  %i.cyb = load ptr, ptr %15, align 8, !tbaa !25  ; 8 uses
  %i.cyc = ptrtoaddr ptr %i.cyb to i64
  %i.cyd = sdiv i64 %.pre-phi, 2
  %i.cye = shl nsw i64 %i.cyd, 1                  ; 6 uses
  %i.cyf = icmp sgt i64 %i.cxo, 0
  br i1 %i.cyf, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.cu
  %i.cyg = icmp slt i64 %i.cye, %.pre-phi
  br i1 %i.cyg, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS0_IdLin1ELi3ELi0ELin1ELi3EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.cyh = sub i64 %.pre-phi, %i.cye              ; 3 uses
  %min.iters.check1510 = icmp ult i64 %i.cyh, 4
  %i.cyi = sub i64 %i.cxn, %i.cyc
  %diff.check = icmp ugt i64 %i.cyi, -32
  %or.cond2107 = select i1 %min.iters.check1510, i1 true, i1 %diff.check
  br i1 %or.cond2107, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader2121, label %vector.ph1511

vector.ph1511:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec1512 = and i64 %i.cyh, -4                 ; 3 uses
  %i.cyj = add i64 %i.cye, %n.vec1512
  br label %vector.body1513
end_hunk_0
