inline.NumInlined: 8942
inline.NumDeleted: 3137
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #33
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !115
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !73
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !73
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !73
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !233

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !73
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !73
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !73
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !73
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !234

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !235

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !73
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !235

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !73
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !73
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !234

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !73
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.a, align 8, !tbaa !231 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !203
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !133 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !134 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !135 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !138 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !73 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !73 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !73
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !73
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !124
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !124
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !73 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !73
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !73
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !124
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !124
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !73 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !73
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !73
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !124
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !124
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !236

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !237

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !73
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !73
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !73
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !73
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !238

bb.h:                                             ; preds = %._crit_edge75
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #33
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !73
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !237

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.hh, %.lr.ph77 ], [ %i.gq, %.lr.ph77.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !73
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !73 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !73
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !73
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.hf = load double, ptr %i.he, align 8, !tbaa !124
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !124
  %i.hh = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph77, label %._crit_edge78, !llvm.loop !236

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !15
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !203
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !203
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !203
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !239
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !204
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !239
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !203
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !204
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !15
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !15
  call void @free(ptr noundef %.sroa.052.0106) #33
  call void @free(ptr noundef %i.hq) #33
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !132
  call void @free(ptr noundef %i.hz) #33
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge81
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !134 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

.body45:                                          ; preds = %bb.h, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl30min_quad_with_fixed_precomputeIdN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_12SparseMatrixIT_Li0EiEERKNS1_10MatrixBaseIT0_EES8_bRNS_24min_quad_with_fixed_dataIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(2384) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %7 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %12 = alloca %"class.Eigen::Matrix.35", align 8 ; 10 uses
  %13 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %14 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 13 uses
  %15 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %16 = alloca %"class.Eigen::SparseMatrix", align 8 ; 19 uses
  %17 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %18 = alloca %"class.Eigen::Transpose.62", align 8 ; 6 uses
  %19 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %20 = alloca %"class.Eigen::SparseMatrix", align 8 ; 10 uses
  %21 = alloca %"class.Eigen::SparseMatrix", align 8 ; 10 uses
  %22 = alloca %"class.Eigen::SparseMatrix", align 8 ; 10 uses
  %23 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %24 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %25 = alloca %"class.Eigen::CwiseBinaryOp.68", align 8 ; 8 uses
  %26 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %27 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %28 = alloca %"class.Eigen::CwiseBinaryOp.73", align 8 ; 7 uses
  %29 = alloca %"class.Eigen::SparseMatrix", align 8 ; 20 uses
  %30 = alloca %"class.Eigen::SparseMatrix", align 8 ; 19 uses
  %31 = alloca %"class.Eigen::SparseMatrix", align 8 ; 20 uses
  %32 = alloca %"struct.Eigen::SparseQRMatrixQReturnType", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %34 = alloca %"class.Eigen::Product", align 8   ; 7 uses
  %35 = alloca %"class.Eigen::Product.81", align 8 ; 7 uses
  %36 = alloca %"class.Eigen::Block.86", align 8  ; 9 uses
  %37 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 13 uses
  %38 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %39 = alloca %"class.Eigen::Block.86", align 8  ; 9 uses
  %40 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 13 uses
  %41 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %42 = alloca %"class.Eigen::Block.86", align 8  ; 10 uses
  %43 = alloca %"class.Eigen::SparseMatrix.55", align 8 ; 13 uses
  %44 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %45 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %46 = alloca %"class.Eigen::Product.90", align 8 ; 9 uses
  %47 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %48 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %49 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %50 = alloca %"class.Eigen::Transpose", align 8 ; 6 uses
  %51 = alloca %"class.Eigen::CwiseBinaryOp.73", align 8 ; 7 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %7, align 8, !tbaa !12, !alias.scope !240
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !15, !noalias !240
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.e, ptr %i.c, align 8, !alias.scope !240
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double 5.000000e-01, ptr %i.f, align 8, !tbaa !17, !alias.scope !240
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %0, ptr %i.g, align 8, !tbaa !20, !alias.scope !240
  store i8 0, ptr %6, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS3_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(41) %7)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %bb.jv, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %.pn251.pn.pn, %bb.jv ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #33
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 5 uses
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  store i32 %i.m, ptr %4, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 4 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !243  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !245  ; 3 uses
  %i.u = mul i64 %i.t, %i.r                       ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !246    ; 8 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !71
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.r
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 1
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a

._crit_edge.unr-lcssa:                            ; preds = %bb.z
  %lcmp.mod773.not = icmp eq i64 %xtraiter771, 0
  br i1 %lcmp.mod773.not, label %._crit_edge, label %.epil.preheader770

.epil.preheader770:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod774 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod774)
  br i1 %.not239, label %._crit_edge.epilog-lcssa, label %bb.u

bb.u:                                             ; preds = %.epil.preheader770
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !72
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.epil.init
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !73
  %i.fx = sext i32 %i.fw to i64
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.u, %.epil.preheader770
  %i.fy = phi i64 [ %i.fx, %bb.u ], [ %indvars.iv.epil.init, %.epil.preheader770 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.epil.init
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !73 ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.fy
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !73
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.epil.init
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  %i.gf = sub nsw i32 %i.ge, %i.ga
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fy
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !362, !range !142, !noundef !143
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %.lr.ph540, label %bb.aa

._crit_edge.thread:                               ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE10uncompressEv.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !362, !range !142, !noundef !143
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %._crit_edge541, label %bb.aa

.lr.ph540:                                        ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !133 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !116 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  %wide.trip.count618 = and i64 %i.e, 2147483647  ; 2 uses
  br i1 %i.gr, label %.split.us.split.i.i.i.us, label %.split.i.i.i

.split.us.split.i.i.i.us:                         ; preds = %.lr.ph540, %.loopexit518.us
  %indvars.iv615 = phi i64 [ %indvars.iv.next616, %.loopexit518.us ], [ 0, %.lr.ph540 ] ; 2 uses
  %.0453538.us = phi double [ %.sroa.speculated.us, %.loopexit518.us ], [ 0.000000e+00, %.lr.ph540 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv615
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !73 ; 3 uses
  %.0.i.i.i.us.i.i.i.us = zext i32 %i.gt to i64   ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.us.i.i.i.us.preheader, label %.loopexit518.us

.lr.ph.us.i.i.i.us.preheader:                     ; preds = %.split.us.split.i.i.i.us
  %xtraiter777 = and i64 %.0.i.i.i.us.i.i.i.us, 3 ; 3 uses
  %i.gv = icmp ult i32 %i.gt, 4
  br i1 %i.gv, label %.lr.ph.us.i.i.i.us.epil.preheader, label %.lr.ph.us.i.i.i.us.preheader.new

.lr.ph.us.i.i.i.us.preheader.new:                 ; preds = %.lr.ph.us.i.i.i.us.preheader
  %unroll_iter782 = and i64 %.0.i.i.i.us.i.i.i.us, 2147483644
  br label %.lr.ph.us.i.i.i.us

.lr.ph.us.i.i.i.us:                               ; preds = %.lr.ph.us.i.i.i.us, %.lr.ph.us.i.i.i.us.preheader.new
  %.117.us.i.i.i.us = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.ho, %.lr.ph.us.i.i.i.us ]
  %.sroa.611.016.us.i.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.hp, %.lr.ph.us.i.i.i.us ] ; 5 uses
  %niter783 = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %niter783.next.3, %.lr.ph.us.i.i.i.us ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !124 ; 2 uses
  %i.gy = fmul double %i.gx, %i.gx
  %i.gz = fadd double %.117.us.i.i.i.us, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !124 ; 2 uses
  %i.hd = fmul double %i.hc, %i.hc
  %i.he = fadd double %i.gz, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !124 ; 2 uses
  %i.hi = fmul double %i.hh, %i.hh
  %i.hj = fadd double %i.he, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !124 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = fadd double %i.hj, %i.hn                ; 3 uses
  %i.hp = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us, 4 ; 2 uses
  %niter783.next.3 = add i64 %niter783, 4         ; 2 uses
  %niter783.ncmp.3 = icmp eq i64 %niter783.next.3, %unroll_iter782
  br i1 %niter783.ncmp.3, label %.loopexit518.us.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i.us

.loopexit518.us.loopexit.unr-lcssa:               ; preds = %.lr.ph.us.i.i.i.us
  %lcmp.mod779.not = icmp eq i64 %xtraiter777, 0
  br i1 %lcmp.mod779.not, label %.loopexit518.us, label %.lr.ph.us.i.i.i.us.epil.preheader

.lr.ph.us.i.i.i.us.epil.preheader:                ; preds = %.loopexit518.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.preheader
  %.117.us.i.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader ], [ %i.ho, %.loopexit518.us.loopexit.unr-lcssa ]
  %.sroa.611.016.us.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader ], [ %i.hp, %.loopexit518.us.loopexit.unr-lcssa ]
  %lcmp.mod781 = icmp ne i64 %xtraiter777, 0
  tail call void @llvm.assume(i1 %lcmp.mod781)
  br label %.lr.ph.us.i.i.i.us.epil

.lr.ph.us.i.i.i.us.epil:                          ; preds = %.lr.ph.us.i.i.i.us.epil, %.lr.ph.us.i.i.i.us.epil.preheader
  %.117.us.i.i.i.us.epil = phi double [ %i.ht, %.lr.ph.us.i.i.i.us.epil ], [ %.117.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %.sroa.611.016.us.i.i.i.us.epil = phi i64 [ %i.hu, %.lr.ph.us.i.i.i.us.epil ], [ %.sroa.611.016.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter778 = phi i64 [ %epil.iter778.next, %.lr.ph.us.i.i.i.us.epil ], [ 0, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us.epil
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !124 ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = fadd double %.117.us.i.i.i.us.epil, %i.hs ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us.epil, 1
  %epil.iter778.next = add i64 %epil.iter778, 1   ; 2 uses
  %epil.iter778.cmp.not = icmp eq i64 %epil.iter778.next, %xtraiter777
  br i1 %epil.iter778.cmp.not, label %.loopexit518.us, label %.lr.ph.us.i.i.i.us.epil, !llvm.loop !363

.loopexit518.us:                                  ; preds = %.loopexit518.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.epil, %.split.us.split.i.i.i.us
  %.us-phi.i.i.i.us = phi double [ 0.000000e+00, %.split.us.split.i.i.i.us ], [ %i.ho, %.loopexit518.us.loopexit.unr-lcssa ], [ %i.ht, %.lr.ph.us.i.i.i.us.epil ]
  %i.hv = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i.us) #33 ; 2 uses
  %i.hw = fcmp olt double %.0453538.us, %i.hv
  %.sroa.speculated.us = select i1 %i.hw, double %i.hv, double %.0453538.us ; 2 uses
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond619.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count618
  br i1 %exitcond619.not, label %._crit_edge541, label %.split.us.split.i.i.i.us, !llvm.loop !364

bb.v:                                             ; preds = %bb.z, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.z ] ; 5 uses
  %niter776 = phi i64 [ 0, %.lr.ph.new ], [ %niter776.next.1, %bb.z ]
  br i1 %.not239, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load ptr, ptr %i.fq, align 8, !tbaa !72
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !73
  %i.ia = sext i32 %i.hz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ib = phi i64 [ %i.ia, %bb.w ], [ %indvars.iv, %bb.v ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !73 ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.ib
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !73
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !73
  %i.ih = sub nsw i32 %i.ig, %i.id
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ib
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !73
  br i1 %.not239, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ij = load ptr, ptr %i.fq, align 8, !tbaa !72
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !73
  %i.im = sext i32 %i.il to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.in = phi i64 [ %i.im, %bb.y ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !73 ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.in
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !73
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.1
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !73
  %i.it = sub nsw i32 %i.is, %i.ip
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.in
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !73
  %niter776.next.1 = add i64 %niter776, 2         ; 2 uses
  %niter776.ncmp.1 = icmp eq i64 %niter776.next.1, %unroll_iter775
  br i1 %niter776.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.v, !llvm.loop !365

._crit_edge541:                                   ; preds = %.loopexit519, %.loopexit518.us, %._crit_edge.thread
  %.0453.lcssa = phi double [ %.sroa.speculated.us, %.loopexit518.us ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.speculated, %.loopexit519 ] ; 2 uses
  %i.iv = fcmp oeq double %.0453.lcssa, 0.000000e+00
  %.1 = select i1 %i.iv, double 1.000000e+00, double %.0453.lcssa
  %i.iw = add nsw i32 %i.f, %i.c
  %i.ix = mul nsw i32 %i.iw, 20
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul double %.1, %i.iy
  %i.ja = fmul double %i.iz, f0x3CB0000000000000
  br label %bb.aa

.split.i.i.i:                                     ; preds = %.lr.ph540, %.loopexit519
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %.loopexit519 ], [ 0, %.lr.ph540 ] ; 3 uses
  %.0453538 = phi double [ %.sroa.speculated, %.loopexit519 ], [ 0.000000e+00, %.lr.ph540 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv610
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !73
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv610
  %i.je = sext i32 %i.jc to i64                   ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.jf to i64
  %i.jg = add nsw i64 %4, %i.je
  %i.jh = icmp sgt i32 %i.jf, 0
  br i1 %i.jh, label %.lr.ph.i.i.i, label %.loopexit519

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.117.i.i.i = phi double [ %i.jl, %.lr.ph.i.i.i ], [ 0.000000e+00, %.split.i.i.i ]
  %.sroa.611.016.i.i.i = phi i64 [ %i.jm, %.lr.ph.i.i.i ], [ %i.je, %.split.i.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.go, i64 %.sroa.611.016.i.i.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !124 ; 2 uses
  %i.jk = fmul double %i.jj, %i.jj
  %i.jl = fadd double %.117.i.i.i, %i.jk          ; 2 uses
  %i.jm = add nsw i64 %.sroa.611.016.i.i.i, 1     ; 2 uses
  %i.jn = icmp slt i64 %i.jm, %i.jg
  br i1 %i.jn, label %.lr.ph.i.i.i, label %.loopexit519

.loopexit519:                                     ; preds = %.lr.ph.i.i.i, %.split.i.i.i
  %.us-phi.i.i.i = phi double [ 0.000000e+00, %.split.i.i.i ], [ %i.jl, %.lr.ph.i.i.i ]
  %i.jo = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i) #33 ; 2 uses
  %i.jp = fcmp olt double %.0453538, %i.jo
  %.sroa.speculated = select i1 %i.jp, double %i.jo, double %.0453538 ; 2 uses
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count618
  br i1 %exitcond614.not, label %._crit_edge541, label %.split.i.i.i, !llvm.loop !364

bb.aa:                                            ; preds = %._crit_edge.thread, %._crit_edge541, %._crit_edge
  %.0193 = phi double [ %i.ja, %._crit_edge541 ], [ %i.af, %._crit_edge ], [ %i.af, %._crit_edge.thread ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  invoke void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jq, i64 noundef %i.m)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  %i.jr = load ptr, ptr %i.au, align 8, !tbaa !116 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !73
  %i.jt = getelementptr i8, ptr %i.jr, i64 4
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !73
  br i1 %i.n, label %.lr.ph598, label %.thread498

.lr.ph598:                                        ; preds = %bb.ab
  %.idx.i.i.i.i.i.i.i.i.i.i276 = shl nuw nsw i64 %i.g, 2
  %i.ju = icmp slt i64 %sext508, 4294967296
  %.idx.i.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext508, 29
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %sext511 = add nsw i64 %sext507, -4294967296
  %i.kf = ashr exact i64 %sext511, 32             ; 4 uses
  %wide.trip.count631 = and i64 %i.e, 2147483647
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge590, %bb.bz, %bb.ca
  %.2206 = phi i32 [ %.0204595, %bb.ca ], [ %i.aak, %bb.bz ], [ %i.aak, %._crit_edge590 ] ; 2 uses
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %.thread498, label %bb.ad, !llvm.loop !366

bb.ad:                                            ; preds = %.lr.ph598, %bb.ac
  %indvars.iv628 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next629, %bb.ac ] ; 13 uses
  %.0204595 = phi i32 [ 0, %.lr.ph598 ], [ %.2206, %bb.ac ] ; 12 uses
  br i1 %i.h, label %.loopexit517, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader:      ; preds = %bb.ad
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0405.0455, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i276, i1 false), !tbaa !73
  br label %.loopexit517

.loopexit517:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader, %bb.ad
  %i.kg = load ptr, ptr %i.ai, align 8, !tbaa !116
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv628 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !73
  %i.kj = getelementptr i8, ptr %i.kh, i64 4
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !73
  %i.kk = sext i32 %.0204595 to i64               ; 10 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %i.kk
  %i.km = trunc nuw nsw i64 %indvars.iv628 to i32 ; 6 uses
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !73
  store i32 %.0204595, ptr %.sroa.0382.0472, align 4, !tbaa !73
  br i1 %i.ju, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %.loopexit517
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0365.0, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !124
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %.loopexit517
  %i.kn = icmp sge i32 %.0204595, %i.c            ; 2 uses
  %i.ko = load ptr, ptr %i.jv, align 8, !tbaa !133
  %i.kp = load ptr, ptr %i.jw, align 8, !tbaa !134
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !116
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv628 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !73
  %i.kt = sext i32 %i.ks to i64                   ; 3 uses
  %i.ku = load ptr, ptr %i.df, align 8, !tbaa !132 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.kw = getelementptr i8, ptr %i.kr, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !73
  %i.ky = sext i32 %i.kx to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.af:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv628
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !73
  %i.lb = sext i32 %i.la to i64
  %i.lc = add nsw i64 %i.lb, %i.kt
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ae, %bb.af
  %.sink.i = phi i64 [ %i.ky, %bb.ae ], [ %i.lc, %bb.af ] ; 2 uses
  %i.ld = icmp sle i64 %.sink.i, %i.kt            ; 2 uses
  %.not510552 = select i1 %i.ld, i1 %i.kn, i1 false
  br i1 %.not510552, label %.preheader515, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.le = load ptr, ptr %i.jy, align 8, !tbaa !72
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph557, %bb.ar
  %i.lf = phi i1 [ %i.ld, %.lr.ph557 ], [ %i.nm, %bb.ar ] ; 2 uses
  %.0179556 = phi i64 [ 0, %.lr.ph557 ], [ %.1180.lcssa, %bb.ar ] ; 4 uses
  %.0183555 = phi i64 [ 1, %.lr.ph557 ], [ %.2185, %bb.ar ] ; 4 uses
  %.0197554 = phi i1 [ %i.kn, %.lr.ph557 ], [ %spec.select, %bb.ar ]
  %.sroa.8339.0553 = phi i64 [ %i.kt, %.lr.ph557 ], [ %i.nl, %bb.ar ] ; 3 uses
  br i1 %i.lf, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %.sroa.8339.0553
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !73 ; 2 uses
  %.pre = sext i32 %i.lh to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pre-phi = phi i64 [ %i.kk, %bb.ag ], [ %.pre, %bb.ah ] ; 3 uses
  %.0196 = phi i32 [ %.0204595, %bb.ag ], [ %i.lh, %bb.ah ] ; 3 uses
  %i.li = icmp eq i32 %.0196, %.0204595
  %spec.select = select i1 %i.li, i1 true, i1 %.0197554 ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.le, i64 %.pre-phi
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !73 ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, -1
  br i1 %i.ll, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.ai
  %i.lm = zext nneg i32 %i.lk to i64              ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0405.0455, i64 %i.lm ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !73
  %i.lp = zext i32 %i.lo to i64
  %.not542 = icmp eq i64 %indvars.iv628, %i.lp
  br i1 %.not542, label %._crit_edge546, label %.lr.ph545

.lr.ph545:                                        ; preds = %.preheader
  %i.lq = load ptr, ptr %i.jz, align 8, !tbaa !72
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !367
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 noundef 0, i64 noundef %i.lt, ptr noundef nonnull @.str.7, i64 noundef 46)
          to label %.thread496 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body270

