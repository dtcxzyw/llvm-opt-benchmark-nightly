Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/grid_search?download=true
inline.NumInlined: 869
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIfEES2_EEEERKNS_9DenseBaseIT_EE:bb.a
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %broadcast.splat32, <4 x float> %broadcast.splat30)
  %i.cc = select <4 x i1> %i.bz, <4 x float> %broadcast.splat34, <4 x float> %i.cb
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %index
  store <4 x float> %i.cc, ptr %i.cd, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, 0
  br i1 %cmp.n, label %.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.i, %.lr.ph.split.i.i.i.i.i.i ], [ %i.bx, %middle.block ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.cf = icmp eq i64 %.05.i.i.i.i.i.i, %.sroa.0.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8.29.i.i.i.i
  %i.cg = sitofp i64 %.05.i.i.i.i.i.i to float
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %.sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..sroa.0.16.35.i.i.i.i, float %.sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0.18.i.i.i.i)
  %.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.cf, float %.sroa.0.i.i.i.i.4..sroa.0.i.i.i.i.4..sroa.0.i.i.i.i.4..sroa.0.i.i.i.4..sroa.0.i.i.i.4..sroa.0.i.i.4..sroa.0.i.i.4..sroa.0.i.4..sroa.0.i.4..sroa.0.4..sroa.0.4..sroa.0.4.23.i.i.i.i, float %i.ch
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.05.i.i.i.i.i.i
  store float %.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ci, align 4, !tbaa !34
  %i.cj = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cj, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i, !llvm.loop !192

.peel.next.i.i.i.i.i:                             ; preds = %.peel.next.i.preheader.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi16EDv4_fEEvl.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi16EDv4_fEEvl.exit.i.i.i.i.i ], [ 4, %.peel.next.i.preheader.i.i.i.i ] ; 4 uses
  %i.ck = uitofp nneg i64 %.012.i.i.i.i.i to float
  %i.cl = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fadd nnan <4 x float> %i.cm, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %i.co = fmul <4 x float> %i.ai, %i.cn
  %i.cp = fadd <4 x float> %i.ag, %i.co           ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.012.i.i.i.i.i, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi16EDv4_fEEvl.exit.i.i.i.i.i, !prof !94

