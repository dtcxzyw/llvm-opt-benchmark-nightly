Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8multiplyERPdPKd:bb.a
  br label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit

_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !357
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !356  ; 2 uses
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
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1153, !nonnull !396, !align !469
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !435
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !81
  %i.an = sext i32 %i.am to i64
  br label %_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit

_ZNK3g2o25SparseBlockMatrixDiagonalIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11baseOfBlockEi.exit: ; preds = %bb.f, %bb.g
  %i.ao = phi i64 [ %i.an, %bb.g ], [ 0, %bb.f ]  ; 6 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !369
  %i.as = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao
  store ptr %i.ap, ptr %4, align 8, !tbaa !485, !alias.scope !1154
  store ptr %i.as, ptr %i.ae, align 8
  store i64 %i.ar, ptr %.sroa.49.0..sroa_idx.i, align 8
  store i64 %.cast.i, ptr %i.af, align 8
  store i64 %i.t, ptr %.sroa.711.24..sroa_idx12.i, align 8
  store i64 %i.ao, ptr %i.ag, align 8
  store i64 %i.t, ptr %.sroa.1017.48..sroa_idx.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !368 ; 10 uses
  %i.av = getelementptr [8 x i8], ptr %i.p, i64 %i.ao ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(80) %4)
  %i.aw = load ptr, ptr %3, align 8, !tbaa !341   ; 18 uses
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
  %wide.load48 = load <2 x double>, ptr %i.bl, align 8, !tbaa !370, !alias.scope !1155
  %wide.load49 = load <2 x double>, ptr %i.bm, align 8, !tbaa !370, !alias.scope !1155
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load50 = load <2 x double>, ptr %i.bk, align 8, !tbaa !370, !alias.scope !1156, !noalias !1155
  %wide.load51 = load <2 x double>, ptr %i.bn, align 8, !tbaa !370, !alias.scope !1156, !noalias !1155
  %i.bo = fadd <2 x double> %wide.load48, %wide.load50
  %i.bp = fadd <2 x double> %wide.load49, %wide.load51
  store <2 x double> %i.bo, ptr %i.bk, align 8, !tbaa !370, !alias.scope !1156, !noalias !1155
  store <2 x double> %i.bp, ptr %i.bn, align 8, !tbaa !370, !alias.scope !1156, !noalias !1155
  %index.next52 = add nuw i64 %index47, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.bq, label %middle.block53, label %vector.body46, !llvm.loop !1139

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
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !370
  %i.bu = load double, ptr %i.br, align 8, !tbaa !370
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.br, align 8, !tbaa !370
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1140

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader57
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader57 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bx = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05.i.i.i.i.i.i.i.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !370
  %i.cc = load double, ptr %i.bz, align 8, !tbaa !370
  %i.cd = fadd double %i.cb, %i.cc
  store double %i.cd, ptr %i.bz, align 8, !tbaa !370
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ce
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !370
  %i.ci = load double, ptr %i.cf, align 8, !tbaa !370
  %i.cj = fadd double %i.ch, %i.ci
  store double %i.cj, ptr %i.cf, align 8, !tbaa !370
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ck
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !370
  %i.co = load double, ptr %i.cl, align 8, !tbaa !370
  %i.cp = fadd double %i.cn, %i.co
  store double %i.cp, ptr %i.cl, align 8, !tbaa !370
  %i.cq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cq
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !370
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !370
  %i.cv = fadd double %i.ct, %i.cu
  store double %i.cv, ptr %i.cr, align 8, !tbaa !370
  %i.cw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cw, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1141

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
  %wide.load = load <2 x double>, ptr %i.dn, align 8, !tbaa !370, !alias.scope !1157
  %wide.load33 = load <2 x double>, ptr %i.do, align 8, !tbaa !370, !alias.scope !1157
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %wide.load34 = load <2 x double>, ptr %i.dm, align 8, !tbaa !370, !alias.scope !1158, !noalias !1157
  %wide.load35 = load <2 x double>, ptr %i.dp, align 8, !tbaa !370, !alias.scope !1158, !noalias !1157
  %i.dq = fadd <2 x double> %wide.load, %wide.load34
  %i.dr = fadd <2 x double> %wide.load33, %wide.load35
  store <2 x double> %i.dq, ptr %i.dm, align 8, !tbaa !370, !alias.scope !1158, !noalias !1157
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !370, !alias.scope !1158, !noalias !1157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1145

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
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !370
  %i.dx = load double, ptr %i.du, align 8, !tbaa !370
  %i.dy = fadd double %i.dw, %i.dx
  store double %i.dy, ptr %i.du, align 8, !tbaa !370
  %i.dz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol, !llvm.loop !1146

.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56
  %.05.i18.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader56 ], [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i.i.prol ]
  %i.ea = sub i64 %.05.i18.i.i.i.i.i.i.i.ph, %i.au
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i17.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.05.i18.i.i.i.i.i.i.i ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.05.i18.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !370
  %i.ef = load double, ptr %i.ec, align 8, !tbaa !370
  %i.eg = fadd double %i.ee, %i.ef
  store double %i.eg, ptr %i.ec, align 8, !tbaa !370
  %i.eh = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.eh
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !370
  %i.el = load double, ptr %i.ei, align 8, !tbaa !370
  %i.em = fadd double %i.ek, %i.el
  store double %i.em, ptr %i.ei, align 8, !tbaa !370
  %i.en = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.en
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !370
  %i.er = load double, ptr %i.eo, align 8, !tbaa !370
  %i.es = fadd double %i.eq, %i.er
  store double %i.es, ptr %i.eo, align 8, !tbaa !370
  %i.et = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.et
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !370
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !370
  %i.ey = fadd double %i.ew, %i.ex
  store double %i.ey, ptr %i.eu, align 8, !tbaa !370
  %i.ez = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ez, %i.au
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.3, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit, label %.lr.ph.i17.i.i.i.i.i.i.i, !llvm.loop !1147

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.av, i64 %.021.i.i.i.i.i.i.i ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.021.i.i.i.i.i.i.i
  %i.fc = load <2 x double>, ptr %i.fb, align 1, !tbaa !71
  %i.fd = load <2 x double>, ptr %i.fa, align 16, !tbaa !71
  %i.fe = fadd <2 x double> %i.fc, %i.fd
  store <2 x double> %i.fe, ptr %i.fa, align 16, !tbaa !71
  %i.ff = add nsw i64 %.021.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.bf
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !14