bb.al:                                            ; preds = %.lr.ph545, %bb.al
  %i.lw = phi ptr [ %i.ln, %.lr.ph545 ], [ %i.md, %bb.al ]
  %i.lx = phi i64 [ %i.lm, %.lr.ph545 ], [ %i.mc, %bb.al ]
  %.1180544 = phi i64 [ %.0179556, %.lr.ph545 ], [ %i.ma, %bb.al ] ; 2 uses
  %.0195543 = phi i32 [ %i.lk, %.lr.ph545 ], [ %i.mb, %bb.al ]
  %i.ly = getelementptr inbounds [4 x i8], ptr %.sroa.0394.0, i64 %.1180544
  store i32 %.0195543, ptr %i.ly, align 4, !tbaa !73
  store i32 %i.km, ptr %i.lw, align 4, !tbaa !73
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.lx
  %i.ma = add nsw i64 %.1180544, 1                ; 2 uses
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !73 ; 2 uses
  %i.mc = sext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !73
  %i.mf = zext i32 %i.me to i64
  %.not = icmp eq i64 %indvars.iv628, %i.mf
  br i1 %.not, label %._crit_edge546, label %bb.al, !llvm.loop !368

._crit_edge546:                                   ; preds = %bb.al, %.preheader
  %.1180.lcssa = phi i64 [ %.0179556, %.preheader ], [ %i.ma, %bb.al ] ; 5 uses
  %i.mg = sub nsw i64 %.1180.lcssa, %.0179556     ; 3 uses
  %5 = sdiv i64 %i.mg, 2                          ; 3 uses
  %i.mh = icmp sgt i64 %i.mg, 1
  br i1 %i.mh, label %.lr.ph550, label %._crit_edge551

.lr.ph550:                                        ; preds = %._crit_edge546
  %i.mi = getelementptr [4 x i8], ptr %.sroa.0394.0, i64 %.0179556 ; 3 uses
  %i.mj = getelementptr [4 x i8], ptr %.sroa.0394.0, i64 %.1180.lcssa ; 3 uses
  %xtraiter785 = and i64 %5, 1
  %6 = and i64 %i.mg, 9223372036854775806
  %i.mk = icmp eq i64 %6, 2
  br i1 %i.mk, label %.epil.preheader784, label %.lr.ph550.new

.lr.ph550.new:                                    ; preds = %.lr.ph550
  %unroll_iter789 = and i64 %5, 4611686018427387902
  br label %bb.am

._crit_edge551.loopexit.unr-lcssa:                ; preds = %bb.am
  %lcmp.mod787.not = icmp eq i64 %xtraiter785, 0
  br i1 %lcmp.mod787.not, label %._crit_edge551, label %.epil.preheader784

.epil.preheader784:                               ; preds = %._crit_edge551.loopexit.unr-lcssa, %.lr.ph550
  %.0192548.epil.init = phi i64 [ 0, %.lr.ph550 ], [ %i.nb, %._crit_edge551.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod788 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.ml = getelementptr [4 x i8], ptr %i.mi, i64 %.0192548.epil.init ; 2 uses
  %i.mm = xor i64 %.0192548.epil.init, -1
  %i.mn = getelementptr [4 x i8], ptr %i.mj, i64 %i.mm ; 2 uses
  %i.mo = load i32, ptr %i.ml, align 4, !tbaa !73
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !73
  store i32 %i.mp, ptr %i.ml, align 4, !tbaa !73
  store i32 %i.mo, ptr %i.mn, align 4, !tbaa !73
  br label %._crit_edge551

._crit_edge551:                                   ; preds = %.epil.preheader784, %._crit_edge551.loopexit.unr-lcssa, %._crit_edge546
  br i1 %i.lf, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.am, %.lr.ph550.new
  %.0192548 = phi i64 [ 0, %.lr.ph550.new ], [ %i.nb, %bb.am ] ; 5 uses
  %niter790 = phi i64 [ 0, %.lr.ph550.new ], [ %niter790.next.1, %bb.am ]
  %i.mq = getelementptr [4 x i8], ptr %i.mi, i64 %.0192548 ; 2 uses
  %i.mr = xor i64 %.0192548, -1
  %i.ms = getelementptr [4 x i8], ptr %i.mj, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.mq, align 4, !tbaa !73
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !73
  store i32 %i.mu, ptr %i.mq, align 4, !tbaa !73
  store i32 %i.mt, ptr %i.ms, align 4, !tbaa !73
  %i.mv = getelementptr [4 x i8], ptr %i.mi, i64 %.0192548
  %i.mw = getelementptr i8, ptr %i.mv, i64 4      ; 2 uses
  %i.mx = xor i64 %.0192548, -2
  %i.my = getelementptr [4 x i8], ptr %i.mj, i64 %i.mx ; 2 uses
  %i.mz = load i32, ptr %i.mw, align 4, !tbaa !73
  %i.na = load i32, ptr %i.my, align 4, !tbaa !73
  store i32 %i.na, ptr %i.mw, align 4, !tbaa !73
  store i32 %i.mz, ptr %i.my, align 4, !tbaa !73
  %i.nb = add nuw nsw i64 %.0192548, 2            ; 2 uses
  %niter790.next.1 = add i64 %niter790, 2         ; 2 uses
  %niter790.ncmp.1 = icmp eq i64 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %._crit_edge551.loopexit.unr-lcssa, label %bb.am, !llvm.loop !369

bb.an:                                            ; preds = %._crit_edge551
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %.sroa.8339.0553
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !124
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge551, %bb.an
  %.sink = phi double [ %i.nd, %bb.an ], [ 0.000000e+00, %._crit_edge551 ]
  %i.ne = getelementptr inbounds [8 x i8], ptr %.sroa.0365.0, i64 %.pre-phi
  store double %.sink, ptr %i.ne, align 8, !tbaa !124
  %i.nf = icmp sgt i32 %.0196, %.0204595
  br i1 %i.nf, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ng = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %.pre-phi ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !73
  %i.ni = zext i32 %i.nh to i64
  %.not214 = icmp eq i64 %indvars.iv628, %i.ni
  br i1 %.not214, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nj = getelementptr inbounds [4 x i8], ptr %.sroa.0382.0472, i64 %.0183555
  store i32 %.0196, ptr %i.nj, align 4, !tbaa !73
  store i32 %i.km, ptr %i.ng, align 4, !tbaa !73
  %i.nk = add nsw i64 %.0183555, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.2185 = phi i64 [ %.0183555, %bb.ao ], [ %i.nk, %bb.aq ], [ %.0183555, %bb.ap ] ; 3 uses
  %i.nl = add nsw i64 %.sroa.8339.0553, 1         ; 2 uses
  %i.nm = icmp sge i64 %i.nl, %.sink.i            ; 2 uses
  %.not510 = select i1 %i.nm, i1 %spec.select, i1 false
  br i1 %.not510, label %.thread491, label %bb.ag, !llvm.loop !370

.thread491:                                       ; preds = %bb.ar
  %i.nn = add nsw i64 %.1180.lcssa, -1            ; 2 uses
  %i.no = icmp sgt i64 %.1180.lcssa, 0            ; 4 uses
  br i1 %i.no, label %.lr.ph570, label %._crit_edge571

.lr.ph570:                                        ; preds = %.thread491
  %i.np = load ptr, ptr %i.ka, align 8, !tbaa !133 ; 8 uses
  %i.nq = load ptr, ptr %i.kb, align 8, !tbaa !134 ; 11 uses
  %i.nr = load ptr, ptr %i.au, align 8, !tbaa !116 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  %i.nt = load ptr, ptr %i.kc, align 8, !tbaa !350
  %i.nu = load ptr, ptr %i.ba, align 8, !tbaa !132 ; 6 uses
  %i.nv = icmp eq ptr %i.nu, null                 ; 3 uses
  %i.nw = load ptr, ptr %i.jz, align 8, !tbaa !72
  br label %bb.as

._crit_edge571:                                   ; preds = %.loopexit, %.thread491
  %.4187.lcssa = phi i64 [ %.2185, %.thread491 ], [ %.7190, %.loopexit ] ; 9 uses
  %.not726 = icmp sge i32 %.0204595, %.sroa.speculated432 ; 2 uses
  br i1 %.not726, label %bb.bl, label %bb.bh

bb.as:                                            ; preds = %.lr.ph570, %.loopexit
  %i.nx = phi ptr [ %i.nu, %.lr.ph570 ], [ %i.os, %.loopexit ] ; 3 uses
  %.4187569 = phi i64 [ %.2185, %.lr.ph570 ], [ %.7190, %.loopexit ] ; 6 uses
  %.0191568 = phi i64 [ %i.nn, %.lr.ph570 ], [ %i.tx, %.loopexit ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0394.0, i64 %.0191568
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !73
  %i.oa = sext i32 %i.nz to i64                   ; 7 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.oa ; 7 uses
  br i1 %i.ns, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  br i1 %i.nv, label %bb.au, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !73
  %i.oe = load i32, ptr %i.ob, align 4, !tbaa !73
  %i.of = sub nsw i32 %i.od, %i.oe
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i: ; preds = %bb.at
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.oa
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !73
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i

_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i, %bb.au
  %.0.in.i.i.i = phi i32 [ %i.oh, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i ], [ %i.of, %bb.au ]
  %.0.i.i.i = sext i32 %.0.in.i.i.i to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

bb.av:                                            ; preds = %bb.as
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !73
  %i.oj = sext i32 %i.oi to i64                   ; 3 uses
  %i.ok = icmp eq ptr %i.nx, null
  br i1 %i.ok, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ol = getelementptr i8, ptr %i.ob, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !73
  %i.on = sext i32 %i.om to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.oa
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !73
  %i.oq = sext i32 %i.op to i64
  %i.or = add nsw i64 %i.oq, %i.oj
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i: ; preds = %bb.ax, %bb.aw, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i
  %i.os = phi ptr [ %i.nu, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ null, %bb.aw ], [ %i.nx, %bb.ax ]
  %.sroa.78.1.i = phi i64 [ 0, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ %i.oj, %bb.aw ], [ %i.oj, %bb.ax ] ; 5 uses
  %.sink.i.i = phi i64 [ %.0.i.i.i, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ %i.on, %bb.aw ], [ %i.or, %bb.ax ] ; 4 uses
  %i.ot = icmp slt i64 %.sroa.78.1.i, %.sink.i.i
  br i1 %i.ot, label %.lr.ph.i282.preheader, label %.loopexit514

.lr.ph.i282.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i
  %i.ou = sub nsw i64 %.sink.i.i, %.sroa.78.1.i
  %xtraiter791 = and i64 %i.ou, 3                 ; 2 uses
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  br i1 %lcmp.mod792.not, label %.lr.ph.i282.prol.loopexit, label %.lr.ph.i282.prol

.lr.ph.i282.prol:                                 ; preds = %.lr.ph.i282.preheader, %.lr.ph.i282.prol
  %.015.i.prol = phi double [ %i.pc, %.lr.ph.i282.prol ], [ 0.000000e+00, %.lr.ph.i282.preheader ]
  %.sroa.78.014.i.prol = phi i64 [ %i.pd, %.lr.ph.i282.prol ], [ %.sroa.78.1.i, %.lr.ph.i282.preheader ] ; 3 uses
  %prol.iter793 = phi i64 [ %prol.iter793.next, %.lr.ph.i282.prol ], [ 0, %.lr.ph.i282.preheader ]
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.np, i64 %.sroa.78.014.i.prol
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !124
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %.sroa.78.014.i.prol
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !73
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [8 x i8], ptr %.sroa.0365.0, i64 %i.oz
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !124
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.ow, double %i.pb, double %.015.i.prol) ; 3 uses
  %i.pd = add nsw i64 %.sroa.78.014.i.prol, 1     ; 2 uses
  %prol.iter793.next = add i64 %prol.iter793, 1   ; 2 uses
  %prol.iter793.cmp.not = icmp eq i64 %prol.iter793.next, %xtraiter791
  br i1 %prol.iter793.cmp.not, label %.lr.ph.i282.prol.loopexit, label %.lr.ph.i282.prol, !llvm.loop !371

.lr.ph.i282.prol.loopexit:                        ; preds = %.lr.ph.i282.prol, %.lr.ph.i282.preheader
  %.lcssa761.unr = phi double [ poison, %.lr.ph.i282.preheader ], [ %i.pc, %.lr.ph.i282.prol ]
  %.015.i.unr = phi double [ 0.000000e+00, %.lr.ph.i282.preheader ], [ %i.pc, %.lr.ph.i282.prol ]
  %.sroa.78.014.i.unr = phi i64 [ %.sroa.78.1.i, %.lr.ph.i282.preheader ], [ %i.pd, %.lr.ph.i282.prol ]
  %i.pe = sub nsw i64 %.sroa.78.1.i, %.sink.i.i
  %i.pf = icmp ugt i64 %i.pe, -4
  br i1 %i.pf, label %.loopexit514, label %.lr.ph.i282

.lr.ph.i282:                                      ; preds = %.lr.ph.i282.prol.loopexit, %.lr.ph.i282
  %.015.i = phi double [ %i.qo, %.lr.ph.i282 ], [ %.015.i.unr, %.lr.ph.i282.prol.loopexit ]
  %.sroa.78.014.i = phi i64 [ %i.qp, %.lr.ph.i282 ], [ %.sroa.78.014.i.unr, %.lr.ph.i282.prol.loopexit ] ; 6 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.np, i64 %.sroa.78.014.i
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !124
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %.sroa.78.014.i
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !73
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %.sroa.0365.0, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !124
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pm, double %.015.i)
  %i.po = add nsw i64 %.sroa.78.014.i, 1          ; 2 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.po
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !124
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.po
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !73
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %.sroa.0365.0, i64 %i.pt
end_hunk_1
begin_hunk_2_@_ZN5Eigen14COLAMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE:bb.a
  %i.ay = add <4 x i32> %i.ax, %i.ar              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.az = icmp slt i64 %.057.i.i.i.i, %i.af
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.af
  %i.bb = load <4 x i32>, ptr %i.ba, align 1, !tbaa !81
  %i.bc = add <4 x i32> %i.bb, %i.ao
  %i.bd = bitcast <4 x i32> %i.bc to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ai, %bb.f ], [ %i.bd, %bb.h ], [ %i.ap, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.be = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bh = add <4 x i32> %i.bg, %i.be              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bh, %shift
  %i.bi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.bj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bk = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bk, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x i32>, ptr %i.bl, align 4, !tbaa !73
  %wide.load119 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !73
  %i.bn = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bo = add <4 x i32> %wide.load119, %vec.phi118 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader176

.lr.ph85.i.i.i.i.preheader176:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %i.bi, %.lr.ph85.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %i.bi, %bb.i ], [ %i.bq, %middle.block ], [ %i.cg, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.br = icmp slt i64 %i.ag, %i.i
  br i1 %i.br, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bs = shl nsw i64 %i.ad, 2
  %i.bt = add i64 %.0.i.i.i.i.i.i.i.i, %i.bs
  %i.bu = sub i64 %i.i, %i.bt                     ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check121, label %.lr.ph89.i.i.i.i.preheader171, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec123 = and i64 %i.bu, -8                   ; 3 uses
  %i.bv = add i64 %i.ag, %n.vec123
  %i.bw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bx = getelementptr [4 x i8], ptr %i.l, i64 %i.ag
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body124 ] ; 2 uses
  %vec.phi126.a = phi <4 x i32> [ %i.bw, %vector.ph122 ], [ %i.ca, %vector.body124 ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.ph122 ], [ %i.cb, %vector.body124 ]
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %index125 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load128.a = load <4 x i32>, ptr %i.by, align 4, !tbaa !73
  %wide.load129 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !73
  %i.ca = add <4 x i32> %wide.load128.a, %vec.phi126.a ; 2 uses
  %i.cb = add <4 x i32> %wide.load129, %vec.phi127 ; 2 uses
  %index.next130 = add nuw i64 %index125, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.cc, label %middle.block131, label %vector.body124, !llvm.loop !405

middle.block131:                                  ; preds = %vector.body124
  %bin.rdx132 = add <4 x i32> %i.cb, %i.ca
  %i.cd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx132) ; 2 uses
  %cmp.n133 = icmp eq i64 %i.bu, %n.vec123
  br i1 %cmp.n133, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader171

