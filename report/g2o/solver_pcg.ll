Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8multiplyERPdPKd:bb.a
  br label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit

_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !401
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !400  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit
  %.cast.i = ptrtoint ptr %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.711.24..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.1017.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit ] ; 4 uses
  %i.ah = phi ptr [ %i.x, %.lr.ph ], [ %i.fi, %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit ]
  %.not.i17 = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i17, label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1297, !nonnull !439, !align !513
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !479
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !91
  %i.an = sext i32 %i.am to i64
  br label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit

_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit: ; preds = %bb.f, %bb.g
  %i.ao = phi i64 [ %i.an, %bb.g ], [ 0, %bb.f ]  ; 6 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !414
  %i.as = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  store ptr %i.ap, ptr %4, align 8, !tbaa !529, !alias.scope !1298
  store ptr %i.as, ptr %i.ae, align 8
  store i64 %i.ar, ptr %.sroa.49.0..sroa_idx.i, align 8
  store i64 %.cast.i, ptr %i.af, align 8
  store i64 %i.t, ptr %.sroa.711.24..sroa_idx12.i, align 8
  store i64 %i.ao, ptr %i.ag, align 8
  store i64 %i.t, ptr %.sroa.1017.48..sroa_idx.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !413 ; 10 uses
  %i.av = getelementptr [8 x i8], ptr %i.p, i64 %i.ao ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(80) %4)
  %i.aw = load ptr, ptr %3, align 8, !tbaa !387   ; 18 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 7
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit
  %i.az = lshr exact i64 %i.ax, 3
  %i.ba = and i64 %i.az, 1
  %i.bb = call i64 @llvm.smin.i64(i64 %i.ba, i64 %i.au)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.h ], [ %i.au, %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit ] ; 14 uses
  %i.bc = sub nsw i64 %i.au, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.bd = sdiv i64 %i.bc, 2                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 1                    ; 2 uses
  %i.bf = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i  ; 6 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %min.iters.check43 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 6
  br i1 %min.iters.check43, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.bh = shl i64 %.0.i.i.i.i.i.i.i.i, 3
  %i.bi = add i64 %.0.i.i.i.i.i.i.i.i, %i.ao
  %i.bj = shl i64 %i.bi, 3
  %scevgep37 = getelementptr i8, ptr %i.p, i64 %i.bj
  %scevgep38 = getelementptr i8, ptr %i.aw, i64 %i.bh
  %bound039 = icmp ult ptr %i.av, %scevgep38
  %bound140 = icmp ult ptr %i.aw, %scevgep37
  %found.conflict41 = and i1 %bound039, %bound140
  br i1 %found.conflict41, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57, label %vector.ph44

vector.ph44:                                      ; preds = %vector.memcheck36
  %n.vec45 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body46 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index47 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index47 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load48 = load <2 x double>, ptr %i.bl, align 8, !tbaa !128, !alias.scope !1299
  %wide.load49 = load <2 x double>, ptr %i.bm, align 8, !tbaa !128, !alias.scope !1299
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load50 = load <2 x double>, ptr %i.bk, align 8, !tbaa !128, !alias.scope !1300, !noalias !1299
  %wide.load51 = load <2 x double>, ptr %i.bn, align 8, !tbaa !128, !alias.scope !1300, !noalias !1299
  %i.bo = fadd <2 x double> %wide.load48, %wide.load50
  %i.bp = fadd <2 x double> %wide.load49, %wide.load51
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !128, !alias.scope !1300, !noalias !1299
  store <2 x double> %i.bp, ptr %i.bn, align 8, !tbaa !128, !alias.scope !1300, !noalias !1299
  %index.next52 = add nuw i64 %index47, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.bq, label %middle.block53, label %vector.body46, !llvm.loop !1286

