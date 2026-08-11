inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN3igl17PlanarizerShapeUpIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEE9assemblePEv:bb.a
  %i.gw = load double, ptr %i.ba, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  invoke void @_ZNK5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12eigenvectorsEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.464") align 16 %15, ptr noundef nonnull align 16 dereferenceable(560) %13)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.gx = load double, ptr %15, align 16, !tbaa !43
  store double %i.gx, ptr %14, align 8, !tbaa !43
  %i.gy = load double, ptr %i.bc, align 16, !tbaa !43
  store double %i.gy, ptr %i.bb, align 8, !tbaa !43
  %i.gz = load double, ptr %i.be, align 16, !tbaa !43
  store double %i.gz, ptr %i.bd, align 8, !tbaa !43
  %i.ha = load double, ptr %i.bg, align 16, !tbaa !43
  store double %i.ha, ptr %i.bf, align 8, !tbaa !43
  %i.hb = load double, ptr %i.bi, align 16, !tbaa !43
  store double %i.hb, ptr %i.bh, align 8, !tbaa !43
  %i.hc = load double, ptr %i.bk, align 16, !tbaa !43
  store double %i.hc, ptr %i.bj, align 8, !tbaa !43
  %i.hd = load double, ptr %i.bm, align 16, !tbaa !43
  store double %i.hd, ptr %i.bl, align 8, !tbaa !43
  %i.he = load double, ptr %i.bo, align 16, !tbaa !43
  store double %i.he, ptr %i.bn, align 8, !tbaa !43
  %i.hf = load double, ptr %i.bq, align 16, !tbaa !43
  store double %i.hf, ptr %i.bp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.hg = call noundef double @llvm.fabs.f64(double %i.gu) ; 2 uses
  %i.hh = call noundef double @llvm.fabs.f64(double %i.gv) ; 2 uses
  %i.hi = fcmp olt double %i.hh, %i.hg            ; 2 uses
  %.sroa.8.0.i.i = select i1 %i.hi, double %i.hh, double %i.hg
  %i.hj = call noundef double @llvm.fabs.f64(double %i.gw)
  %i.hk = fcmp olt double %i.hj, %.sroa.8.0.i.i
  %i.hl = select i1 %i.hi, i64 24, i64 0
  %.idx.i.i.i.i = select i1 %i.hk, i64 48, i64 %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 %.idx.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr %14, ptr %17, align 8
  store ptr %14, ptr %.sroa.589.0..sroa_idx, align 8
  store ptr %10, ptr %i.br, align 8, !tbaa !112, !alias.scope !565
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductINS5_INS1_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS6_EELi0EEES2_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.ad

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.hn = load i32, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge120