.lr.ph89.i.i.i.i.preheader171:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block131
  %.05588.i.i.i.i.ph = phi i64 [ %i.ag, %.lr.ph89.i.i.i.i.preheader ], [ %i.bv, %middle.block131 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cd, %middle.block131 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader176, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ch, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cg, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05683.i.i.i.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = add nsw i32 %i.cf, %.07582.i.i.i.i      ; 2 uses
  %i.ch = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ch, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !406

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader171, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cl, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ck, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05588.i.i.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = add nsw i32 %i.cj, %.187.i.i.i.i        ; 2 uses
  %i.cl = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %i.i
  br i1 %i.cm, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !407

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cn = load i32, ptr %i.l, align 4, !tbaa !73  ; 3 uses
  %i.co = icmp sgt i64 %i.i, 1
  br i1 %i.co, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cp = add nsw i64 %i.i, -1                    ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.i, 9
  br i1 %min.iters.check137, label %.lr.ph94.i.i.i.i.preheader168, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec139 = and i64 %i.cp, -8                   ; 3 uses
  %i.cq = or disjoint i64 %n.vec139, 1
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cn, i64 0
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142.a = phi <4 x i32> [ %i.cr, %vector.ph138 ], [ %i.cv, %vector.body140 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.cw, %vector.body140 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index141 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %wide.load144.a = load <4 x i32>, ptr %i.ct, align 4, !tbaa !73
  %wide.load145 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !73
  %i.cv = add <4 x i32> %wide.load144.a, %vec.phi142.a ; 2 uses
  %i.cw = add <4 x i32> %wide.load145, %vec.phi143 ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.cx, label %middle.block147, label %vector.body140, !llvm.loop !408

middle.block147:                                  ; preds = %vector.body140
  %bin.rdx148 = add <4 x i32> %i.cw, %i.cv
  %i.cy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx148) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.cp, %n.vec139
  br i1 %cmp.n149, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader168

.lr.ph94.i.i.i.i.preheader168:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block147
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cq, %middle.block147 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cn, %.lr.ph94.i.i.i.i.preheader ], [ %i.cy, %middle.block147 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader168, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dc, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.db, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.092.i.i.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !73
  %i.db = add nsw i32 %i.da, %.291.i.i.i.i        ; 2 uses
  %i.dc = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dc, %i.i
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !409

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block131, %middle.block147, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.b ], [ 0, %bb.c ], [ %i.db, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cn, %bb.j ], [ %i.cy, %middle.block147 ], [ %i.cd, %middle.block131 ], [ %i.ck, %.lr.ph89.i.i.i.i ] ; 6 uses
  %i.dd = or i32 %i.j, %i.g
  %i.de = or i32 %i.dd, %.0.i
  %or.cond3.not.i = icmp sgt i32 %i.de, -1
  br i1 %or.cond3.not.i, label %bb.k, label %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.df = shl nuw nsw i32 %.0.i, 1
  %i.dg = mul i32 %i.j, 6
  %i.dh = shl i32 %i.g, 2
  %i.di = udiv i32 %.0.i, 5
  %i.dj = add i32 %i.dh, 10
  %i.dk = add i32 %i.dj, %i.j
  %i.dl = add i32 %i.dk, %i.dg
  %i.dm = add i32 %i.dl, %i.df
  %i.dn = add i32 %i.dm, %i.di
  br label %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit

_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.k
  %.0.i42 = phi i32 [ %i.dn, %bb.k ], [ -1, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %or.cond = icmp sgt i32 %i.j, -1
  br i1 %or.cond, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit
  %i.do = shl i64 %i.i, 32
  %sext66 = add nuw i64 %i.do, 4294967296
  %3 = ashr exact i64 %sext66, 30
  %i.dp = tail call noalias ptr @malloc(i64 noundef %3) #34 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.noexc3.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

.noexc3.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit
  %.sroa.056.0 = phi ptr [ null, %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit ], [ %i.dp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 15 uses
  %i.ds = icmp sgt i32 %.0.i42, 0
  br i1 %i.ds, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %i.dt = zext nneg i32 %.0.i42 to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = tail call noalias ptr @malloc(i64 noundef %i.du) #34 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.l, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47
  %i.dx = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dx, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc3.i48 unwind label %bb.m

.noexc3.i48:                                      ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit ], [ %i.dv, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47 ] ; 15 uses
  %.sroa.0.0152 = ptrtoaddr ptr %.sroa.0.0 to i64
  %.not74 = icmp slt i32 %i.j, 0                  ; 2 uses
  br i1 %.not74, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !116
  %i.eb = shl i64 %i.i, 2
  %i.ec = add nuw nsw i64 %i.eb, 4
  %i.ed = and i64 %i.ec, 17179869180
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.056.0, ptr align 4 %i.ea, i64 %i.ed, i1 false), !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49
  %i.ee = icmp sgt i32 %.0.i, 0
  br i1 %i.ee, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !134 ; 7 uses
  %wide.trip.count = zext nneg i32 %.0.i to i64   ; 5 uses
  %min.iters.check154 = icmp ult i32 %.0.i, 8
  %i.eh = ptrtoaddr ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %.sroa.0.0152
  %diff.check = icmp ugt i64 %i.ei, -32
  %or.cond166 = select i1 %min.iters.check154, i1 true, i1 %diff.check
  br i1 %or.cond166, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph77
  %n.vec156 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body157 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index158 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load159.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !73
  %wide.load160 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !73
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %index158 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <4 x i32> %wide.load159.a, ptr %i.el, align 4, !tbaa !73
  store <4 x i32> %wide.load160, ptr %i.em, align 4, !tbaa !73
  %index.next161 = add nuw i64 %index158, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.en, label %middle.block162, label %vector.body157, !llvm.loop !410

middle.block162:                                  ; preds = %vector.body157
  %cmp.n163 = icmp eq i64 %n.vec156, %wide.trip.count
  br i1 %cmp.n163, label %._crit_edge.thread, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph77, %middle.block162
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph77 ], [ %n.vec156, %middle.block162 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader, %scalar.ph153.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph153.prol ], [ %indvars.iv.ph, %scalar.ph153.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph153.prol ], [ 0, %scalar.ph153.preheader ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.prol
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.prol
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !73
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol, !llvm.loop !411

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph153.preheader ], [ %indvars.iv.next.prol, %scalar.ph153.prol ]
  %i.er = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %._crit_edge.thread, label %scalar.ph153

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph153 ], [ %indvars.iv.unr, %scalar.ph153.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !73
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !73
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !73
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.1
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !73
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next.1
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !73
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next.2
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !73
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.thread, label %scalar.ph153, !llvm.loop !412

._crit_edge.thread:                               ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  store i32 -1, ptr %i.fg, align 16, !tbaa !73
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  store i32 -1, ptr %i.fh, align 4, !tbaa !73
  br label %bb.n

._crit_edge:                                      ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  store i32 -1, ptr %i.fj, align 16, !tbaa !73
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  store i32 -1, ptr %i.fk, align 4, !tbaa !73
  %.not.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.fl = phi ptr [ %i.fh, %._crit_edge.thread ], [ %i.fk, %._crit_edge ]
  %i.fm = phi ptr [ %i.fg, %._crit_edge.thread ], [ %i.fj, %._crit_edge ] ; 5 uses
  %i.fn = phi ptr [ %i.ff, %._crit_edge.thread ], [ %i.fi, %._crit_edge ] ; 6 uses
  %.not97.i = icmp eq ptr %.sroa.056.0, null
  br i1 %.not97.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -2, ptr %i.fn, align 4, !tbaa !73
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.fo = icmp slt i32 %i.g, 0
  br i1 %i.fo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 -3, ptr %i.fn, align 4, !tbaa !73
  store i32 %i.g, ptr %i.fm, align 4, !tbaa !73
  br label %bb.ab

bb.r:                                             ; preds = %bb.p
  br i1 %.not74, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 -4, ptr %i.fn, align 4, !tbaa !73
  store i32 %i.j, ptr %i.fm, align 4, !tbaa !73
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.fp = and i64 %i.i, 2147483647
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !73 ; 3 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 -5, ptr %i.fn, align 4, !tbaa !73
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !73
end_hunk_2
begin_hunk_3_@_ZN5Eigen14COLAMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE:bb.a
  %i.hk = trunc nuw nsw i64 %indvars.iv88 to i32
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !73
  %indvars.iv.next89 = or disjoint i64 %indvars.iv88, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0, i64 %indvars.iv.next89
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !73
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hn
  %i.hp = trunc nuw nsw i64 %indvars.iv.next89 to i32
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !73
  %indvars.iv.next89.1 = or disjoint i64 %indvars.iv88, 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0, i64 %indvars.iv.next89.1
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !73
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hs
  %i.hu = trunc nuw nsw i64 %indvars.iv.next89.1 to i32
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !73
  %indvars.iv.next89.2 = or disjoint i64 %indvars.iv88, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.0, i64 %indvars.iv.next89.2
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !73
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hx
  %i.hz = trunc nuw nsw i64 %indvars.iv.next89.2 to i32
  store i32 %i.hz, ptr %i.hy, align 4, !tbaa !73
  %indvars.iv.next89.3 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge80.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !414

.body:                                            ; preds = %bb.m, %bb.af
  %.pn38.pn = phi { ptr, i32 } [ %i.hf, %bb.af ], [ %i.dy, %bb.m ]
  tail call void @free(ptr noundef %.sroa.056.0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %.sroa.speculated151 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.c) ; 5 uses
  %i.g = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.g, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit98

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.a
  %i.h = shl i64 %i.b, 2
  %i.i = and i64 %i.h, 8589934588                 ; 2 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.i) ; 3 uses
  %i.j = icmp eq ptr %calloc, null
  br i1 %i.j, label %.noexc3.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i93

.noexc3.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i93: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i96

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i93
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc3.i94 unwind label %bb.c

.noexc3.i94:                                      ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i96: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i93
  %i.p = shl i64 %i.b, 2
  %.idx.i.i.i.i.i.i.i.i.i.i.i97 = and i64 %i.p, 8589934588
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i97, i1 false), !tbaa !73
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit98

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit98: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i96
  %.sroa.0131.0181 = phi ptr [ null, %bb.a ], [ %i.l, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i96 ] ; 9 uses
  %.sroa.0139.0166173180 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i96 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !71
  %.not.i.i = icmp eq i64 %i.b, %i.r
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit98
  %i.s = load ptr, ptr %1, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.s) #33
  %i.t = icmp sgt i64 %i.b, 0
  br i1 %i.t, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.e
  %i.v = shl nuw i64 %i.b, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #34 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit98
  store i64 %i.b, ptr %i.q, align 8, !tbaa !71
  %sext188 = shl i64 %i.e, 32                     ; 3 uses
  %i.y = ashr exact i64 %sext188, 32              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !71
  %.not.i.i100 = icmp eq i64 %i.y, %i.aa
  %.pre218.pre = load ptr, ptr %2, align 8, !tbaa !72 ; 2 uses
  br i1 %.not.i.i100, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %.pre218.pre) #33
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i103, label %.sink.split.i.i101

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i103: ; preds = %bb.g
  %i.ac = lshr exact i64 %sext188, 30
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #34 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.invoke, label %.sink.split.i.i101

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i103, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.e
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i.i101:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i103, %bb.g
  %.sink.i.i102 = phi ptr [ %i.ad, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i103 ], [ null, %bb.g ] ; 2 uses
  store ptr %.sink.i.i102, ptr %2, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i101, %bb.f
  %.pre = phi ptr [ %.sink.i.i102, %.sink.split.i.i101 ], [ %.pre218.pre, %bb.f ] ; 11 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !71
  %i.ag = icmp slt i64 %i.y, 1
  br i1 %i.ag, label %.loopexit192, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext188, 30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ai = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2
  %i.am = getelementptr i8, ptr %.pre, i64 %i.al
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !73
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.loopexit192, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.pre, %bb.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.c, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit192, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !416

.loopexit192:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.h
  %4 = sext i32 %.sroa.speculated151 to i64       ; 3 uses
  %i.ar = add nsw i32 %.sroa.speculated151, -1
  %i.as = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated151, i32 2)
  %i.at = add nsw i32 %i.as, -1
  %i.au = sdiv i32 %i.ar, %i.at                   ; 2 uses
  %or.cond = icmp sgt i32 %.sroa.speculated151, 0
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.loopexit192
  %min.iters.check234 = icmp ult i32 %.sroa.speculated151, 8
  br i1 %min.iters.check234, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, label %vector.ph235

vector.ph235:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec236 = and i64 %4, 2147483640              ; 3 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph235
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph235 ], [ %vec.ind.next, %vector.body239 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.av = mul nsw <4 x i32> %broadcast.splat238, %vec.ind
  %i.aw = mul nsw <4 x i32> %broadcast.splat238, %step.add
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index240 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %i.av, ptr %i.ax, align 4, !tbaa !73
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !73
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.az = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.az, label %middle.block242, label %vector.body239, !llvm.loop !417

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %n.vec236, %4
  br i1 %cmp.n243, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246 ] ; 3 uses
  %i.ba = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.bb = mul nsw i32 %i.au, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !73
  %i.bd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bd, %4
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !418

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit192
  br i1 %i.g, label %.lr.ph195, label %._crit_edge204

.lr.ph195:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !134 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !116 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !132 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %wide.trip.count211 = and i64 %i.b, 2147483647  ; 2 uses
  br i1 %i.bk, label %.lr.ph195.split.us, label %.lr.ph195.split

.lr.ph195.split.us:                               ; preds = %.lr.ph195, %._crit_edge.us
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %._crit_edge.us ], [ 0, %.lr.ph195 ] ; 4 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv208 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph195.split.us
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv208
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !73
  %i.bo = sext i32 %i.bn to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.j, %.lr.ph195.split.us
  %.071.us = phi i64 [ %i.bo, %bb.j ], [ %indvars.iv208, %.lr.ph195.split.us ]
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.071.us ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73 ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bu, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bv = sext i32 %i.bq to i64                   ; 5 uses
  %i.bw = sub nsw i64 %i.bt, %i.bv
  %xtraiter = and i64 %i.bw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !73
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.cb)
  store i32 %.sroa.speculated.us.prol, ptr %i.ca, align 4, !tbaa !73
  %i.cc = add nsw i64 %i.bv, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.7117.0193.us.unr = phi i64 [ %i.bv, %.lr.ph.us.preheader ], [ %i.cc, %.lr.ph.us.prol ]
  %i.cd = add nsw i64 %i.bt, -1
  %i.ce = icmp eq i64 %i.cd, %i.bv
  br i1 %i.ce, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.7117.0193.us = phi i64 [ %i.cq, %.lr.ph.us ], [ %.sroa.7117.0193.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.sroa.7117.0193.us
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !73
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.cj)
  store i32 %.sroa.speculated.us, ptr %i.ci, align 4, !tbaa !73
  %i.ck = getelementptr [4 x i8], ptr %i.bf, i64 %.sroa.7117.0193.us
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !73
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.cp)
  store i32 %.sroa.speculated.us.1, ptr %i.co, align 4, !tbaa !73
  %i.cq = add nsw i64 %.sroa.7117.0193.us, 2      ; 2 uses
  %exitcond207.not.1 = icmp eq i64 %i.cq, %i.bt
  br i1 %exitcond207.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !419

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %.lr.ph203, label %.lr.ph195.split.us, !llvm.loop !420

.lr.ph203:                                        ; preds = %._crit_edge, %._crit_edge.us
  %i.cr = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !134
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !116
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !132 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  %sext = shl i64 %i.e, 32
  %i.cz = ashr exact i64 %sext, 32
  %wide.trip.count216 = and i64 %i.b, 2147483647
  br label %bb.m

bb.k:                                             ; preds = %.invoke
  %i.da = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0131.0181) #33
  br label %.body

.lr.ph195.split:                                  ; preds = %.lr.ph195, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph195 ] ; 4 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph195.split
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !73
  %i.de = sext i32 %i.dd to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %.lr.ph195.split
  %.071 = phi i64 [ %i.de, %bb.l ], [ %indvars.iv, %.lr.ph195.split ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.071
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.071
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !73 ; 2 uses
  %5 = sext i32 %i.dj to i64
  %i.dk = add nsw i64 %5, %i.dh
  %i.dl = icmp sgt i32 %i.dj, 0
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count211
  br i1 %exitcond.not, label %.lr.ph203, label %.lr.ph195.split, !llvm.loop !420

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.7117.0193 = phi i64 [ %i.dr, %.lr.ph ], [ %i.dh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.sroa.7117.0193
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !73
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dq)
  store i32 %.sroa.speculated, ptr %i.dp, align 4, !tbaa !73
  %i.dr = add nsw i64 %.sroa.7117.0193, 1         ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.dk
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !llvm.loop !419

._crit_edge204:                                   ; preds = %._crit_edge201, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0131.0181) #33
  tail call void @free(ptr noundef %.sroa.0139.0166173180) #33
  ret i32 0

bb.m:                                             ; preds = %.lr.ph203, %._crit_edge201
  %indvars.iv213 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next214, %._crit_edge201 ] ; 12 uses
  %i.dt = icmp sge i64 %indvars.iv213, %i.cz      ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0131.0181, i64 %indvars.iv213
  %i.dv = trunc nuw nsw i64 %indvars.iv213 to i32 ; 5 uses
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !73
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0139.0166173180, i64 %indvars.iv213
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !73
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv213
  store i32 %i.c, ptr %i.dx, align 4, !tbaa !73
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv213
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !73
  %i.ea = sext i32 %i.dz to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.056 = phi i64 [ %i.ea, %bb.n ], [ %indvars.iv213, %bb.m ] ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %.056 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !73
  %i.ed = sext i32 %i.ec to i64                   ; 3 uses
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr i8, ptr %i.eb, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !73
  %i.eg = sext i32 %i.ef to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109

bb.q:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %.056
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !73
  %i.ej = sext i32 %i.ei to i64
  %i.ek = add nsw i64 %i.ej, %i.ed
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109: ; preds = %bb.p, %bb.q
  %.sink.i108 = phi i64 [ %i.eg, %bb.p ], [ %i.ek, %bb.q ] ; 2 uses
  %i.el = icmp sle i64 %.sink.i108, %i.ed         ; 2 uses
  %.not190196 = select i1 %i.el, i1 %i.dt, i1 false
  br i1 %.not190196, label %._crit_edge201, label %.lr.ph200