middle.block53:                                   ; preds = %vector.body46
  %cmp.n54 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec45
  br i1 %cmp.n54, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.i.preheader57:               ; preds = %vector.memcheck36, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block53
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec45, %middle.block53 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.05.i.i.i.i.i.i.i.i.prol ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !128
  %i.bu = load double, ptr %i.br, align 8, !tbaa !128
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.br, align 8, !tbaa !128
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1287

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader57
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !128
  %i.cc = load double, ptr %i.bz, align 8, !tbaa !128
  %i.cd = fadd double %i.cb, %i.cc
  store double %i.cd, ptr %i.bz, align 8, !tbaa !128
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ce
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !128
  %i.ci = load double, ptr %i.cf, align 8, !tbaa !128
  %i.cj = fadd double %i.ch, %i.ci
  store double %i.cj, ptr %i.cf, align 8, !tbaa !128
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ck
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !128
  %i.co = load double, ptr %i.cl, align 8, !tbaa !128
  %i.cp = fadd double %i.cn, %i.co
  store double %i.cp, ptr %i.cl, align 8, !tbaa !128
  %i.cq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cq
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !128
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !128
  %i.cv = fadd double %i.ct, %i.cu
  store double %i.cv, ptr %i.cr, align 8, !tbaa !128
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cw, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1288

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block53, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %i.cx = icmp sgt i64 %i.bc, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i
  %i.cy = icmp slt i64 %i.bf, %i.au
  br i1 %i.cy, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit

.lr.ph.i17.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cz = add i64 %.0.i.i.i.i.i.i.i.i, %i.be
  %i.da = sub i64 %i.au, %i.cz                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 10
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader
  %i.db = shl i64 %i.bd, 4                        ; 2 uses
  %i.dc = shl nsw i64 %i.ao, 3
  %i.dd = shl i64 %.0.i.i.i.i.i.i.i.i, 3          ; 2 uses
  %i.de = getelementptr i8, ptr %i.p, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = add i64 %i.ao, %i.au
  %i.dh = shl i64 %i.dg, 3
  %scevgep30 = getelementptr i8, ptr %i.p, i64 %i.dh
  %i.di = getelementptr i8, ptr %i.aw, i64 %i.db
  %scevgep31 = getelementptr i8, ptr %i.di, i64 %i.dd
  %i.dj = shl i64 %i.au, 3
  %scevgep32 = getelementptr i8, ptr %i.aw, i64 %i.dj
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, -4                      ; 3 uses
  %i.dk = add i64 %i.bf, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = add i64 %i.bf, %index                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <2 x double>, ptr %i.dn, align 8, !tbaa !128, !alias.scope !1301
  %wide.load33 = load <2 x double>, ptr %i.do, align 8, !tbaa !128, !alias.scope !1301
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load34 = load <2 x double>, ptr %i.dm, align 8, !tbaa !128, !alias.scope !1302, !noalias !1301
  %wide.load35 = load <2 x double>, ptr %i.dp, align 8, !tbaa !128, !alias.scope !1302, !noalias !1301
  %i.dq = fadd <2 x double> %wide.load, %wide.load34
  %i.dr = fadd <2 x double> %wide.load33, %wide.load35
  store <2 x double> %i.dq, ptr %i.dm, align 8, !tbaa !128, !alias.scope !1302, !noalias !1301
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !128, !alias.scope !1302, !noalias !1301
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader56

.lr.ph.i17.i.i.i.i.i.i.i.preheader56:             ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i17.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dt = sub i64 %i.au, %.05.i18.i.i.i.i.i.i.i.ph
  %xtraiter58 = and i64 %i.dt, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader56, %.lr.ph.i17.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56 ]
  %i.du = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.05.i18.i.i.i.i.i.i.i.prol ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !128
  %i.dx = load double, ptr %i.du, align 8, !tbaa !128
  %i.dy = fadd double %i.dw, %i.dx
  store double %i.dy, ptr %i.du, align 8, !tbaa !128
  %i.dz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol, !llvm.loop !1293

