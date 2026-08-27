Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scaf?download=true
inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Lin1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a

.preheader39.loopexit.i:                          ; preds = %.lr.ph50.i
  %i.ai = mul nsw i64 %.03148.i, %i.f
  %i.aj = getelementptr [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = mul nsw i64 %.03148.i, %i.u
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.w, i64 %i.ak
  %i.al = load double, ptr %i.aj, align 8, !tbaa !54
  store double %i.al, ptr %invariant.gep.i, align 8, !tbaa !54
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph50.i
  %i.am = icmp sgt i64 %i.ae, 1
  br i1 %i.am, label %.lr.ph42.i.preheader, label %.preheader.i

.lr.ph42.i.preheader:                             ; preds = %.preheader39.i
  %i.an = mul nsw i64 %.03148.i, %i.u
  %invariant.gep = getelementptr [8 x i8], ptr %i.w, i64 %i.an
  %i.ao = mul nsw i64 %.03148.i, %i.f
  %invariant.gep28 = getelementptr [8 x i8], ptr %i.a, i64 %i.ao
  br label %.lr.ph42.i

.preheader.i:                                     ; preds = %.lr.ph42.i, %.preheader39.i
  %i.ap = icmp slt i64 %i.ag, %i.u
  br i1 %i.ap, label %.lr.ph44.i, label %._crit_edge.i

.lr.ph44.i:                                       ; preds = %.preheader.i
  %i.aq = mul nsw i64 %.03148.i, %i.u
  %invariant.gep45.i = getelementptr [8 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  %i.ar = mul nsw i64 %.03148.i, %i.f
  %i.as = getelementptr [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = add i64 %.03247.i, %i.af
  %i.au = sub i64 %i.u, %i.at                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  %.reass = add i64 %i.ad, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.av = add i64 %i.ag, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = add i64 %i.ag, %index                   ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep45.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.as, i64 %i.aw ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %wide.load = load <2 x double>, ptr %i.ay, align 8, !tbaa !54
  %wide.load38 = load <2 x double>, ptr %i.az, align 8, !tbaa !54
  %i.ba = getelementptr i8, ptr %i.ax, i64 16
  store <2 x double> %wide.load, ptr %i.ax, align 8, !tbaa !54
  store <2 x double> %wide.load38, ptr %i.ba, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph44.i, %middle.block
  %.043.i.ph = phi i64 [ %i.ag, %.lr.ph44.i ], [ %i.av, %middle.block ]
  br label %scalar.ph

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %.lr.ph42.i
  %.02941.i = phi i64 [ %i.bd, %.lr.ph42.i ], [ %.03247.i, %.lr.ph42.i.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.02941.i
  %gep29 = getelementptr [8 x i8], ptr %invariant.gep28, i64 %.02941.i
  %i.bc = load <2 x double>, ptr %gep29, align 1, !tbaa !116
  store <2 x double> %i.bc, ptr %gep, align 16, !tbaa !116
  %i.bd = add nsw i64 %.02941.i, 2                ; 2 uses
  %i.be = icmp slt i64 %i.bd, %i.ag
  br i1 %i.be, label %.lr.ph42.i, label %.preheader.i, !llvm.loop !827

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.bf = add nsw i64 %.03247.i, %i.x
  %i.bg = srem i64 %i.bf, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.bg)
  %i.bh = add nuw nsw i64 %.03148.i, 1            ; 2 uses
  %exitcond53.not.i = icmp eq i64 %i.bh, %i.v
  br i1 %exitcond53.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Lin1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %.lr.ph50.i, !llvm.loop !828

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.043.i = phi i64 [ %i.bk, %scalar.ph ], [ %.043.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep46.i = getelementptr [8 x i8], ptr %invariant.gep45.i, i64 %.043.i
  %i.bi = getelementptr [8 x i8], ptr %i.as, i64 %.043.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !54
  store double %i.bj, ptr %gep46.i, align 8, !tbaa !54
  %i.bk = add nsw i64 %.043.i, 1                  ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.u
  br i1 %i.bl, label %scalar.ph, label %._crit_edge.i, !llvm.loop !829

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Lin1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @free(ptr noundef %i.f) #32
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #33 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !124
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !830, !nonnull !95, !align !158
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !830, !nonnull !95, !align !158 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %.not8.i.i.i.i.i = icmp eq i64 %i.l, %i.j
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.d
  %.pre24.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = phi i64 [ %.pre24.i.i.i.i, %.noexc5 ], [ %i.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !59
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !108, !noalias !833
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9, !noalias !833 ; 9 uses
  %i.s = icmp sgt i64 %i.r, 1
  %i.t = add i64 %i.r, -1                         ; 2 uses
  %i.u = add i64 %i.r, -2
  %xtraiter40 = and i64 %i.t, 3                   ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  %unroll_iter45 = and i64 %i.t, -4
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i ] ; 3 uses
  %i.w = mul nsw i64 %.010.i.i.i.i.i, %i.r
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.w ; 17 uses
  %2 = ptrtoint ptr %i.x to i64                   ; 2 uses
  %3 = and i64 %2, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = lshr exact i64 %2, 3
  %i.z = and i64 %i.y, 1
  %i.aa = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.r)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.r, %bb.f ] ; 10 uses
  %i.ab = sub nsw i64 %i.r, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ac = sdiv i64 %i.ab, 4
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = sdiv i64 %i.ab, 2
  %i.af = shl nsw i64 %i.ae, 1                    ; 2 uses
  %i.ag = add nsw i64 %i.ad, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ah = add nsw i64 %i.af, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ab, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr [8 x i8], ptr %i.x, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !116 ; 3 uses
  %i.ak = icmp sgt i64 %i.ab, 3
  br i1 %i.ak, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !116 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.ab, 7
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %bb.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i) #40, !srcloc !836 ; 2 uses
  %i.ap = icmp sgt i64 %i.af, %i.ad
  br i1 %i.ap, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = load <2 x double>, ptr %i.aq, align 1, !tbaa !116
  %i.as = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ar) #40, !srcloc !836 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.x, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <2 x double>, ptr %i.au, align 1, !tbaa !116
  %i.aw = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.av) #40, !srcloc !836 ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ax = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i, %i.ag
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !837

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ag
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !116
  %i.ba = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao, <2 x double> %i.az) #40, !srcloc !836
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.275.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %bb.h ], [ %i.ba, %bb.j ], [ %i.ao, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bb = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = select i1 %i.bb, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.k
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.be = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.be, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ce, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.bc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bj, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.bh = fcmp olt double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bg
  %i.bi = select i1 %i.bh, double %i.bg, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.bj = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !838

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.k
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bc, %bb.k ], [ %i.cd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.bk = icmp slt i64 %i.ah, %i.r
  br i1 %i.bk, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ce, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cd, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !54 ; 2 uses
  %i.bn = fcmp olt double %.07284.i.i.i.i.i.i.i.i.i.i.i.i, %i.bm
  %i.bo = select i1 %i.bn, double %i.bm, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !54 ; 2 uses
  %i.bs = fcmp olt double %i.bo, %i.br
  %i.bt = select i1 %i.bs, double %i.br, double %i.bo ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !54 ; 2 uses
  %i.bx = fcmp olt double %i.bt, %i.bw
  %i.by = select i1 %i.bx, double %i.bw, double %i.bt ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !54 ; 2 uses
  %i.cc = fcmp olt double %i.by, %i.cb
  %i.cd = select i1 %i.cc, double %i.cb, double %i.by ; 3 uses
  %i.ce = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !839

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ci, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !54 ; 2 uses
  %i.ch = fcmp olt double %.189.i.i.i.i.i.i.i.i.i.i.i.i, %i.cg
  %i.ci = select i1 %i.ch, double %i.cg, double %.189.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cj = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.r
  br i1 %i.ck, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, !llvm.loop !840

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = load double, ptr %i.x, align 8, !tbaa !54 ; 3 uses
  br i1 %i.s, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.l
  br i1 %i.v, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  %.094.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.de, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %niter46 = phi i64 [ %niter46.next.3, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !54 ; 2 uses
  %i.co = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.i.i, %i.cn
  %i.cp = select i1 %i.co, double %i.cn, double %.293.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !54 ; 2 uses
  %i.ct = fcmp olt double %i.cp, %i.cs
  %i.cu = select i1 %i.ct, double %i.cs, double %i.cp ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !54 ; 2 uses
  %i.cy = fcmp olt double %i.cu, %i.cx
  %i.cz = select i1 %i.cy, double %i.cx, double %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !54 ; 2 uses
  %i.dd = fcmp olt double %i.cz, %i.dc
  %i.de = select i1 %i.dd, double %i.dc, double %i.cz ; 3 uses
  %i.df = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter46.next.3 = add nuw i64 %niter46, 4       ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !841

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod42.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.cl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.de, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dk, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dj, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !54 ; 2 uses
  %i.di = fcmp olt double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dh
  %i.dj = select i1 %i.di, double %i.dh, double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.dk = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !842

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.l, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.3.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.dj, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %i.cl, %bb.l ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.de, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010.i.i.i.i.i
  store double %.3.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dl, align 8, !tbaa !54
  %i.dm = add nuw nsw i64 %.010.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dm, %i.m
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.f, !llvm.loop !843

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_maxCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_maxCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %bb.e
  ret void

bb.m:                                             ; preds = %bb.d, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.c
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %0, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.do) #32
  resume { ptr, i32 } %i.dn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !844, !nonnull !95, !align !158
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.m

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !844, !nonnull !95, !align !158 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58
  %.not8.i.i.i.i.i = icmp eq i64 %i.l, %i.j
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.j, i64 noundef 1)
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.d
  %.pre24.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = phi i64 [ %.pre24.i.i.i.i, %.noexc5 ], [ %i.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !59
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIddEELi0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !108, !noalias !847
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9, !noalias !847 ; 9 uses
  %i.s = icmp sgt i64 %i.r, 1
  %i.t = add i64 %i.r, -1                         ; 2 uses
  %i.u = add i64 %i.r, -2
  %xtraiter40 = and i64 %i.t, 3                   ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  %unroll_iter45 = and i64 %i.t, -4
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.dm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i ] ; 3 uses
  %i.w = mul nsw i64 %.010.i.i.i.i.i, %i.r
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.w ; 17 uses
  %2 = ptrtoint ptr %i.x to i64                   ; 2 uses
  %3 = and i64 %2, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = lshr exact i64 %2, 3
  %i.z = and i64 %i.y, 1
  %i.aa = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.r)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %i.r, %bb.f ] ; 10 uses
  %i.ab = sub nsw i64 %i.r, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ac = sdiv i64 %i.ab, 4
  %i.ad = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ae = sdiv i64 %i.ab, 2
  %i.af = shl nsw i64 %i.ae, 1                    ; 2 uses
  %i.ag = add nsw i64 %i.ad, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ah = add nsw i64 %i.af, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ab, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr [8 x i8], ptr %i.x, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !116 ; 3 uses
  %i.ak = icmp sgt i64 %i.ab, 3
  br i1 %i.ak, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !116 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.ab, 7
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.am, %bb.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %bb.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ao = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i) #40, !srcloc !850 ; 2 uses
  %i.ap = icmp sgt i64 %i.af, %i.ad
  br i1 %i.ap, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = load <2 x double>, ptr %i.aq, align 1, !tbaa !116
  %i.as = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.ar) #40, !srcloc !850 ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.x, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <2 x double>, ptr %i.au, align 1, !tbaa !116
  %i.aw = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.av) #40, !srcloc !850 ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ax = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i, %i.ag
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !851

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ag
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !116
  %i.ba = tail call noundef <2 x double> asm "minpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao, <2 x double> %i.az) #40, !srcloc !850
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.275.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %bb.h ], [ %i.ba, %bb.j ], [ %i.ao, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i, i64 0 ; 2 uses
  %i.bb = fcmp olt double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = select i1 %i.bb, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.k
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.be = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.be, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ce, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.bc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bj, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.bh = fcmp olt double %i.bg, %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bi = select i1 %i.bh, double %i.bg, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.bj = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !852

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.k
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bc, %bb.k ], [ %i.cd, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.bk = icmp slt i64 %i.ah, %i.r
  br i1 %i.bk, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ce, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cd, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !54 ; 2 uses
  %i.bn = fcmp olt double %i.bm, %.07284.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = select i1 %i.bn, double %i.bm, double %.07284.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !54 ; 2 uses
  %i.bs = fcmp olt double %i.br, %i.bo
  %i.bt = select i1 %i.bs, double %i.br, double %i.bo ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !54 ; 2 uses
  %i.bx = fcmp olt double %i.bw, %i.bt
  %i.by = select i1 %i.bx, double %i.bw, double %i.bt ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !54 ; 2 uses
  %i.cc = fcmp olt double %i.cb, %i.by
  %i.cd = select i1 %i.cc, double %i.cb, double %i.by ; 3 uses
  %i.ce = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !853

.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ci, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !54 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %.189.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = select i1 %i.ch, double %i.cg, double %.189.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cj = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.r
  br i1 %i.ck, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, !llvm.loop !854

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = load double, ptr %i.x, align 8, !tbaa !54 ; 3 uses
  br i1 %i.s, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.l
  br i1 %i.v, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  %.094.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.de, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %niter46 = phi i64 [ %niter46.next.3, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !54 ; 2 uses
  %i.co = fcmp olt double %i.cn, %.293.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = select i1 %i.co, double %i.cn, double %.293.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !54 ; 2 uses
  %i.ct = fcmp olt double %i.cs, %i.cp
  %i.cu = select i1 %i.ct, double %i.cs, double %i.cp ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !54 ; 2 uses
  %i.cy = fcmp olt double %i.cx, %i.cu
  %i.cz = select i1 %i.cy, double %i.cx, double %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !54 ; 2 uses
  %i.dd = fcmp olt double %i.dc, %i.cz
  %i.de = select i1 %i.dd, double %i.dc, double %i.cz ; 3 uses
  %i.df = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter46.next.3 = add nuw i64 %niter46, 4       ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !855

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod42.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.df, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.cl, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.de, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_15member_minCoeffIddEELi0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.dk, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dj, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter41 = phi i64 [ %epil.iter41.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.094.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !54 ; 2 uses
  %i.di = fcmp olt double %i.dh, %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dj = select i1 %i.di, double %i.dh, double %.293.i.i.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
end_hunk_0