._crit_edge201:                                   ; preds = %bb.v, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %._crit_edge204, label %bb.m, !llvm.loop !421

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109, %bb.v
  %i.em = phi i1 [ %i.fe, %bb.v ], [ %i.el, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109 ]
  %.066199 = phi i32 [ %.268, %bb.v ], [ %i.dv, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109 ] ; 3 uses
  %.069198 = phi i1 [ %spec.select, %bb.v ], [ %i.dt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109 ]
  %.sroa.7.0197 = phi i64 [ %i.fd, %bb.v ], [ %i.ed, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit109 ] ; 2 uses
  br i1 %i.em, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph200
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %.sroa.7.0197
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !73
  %i.ep = sext i32 %i.eo to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph200, %bb.r
  %.055 = phi i64 [ %i.ep, %bb.r ], [ %indvars.iv213, %.lr.ph200 ] ; 2 uses
  %i.eq = icmp eq i64 %.055, %indvars.iv213
  %spec.select = select i1 %i.eq, i1 true, i1 %.069198 ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.055
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73 ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv213, %i.et
  br i1 %.not78, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %i.et
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !73 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !73 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.t ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.es, %bb.t ]
  %i.eu = sext i32 %.01524.i to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %i.eu
  store i32 %.025.i, ptr %i.ev, align 4, !tbaa !73
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !73 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !73 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !422

.loopexit:                                        ; preds = %.lr.ph.i, %bb.t
  %.pre-phi = phi i64 [ %.pn20.i, %bb.t ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.t ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0139.0166173180, i64 %.pre-phi ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !73 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %.not79 = icmp eq i64 %indvars.iv213, %i.ey
  br i1 %.not79, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ez
  store i32 %i.dv, ptr %i.fa, align 4, !tbaa !73
  %i.fb = sext i32 %.066199 to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.sroa.0131.0181, i64 %i.fb
  store i32 %.014.lcssa.i, ptr %i.fc, align 4, !tbaa !73
  store i32 %i.dv, ptr %i.ew, align 4, !tbaa !73
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.u, %bb.s
  %.268 = phi i32 [ %.066199, %bb.s ], [ %.014.lcssa.i, %bb.u ], [ %.066199, %.loopexit ]
  %i.fd = add nsw i64 %.sroa.7.0197, 1            ; 2 uses
  %i.fe = icmp sge i64 %i.fd, %.sink.i108         ; 2 uses
  %.not190 = select i1 %i.fe, i1 %spec.select, i1 false
  br i1 %.not190, label %._crit_edge201, label %.lr.ph200, !llvm.loop !423

.body:                                            ; preds = %bb.k, %bb.c
  %.sroa.0139.0167 = phi ptr [ %calloc, %bb.c ], [ %.sroa.0139.0166173180, %bb.k ]
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.da, %bb.k ]
  tail call void @free(ptr noundef %.sroa.0139.0167) #33
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !349
  %.not.i = icmp eq i64 %1, %i.b
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !350
  tail call void @free(ptr noundef %i.c) #33
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !350
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %bb.a, %.sink.split.i
  store i64 %1, ptr %i.a, align 8, !tbaa !349
  ret void
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_:bb.a

bb.m:                                             ; preds = %bb.l, %.lr.ph231
  %i.dz = icmp ult ptr %i.dn, %i.di
  br i1 %i.dz, label %.lr.ph231, label %.loopexit197, !llvm.loop !437

.loopexit200:                                     ; preds = %.lr.ph226, %.lr.ph228
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %.pre-phi307
  br i1 %exitcond280.not, label %.loopexit199, label %.lr.ph228, !llvm.loop !438

.lr.ph228:                                        ; preds = %.preheader201, %.loopexit200
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.loopexit200 ], [ 0, %.preheader201 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv276
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !73 ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next277
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !73 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ee
  %i.eg = icmp slt i32 %i.eb, %i.ed
  br i1 %i.eg, label %.lr.ph226.preheader, label %.loopexit200

.lr.ph226.preheader:                              ; preds = %.lr.ph228
  %i.eh = sext i32 %i.eb to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eh
  %i.ej = trunc nuw nsw i64 %indvars.iv276 to i32
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2224 = phi ptr [ %i.ek, %.lr.ph226 ], [ %i.ei, %.lr.ph226.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2224, i64 4 ; 2 uses
  %i.el = load i32, ptr %.2224, align 4, !tbaa !73
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [16 x i8], ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !81 ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !81
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %4, i64 %i.er
  store i32 %i.ej, ptr %i.es, align 4, !tbaa !73
  %i.et = icmp ult ptr %i.ek, %i.ef
  br i1 %i.et, label %.lr.ph226, label %.loopexit200, !llvm.loop !439

.loopexit199:                                     ; preds = %.loopexit200, %.loopexit197, %.preheader201, %.preheader198
  br i1 %.not248, label %._crit_edge237, label %.lr.ph236.preheader

.lr.ph236.preheader:                              ; preds = %.loopexit199
  %wide.trip.count289 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter346 = and i64 %wide.trip.count289, 3   ; 3 uses
  %i.eu = icmp samesign ult i32 %0, 4
  br i1 %i.eu, label %.lr.ph236.epil.preheader, label %.lr.ph236.preheader.new

.lr.ph236.preheader.new:                          ; preds = %.lr.ph236.preheader
  %unroll_iter350 = and i64 %wide.trip.count289, 2147483644
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236, %.lr.ph236.preheader.new
  %indvars.iv286 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %indvars.iv.next287.3, %.lr.ph236 ] ; 5 uses
  %niter351 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %niter351.next.3, %.lr.ph236 ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !81
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !428
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !81
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  store i32 0, ptr %i.fb, align 4, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !428
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !81
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  store i32 0, ptr %i.fg, align 4, !tbaa !81
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !428
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !81
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 60
  store i32 0, ptr %i.fl, align 4, !tbaa !81
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !428
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !81
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %niter351.next.3 = add i64 %niter351, 4         ; 2 uses
  %niter351.ncmp.3 = icmp eq i64 %niter351.next.3, %unroll_iter350
  br i1 %niter351.ncmp.3, label %._crit_edge237.loopexit.unr-lcssa, label %.lr.ph236, !llvm.loop !440

._crit_edge237.loopexit.unr-lcssa:                ; preds = %.lr.ph236
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %._crit_edge237, label %.lr.ph236.epil.preheader

.lr.ph236.epil.preheader:                         ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.preheader
  %indvars.iv286.epil.init = phi i64 [ 0, %.lr.ph236.preheader ], [ %indvars.iv.next287.3, %._crit_edge237.loopexit.unr-lcssa ]
  %lcmp.mod349 = icmp ne i64 %xtraiter346, 0
  tail call void @llvm.assume(i1 %lcmp.mod349)
  br label %.lr.ph236.epil

.lr.ph236.epil:                                   ; preds = %.lr.ph236.epil, %.lr.ph236.epil.preheader
  %indvars.iv286.epil = phi i64 [ %indvars.iv286.epil.init, %.lr.ph236.epil.preheader ], [ %indvars.iv.next287.epil, %.lr.ph236.epil ] ; 2 uses
  %epil.iter347 = phi i64 [ 0, %.lr.ph236.epil.preheader ], [ %epil.iter347.next, %.lr.ph236.epil ]
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv286.epil ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !81
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !428
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !81
  %indvars.iv.next287.epil = add nuw nsw i64 %indvars.iv286.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %._crit_edge237, label %.lr.ph236.epil, !llvm.loop !441

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.epil, %.loopexit199
  %i.fu = load i32, ptr %i.da, align 4, !tbaa !73
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge237
  store i32 0, ptr %3, align 4, !tbaa !424
  store i32 0, ptr %5, align 4, !tbaa !73
  %i.fw = icmp samesign ugt i32 %1, 1
  br i1 %i.fw, label %.lr.ph240.preheader, label %.preheader

.lr.ph240.preheader:                              ; preds = %bb.n
  %i.fx = add nsw i64 %.pre-phi307, -1            ; 3 uses
  %xtraiter352 = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %.pre-phi307, 2
  br i1 %i.fy, label %.lr.ph240.epil.preheader, label %.lr.ph240.preheader.new

.lr.ph240.preheader.new:                          ; preds = %.lr.ph240.preheader
  %unroll_iter356 = and i64 %i.fx, -2
  br label %.lr.ph240

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph240
  %lcmp.mod354.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod354.not, label %.preheader, label %.lr.ph240.epil.preheader

.lr.ph240.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph240.preheader
  %indvars.iv291.epil.init = phi i64 [ 1, %.lr.ph240.preheader ], [ %indvars.iv.next292.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod355)
  %i.fz = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291.epil.init ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -24
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !424
  %i.gc = getelementptr i8, ptr %i.fz, i64 -20
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !426
  %i.ge = add nsw i32 %i.gd, %i.gb                ; 2 uses
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !424
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291.epil.init
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph240.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.n
  br i1 %.not248, label %.loopexit, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader
  %wide.trip.count299 = zext nneg i32 %0 to i64
  br label %.lr.ph246

.lr.ph240:                                        ; preds = %.lr.ph240, %.lr.ph240.preheader.new
  %indvars.iv291 = phi i64 [ 1, %.lr.ph240.preheader.new ], [ %indvars.iv.next292.1, %.lr.ph240 ] ; 4 uses
  %niter357 = phi i64 [ 0, %.lr.ph240.preheader.new ], [ %niter357.next.1, %.lr.ph240 ]
  %i.gg = getelementptr [24 x i8], ptr %3, i64 %indvars.iv291 ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !424
  %i.gj = getelementptr i8, ptr %i.gg, i64 -20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !426
  %i.gl = add nsw i32 %i.gk, %i.gi                ; 2 uses
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !424
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv291
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !73
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.gn = getelementptr [24 x i8], ptr %3, i64 %indvars.iv.next292 ; 3 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !424
  %i.gq = getelementptr i8, ptr %i.gn, i64 -20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !426
  %i.gs = add nsw i32 %i.gr, %i.gp                ; 2 uses
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !424
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next292
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !73
  %indvars.iv.next292.1 = add nuw nsw i64 %indvars.iv291, 2 ; 2 uses
  %niter357.next.1 = add nuw i64 %niter357, 2     ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph240, !llvm.loop !442

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %._crit_edge244
  %indvars.iv296 = phi i64 [ 0, %.lr.ph246.preheader ], [ %indvars.iv.next297, %._crit_edge244 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !434
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !428 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %.idx = shl nsw i64 %i.ha, 2
  %i.hb = getelementptr inbounds i8, ptr %i.gx, i64 %.idx
  %i.hc = icmp sgt i32 %i.gz, 0
  br i1 %i.hc, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %.lr.ph246
  %i.hd = trunc nuw nsw i64 %indvars.iv296 to i32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.lr.ph243
  %.0182241 = phi ptr [ %i.he, %.lr.ph243 ], [ %i.gx, %.lr.ph243.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0182241, i64 4 ; 2 uses
  %i.hf = load i32, ptr %.0182241, align 4, !tbaa !73
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !73 ; 2 uses
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !73
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hk
  store i32 %i.hd, ptr %i.hl, align 4, !tbaa !73
  %i.hm = icmp ult ptr %i.he, %i.hb
  br i1 %i.hm, label %.lr.ph243, label %._crit_edge244, !llvm.loop !443

._crit_edge244:                                   ; preds = %.lr.ph243, %.lr.ph246
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %.lr.ph246, !llvm.loop !444

.loopexit:                                        ; preds = %._crit_edge244, %.preheader, %._crit_edge237, %bb.f, %bb.b
  %.0181 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %._crit_edge237 ], [ 1, %.preheader ], [ 1, %._crit_edge244 ]
  ret i32 %.0181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5Eigen8internal6ColamdL12init_scoringIiEEvT_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_PdSA_SA_SA_(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4, ptr nofree noundef nonnull captures(none) %5, double nofpclass(nan inf zero sub nnorm) %.0.val, double nofpclass(nan inf zero sub nnorm) %.8.val, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8) unnamed_addr #20 {
bb.a:
  %i.a = uitofp nneg i32 %1 to double
  %i.b = fmul nnan double %.0.val, %i.a
  %i.c = fptosi double %i.b to i32
  %.sroa.speculated9 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.c)
  %.sroa.speculated13 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated9, i32 0) ; 2 uses
  %i.d = uitofp nneg i32 %0 to double
  %i.e = fmul nnan double %.8.val, %i.d
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.f)
  %.sroa.speculated3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 0)
  %.not96 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not96, label %.preheader65, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.g, -1    ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.prol ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !426
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.lr.ph.prol.loopexit

bb.b:                                             ; preds = %.lr.ph.prol
  %i.l = add nsw i32 %1, -1                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !81
  store i32 -1, ptr %i.h, align 4, !tbaa !424
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %bb.b, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %bb.b ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.010870.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %.1109.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.l, %bb.b ], [ %1, %.lr.ph.prol ]
  %i.n = icmp eq i32 %1, 1
  br i1 %i.n, label %.lr.ph77.preheader, label %.lr.ph

.lr.ph77.preheader:                               ; preds = %bb.e, %.lr.ph.prol.loopexit
  %.1109.lcssa = phi i32 [ %.1109.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1109.1, %bb.e ]
  %i.o = zext nneg i32 %1 to i64
  br label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.010870 = phi i32 [ %.1109.1, %bb.e ], [ %.010870.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.p = getelementptr [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !426
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.p, i64 -24
  %i.u = add nsw i32 %.010870, -1                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 -12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !81
  store i32 -1, ptr %i.t, align 4, !tbaa !424
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1109 = phi i32 [ %i.u, %bb.c ], [ %.010870, %.lr.ph ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !426
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.1
  %i.aa = add nsw i32 %.1109, -1                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !81
  store i32 -1, ptr %i.w, align 4, !tbaa !424
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1109.1 = phi i32 [ %i.aa, %bb.d ], [ %.1109, %.lr.ph.1 ] ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ac, label %.lr.ph, label %.lr.ph77.preheader, !llvm.loop !445

.preheader65:                                     ; preds = %bb.g, %bb.a
  %.2110.lcssa = phi i32 [ 0, %bb.a ], [ %.3111, %bb.g ] ; 2 uses
  %.not98 = icmp eq i32 %0, 0
  br i1 %.not98, label %.preheader64, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp samesign ult i32 %0, 9
  br i1 %min.iters.check, label %.lr.ph82.preheader159, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph82.preheader
  %i.ad = and i64 %wide.trip.count, 7             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %wide.trip.count, %i.af    ; 2 uses
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %0, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue152, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue152 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %predphi154, %pred.store.continue152 ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi155, %pred.store.continue152 ]
  %vec.phi137 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue152 ] ; 2 uses
  %vec.phi138 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi153, %pred.store.continue152 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !81
  %i.ay = load i32, ptr %i.aq, align 4, !tbaa !81
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !81
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !81
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.bc = insertelement <4 x i32> %i.bb, i32 %i.ay, i64 1
  %i.bd = insertelement <4 x i32> %i.bc, i32 %i.az, i64 2
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 3 ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !81
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !81
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !81
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !81
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3 ; 3 uses
  %i.bn = icmp sgt <4 x i32> %i.be, %broadcast.splat
  %i.bo = icmp sgt <4 x i32> %i.bm, %broadcast.splat
  %i.bp = icmp eq <4 x i32> %i.be, zeroinitializer
  %i.bq = icmp eq <4 x i32> %i.bm, zeroinitializer
  %i.br = or <4 x i1> %i.bn, %i.bp                ; 6 uses
  %i.bs = or <4 x i1> %i.bo, %i.bq                ; 6 uses
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi137, <4 x i32> %i.be)
  %i.bu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi138, <4 x i32> %i.bm)
  %i.bv = extractelement <4 x i1> %i.br, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 -1, ptr %i.bw, align 4, !tbaa !81
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bx = extractelement <4 x i1> %i.br, i64 1
  br i1 %i.bx, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 -1, ptr %i.by, align 4, !tbaa !81
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal6ColamdL13find_orderingIiEET_S3_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_S3_S3_S3_:bb.a
  %lcmp.mod34 = trunc i32 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ed = getelementptr inbounds nuw i8, ptr %.28295.i.epil.init, i64 4 ; 2 uses
  %i.ee = load i32, ptr %.28295.i.epil.init, align 4, !tbaa !73 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !424
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.x, label %._crit_edge100.loopexit.i

bb.x:                                             ; preds = %.lr.ph99.i.epil.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %.596.i.epil.init, i64 4
  store i32 %i.ee, ptr %.596.i.epil.init, align 4, !tbaa !73
  br label %._crit_edge100.loopexit.i

._crit_edge100.loopexit.i:                        ; preds = %.lr.ph99.i.epil.preheader, %bb.x, %._crit_edge100.loopexit.i.unr-lcssa
  %.6.i.lcssa = phi ptr [ %.6.i.1, %._crit_edge100.loopexit.i.unr-lcssa ], [ %i.ej, %bb.x ], [ %.596.i.epil.init, %.lr.ph99.i.epil.preheader ] ; 2 uses
  %.lcssa = phi ptr [ %i.dw, %._crit_edge100.loopexit.i.unr-lcssa ], [ %i.ed, %bb.x ], [ %i.ed, %.lr.ph99.i.epil.preheader ]
  %.pre116.i = load i32, ptr %i.de, align 4, !tbaa !434
  %.pre118.i = ptrtoint ptr %.6.i.lcssa to i64
  br label %._crit_edge100.i