_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.aw) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !357
  %i.fi = load ptr, ptr %i.u, align 8, !tbaa !356 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 24
  %sext = shl i64 %i.fm, 32
  %i.fn = ashr exact i64 %sext, 32
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %bb.f, label %._crit_edge, !llvm.loop !1148
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12add_internalERS4_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !364  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !365  ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !335  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not12 = icmp eq ptr %i.i, %i.j
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph16
  %i.k = trunc i64 %.014 to i32
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !364
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
  br i1 %i.s, label %.lr.ph16, label %._crit_edge17, !llvm.loop !1159

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit
  %.sroa.08.013 = phi ptr [ %i.i, %.lr.ph ], [ %i.ck, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEpLIS2_EERS2_RKNS0_IT_EE.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !367
  %i.w = load i32, ptr %i.t, align 8, !tbaa !482
  %i.x = tail call noundef ptr @_ZN3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockEiib(ptr noundef nonnull align 8 dereferenceable(73) %1, i32 noundef %i.w, i32 noundef %i.k, i1 noundef zeroext true) ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !358  ; 9 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !358  ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !368 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !369 ; 2 uses
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
begin_hunk_1_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
bb.b:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48
  %i.n = icmp eq i32 %i.f, 0
  br i1 %i.n, label %.thread125, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.g
  %i.p = icmp slt i64 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.thread125

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.thread125:                                       ; preds = %bb.c, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread
  %i.r = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ] ; 5 uses
  %i.s = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ] ; 2 uses
  %i.t = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ]
  %i.u = mul nsw i64 %i.r, %i.r
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread
  %i.v = phi ptr [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ], [ %i.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48 ]
  %i.w = phi ptr [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ], [ %i.h, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48 ] ; 2 uses
  %i.x = phi i64 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48.thread ], [ %i.g, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit48 ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !116, !range !395
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.f, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.f:                                             ; preds = %.thread125, %bb.e
  %i.z = phi i64 [ %i.r, %.thread125 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread125 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = phi ptr [ %i.t, %.thread125 ], [ %i.v, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ac, align 1, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !368
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !369
  %i.ag = mul nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !358
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !370
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i, %bb.f, %bb.e
  %i.aj = phi i64 [ %i.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.z, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.aa, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !364 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %.not104 = icmp eq ptr %i.an, %i.ao
  br i1 %.not104, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !577
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !578
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !500
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(76) ptr @_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.ak) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !117
  %i.aw = and i32 %i.av, -3
  %spec.select.i = icmp eq i32 %i.aw, 0           ; 2 uses
  br i1 %spec.select.i, label %bb.q, label %bb.r

bb.g:                                             ; preds = %.lr.ph103, %.loopexit
  %i.ax = phi ptr [ %i.ao, %.lr.ph103 ], [ %i.ip, %.loopexit ] ; 3 uses
  %i.ay = phi ptr [ %i.an, %.lr.ph103 ], [ %i.iq, %.loopexit ] ; 2 uses
  %.041102 = phi i64 [ 0, %.lr.ph103 ], [ %i.is, %.loopexit ] ; 4 uses
  %.042101 = phi i32 [ 0, %.lr.ph103 ], [ %i.ir, %.loopexit ] ; 3 uses
  %i.az = trunc i64 %.041102 to i32               ; 3 uses
  %.not.i49 = icmp eq i32 %i.az, 0
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %.041102, 32
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !81
  %i.bg = sub nsw i32 %i.bd, %i.bf
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit: ; preds = %bb.h, %bb.i
  %i.bj = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.041102 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !337
  %.not44 = icmp eq i64 %i.bm, 0
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not9799 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not9799, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bq = sext i32 %.042101 to i64                ; 4 uses
  %i.br = sext i32 %i.bj to i64                   ; 9 uses
  %i.bs = icmp sgt i32 %i.bj, 0                   ; 3 uses
  %.not45 = icmp slt i32 %i.az, 0
  %i.bt = shl nsw i64 %i.br, 3                    ; 3 uses
  %i.bu = shl nsw i64 %i.bq, 3                    ; 2 uses
  %i.bv = shl nsw i64 %i.bq, 3
  %i.bw = add nsw i64 %i.bt, -8
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = shl nsw i64 %i.br, 3
  %i.bz = add nsw i64 %i.by, -8
  %min.iters.check = icmp ugt i32 %i.bj, 7
  %n.vec = and i64 %i.br, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.br
  %xtraiter170 = and i64 %i.br, 3
  %i.ca = and i32 %i.bj, 3
  %lcmp.mod171.not = icmp eq i32 %i.ca, 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.sroa.059.0100 = phi ptr [ %i.bo, %.lr.ph ], [ %i.io, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.059.0100, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !482 ; 3 uses
  %.not.i50 = icmp eq i32 %i.cc, 0
  br i1 %.not.i50, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit.thread

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.k
  br i1 %.not45, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.m

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit.thread: ; preds = %bb.k
  %.not4595 = icmp sgt i32 %i.cc, %i.az
  br i1 %.not4595, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit.thread
  %i.cd = load ptr, ptr %1, align 8, !tbaa !435
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr [4 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !81 ; 2 uses
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.cj = sub nsw i32 %i.ci, %i.ch
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.ck = load ptr, ptr %1, align 8, !tbaa !435
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.cm = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cn = phi i32 [ %i.cj, %bb.l ], [ %i.cl, %bb.m ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.059.0100, i64 40 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !367 ; 2 uses
  %i.cq = sext i32 %i.cm to i64                   ; 5 uses
  %i.cr = sext i32 %i.cn to i64                   ; 14 uses
  %i.cs = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !1759 ; 3 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cq
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !1759 ; 10 uses
  %i.cw = mul nsw i64 %i.cv, %i.bq
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw ; 6 uses
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !358 ; 7 uses
  %i.cz = ptrtoaddr ptr %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !368 ; 7 uses
  %i.dc = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 7
  %.not.i52 = icmp eq i64 %i.dd, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit
  %i.de = icmp sgt i32 %i.cn, 0
  %or.cond = select i1 %i.bs, i1 %i.de, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.df = mul i64 %i.bx, %i.cv
  %i.dg = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.dh = shl nsw i64 %i.cq, 3
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.df
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep147 = getelementptr i8, ptr %i.dj, i64 %i.dh
  %i.dk = mul i64 %i.bz, %i.db
  %i.dl = getelementptr i8, ptr %i.cy, i64 %i.dk
  %scevgep148 = getelementptr i8, ptr %i.dl, i64 %i.dg
  %min.iters.check155 = icmp ult i32 %i.cn, 8
  %bound0149 = icmp ult ptr %i.cx, %scevgep148
  %bound1150 = icmp ult ptr %i.cy, %scevgep147
  %found.conflict151 = and i1 %bound0149, %bound1150
  %i.dm = or i64 %i.db, %i.cv
  %i.dn = and i64 %i.dm, 1152921504606846976
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = or i1 %found.conflict151, %i.do
  %n.vec157 = and i64 %i.cr, 2147483644           ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec157, %i.cr
  %xtraiter = and i64 %i.cr, 3
  %i.dq = and i32 %i.cn, 3
  %lcmp.mod.not = icmp eq i32 %i.dq, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.ee, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dr = mul nsw i64 %.0810.i.i, %i.cv
  %i.ds = getelementptr [8 x i8], ptr %i.cx, i64 %i.dr ; 6 uses
  %i.dt = mul nsw i64 %.0810.i.i, %i.db
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.dt ; 6 uses
  %brmerge = select i1 %min.iters.check155, i1 true, i1 %i.dp
  br i1 %brmerge, label %scalar.ph154.preheader, label %vector.body158

vector.body158:                                   ; preds = %.preheader.i.i, %vector.body158
  %index159 = phi i64 [ %index.next162, %vector.body158 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %index159 ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index159 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load160 = load <2 x double>, ptr %i.dv, align 8, !tbaa !370, !alias.scope !1760
  %wide.load161 = load <2 x double>, ptr %i.dw, align 8, !tbaa !370, !alias.scope !1760
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  store <2 x double> %wide.load160, ptr %i.du, align 8, !tbaa !370, !alias.scope !1761, !noalias !1760
  store <2 x double> %wide.load161, ptr %i.dx, align 8, !tbaa !370, !alias.scope !1761, !noalias !1760
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.dy, label %middle.block163, label %vector.body158, !llvm.loop !1740

middle.block163:                                  ; preds = %vector.body158
  br i1 %cmp.n164, label %._crit_edge.i.i, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %.preheader.i.i, %middle.block163
  %.09.i.i.ph = phi i64 [ %n.vec157, %middle.block163 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph154.prol.loopexit, label %scalar.ph154.prol

scalar.ph154.prol:                                ; preds = %scalar.ph154.preheader, %scalar.ph154.prol
  %.09.i.i.prol = phi i64 [ %i.eb, %scalar.ph154.prol ], [ %.09.i.i.ph, %scalar.ph154.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph154.prol ], [ 0, %scalar.ph154.preheader ]
  %i.dz = getelementptr [8 x i8], ptr %i.ds, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.ea = load double, ptr %gep.i.i.prol, align 8, !tbaa !370
  store double %i.ea, ptr %i.dz, align 8, !tbaa !370
  %i.eb = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph154.prol.loopexit, label %scalar.ph154.prol, !llvm.loop !1741

scalar.ph154.prol.loopexit:                       ; preds = %scalar.ph154.prol, %scalar.ph154.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph154.preheader ], [ %i.eb, %scalar.ph154.prol ]
  %i.ec = sub nsw i64 %.09.i.i.ph, %i.cr
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %._crit_edge.i.i, label %scalar.ph154

._crit_edge.i.i:                                  ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154, %middle.block163
  %i.ee = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.ee, %i.br
  br i1 %exitcond12.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %.preheader.i.i, !llvm.loop !1742

scalar.ph154:                                     ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154
  %.09.i.i = phi i64 [ %i.eq, %scalar.ph154 ], [ %.09.i.i.unr, %scalar.ph154.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ds, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.eg = load double, ptr %gep.i.i, align 8, !tbaa !370
  store double %i.eg, ptr %i.ef, align 8, !tbaa !370
  %i.eh = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ds, i64 %i.eh
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eh
  %i.ej = load double, ptr %gep.i.i.1, align 8, !tbaa !370
  store double %i.ej, ptr %i.ei, align 8, !tbaa !370
  %i.ek = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ds, i64 %i.ek
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ek
  %i.em = load double, ptr %gep.i.i.2, align 8, !tbaa !370
  store double %i.em, ptr %i.el, align 8, !tbaa !370
  %i.en = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.ds, i64 %i.en
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.en
  %i.ep = load double, ptr %gep.i.i.3, align 8, !tbaa !370
  store double %i.ep, ptr %i.eo, align 8, !tbaa !370
  %i.eq = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.eq, %i.cr
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph154, !llvm.loop !1743

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit
  %i.er = and i64 %i.cv, 1
  br i1 %i.bs, label %.lr.ph54.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.lr.ph54.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.es = lshr exact i64 %i.dc, 3
  %i.et = and i64 %i.es, 1
  %i.eu = tail call i64 @llvm.smin.i64(i64 %i.et, i64 %i.cr)
  %i.ev = mul i64 %i.bv, %i.cv
  %i.ew = add i64 %i.ev, %i.ct
  %i.ex = shl nsw i64 %i.cq, 3
  %i.ey = add i64 %i.ew, %i.ex
  %i.ez = sub i64 %i.ey, %i.cz
  %i.fa = sub i64 %i.cv, %i.db
  %i.fb = shl i64 %i.fa, 3
  %invariant.op = add i64 %i.ez, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph54.i
  %.03453.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.gi, %._crit_edge.i ] ; 8 uses
  %.03552.i = phi i64 [ %i.eu, %.lr.ph54.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.fc = mul i64 %i.fb, %.03453.i
  %i.fd = sub i64 %i.cr, %.03552.i                ; 2 uses
  %i.fe = and i64 %i.fd, -2                       ; 2 uses
  %i.ff = add nsw i64 %i.fe, %.03552.i            ; 5 uses
  %i.fg = icmp sgt i64 %.03552.i, 0
  br i1 %i.fg, label %.preheader43.loopexit.i, label %.preheader43.i

.preheader43.loopexit.i:                          ; preds = %bb.o
  %i.fh = mul nsw i64 %.03453.i, %i.db
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.fh
  %i.fi = mul nsw i64 %.03453.i, %i.cv
  %i.fj = getelementptr [8 x i8], ptr %i.cx, i64 %i.fi
  %i.fk = load double, ptr %invariant.gep.i, align 8, !tbaa !370
  store double %i.fk, ptr %i.fj, align 8, !tbaa !370
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.loopexit.i, %bb.o
  %i.fl = icmp sgt i64 %i.fd, 1
  br i1 %i.fl, label %.lr.ph47.i.preheader, label %.preheader.i

.lr.ph47.i.preheader:                             ; preds = %.preheader43.i
  %i.fm = mul nsw i64 %.03453.i, %i.cv
  %i.fn = getelementptr [8 x i8], ptr %i.cx, i64 %i.fm
  %i.fo = mul nsw i64 %.03453.i, %i.db
  %invariant.gep = getelementptr [8 x i8], ptr %i.cy, i64 %i.fo
  br label %.lr.ph47.i

.preheader.i:                                     ; preds = %.lr.ph47.i, %.preheader43.i
  %i.fp = icmp slt i64 %i.ff, %i.cr
  br i1 %i.fp, label %.lr.ph49.i, label %._crit_edge.i

.lr.ph49.i:                                       ; preds = %.preheader.i
  %i.fq = mul nsw i64 %.03453.i, %i.cv
  %i.fr = getelementptr [8 x i8], ptr %i.cx, i64 %i.fq ; 2 uses
  %i.fs = mul nsw i64 %.03453.i, %i.db
  %invariant.gep50.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.fs ; 2 uses
  %i.ft = add i64 %.03552.i, %i.fe
  %i.fu = sub i64 %i.cr, %i.ft                    ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.fu, 4
  %.reass = add i64 %i.fc, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond167 = select i1 %min.iters.check135, i1 true, i1 %diff.check
  br i1 %or.cond167, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph49.i
  %n.vec137 = and i64 %i.fu, -4                   ; 3 uses
  %i.fv = add i64 %i.ff, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.fw = add i64 %i.ff, %index139                ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.fr, i64 %i.fw ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %i.fw ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  %wide.load140 = load <2 x double>, ptr %i.fy, align 8, !tbaa !370
  %wide.load141 = load <2 x double>, ptr %i.fz, align 8, !tbaa !370
  %i.ga = getelementptr i8, ptr %i.fx, i64 16
  store <2 x double> %wide.load140, ptr %i.fx, align 8, !tbaa !370
  store <2 x double> %wide.load141, ptr %i.ga, align 8, !tbaa !370
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.gb, label %middle.block143, label %vector.body138, !llvm.loop !1744

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %i.fu, %n.vec137
  br i1 %cmp.n144, label %._crit_edge.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph49.i, %middle.block143
  %.048.i.ph = phi i64 [ %i.ff, %.lr.ph49.i ], [ %i.fv, %middle.block143 ]
  br label %scalar.ph134

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
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
  %i.gy = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.gz = add nsw i64 %i.gy, -8
  %i.ha = shl nsw i64 %i.cq, 3
  %i.hb = add nsw i64 %i.gz, %i.ha
  %i.hc = mul i64 %i.gq, %i.hb
  %scevgep128 = getelementptr i8, ptr %scevgep, i64 %i.hc
  %scevgep129 = getelementptr i8, ptr %i.gt, i64 -8
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.bt
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.gy
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
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !369  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.f
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.b, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.b, %i.m
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.b, i64 noundef %i.f)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !368
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !369
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.q = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.r = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !358    ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.q                   ; 7 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 6 uses
  %i.x = icmp sgt i64 %i.u, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.y = icmp slt i64 %i.w, %i.u
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = sub i64 %i.u, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.d, %i.t
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
end_hunk_1
begin_hunk_2_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !369
  %.not120 = icmp eq i64 %i.m, 0
  br i1 %.not120, label %bb.e, label %.thread121

bb.b:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48
  %i.n = icmp eq i32 %i.f, 0
  br i1 %i.n, label %.thread121, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.g
  %i.p = icmp slt i64 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.thread121

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.thread121:                                       ; preds = %bb.c, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread
  %i.r = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ] ; 5 uses
  %i.s = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ] ; 2 uses
  %i.t = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ]
  %i.u = mul nsw i64 %i.r, %i.r
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread
  %i.v = phi ptr [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ], [ %i.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48 ]
  %i.w = phi ptr [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ], [ %i.h, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48 ] ; 2 uses
  %i.x = phi i64 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48.thread ], [ %i.g, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit48 ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !170, !range !395
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.f, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.f:                                             ; preds = %.thread121, %bb.e
  %i.z = phi i64 [ %i.r, %.thread121 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread121 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = phi ptr [ %i.t, %.thread121 ], [ %i.v, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ac, align 1, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !368
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !369
  %i.ag = mul nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !358
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !370
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i, %bb.f, %bb.e
  %i.aj = phi i64 [ %i.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.z, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.aa, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !613 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !614 ; 2 uses
  %.not100 = icmp eq ptr %i.an, %i.ao
  br i1 %.not100, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !577
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !578
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !500
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(76) ptr @_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.ak) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !117
  %i.aw = and i32 %i.av, -3
  %spec.select.i = icmp eq i32 %i.aw, 0           ; 2 uses
  br i1 %spec.select.i, label %bb.r, label %bb.s

bb.g:                                             ; preds = %.lr.ph99, %.loopexit
  %i.ax = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.ip, %.loopexit ] ; 3 uses
  %i.ay = phi ptr [ %i.an, %.lr.ph99 ], [ %i.iq, %.loopexit ] ; 2 uses
  %.04198 = phi i64 [ 0, %.lr.ph99 ], [ %i.is, %.loopexit ] ; 4 uses
  %.04297 = phi i32 [ 0, %.lr.ph99 ], [ %i.ir, %.loopexit ] ; 3 uses
  %i.az = trunc i64 %.04198 to i32                ; 3 uses
  %.not.i49 = icmp eq i32 %i.az, 0
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %.04198, 32
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !81
  %i.bg = sub nsw i32 %i.bd, %i.bf
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit: ; preds = %bb.h, %bb.i
  %i.bj = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.04198 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !337
  %.not44 = icmp eq i64 %i.bm, 0
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not9395 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not9395, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bq = sext i32 %.04297 to i64                 ; 4 uses
  %i.br = sext i32 %i.bj to i64                   ; 9 uses
  %i.bs = icmp sgt i32 %i.bj, 0                   ; 3 uses
  %.not45 = icmp slt i32 %i.az, 0
  %i.bt = shl nsw i64 %i.br, 3                    ; 2 uses
  %i.bu = shl nsw i64 %i.bq, 3                    ; 2 uses
  %i.bv = mul nsw i64 %i.br, 24                   ; 2 uses
  %i.bw = shl nsw i64 %i.bq, 3
  %i.bx = add nsw i64 %i.bt, -8
  %i.by = add nsw i64 %i.bx, %i.bu
  %min.iters.check = icmp ult i32 %i.bj, 5
  %i.bz = and i64 %i.br, 3
  %i.ca = and i32 %i.bj, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.bz
  %n.vec = sub nsw i64 %i.br, %i.cc               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.sroa.059.096 = phi ptr [ %i.bo, %.lr.ph ], [ %i.io, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !635 ; 3 uses
  %.not.i50 = icmp eq i32 %i.ce, 0
  br i1 %.not.i50, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.k
  br i1 %.not45, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.m

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread: ; preds = %bb.k
  %.not4591 = icmp sgt i32 %i.ce, %i.az
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !435
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !81
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !435
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !617 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2130 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2130 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep140 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep141 = getelementptr i8, ptr %i.cr, i64 -24
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bv
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.df
  %min.iters.check149 = icmp ult i32 %i.cp, 6
  %bound0144 = icmp ult ptr %i.da, %scevgep143
  %bound1145 = icmp ult ptr %i.cr, %scevgep140
  %found.conflict146 = and i1 %bound0144, %bound1145
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check147 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict146, %stride.check147
  %n.vec151 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n158 = icmp eq i64 %n.vec151, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 24
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check149, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph148.preheader, label %vector.body152

vector.body152:                                   ; preds = %.preheader.i.i, %vector.body152
  %index153 = phi i64 [ %index.next156, %vector.body152 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index153 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index153 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load154 = load <2 x double>, ptr %i.do, align 8, !tbaa !370, !alias.scope !2131
  %wide.load155 = load <2 x double>, ptr %i.dp, align 8, !tbaa !370, !alias.scope !2131
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load154, ptr %i.dn, align 8, !tbaa !370, !alias.scope !2132, !noalias !2131
  store <2 x double> %wide.load155, ptr %i.dq, align 8, !tbaa !370, !alias.scope !2132, !noalias !2131
  %index.next156 = add nuw i64 %index153, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.dr, label %middle.block157, label %vector.body152, !llvm.loop !2111

middle.block157:                                  ; preds = %vector.body152
  br i1 %cmp.n158, label %._crit_edge.i.i, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %.preheader.i.i, %middle.block157
  %.09.i.i.ph = phi i64 [ %n.vec151, %middle.block157 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader, %scalar.ph148.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph148.prol ], [ %.09.i.i.ph, %scalar.ph148.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph148.prol ], [ 0, %scalar.ph148.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !370
  store double %i.dt, ptr %i.ds, align 8, !tbaa !370
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol, !llvm.loop !2112

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph148.preheader ], [ %i.du, %scalar.ph148.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph148

._crit_edge.i.i:                                  ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block157
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond12.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !2113

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph148 ], [ %.09.i.i.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !370
  store double %i.dz, ptr %i.dy, align 8, !tbaa !370
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !370
  store double %i.ec, ptr %i.eb, align 8, !tbaa !370
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !370
  store double %i.ef, ptr %i.ee, align 8, !tbaa !370
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !370
  store double %i.ei, ptr %i.eh, align 8, !tbaa !370
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph148, !llvm.loop !2114

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -24
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fy, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 2 uses
  %i.ex = and i64 %i.ew, -2                       ; 2 uses
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 24
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !370
  store double %i.fc, ptr %i.fb, align 8, !tbaa !370
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 24
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 24
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %i.fj = add i64 %.03554.i, %i.ex
  %i.fk = sub i64 %i.cu, %i.fj                    ; 3 uses
  %min.iters.check130 = icmp ult i64 %i.fk, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond161 = select i1 %min.iters.check130, i1 true, i1 %diff.check
  br i1 %or.cond161, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph51.i
  %n.vec132 = and i64 %i.fk, -4                   ; 3 uses
  %i.fl = add i64 %i.ey, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.fm = add i64 %i.ey, %index134                ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fm ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %wide.load = load <2 x double>, ptr %i.fo, align 8, !tbaa !370
  %wide.load135 = load <2 x double>, ptr %i.fp, align 8, !tbaa !370
  %i.fq = getelementptr i8, ptr %i.fn, i64 16
  store <2 x double> %wide.load, ptr %i.fn, align 8, !tbaa !370
  store <2 x double> %wide.load135, ptr %i.fq, align 8, !tbaa !370
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.fr, label %middle.block137, label %vector.body133, !llvm.loop !2115

middle.block137:                                  ; preds = %vector.body133
  %cmp.n = icmp eq i64 %i.fk, %n.vec132
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.lr.ph51.i, %middle.block137
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fl, %middle.block137 ]
  br label %scalar.ph129

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.fu, %bb.p ] ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.ft = load <2 x double>, ptr %gep, align 1, !tbaa !71
  store <2 x double> %i.ft, ptr %i.fs, align 16, !tbaa !71
  %i.fu = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.ey
  br i1 %i.fv, label %bb.p, label %.preheader.i, !llvm.loop !2116

._crit_edge.i:                                    ; preds = %scalar.ph129, %middle.block137, %.preheader.i
  %i.fw = add nsw i64 %.03554.i, %i.ek
  %i.fx = srem i64 %i.fw, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.fy, %i.br
  br i1 %exitcond59.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !2117

scalar.ph129:                                     ; preds = %scalar.ph129.preheader, %scalar.ph129
  %.050.i = phi i64 [ %i.gb, %scalar.ph129 ], [ %.050.i.ph, %scalar.ph129.preheader ] ; 3 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.ga = load double, ptr %gep53.i, align 8, !tbaa !370
  store double %i.ga, ptr %i.fz, align 8, !tbaa !370
  %i.gb = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.cu
  br i1 %i.gc, label %scalar.ph129, label %._crit_edge.i, !llvm.loop !2118

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04297
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gd = load ptr, ptr %i.cq, align 8, !tbaa !617 ; 3 uses
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2133 ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %i.bq
  %i.gg = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2133 ; 4 uses
  %i.gh = mul i64 %i.gg, %i.ct
  %i.gi = getelementptr [8 x i8], ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gj, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gk = getelementptr i8, ptr %i.ge, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gk, i64 %i.bu
  %i.gl = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gm = add nsw i64 %i.gl, -8
  %i.gn = shl nsw i64 %i.ct, 3
  %i.go = add nsw i64 %i.gm, %i.gn
  %i.gp = mul i64 %i.gg, %i.go
  %scevgep124 = getelementptr i8, ptr %scevgep, i64 %i.gp
  %scevgep125 = getelementptr i8, ptr %i.gd, i64 -24
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.bv
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.gl
  %bound0 = icmp ult ptr %i.gi, %scevgep127
  %bound1 = icmp ult ptr %i.gd, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %.mask160 = and i64 %i.gg, 1152921504606846976
  %stride.check = icmp ne i64 %.mask160, 0
  %i.gq = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gr = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gg
  %i.gs = getelementptr [8 x i8], ptr %i.gi, i64 %i.gr ; 6 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gd, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge167 = select i1 %min.iters.check, i1 true, i1 %i.gq
  br i1 %brmerge167, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gu = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter163 = and i64 %i.gu, 3                 ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gy, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 24
  %i.gw = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !370
  store double %i.gx, ptr %i.gv, align 8, !tbaa !370
  %i.gy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2121

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %i.gz = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.hb = getelementptr [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.hc = mul nuw nsw i64 %index, 24
  %i.hd = mul nuw i64 %index, 24
  %i.he = mul nuw i64 %index, 24
  %i.hf = mul nuw i64 %index, 24
  %i.hg = getelementptr i8, ptr %i.gt, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.gt, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 24
  %i.hj = getelementptr i8, ptr %i.gt, i64 %i.he
  %i.hk = getelementptr i8, ptr %i.hj, i64 48
  %i.hl = getelementptr i8, ptr %i.gt, i64 %i.hf
  %i.hm = getelementptr i8, ptr %i.hl, i64 72
  %i.hn = load double, ptr %i.hg, align 8, !tbaa !370, !alias.scope !2134
  %i.ho = load double, ptr %i.hi, align 8, !tbaa !370, !alias.scope !2134
  %i.hp = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.ho, i64 1
  %i.hr = load double, ptr %i.hk, align 8, !tbaa !370, !alias.scope !2134
  %i.hs = load double, ptr %i.hm, align 8, !tbaa !370, !alias.scope !2134
  %i.ht = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = getelementptr i8, ptr %i.hb, i64 16
  store <2 x double> %i.hq, ptr %i.hb, align 8, !tbaa !370, !alias.scope !2135, !noalias !2134
  store <2 x double> %i.hu, ptr %i.hv, align 8, !tbaa !370, !alias.scope !2135, !noalias !2134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2125

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hx = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2126

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 24
  %i.hz = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !370
  store double %i.ia, ptr %i.hy, align 8, !tbaa !370
  %i.ib = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.gs, i64 %i.ib
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ib, 24
  %i.id = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ie = load double, ptr %i.id, align 8, !tbaa !370
  store double %i.ie, ptr %i.ic, align 8, !tbaa !370
  %i.if = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.gs, i64 %i.if
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.if, 24
  %i.ih = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !370
  store double %i.ii, ptr %i.ig, align 8, !tbaa !370
  %i.ij = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %i.gs, i64 %i.ij
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ij, 24
  %i.il = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.im = load double, ptr %i.il, align 8, !tbaa !370
  store double %i.im, ptr %i.ik, align 8, !tbaa !370
  %i.in = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.in, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !2127

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit
  %i.io = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.io, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2128

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre104 = load ptr, ptr %i.am, align 8, !tbaa !613
  %.pre105 = load ptr, ptr %i.al, align 8, !tbaa !614
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit
  %i.ip = phi ptr [ %.pre105, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre104, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ir = add nsw i32 %i.bj, %.04297
  %i.is = add nuw i64 %.04198, 1                  ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 48
  %i.ix = icmp ult i64 %i.is, %i.iw
  br i1 %i.ix, label %bb.g, label %._crit_edge, !llvm.loop !2129

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi6ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN3g2o11BlockSolverINS_17BlockSolverTraitsILi6ELi3EEEEE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #35
  br label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit

_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.d) #35
  br label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2

_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2: ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !581  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !582
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !676
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #36
end_hunk_2
begin_hunk_3_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !369
  %.not120 = icmp eq i64 %i.m, 0
  br i1 %.not120, label %bb.e, label %.thread121

bb.b:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48
  %i.n = icmp eq i32 %i.f, 0
  br i1 %i.n, label %.thread121, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.g
  %i.p = icmp slt i64 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.thread121

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.thread121:                                       ; preds = %bb.c, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread
  %i.r = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ] ; 5 uses
  %i.s = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ] ; 2 uses
  %i.t = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ]
  %i.u = mul nsw i64 %i.r, %i.r
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread
  %i.v = phi ptr [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ], [ %i.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48 ]
  %i.w = phi ptr [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ], [ %i.h, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48 ] ; 2 uses
  %i.x = phi i64 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48.thread ], [ %i.g, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4colsEv.exit48 ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !236, !range !395
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.f, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.f:                                             ; preds = %.thread121, %bb.e
  %i.z = phi i64 [ %i.r, %.thread121 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread121 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = phi ptr [ %i.t, %.thread121 ], [ %i.v, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ac, align 1, !tbaa !236
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !368
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !369
  %i.ag = mul nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !358
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !370
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i, %bb.f, %bb.e
  %i.aj = phi i64 [ %i.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.z, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.aa, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !705 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !706 ; 2 uses
  %.not100 = icmp eq ptr %i.an, %i.ao
  br i1 %.not100, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !577
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !578
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !500
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(76) ptr @_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.ak) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !117
  %i.aw = and i32 %i.av, -3
  %spec.select.i = icmp eq i32 %i.aw, 0           ; 2 uses
  br i1 %spec.select.i, label %bb.r, label %bb.s

bb.g:                                             ; preds = %.lr.ph99, %.loopexit
  %i.ax = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.ip, %.loopexit ] ; 3 uses
  %i.ay = phi ptr [ %i.an, %.lr.ph99 ], [ %i.iq, %.loopexit ] ; 2 uses
  %.04198 = phi i64 [ 0, %.lr.ph99 ], [ %i.is, %.loopexit ] ; 4 uses
  %.04297 = phi i32 [ 0, %.lr.ph99 ], [ %i.ir, %.loopexit ] ; 3 uses
  %i.az = trunc i64 %.04198 to i32                ; 3 uses
  %.not.i49 = icmp eq i32 %i.az, 0
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %.04198, 32
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !81
  %i.bg = sub nsw i32 %i.bd, %i.bf
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit: ; preds = %bb.h, %bb.i
  %i.bj = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.04198 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !337
  %.not44 = icmp eq i64 %i.bm, 0
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not9395 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not9395, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bq = sext i32 %.04297 to i64                 ; 4 uses
  %i.br = sext i32 %i.bj to i64                   ; 9 uses
  %i.bs = icmp sgt i32 %i.bj, 0                   ; 3 uses
  %.not45 = icmp slt i32 %i.az, 0
  %i.bt = shl nsw i64 %i.br, 3                    ; 2 uses
  %i.bu = shl nsw i64 %i.bq, 3                    ; 2 uses
  %i.bv = mul nsw i64 %i.br, 48                   ; 2 uses
  %i.bw = shl nsw i64 %i.bq, 3
  %i.bx = add nsw i64 %i.bt, -8
  %i.by = add nsw i64 %i.bx, %i.bu
  %min.iters.check = icmp ult i32 %i.bj, 5
  %i.bz = and i64 %i.br, 3
  %i.ca = and i32 %i.bj, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.bz
  %n.vec = sub nsw i64 %i.br, %i.cc               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.sroa.059.096 = phi ptr [ %i.bo, %.lr.ph ], [ %i.io, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !721 ; 3 uses
  %.not.i50 = icmp eq i32 %i.ce, 0
  br i1 %.not.i50, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.k
  br i1 %.not45, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.m

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread: ; preds = %bb.k
  %.not4591 = icmp sgt i32 %i.ce, %i.az
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !435
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !81
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !435
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !709 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2363 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2363 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep140 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep141 = getelementptr i8, ptr %i.cr, i64 -48
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bv
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.df
  %min.iters.check149 = icmp ult i32 %i.cp, 6
  %bound0144 = icmp ult ptr %i.da, %scevgep143
  %bound1145 = icmp ult ptr %i.cr, %scevgep140
  %found.conflict146 = and i1 %bound0144, %bound1145
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check147 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict146, %stride.check147
  %n.vec151 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n158 = icmp eq i64 %n.vec151, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 48
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check149, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph148.preheader, label %vector.body152

vector.body152:                                   ; preds = %.preheader.i.i, %vector.body152
  %index153 = phi i64 [ %index.next156, %vector.body152 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index153 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index153 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load154 = load <2 x double>, ptr %i.do, align 8, !tbaa !370, !alias.scope !2364
  %wide.load155 = load <2 x double>, ptr %i.dp, align 8, !tbaa !370, !alias.scope !2364
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load154, ptr %i.dn, align 8, !tbaa !370, !alias.scope !2365, !noalias !2364
  store <2 x double> %wide.load155, ptr %i.dq, align 8, !tbaa !370, !alias.scope !2365, !noalias !2364
  %index.next156 = add nuw i64 %index153, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.dr, label %middle.block157, label %vector.body152, !llvm.loop !2344

middle.block157:                                  ; preds = %vector.body152
  br i1 %cmp.n158, label %._crit_edge.i.i, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %.preheader.i.i, %middle.block157
  %.09.i.i.ph = phi i64 [ %n.vec151, %middle.block157 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader, %scalar.ph148.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph148.prol ], [ %.09.i.i.ph, %scalar.ph148.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph148.prol ], [ 0, %scalar.ph148.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !370
  store double %i.dt, ptr %i.ds, align 8, !tbaa !370
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol, !llvm.loop !2345

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph148.preheader ], [ %i.du, %scalar.ph148.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph148

._crit_edge.i.i:                                  ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block157
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond12.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !2346

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph148 ], [ %.09.i.i.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !370
  store double %i.dz, ptr %i.dy, align 8, !tbaa !370
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !370
  store double %i.ec, ptr %i.eb, align 8, !tbaa !370
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !370
  store double %i.ef, ptr %i.ee, align 8, !tbaa !370
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !370
  store double %i.ei, ptr %i.eh, align 8, !tbaa !370
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph148, !llvm.loop !2347

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -48
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fy, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 2 uses
  %i.ex = and i64 %i.ew, -2                       ; 2 uses
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 48
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !370
  store double %i.fc, ptr %i.fb, align 8, !tbaa !370
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 48
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 48
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %i.fj = add i64 %.03554.i, %i.ex
  %i.fk = sub i64 %i.cu, %i.fj                    ; 3 uses
  %min.iters.check130 = icmp ult i64 %i.fk, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond161 = select i1 %min.iters.check130, i1 true, i1 %diff.check
  br i1 %or.cond161, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph51.i
  %n.vec132 = and i64 %i.fk, -4                   ; 3 uses
  %i.fl = add i64 %i.ey, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.fm = add i64 %i.ey, %index134                ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fm ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %wide.load = load <2 x double>, ptr %i.fo, align 8, !tbaa !370
  %wide.load135 = load <2 x double>, ptr %i.fp, align 8, !tbaa !370
  %i.fq = getelementptr i8, ptr %i.fn, i64 16
  store <2 x double> %wide.load, ptr %i.fn, align 8, !tbaa !370
  store <2 x double> %wide.load135, ptr %i.fq, align 8, !tbaa !370
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.fr, label %middle.block137, label %vector.body133, !llvm.loop !2348

middle.block137:                                  ; preds = %vector.body133
  %cmp.n = icmp eq i64 %i.fk, %n.vec132
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.lr.ph51.i, %middle.block137
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fl, %middle.block137 ]
  br label %scalar.ph129

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.fu, %bb.p ] ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.ft = load <2 x double>, ptr %gep, align 1, !tbaa !71
  store <2 x double> %i.ft, ptr %i.fs, align 16, !tbaa !71
  %i.fu = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.ey
  br i1 %i.fv, label %bb.p, label %.preheader.i, !llvm.loop !2349

._crit_edge.i:                                    ; preds = %scalar.ph129, %middle.block137, %.preheader.i
  %i.fw = add nsw i64 %.03554.i, %i.ek
  %i.fx = srem i64 %i.fw, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.fy, %i.br
  br i1 %exitcond59.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !2350

scalar.ph129:                                     ; preds = %scalar.ph129.preheader, %scalar.ph129
  %.050.i = phi i64 [ %i.gb, %scalar.ph129 ], [ %.050.i.ph, %scalar.ph129.preheader ] ; 3 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.ga = load double, ptr %gep53.i, align 8, !tbaa !370
  store double %i.ga, ptr %i.fz, align 8, !tbaa !370
  %i.gb = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.cu
  br i1 %i.gc, label %scalar.ph129, label %._crit_edge.i, !llvm.loop !2351

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04297
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gd = load ptr, ptr %i.cq, align 8, !tbaa !709 ; 3 uses
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2366 ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %i.bq
  %i.gg = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2366 ; 4 uses
  %i.gh = mul i64 %i.gg, %i.ct
  %i.gi = getelementptr [8 x i8], ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gj, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gk = getelementptr i8, ptr %i.ge, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gk, i64 %i.bu
  %i.gl = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gm = add nsw i64 %i.gl, -8
  %i.gn = shl nsw i64 %i.ct, 3
  %i.go = add nsw i64 %i.gm, %i.gn
  %i.gp = mul i64 %i.gg, %i.go
  %scevgep124 = getelementptr i8, ptr %scevgep, i64 %i.gp
  %scevgep125 = getelementptr i8, ptr %i.gd, i64 -48
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.bv
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.gl
  %bound0 = icmp ult ptr %i.gi, %scevgep127
  %bound1 = icmp ult ptr %i.gd, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %.mask160 = and i64 %i.gg, 1152921504606846976
  %stride.check = icmp ne i64 %.mask160, 0
  %i.gq = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gr = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gg
  %i.gs = getelementptr [8 x i8], ptr %i.gi, i64 %i.gr ; 6 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gd, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge167 = select i1 %min.iters.check, i1 true, i1 %i.gq
  br i1 %brmerge167, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gu = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter163 = and i64 %i.gu, 3                 ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gy, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 48
  %i.gw = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !370
  store double %i.gx, ptr %i.gv, align 8, !tbaa !370
  %i.gy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2354

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %i.gz = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.hb = getelementptr [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.hc = mul nuw nsw i64 %index, 48
  %i.hd = mul nuw i64 %index, 48
  %i.he = mul nuw i64 %index, 48
  %i.hf = mul nuw i64 %index, 48
  %i.hg = getelementptr i8, ptr %i.gt, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.gt, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 48
  %i.hj = getelementptr i8, ptr %i.gt, i64 %i.he
  %i.hk = getelementptr i8, ptr %i.hj, i64 96
  %i.hl = getelementptr i8, ptr %i.gt, i64 %i.hf
  %i.hm = getelementptr i8, ptr %i.hl, i64 144
  %i.hn = load double, ptr %i.hg, align 8, !tbaa !370, !alias.scope !2367
  %i.ho = load double, ptr %i.hi, align 8, !tbaa !370, !alias.scope !2367
  %i.hp = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.ho, i64 1
  %i.hr = load double, ptr %i.hk, align 8, !tbaa !370, !alias.scope !2367
  %i.hs = load double, ptr %i.hm, align 8, !tbaa !370, !alias.scope !2367
  %i.ht = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = getelementptr i8, ptr %i.hb, i64 16
  store <2 x double> %i.hq, ptr %i.hb, align 8, !tbaa !370, !alias.scope !2368, !noalias !2367
  store <2 x double> %i.hu, ptr %i.hv, align 8, !tbaa !370, !alias.scope !2368, !noalias !2367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2358

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hx = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2359

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 48
  %i.hz = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !370
  store double %i.ia, ptr %i.hy, align 8, !tbaa !370
  %i.ib = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.gs, i64 %i.ib
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ib, 48
  %i.id = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ie = load double, ptr %i.id, align 8, !tbaa !370
  store double %i.ie, ptr %i.ic, align 8, !tbaa !370
  %i.if = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.gs, i64 %i.if
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.if, 48
  %i.ih = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !370
  store double %i.ii, ptr %i.ig, align 8, !tbaa !370
  %i.ij = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %i.gs, i64 %i.ij
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ij, 48
  %i.il = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.im = load double, ptr %i.il, align 8, !tbaa !370
  store double %i.im, ptr %i.ik, align 8, !tbaa !370
  %i.in = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.in, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !2360

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit
  %i.io = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.io, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2361

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre104 = load ptr, ptr %i.am, align 8, !tbaa !705
  %.pre105 = load ptr, ptr %i.al, align 8, !tbaa !706
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit
  %i.ip = phi ptr [ %.pre105, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre104, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ir = add nsw i32 %i.bj, %.04297
  %i.is = add nuw i64 %.04198, 1                  ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 48
  %i.ix = icmp ult i64 %i.is, %i.iw
  br i1 %i.ix, label %bb.g, label %._crit_edge, !llvm.loop !2362

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN3g2o11BlockSolverINS_17BlockSolverTraitsILi7ELi3EEEEE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #35
  br label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit

_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338  ; 2 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.d) #35
  br label %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2

_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2: ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !581  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !582
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_dN3g2o15aligned_deleterIdEEED2Ev.exit2, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !753  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !754
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #36
end_hunk_3
begin_hunk_4_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !369
  %.not120 = icmp eq i64 %i.m, 0
  br i1 %.not120, label %bb.e, label %.thread121

bb.b:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48
  %i.n = icmp eq i32 %i.f, 0
  br i1 %i.n, label %.thread121, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.g
  %i.p = icmp slt i64 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.thread121

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

.thread121:                                       ; preds = %bb.c, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread
  %i.r = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ] ; 5 uses
  %i.s = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ] ; 2 uses
  %i.t = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ]
  %i.u = mul nsw i64 %i.r, %i.r
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.u, i64 noundef %i.r, i64 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread
  %i.v = phi ptr [ %i.l, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ], [ %i.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48 ]
  %i.w = phi ptr [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ], [ %i.h, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48 ] ; 2 uses
  %i.x = phi i64 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48.thread ], [ %i.g, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4colsEv.exit48 ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !290, !range !395
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.f, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

bb.f:                                             ; preds = %.thread121, %bb.e
  %i.z = phi i64 [ %i.r, %.thread121 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread121 ], [ %i.w, %bb.e ] ; 3 uses
  %i.ab = phi ptr [ %i.t, %.thread121 ], [ %i.v, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ac, align 1, !tbaa !290
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !368
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !369
  %i.ag = mul nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !358
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !370
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i, %bb.f, %bb.e
  %i.aj = phi i64 [ %i.z, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.z, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.aa, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i ], [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !779 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !780 ; 2 uses
  %.not100 = icmp eq ptr %i.an, %i.ao
  br i1 %.not100, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !577
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !578
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !500
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(76) ptr @_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.ak) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load i32, ptr %i.au, align 8, !tbaa !117
  %i.aw = and i32 %i.av, -3
  %spec.select.i = icmp eq i32 %i.aw, 0           ; 2 uses
  br i1 %spec.select.i, label %bb.r, label %bb.s

bb.g:                                             ; preds = %.lr.ph99, %.loopexit
  %i.ax = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.ip, %.loopexit ] ; 3 uses
  %i.ay = phi ptr [ %i.an, %.lr.ph99 ], [ %i.iq, %.loopexit ] ; 2 uses
  %.04198 = phi i64 [ 0, %.lr.ph99 ], [ %i.is, %.loopexit ] ; 4 uses
  %.04297 = phi i32 [ 0, %.lr.ph99 ], [ %i.ir, %.loopexit ] ; 3 uses
  %i.az = trunc i64 %.04198 to i32                ; 3 uses
  %.not.i49 = icmp eq i32 %i.az, 0
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext = shl i64 %.04198, 32
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = getelementptr i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !81
  %i.bg = sub nsw i32 %i.bd, %i.bf
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !435
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit: ; preds = %bb.h, %bb.i
  %i.bj = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.04198 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !337
  %.not44 = icmp eq i64 %i.bm, 0
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.not9395 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not9395, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bq = sext i32 %.04297 to i64                 ; 4 uses
  %i.br = sext i32 %i.bj to i64                   ; 9 uses
  %i.bs = icmp sgt i32 %i.bj, 0                   ; 3 uses
  %.not45 = icmp slt i32 %i.az, 0
  %i.bt = shl nsw i64 %i.br, 3                    ; 2 uses
  %i.bu = shl nsw i64 %i.bq, 3                    ; 2 uses
  %i.bv = mul nsw i64 %i.br, 56                   ; 2 uses
  %i.bw = shl nsw i64 %i.bq, 3
  %i.bx = add nsw i64 %i.bt, -8
  %i.by = add nsw i64 %i.bx, %i.bu
  %min.iters.check = icmp ult i32 %i.bj, 5
  %i.bz = and i64 %i.br, 3
  %i.ca = and i32 %i.bj, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.bz
  %n.vec = sub nsw i64 %i.br, %i.cc               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.sroa.059.096 = phi ptr [ %i.bo, %.lr.ph ], [ %i.io, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !795 ; 3 uses
  %.not.i50 = icmp eq i32 %i.ce, 0
  br i1 %.not.i50, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.k
  br i1 %.not45, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.m

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread: ; preds = %bb.k
  %.not4591 = icmp sgt i32 %i.ce, %i.az
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !435
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !81
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !435
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !81
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !783 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2577 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2577 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep140 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep141 = getelementptr i8, ptr %i.cr, i64 -56
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bv
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.df
  %min.iters.check149 = icmp ult i32 %i.cp, 6
  %bound0144 = icmp ult ptr %i.da, %scevgep143
  %bound1145 = icmp ult ptr %i.cr, %scevgep140
  %found.conflict146 = and i1 %bound0144, %bound1145
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check147 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict146, %stride.check147
  %n.vec151 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n158 = icmp eq i64 %n.vec151, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 56
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check149, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph148.preheader, label %vector.body152

vector.body152:                                   ; preds = %.preheader.i.i, %vector.body152
  %index153 = phi i64 [ %index.next156, %vector.body152 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index153 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index153 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load154 = load <2 x double>, ptr %i.do, align 8, !tbaa !370, !alias.scope !2578
  %wide.load155 = load <2 x double>, ptr %i.dp, align 8, !tbaa !370, !alias.scope !2578
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load154, ptr %i.dn, align 8, !tbaa !370, !alias.scope !2579, !noalias !2578
  store <2 x double> %wide.load155, ptr %i.dq, align 8, !tbaa !370, !alias.scope !2579, !noalias !2578
  %index.next156 = add nuw i64 %index153, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.dr, label %middle.block157, label %vector.body152, !llvm.loop !2558

middle.block157:                                  ; preds = %vector.body152
  br i1 %cmp.n158, label %._crit_edge.i.i, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %.preheader.i.i, %middle.block157
  %.09.i.i.ph = phi i64 [ %n.vec151, %middle.block157 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader, %scalar.ph148.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph148.prol ], [ %.09.i.i.ph, %scalar.ph148.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph148.prol ], [ 0, %scalar.ph148.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !370
  store double %i.dt, ptr %i.ds, align 8, !tbaa !370
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol, !llvm.loop !2559

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph148.preheader ], [ %i.du, %scalar.ph148.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph148

._crit_edge.i.i:                                  ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block157
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond12.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !2560

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph148 ], [ %.09.i.i.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !370
  store double %i.dz, ptr %i.dy, align 8, !tbaa !370
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !370
  store double %i.ec, ptr %i.eb, align 8, !tbaa !370
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !370
  store double %i.ef, ptr %i.ee, align 8, !tbaa !370
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !370
  store double %i.ei, ptr %i.eh, align 8, !tbaa !370
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph148, !llvm.loop !2561

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -56
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fy, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 2 uses
  %i.ex = and i64 %i.ew, -2                       ; 2 uses
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 56
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !370
  store double %i.fc, ptr %i.fb, align 8, !tbaa !370
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 56
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 56
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %i.fj = add i64 %.03554.i, %i.ex
  %i.fk = sub i64 %i.cu, %i.fj                    ; 3 uses
  %min.iters.check130 = icmp ult i64 %i.fk, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond161 = select i1 %min.iters.check130, i1 true, i1 %diff.check
  br i1 %or.cond161, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph51.i
  %n.vec132 = and i64 %i.fk, -4                   ; 3 uses
  %i.fl = add i64 %i.ey, %n.vec132
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.fm = add i64 %i.ey, %index134                ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fm ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %wide.load = load <2 x double>, ptr %i.fo, align 8, !tbaa !370
  %wide.load135 = load <2 x double>, ptr %i.fp, align 8, !tbaa !370
  %i.fq = getelementptr i8, ptr %i.fn, i64 16
  store <2 x double> %wide.load, ptr %i.fn, align 8, !tbaa !370
  store <2 x double> %wide.load135, ptr %i.fq, align 8, !tbaa !370
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.fr, label %middle.block137, label %vector.body133, !llvm.loop !2562

middle.block137:                                  ; preds = %vector.body133
  %cmp.n = icmp eq i64 %i.fk, %n.vec132
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.lr.ph51.i, %middle.block137
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fl, %middle.block137 ]
  br label %scalar.ph129

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.fu, %bb.p ] ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.ft = load <2 x double>, ptr %gep, align 1, !tbaa !71
  store <2 x double> %i.ft, ptr %i.fs, align 16, !tbaa !71
  %i.fu = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.ey
  br i1 %i.fv, label %bb.p, label %.preheader.i, !llvm.loop !2563

._crit_edge.i:                                    ; preds = %scalar.ph129, %middle.block137, %.preheader.i
  %i.fw = add nsw i64 %.03554.i, %i.ek
  %i.fx = srem i64 %i.fw, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.fy, %i.br
  br i1 %exitcond59.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !2564

scalar.ph129:                                     ; preds = %scalar.ph129.preheader, %scalar.ph129
  %.050.i = phi i64 [ %i.gb, %scalar.ph129 ], [ %.050.i.ph, %scalar.ph129.preheader ] ; 3 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.ga = load double, ptr %gep53.i, align 8, !tbaa !370
  store double %i.ga, ptr %i.fz, align 8, !tbaa !370
  %i.gb = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.cu
  br i1 %i.gc, label %scalar.ph129, label %._crit_edge.i, !llvm.loop !2565

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04297
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gd = load ptr, ptr %i.cq, align 8, !tbaa !783 ; 3 uses
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !358, !noalias !2580 ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %i.bq
  %i.gg = load i64, ptr %i.ap, align 8, !tbaa !368, !noalias !2580 ; 4 uses
  %i.gh = mul i64 %i.gg, %i.ct
  %i.gi = getelementptr [8 x i8], ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gj, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gk = getelementptr i8, ptr %i.ge, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gk, i64 %i.bu
  %i.gl = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gm = add nsw i64 %i.gl, -8
  %i.gn = shl nsw i64 %i.ct, 3
  %i.go = add nsw i64 %i.gm, %i.gn
  %i.gp = mul i64 %i.gg, %i.go
  %scevgep124 = getelementptr i8, ptr %scevgep, i64 %i.gp
  %scevgep125 = getelementptr i8, ptr %i.gd, i64 -56
  %scevgep126 = getelementptr i8, ptr %scevgep125, i64 %i.bv
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.gl
  %bound0 = icmp ult ptr %i.gi, %scevgep127
  %bound1 = icmp ult ptr %i.gd, %scevgep124
  %found.conflict = and i1 %bound0, %bound1
  %.mask160 = and i64 %i.gg, 1152921504606846976
  %stride.check = icmp ne i64 %.mask160, 0
  %i.gq = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gr = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gg
  %i.gs = getelementptr [8 x i8], ptr %i.gi, i64 %i.gr ; 6 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gd, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge167 = select i1 %min.iters.check, i1 true, i1 %i.gq
  br i1 %brmerge167, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gu = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter163 = and i64 %i.gu, 3                 ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gy, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gv = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 56
  %i.gw = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !370
  store double %i.gx, ptr %i.gv, align 8, !tbaa !370
  %i.gy = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2568

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %i.gz = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.hb = getelementptr [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.hc = mul nuw nsw i64 %index, 56
  %i.hd = mul nuw i64 %index, 56
  %i.he = mul nuw i64 %index, 56
  %i.hf = mul nuw i64 %index, 56
  %i.hg = getelementptr i8, ptr %i.gt, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.gt, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 56
  %i.hj = getelementptr i8, ptr %i.gt, i64 %i.he
  %i.hk = getelementptr i8, ptr %i.hj, i64 112
  %i.hl = getelementptr i8, ptr %i.gt, i64 %i.hf
  %i.hm = getelementptr i8, ptr %i.hl, i64 168
  %i.hn = load double, ptr %i.hg, align 8, !tbaa !370, !alias.scope !2581
  %i.ho = load double, ptr %i.hi, align 8, !tbaa !370, !alias.scope !2581
  %i.hp = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.ho, i64 1
  %i.hr = load double, ptr %i.hk, align 8, !tbaa !370, !alias.scope !2581
  %i.hs = load double, ptr %i.hm, align 8, !tbaa !370, !alias.scope !2581
  %i.ht = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = getelementptr i8, ptr %i.hb, i64 16
  store <2 x double> %i.hq, ptr %i.hb, align 8, !tbaa !370, !alias.scope !2582, !noalias !2581
  store <2 x double> %i.hu, ptr %i.hv, align 8, !tbaa !370, !alias.scope !2582, !noalias !2581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2572

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hx = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hx, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2573

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.in, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr [8 x i8], ptr %i.gs, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 56
  %i.hz = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !370
  store double %i.ia, ptr %i.hy, align 8, !tbaa !370
  %i.ib = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.gs, i64 %i.ib
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ib, 56
  %i.id = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ie = load double, ptr %i.id, align 8, !tbaa !370
  store double %i.ie, ptr %i.ic, align 8, !tbaa !370
  %i.if = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.gs, i64 %i.if
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.if, 56
  %i.ih = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !370
  store double %i.ii, ptr %i.ig, align 8, !tbaa !370
  %i.ij = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %i.gs, i64 %i.ij
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ij, 56
  %i.il = getelementptr i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.im = load double, ptr %i.il, align 8, !tbaa !370
  store double %i.im, ptr %i.ik, align 8, !tbaa !370
  %i.in = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.in, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !2574

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit
  %i.io = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.io, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2575

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre104 = load ptr, ptr %i.am, align 8, !tbaa !779
  %.pre105 = load ptr, ptr %i.al, align 8, !tbaa !780
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit
  %i.ip = phi ptr [ %.pre105, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre104, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ir = add nsw i32 %i.bj, %.04297
  %i.is = add nuw i64 %.04198, 1                  ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 48
  %i.ix = icmp ult i64 %i.is, %i.iw
  br i1 %i.ix, label %bb.g, label %._crit_edge, !llvm.loop !2576

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN3g2o6SolverESt14default_deleteISB_EEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN3g2o6SolverESt14default_deleteISB_EEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFSt10unique_ptrIN3g2o6SolverESt14default_deleteISB_EEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE10_M_insert_IRKSH_NSN_11_Alloc_nodeEEESt17_Rb_tree_iteratorISH_EPSt18_Rb_tree_node_baseSV_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %3, align 8, !tbaa !68
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
end_hunk_4
