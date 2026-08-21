inline.NumInlined: 7480
inline.NumDeleted: 3474
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd:bb.a
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !50
  %i.ax = mul nsw i64 %i.aw, %.01831.us
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %i.av, i64 %i.ax ; 3 uses
  %i.ay = sub nsw i64 %i.ab, %i.au
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.au
  %i.ba = load double, ptr %i.az, align 8, !tbaa !51
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.bd = sext i32 %i.bc to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.bd ; 2 uses
  %i.be = load double, ptr %gep.us.us.prol, align 8, !tbaa !51
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.w, double %i.be)
  store double %i.bf, ptr %gep.us.us.prol, align 8, !tbaa !51
  %i.bg = add nsw i64 %i.au, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %.sroa.8.025.us.us.unr = phi i64 [ %i.au, %.lr.ph.us.us ], [ %i.bg, %.prol.loopexit.unr-lcssa ]
  %i.bh = add nsw i64 %i.ab, -1
  %i.bi = icmp eq i64 %i.bh, %i.au
  br i1 %i.bi, label %._crit_edge.us.us, label %.lr.ph.us.us.new

._crit_edge28.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.bj = add nuw nsw i64 %.01831.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond40.not, label %._crit_edge33.split, label %.preheader.us, !llvm.loop !269

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge28.split
  %.01831 = phi i64 [ %i.bl, %._crit_edge28.split ], [ 0, %.preheader.lr.ph.split ] ; 3 uses
  %i.bk = mul nsw i64 %i.i, %.01831
  %invariant.gep29 = getelementptr [8 x i8], ptr %i.g, i64 %i.bk
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

._crit_edge33.split:                              ; preds = %._crit_edge28.split, %._crit_edge28.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge28.split:                              ; preds = %._crit_edge
  %i.bl = add nuw nsw i64 %.01831, 1              ; 2 uses
  %exitcond37.not = icmp eq i64 %i.bl, %i.b
  br i1 %exitcond37.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !269

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.preheader, %._crit_edge
  %.01726 = phi i64 [ 0, %.preheader ], [ %i.ca, %._crit_edge ] ; 4 uses
  %i.bm = load double, ptr %3, align 8, !tbaa !51
  %gep30 = getelementptr [8 x i8], ptr %invariant.gep29, i64 %.01726
  %i.bn = load double, ptr %gep30, align 8, !tbaa !51
  %i.bo = fmul double %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.01726
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !45
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.01726
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !45 ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.br
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load ptr, ptr %2, align 8, !tbaa !46
  %i.by = load i64, ptr %i.r, align 8, !tbaa !50
  %i.bz = mul nsw i64 %i.by, %.01831
  %invariant.gep = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.ca = add nuw nsw i64 %.01726, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.e
  br i1 %exitcond.not, label %._crit_edge28.split, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !268

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.8.025 = phi i64 [ %i.br, %.lr.ph ], [ %i.ci, %bb.b ] ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.8.025
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !51
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.8.025
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !45
  %i.cf = sext i32 %i.ce to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cf ; 2 uses
  %i.cg = load double, ptr %gep, align 8, !tbaa !51
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.bo, double %i.cg)
  store double %i.ch, ptr %gep, align 8, !tbaa !51
  %i.ci = add nsw i64 %.sroa.8.025, 1             ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.bv
  br i1 %i.cj, label %bb.b, label %._crit_edge, !llvm.loop !267
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.f) #23
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !50
  store i64 %3, ptr %i.c, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @free(ptr noundef %i.f) #23
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !66
  store i64 %3, ptr %i.c, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal27stable_norm_impl_inner_stepINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEdEEvRKT_RT0_SA_SA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Ref", align 16       ; 8 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %.sroa.026.0.copyload = load ptr, ptr %0, align 8 ; 12 uses
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.833.0.copyload = load i64, ptr %.sroa.833.0..sroa_idx, align 8 ; 5 uses
  %.sroa.936.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.936.0.copyload = load ptr, ptr %.sroa.936.0..sroa_idx, align 8 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.026.0.copyload to i64 ; 3 uses
  %i.c = and i64 %i.b, 7
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %i.b, 3
  %i.e = and i64 %i.d, 1
  %i.f = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %.sroa.833.0.copyload)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit

_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.f, %bb.b ], [ %.sroa.833.0.copyload, %bb.a ] ; 9 uses
  %i.g = icmp sgt i64 %.0.i.i.i.i, 0
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

bb.c:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.936.0.copyload, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !50   ; 8 uses
  %i.j = load double, ptr %.sroa.026.0.copyload, align 8, !tbaa !51
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j) ; 3 uses
  %.not = icmp eq i64 %.0.i.i.i.i, 1              ; 2 uses
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.l = add nsw i64 %.0.i.i.i.i, -1              ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i64 %.0.i.i.i.i, 2
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.k, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.z, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i ]
  %i.n = mul nsw i64 %.01724.i.i.i.i.i, %i.i
  %i.o = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !51
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.r = fcmp olt double %.02223.i.i.i.i.i, %i.q
  %i.s = select i1 %i.r, double %i.q, double %.02223.i.i.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.u = mul nsw i64 %i.t, %i.i
  %i.v = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !51
  %i.x = tail call noundef double @llvm.fabs.f64(double %i.w) ; 2 uses
  %i.y = fcmp olt double %i.s, %i.x
  %i.z = select i1 %i.y, double %i.x, double %i.s ; 3 uses
  %i.aa = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !270

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i64 %i.l to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  %i.ab = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.i
  %i.ac = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !51
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.af = fcmp olt double %.02223.i.i.i.i.i.epil.init, %i.ae
  %i.ag = select i1 %i.af, double %i.ae, double %.02223.i.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa, %bb.c
  %.022.lcssa.i.i.i.i.i = phi double [ %i.k, %bb.c ], [ %i.z, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 10 uses
  %i.ah = load double, ptr %2, align 8, !tbaa !51 ; 3 uses
  %i.ai = fcmp ogt double %.022.lcssa.i.i.i.i.i, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i
  %i.aj = load double, ptr %1, align 8, !tbaa !51
  %i.ak = fdiv double %i.ah, %.022.lcssa.i.i.i.i.i ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = fmul double %i.al, %i.aj
  store double %i.am, ptr %1, align 8, !tbaa !51
  %i.an = fdiv double 1.000000e+00, %.022.lcssa.i.i.i.i.i ; 2 uses
  %i.ao = fcmp ogt double %i.an, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double f0x7FEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !51
  store double f0x0004000000000000, ptr %2, align 8, !tbaa !51
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ap = fcmp ogt double %.022.lcssa.i.i.i.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr %3, align 8, !tbaa !51
  store double %.022.lcssa.i.i.i.i.i, ptr %2, align 8, !tbaa !51
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  store double %.022.lcssa.i.i.i.i.i, ptr %2, align 8, !tbaa !51
  store double %i.an, ptr %3, align 8, !tbaa !51
  %.pr.i = load double, ptr %2, align 8, !tbaa !51
  br label %bb.k

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEE8maxCoeffEv.exit.i
  %i.aq = fcmp uno double %.022.lcssa.i.i.i.i.i, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %.022.lcssa.i.i.i.i.i, ptr %2, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %i.ar = phi double [ f0x0004000000000000, %bb.e ], [ %.pr.i, %bb.h ], [ %.022.lcssa.i.i.i.i.i, %bb.g ], [ %i.ah, %bb.i ], [ %.022.lcssa.i.i.i.i.i, %bb.j ]
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.l, label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

bb.l:                                             ; preds = %bb.k
  %i.at = load double, ptr %3, align 8, !tbaa !51, !noalias !271 ; 6 uses
  %i.au = load double, ptr %.sroa.026.0.copyload, align 8, !tbaa !51
  %i.av = fmul double %i.at, %i.au                ; 2 uses
  %i.aw = fmul double %i.av, %i.av                ; 3 uses
  br i1 %.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i29.i.preheader

.lr.ph.i.i.i.i29.i.preheader:                     ; preds = %bb.l
  %i.ax = add nsw i64 %.0.i.i.i.i, -1             ; 2 uses
  %i.ay = add nsw i64 %.0.i.i.i.i, -2
  %xtraiter52 = and i64 %i.ax, 3                  ; 3 uses
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %.lr.ph.i.i.i.i29.i.epil.preheader, label %.lr.ph.i.i.i.i29.i.preheader.new

.lr.ph.i.i.i.i29.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i29.i.preheader
  %unroll_iter56 = and i64 %i.ax, -4
  br label %.lr.ph.i.i.i.i29.i

.lr.ph.i.i.i.i29.i:                               ; preds = %.lr.ph.i.i.i.i29.i, %.lr.ph.i.i.i.i29.i.preheader.new
  %.01724.i.i.i.i30.i = phi i64 [ 1, %.lr.ph.i.i.i.i29.i.preheader.new ], [ %i.cb, %.lr.ph.i.i.i.i29.i ] ; 5 uses
  %.02223.i.i.i.i31.i = phi double [ %i.aw, %.lr.ph.i.i.i.i29.i.preheader.new ], [ %i.ca, %.lr.ph.i.i.i.i29.i ]
  %niter57 = phi i64 [ 0, %.lr.ph.i.i.i.i29.i.preheader.new ], [ %niter57.next.3, %.lr.ph.i.i.i.i29.i ]
  %i.ba = mul nsw i64 %.01724.i.i.i.i30.i, %i.i
  %i.bb = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !51
  %i.bd = fmul double %i.at, %i.bc                ; 2 uses
  %i.be = fmul double %i.bd, %i.bd
  %i.bf = fadd double %.02223.i.i.i.i31.i, %i.be
  %i.bg = add nuw nsw i64 %.01724.i.i.i.i30.i, 1
  %i.bh = mul nsw i64 %i.bg, %i.i
  %i.bi = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !51
  %i.bk = fmul double %i.at, %i.bj                ; 2 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %i.bf, %i.bl
  %i.bn = add nuw nsw i64 %.01724.i.i.i.i30.i, 2
  %i.bo = mul nsw i64 %i.bn, %i.i
  %i.bp = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !51
  %i.br = fmul double %i.at, %i.bq                ; 2 uses
  %i.bs = fmul double %i.br, %i.br
  %i.bt = fadd double %i.bm, %i.bs
  %i.bu = add nuw nsw i64 %.01724.i.i.i.i30.i, 3
  %i.bv = mul nsw i64 %i.bu, %i.i
  %i.bw = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !51
  %i.by = fmul double %i.at, %i.bx                ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = fadd double %i.bt, %i.bz                ; 3 uses
  %i.cb = add nuw nsw i64 %.01724.i.i.i.i30.i, 4  ; 2 uses
  %niter57.next.3 = add nuw i64 %niter57, 4       ; 2 uses
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i29.i, !llvm.loop !274

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i29.i
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i29.i.epil.preheader

.lr.ph.i.i.i.i29.i.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i29.i.preheader
  %.01724.i.i.i.i30.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i29.i.preheader ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i31.i.epil.init = phi double [ %i.aw, %.lr.ph.i.i.i.i29.i.preheader ], [ %i.ca, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter52, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %.lr.ph.i.i.i.i29.i.epil

.lr.ph.i.i.i.i29.i.epil:                          ; preds = %.lr.ph.i.i.i.i29.i.epil, %.lr.ph.i.i.i.i29.i.epil.preheader
  %.01724.i.i.i.i30.i.epil = phi i64 [ %i.ci, %.lr.ph.i.i.i.i29.i.epil ], [ %.01724.i.i.i.i30.i.epil.init, %.lr.ph.i.i.i.i29.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i31.i.epil = phi double [ %i.ch, %.lr.ph.i.i.i.i29.i.epil ], [ %.02223.i.i.i.i31.i.epil.init, %.lr.ph.i.i.i.i29.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i29.i.epil ], [ 0, %.lr.ph.i.i.i.i29.i.epil.preheader ]
  %i.cc = mul nsw i64 %.01724.i.i.i.i30.i.epil, %i.i
  %i.cd = getelementptr [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !51
  %i.cf = fmul double %i.at, %i.ce                ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = fadd double %.02223.i.i.i.i31.i.epil, %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.01724.i.i.i.i30.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i29.i.epil, !llvm.loop !275

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i29.i.epil, %bb.l
  %.0.i.i.i = phi double [ %i.aw, %bb.l ], [ %i.ca, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i.i.i.i29.i.epil ]
  %i.cj = load double, ptr %1, align 8, !tbaa !51
  %i.ck = fadd double %.0.i.i.i, %i.cj
  store double %i.ck, ptr %1, align 8, !tbaa !51
  br label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS6_IdLi1ELin1ELi1ELi1ELin1EEEEEEEE11squaredNormEv.exit.i, %bb.k, %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit
  %i.cl = icmp slt i64 %.0.i.i.i.i, %.sroa.833.0.copyload
  br i1 %i.cl, label %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.lr.ph, label %._crit_edge

_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.lr.ph: ; preds = %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.936.0.copyload, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32800
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = shl i64 %.0.i.i.i.i, 3
  %i.cr = add i64 %i.cq, %i.b
  br label %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.lr.ph, %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit
  %indvar = phi i64 [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.lr.ph ], [ %indvar.next, %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit ] ; 2 uses
  %.040 = phi i64 [ %.0.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.lr.ph ], [ %i.ef, %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit ] ; 3 uses
  %i.cs = shl i64 %indvar, 15
  %i.ct = add i64 %i.cr, %i.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cu = sub nsw i64 %.sroa.833.0.copyload, %.040
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.cu, i64 4096) ; 8 uses
  %i.cv = load i64, ptr %i.cm, align 8, !tbaa !50, !noalias !276 ; 7 uses
  %i.cw = mul nsw i64 %i.cv, %.040
  %i.cx = getelementptr inbounds [8 x i8], ptr %.sroa.026.0.copyload, i64 %i.cw ; 6 uses
  store i64 %.sroa.speculated, ptr %i.co, align 16, !tbaa !279
  %min.iters.check = icmp ult i64 %.sroa.speculated, 6
  %ident.check.not = icmp ne i64 %i.cv, 1
  %or.cond.not48 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %i.cy = sub i64 %i.a, %i.ct
  %diff.check = icmp ugt i64 %i.cy, -32
  %or.cond47 = select i1 %or.cond.not48, i1 true, i1 %diff.check
  br i1 %or.cond47, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i
  %n.vec = and i64 %.sroa.speculated, -4          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !51
  %wide.load46 = load <2 x double>, ptr %i.db, align 8, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x double> %wide.load, ptr %i.cz, align 16, !tbaa !51
  store <2 x double> %wide.load46, ptr %i.dc, align 16, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter58 = and i64 %.sroa.speculated, 3      ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.prol
  %i.df = mul nsw i64 %.05.i.i.i.i.i.i.prol, %i.cv
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !51
  store double %i.dh, ptr %i.de, align 8, !tbaa !51
  %i.di = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter58
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !283

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.dj = sub i64 %.05.i.i.i.i.i.i.ph, %.sroa.speculated
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i
  %i.dm = mul nsw i64 %.05.i.i.i.i.i.i, %i.cv
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !51
  store double %i.do, ptr %i.dl, align 8, !tbaa !51
  %i.dp = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dp
  %i.dr = mul nsw i64 %i.dp, %i.cv
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !51
  store double %i.dt, ptr %i.dq, align 8, !tbaa !51
  %i.du = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.du
  %i.dw = mul nsw i64 %i.du, %i.cv
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !51
  store double %i.dy, ptr %i.dv, align 8, !tbaa !51
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dz
  %i.eb = mul nsw i64 %i.dz, %i.cv
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !51
  store double %i.ed, ptr %i.ea, align 8, !tbaa !51
  %i.ee = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ee, %.sroa.speculated
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  store ptr %i.cn, ptr %4, align 16, !tbaa !285
  store i64 %.sroa.speculated, ptr %i.cp, align 8, !tbaa !77
  call void @_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_(ptr noundef nonnull align 16 dereferenceable(32816) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ef = add nsw i64 %.040, 4096                 ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %.sroa.833.0.copyload
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eg, label %_ZN5Eigen8internal17resize_if_allowedINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEEEENS_5BlockIKNS6_INS3_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i, label %._crit_edge, !llvm.loop !287

._crit_edge:                                      ; preds = %_ZN5Eigen3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEC2INS_5BlockIKNS8_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEERKNS_9DenseBaseIT_EEPNS_8internal9enable_ifIXcvbsr6Traits5matchISE_EE15ScalarTypeMatchESE_E4typeE.exit.loopexit, %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_(ptr noundef nonnull align 16 dereferenceable(32816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !285   ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77   ; 16 uses
  %i.d = sdiv i64 %i.c, 4
  %i.e = shl nsw i64 %i.d, 2                      ; 6 uses
  %i.f = sdiv i64 %i.c, 2
  %i.g = shl nsw i64 %i.f, 1                      ; 12 uses
  %.off.i.i.i.i = add i64 %i.c, 1
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 3   ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load <2 x double>, ptr %i.a, align 1, !tbaa !261
  %i.i = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h) ; 3 uses
  %i.j = icmp sgt i64 %i.c, 3
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !261
  %i.m = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %i.n = icmp samesign ugt i64 %i.c, 7
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.m, %bb.c ], [ %i.y, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.i, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.o = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i) #29, !srcloc !288 ; 2 uses
  %i.p = icmp sgt i64 %i.g, %i.e
  br i1 %i.p, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.c ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.t, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.y, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.05480.i.i.i.i
  %i.r = load <2 x double>, ptr %i.q, align 1, !tbaa !261
  %i.s = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.r)
  %i.t = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i, <2 x double> %i.s) #29, !srcloc !288 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.054.in79.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load <2 x double>, ptr %i.v, align 1, !tbaa !261
  %i.x = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.w)
  %i.y = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i, <2 x double> %i.x) #29, !srcloc !288 ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.z = icmp slt i64 %.054.i.i.i.i, %i.e
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !289

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !261
  %i.ac = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ab)
  %i.ad = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o, <2 x double> %i.ac) #29, !srcloc !288
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.274.i.i.i.i = phi <2 x double> [ %i.i, %bb.b ], [ %i.ad, %bb.d ], [ %i.o, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i, i64 1 ; 2 uses
  %i.ae = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.af = select i1 %i.ae, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 4 uses
  %i.ag = icmp slt i64 %i.g, %i.c
  br i1 %i.ag, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.e
  %.neg = or disjoint i64 %i.g, 1
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.g
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !51
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp olt double %i.af, %i.aj
  %i.al = select i1 %i.ak, double %i.aj, double %i.af ; 2 uses
  %i.am = or disjoint i64 %i.g, 1
  br label %.lr.ph85.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa77.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.al, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph85.i.i.i.i.preheader ], [ %i.am, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.af, %.lr.ph85.i.i.i.i.preheader ], [ %i.al, %.lr.ph85.i.i.i.i.prol ]
  %i.an = icmp eq i64 %i.c, %.neg
  br i1 %i.an, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.az, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i = phi double [ %i.ay, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05283.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !51
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = fcmp olt double %.182.i.i.i.i, %i.aq
  %i.as = select i1 %i.ar, double %i.aq, double %.182.i.i.i.i ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.a, i64 %.05283.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !51
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp olt double %i.as, %i.aw
  %i.ay = select i1 %i.ax, double %i.aw, double %i.as ; 2 uses
  %i.az = add nsw i64 %.05283.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.az, %i.c
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !290

bb.f:                                             ; preds = %bb.a
  %i.ba = load double, ptr %i.a, align 8, !tbaa !51
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.e, %bb.f
  %.3.i.i.i.i = phi double [ %i.af, %bb.e ], [ %i.bb, %bb.f ], [ %.lcssa77.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.ay, %.lr.ph85.i.i.i.i ] ; 10 uses
  %i.bc = load double, ptr %2, align 8, !tbaa !51 ; 3 uses
  %i.bd = fcmp ogt double %.3.i.i.i.i, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit
  %i.be = load double, ptr %1, align 8, !tbaa !51
  %i.bf = fdiv double %i.bc, %.3.i.i.i.i          ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fmul double %i.bg, %i.be
  store double %i.bh, ptr %1, align 8, !tbaa !51
  %i.bi = fdiv double 1.000000e+00, %.3.i.i.i.i   ; 2 uses
  %i.bj = fcmp ogt double %i.bi, f0x7FEFFFFFFFFFFFFF
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double f0x7FEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !51
  store double f0x0004000000000000, ptr %2, align 8, !tbaa !51
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bk = fcmp ogt double %.3.i.i.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double 1.000000e+00, ptr %3, align 8, !tbaa !51
  store double %.3.i.i.i.i, ptr %2, align 8, !tbaa !51
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  store double %.3.i.i.i.i, ptr %2, align 8, !tbaa !51
  store double %i.bi, ptr %3, align 8, !tbaa !51
  %.pr = load double, ptr %2, align 8, !tbaa !51
  br label %bb.n
end_hunk_0