._crit_edge100.i:                                 ; preds = %._crit_edge100.loopexit.i, %bb.t
  %.pre-phi119.i = phi i64 [ %.pre118.i, %._crit_edge100.loopexit.i ], [ %i.dh, %bb.t ]
  %i.ek = phi i32 [ %.pre116.i, %._crit_edge100.loopexit.i ], [ %i.dk, %bb.t ]
  %.282.lcssa.i = phi ptr [ %.lcssa, %._crit_edge100.loopexit.i ], [ %.181103.i, %bb.t ]
  %.5.lcssa.i = phi ptr [ %.6.i.lcssa, %._crit_edge100.loopexit.i ], [ %.4104.i, %bb.t ]
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %5, i64 %i.el
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %.pre-phi119.i, %i.en
  %i.ep = lshr exact i64 %i.eo, 2
  %i.eq = trunc i64 %i.ep to i32
  store i32 %i.eq, ptr %i.dl, align 4, !tbaa !428
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge100.i, %.lr.ph105.i
  %.383.i = phi ptr [ %.282.lcssa.i, %._crit_edge100.i ], [ %i.cz, %.lr.ph105.i ] ; 2 uses
  %.7.i = phi ptr [ %.5.lcssa.i, %._crit_edge100.i ], [ %.4104.i, %.lr.ph105.i ] ; 2 uses
  %i.er = icmp ult ptr %.383.i, %i.at
  br i1 %i.er, label %.lr.ph105.i, label %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit, !llvm.loop !459

_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit: ; preds = %bb.y, %.preheader.i
  %.4.lcssa.i = phi ptr [ %.078.lcssa.i, %.preheader.i ], [ %.7.i, %bb.y ]
  %i.es = ptrtoint ptr %.4.lcssa.i to i64
  %i.et = sub i64 %i.es, %i.p
  %i.eu = lshr exact i64 %i.et, 2
  %i.ev = trunc i64 %i.eu to i32                  ; 4 uses
  %i.ew = add nsw i32 %.0459, 1                   ; 4 uses
  br i1 %.not.i, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328, label %.lr.ph.i323.preheader

.lr.ph.i323.preheader:                            ; preds = %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit
  br i1 %i.t, label %.lr.ph.i323.epil.preheader, label %.lr.ph.i323