.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56
  %.05.i18.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56 ], [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i.i.prol ]
  %i.ea = sub i64 %.05.i18.i.i.i.i.i.i.i.ph, %i.au
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i17.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.05.i18.i.i.i.i.i.i.i ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.05.i18.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !128
  %i.ef = load double, ptr %i.ec, align 8, !tbaa !128
  %i.eg = fadd double %i.ee, %i.ef
  store double %i.eg, ptr %i.ec, align 8, !tbaa !128
  %i.eh = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.eh
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !128
  %i.el = load double, ptr %i.ei, align 8, !tbaa !128
  %i.em = fadd double %i.ek, %i.el
  store double %i.em, ptr %i.ei, align 8, !tbaa !128
  %i.en = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.en
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !128
  %i.er = load double, ptr %i.eo, align 8, !tbaa !128
  %i.es = fadd double %i.eq, %i.er
  store double %i.es, ptr %i.eo, align 8, !tbaa !128
  %i.et = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.et
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !128
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !128
  %i.ey = fadd double %i.ew, %i.ex
  store double %i.ey, ptr %i.eu, align 8, !tbaa !128
  %i.ez = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ez, %i.au
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.3, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, label %.lr.ph.i17.i.i.i.i.i.i.i, !llvm.loop !1294

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.021.i.i.i.i.i.i.i ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.021.i.i.i.i.i.i.i
  %i.fc = load <2 x double>, ptr %i.fb, align 1, !tbaa !81
  %i.fd = load <2 x double>, ptr %i.fa, align 16, !tbaa !81
  %i.fe = fadd <2 x double> %i.fc, %i.fd
  store <2 x double> %i.fe, ptr %i.fa, align 16, !tbaa !81
  %i.ff = add nsw i64 %.021.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.bf
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !15

_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.aw) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !401
  %i.fi = load ptr, ptr %i.u, align 8, !tbaa !400 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 24
  %sext = shl i64 %i.fm, 32
  %i.fn = ashr exact i64 %sext, 32
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %bb.f, label %._crit_edge, !llvm.loop !1295
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12add_internalERS4_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !409  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !410  ; 2 uses
  %.not18 = icmp eq ptr %i.c, %i.d
  br i1 %.not18, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph16:                                         ; preds = %bb.a, %._crit_edge
  %i.e = phi ptr [ %i.l, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.m, %._crit_edge ], [ %i.c, %bb.a ]
  %.014 = phi i64 [ %i.n, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.014 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !380  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not12 = icmp eq ptr %i.i, %i.j
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph16
  %i.k = trunc i64 %.014 to i32
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !409
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph16
  %i.l = phi ptr [ %i.cl, %._crit_edge.loopexit ], [ %i.e, %.lr.ph16 ] ; 2 uses
  %i.m = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %.lr.ph16 ] ; 2 uses
  %i.n = add nuw i64 %.014, 1                     ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 48
  %i.s = icmp ult i64 %i.n, %i.r
  br i1 %i.s, label %.lr.ph16, label %._crit_edge17, !llvm.loop !1303

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit
  %.sroa.08.013 = phi ptr [ %i.i, %.lr.ph ], [ %i.ck, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !412
  %i.w = load i32, ptr %i.t, align 8, !tbaa !526
  %i.x = tail call noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.w, i32 noundef %i.k, i1 noundef zeroext true) ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !403  ; 9 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !403  ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !413 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !414 ; 2 uses
  %i.ae = mul nsw i64 %i.ad, %i.ab                ; 7 uses
  %i.af = sdiv i64 %i.ae, 2                       ; 2 uses
  %i.ag = shl nsw i64 %i.af, 1                    ; 7 uses
  %i.ah = icmp sgt i64 %i.ae, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.ai = icmp slt i64 %i.ag, %i.ae
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aj = sub i64 %i.ae, %i.ag                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = shl i64 %i.af, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ak
  %i.al = shl i64 %i.ab, 3
  %i.am = mul i64 %i.al, %i.ad                    ; 2 uses
end_hunk_0