._crit_edge120:                                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.hp = load ptr, ptr %16, align 8, !tbaa !61
  call void @free(ptr noundef %i.hp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.hq = load ptr, ptr %10, align 8, !tbaa !61
  call void @free(ptr noundef %i.hq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.hr = load ptr, ptr %8, align 8, !tbaa !42
  call void @free(ptr noundef %i.hr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.hs = load ptr, ptr %i.bu, align 8, !tbaa !135
  call void @free(ptr noundef %i.hs) #27
  %i.ht = load ptr, ptr %i.bv, align 8, !tbaa !136
  call void @free(ptr noundef %i.ht) #27
  %i.hu = load ptr, ptr %i.bw, align 8, !tbaa !137 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge120
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge120
  %i.hw = load ptr, ptr %i.bx, align 8, !tbaa !138 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.hw) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.hy = load ptr, ptr %i.z, align 8, !tbaa !135
  call void @free(ptr noundef %i.hy) #27
  %i.hz = load ptr, ptr %i.aa, align 8, !tbaa !136
  call void @free(ptr noundef %i.hz) #27
  %i.ia = load ptr, ptr %i.by, align 8, !tbaa !137 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.ic = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit57:       ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ie = load i64, ptr %i.g, align 8, !tbaa !38
  %i.if = icmp sgt i64 %i.ie, %indvars.iv.next131
  br i1 %i.if, label %bb.f, label %._crit_edge123, !llvm.loop !568

bb.aa:                                            ; preds = %bb.r, %bb.q
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ag

bb.ab:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS4_EELi0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.t
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ae

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.ik = phi i32 [ %i.lp, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %i.hn, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS3_INS0_IdLi3ELi3ELi0ELi3ELi3EEENS_9TransposeIS4_EELi0EEES1_Li0EEEEERKNS_9EigenBaseIT_EE.exit ]
  %i.il = shl nuw nsw i64 %indvars.iv127, 3
  %i.im = load ptr, ptr %i.bs, align 8, !tbaa !42
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv130
  %i.io = load ptr, ptr %16, align 8, !tbaa !61, !noalias !569 ; 2 uses
  %i.ip = ptrtoaddr ptr %i.io to i64
  %i.iq = load i64, ptr %i.bt, align 8, !tbaa !9, !noalias !569 ; 2 uses
  %i.ir = mul nsw i64 %i.iq, %indvars.iv127
  %i.is = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.ir ; 10 uses
  %i.it = load double, ptr %i.in, align 8, !tbaa !43, !noalias !572 ; 10 uses
  %i.iu = mul i32 %i.ik, %i.cd
  %i.iv = trunc nuw nsw i64 %indvars.iv127 to i32
  %reass.add = add i32 %i.iu, %i.iv
  %reass.mul = mul i32 %reass.add, 3
  %i.iw = sext i32 %reass.mul to i64              ; 2 uses
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !42, !noalias !575 ; 2 uses
  %i.iy = ptrtoaddr ptr %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.iw ; 11 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.it, i64 0
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = and i64 %i.ja, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i58 = icmp eq i64 %i.jb, 0
  %i.jc = lshr exact i64 %i.ja, 3
  %i.jd = and i64 %i.jc, 1
  %.0.i.i.i.i.i.i.i.i.i.i.i60 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i58, i64 %i.jd, i64 3 ; 7 uses
  %i.je = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 3  ; 3 uses
  %i.jf = and i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, %.0.i.i.i.i.i.i.i.i.i.i.i60 ; 5 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i.i.i.i.i.i67:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59
  %i.jh = load double, ptr %i.is, align 8, !tbaa !43
  %i.ji = fmul double %i.it, %i.jh
  store double %i.ji, ptr %i.iz, align 8, !tbaa !43
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i69 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i60, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i69, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !43
  %i.jm = fmul double %i.it, %i.jl
  store double %i.jm, ptr %i.jj, align 8, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !43
  %i.jq = fmul double %i.it, %i.jp
  store double %i.jq, ptr %i.jn, align 8, !tbaa !43
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i67
  %i.jr = icmp samesign ugt i64 %i.je, 1
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i61:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i65, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.js = icmp samesign ult i64 %i.jg, 3
  br i1 %i.js, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i61
  %18 = lshr i64 %i.je, 1
  %19 = mul nuw nsw i64 %18, -2
  %i.jt = sub nsw i64 %19, %.0.i.i.i.i.i.i.i.i.i.i.i60
  %20 = add nsw i64 %i.jt, 3                      ; 3 uses
  %min.iters.check = icmp ult i64 %20, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader
  %i.ju = shl nsw i64 %i.iw, 3
  %i.jv = add i64 %i.ju, %i.iy
  %i.jw = mul i64 %i.iq, %i.il
  %i.jx = add i64 %i.jw, %i.ip
  %i.jy = sub i64 %i.jx, %i.jv
  %diff.check = icmp ugt i64 %i.jy, -32
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %20, -4                        ; 3 uses
  %i.jz = or disjoint i64 %i.jg, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ka = or disjoint i64 %i.jg, %index           ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ka ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load = load <2 x double>, ptr %i.kc, align 8, !tbaa !43
  %wide.load152 = load <2 x double>, ptr %i.kd, align 8, !tbaa !43
  %i.ke = fmul <2 x double> %broadcast.splat, %wide.load
  %i.kf = fmul <2 x double> %broadcast.splat, %wide.load152
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <2 x double> %i.ke, ptr %i.kb, align 8, !tbaa !43
  store <2 x double> %i.kf, ptr %i.kg, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %20, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181:    ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph = phi i64 [ %i.jg, %vector.memcheck ], [ %i.jg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader ], [ %i.jz, %middle.block ] ; 4 uses
  %i.ki = and i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, 3 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %i.ki, 3
  br i1 %lcmp.mod188.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol = phi i64 [ %i.kn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ] ; 3 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !43
  %i.km = fmul double %i.it, %i.kl
  store double %i.km, ptr %i.kj, align 8, !tbaa !43
  %i.kn = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.prol, 1 ; 2 uses
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %i.ko = xor i64 %i.ki, %prol.iter189.next
  %prol.iter189.cmp.not = icmp eq i64 %i.ko, 3
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol, !llvm.loop !579

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit:   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181
  %.05.i18.i.i.i.i.i.i.i.i.i.i63.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.preheader181 ], [ %i.kn, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol ]
  %i.kp = icmp ult i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63.ph, 3
  br i1 %i.kp, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62:                 ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62
  %.05.i18.i.i.i.i.i.i.i.i.i.i63 = phi i64 [ %i.lj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i63.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit ] ; 6 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !43
  %i.kt = fmul double %i.it, %i.ks
  store double %i.kt, ptr %i.kq, align 8, !tbaa !43
  %i.ku = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ku
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !43
  %i.ky = fmul double %i.it, %i.kx
  store double %i.ky, ptr %i.kv, align 8, !tbaa !43
  %i.kz = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.kz
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !43
  %i.ld = fmul double %i.it, %i.lc
  store double %i.ld, ptr %i.la, align 8, !tbaa !43
  %i.le = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.le
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.le
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !43
  %i.li = fmul double %i.it, %i.lh
  store double %i.li, ptr %i.lf, align 8, !tbaa !43
  %i.lj = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i63, 4
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62, !llvm.loop !580

.lr.ph.i.i.i.i.i.i.i.i.i.i65:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS6_INS7_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59
  %i.lk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0.i.i.i.i.i.i.i.i.i.i.i60
  %i.ln = load <2 x double>, ptr %i.lm, align 1, !tbaa !81
  %i.lo = fmul <2 x double> %i.lk, %i.ln
  store <2 x double> %i.lo, ptr %i.ll, align 16, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i61

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKS2_EEKNS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i62.prol.loopexit, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i61
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.lp = load i32, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.lq = sext i32 %i.lp to i64
  %i.lr = icmp slt i64 %indvars.iv.next128, %i.lq
  br i1 %i.lr, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i59, label %._crit_edge120, !llvm.loop !581

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ab ], [ %.pn.pn.pn.pn.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.ig, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body48

.body48:                                          ; preds = %bb.l, %bb.ag
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ag ], [ %i.cp, %bb.l ]
  %i.ls = load ptr, ptr %10, align 8, !tbaa !61
  call void @free(ptr noundef %i.ls) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.lt = load ptr, ptr %8, align 8, !tbaa !42
  call void @free(ptr noundef %i.lt) #27
  br label %bb.ah