.lr.ph.i323:                                      ; preds = %.lr.ph.i323.preheader, %bb.ab
  %indvars.iv.i324 = phi i64 [ %indvars.iv.next.i325.1, %bb.ab ], [ 0, %.lr.ph.i323.preheader ] ; 3 uses
  %niter41 = phi i64 [ %niter41.next.1, %bb.ab ], [ 0, %.lr.ph.i323.preheader ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !81
  %i.fa = icmp sgt i32 %i.ez, -1
  br i1 %i.fa, label %bb.z, label %.lr.ph.i323.1

bb.z:                                             ; preds = %.lr.ph.i323
  store i32 0, ptr %i.ey, align 4, !tbaa !81
  br label %.lr.ph.i323.1

.lr.ph.i323.1:                                    ; preds = %bb.z, %.lr.ph.i323
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 28 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !81
  %i.fe = icmp sgt i32 %i.fd, -1
  br i1 %i.fe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i323.1
  store i32 0, ptr %i.fc, align 4, !tbaa !81
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i323.1
  %indvars.iv.next.i325.1 = add nuw nsw i64 %indvars.iv.i324, 2 ; 2 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, label %.lr.ph.i323, !llvm.loop !453

_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa: ; preds = %bb.ab
  br i1 %lcmp.mod38.not, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328, label %.lr.ph.i323.epil.preheader

.lr.ph.i323.epil.preheader:                       ; preds = %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, %.lr.ph.i323.preheader
  %indvars.iv.i324.epil.init = phi i64 [ 0, %.lr.ph.i323.preheader ], [ %indvars.iv.next.i325.1, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i324.epil.init
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !81
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %bb.ac, label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328

bb.ac:                                            ; preds = %.lr.ph.i323.epil.preheader
  store i32 0, ptr %i.fg, align 4, !tbaa !81
  br label %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328

_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328: ; preds = %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa, %bb.ac, %.lr.ph.i323.epil.preheader, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit, %bb.h
  %.1286 = phi i32 [ %.0285456, %bb.h ], [ 1, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ 1, %.lr.ph.i323.epil.preheader ], [ 1, %bb.ac ], [ 1, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ] ; 4 uses
  %.1276 = phi i32 [ %.0275458, %bb.h ], [ %i.ev, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ %i.ev, %.lr.ph.i323.epil.preheader ], [ %i.ev, %bb.ac ], [ %i.ev, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ] ; 5 uses
  %.1 = phi i32 [ %.0459, %bb.h ], [ %i.ew, %_ZN5Eigen8internal6ColamdL18garbage_collectionIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_.exit ], [ %i.ew, %.lr.ph.i323.epil.preheader ], [ %i.ew, %bb.ac ], [ %i.ew, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328.loopexit.unr-lcssa ]
  %i.fj = sub nsw i32 0, %i.ao
  store i32 %i.fj, ptr %i.an, align 4, !tbaa !81
  %i.fk = load i32, ptr %i.af, align 4, !tbaa !424
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !426
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fp
  br label %.outer420.outer

..loopexit418_crit_edge:                          ; preds = %bb.aj
  br label %.outer420.outer, !llvm.loop !460

.outer420.outer:                                  ; preds = %..loopexit418_crit_edge, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328
  %.0410.ph.ph = phi i32 [ %.2412, %..loopexit418_crit_edge ], [ 0, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ] ; 4 uses
  %.0280.ph.ph = phi ptr [ %i.fs, %..loopexit418_crit_edge ], [ %i.fm, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ]
  %.2.ph.ph = phi i32 [ %.4, %..loopexit418_crit_edge ], [ %.1276, %_ZN5Eigen8internal6ColamdL10clear_markIiEET_S3_PNS1_12RowStructureIS3_EE.exit328 ] ; 3 uses
  br label %.outer420

.outer420:                                        ; preds = %.outer420.outer, %bb.af
  %.0280.ph = phi ptr [ %i.fs, %bb.af ], [ %.0280.ph.ph, %.outer420.outer ]
  br label %bb.ad

bb.ad:                                            ; preds = %.outer420, %bb.ae
  %.0280 = phi ptr [ %i.fs, %bb.ae ], [ %.0280.ph, %.outer420 ] ; 3 uses
  %i.fr = icmp ult ptr %.0280, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.fs = getelementptr inbounds nuw i8, ptr %.0280, i64 4 ; 3 uses
  %i.ft = load i32, ptr %.0280, align 4, !tbaa !73
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [16 x i8], ptr %3, i64 %i.fu ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !81
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.ad, label %bb.af, !llvm.loop !460

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !428 ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph436, label %.outer420, !llvm.loop !460

.lr.ph436:                                        ; preds = %bb.af
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !434
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gd ; 2 uses
  %i.gf = sext i32 %i.ga to i64
  %.idx464.le = shl nsw i64 %i.gf, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %.idx464.le
  br label %bb.ag, !llvm.loop !460

bb.ag:                                            ; preds = %.lr.ph436, %bb.aj
  %.3435 = phi i32 [ %.2.ph.ph, %.lr.ph436 ], [ %.4, %bb.aj ] ; 4 uses
  %.0289434 = phi ptr [ %i.ge, %.lr.ph436 ], [ %i.gh, %bb.aj ] ; 2 uses
  %.1411433 = phi i32 [ %.0410.ph.ph, %.lr.ph436 ], [ %.2412, %bb.aj ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0289434, i64 4 ; 2 uses
  %i.gi = load i32, ptr %.0289434, align 4, !tbaa !73 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [24 x i8], ptr %4, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !81 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.go = load i32, ptr %i.gk, align 4, !tbaa !424
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = sub nsw i32 0, %i.gm
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !81
  %i.gr = add nsw i32 %.3435, 1
  %i.gs = sext i32 %.3435 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gs
  store i32 %i.gi, ptr %i.gt, align 4, !tbaa !73
  %i.gu = add nuw nsw i32 %i.gm, %.1411433
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.2412 = phi i32 [ %i.gu, %bb.ai ], [ %.1411433, %bb.ah ], [ %.1411433, %bb.ag ] ; 2 uses
  %.4 = phi i32 [ %i.gr, %bb.ai ], [ %.3435, %bb.ah ], [ %.3435, %bb.ag ] ; 2 uses
  %i.gv = icmp ult ptr %i.gh, %i.gg
  br i1 %i.gv, label %bb.ag, label %..loopexit418_crit_edge, !llvm.loop !461

bb.ak:                                            ; preds = %bb.ad
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !81
  %.sroa.speculated386 = tail call i32 @llvm.smax.i32(i32 %.0405455, i32 %.0410.ph.ph) ; 2 uses
  %i.gw = load i32, ptr %i.af, align 4, !tbaa !424
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.fn, align 4, !tbaa !426 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %.idx = shl nsw i64 %i.ha, 2
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 %.idx
  %i.hc = icmp sgt i32 %i.gz, 0
  br i1 %i.hc, label %.lr.ph440, label %._crit_edge

.lr.ph440:                                        ; preds = %bb.ak, %.lr.ph440
  %.1281439 = phi ptr [ %i.hd, %.lr.ph440 ], [ %i.gy, %bb.ak ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1281439, i64 4 ; 2 uses
  %i.he = load i32, ptr %.1281439, align 4, !tbaa !73
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [16 x i8], ptr %3, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 -1, ptr %i.hh, align 4, !tbaa !81
  %i.hi = icmp ult ptr %i.hd, %i.hb
  br i1 %i.hi, label %.lr.ph440, label %._crit_edge, !llvm.loop !462

._crit_edge:                                      ; preds = %.lr.ph440, %bb.ak
  %i.hj = sub nsw i32 %.2.ph.ph, %.1276           ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph446.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %._crit_edge
  %i.hl = sext i32 %.1276 to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hl ; 2 uses
  %i.hn = sext i32 %i.hj to i64
  %.idx462 = shl nsw i64 %i.hn, 2
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 %.idx462
  br label %_ZN5Eigen8internal6ColamdL17detect_super_colsIiEEvPNS1_12ColStructureIT_EEPS4_S7_S4_S4_.exit

.lr.ph446.preheader:                              ; preds = %._crit_edge
  %i.hp = load i32, ptr %i.af, align 4, !tbaa !424
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !73
  %i.ht = sext i32 %.1276 to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ht ; 5 uses
  %i.hv = zext nneg i32 %i.hj to i64
  %.idx462503 = shl nuw nsw i64 %i.hv, 2
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx462503 ; 4 uses
  br label %.lr.ph446

.loopexit:                                        ; preds = %.backedge, %bb.ap
  %i.hx = icmp ult ptr %i.hy, %i.hw
  br i1 %i.hx, label %.lr.ph446, label %.lr.ph450, !llvm.loop !463

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.loopexit
  %.1290444 = phi ptr [ %i.hy, %.loopexit ], [ %i.hu, %.lr.ph446.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1290444, i64 4 ; 2 uses
  %i.hz = load i32, ptr %.1290444, align 4, !tbaa !73
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ia ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !81 ; 2 uses
  %i.ie = sub nsw i32 0, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !81
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !81 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !81 ; 4 uses
  %i.ij = icmp eq i32 %i.ig, -1
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph446
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !81
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %6, i64 %i.im
  store i32 %i.ii, ptr %i.in, align 4, !tbaa !73
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph446
  %i.io = sext i32 %i.ig to i64
  %i.ip = getelementptr inbounds [24 x i8], ptr %4, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  store i32 %i.ii, ptr %i.iq, align 4, !tbaa !81
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not312 = icmp eq i32 %i.ii, -1
  br i1 %.not312, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ir = sext i32 %i.ii to i64
  %i.is = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i32 %i.ig, ptr %i.it, align 4, !tbaa !81
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.iu = load i32, ptr %i.ib, align 4, !tbaa !424
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !426 ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %.idx463 = shl nsw i64 %i.iz, 2
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 %.idx463
  %i.jb = icmp sgt i32 %i.iy, 0
  br i1 %i.jb, label %.lr.ph443, label %.loopexit

.lr.ph443:                                        ; preds = %bb.ap, %.backedge
  %.2282441 = phi ptr [ %i.jc, %.backedge ], [ %i.iw, %bb.ap ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2282441, i64 4 ; 2 uses
  %i.jd = load i32, ptr %.2282441, align 4, !tbaa !73
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [16 x i8], ptr %3, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !81 ; 2 uses
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %.backedge, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph443
  %i.jj = sub nsw i32 %i.jh, %.1286               ; 2 uses
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !81
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0284 = phi i32 [ %i.jm, %bb.ar ], [ %i.jj, %bb.aq ]
  %i.jn = add nsw i32 %.0284, %i.id               ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = add nsw i32 %i.jn, %.1286
  %storemerge = select i1 %i.jo, i32 -1, i32 %i.jp
  store i32 %storemerge, ptr %i.jg, align 4, !tbaa !81
  br label %.backedge

.backedge:                                        ; preds = %bb.as, %.lr.ph443
  %i.jq = icmp ult ptr %i.jc, %i.ja
  br i1 %i.jq, label %.lr.ph443, label %.loopexit, !llvm.loop !464

.lr.ph450:                                        ; preds = %.loopexit, %bb.bc
  %.1278449 = phi i32 [ %.2279, %bb.bc ], [ %i.ap, %.loopexit ] ; 3 uses
  %.2291448 = phi ptr [ %i.kn, %bb.bc ], [ %i.hu, %.loopexit ] ; 2 uses
  %.3413447 = phi i32 [ %.4414, %bb.bc ], [ %.0410.ph.ph, %.loopexit ] ; 2 uses
  %i.jr = load i32, ptr %.2291448, align 4, !tbaa !73 ; 3 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [24 x i8], ptr %4, i64 %i.js ; 9 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !424
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jv ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !426
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.jz
  br label %.outer

.outer:                                           ; preds = %bb.av, %.lr.ph450
  %.0409.ph = phi i32 [ %.sroa.speculated366, %bb.av ], [ 0, %.lr.ph450 ] ; 2 uses
  %.0295.ph = phi ptr [ %i.kj, %bb.av ], [ %i.jw, %.lr.ph450 ] ; 3 uses
  %.0293.ph = phi i32 [ %i.kk, %bb.av ], [ 0, %.lr.ph450 ] ; 2 uses
  %.3283.ph = phi ptr [ %i.kc, %bb.av ], [ %i.jw, %.lr.ph450 ]
  br label %bb.at

bb.at:                                            ; preds = %.outer, %bb.au
  %.3283 = phi ptr [ %i.kc, %bb.au ], [ %.3283.ph, %.outer ] ; 3 uses
  %i.kb = icmp ult ptr %.3283, %i.ka
  br i1 %i.kb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kc = getelementptr inbounds nuw i8, ptr %.3283, i64 4 ; 2 uses
  %i.kd = load i32, ptr %.3283, align 4, !tbaa !73 ; 3 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !81 ; 2 uses
  %i.ki = icmp slt i32 %i.kh, 0
  br i1 %i.ki, label %bb.at, label %bb.av, !llvm.loop !465

bb.av:                                            ; preds = %bb.au
  %i.kj = getelementptr inbounds nuw i8, ptr %.0295.ph, i64 4
  store i32 %i.kd, ptr %.0295.ph, align 4, !tbaa !73
  %i.kk = add i32 %i.kd, %.0293.ph
  %i.kl = sub i32 %.0409.ph, %.1286
  %i.km = add i32 %i.kl, %i.kh
  %.sroa.speculated366 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.km)
  br label %.outer, !llvm.loop !465

bb.aw:                                            ; preds = %bb.at
  %i.kn = getelementptr inbounds nuw i8, ptr %.2291448, i64 4 ; 2 uses
  %i.ko = load i32, ptr %i.jt, align 4, !tbaa !424
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.kp
  %i.kr = ptrtoint ptr %.0295.ph to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = lshr exact i64 %i.kt, 2
  %i.kv = trunc i64 %i.ku to i32                  ; 2 uses
  store i32 %i.kv, ptr %i.jx, align 4, !tbaa !426
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 -1, ptr %i.jt, align 4, !tbaa !424
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !81 ; 2 uses
  %i.kz = sub nsw i32 %.3413447, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 %.1278449, ptr %i.la, align 4, !tbaa !81
end_hunk_5
begin_hunk_6_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #33
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !115
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !73
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !73
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us: ; preds = %.lr.ph71, %._crit_edge.us
  %.03370.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73 ; 2 uses
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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !73
  %i.bk = add nsw i64 %.sroa.755.069.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !557

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.069.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.069.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.069.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !73
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !73
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !73
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !73
  %i.co = add nsw i64 %.sroa.755.069.us, 4        ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond85.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !558

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us
  %i.cp = add nuw nsw i64 %.03370.us, 1           ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond86.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, !llvm.loop !559

._crit_edge72:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge76

bb.f:                                             ; preds = %._crit_edge72
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 6 uses
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
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
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
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !73
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03370
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %i.de = add nuw nsw i64 %.03370, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, !llvm.loop !559

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %.lr.ph
  %.sroa.755.069 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !73
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !73
  %i.dl = add nsw i64 %.sroa.755.069, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !558

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %.lr.ph75
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge76, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.03174.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %i.gm, %._crit_edge76.loopexit.unr-lcssa ] ; 2 uses
  %.03273.epil.init = phi i32 [ 0, %.lr.ph75.preheader ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  store i32 %.03273.epil.init, ptr %i.dn, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174.epil.init
  store i32 %.03273.epil.init, ptr %i.dp, align 4, !tbaa !73
  %i.dq = add nsw i32 %i.do, %.03273.epil.init
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph75.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %._crit_edge72
  %.sroa.049.0107 = phi ptr [ null, %._crit_edge72 ], [ %i.cs, %._crit_edge76.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph75.epil.preheader ] ; 6 uses
  %.032.lcssa = phi i32 [ 0, %._crit_edge72 ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph75.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.032.lcssa, ptr %i.dr, align 4, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.032.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge76
  %i.du = load i64, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph81, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !203
  br label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !133 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !134 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !116 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !132 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us: ; preds = %.lr.ph81, %._crit_edge79.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge79.us ], [ 0, %.lr.ph81 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv91 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !73 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !73 ; 2 uses
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
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !73
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !73
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !124
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !124
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
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !73 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !73
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !73
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !124
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !124
  %i.fq = add nsw i64 %.sroa.8.077.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !73 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !73
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !73
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !124
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !124
  %i.gc = add nsw i64 %.sroa.8.077.us, 2          ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond90.not.1, label %._crit_edge79.us, label %.lr.ph78.us, !llvm.loop !560

._crit_edge79.us:                                 ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %i.du
  br i1 %exitcond94.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, !llvm.loop !561

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %.03174 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %i.gm, %.lr.ph75 ] ; 4 uses
  %.03273 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %i.gl, %.lr.ph75 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.1, %.lr.ph75 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  store i32 %.03273, ptr %i.gd, align 4, !tbaa !73
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174
  store i32 %.03273, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add nsw i32 %i.ge, %.03273              ; 3 uses
  %i.gh = or disjoint i64 %.03174, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !73
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !73
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !73
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03174, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !562

bb.h:                                             ; preds = %._crit_edge76
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.049.0107) #33
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45: ; preds = %.lr.ph81, %._crit_edge79
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge79 ], [ 0, %.lr.ph81 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !73
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph78

._crit_edge79:                                    ; preds = %.lr.ph78, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond89.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45, !llvm.loop !561

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %.sroa.8.077 = phi i64 [ %i.hh, %.lr.ph78 ], [ %i.gq, %.lr.ph78.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !73
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !73 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !73
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !73
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077
  %i.hf = load double, ptr %i.he, align 8, !tbaa !124
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !124
  %i.hh = add nsw i64 %.sroa.8.077, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph78, label %._crit_edge79, !llvm.loop !560

._crit_edge82:                                    ; preds = %._crit_edge79, %._crit_edge79.us, %.preheader.._crit_edge82_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge82_crit_edge ], [ %i.eg, %._crit_edge79.us ], [ %i.eg, %._crit_edge79 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !15
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !203
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !203
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !203
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !239
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !204
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !239
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !203
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !204
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !15
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !15
  call void @free(ptr noundef %.sroa.049.0107) #33
  call void @free(ptr noundef %i.hq) #33
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !132
  call void @free(ptr noundef %i.hz) #33
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge82
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !134 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

.body42:                                          ; preds = %bb.h, %bb.g
  %.pn39 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body

.body:                                            ; preds = %bb.c, %.body42
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body42 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 14 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !23, !range !142, !noundef !143
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !205
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !115
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !tbaa !115
  %i.q = shl i64 %i.p, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.q, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.c, %bb.b
  %i.r = load i64, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.t = mul nsw i64 %i.s, %i.r
  %.sroa.speculated124 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 %i.s)
  %i.u = shl nsw i64 %.sroa.speculated124, 1
  %.sroa.speculated129 = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %.sroa.speculated129)
  %i.w = icmp sgt i64 %i.b, 0
  br i1 %i.w, label %.lr.ph173, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph173:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !205
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !115 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !116 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.am, %bb.f ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.08.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i64 %.08.i, -1
  %i.an = icmp sgt i64 %.08.i, 0
  br i1 %i.an, label %bb.e, label %.critedge.i, !llvm.loop !318

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ -1, %bb.f ], [ %.08.i, %bb.e ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.ag
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.ao = sub i64 %i.ag, %.0.lcssa.i              ; 3 uses
  %min.iters.check263 = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check263, label %.lr.ph13.i.preheader274, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec265 = and i64 %i.ao, -8                   ; 3 uses
  %i.ap = add i64 %.0.lcssa.i, %n.vec265
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ai, i64 %.0.lcssa.i
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph264
  %index269 = phi i64 [ 0, %vector.ph264 ], [ %index.next270, %vector.body268 ] ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %index269 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
end_hunk_6
begin_hunk_7_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #33
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !115
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !73
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !73
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us: ; preds = %.lr.ph71, %._crit_edge.us
  %.03370.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.755.069.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !73
  %i.bk = add nsw i64 %.sroa.755.069.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !582

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.069.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.069.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.069.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !73
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !73
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !73
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !73
  %i.co = add nsw i64 %.sroa.755.069.us, 4        ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond85.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !583

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us
  %i.cp = add nuw nsw i64 %.03370.us, 1           ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond86.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.us, !llvm.loop !584

._crit_edge72:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge76

bb.f:                                             ; preds = %._crit_edge72
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 6 uses
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
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit: ; preds = %.lr.ph71, %._crit_edge
  %.03370 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !73
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03370
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit
  %i.de = add nuw nsw i64 %.03370, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit, !llvm.loop !584

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit, %.lr.ph
  %.sroa.755.069 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !73
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !73
  %i.dl = add nsw i64 %.sroa.755.069, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !583

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %.lr.ph75
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge76, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.03174.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %i.gm, %._crit_edge76.loopexit.unr-lcssa ] ; 2 uses
  %.03273.epil.init = phi i32 [ 0, %.lr.ph75.preheader ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  store i32 %.03273.epil.init, ptr %i.dn, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174.epil.init
  store i32 %.03273.epil.init, ptr %i.dp, align 4, !tbaa !73
  %i.dq = add nsw i32 %i.do, %.03273.epil.init
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph75.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %._crit_edge72
  %.sroa.049.0107 = phi ptr [ null, %._crit_edge72 ], [ %i.cs, %._crit_edge76.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph75.epil.preheader ] ; 6 uses
  %.032.lcssa = phi i32 [ 0, %._crit_edge72 ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph75.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.032.lcssa, ptr %i.dr, align 4, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.032.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge76
  %i.du = load i64, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph81, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !203
  br label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !133 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !134 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !116 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !132 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us: ; preds = %.lr.ph81, %._crit_edge79.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge79.us ], [ 0, %.lr.ph81 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv91 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !73 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !73 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph78.us.preheader, label %._crit_edge79.us

.lr.ph78.us.preheader:                            ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter118 = and i64 %i.eq, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph78.us.prol.loopexit, label %.lr.ph78.us.prol

.lr.ph78.us.prol:                                 ; preds = %.lr.ph78.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !73
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !73
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !124
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !124
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
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !73 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !73
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !73
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !124
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !124
  %i.fq = add nsw i64 %.sroa.8.077.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !73 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !73
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !73
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !124
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !124
  %i.gc = add nsw i64 %.sroa.8.077.us, 2          ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond90.not.1, label %._crit_edge79.us, label %.lr.ph78.us, !llvm.loop !585

._crit_edge79.us:                                 ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %i.du
  br i1 %exitcond94.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45.us, !llvm.loop !586

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %.03174 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %i.gm, %.lr.ph75 ] ; 4 uses
  %.03273 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %i.gl, %.lr.ph75 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.1, %.lr.ph75 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  store i32 %.03273, ptr %i.gd, align 4, !tbaa !73
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174
  store i32 %.03273, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add nsw i32 %i.ge, %.03273              ; 3 uses
  %i.gh = or disjoint i64 %.03174, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !73
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !73
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !73
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03174, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !587

bb.h:                                             ; preds = %._crit_edge76
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.049.0107) #33
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45: ; preds = %.lr.ph81, %._crit_edge79
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge79 ], [ 0, %.lr.ph81 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !73
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph78

._crit_edge79:                                    ; preds = %.lr.ph78, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond89.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit45, !llvm.loop !586

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %.sroa.8.077 = phi i64 [ %i.hh, %.lr.ph78 ], [ %i.gq, %.lr.ph78.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !73
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !73 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !73
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !73
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077
  %i.hf = load double, ptr %i.he, align 8, !tbaa !124
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !124
  %i.hh = add nsw i64 %.sroa.8.077, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph78, label %._crit_edge79, !llvm.loop !585

._crit_edge82:                                    ; preds = %._crit_edge79, %._crit_edge79.us, %.preheader.._crit_edge82_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge82_crit_edge ], [ %i.eg, %._crit_edge79.us ], [ %i.eg, %._crit_edge79 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !15
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !15
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !203
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !203
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !203
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !203
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !239
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !204
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !239
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !203
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !204
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !15
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !15
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !15
  call void @free(ptr noundef %.sroa.049.0107) #33
  call void @free(ptr noundef %i.hq) #33
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !132
  call void @free(ptr noundef %i.hz) #33
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge82
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !134 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

.body42:                                          ; preds = %bb.h, %bb.g
  %.pn39 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body

.body:                                            ; preds = %bb.c, %.body42
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body42 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !588, !nonnull !143, !align !211 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207, !nonnull !143, !align !211 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115  ; 14 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !149, !range !142, !noundef !143
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.j, i64 noundef %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !115
  %i.p = shl i64 %i.o, 2
  %i.q = add i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !115
  %i.u = shl i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !207, !nonnull !143, !align !211 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %i.aa = mul nsw i64 %i.z, %i.x
  %.sroa.speculated161 = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.z)
  %i.ab = shl nsw i64 %.sroa.speculated161, 1
  %.sroa.speculated166 = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.speculated166)
  %i.ad = icmp sgt i64 %i.f, 0
  br i1 %i.ad, label %.lr.ph216, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph216:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
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
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !132
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !205
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !115 ; 5 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !116 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.08.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.ax, %bb.f ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.08.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !73
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ax = add nsw i64 %.08.i, -1
  %i.ay = icmp sgt i64 %.08.i, 0
  br i1 %i.ay, label %bb.e, label %.critedge.i, !llvm.loop !318

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.0.lcssa.i = phi i64 [ -1, %bb.f ], [ %.08.i, %bb.e ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.ar
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.az = sub i64 %i.ar, %.0.lcssa.i              ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.az, 8
  br i1 %min.iters.check340, label %.lr.ph13.i.preheader351, label %vector.ph341

vector.ph341:                                     ; preds = %.lr.ph13.i.preheader
end_hunk_7
begin_hunk_8_@_ZN5Eigen12SparseMatrixIdLi1ElED2Ev:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1276 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #36
  br label %_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi1ElEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix.987", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 4 uses
  store i8 0, ptr %2, align 8, !tbaa !1268
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !1278
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = shl i64 %i.b, 3                          ; 3 uses
  %i.j = add i64 %i.i, 8
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j) ; 13 uses
  store ptr %calloc, ptr %i.h, align 8, !tbaa !1270
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdlED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #33
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !1277
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %calloc, i8 0, i64 %i.i, i1 false), !tbaa !15
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %bb.d
  %i.p = icmp sgt i64 %i.d, 0
  br i1 %i.p, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !132  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph69, %._crit_edge.us
  %.03668.us = phi i64 [ %i.bq, %._crit_edge.us ], [ 0, %.lr.ph69 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.03668.us ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !73   ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp slt i32 %i.y, %i.aa
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.ad = sext i32 %i.y to i64                    ; 4 uses
  %i.ae = sub nsw i64 %i.ab, %i.ad
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.757.067.us.prol = phi i64 [ %i.al, %.lr.ph.us.prol ], [ %i.ad, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.af = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.sroa.757.067.us.prol
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !15
  %i.al = add nsw i64 %.sroa.757.067.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !1285

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.757.067.us.unr = phi i64 [ %i.ad, %.lr.ph.us.preheader ], [ %i.al, %.lr.ph.us.prol ]
  %i.am = sub nsw i64 %i.ad, %i.ab
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.757.067.us = phi i64 [ %i.bp, %.lr.ph.us ], [ %.sroa.757.067.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.sroa.757.067.us
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !15
  %i.au = getelementptr [4 x i8], ptr %i.r, i64 %.sroa.757.067.us
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !73
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = add nsw i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !15
  %i.bb = getelementptr [4 x i8], ptr %i.r, i64 %.sroa.757.067.us
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !15
  %i.bi = getelementptr [4 x i8], ptr %i.r, i64 %.sroa.757.067.us
  %i.bj = getelementptr i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !73
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !15
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !15
  %i.bp = add nsw i64 %.sroa.757.067.us, 4        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bp, %i.ab
  br i1 %exitcond.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1286

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bq = add nuw nsw i64 %.03668.us, 1           ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.d
  br i1 %i.br, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %._crit_edge70, !llvm.loop !1287

._crit_edge70:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  br i1 %i.o, label %bb.e, label %._crit_edge74

bb.e:                                             ; preds = %._crit_edge70
  %i.bs = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.bs, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 6 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.invoke.i, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i.i.i
  %xtraiter112 = and i64 %i.b, 1
  %i.bv = icmp eq i64 %i.b, 1
  br i1 %i.bv, label %.lr.ph73.epil.preheader, label %.lr.ph73.preheader.new

.lr.ph73.preheader.new:                           ; preds = %.lr.ph73.preheader
  %unroll_iter = and i64 %i.b, 2305843009213693950
  br label %.lr.ph73

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.i.i.i.i.i, %bb.e
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i unwind label %bb.f

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %.invoke.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body44

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph69, %._crit_edge
  %.03668 = phi i64 [ %i.cf, %._crit_edge ], [ 0, %.lr.ph69 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.03668
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !73
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03668
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73 ; 2 uses
  %3 = sext i32 %i.cc to i64
  %i.cd = add nsw i64 %3, %i.ca
  %i.ce = icmp sgt i32 %i.cc, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cf = add nuw nsw i64 %.03668, 1              ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.d
  br i1 %i.cg, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, label %._crit_edge70, !llvm.loop !1287

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.757.067 = phi i64 [ %i.cn, %.lr.ph ], [ %i.ca, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.sroa.757.067
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !73
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.cj ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cm = add nsw i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nsw i64 %.sroa.757.067, 1           ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.cd
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !1286

._crit_edge74.loopexit.unr-lcssa:                 ; preds = %.lr.ph73
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %._crit_edge74, label %.lr.ph73.epil.preheader

.lr.ph73.epil.preheader:                          ; preds = %._crit_edge74.loopexit.unr-lcssa, %.lr.ph73.preheader
  %.03472.epil.init = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.fn, %._crit_edge74.loopexit.unr-lcssa ] ; 2 uses
  %.03571.epil.init = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.fm, %._crit_edge74.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod115 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %.03472.epil.init ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !15
  store i64 %.03571.epil.init, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.03472.epil.init
  store i64 %.03571.epil.init, ptr %i.cr, align 8, !tbaa !15
  %i.cs = add nsw i64 %i.cq, %.03571.epil.init
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %.lr.ph73.epil.preheader, %._crit_edge74.loopexit.unr-lcssa, %._crit_edge70
  %.sroa.051.0105 = phi ptr [ null, %._crit_edge70 ], [ %i.bt, %._crit_edge74.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph73.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i64 [ 0, %._crit_edge70 ], [ %i.fm, %._crit_edge74.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph73.epil.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %calloc, i64 %i.b
  store i64 %.035.lcssa, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdlE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 noundef %.035.lcssa, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %._crit_edge74
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !115 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre88 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !857
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !133 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !134 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !116 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !132 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8            ; 6 uses
  %i.di = load ptr, ptr %i.cu, align 8            ; 4 uses
  br i1 %i.df, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %i.dj = phi i64 [ %i.fb, %._crit_edge78.us ], [ %i.cv, %.lr.ph80 ]
  %.02879.us = phi i64 [ %i.fc, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 5 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.02879.us ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !73 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73 ; 2 uses
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %i.dp = icmp slt i32 %i.dl, %i.dn
  br i1 %i.dp, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us
  %i.dq = sext i32 %i.dl to i64                   ; 6 uses
  %i.dr = sub nsw i64 %i.do, %i.dq
  %xtraiter116 = and i64 %i.dr, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dq
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !73
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %.sroa.051.0105, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !15 ; 3 uses
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !15
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dw
  store i64 %.02879.us, ptr %i.dy, align 8, !tbaa !15
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !124
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dw
  store double %i.ea, ptr %i.eb, align 8, !tbaa !124
  %i.ec = add nsw i64 %i.dq, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.dq, %.lr.ph77.us.preheader ], [ %i.ec, %.lr.ph77.us.prol ]
  %i.ed = add nsw i64 %i.do, -1
  %i.ee = icmp eq i64 %i.ed, %i.dq
  br i1 %i.ee, label %._crit_edge78.us.loopexit, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.fa, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.da, i64 %.sroa.8.076.us
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !73
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.sroa.051.0105, i64 %i.eh ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !15 ; 3 uses
  %i.ek = add nsw i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !15
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ej
  store i64 %.02879.us, ptr %i.el, align 8, !tbaa !15
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %.sroa.8.076.us
  %i.en = load double, ptr %i.em, align 8, !tbaa !124
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ej
  store double %i.en, ptr %i.eo, align 8, !tbaa !124
  %i.ep = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !73
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %.sroa.051.0105, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !15 ; 3 uses
  %i.ev = add nsw i64 %i.eu, 1
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !15
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.eu
  store i64 %.02879.us, ptr %i.ew, align 8, !tbaa !15
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ep
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !124
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.eu
  store double %i.ey, ptr %i.ez, align 8, !tbaa !124
  %i.fa = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond86.not.1 = icmp eq i64 %i.fa, %i.do
  br i1 %exitcond86.not.1, label %._crit_edge78.us.loopexit, label %.lr.ph77.us, !llvm.loop !1288

._crit_edge78.us.loopexit:                        ; preds = %.lr.ph77.us, %.lr.ph77.us.prol.loopexit
  %.pre87 = load i64, ptr %i.c, align 8, !tbaa !115
  br label %._crit_edge78.us

._crit_edge78.us:                                 ; preds = %._crit_edge78.us.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us
  %i.fb = phi i64 [ %.pre87, %._crit_edge78.us.loopexit ], [ %i.dj, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us ] ; 2 uses
  %i.fc = add nuw nsw i64 %.02879.us, 1           ; 2 uses
  %i.fd = icmp slt i64 %i.fc, %i.fb
  br i1 %i.fd, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47.us, label %._crit_edge81, !llvm.loop !1289

.lr.ph73:                                         ; preds = %.lr.ph73, %.lr.ph73.preheader.new
  %.03472 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %i.fn, %.lr.ph73 ] ; 4 uses
  %.03571 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %i.fm, %.lr.ph73 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %niter.next.1, %.lr.ph73 ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %.03472 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !15
  store i64 %.03571, ptr %i.fe, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.03472
  store i64 %.03571, ptr %i.fg, align 8, !tbaa !15
  %i.fh = add nsw i64 %i.ff, %.03571              ; 3 uses
  %i.fi = or disjoint i64 %.03472, 1              ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !15
  store i64 %i.fh, ptr %i.fj, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.fi
  store i64 %i.fh, ptr %i.fl, align 8, !tbaa !15
  %i.fm = add nsw i64 %i.fk, %i.fh                ; 3 uses
  %i.fn = add nuw nsw i64 %.03472, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge74.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !1290

bb.g:                                             ; preds = %._crit_edge74
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.051.0105) #33
  br label %.body44

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47: ; preds = %.lr.ph80, %._crit_edge78
  %i.fp = phi i64 [ %i.fx, %._crit_edge78 ], [ %i.cv, %.lr.ph80 ]
  %.02879 = phi i64 [ %i.fy, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.02879
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.02879
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.fu to i64
  %i.fv = add nsw i64 %4, %i.fs
  %i.fw = icmp sgt i32 %i.fu, 0
  br i1 %i.fw, label %.lr.ph77, label %._crit_edge78

._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.pre = load i64, ptr %i.c, align 8, !tbaa !115
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47
  %i.fx = phi i64 [ %.pre, %._crit_edge78.loopexit ], [ %i.fp, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47 ] ; 2 uses
  %i.fy = add nuw nsw i64 %.02879, 1              ; 2 uses
  %i.fz = icmp slt i64 %i.fy, %i.fx
  br i1 %i.fz, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47, label %._crit_edge81, !llvm.loop !1289

.lr.ph77:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.gk, %.lr.ph77 ], [ %i.fs, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit47 ] ; 3 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.da, i64 %.sroa.8.076
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !73
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.051.0105, i64 %i.gc ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !15 ; 3 uses
  %i.gf = add nsw i64 %i.ge, 1
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !15
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ge
  store i64 %.02879, ptr %i.gg, align 8, !tbaa !15
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %.sroa.8.076
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !124
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ge
  store double %i.gi, ptr %i.gj, align 8, !tbaa !124
  %i.gk = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.gl = icmp slt i64 %i.gk, %i.fv
  br i1 %i.gl, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !1288

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.gm = phi ptr [ %.pre88, %.preheader.._crit_edge81_crit_edge ], [ %i.dh, %._crit_edge78.us ], [ %i.dh, %._crit_edge78 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gp = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.gq = load <2 x i64>, ptr %i.go, align 8, !tbaa !15
  store <2 x i64> %i.gp, ptr %i.go, align 8, !tbaa !15
  store <2 x i64> %i.gq, ptr %i.e, align 8, !tbaa !15
  %i.gr = load <2 x ptr>, ptr %i.h, align 8, !tbaa !857
  %i.gs = load <2 x ptr>, ptr %i.gn, align 8, !tbaa !857
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !857
  store <2 x ptr> %i.gr, ptr %i.gn, align 8, !tbaa !857
  store <2 x ptr> %i.gs, ptr %i.h, align 8, !tbaa !857
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gv = load ptr, ptr %i.cu, align 8, !tbaa !239
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gy = load <2 x ptr>, ptr %i.gu, align 8, !tbaa !204
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !239
  store ptr %i.gm, ptr %i.gw, align 8, !tbaa !857
  store <2 x ptr> %i.gy, ptr %i.cu, align 8, !tbaa !204
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ha = load <2 x i64>, ptr %i.g, align 8, !tbaa !15
  %i.hb = load <2 x i64>, ptr %i.gz, align 8, !tbaa !15
  store <2 x i64> %i.ha, ptr %i.gz, align 8, !tbaa !15
  store <2 x i64> %i.hb, ptr %i.g, align 8, !tbaa !15
  call void @free(ptr noundef %.sroa.051.0105) #33
  call void @free(ptr noundef %i.gt) #33
  %i.hc = load ptr, ptr %i.n, align 8, !tbaa !1274
  call void @free(ptr noundef %i.hc) #33
  %i.hd = load ptr, ptr %i.cu, align 8, !tbaa !1275 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.hd) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge81
  %i.hf = load ptr, ptr %i.gx, align 8, !tbaa !1276 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.hf) #36
  br label %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

.body44:                                          ; preds = %bb.g, %bb.f
  %.pn41 = phi { ptr, i32 } [ %i.fo, %bb.g ], [ %i.bx, %bb.f ]
  call void @_ZN5Eigen12SparseMatrixIdLi1ElED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body

.body:                                            ; preds = %bb.c, %.body44
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %.body44 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn41.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdlED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1275   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1276 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdlE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1291
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdlE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64                ; 2 uses
  %i.g = add nsw i64 %1, %i.f                     ; 4 uses
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.g, 2305843009213693951
  %i.k = shl nuw i64 %i.g, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #38 ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #38
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i:   ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.g) ; 2 uses
  %i.q = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !239 ; 3 uses
  br i1 %i.q, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !857
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1276 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.s, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #36
  resume { ptr, i32 } %i.t

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.u = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.s, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !239
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.v, align 8, !tbaa !857
  store i64 %i.g, ptr %i.a, align 8, !tbaa !1291
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #36
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i
  %i.x = icmp eq ptr %.pre.i, null
  br i1 %i.x, label %_ZN5Eigen8internal17CompressedStorageIdlE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #36
  br label %_ZN5Eigen8internal17CompressedStorageIdlE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdlE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_8
begin_hunk_9_@_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi1ELb0ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_:bb.a
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ag = add i64 %i.aa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %i.aa, %index                   ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !73
  %wide.load78 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load, ptr %i.ai, align 4, !tbaa !73
  store <4 x i32> %wide.load78, ptr %i.al, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 4 uses
  %i.an = sub i64 %.pr.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80 ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !73
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !73
  %i.ar = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1374

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader80 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.as = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %.pr.i.i.i.i.i.i.i.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !73
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !73
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ax
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !73
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !73
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bb
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !73
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !73
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bf
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !73
  %i.bj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bj, %.pr.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1375

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.011.i.i.i.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.011.i.i.i.i.i.i.i.i.i
  %i.bm = load <2 x i64>, ptr %i.bl, align 16, !tbaa !81
  store <2 x i64> %i.bm, ptr %i.bk, align 16, !tbaa !81
  %i.bn = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.aa
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !82

_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.thread, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !115 ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !134 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %i.bx, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph43, %._crit_edge.us
  %.01742.us = phi i64 [ %i.dn, %._crit_edge.us ], [ 0, %.lr.ph43 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.01742.us ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !73 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73 ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 3 uses
  %i.ce = icmp slt i32 %i.ca, %i.cc
  br i1 %i.ce, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cf = sext i32 %i.ca to i64                   ; 5 uses
  %i.cg = sub nsw i64 %i.cd, %i.cf
  %xtraiter81 = and i64 %i.cg, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !73
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !73
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !73
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !73
  %i.cq = add nsw i64 %i.cf, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.736.041.us.unr = phi i64 [ %i.cf, %.lr.ph.us.preheader ], [ %i.cq, %.lr.ph.us.prol ]
  %i.cr = add nsw i64 %i.cd, -1
  %i.cs = icmp eq i64 %i.cr, %i.cf
  br i1 %i.cs, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.736.041.us = phi i64 [ %i.dm, %.lr.ph.us ], [ %.sroa.736.041.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %.sroa.736.041.us
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !73
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !73
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !73
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !73
  %i.dc = getelementptr [4 x i8], ptr %i.bs, i64 %.sroa.736.041.us
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !73
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !73
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !73
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !73
  %i.dm = add nsw i64 %.sroa.736.041.us, 2        ; 2 uses
  %exitcond52.not.1 = icmp eq i64 %i.dm, %i.cd
  br i1 %exitcond52.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1376

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.dn = add nuw nsw i64 %.01742.us, 1           ; 2 uses
  %exitcond53.not = icmp eq i64 %i.dn, %i.bp
  br i1 %exitcond53.not, label %._crit_edge44, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !1377

._crit_edge44:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit
  invoke void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader unwind label %bb.i

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader: ; preds = %._crit_edge44
  %i.do = load i64, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph49, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge

.lr.ph49:                                         ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.j

bb.h:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph43, %._crit_edge
  %.01742 = phi i64 [ %i.ec, %._crit_edge ], [ 0, %.lr.ph43 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.01742
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !73
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.01742
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !73 ; 2 uses
  %6 = sext i32 %i.dz to i64
  %i.ea = add nsw i64 %6, %i.dx
  %i.eb = icmp sgt i32 %i.dz, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.ec = add nuw nsw i64 %.01742, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %i.bp
  br i1 %exitcond.not, label %._crit_edge44, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !1377

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.736.041 = phi i64 [ %i.em, %.lr.ph ], [ %i.dx, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %.sroa.736.041
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !73
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !73
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !73
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !73
  %i.em = add nsw i64 %.sroa.736.041, 1           ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.ea
  br i1 %i.en, label %.lr.ph, label %._crit_edge, !llvm.loop !1376

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader
  %i.eo = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.n unwind label %bb.h       ; 0 uses

bb.i:                                             ; preds = %._crit_edge44
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph49, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  %i.eq = phi i64 [ %i.do, %.lr.ph49 ], [ %i.fh, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit ]
  %.048 = phi i64 [ 0, %.lr.ph49 ], [ %i.fi, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit ] ; 4 uses
  %i.er = load ptr, ptr %i.dq, align 8, !tbaa !133
  %i.es = load ptr, ptr %i.dr, align 8, !tbaa !134
  %i.et = load ptr, ptr %i.ds, align 8, !tbaa !116
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.048 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73
  %i.ew = sext i32 %i.ev to i64                   ; 3 uses
  %i.ex = load ptr, ptr %i.dt, align 8, !tbaa !132 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ez = getelementptr i8, ptr %i.eu, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !73
  %i.fb = sext i32 %i.fa to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29

bb.l:                                             ; preds = %bb.j
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.048
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fe = sext i32 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, %i.ew
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29: ; preds = %bb.k, %bb.l
  %.sink.i28 = phi i64 [ %i.fb, %bb.k ], [ %i.ff, %bb.l ] ; 2 uses
  %i.fg = icmp sgt i64 %.sink.i28, %i.ew
  br i1 %i.fg, label %.lr.ph46, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.pre55 = load i64, ptr %i.c, align 8, !tbaa !115
  br label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29
  %i.fh = phi i64 [ %.pre55, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit ], [ %i.eq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29 ] ; 2 uses
  %i.fi = add nuw nsw i64 %.048, 1                ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.fh
  br i1 %i.fj, label %bb.j, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge, !llvm.loop !1378

bb.m:                                             ; preds = %.lr.ph46
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph46:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.sroa.8.045 = phi i64 [ %i.fv, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit ], [ %i.ew, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit29 ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.sroa.8.045
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !124
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.es, i64 %.sroa.8.045
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !73
  %i.fp = sext i32 %i.fo to i64
  %i.fq = load ptr, ptr %5, align 8, !tbaa !72
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73
  %i.ft = sext i32 %i.fs to i64
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ft, i64 noundef %.048)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit unwind label %bb.m

_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph46
  store double %i.fm, ptr %i.fu, align 8, !tbaa !124
  %i.fv = add nsw i64 %.sroa.8.045, 1             ; 2 uses
  %exitcond54.not = icmp eq i64 %i.fv, %.sink.i28
  br i1 %exitcond54.not, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph46, !llvm.loop !1379

bb.n:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.fw = load ptr, ptr %5, align 8, !tbaa !72
  call void @free(ptr noundef %i.fw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.fx = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.fx) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !135
  call void @free(ptr noundef %i.fy) #33
  %i.fz = load ptr, ptr %i.m, align 8, !tbaa !138
  call void @free(ptr noundef %i.fz) #33
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !133 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !134 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ge) #36
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.r:                                             ; preds = %bb.m, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ep, %bb.i ], [ %i.fk, %bb.m ], [ %i.du, %bb.h ]
  %i.gg = load ptr, ptr %5, align 8, !tbaa !72
  call void @free(ptr noundef %i.gg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.gh = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.gh) #33
  br label %.body

.body:                                            ; preds = %bb.f, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !231  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !138
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !72     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135  ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge107, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.069105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ]
  %.070104.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %i.ay, %._crit_edge107.loopexit.unr-lcssa ]
  %.072103.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ar, %._crit_edge107.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
end_hunk_9
begin_hunk_10_@_ZN5Eigen8internal26permutation_matrix_productINS_12SparseMatrixIdLi0EiEELi1ELb1ENS_11SparseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_:bb.a
  br i1 %i.aa, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ab, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.i:                                             ; preds = %.invoke.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body27

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.g
  %.sink.i.i.i.i.i = phi ptr [ %i.z, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.g ] ; 8 uses
  %i.ad = trunc i64 %i.v to i32
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !72    ; 5 uses
  %wide.trip.count.i = and i64 %i.v, 2147483647
  %i.ag = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 3
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.v, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.j ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !73
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.am, ptr %i.al, align 4, !tbaa !73
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !73
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !73
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !73
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.au
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !73
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !73
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.az
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !73
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !333

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.epil
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !73
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit, label %bb.k, !llvm.loop !1421

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit: ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, %bb.k, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %.sroa.040.0 = phi ptr [ %.sink.i.i.i.i.i, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ %.sink.i.i.i.i.i, %bb.k ], [ %.sink.i.i.i.i.i, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa ] ; 9 uses
  %i.bh = icmp sgt i64 %i.d, 0
  br i1 %i.bh, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !134 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !116 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !132 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph52, %._crit_edge.us
  %.01751.us = phi i64 [ %i.dd, %._crit_edge.us ], [ 0, %.lr.ph52 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01751.us ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73 ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bu, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bv = sext i32 %i.bq to i64                   ; 5 uses
  %i.bw = sub nsw i64 %i.bt, %i.bv
  %xtraiter84 = and i64 %i.bw, 1
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %.sroa.040.0, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !73
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !73
  %i.cg = add nsw i64 %i.bv, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.735.050.us.unr = phi i64 [ %i.bv, %.lr.ph.us.preheader ], [ %i.cg, %.lr.ph.us.prol ]
  %i.ch = add nsw i64 %i.bt, -1
  %i.ci = icmp eq i64 %i.ch, %i.bv
  br i1 %i.ci, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.735.050.us = phi i64 [ %i.dc, %.lr.ph.us ], [ %.sroa.735.050.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.sroa.735.050.us
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !73
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.sroa.040.0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !73
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !73
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !73
  %i.cs = getelementptr [4 x i8], ptr %i.bj, i64 %.sroa.735.050.us
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !73
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.sroa.040.0, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !73
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !73
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !73
  %i.dc = add nsw i64 %.sroa.735.050.us, 2        ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %i.dc, %i.bt
  br i1 %exitcond60.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1422

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.dd = add nuw nsw i64 %.01751.us, 1           ; 2 uses
  %exitcond61.not = icmp eq i64 %i.dd, %i.d
  br i1 %exitcond61.not, label %._crit_edge53, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !1423

._crit_edge53:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit
  invoke void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader unwind label %bb.l

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader: ; preds = %._crit_edge53
  %i.de = load i64, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph58, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge

.lr.ph58:                                         ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.m

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph52, %._crit_edge
  %.01751 = phi i64 [ %i.dr, %._crit_edge ], [ 0, %.lr.ph52 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01751
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !73
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01751
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73 ; 2 uses
  %5 = sext i32 %i.do to i64
  %i.dp = add nsw i64 %5, %i.dm
  %i.dq = icmp sgt i32 %i.do, 0
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dr = add nuw nsw i64 %.01751, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %i.d
  br i1 %exitcond.not, label %._crit_edge53, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !1423

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.735.050 = phi i64 [ %i.eb, %.lr.ph ], [ %i.dm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.sroa.735.050
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !73
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %.sroa.040.0, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !73
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !73
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !73
  %i.eb = add nsw i64 %.sroa.735.050, 1           ; 2 uses
  %i.ec = icmp slt i64 %i.eb, %i.dp
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !1422

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.preheader
  %i.ed = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.q unwind label %bb.u       ; 0 uses

bb.l:                                             ; preds = %._crit_edge53
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.m:                                             ; preds = %.lr.ph58, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  %i.ef = phi i64 [ %i.de, %.lr.ph58 ], [ %i.ew, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit ]
  %.057 = phi i64 [ 0, %.lr.ph58 ], [ %i.ex, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit ] ; 4 uses
  %i.eg = load ptr, ptr %i.dg, align 8, !tbaa !133
  %i.eh = load ptr, ptr %i.dh, align 8, !tbaa !134
  %i.ei = load ptr, ptr %i.di, align 8, !tbaa !116
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.057 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !73
  %i.el = sext i32 %i.ek to i64                   ; 3 uses
  %i.em = load ptr, ptr %i.dj, align 8, !tbaa !132 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr i8, ptr %i.ej, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.eq = sext i32 %i.ep to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30

bb.o:                                             ; preds = %bb.m
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.057
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = add nsw i64 %i.et, %i.el
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30: ; preds = %bb.n, %bb.o
  %.sink.i29 = phi i64 [ %i.eq, %bb.n ], [ %i.eu, %bb.o ] ; 2 uses
  %i.ev = icmp sgt i64 %.sink.i29, %i.el
  br i1 %i.ev, label %.lr.ph55, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.pre = load i64, ptr %i.c, align 8, !tbaa !115
  br label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30
  %i.ew = phi i64 [ %.pre, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit ], [ %i.ef, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30 ] ; 2 uses
  %i.ex = add nuw nsw i64 %.057, 1                ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %i.ew
  br i1 %i.ey, label %bb.m, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge, !llvm.loop !1424

bb.p:                                             ; preds = %.lr.ph55
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.lr.ph55:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit
  %.sroa.8.054 = phi i64 [ %i.fj, %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit ], [ %i.el, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit30 ] ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %.sroa.8.054
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !124
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.sroa.8.054
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.sroa.040.0, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = sext i32 %i.fg to i64
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi1EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.fh, i64 noundef %.057)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit unwind label %bb.p

_ZN5Eigen12SparseMatrixIdLi1EiE18insertByOuterInnerEll.exit: ; preds = %.lr.ph55
  store double %i.fb, ptr %i.fi, align 8, !tbaa !124
  %i.fj = add nsw i64 %.sroa.8.054, 1             ; 2 uses
  %exitcond62.not = icmp eq i64 %i.fj, %.sink.i29
  br i1 %exitcond62.not, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit.loopexit, label %.lr.ph55, !llvm.loop !1425

bb.q:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  call void @free(ptr noundef %.sroa.040.0) #33
  %i.fk = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.fk) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.fl = load ptr, ptr %i.g, align 8, !tbaa !135
  call void @free(ptr noundef %i.fl) #33
  %i.fm = load ptr, ptr %i.m, align 8, !tbaa !138
  call void @free(ptr noundef %i.fm) #33
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !133 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.fo) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !134 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.fr) #36
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.u:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit._crit_edge
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %bb.i, %bb.u, %bb.p, %bb.l
  %.sroa.043.0 = phi ptr [ %.sroa.040.0, %bb.p ], [ %.sroa.040.0, %bb.u ], [ %.sroa.040.0, %bb.l ], [ null, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.p ], [ %i.ft, %bb.u ], [ %i.ee, %bb.l ], [ %i.ac, %bb.i ]
  call void @free(ptr noundef %.sroa.043.0) #33
  %i.fu = load ptr, ptr %4, align 8, !tbaa !72
  call void @free(ptr noundef %i.fu) #33
  br label %.body

.body:                                            ; preds = %bb.f, %.body27
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body27 ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_5BlockIS3_Lin1ELin1ELb0EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1426, !nonnull !143, !align !211 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178  ; 14 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !173, !range !142, !noundef !143
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !178
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.h, i64 noundef %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !115
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !115
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.s, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.c, %bb.b
  %i.t = load i64, ptr %i.g, align 8, !tbaa !178  ; 2 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !178  ; 2 uses
  %i.v = mul nsw i64 %i.u, %i.t
  %.sroa.speculated136 = tail call i64 @llvm.smax.i64(i64 %i.t, i64 %i.u)
  %i.w = shl nsw i64 %.sroa.speculated136, 1
  %.sroa.speculated141 = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.speculated141)
  %i.y = icmp sgt i64 %i.d, 0
  br i1 %i.y, label %.lr.ph188, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

end_hunk_10
begin_hunk_11_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
  %i.pm = shl nuw i64 %.sroa.speculated.i198, 2
  %i.pn = select i1 %i.pl, i64 -1, i64 %i.pm
  %i.po = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pn) #38
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200: ; preds = %.noexc212
  %.sroa.speculated.i.i201 = call i64 @llvm.smin.i64(i64 %i.pa, i64 %.sroa.speculated.i198) ; 3 uses
  %i.pp = icmp sgt i64 %.sroa.speculated.i.i201, 0
  %.pre.i.i202 = load ptr, ptr %i.il, align 8, !tbaa !239 ; 3 uses
  br i1 %i.pp, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i208, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i203

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i203: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.pre23.i.i205 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !203
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i206

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i208: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.idx.i.i209 = shl nuw nsw i64 %.sroa.speculated.i.i201, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.pk, ptr align 8 %.pre.i.i202, i64 %.idx.i.i209, i1 false)
  %.idx22.i.i210 = shl nuw nsw i64 %.sroa.speculated.i.i201, 2
  %i.pq = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !134 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.po, ptr align 4 %i.pq, i64 %.idx22.i.i210, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i206

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199: ; preds = %.noexc212
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.pk) #36
  br label %.body

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i206: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i208, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i203
  %i.ps = phi ptr [ %.pre23.i.i205, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i203 ], [ %i.pq, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i208 ] ; 2 uses
  store ptr %i.pk, ptr %i.il, align 8, !tbaa !239
  store ptr %i.po, ptr %.phi.trans.insert.i.i, align 8, !tbaa !203
  store i64 %.sroa.speculated.i198, ptr %i.it, align 8, !tbaa !322
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i207, label %bb.bc

