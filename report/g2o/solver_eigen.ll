inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #38
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !369
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !32
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.d
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !32
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !378 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !375 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !376 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us: ; preds = %.lr.ph71, %._crit_edge.us
  %.03370.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.755.069.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !32
  %i.bk = add nsw i64 %.sroa.755.069.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !638

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.069.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.069.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.069.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !32
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !32
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !32
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !32
  %i.co = add nsw i64 %.sroa.755.069.us, 4        ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond85.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !639

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us
  %i.cp = add nuw nsw i64 %.03370.us, 1           ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond86.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, !llvm.loop !640

._crit_edge72:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge76

bb.f:                                             ; preds = %._crit_edge72
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #43 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter114 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph75

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph71, %._crit_edge
  %.03370 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !32
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03370
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32 ; 2 uses
  %3 = zext nneg i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %i.de = add nuw nsw i64 %.03370, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, !llvm.loop !640

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %.lr.ph
  %.sroa.755.069 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !32
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !32
  %i.dl = add nsw i64 %.sroa.755.069, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !639

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %.lr.ph75
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge76, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.03174.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %i.gm, %._crit_edge76.loopexit.unr-lcssa ] ; 2 uses
  %.03273.epil.init = phi i32 [ 0, %.lr.ph75.preheader ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !32
  store i32 %.03273.epil.init, ptr %i.dn, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174.epil.init
  store i32 %.03273.epil.init, ptr %i.dp, align 4, !tbaa !32
  %i.dq = add nsw i32 %i.do, %.03273.epil.init
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph75.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %._crit_edge72
  %.sroa.049.0107 = phi ptr [ null, %._crit_edge72 ], [ %i.cs, %._crit_edge76.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph75.epil.preheader ] ; 6 uses
  %.032.lcssa = phi i32 [ 0, %._crit_edge72 ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph75.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.032.lcssa, ptr %i.dr, align 4, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.032.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge76
  %i.du = load i64, ptr %i.a, align 8, !tbaa !369 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph81, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !554
  br label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !377 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !378 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !375 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !376 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us: ; preds = %.lr.ph81, %._crit_edge79.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge79.us ], [ 0, %.lr.ph81 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv91 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph78.us.preheader, label %._crit_edge79.us

.lr.ph78.us.preheader:                            ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter118 = and i64 %i.eq, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph78.us.prol.loopexit, label %.lr.ph78.us.prol

.lr.ph78.us.prol:                                 ; preds = %.lr.ph78.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !32 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !32
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !32
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !399
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !399
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph78.us.prol.loopexit

.lr.ph78.us.prol.loopexit:                        ; preds = %.lr.ph78.us.prol, %.lr.ph78.us.preheader
  %.sroa.8.077.us.unr = phi i64 [ %i.eo, %.lr.ph78.us.preheader ], [ %i.fc, %.lr.ph78.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge79.us, label %.lr.ph78.us

.lr.ph78.us:                                      ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us
  %.sroa.8.077.us = phi i64 [ %i.gc, %.lr.ph78.us ], [ %.sroa.8.077.us.unr, %.lr.ph78.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !32
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !32
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !32
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !399
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !399
  %i.fq = add nsw i64 %.sroa.8.077.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !32
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !32
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !32
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !399
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !399
  %i.gc = add nsw i64 %.sroa.8.077.us, 2          ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond90.not.1, label %._crit_edge79.us, label %.lr.ph78.us, !llvm.loop !641

._crit_edge79.us:                                 ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %i.du
  br i1 %exitcond94.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, !llvm.loop !642

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %.03174 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %i.gm, %.lr.ph75 ] ; 4 uses
  %.03273 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %i.gl, %.lr.ph75 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.1, %.lr.ph75 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !32
  store i32 %.03273, ptr %i.gd, align 4, !tbaa !32
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174
  store i32 %.03273, ptr %i.gf, align 4, !tbaa !32
  %i.gg = add nsw i32 %i.ge, %.03273              ; 3 uses
  %i.gh = or disjoint i64 %.03174, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !32
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !32
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03174, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !643

bb.h:                                             ; preds = %._crit_edge76
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.049.0107) #38
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45: ; preds = %.lr.ph81, %._crit_edge79
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge79 ], [ 0, %.lr.ph81 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !32
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !32 ; 2 uses
  %4 = zext nneg i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph78

._crit_edge79:                                    ; preds = %.lr.ph78, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond89.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45, !llvm.loop !642

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %.sroa.8.077 = phi i64 [ %i.hh, %.lr.ph78 ], [ %i.gq, %.lr.ph78.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !32 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !32
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !32
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077
  %i.hf = load double, ptr %i.he, align 8, !tbaa !399
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !399
  %i.hh = add nsw i64 %.sroa.8.077, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph78, label %._crit_edge79, !llvm.loop !641

._crit_edge82:                                    ; preds = %._crit_edge79, %._crit_edge79.us, %.preheader.._crit_edge82_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge82_crit_edge ], [ %i.eg, %._crit_edge79.us ], [ %i.eg, %._crit_edge79 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !16
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !16
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !16
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !16
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !554
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !554
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !554
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !554
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !554
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !553
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !36
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !553
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !554
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !36
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !16
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !16
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !16
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !16
  call void @free(ptr noundef %.sroa.049.0107) #38
  call void @free(ptr noundef %i.hq) #38
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !376
  call void @free(ptr noundef %i.hz) #38
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !377 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge82
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !378 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #39
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret ptr %0

.body42:                                          ; preds = %bb.h, %bb.g
  %.pn39 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #38
  br label %.body

.body:                                            ; preds = %bb.c, %.body42
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body42 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !590, !range !431, !noundef !432
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !644, !nonnull !432, !align !451 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !421
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !369
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !376  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #38
  store ptr null, ptr %i.i, align 8, !tbaa !376
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648, !nonnull !432, !align !451 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !644, !nonnull !432, !align !451 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !369  ; 14 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !590, !range !431, !noundef !432
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !421
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.j, i64 noundef %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !375
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !369
  %i.p = shl i64 %i.o, 2
  %i.q = add i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !376  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !369
  %i.u = shl i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !644, !nonnull !432, !align !451 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !421  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !369  ; 2 uses
  %i.aa = mul nsw i64 %i.z, %i.x
  %.sroa.speculated161 = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.z)
  %i.ab = shl nsw i64 %.sroa.speculated161, 1
  %.sroa.speculated166 = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.speculated166)
  %i.ad = icmp sgt i64 %i.f, 0
  br i1 %i.ad, label %.lr.ph215, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph215:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !376
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !430
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !369 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1023 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !1023
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !533
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1025
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !1023 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !1023
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !1025
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !1063

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !1023 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !1023
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !1023
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !533
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1025
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !1064

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !1023
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !533
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !1025
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !1023
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !533
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1025
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !1023
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !533
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !1025
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !1023
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !533
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1025
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !1060

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !1023
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !1025
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !1023 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !1023
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !533
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1025
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !1023 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !1023
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !1025
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !1062

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !1023
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !533
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !1025
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !1023
  %i.t = load i32, ptr %i.r, align 8, !tbaa !1023
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !1023
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !533
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1025
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1065

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !1023
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !533
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1025
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1023 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !1023
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !533
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1025
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !1066

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !1023
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !1025
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !1067

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !1023
  %i.z = load i32, ptr %i.x, align 8, !tbaa !1023
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !1023
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !533
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1025
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1065

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !1023
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !533
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !1025
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1023 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !1023
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !533
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1025
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !1066

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !1023
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !1025
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1068

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !1023
  store i32 %i.c, ptr %i.b, align 8, !tbaa !540
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !461
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !342
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !342
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2047 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2047
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1814
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2049
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2047 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2087

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2047
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2049
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2089

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2047 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2047
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2047
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1814
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2049
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2090

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2047
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1814
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2049
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !2047
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1814
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2049
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !2047
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1814
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2049
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !2047
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1814
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2049
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2086

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !2047
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !2049
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !2047 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !2047
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1814
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2049
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !2047 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2087

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !2047
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !2049
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2088

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !2047
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1814
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !2049
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !2047
  %i.t = load i32, ptr %i.r, align 8, !tbaa !2047
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !2047
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1814
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2049
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2091

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !2047
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1814
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2049
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2047 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !2047
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1814
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !2049
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !2092

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !2047
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !2049
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !2093

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !2047
  %i.z = load i32, ptr %i.x, align 8, !tbaa !2047
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !2047
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1814
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2049
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2091

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !2047
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !1814
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !2049
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2047 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !2047
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1814
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2049
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !2092

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !2047
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !2049
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2094

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !2047
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1821
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2049
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1797
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !342
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !342
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2408 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2408
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2204
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2410
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2408 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2408
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2410
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2447

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2408 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2408
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2408
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2204
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2410
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2448

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2408
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2204
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2410
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !2408
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2204
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2410
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !2408
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2204
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2410
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !2408
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2204
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2410
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2444

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !2408
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !2410
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !2408 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !2408
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2204
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2410
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !2408 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !2408
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !2410
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2446

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !2408
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2204
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !2410
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !2408
  %i.t = load i32, ptr %i.r, align 8, !tbaa !2408
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !2408
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2410
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2449

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !2408
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2204
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2410
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2408 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !2408
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2204
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !2410
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !2450

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !2408
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !2410
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !2451

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !2408
  %i.z = load i32, ptr %i.x, align 8, !tbaa !2408
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !2408
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2204
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2410
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2449

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !2408
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !2204
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !2410
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2408 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !2408
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2204
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2410
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !2450

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !2408
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !2410
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2452

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !2408
  store i32 %i.c, ptr %i.b, align 8, !tbaa !2211
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2410
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2187
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !342
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !342
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2752 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2752
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2561
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2754
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2752 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2789

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2752
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2754
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2791

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2752 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2752
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2752
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2561
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2754
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2792

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2752
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2561
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2754
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !2752
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2561
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2754
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !2752
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2561
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2754
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !2752
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2561
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2754
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2788

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !2752
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !2754
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !2752 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !2752
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2561
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2754
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !2752 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2789

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !2752
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !2754
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2790

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !2752
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2561
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !2754
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !2752
  %i.t = load i32, ptr %i.r, align 8, !tbaa !2752
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !2752
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2561
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2754
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2793

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !2752
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2561
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2754
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2752 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !2752
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2561
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !2754
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !2794

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !2752
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !2754
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !2795

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !2752
  %i.z = load i32, ptr %i.x, align 8, !tbaa !2752
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !2752
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2561
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2754
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2793

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !2752
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !2561
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !2754
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2752 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !2752
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2561
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2754
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !2794

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !2752
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !2754
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2796

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !2752
  store i32 %i.c, ptr %i.b, align 8, !tbaa !2568
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2754
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2544
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !342
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !342
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_4