bb.ah:                                            ; preds = %.body48, %bb.o
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %.body48 ], [ %i.cs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn, %bb.ah ], [ %i.ce, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.n
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %bb.ai ], [ %i.cr, %bb.n ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !131
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.f) #27
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #30 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !131
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen11EigenSolverINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12eigenvectorsEv(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.464") align 16 %0, ptr noundef nonnull align 16 dereferenceable(560) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit
  %.02583 = phi i64 [ 0, %bb.a ], [ %i.gr, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixISt7complexIdELi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEEE9normalizeEv.exit ] ; 6 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %i.a, i64 %.02583
  %i.f = load <2 x double>, ptr %i.e, align 16, !tbaa !43
  %i.g = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.f) ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fmul double %i.h, f0x3CC0000000000000
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = fcmp ole double %i.j, %i.i
  %i.l = add nsw i64 %.02583, 1                   ; 5 uses
  %i.m = icmp eq i64 %i.l, 3
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  %.idx.i.i.i.i = mul i64 %.02583, 24             ; 3 uses
  %.idx.i.i.i.i27 = mul i64 %.02583, 48           ; 4 uses
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.idx.i39 = mul i64 %i.l, 24                    ; 2 uses
  %.idx.i43 = mul i64 %i.l, 48                    ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %.idx.i.i.i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !43 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %xtraiter160 = and i64 %i.nc, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ] ; 3 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ]
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ne = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !43
  %i.ng = fmul double %i.mb, %i.nf
  store double %i.ng, ptr %i.nd, align 8, !tbaa !43
  %i.nh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !984

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ], [ %i.nh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ni = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nj = icmp ugt i64 %i.ni, -4
  br i1 %i.nj, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.od, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !43
  %i.nn = fmul double %i.mb, %i.nm
  store double %i.nn, ptr %i.nk, align 8, !tbaa !43
  %i.no = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.np = getelementptr inbounds [8 x i8], ptr %4, i64 %i.no
  %i.nq = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.no
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !43
  %i.ns = fmul double %i.mb, %i.nr
  store double %i.ns, ptr %i.np, align 8, !tbaa !43
  %i.nt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nt
  %i.nv = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nt
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !43
  %i.nx = fmul double %i.mb, %i.nw
  store double %i.nx, ptr %i.nu, align 8, !tbaa !43
  %i.ny = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ny
  %i.oa = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ny
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !43
  %i.oc = fmul double %i.mb, %i.ob
  store double %i.oc, ptr %i.nz, align 8, !tbaa !43
  %i.od = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.od, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !985

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mg, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oe = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.of = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.og = load <2 x double>, ptr %i.of, align 1, !tbaa !81
  %i.oh = fmul <2 x double> %i.mn, %i.og
  store <2 x double> %i.oh, ptr %i.oe, align 16, !tbaa !81
  %i.oi = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oj = icmp slt i64 %i.oi, %i.mj
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !986

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.ok, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.ol, align 8, !tbaa !116
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.om, align 8, !tbaa !987
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.on, align 8, !tbaa !848
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.oo, align 8, !tbaa !989
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.be, ptr %5, align 8, !tbaa !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %5, ptr %6, align 8, !tbaa !1003
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.op, align 8, !tbaa !1005
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.oq, align 8, !tbaa !1007
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.or, align 8, !tbaa !1009
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil.preheader

._crit_edge.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.preheader
  %.03453.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader ], [ %i.ay, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %._crit_edge.i.i.i.i.i.i.epil

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.ov, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = mul i64 %.03453.i.i.i.i.i.i.epil, 24
  %i.os = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !43
  %i.ou = fmul double %i.e, %i.ot
  store double %i.ou, ptr %i.os, align 8, !tbaa !43
  %i.ov = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !1011

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ae, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter163, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.oz, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.i.epil, 24
  %i.ow = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !43
  %i.oy = fmul double %i.e, %i.ox
  store double %i.oy, ptr %i.ow, align 8, !tbaa !43
  %i.oz = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter163
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1012

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEE26applyHouseholderOnTheRightINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.1348", align 8 ; 13 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.1360", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1366", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Map.1259", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !848  ; 3 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !43  ; 2 uses
  br i1 %i.c, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !934    ; 8 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  %i.i = lshr exact i64 %i.g, 3
  %i.j = and i64 %i.i, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.j, i64 3 ; 6 uses
  %i.k = xor i64 %.0.i.i.i.i.i.i.i, 3             ; 3 uses
  %i.l = and i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, %.0.i.i.i.i.i.i.i  ; 4 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.n = load double, ptr %i.f, align 8, !tbaa !43
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.f, align 8, !tbaa !43
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi3ELin1ELi0ELi3ELi3EEEEEEENS0_13mul_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !43
  %i.r = fmul double %i.e, %i.q
  store double %i.r, ptr %i.p, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !43
  %i.u = fmul double %i.e, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !43
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi3ELin1ELi0ELi3ELi3EEEEEEENS0_13mul_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi3ELin1ELi0ELi3ELi3EEEEEEENS0_13mul_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i
  %i.v = icmp samesign ugt i64 %i.k, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi3ELin1ELi0ELi3ELi3EEEEEEENS0_13mul_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.w = icmp samesign ult i64 %i.m, 3
  br i1 %i.w, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %9 = lshr i64 %i.k, 1
  %10 = mul nuw nsw i64 %9, -2
  %i.x = sub nsw i64 %10, %.0.i.i.i.i.i.i.i
  %11 = add nsw i64 %i.x, 3                       ; 3 uses
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %11, -4                        ; 3 uses
  %i.y = or disjoint i64 %i.m, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !43
  %wide.load38 = load <2 x double>, ptr %i.ab, align 8, !tbaa !43
  %i.ac = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ad = fmul <2 x double> %broadcast.splat, %wide.load38
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !43
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader39

.lr.ph.i17.i.i.i.i.i.i.preheader39:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader39, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  %i.ah = fmul double %i.e, %i.ag
  store double %i.ah, ptr %i.af, align 8, !tbaa !43
  %i.ai = add nuw nsw i64 %.05.i18.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ai, 3
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1014

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLi3ELin1ELi0ELi3ELi3EEEEEEENS0_13mul_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.aj = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0.i.i.i.i.i.i.i ; 2 uses
  %i.am = load <2 x double>, ptr %i.al, align 16, !tbaa !81
  %i.an = fmul <2 x double> %i.ak, %i.am
  store <2 x double> %i.an, ptr %i.al, align 16, !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.ao = fcmp une double %i.d, 0.000000e+00
  br i1 %i.ao, label %bb.c, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %3, ptr %8, align 8, !tbaa !1015
  %i.ap = add i64 %i.b, -1                        ; 3 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !934
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  store ptr %i.ar, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ap, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  %.sroa.531.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 0, ptr %.sroa.531.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.531.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 1, ptr %.sroa.531.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.531.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 3, ptr %.sroa.531.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !1017
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !906
  store ptr %i.av, ptr %i.au, align 8, !tbaa !1019
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i64 %i.ap, ptr %i.aw, align 8, !tbaa !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %3, ptr %5, align 8, !tbaa !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %5, ptr %6, align 8, !tbaa !1036
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ax, align 8, !tbaa !1038
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.ay, align 8, !tbaa !122
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.az, align 8, !tbaa !1040
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEELi3ELin1ELb0EEENSC_INSC_ISD_Li3ELi1ELb1EEELin1ELi1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ba = load ptr, ptr %0, align 8, !tbaa !934, !noalias !1042 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !1015  ; 3 uses
  %i.bc = load <2 x double>, ptr %i.ba, align 1, !tbaa !81
  %i.bd = load <2 x double>, ptr %i.bb, align 1, !tbaa !81
  %i.be = fadd <2 x double> %i.bc, %i.bd
  store <2 x double> %i.be, ptr %i.bb, align 1, !tbaa !81
  %i.bf = getelementptr i8, ptr %i.bb, i64 16     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ba, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !43
  %i.bi = load double, ptr %i.bf, align 8, !tbaa !43
  %i.bj = fadd double %i.bh, %i.bi
  store double %i.bj, ptr %i.bf, align 8, !tbaa !43
  %i.bk = load double, ptr %2, align 8, !tbaa !43, !noalias !1045 ; 2 uses
  %.sroa.420.24.copyload = load ptr, ptr %8, align 8 ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !934, !noalias !1048 ; 3 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bm = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = load <2 x double>, ptr %.sroa.420.24.copyload, align 1, !tbaa !81
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = load <2 x double>, ptr %i.bl, align 1, !tbaa !81
  %i.bq = fsub <2 x double> %i.bp, %i.bo
  store <2 x double> %i.bq, ptr %i.bl, align 1, !tbaa !81
  %i.br = getelementptr i8, ptr %i.bl, i64 16     ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.420.24.copyload, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !43
  %i.bu = fmul double %i.bk, %i.bt
  %i.bv = load double, ptr %i.br, align 8, !tbaa !43
  %i.bw = fsub double %i.bv, %i.bu
  store double %i.bw, ptr %i.br, align 8, !tbaa !43
  %i.bx = load double, ptr %2, align 8, !tbaa !43, !noalias !1051 ; 2 uses
  %.sroa.4.sroa.0.0.copyload = load ptr, ptr %8, align 8 ; 2 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.by = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = load <2 x double>, ptr %.sroa.4.sroa.0.0.copyload, align 1, !tbaa !81
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = getelementptr i8, ptr %.sroa.4.sroa.0.0.copyload, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !43
  %i.cd = fmul double %i.bx, %i.cc
  %.sroa.2.24.copyload = load ptr, ptr %1, align 8
  %i.ce = icmp sgt i64 %i.b, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEELi3ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi3ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.cf = getelementptr i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %.sroa.2.24.copyload, i64 %.07.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ca, %i.cj
  %i.cl = load <2 x double>, ptr %i.cf, align 1, !tbaa !81
  %i.cm = fsub <2 x double> %i.cl, %i.ck
  store <2 x double> %i.cm, ptr %i.cf, align 1, !tbaa !81
  %i.cn = getelementptr i8, ptr %i.cf, i64 16     ; 2 uses
  %i.co = load double, ptr %i.cg, align 8, !tbaa !43
  %i.cp = fmul double %i.cd, %i.co
  %i.cq = load double, ptr %i.cn, align 8, !tbaa !43
  %i.cr = fsub double %i.cq, %i.cp
  store double %i.cr, ptr %i.cn, align 8, !tbaa !43
  %i.cs = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.ap
  br i1 %exitcond.not, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEELi3ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi3ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1054

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEELi3ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi3ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEEEmLERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.b, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELin1ELb1EEELi3ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLi3ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !848  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !906    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !81 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !81 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !81 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !81 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
end_hunk_1