bb.bc:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i206
  call void @_ZdaPv(ptr noundef nonnull %i.ps) #36
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i207

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i207: ; preds = %bb.bc, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i206
  %i.pu = icmp eq ptr %.pre.i.i202, null
  br i1 %i.pu, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i207
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i202) #36
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph304, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i207, %bb.bd
  store i64 %i.pb, ptr %i.hz, align 8, !tbaa !205
  %i.pv = load ptr, ptr %i.il, align 8, !tbaa !133 ; 2 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.pa
  store double 0.000000e+00, ptr %i.pw, align 8, !tbaa !124
  %i.px = trunc i64 %i.or to i32
  %i.py = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !134
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pa
  store i32 %i.px, ptr %i.pz, align 4, !tbaa !73
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.pv, i64 %i.oy
  store double %i.ot, ptr %i.qa, align 8, !tbaa !124
  %i.qb = getelementptr inbounds i8, ptr %i.ad, i64 %i.or
  store i8 0, ptr %i.qb, align 1, !tbaa !775
  %i.qc = add nuw nsw i64 %.0105303, 1            ; 2 uses
  %exitcond326.not = icmp eq i64 %i.qc, %.0118.lcssa357
  br i1 %exitcond326.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph304, !llvm.loop !1482

.loopexit270:                                     ; preds = %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph302:                                        ; preds = %.preheader, %bb.bi
  %.0301 = phi i64 [ %i.qx, %bb.bi ], [ 0, %.preheader ] ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0301 ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !775, !range !142, !noundef !143
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.lr.ph302
  store i8 0, ptr %i.qd, align 1, !tbaa !775
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0301
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !124
  %i.qi = load ptr, ptr %i.ia, align 8, !tbaa !116
  %i.qj = getelementptr [4 x i8], ptr %i.qi, i64 %.0116305
  %i.qk = getelementptr i8, ptr %i.qj, i64 4      ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !73 ; 2 uses
  %i.qm = add nsw i32 %i.ql, 1
  store i32 %i.qm, ptr %i.qk, align 4, !tbaa !73
  %i.qn = load i64, ptr %i.hz, align 8, !tbaa !205 ; 3 uses
  %i.qo = add nsw i64 %i.qn, 1
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.il, i64 noundef %i.qo, double noundef 1.000000e+00)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qp = sext i32 %i.ql to i64
  %i.qq = load ptr, ptr %i.il, align 8, !tbaa !133 ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qn
  store double 0.000000e+00, ptr %i.qr, align 8, !tbaa !124
  %i.qs = trunc i64 %.0301 to i32
  %i.qt = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !134
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qn
  store i32 %i.qs, ptr %i.qu, align 4, !tbaa !73
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qp
  store double %i.qh, ptr %i.qv, align 8, !tbaa !124
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %.lr.ph302, %bb.bg
  %i.qx = add nuw nsw i64 %.0301, 1               ; 2 uses
  %exitcond325.not = icmp eq i64 %i.qx, %i.b
  br i1 %exitcond325.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph302, !llvm.loop !1483

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.at, %bb.bi, %bb.be, %._crit_edge297.thread, %.preheader272, %.preheader, %_ZSt4sortIPlEvT_S1_.exit
  %i.qy = add nuw nsw i64 %.0116305, 1            ; 2 uses
  %exitcond327.not = icmp eq i64 %i.qy, %i.d
  br i1 %exitcond327.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.af, !llvm.loop !1484

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block480, %.critedge.i, %bb.ab, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  br i1 %i.ab, label %bb.bj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.bj:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit
  call void @free(ptr noundef nonnull %i.ae) #33
  call void @free(ptr noundef nonnull %i.ac) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit, %bb.bj
  br i1 %i.e, label %bb.bk, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