bb.i:                                             ; preds = %.peel.next.i.i.i.i.i
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %.sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0.16.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi16EDv4_fEEvl.exit.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi16EDv4_fEEvl.exit.i.i.i.i.i: ; preds = %bb.i, %.peel.next.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i.i.i = phi <4 x float> [ %i.cq, %bb.i ], [ %i.cp, %.peel.next.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.012.i.i.i.i.i
  store <4 x float> %.2.i.i.i.i.i.i.i.i.i.i, ptr %i.cr, align 16, !tbaa !65
  %i.cs = add nuw nsw i64 %.012.i.i.i.i.i, 4      ; 2 uses
  %i.ct = icmp slt i64 %i.cs, %i.i
  br i1 %i.ct, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !189

.loopexit:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIfEES4_EEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.1, %middle.block, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  ret void

bb.j:                                             ; preds = %thread-pre-split.i.i.i.i, %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %0, align 8, !tbaa !117
  tail call void @free(ptr noundef %i.cv) #20
  resume { ptr, i32 } %i.cu
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !117
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #23 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !117
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !118
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #23 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !39
  br label %_ZN5Eigen12DenseStorageIfLin1ELi1ELin1ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELi1ELin1ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIfLi1ELin1ELi1ELi1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 40 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.d, i64 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !91
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.n = load i32, ptr %i.m, align 4, !tbaa !99   ; 3 uses
  switch i32 %i.n, label %bb.d [
    i32 -1, label %.thread
    i32 -2, label %.thread117
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %i.n to i64
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %.thread117

.thread117:                                       ; preds = %bb.c, %bb.d
  %.078120 = phi i64 [ %i.o, %bb.d ], [ 6, %bb.c ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !41
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !100
  store i64 %.078120, ptr %i.t, align 8, !tbaa !100
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread117, %bb.d
  %.not116 = phi i1 [ false, %.thread117 ], [ true, %bb.d ], [ true, %bb.c ]
  %.077 = phi i64 [ %i.u, %.thread117 ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.w = load i32, ptr %i.v, align 8, !tbaa !101
  %i.x = and i32 %i.w, 1
  %.not81 = icmp eq i32 %i.x, 0
  %i.y = icmp sgt i64 %i.b, 0
  %or.cond = and i1 %.not81, %i.y
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 353
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.076165 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.dt, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %.0113164 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.speculated, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !41
  store ptr null, ptr %i.aa, align 8, !tbaa !102
  store i8 0, ptr %i.ab, align 8, !tbaa !103
  store i8 0, ptr %i.ac, align 1, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  store ptr %i.ae, ptr %3, align 8, !tbaa !41
  %i.bf = load i64, ptr %i.ag, align 8
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  store ptr %i.af, ptr %i.bg, align 8, !tbaa !41
  store i64 0, ptr %i.ah, align 8, !tbaa !106
  %i.bh = load ptr, ptr %3, align 8, !tbaa !41
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %3, i64 %i.bj
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.preheader
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !41
  %i.bl = load i64, ptr %i.al, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.ai, i64 %i.bl
  store ptr %i.ak, ptr %i.bm, align 8, !tbaa !41
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.ai, i64 %i.bp
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bq, ptr noundef null)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ae, ptr %3, align 8, !tbaa !41
  %i.bs = load i64, ptr %i.ag, align 8
  %i.bt = getelementptr inbounds i8, ptr %3, i64 %i.bs
  store ptr %i.af, ptr %i.bt, align 8, !tbaa !41
  store i64 0, ptr %i.ah, align 8, !tbaa !106
  br label %.body.i

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.am, ptr %3, align 8, !tbaa !41
  %i.bu = load i64, ptr %i.ao, align 8
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  store ptr %i.an, ptr %i.bv, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.z, align 8, !tbaa !41
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.ai, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !41
  store i32 24, ptr %i.as, align 8, !tbaa !110
  store ptr %i.au, ptr %i.at, align 8, !tbaa !89
  store i64 0, ptr %i.av, align 8, !tbaa !91
  store i8 0, ptr %i.au, align 8, !tbaa !65
  %i.bw = load ptr, ptr %3, align 8, !tbaa !41
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %3, i64 %i.by
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bz, ptr noundef nonnull %i.ap)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ap) #20
  store ptr %i.ae, ptr %3, align 8, !tbaa !41
  %i.cc = load i64, ptr %i.ag, align 8
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store ptr %i.af, ptr %i.cd, align 8, !tbaa !41
  store i64 0, ptr %i.ah, align 8, !tbaa !106
  br label %.body.i

common.resume:                                    ; preds = %bb.n, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.h, %bb.g, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %i.ca, %bb.g ], [ %i.br, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.z) #20
  br label %common.resume

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.f
  %i.ce = load ptr, ptr %3, align 8, !tbaa !41
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %3, i64 %i.cg
  %i.ci = load ptr, ptr %0, align 8, !tbaa !41
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %i.ch, ptr noundef nonnull align 8 dereferenceable(264) %i.cl)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.cn = load ptr, ptr %1, align 8, !tbaa !39
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %.076165
  %i.cp = load float, ptr %i.co, align 4, !tbaa !34
  %i.cq = fpext float %i.cp to double
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, double noundef %i.cq)
          to label %_ZNSolsEf.exit unwind label %bb.m ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  store ptr %i.aw, ptr %4, align 8, !tbaa !89, !alias.scope !204
  store i64 0, ptr %i.ax, align 8, !tbaa !91, !alias.scope !204
  store i8 0, ptr %i.aw, align 8, !tbaa !65, !alias.scope !204
  %i.cs = load ptr, ptr %i.ay, align 8, !tbaa !111, !noalias !204 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cs, null
  %i.ct = load ptr, ptr %i.az, align 8, !noalias !204 ; 2 uses
  %i.cu = icmp ugt ptr %i.cs, %i.ct
  %.08.i.i.i = select i1 %i.cu, ptr %i.cs, ptr %i.ct ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSolsEf.exit
  %i.cv = load ptr, ptr %i.ba, align 8, !tbaa !112, !noalias !204 ; 2 uses
  %i.cw = ptrtoint ptr %.08.i.i.i to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.cv, i64 noundef %i.cy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %4, align 8, !tbaa !92, !alias.scope !204 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.aw
  br i1 %i.dc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.dd = load i64, ptr %i.aw, align 8, !tbaa !65, !alias.scope !204
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #25
  br label %.body

bb.l:                                             ; preds = %_ZNSolsEf.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.df = load i64, ptr %i.ax, align 8, !tbaa !91 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.0113164, i64 %i.df) ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !92    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.aw
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.di = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.di)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