bb.bk:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.ad) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.bk
  ret void

.body:                                            ; preds = %.loopexit270, %.loopexit.split-lp, %.loopexit274, %.loopexit.split-lp275, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %bb.bh, %bb.ay, %bb.ae
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pr, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp275 ], [ %i.jv, %bb.ae ], [ %i.oo, %bb.ay ], [ %i.qw, %bb.bh ], [ %i.ne, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ], [ %lpad.loopexit276, %.loopexit274 ], [ %lpad.loopexit, %.loopexit270 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  br i1 %i.ab, label %.split263, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split263:                                        ; preds = %.body
  call void @free(ptr noundef nonnull %i.ae) #33
  call void @free(ptr noundef nonnull %i.ac) #33
  br i1 %i.e, label %bb.bl, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

bb.bl:                                            ; preds = %.split265, %.split263, %.split, %.split261
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn257 = phi { ptr, i32 } [ %i.js, %.split ], [ %.pn128.pn.pn.pn.pn, %.split263 ], [ %i.jt, %.split261 ], [ %i.ju, %.split265 ]
  %i.qz = phi ptr [ %i.f, %.split ], [ %i.ad, %.split263 ], [ %i.u, %.split261 ], [ %i.u, %.split265 ]
  call void @free(ptr noundef %i.qz) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195: ; preds = %.body, %.split265, %.split263, %.split261, %bb.bl
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn256 = phi { ptr, i32 } [ %i.jt, %.split261 ], [ %.pn128.pn.pn.pn.pn, %.split263 ], [ %.pn128.pn.pn.pn.pn.pn.pn.pn.pn257, %bb.bl ], [ %i.ju, %.split265 ], [ %.pn128.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn128.pn.pn.pn.pn.pn.pn.pn.pn256
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !1485

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.j, ptr %i.h, align 8, !tbaa !15
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = sdiv i64 %i.n, 2
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.r, align 8, !tbaa !15
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = icmp slt i64 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1486

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !15
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15 ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !15
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1487

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.aq, align 8, !tbaa !15
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1488

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !15  ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !15 ; 5 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !15 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.ay, ptr %0, align 8, !tbaa !15
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8, !tbaa !15
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8, !tbaa !15
  store i64 %i.be, ptr %i.e, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.ax, ptr %0, align 8, !tbaa !15
  store i64 %i.bg, ptr %i.e, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8, !tbaa !15
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8, !tbaa !15
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8, !tbaa !15    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.1.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !1489

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.114.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bo = icmp slt i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !1490

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.1.i.i, align 8, !tbaa !15
  store i64 %i.bk, ptr %.114.i.i, align 8, !tbaa !15
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !1491

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !1485

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i64, ptr %.019.i.ptr, align 8, !tbaa !15 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !327

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !15
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.pn18.i, align 8, !tbaa !15 ; 2 uses
  %i.k = icmp slt i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i64 %i.l, ptr %.0912.i.i, align 8, !tbaa !15
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.0.i.i, align 8, !tbaa !15 ; 2 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !1492

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !15
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !1493

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_11
begin_hunk_12_@_ZN5Eigen12SparseMatrixIdLi1EiEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #33
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.b)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.b, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.b, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !73
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.b
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !73
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.d, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !73
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !1496

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !73
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !73
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !73
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !73
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !73
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !73
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !73
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !1497

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.d
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !1498

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.b, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #34 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.b, 1
  %i.cu = icmp eq i64 %i.b, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.b, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !73
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !73 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.d
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !1498

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !73
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !73
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !1497

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !73
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.b
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !73
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.c, align 8, !tbaa !115 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !203
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !133 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !134 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !116 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !132 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !73 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !73 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !73
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !73
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !124
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !124
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !73 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !73
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !73
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !124
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !124
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !73 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !73
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !73
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !124
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !124
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !1499

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !1500

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !73
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !73
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !73
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !73
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !1501

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.gn = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gq = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %i.gr = load <2 x i64>, ptr %i.gp, align 8, !tbaa !15
  store <2 x i64> %i.gq, ptr %i.gp, align 8, !tbaa !15
  store <2 x i64> %i.gr, ptr %i.e, align 8, !tbaa !15
  %i.gs = load <2 x ptr>, ptr %i.h, align 8, !tbaa !203
  %i.gt = load <2 x ptr>, ptr %i.go, align 8, !tbaa !203
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !203
  store <2 x ptr> %i.gs, ptr %i.go, align 8, !tbaa !203
  store <2 x ptr> %i.gt, ptr %i.h, align 8, !tbaa !203
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.ds, align 8, !tbaa !239
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gz = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !204
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !239
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !203
  store <2 x ptr> %i.gz, ptr %i.ds, align 8, !tbaa !204
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hb = load <2 x i64>, ptr %i.g, align 8, !tbaa !15
  %i.hc = load <2 x i64>, ptr %i.ha, align 8, !tbaa !15
  store <2 x i64> %i.hb, ptr %i.ha, align 8, !tbaa !15
  store <2 x i64> %i.hc, ptr %i.g, align 8, !tbaa !15
  call void @free(ptr noundef %.sroa.052.0106) #33
  call void @free(ptr noundef %i.gu) #33
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !138
  call void @free(ptr noundef %i.hd) #33
  %i.he = load ptr, ptr %i.ds, align 8, !tbaa !133 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.he) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge81
  %i.hg = load ptr, ptr %i.gy, align 8, !tbaa !134 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #36
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

bb.k:                                             ; preds = %._crit_edge75
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #33
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !73
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !73 ; 2 uses
  %4 = sext i32 %i.hn to i64
  %i.ho = add nsw i64 %4, %i.hl
  %i.hp = icmp sgt i32 %i.hn, 0
  br i1 %i.hp, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !1500

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.ic, %.lr.ph77 ], [ %i.hl, %.lr.ph77.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !73
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !73 ; 2 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !73
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hx
  store i32 %i.hq, ptr %i.hy, align 4, !tbaa !73
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !124
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hx
  store double %i.ia, ptr %i.ib, align 8, !tbaa !124
  %i.ic = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.ho
  br i1 %i.id, label %.lr.ph77, label %._crit_edge78, !llvm.loop !1499

.body45:                                          ; preds = %bb.k, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.hi, %bb.k ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind memory(none) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_12SparseMatrixIdLi0EiEESA_E4typeEKSE_EERKS5_RKNS_16SparseMatrixBaseISE_EE: argument 0"}
!11 = distinct !{!11, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_12SparseMatrixIdLi0EiEESA_E4typeEKSE_EERKS5_RKNS_16SparseMatrixBaseISE_EE"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_12SparseMatrixIdLi0EiEEEEEE", !14, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !19, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!24, !14, i64 0}
!24 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !14, i64 0}
!25 = !{!26, !16, i64 16}
!26 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !27, i64 0, !16, i64 8, !16, i64 16, !28, i64 24, !28, i64 32, !29, i64 40}
!27 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !24, i64 0}
!28 = !{!"p1 int", !22, i64 0}
!29 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !30, i64 0, !28, i64 8, !16, i64 16, !16, i64 24}
!30 = !{!"p1 double", !22, i64 0}
!31 = !{!32, !6, i64 0}
!32 = !{!"_ZTSN3igl24min_quad_with_fixed_dataIdEE", !6, i64 0, !14, i64 4, !14, i64 5, !33, i64 8, !33, i64 24, !33, i64 40, !33, i64 56, !26, i64 72, !36, i64 144, !37, i64 152, !45, i64 336, !48, i64 520, !14, i64 1104, !6, i64 1108, !66, i64 1112, !26, i64 1496, !26, i64 1568, !26, i64 1640, !26, i64 1712, !26, i64 1784, !26, i64 1856, !26, i64 1928, !26, i64 2000, !26, i64 2072, !26, i64 2144, !26, i64 2216, !26, i64 2288, !68, i64 2360}
!33 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !34, i64 0}
!34 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !35, i64 0}
!35 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !28, i64 0, !16, i64 8}
!36 = !{!"_ZTSN3igl24min_quad_with_fixed_dataIdE10SolverTypeE", !7, i64 0}
!37 = !{!"_ZTSN5Eigen13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEE", !38, i64 0}
!38 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !39, i64 0, !40, i64 4, !14, i64 8, !14, i64 9, !26, i64 16, !41, i64 88, !33, i64 104, !33, i64 120, !44, i64 136, !44, i64 152, !19, i64 168, !19, i64 176}
!39 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !14, i64 0}
!40 = !{!"_ZTSN5Eigen15ComputationInfoE", !7, i64 0}
!41 = !{!"_ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !42, i64 0}
!42 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !43, i64 0}
!43 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !30, i64 0, !16, i64 8}
!44 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !33, i64 0}
!45 = !{!"_ZTSN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEE", !46, i64 0}
!46 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !47, i64 0, !40, i64 4, !14, i64 8, !14, i64 9, !26, i64 16, !41, i64 88, !33, i64 104, !33, i64 120, !44, i64 136, !44, i64 152, !19, i64 168, !19, i64 176}
!47 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !14, i64 0}
!48 = !{!"_ZTSN5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEE", !49, i64 0, !40, i64 4, !14, i64 8, !14, i64 9, !50, i64 16, !26, i64 48, !53, i64 120, !54, i64 192, !44, i64 256, !44, i64 272, !33, i64 288, !64, i64 304, !14, i64 488, !65, i64 496, !19, i64 544, !16, i64 552, !16, i64 560, !16, i64 568, !16, i64 576}
!49 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEEEE", !14, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !16, i64 8, !7, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!52 = !{!"p1 omnipotent char", !22, i64 0}
!53 = !{!"_ZTSN5Eigen8internal22MappedSuperNodalMatrixIdiEE", !16, i64 0, !16, i64 8, !16, i64 16, !30, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64}
!54 = !{!"_ZTSN5Eigen18MappedSparseMatrixIdLi0EiEE", !55, i64 0}
!55 = !{!"_ZTSN5Eigen3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEE", !56, i64 0}
!56 = !{!"_ZTSN5Eigen13SparseMapBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEELi1EEE", !57, i64 0}
!57 = !{!"_ZTSN5Eigen13SparseMapBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !58, i64 0, !16, i64 8, !16, i64 16, !60, i64 24, !28, i64 32, !28, i64 40, !30, i64 48, !28, i64 56}
!58 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !59, i64 0}
!59 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !14, i64 0}
!60 = !{!"_ZTSN5Eigen5ArrayIiLi2ELi1ELi0ELi2ELi1EEE", !61, i64 0}
!61 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_5ArrayIiLi2ELi1ELi0ELi2ELi1EEEEE", !62, i64 0}
!62 = !{!"_ZTSN5Eigen12DenseStorageIiLi2ELi2ELi1ELi0EEE", !63, i64 0}
!63 = !{!"_ZTSN5Eigen8internal11plain_arrayIiLi2ELi0ELi0EEE", !7, i64 0}
!64 = !{!"_ZTSN5Eigen8internal13LU_GlobalLU_tINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEE", !33, i64 0, !33, i64 16, !41, i64 32, !33, i64 48, !33, i64 64, !33, i64 80, !16, i64 96, !16, i64 104, !41, i64 112, !33, i64 128, !33, i64 144, !16, i64 160, !16, i64 168, !16, i64 176}
!65 = !{!"_ZTSN5Eigen8internal10perfvaluesE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
end_hunk_12
