Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/massmatrix_intrinsic?download=true
inline.NumInlined: 3675
inline.NumDeleted: 1521
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 229
loop-unroll.NumUnrolled: 232
begin_hunk_0_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %.off.i.i.i.i = or disjoint i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x i32>, ptr %i.a, align 16, !tbaa !22 ; 3 uses
  %i.h = icmp sgt i64 %i.c, 1
  br i1 %i.h, label %bb.c, label %.loopexit76.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load <4 x i32>, ptr %i.i, align 16, !tbaa !22 ; 2 uses
  %i.k = icmp samesign ugt i64 %i.c, 3
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.j, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.g, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.m = icmp sgt i64 %i.d, %i.f
  br i1 %i.m, label %bb.d, label %.loopexit76.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.q, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ]
  %i.n = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.p = load <4 x i32>, ptr %i.o, align 16, !tbaa !22
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !22
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.t) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.v = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !111

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !22
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %i.x)
  br label %.loopexit76.i.i.i.i

.loopexit76.i.i.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.g, %bb.b ], [ %i.y, %bb.d ], [ %i.l, %._crit_edge.i.i.i.i ]
  %i.z = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i)
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.ab = icmp sgt i64 %i.c, 0
  br i1 %i.ab, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.d, 9
  br i1 %min.iters.check, label %.lr.ph89.i.i.i.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.i.i.i.i.preheader
  %i.ac = add nsw i64 %i.d, -4
  %n.vec = and i64 %i.ac, -8                      ; 2 uses
  %i.ad = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !24
  %wide.load15 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !24
  %i.ah = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi14, <4 x i32> %wide.load15) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ah, <4 x i32> %i.ai)
  %i.ak = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph89.i.i.i.i.preheader16

.lr.ph89.i.i.i.i.preheader16:                     ; preds = %middle.block, %.lr.ph89.i.i.i.i.preheader
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.286.i.i.i.i.ph = phi i32 [ %i.aa, %.lr.ph89.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader16, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.ao, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader16 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.an, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader16 ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !24
  %i.an = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.am) ; 2 uses
  %i.ao = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ao, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !113

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.loopexit76.i.i.i.i, %bb.e
  %.3.i.i.i.i = phi i32 [ %i.z, %.loopexit76.i.i.i.i ], [ %i.aa, %bb.e ], [ %i.an, %.lr.ph89.i.i.i.i ]
  %i.ap = add nsw i32 %.3.i.i.i.i, 1
  tail call void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %14 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %16 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %17 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %19 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %20 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %21 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %22 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %24 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %25 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %26 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %28 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %29 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %30 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %32 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %34 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %35 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %36 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %37 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %38 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %39 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %40 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %41 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %42 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %43 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %44 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %45 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %46 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %47 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %48 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %49 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %50 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %51 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %52 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %53 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %54 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %55 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %56 = alloca %"struct.Eigen::internal::evaluator.254", align 8 ; 5 uses
  %57 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %58 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %59 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %60 = alloca %"class.Eigen::Matrix.29", align 8 ; 11 uses
  %61 = alloca %"class.Eigen::Matrix.38", align 8 ; 37 uses
  %62 = alloca %"class.Eigen::Matrix.38", align 8 ; 27 uses
  %63 = alloca %"class.Eigen::Matrix.29", align 8 ; 26 uses
  %64 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %65 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %66 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %67 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %68 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %69 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %70 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %71 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %72 = alloca %"class.Eigen::CwiseBinaryOp.143", align 8 ; 6 uses
  %73 = alloca %"class.Eigen::Array", align 8     ; 9 uses
  %74 = alloca %"class.Eigen::CwiseBinaryOp.170", align 8 ; 6 uses
  %75 = alloca %"class.Eigen::Matrix.68", align 8 ; 14 uses
  %76 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %77 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %78 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %79 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %80 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 25 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %60)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %bb.q
    i32 2, label %bb.dj
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.d:                                             ; preds = %bb.b, %bb.b
  %sext2796 = mul i64 %i.b, 12884901888
  %i.e = ashr exact i64 %sext2796, 32             ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.e, i64 noundef 1)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.e, i64 noundef 1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.e, i64 noundef 1)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.f = load ptr, ptr %1, align 8, !tbaa !20, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %sext2797 = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext2797, 32             ; 5 uses
  %i.h = load ptr, ptr %61, align 8, !tbaa !28, !noalias !405 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !405 ; 2 uses
  store ptr %i.h, ptr %64, align 8, !tbaa !32, !alias.scope !405
  %i.k = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.g, ptr %i.k, align 8, !tbaa !33, !alias.scope !405
  %i.l = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %i.l, align 8, !tbaa !33, !alias.scope !405
  %i.m = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %61, ptr %i.m, align 8, !tbaa !35, !alias.scope !405
  %i.n = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 %i.j, ptr %i.o, align 8, !tbaa !38, !alias.scope !405
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #14
  store ptr %i.f, ptr %56, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.q = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.q, ptr %i.p, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #14
  store ptr %i.h, ptr %57, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 %i.j, ptr %i.r, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #14
  store ptr %57, ptr %58, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %56, ptr %i.s, align 8, !tbaa !406
  %i.t = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %59, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %58, i64 24
  store ptr %64, ptr %i.u, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #14
  %i.v = load ptr, ptr %1, align 8, !tbaa !20, !noalias !407
  %i.w = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !407 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.y = load ptr, ptr %61, align 8, !tbaa !28, !noalias !408
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.g ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !408 ; 2 uses
  store ptr %i.z, ptr %65, align 8, !tbaa !32, !alias.scope !408
  %i.ab = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %i.g, ptr %i.ab, align 8, !tbaa !33, !alias.scope !408
  %i.ac = getelementptr inbounds nuw i8, ptr %65, i64 16
  store i64 1, ptr %i.ac, align 8, !tbaa !33, !alias.scope !408
  %i.ad = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr %61, ptr %i.ad, align 8, !tbaa !35, !alias.scope !408
  %i.ae = getelementptr inbounds nuw i8, ptr %65, i64 32
  store i64 %i.g, ptr %i.ae, align 8, !tbaa !33, !alias.scope !408
  %i.af = getelementptr inbounds nuw i8, ptr %65, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !33, !alias.scope !408
  %i.ag = getelementptr inbounds nuw i8, ptr %65, i64 48
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !38, !alias.scope !408
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #14
  store ptr %i.x, ptr %52, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 %i.w, ptr %i.ah, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #14
  store ptr %i.z, ptr %53, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 %i.aa, ptr %i.ai, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #14
  store ptr %53, ptr %54, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %52, ptr %i.aj, align 8, !tbaa !406
  %i.ak = getelementptr inbounds nuw i8, ptr %54, i64 16
  store ptr %55, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %65, ptr %i.al, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #14
  %i.am = load ptr, ptr %1, align 8, !tbaa !20, !noalias !409
  %i.an = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !409 ; 2 uses
  %.idx2798 = shl nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %.idx2798
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #14
  %i.ap = shl nsw i32 %i.c, 1
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.ar = load ptr, ptr %61, align 8, !tbaa !28, !noalias !410
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !410 ; 2 uses
  store ptr %i.as, ptr %66, align 8, !tbaa !32, !alias.scope !410
  %i.au = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.g, ptr %i.au, align 8, !tbaa !33, !alias.scope !410
  %i.av = getelementptr inbounds nuw i8, ptr %66, i64 16
  store i64 1, ptr %i.av, align 8, !tbaa !33, !alias.scope !410
  %i.aw = getelementptr inbounds nuw i8, ptr %66, i64 24
  store ptr %61, ptr %i.aw, align 8, !tbaa !35, !alias.scope !410
  %i.ax = getelementptr inbounds nuw i8, ptr %66, i64 32
  store i64 %i.aq, ptr %i.ax, align 8, !tbaa !33, !alias.scope !410
  %i.ay = getelementptr inbounds nuw i8, ptr %66, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !33, !alias.scope !410
  %i.az = getelementptr inbounds nuw i8, ptr %66, i64 48
  store i64 %i.at, ptr %i.az, align 8, !tbaa !38, !alias.scope !410
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  store ptr %i.ao, ptr %48, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 %i.an, ptr %i.ba, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #14
  store ptr %i.as, ptr %49, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 %i.at, ptr %i.bb, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #14
  store ptr %49, ptr %50, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %48, ptr %i.bc, align 8, !tbaa !406
  %i.bd = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %51, ptr %i.bd, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %50, i64 24
  store ptr %66, ptr %i.be, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #14
  %i.bf = load ptr, ptr %61, align 8, !tbaa !28   ; 8 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !29  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.j
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.bh, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j
  %i.bk = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.bh, %bb.j ] ; 7 uses
  %i.bl = load ptr, ptr %62, align 8, !tbaa !28   ; 8 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = sdiv i64 %i.bk, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 6 uses
  %i.bp = icmp sgt i64 %i.bk, 3
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %i.bq = icmp slt i64 %i.bo, %i.bk
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.br = sub i64 %i.bk, %i.bo                    ; 3 uses
  %min.iters.check3615 = icmp ult i64 %i.br, 8
  %i.bs = sub i64 %i.bg, %i.bm
  %diff.check3613 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check3615, i1 true, i1 %diff.check3613
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640, label %vector.ph3616

vector.ph3616:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec3617 = and i64 %i.br, -8                  ; 3 uses
  %i.bt = add i64 %i.bo, %n.vec3617
  br label %vector.body3618

vector.body3618:                                  ; preds = %vector.body3618, %vector.ph3616
end_hunk_0
begin_hunk_1_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a

vector.ph3345:                                    ; preds = %vector.memcheck3341
  %n.vec3346 = and i64 %i.ddb, -8                 ; 3 uses
  %i.ddn = add i64 %i.dbq, %n.vec3346
  br label %vector.body3347

vector.body3347:                                  ; preds = %vector.body3347, %vector.ph3345
  %index3348 = phi i64 [ 0, %vector.ph3345 ], [ %index.next3351, %vector.body3347 ] ; 2 uses
  %i.ddo = add i64 %i.dbq, %index3348             ; 2 uses
  %i.ddp = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.ddo ; 2 uses
  %i.ddq = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.ddo ; 2 uses
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 16
  %wide.load3349 = load <4 x i32>, ptr %i.ddq, align 4, !tbaa !24
  %wide.load3350 = load <4 x i32>, ptr %i.ddr, align 4, !tbaa !24
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddp, i64 16
  store <4 x i32> %wide.load3349, ptr %i.ddp, align 4, !tbaa !24
  store <4 x i32> %wide.load3350, ptr %i.dds, align 4, !tbaa !24
  %index.next3351 = add nuw i64 %index3348, 8     ; 2 uses
  %i.ddt = icmp eq i64 %index.next3351, %n.vec3346
  br i1 %i.ddt, label %middle.block3352, label %vector.body3347, !llvm.loop !397

middle.block3352:                                 ; preds = %vector.body3347
  %cmp.n3353 = icmp eq i64 %i.ddb, %n.vec3346
  br i1 %cmp.n3353, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655: ; preds = %vector.memcheck3341, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader, %middle.block3352
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph = phi i64 [ %i.dbq, %vector.memcheck3341 ], [ %i.dbq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader ], [ %i.ddn, %middle.block3352 ] ; 4 uses
  %i.ddu = sub i64 %i.dbb, %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph
  %xtraiter3777 = and i64 %i.ddu, 3               ; 2 uses
  %lcmp.mod3778.not = icmp eq i64 %xtraiter3777, 0
  br i1 %lcmp.mod3778.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol = phi i64 [ %i.ddy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ] ; 3 uses
  %prol.iter3779 = phi i64 [ %prol.iter3779.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ]
  %i.ddv = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol
  %i.ddw = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol
  %i.ddx = load i32, ptr %i.ddw, align 4, !tbaa !24
  store i32 %i.ddx, ptr %i.ddv, align 4, !tbaa !24
  %i.ddy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol, 1 ; 2 uses
  %prol.iter3779.next = add i64 %prol.iter3779, 1 ; 2 uses
  %prol.iter3779.cmp.not = icmp eq i64 %prol.iter3779.next, %xtraiter3777
  br i1 %prol.iter3779.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol, !llvm.loop !398

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ], [ %i.ddy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ]
  %i.ddz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %i.dbb
  %i.dea = icmp ugt i64 %i.ddz, -4
  br i1 %i.dea, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773 = phi i64 [ %i.deq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit ] ; 6 uses
  %i.deb = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773
  %i.dec = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773
  %i.ded = load i32, ptr %i.dec, align 4, !tbaa !24
  store i32 %i.ded, ptr %i.deb, align 4, !tbaa !24
  %i.dee = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 1 ; 2 uses
  %i.def = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dee
  %i.deg = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dee
  %i.deh = load i32, ptr %i.deg, align 4, !tbaa !24
  store i32 %i.deh, ptr %i.def, align 4, !tbaa !24
  %i.dei = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 2 ; 2 uses
  %i.dej = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dei
  %i.dek = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dei
  %i.del = load i32, ptr %i.dek, align 4, !tbaa !24
  store i32 %i.del, ptr %i.dej, align 4, !tbaa !24
  %i.dem = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 3 ; 2 uses
  %i.den = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dem
  %i.deo = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dem
  %i.dep = load i32, ptr %i.deo, align 4, !tbaa !24
  store i32 %i.dep, ptr %i.den, align 4, !tbaa !24
  %i.deq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i774.3 = icmp eq i64 %i.deq, %i.dbb
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i774.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772, !llvm.loop !399

.lr.ph.i.i.i.i.i.i.i.i.i.i.i775:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775
  %.021.i.i.i.i.i.i.i.i.i.i.i776 = phi i64 [ %i.deu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i769, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770 ] ; 3 uses
  %i.der = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i776
  %i.des = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.021.i.i.i.i.i.i.i.i.i.i.i776
  %i.det = load <2 x i64>, ptr %i.des, align 1, !tbaa !22
  store <2 x i64> %i.det, ptr %i.der, align 16, !tbaa !22
  %i.deu = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i776, 4 ; 2 uses
  %i.dev = icmp slt i64 %i.deu, %i.dbq
  br i1 %i.dev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i771, !llvm.loop !243

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772, %middle.block3352, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i771
  invoke void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %60, i32 noundef 9, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %63)
          to label %bb.ef unwind label %bb.m

bb.ef:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %sext2784 = mul i64 %i.b, 25769803776
  %i.dew = ashr exact i64 %sext2784, 32           ; 3 uses
  %i.dex = load ptr, ptr %63, align 8, !tbaa !54, !noalias !486 ; 2 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.dez = load i64, ptr %i.dey, align 8, !tbaa !55, !noalias !486 ; 2 uses
  store ptr %i.dex, ptr %79, align 8, !tbaa !64, !alias.scope !486
  %i.dfa = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %i.dew, ptr %i.dfa, align 8, !tbaa !33, !alias.scope !486
  %i.dfb = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i64 1, ptr %i.dfb, align 8, !tbaa !33, !alias.scope !486
  %i.dfc = getelementptr inbounds nuw i8, ptr %79, i64 24
  store ptr %63, ptr %i.dfc, align 8, !tbaa !66, !alias.scope !486
  %i.dfd = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.dfe = getelementptr inbounds nuw i8, ptr %79, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dfd, i8 0, i64 16, i1 false)
  store i64 %i.dez, ptr %i.dfe, align 8, !tbaa !69, !alias.scope !486
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store double 2.400000e+01, ptr %9, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %i.dex, ptr %10, align 8, !tbaa !73
  %i.dff = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dez, ptr %i.dff, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %10, ptr %11, align 8, !tbaa !75
  %i.dfg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.dfg, align 8, !tbaa !85
  %i.dfh = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.dfh, align 8, !tbaa !87
  %i.dfi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %79, ptr %i.dfi, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %sext2785 = mul i64 %i.b, 12884901888
  %i.dfj = ashr exact i64 %sext2785, 32
  %i.dfk = load ptr, ptr %63, align 8, !tbaa !54, !noalias !487
  %i.dfl = getelementptr inbounds [8 x i8], ptr %i.dfk, i64 %i.dew ; 2 uses
  %i.dfm = load i64, ptr %i.dey, align 8, !tbaa !55, !noalias !487 ; 2 uses
  store ptr %i.dfl, ptr %80, align 8, !tbaa !64, !alias.scope !487
  %i.dfn = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %i.dfj, ptr %i.dfn, align 8, !tbaa !33, !alias.scope !487
  %i.dfo = getelementptr inbounds nuw i8, ptr %80, i64 16
  store i64 1, ptr %i.dfo, align 8, !tbaa !33, !alias.scope !487
  %i.dfp = getelementptr inbounds nuw i8, ptr %80, i64 24
  store ptr %63, ptr %i.dfp, align 8, !tbaa !66, !alias.scope !487
  %i.dfq = getelementptr inbounds nuw i8, ptr %80, i64 32
  store i64 %i.dew, ptr %i.dfq, align 8, !tbaa !33, !alias.scope !487
  %i.dfr = getelementptr inbounds nuw i8, ptr %80, i64 40
  store i64 0, ptr %i.dfr, align 8, !tbaa !33, !alias.scope !487
  %i.dfs = getelementptr inbounds nuw i8, ptr %80, i64 48
  store i64 %i.dfm, ptr %i.dfs, align 8, !tbaa !69, !alias.scope !487
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store double 1.200000e+01, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %i.dfl, ptr %6, align 8, !tbaa !73
  %i.dft = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.dfm, ptr %i.dft, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %6, ptr %7, align 8, !tbaa !75
  %i.dfu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.dfu, align 8, !tbaa !85
  %i.dfv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.dfv, align 8, !tbaa !87
  %i.dfw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %80, ptr %i.dfw, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.ei:                                            ; preds = %bb.dm
  %i.dfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ej:                                            ; preds = %.loopexit2810
  %i.dfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ek:                                            ; preds = %bb.ef
  %i.dfz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #14
  br label %bb.en

bb.el:                                            ; preds = %bb.eg
  %i.dga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #14
  br label %bb.en

_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block3634, %bb.b, %._crit_edge.i.i.i.i.i.i, %bb.eh, %bb.cx
  %i.dgb = sext i32 %3 to i64                     ; 2 uses
  invoke void @_ZN3igl6sparseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEdEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.dgb, i64 noundef %i.dgb, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.em unwind label %bb.m

bb.em:                                            ; preds = %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit
  %i.dgc = load ptr, ptr %63, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #14
  %i.dgd = load ptr, ptr %62, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #14
  %i.dge = load ptr, ptr %61, align 8, !tbaa !28
  call void @free(ptr noundef %i.dge) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #14
  %i.dgf = load ptr, ptr %60, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #14
  ret void

bb.en:                                            ; preds = %bb.ej, %bb.ei, %bb.da, %bb.cz, %bb.cy, %bb.p, %bb.o, %bb.n, %bb.el, %bb.ek, %.body, %bb.m
  %.pn316 = phi { ptr, i32 } [ %i.dz, %bb.m ], [ %i.axq, %bb.da ], [ %i.ea, %bb.n ], [ %i.dfy, %bb.ej ], [ %i.ec, %bb.p ], [ %.pn300.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.axo, %bb.cy ], [ %i.axp, %bb.cz ], [ %i.eb, %bb.o ], [ %i.dga, %bb.el ], [ %i.dfz, %bb.ek ], [ %i.dfx, %bb.ei ]
  %i.dgg = load ptr, ptr %63, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #14
  %i.dgh = load ptr, ptr %62, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #14
  %i.dgi = load ptr, ptr %61, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #14
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.c
  %.pn316.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn316, %bb.en ], [ %i.d, %bb.c ]
  %i.dgj = load ptr, ptr %60, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #14
  resume { ptr, i32 } %.pn316.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.a, align 16, !tbaa !22 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <4 x i32>, ptr %i.m, align 16, !tbaa !22 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.f, 15
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.y, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.q = icmp sgt i64 %i.j, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ]
  %i.r = phi <4 x i32> [ %i.y, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !22
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !22
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !488

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !22
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.af = sub i64 %i.f, %i.j                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !24
  %wide.load24 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !24
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi23, <4 x i32> %wide.load24) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader46

.lr.ph84.i.i.i.i.preheader46:                     ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader46, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader46 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader46 ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ap) ; 2 uses
  %i.ar = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !490

bb.f:                                             ; preds = %bb.a
  %i.as = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.at = icmp sgt i64 %i.f, 1
  br i1 %i.at, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.au = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check26 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check26, label %.lr.ph89.i.i.i.i.preheader43, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec28 = and i64 %i.au, -8                    ; 3 uses
  %i.av = or disjoint i64 %n.vec28, 1
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph27
  %index32 = phi i64 [ 0, %vector.ph27 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %vec.phi33 = phi <4 x i32> [ %broadcast.splat30, %vector.ph27 ], [ %i.az, %vector.body31 ]
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat30, %vector.ph27 ], [ %i.ba, %vector.body31 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %wide.load35 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !24
  %wide.load36 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !24
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi33, <4 x i32> %wide.load35) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi34, <4 x i32> %wide.load36) ; 2 uses
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next37, %n.vec28
  br i1 %i.bb, label %middle.block38, label %vector.body31, !llvm.loop !491

middle.block38:                                   ; preds = %vector.body31
  %rdx.minmax39 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> %i.ba)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax39) ; 2 uses
  %cmp.n40 = icmp eq i64 %i.au, %n.vec28
  br i1 %cmp.n40, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader43

.lr.ph89.i.i.i.i.preheader43:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block38
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.av, %middle.block38 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block38 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader43, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader43 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader43 ]
end_hunk_1
begin_hunk_2_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  %i.j = icmp sgt i64 %i.c, 2
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <4 x i32>, ptr %i.k, align 16, !tbaa !22 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.c, 5
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.l, %bb.c ], [ %i.w, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.i, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.o = icmp sgt i64 %i.h, %i.f
  br i1 %i.o, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.s, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ]
  %i.p = phi <4 x i32> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.r = load <4 x i32>, ptr %i.q, align 16, !tbaa !22
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !22
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.v) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.x = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !867

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.z = load <4 x i32>, ptr %i.y, align 16, !tbaa !22
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.i, %bb.b ], [ %i.aa, %bb.d ], [ %i.n, %._crit_edge.i.i.i.i ]
  %i.ab = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ac = icmp slt i64 %i.h, %i.d
  br i1 %i.ac, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ad = sub i64 %i.d, %i.h                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  %i.ae = add i64 %i.h, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !24
  %wide.load25 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !24
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi24, <4 x i32> %wide.load25) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !868

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ai, <4 x i32> %i.aj)
  %i.al = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader47

.lr.ph84.i.i.i.i.preheader47:                     ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.h, %.lr.ph84.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ab, %.lr.ph84.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader47, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader47 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ao, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader47 ]
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.an) ; 2 uses
  %i.ap = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !869

bb.f:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.ar = icmp sgt i64 %i.c, 0
  br i1 %i.ar, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.as = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check27, label %.lr.ph89.i.i.i.i.preheader44, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec29 = and i64 %i.as, -8                    ; 3 uses
  %i.at = or disjoint i64 %n.vec29, 1
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat31, %vector.ph28 ], [ %i.ax, %vector.body32 ]
  %vec.phi35 = phi <4 x i32> [ %broadcast.splat31, %vector.ph28 ], [ %i.ay, %vector.body32 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %wide.load36 = load <4 x i32>, ptr %i.av, align 4, !tbaa !24
  %wide.load37 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !24
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi34, <4 x i32> %wide.load36) ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi35, <4 x i32> %wide.load37) ; 2 uses
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.az, label %middle.block39, label %vector.body32, !llvm.loop !870

middle.block39:                                   ; preds = %vector.body32
  %rdx.minmax40 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax40) ; 2 uses
  %cmp.n41 = icmp eq i64 %i.as, %n.vec29
  br i1 %cmp.n41, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader44

.lr.ph89.i.i.i.i.preheader44:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block39
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.at, %middle.block39 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.aq, %.lr.ph89.i.i.i.i.preheader ], [ %i.ba, %middle.block39 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader44, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader44 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader44 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bc) ; 2 uses
  %i.be = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.be, %i.d
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !871

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block39, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %i.aq, %bb.f ], [ %i.ab, %bb.e ], [ %i.ba, %middle.block39 ], [ %i.al, %middle.block ], [ %i.ao, %.lr.ph84.i.i.i.i ]
  %i.bf = add nsw i32 %.3.i.i.i.i, 1
  tail call void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %14 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %16 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %17 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %19 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %20 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %21 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %22 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %23 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %24 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %25 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %26 = alloca %"class.Eigen::Matrix.29", align 8 ; 11 uses
  %27 = alloca %"class.Eigen::Matrix.38", align 8 ; 15 uses
  %28 = alloca %"class.Eigen::Matrix.38", align 8 ; 17 uses
  %29 = alloca %"class.Eigen::Matrix.29", align 8 ; 26 uses
  %30 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %31 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %32 = alloca %"class.Eigen::CwiseBinaryOp.143", align 8 ; 6 uses
  %33 = alloca %"class.Eigen::Array", align 8     ; 9 uses
  %34 = alloca %"class.Eigen::CwiseBinaryOp.170", align 8 ; 6 uses
  %35 = alloca %"class.Eigen::Matrix.68", align 8 ; 14 uses
  %36 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %37 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %38 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %40 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 20 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %26)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %bb.j
    i32 2, label %bb.cv
    i32 3, label %bb.j
  ]

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.d:                                             ; preds = %bb.b
  %sext2756 = mul i64 %i.b, 12884901888
  %i.e = ashr exact i64 %sext2756, 32             ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 noundef %i.e, i64 noundef 1)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %28, i64 noundef %i.e, i64 noundef 1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.e, i64 noundef 1)
          to label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i unwind label %bb.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.f
  %i.f = load ptr, ptr %1, align 8, !tbaa !96, !noalias !1127 ; 15 uses
  %sext2757 = shl i64 %i.b, 32                    ; 4 uses
  %i.g = ashr exact i64 %sext2757, 32             ; 17 uses
  %i.h = load ptr, ptr %27, align 8, !tbaa !28, !noalias !1128 ; 20 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = icmp sgt i64 %i.g, 0
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader: ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %min.iters.check3375 = icmp ult i64 %i.g, 29
  br i1 %min.iters.check3375, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444, label %vector.memcheck3368

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444: ; preds = %vector.body3378, %vector.memcheck3368, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck3368 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader ], [ %n.vec3377, %vector.body3378 ] ; 4 uses
  %i.m = sub i64 %i.b, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3627 = and i64 %i.m, 3                 ; 2 uses
  %lcmp.mod3628.not = icmp eq i64 %xtraiter3627, 0
  br i1 %lcmp.mod3628.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.q, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444 ] ; 3 uses
  %prol.iter3629 = phi i64 [ %prol.iter3629.next, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444 ]
  %i.n = getelementptr [4 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 12
  %i.o = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  store i32 %i.p, ptr %i.n, align 4, !tbaa !24
  %i.q = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3629.next = add i64 %prol.iter3629, 1 ; 2 uses
  %prol.iter3629.cmp.not = icmp eq i64 %prol.iter3629.next, %xtraiter3627
  br i1 %prol.iter3629.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol, !llvm.loop !876

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444 ], [ %i.q, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol ]
  %i.r = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.g
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

vector.memcheck3368:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader
  %i.t = ashr exact i64 %sext2757, 30
  %scevgep3369 = getelementptr i8, ptr %i.h, i64 %i.t
  %i.u = mul nuw nsw i64 %i.g, 12
  %i.v = getelementptr i8, ptr %i.f, i64 %i.u
  %scevgep3370 = getelementptr i8, ptr %i.v, i64 -8
  %bound03371 = icmp ult ptr %i.h, %scevgep3370
  %bound13372 = icmp ult ptr %i.f, %scevgep3369
  %found.conflict3373 = and i1 %bound03371, %bound13372
  br i1 %found.conflict3373, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444, label %vector.ph3376

vector.ph3376:                                    ; preds = %vector.memcheck3368
  %i.w = and i64 %i.b, 3                          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i64 4, i64 %i.w
  %n.vec3377 = sub nsw i64 %i.g, %i.y             ; 2 uses
  br label %vector.body3378

vector.body3378:                                  ; preds = %vector.body3378, %vector.ph3376
  %index3379 = phi i64 [ 0, %vector.ph3376 ], [ %index.next3380, %vector.body3378 ] ; 6 uses
  %i.z = getelementptr [4 x i8], ptr %i.h, i64 %index3379
  %i.aa = mul nuw nsw i64 %index3379, 12
  %i.ab = mul nuw i64 %index3379, 12
  %i.ac = mul nuw i64 %index3379, 12
  %i.ad = mul nuw i64 %index3379, 12
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.aa
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 12
  %i.ah = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 36
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !24, !alias.scope !1129
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !24, !alias.scope !1129
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !24, !alias.scope !1129
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !24, !alias.scope !1129
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  store <4 x i32> %i.as, ptr %i.z, align 4, !tbaa !24, !alias.scope !1130, !noalias !1129
  %index.next3380 = add nuw i64 %index3379, 4     ; 2 uses
  %i.at = icmp eq i64 %index.next3380, %n.vec3377
  br i1 %i.at, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader3444, label %vector.body3378, !llvm.loop !880

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 10 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 7 uses
  %min.iters.check3390 = icmp ult i64 %i.g, 29
  br i1 %min.iters.check3390, label %scalar.ph3389.preheader, label %vector.memcheck3383

scalar.ph3389.preheader:                          ; preds = %vector.body3393, %vector.memcheck3383, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i325.ph = phi i64 [ 0, %vector.memcheck3383 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %n.vec3392, %vector.body3393 ] ; 4 uses
  %i.aw = sub i64 %i.b, %.09.i.i.i.i.i.i.i.i.i.i325.ph
  %xtraiter3630 = and i64 %i.aw, 3                ; 2 uses
  %lcmp.mod3631.not = icmp eq i64 %xtraiter3630, 0
  br i1 %lcmp.mod3631.not, label %scalar.ph3389.prol.loopexit, label %scalar.ph3389.prol

scalar.ph3389.prol:                               ; preds = %scalar.ph3389.preheader, %scalar.ph3389.prol
  %.09.i.i.i.i.i.i.i.i.i.i325.prol = phi i64 [ %i.ba, %scalar.ph3389.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i325.ph, %scalar.ph3389.preheader ] ; 3 uses
  %prol.iter3632 = phi i64 [ %prol.iter3632.next, %scalar.ph3389.prol ], [ 0, %scalar.ph3389.preheader ]
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %.09.i.i.i.i.i.i.i.i.i.i325.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i326.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i325.prol, 12
  %i.ay = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i326.prol
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !24
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !24
  %i.ba = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i325.prol, 1 ; 2 uses
  %prol.iter3632.next = add i64 %prol.iter3632, 1 ; 2 uses
  %prol.iter3632.cmp.not = icmp eq i64 %prol.iter3632.next, %xtraiter3630
  br i1 %prol.iter3632.cmp.not, label %scalar.ph3389.prol.loopexit, label %scalar.ph3389.prol, !llvm.loop !881

scalar.ph3389.prol.loopexit:                      ; preds = %scalar.ph3389.prol, %scalar.ph3389.preheader
  %.09.i.i.i.i.i.i.i.i.i.i325.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i325.ph, %scalar.ph3389.preheader ], [ %i.ba, %scalar.ph3389.prol ]
  %i.bb = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i325.ph, %i.g
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.i.i.i.i.i.i.i.i.i.i328, label %scalar.ph3389

vector.memcheck3383:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bd = ashr exact i64 %sext2757, 29
  %scevgep3384 = getelementptr i8, ptr %i.h, i64 %i.bd
  %i.be = mul nuw nsw i64 %i.g, 12
  %i.bf = getelementptr i8, ptr %i.f, i64 %i.be
  %scevgep3385 = getelementptr i8, ptr %i.bf, i64 -4
  %bound03386 = icmp ult ptr %i.av, %scevgep3385
  %bound13387 = icmp ult ptr %i.au, %scevgep3384
  %found.conflict3388 = and i1 %bound03386, %bound13387
  br i1 %found.conflict3388, label %scalar.ph3389.preheader, label %vector.ph3391

vector.ph3391:                                    ; preds = %vector.memcheck3383
  %i.bg = and i64 %i.b, 3                         ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 4, i64 %i.bg
  %n.vec3392 = sub nsw i64 %i.g, %i.bi            ; 2 uses
  br label %vector.body3393

vector.body3393:                                  ; preds = %vector.body3393, %vector.ph3391
  %index3394 = phi i64 [ 0, %vector.ph3391 ], [ %index.next3395, %vector.body3393 ] ; 6 uses
  %i.bj = getelementptr [4 x i8], ptr %i.av, i64 %index3394
  %i.bk = mul nuw nsw i64 %index3394, 12
  %i.bl = mul nuw i64 %index3394, 12
  %i.bm = mul nuw i64 %index3394, 12
  %i.bn = mul nuw i64 %index3394, 12
  %i.bo = getelementptr i8, ptr %i.au, i64 %i.bk
  %i.bp = getelementptr i8, ptr %i.au, i64 %i.bl
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  %i.br = getelementptr i8, ptr %i.au, i64 %i.bm
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = getelementptr i8, ptr %i.au, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 36
  %i.bv = load i32, ptr %i.bo, align 4, !tbaa !24, !alias.scope !1131
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !24, !alias.scope !1131
  %i.bx = load i32, ptr %i.bs, align 4, !tbaa !24, !alias.scope !1131
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !24, !alias.scope !1131
  %i.bz = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 1
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 2
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 3
  store <4 x i32> %i.cc, ptr %i.bj, align 4, !tbaa !24, !alias.scope !1132, !noalias !1131
  %index.next3395 = add nuw i64 %index3394, 4     ; 2 uses
  %i.cd = icmp eq i64 %index.next3395, %n.vec3392
  br i1 %i.cd, label %scalar.ph3389.preheader, label %vector.body3393, !llvm.loop !885

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr [4 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 12
  %i.cf = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !24
  %i.ch = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.h, i64 %i.ch
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ch, 12
  %i.cj = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !24
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !24
  %i.cl = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.h, i64 %i.cl
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.cl, 12
end_hunk_2
begin_hunk_3_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  %i.fj = getelementptr [4 x i8], ptr %i.cx, i64 %i.fi
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i335.3 = mul nuw nsw i64 %i.fi, 12
  %i.fk = getelementptr i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i335.3
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !24
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !24
  %i.fm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i334, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i336.3 = icmp eq i64 %i.fm, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i336.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339, label %scalar.ph3404, !llvm.loop !893

_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339: ; preds = %scalar.ph3404.prol.loopexit, %scalar.ph3404, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fo, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %28, i64 noundef %i.k, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339
  %i.fp = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.k, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEaSINS0_IKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit339 ] ; 7 uses
  %i.fq = load ptr, ptr %28, align 8, !tbaa !28   ; 8 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = sdiv i64 %i.fp, 4
  %i.ft = shl nsw i64 %i.fs, 2                    ; 6 uses
  %i.fu = icmp sgt i64 %i.fp, 3
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %i.fv = icmp slt i64 %i.ft, %i.fp
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.fw = sub i64 %i.fp, %i.ft                    ; 3 uses
  %min.iters.check3416 = icmp ult i64 %i.fw, 8
  %i.fx = sub i64 %i.i, %i.fr
  %diff.check3414 = icmp ugt i64 %i.fx, -32
  %or.cond = select i1 %min.iters.check3416, i1 true, i1 %diff.check3414
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443, label %vector.ph3417

vector.ph3417:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec3418 = and i64 %i.fw, -8                  ; 3 uses
  %i.fy = add i64 %i.ft, %n.vec3418
  br label %vector.body3419

vector.body3419:                                  ; preds = %vector.body3419, %vector.ph3417
  %index3420 = phi i64 [ 0, %vector.ph3417 ], [ %index.next3423, %vector.body3419 ] ; 2 uses
  %i.fz = add i64 %i.ft, %index3420               ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load3421 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !24
  %wide.load3422 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %wide.load3421, ptr %i.ga, align 4, !tbaa !24
  store <4 x i32> %wide.load3422, ptr %i.gd, align 4, !tbaa !24
  %index.next3423 = add nuw i64 %index3420, 8     ; 2 uses
  %i.ge = icmp eq i64 %index.next3423, %n.vec3418
  br i1 %i.ge, label %middle.block3424, label %vector.body3419, !llvm.loop !894

middle.block3424:                                 ; preds = %vector.body3419
  %cmp.n3425 = icmp eq i64 %i.fw, %n.vec3418
  br i1 %cmp.n3425, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443

.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block3424
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fy, %middle.block3424 ] ; 4 uses
  %i.gf = sub i64 %i.fp, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3636 = and i64 %i.gf, 3                ; 2 uses
  %lcmp.mod3637.not = icmp eq i64 %xtraiter3636, 0
  br i1 %lcmp.mod3637.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443 ] ; 3 uses
  %prol.iter3638 = phi i64 [ %prol.iter3638.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443 ]
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !24
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !24
  %i.gj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3638.next = add i64 %prol.iter3638, 1 ; 2 uses
  %prol.iter3638.cmp.not = icmp eq i64 %prol.iter3638.next, %xtraiter3636
  br i1 %prol.iter3638.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !895

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3443 ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.gk = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.fp
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !24
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !24
  %i.gp = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gp
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !24
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !24
  %i.gt = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.gt
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !24
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !24
  %i.gx = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.gx
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !24
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !24
  %i.hb = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hb, %i.fp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !896

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.011.i.i.i.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.011.i.i.i.i.i.i.i.i
  %i.he = load <2 x i64>, ptr %i.hd, align 16, !tbaa !22
  store <2 x i64> %i.he, ptr %i.hc, align 16, !tbaa !22
  %i.hf = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hg = icmp slt i64 %i.hf, %i.ft
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block3424, %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %26, i32 noundef 3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.hi = load ptr, ptr %29, align 8, !tbaa !54   ; 3 uses
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !55 ; 6 uses
  %i.hk = sdiv i64 %i.hj, 2
  %i.hl = shl nsw i64 %i.hk, 1                    ; 6 uses
  %i.hm = icmp sgt i64 %i.hj, 1
  br i1 %i.hm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  %i.hn = icmp slt i64 %i.hl, %i.hj
  br i1 %i.hn, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ho = sub i64 %i.hj, %i.hl                    ; 2 uses
  %min.iters.check3428 = icmp ult i64 %i.ho, 2
  br i1 %min.iters.check3428, label %.lr.ph.i.i.i.i.i.i.i.preheader3442, label %vector.ph3429

vector.ph3429:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.hp = and i64 %i.hj, 1                        ; 2 uses
  %n.vec3430 = sub nuw i64 %i.ho, %i.hp           ; 2 uses
  %i.hq = add i64 %i.hl, %n.vec3430
  %i.hr = getelementptr [8 x i8], ptr %i.hi, i64 %i.hl
  br label %vector.body3431

vector.body3431:                                  ; preds = %vector.body3431, %vector.ph3429
  %index3432 = phi i64 [ 0, %vector.ph3429 ], [ %index.next3434, %vector.body3431 ] ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %index3432 ; 2 uses
  %wide.load3433 = load <2 x double>, ptr %i.hs, align 8, !tbaa !57
  %i.ht = fdiv <2 x double> %wide.load3433, splat (double 6.000000e+00)
  store <2 x double> %i.ht, ptr %i.hs, align 8, !tbaa !57
  %index.next3434 = add nuw i64 %index3432, 2     ; 2 uses
  %i.hu = icmp eq i64 %index.next3434, %n.vec3430
  br i1 %i.hu, label %middle.block3435, label %vector.body3431, !llvm.loop !897

middle.block3435:                                 ; preds = %vector.body3431
  %cmp.n3436 = icmp eq i64 %i.hp, 0
  br i1 %cmp.n3436, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader3442

.lr.ph.i.i.i.i.i.i.i.preheader3442:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block3435
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hq, %middle.block3435 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader3442, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.hy, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader3442 ] ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !57
  %i.hx = fdiv double %i.hw, 6.000000e+00
  store double %i.hx, ptr %i.hv, align 8, !tbaa !57
  %i.hy = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.hy, %i.hj
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !898

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.ic, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.ia = load <2 x double>, ptr %i.hz, align 16, !tbaa !22
  %i.ib = fdiv <2 x double> %i.ia, splat (double 6.000000e+00)
  store <2 x double> %i.ib, ptr %i.hz, align 16, !tbaa !22
  %i.ic = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.hl
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1

bb.i:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i368, %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit690, %bb.cx, %bb.cw, %bb.cv, %bb.l, %bb.k, %bb.j, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, %bb.f, %bb.e, %bb.d
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.j:                                             ; preds = %bb.b, %bb.b
  %sext2747 = mul i64 %i.b, 12884901888
  %i.if = ashr exact i64 %sext2747, 32            ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 noundef %i.if, i64 noundef 1)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %28, i64 noundef %i.if, i64 noundef 1)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.if, i64 noundef 1)
          to label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i340 unwind label %bb.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i340:          ; preds = %bb.l
  %i.ig = load ptr, ptr %1, align 8, !tbaa !96, !noalias !1135 ; 15 uses
  %sext2748 = shl i64 %i.b, 32                    ; 4 uses
  %i.ih = ashr exact i64 %sext2748, 32            ; 23 uses
  %i.ii = load ptr, ptr %27, align 8, !tbaa !28, !noalias !1136 ; 20 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !29 ; 3 uses
  %i.im = icmp sgt i64 %i.ih, 0
  br i1 %i.im, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i358.thread

.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader: ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i340
  %min.iters.check3071 = icmp ult i64 %i.ih, 29
  br i1 %min.iters.check3071, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459, label %vector.memcheck3064

.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459: ; preds = %vector.body3074, %vector.memcheck3064, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader
  %.09.i.i.i.i.i.i.i.i.i.i343.ph = phi i64 [ 0, %vector.memcheck3064 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader ], [ %n.vec3073, %vector.body3074 ] ; 4 uses
  %i.in = sub i64 %i.b, %.09.i.i.i.i.i.i.i.i.i.i343.ph
  %xtraiter3526 = and i64 %i.in, 3                ; 2 uses
  %lcmp.mod3527.not = icmp eq i64 %xtraiter3526, 0
  br i1 %lcmp.mod3527.not, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol

.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol
  %.09.i.i.i.i.i.i.i.i.i.i343.prol = phi i64 [ %i.ir, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i343.ph, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459 ] ; 3 uses
  %prol.iter3528 = phi i64 [ %prol.iter3528.next, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459 ]
  %i.io = getelementptr [4 x i8], ptr %i.ii, i64 %.09.i.i.i.i.i.i.i.i.i.i343.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343.prol, 12
  %i.ip = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.prol
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !24
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !24
  %i.ir = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343.prol, 1 ; 2 uses
  %prol.iter3528.next = add i64 %prol.iter3528, 1 ; 2 uses
  %prol.iter3528.cmp.not = icmp eq i64 %prol.iter3528.next, %xtraiter3526
  br i1 %prol.iter3528.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol, !llvm.loop !903

.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459
  %.09.i.i.i.i.i.i.i.i.i.i343.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i343.ph, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459 ], [ %i.ir, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol ]
  %i.is = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343.ph, %i.ih
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.i.i.i.i.i.i.i.i.i.i346, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader

vector.memcheck3064:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader
  %i.iu = ashr exact i64 %sext2748, 30
  %scevgep3065 = getelementptr i8, ptr %i.ii, i64 %i.iu
  %i.iv = mul nuw nsw i64 %i.ih, 12
  %i.iw = getelementptr i8, ptr %i.ig, i64 %i.iv
  %scevgep3066 = getelementptr i8, ptr %i.iw, i64 -8
  %bound03067 = icmp ult ptr %i.ii, %scevgep3066
  %bound13068 = icmp ult ptr %i.ig, %scevgep3065
  %found.conflict3069 = and i1 %bound03067, %bound13068
  br i1 %found.conflict3069, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459, label %vector.ph3072

vector.ph3072:                                    ; preds = %vector.memcheck3064
  %i.ix = and i64 %i.b, 3                         ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0
  %i.iz = select i1 %i.iy, i64 4, i64 %i.ix
  %n.vec3073 = sub nsw i64 %i.ih, %i.iz           ; 2 uses
  br label %vector.body3074

vector.body3074:                                  ; preds = %vector.body3074, %vector.ph3072
  %index3075 = phi i64 [ 0, %vector.ph3072 ], [ %index.next3076, %vector.body3074 ] ; 6 uses
  %i.ja = getelementptr [4 x i8], ptr %i.ii, i64 %index3075
  %i.jb = mul nuw nsw i64 %index3075, 12
  %i.jc = mul nuw i64 %index3075, 12
  %i.jd = mul nuw i64 %index3075, 12
  %i.je = mul nuw i64 %index3075, 12
  %i.jf = getelementptr i8, ptr %i.ig, i64 %i.jb
  %i.jg = getelementptr i8, ptr %i.ig, i64 %i.jc
  %i.jh = getelementptr i8, ptr %i.jg, i64 12
  %i.ji = getelementptr i8, ptr %i.ig, i64 %i.jd
  %i.jj = getelementptr i8, ptr %i.ji, i64 24
  %i.jk = getelementptr i8, ptr %i.ig, i64 %i.je
  %i.jl = getelementptr i8, ptr %i.jk, i64 36
  %i.jm = load i32, ptr %i.jf, align 4, !tbaa !24, !alias.scope !1137
  %i.jn = load i32, ptr %i.jh, align 4, !tbaa !24, !alias.scope !1137
  %i.jo = load i32, ptr %i.jj, align 4, !tbaa !24, !alias.scope !1137
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !24, !alias.scope !1137
  %i.jq = insertelement <4 x i32> poison, i32 %i.jm, i64 0
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.jn, i64 1
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jo, i64 2
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jp, i64 3
  store <4 x i32> %i.jt, ptr %i.ja, align 4, !tbaa !24, !alias.scope !1138, !noalias !1137
  %index.next3076 = add nuw i64 %index3075, 4     ; 2 uses
  %i.ju = icmp eq i64 %index.next3076, %n.vec3073
  br i1 %i.ju, label %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.preheader3459, label %vector.body3074, !llvm.loop !907

._crit_edge.i.i.i.i.i.i.i.i.i.i346:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 10 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ih ; 7 uses
  %min.iters.check3086 = icmp ult i64 %i.ih, 29
  br i1 %min.iters.check3086, label %scalar.ph3085.preheader, label %vector.memcheck3079

scalar.ph3085.preheader:                          ; preds = %vector.body3089, %vector.memcheck3079, %._crit_edge.i.i.i.i.i.i.i.i.i.i346
  %.09.i.i.i.i.i.i.i.i.i.i352.ph = phi i64 [ 0, %vector.memcheck3079 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i346 ], [ %n.vec3088, %vector.body3089 ] ; 4 uses
  %i.jx = sub i64 %i.b, %.09.i.i.i.i.i.i.i.i.i.i352.ph
  %xtraiter3529 = and i64 %i.jx, 3                ; 2 uses
  %lcmp.mod3530.not = icmp eq i64 %xtraiter3529, 0
  br i1 %lcmp.mod3530.not, label %scalar.ph3085.prol.loopexit, label %scalar.ph3085.prol

scalar.ph3085.prol:                               ; preds = %scalar.ph3085.preheader, %scalar.ph3085.prol
  %.09.i.i.i.i.i.i.i.i.i.i352.prol = phi i64 [ %i.kb, %scalar.ph3085.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i352.ph, %scalar.ph3085.preheader ] ; 3 uses
  %prol.iter3531 = phi i64 [ %prol.iter3531.next, %scalar.ph3085.prol ], [ 0, %scalar.ph3085.preheader ]
  %i.jy = getelementptr [4 x i8], ptr %i.jw, i64 %.09.i.i.i.i.i.i.i.i.i.i352.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i353.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i352.prol, 12
  %i.jz = getelementptr i8, ptr %i.jv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i353.prol
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !24
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !24
  %i.kb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i352.prol, 1 ; 2 uses
  %prol.iter3531.next = add i64 %prol.iter3531, 1 ; 2 uses
  %prol.iter3531.cmp.not = icmp eq i64 %prol.iter3531.next, %xtraiter3529
  br i1 %prol.iter3531.cmp.not, label %scalar.ph3085.prol.loopexit, label %scalar.ph3085.prol, !llvm.loop !908

scalar.ph3085.prol.loopexit:                      ; preds = %scalar.ph3085.prol, %scalar.ph3085.preheader
  %.09.i.i.i.i.i.i.i.i.i.i352.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i352.ph, %scalar.ph3085.preheader ], [ %i.kb, %scalar.ph3085.prol ]
  %i.kc = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i352.ph, %i.ih
  %i.kd = icmp ugt i64 %i.kc, -4
  br i1 %i.kd, label %._crit_edge.i.i.i.i.i.i.i.i.i.i355, label %scalar.ph3085

vector.memcheck3079:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i346
  %i.ke = ashr exact i64 %sext2748, 29
  %scevgep3080 = getelementptr i8, ptr %i.ii, i64 %i.ke
  %i.kf = mul nuw nsw i64 %i.ih, 12
  %i.kg = getelementptr i8, ptr %i.ig, i64 %i.kf
  %scevgep3081 = getelementptr i8, ptr %i.kg, i64 -4
  %bound03082 = icmp ult ptr %i.jw, %scevgep3081
  %bound13083 = icmp ult ptr %i.jv, %scevgep3080
  %found.conflict3084 = and i1 %bound03082, %bound13083
  br i1 %found.conflict3084, label %scalar.ph3085.preheader, label %vector.ph3087

vector.ph3087:                                    ; preds = %vector.memcheck3079
  %i.kh = and i64 %i.b, 3                         ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = select i1 %i.ki, i64 4, i64 %i.kh
  %n.vec3088 = sub nsw i64 %i.ih, %i.kj           ; 2 uses
  br label %vector.body3089

vector.body3089:                                  ; preds = %vector.body3089, %vector.ph3087
  %index3090 = phi i64 [ 0, %vector.ph3087 ], [ %index.next3091, %vector.body3089 ] ; 6 uses
  %i.kk = getelementptr [4 x i8], ptr %i.jw, i64 %index3090
  %i.kl = mul nuw nsw i64 %index3090, 12
  %i.km = mul nuw i64 %index3090, 12
  %i.kn = mul nuw i64 %index3090, 12
  %i.ko = mul nuw i64 %index3090, 12
  %i.kp = getelementptr i8, ptr %i.jv, i64 %i.kl
  %i.kq = getelementptr i8, ptr %i.jv, i64 %i.km
  %i.kr = getelementptr i8, ptr %i.kq, i64 12
  %i.ks = getelementptr i8, ptr %i.jv, i64 %i.kn
  %i.kt = getelementptr i8, ptr %i.ks, i64 24
  %i.ku = getelementptr i8, ptr %i.jv, i64 %i.ko
  %i.kv = getelementptr i8, ptr %i.ku, i64 36
  %i.kw = load i32, ptr %i.kp, align 4, !tbaa !24, !alias.scope !1139
  %i.kx = load i32, ptr %i.kr, align 4, !tbaa !24, !alias.scope !1139
  %i.ky = load i32, ptr %i.kt, align 4, !tbaa !24, !alias.scope !1139
  %i.kz = load i32, ptr %i.kv, align 4, !tbaa !24, !alias.scope !1139
  %i.la = insertelement <4 x i32> poison, i32 %i.kw, i64 0
  %i.lb = insertelement <4 x i32> %i.la, i32 %i.kx, i64 1
  %i.lc = insertelement <4 x i32> %i.lb, i32 %i.ky, i64 2
  %i.ld = insertelement <4 x i32> %i.lc, i32 %i.kz, i64 3
  store <4 x i32> %i.ld, ptr %i.kk, align 4, !tbaa !24, !alias.scope !1140, !noalias !1139
  %index.next3091 = add nuw i64 %index3090, 4     ; 2 uses
  %i.le = icmp eq i64 %index.next3091, %n.vec3088
  br i1 %i.le, label %scalar.ph3085.preheader, label %vector.body3089, !llvm.loop !912

.preheader.i.i.i.i.i.i.i.i.i.i341.preheader:      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader
  %.09.i.i.i.i.i.i.i.i.i.i343 = phi i64 [ %i.lu, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader ], [ %.09.i.i.i.i.i.i.i.i.i.i343.unr, %.preheader.i.i.i.i.i.i.i.i.i.i341.preheader.prol.loopexit ] ; 6 uses
  %i.lf = getelementptr [4 x i8], ptr %i.ii, i64 %.09.i.i.i.i.i.i.i.i.i.i343
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344 = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343, 12
  %i.lg = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !24
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !24
  %i.li = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343, 1 ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.ii, i64 %i.li
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.1 = mul nuw nsw i64 %i.li, 12
  %i.lk = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.1
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !24
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !24
  %i.lm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343, 2 ; 2 uses
  %i.ln = getelementptr [4 x i8], ptr %i.ii, i64 %i.lm
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.2 = mul nuw nsw i64 %i.lm, 12
  %i.lo = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.2
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !24
  store i32 %i.lp, ptr %i.ln, align 4, !tbaa !24
  %i.lq = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i343, 3 ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.ii, i64 %i.lq
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.3 = mul nuw nsw i64 %i.lq, 12
  %i.ls = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i344.3
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !24
end_hunk_3
begin_hunk_4_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  %scevgep3051 = getelementptr i8, ptr %i.bgj, i64 %.idx2732
  %bound03052 = icmp ult ptr %i.cmw, %scevgep3051
  %bound13053 = icmp ult ptr %i.bmj, %scevgep3050
  %found.conflict3054 = and i1 %bound03052, %bound13053
  br i1 %found.conflict3054, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader, label %vector.ph3057

vector.ph3057:                                    ; preds = %vector.memcheck3049
  %i.cmy = and i64 %i.bgk, 3                      ; 2 uses
  %i.cmz = icmp eq i64 %i.cmy, 0
  %i.cna = select i1 %i.cmz, i64 4, i64 %i.cmy
  %n.vec3058 = sub nsw i64 %i.bgk, %i.cna         ; 2 uses
  br label %vector.body3059

vector.body3059:                                  ; preds = %vector.body3059, %vector.ph3057
  %index3060 = phi i64 [ 0, %vector.ph3057 ], [ %index.next3061, %vector.body3059 ] ; 6 uses
  %i.cnb = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %index3060
  %i.cnc = mul nuw nsw i64 %index3060, 12
  %i.cnd = mul nuw i64 %index3060, 12
  %i.cne = mul nuw i64 %index3060, 12
  %i.cnf = mul nuw i64 %index3060, 12
  %i.cng = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.cnc
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.cnd
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 12
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.cne
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 24
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %i.cnf
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnl, i64 36
  %i.cnn = load i32, ptr %i.cng, align 4, !tbaa !24, !alias.scope !1213
  %i.cno = load i32, ptr %i.cni, align 4, !tbaa !24, !alias.scope !1213
  %i.cnp = load i32, ptr %i.cnk, align 4, !tbaa !24, !alias.scope !1213
  %i.cnq = load i32, ptr %i.cnm, align 4, !tbaa !24, !alias.scope !1213
  %i.cnr = insertelement <4 x i32> poison, i32 %i.cnn, i64 0
  %i.cns = insertelement <4 x i32> %i.cnr, i32 %i.cno, i64 1
  %i.cnt = insertelement <4 x i32> %i.cns, i32 %i.cnp, i64 2
  %i.cnu = insertelement <4 x i32> %i.cnt, i32 %i.cnq, i64 3
  store <4 x i32> %i.cnu, ptr %i.cnb, align 4, !tbaa !24, !alias.scope !1214, !noalias !1213
  %index.next3061 = add nuw i64 %index3060, 4     ; 2 uses
  %i.cnv = icmp eq i64 %index.next3061, %n.vec3058
  br i1 %i.cnv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader, label %vector.body3059, !llvm.loop !1120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader:        ; preds = %vector.body3059, %vector.memcheck3049, %.unr-lcssa3522
  %.05.i.i.i.i.i.i.i.i.i.i.i687.ph = phi i64 [ 0, %vector.memcheck3049 ], [ 0, %.unr-lcssa3522 ], [ %n.vec3058, %vector.body3059 ] ; 4 uses
  %i.cnw = sub i64 %i.bgk, %.05.i.i.i.i.i.i.i.i.i.i.i687.ph
  %xtraiter3523 = and i64 %i.cnw, 3               ; 2 uses
  %lcmp.mod3524.not = icmp eq i64 %xtraiter3523, 0
  br i1 %lcmp.mod3524.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i687.prol = phi i64 [ %i.coa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i687.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader ] ; 3 uses
  %prol.iter3525 = phi i64 [ %prol.iter3525.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader ]
  %i.cnx = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i687.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687.prol, 12
  %i.cny = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.prol
  %i.cnz = load i32, ptr %i.cny, align 4, !tbaa !24
  store i32 %i.cnz, ptr %i.cnx, align 4, !tbaa !24
  %i.coa = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687.prol, 1 ; 2 uses
  %prol.iter3525.next = add i64 %prol.iter3525, 1 ; 2 uses
  %prol.iter3525.cmp.not = icmp eq i64 %prol.iter3525.next, %xtraiter3523
  br i1 %prol.iter3525.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol, !llvm.loop !1121

.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i687.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i687.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.preheader ], [ %i.coa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol ]
  %i.cob = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.i687.ph, %i.bgk
  %i.coc = icmp ugt i64 %i.cob, -4
  br i1 %i.coc, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit690, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686

.lr.ph.i.i.i.i.i.i.i.i.i.i.i686:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686
  %.05.i.i.i.i.i.i.i.i.i.i.i687 = phi i64 [ %i.cos, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i687.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit ] ; 6 uses
  %i.cod = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i687
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688 = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687, 12
  %i.coe = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !24
  store i32 %i.cof, ptr %i.cod, align 4, !tbaa !24
  %i.cog = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687, 1 ; 2 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %i.cog
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.1 = mul nuw nsw i64 %i.cog, 12
  %i.coi = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.1
  %i.coj = load i32, ptr %i.coi, align 4, !tbaa !24
  store i32 %i.coj, ptr %i.coh, align 4, !tbaa !24
  %i.cok = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687, 2 ; 2 uses
  %i.col = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %i.cok
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.2 = mul nuw nsw i64 %i.cok, 12
  %i.com = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.2
  %i.con = load i32, ptr %i.com, align 4, !tbaa !24
  store i32 %i.con, ptr %i.col, align 4, !tbaa !24
  %i.coo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687, 3 ; 2 uses
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %i.coo
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.3 = mul nuw nsw i64 %i.coo, 12
  %i.coq = getelementptr inbounds nuw i8, ptr %i.bmj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i688.3
  %i.cor = load i32, ptr %i.coq, align 4, !tbaa !24
  store i32 %i.cor, ptr %i.cop, align 4, !tbaa !24
  %i.cos = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i687, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i689.3 = icmp eq i64 %i.cos, %i.bgk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i689.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit690, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686, !llvm.loop !1122

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit690: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i686, %bb.cy
  invoke void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %26, i32 noundef 9, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.cz unwind label %bb.i

bb.cz:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi1ELin1ELi3EEELin1ELi1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit690
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %sext2745 = mul i64 %i.b, 25769803776
  %i.cot = ashr exact i64 %sext2745, 32           ; 3 uses
  %i.cou = load ptr, ptr %29, align 8, !tbaa !54, !noalias !1215 ; 2 uses
  %i.cov = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.cow = load i64, ptr %i.cov, align 8, !tbaa !55, !noalias !1215 ; 2 uses
  store ptr %i.cou, ptr %39, align 8, !tbaa !64, !alias.scope !1215
  %i.cox = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %i.cot, ptr %i.cox, align 8, !tbaa !33, !alias.scope !1215
  %i.coy = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 1, ptr %i.coy, align 8, !tbaa !33, !alias.scope !1215
  %i.coz = getelementptr inbounds nuw i8, ptr %39, i64 24
  store ptr %29, ptr %i.coz, align 8, !tbaa !66, !alias.scope !1215
  %i.cpa = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.cpb = getelementptr inbounds nuw i8, ptr %39, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cpa, i8 0, i64 16, i1 false)
  store i64 %i.cow, ptr %i.cpb, align 8, !tbaa !69, !alias.scope !1215
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store double 2.400000e+01, ptr %9, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %i.cou, ptr %10, align 8, !tbaa !73
  %i.cpc = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.cow, ptr %i.cpc, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %10, ptr %11, align 8, !tbaa !75
  %i.cpd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.cpd, align 8, !tbaa !85
  %i.cpe = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.cpe, align 8, !tbaa !87
  %i.cpf = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %39, ptr %i.cpf, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %sext2746 = mul i64 %i.b, 12884901888
  %i.cpg = ashr exact i64 %sext2746, 32
  %i.cph = load ptr, ptr %29, align 8, !tbaa !54, !noalias !1216
  %i.cpi = getelementptr inbounds [8 x i8], ptr %i.cph, i64 %i.cot ; 2 uses
  %i.cpj = load i64, ptr %i.cov, align 8, !tbaa !55, !noalias !1216 ; 2 uses
  store ptr %i.cpi, ptr %40, align 8, !tbaa !64, !alias.scope !1216
  %i.cpk = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.cpg, ptr %i.cpk, align 8, !tbaa !33, !alias.scope !1216
  %i.cpl = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 1, ptr %i.cpl, align 8, !tbaa !33, !alias.scope !1216
  %i.cpm = getelementptr inbounds nuw i8, ptr %40, i64 24
  store ptr %29, ptr %i.cpm, align 8, !tbaa !66, !alias.scope !1216
  %i.cpn = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 %i.cot, ptr %i.cpn, align 8, !tbaa !33, !alias.scope !1216
  %i.cpo = getelementptr inbounds nuw i8, ptr %40, i64 40
  store i64 0, ptr %i.cpo, align 8, !tbaa !33, !alias.scope !1216
  %i.cpp = getelementptr inbounds nuw i8, ptr %40, i64 48
  store i64 %i.cpj, ptr %i.cpp, align 8, !tbaa !69, !alias.scope !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store double 1.200000e+01, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %i.cpi, ptr %6, align 8, !tbaa !73
  %i.cpq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.cpj, ptr %i.cpq, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %6, ptr %7, align 8, !tbaa !75
  %i.cpr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.cpr, align 8, !tbaa !85
  %i.cps = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.cps, align 8, !tbaa !87
  %i.cpt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %40, ptr %i.cpt, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.dc:                                            ; preds = %bb.cz
  %i.cpu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  br label %bb.df

bb.dd:                                            ; preds = %bb.da
  %i.cpv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  br label %bb.df

_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block3435, %bb.b, %._crit_edge.i.i.i.i.i.i, %bb.db, %bb.cm
  %i.cpw = sext i32 %3 to i64                     ; 2 uses
  invoke void @_ZN3igl6sparseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEdEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 noundef %i.cpw, i64 noundef %i.cpw, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.de unwind label %bb.i

bb.de:                                            ; preds = %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit
  %i.cpx = load ptr, ptr %29, align 8, !tbaa !54
  call void @free(ptr noundef %i.cpx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  %i.cpy = load ptr, ptr %28, align 8, !tbaa !28
  call void @free(ptr noundef %i.cpy) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  %i.cpz = load ptr, ptr %27, align 8, !tbaa !28
  call void @free(ptr noundef %i.cpz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %i.cqa = load ptr, ptr %26, align 8, !tbaa !54
  call void @free(ptr noundef %i.cqa) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  ret void

bb.df:                                            ; preds = %bb.dd, %bb.dc, %.body, %bb.i
  %.pn316 = phi { ptr, i32 } [ %i.ie, %bb.i ], [ %i.cpv, %bb.dd ], [ %i.cpu, %bb.dc ], [ %.pn300.pn.pn.pn.pn.pn.pn.pn.pn, %.body ]
  %i.cqb = load ptr, ptr %29, align 8, !tbaa !54
  call void @free(ptr noundef %i.cqb) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  %i.cqc = load ptr, ptr %28, align 8, !tbaa !28
  call void @free(ptr noundef %i.cqc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  %i.cqd = load ptr, ptr %27, align 8, !tbaa !28
  call void @free(ptr noundef %i.cqd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.c
  %.pn316.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn316, %bb.df ], [ %i.d, %bb.c ]
  %i.cqe = load ptr, ptr %26, align 8, !tbaa !54
  call void @free(ptr noundef %i.cqe) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  resume { ptr, i32 } %.pn316.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !99     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 4 uses
  %i.d = mul nsw i64 %i.c, 3                      ; 9 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %i.g = sdiv i64 %i.d, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load <4 x i32>, ptr %i.a, align 16, !tbaa !22 ; 3 uses
  %i.j = icmp sgt i64 %i.c, 2
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <4 x i32>, ptr %i.k, align 16, !tbaa !22 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.c, 5
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.l, %bb.c ], [ %i.w, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.i, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.o = icmp sgt i64 %i.h, %i.f
  br i1 %i.o, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.s, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ]
  %i.p = phi <4 x i32> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.r = load <4 x i32>, ptr %i.q, align 16, !tbaa !22
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !22
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.v) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.x = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1217

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.z = load <4 x i32>, ptr %i.y, align 16, !tbaa !22
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.i, %bb.b ], [ %i.aa, %bb.d ], [ %i.n, %._crit_edge.i.i.i.i ]
  %i.ab = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ac = icmp slt i64 %i.h, %i.d
  br i1 %i.ac, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ad = sub i64 %i.d, %i.h                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  %i.ae = add i64 %i.h, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !24
  %wide.load25 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !24
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi24, <4 x i32> %wide.load25) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1218

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ai, <4 x i32> %i.aj)
  %i.al = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader47

.lr.ph84.i.i.i.i.preheader47:                     ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.h, %.lr.ph84.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ab, %.lr.ph84.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader47, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader47 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ao, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader47 ]
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.an) ; 2 uses
  %i.ap = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !1219

bb.f:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.ar = icmp sgt i64 %i.c, 0
  br i1 %i.ar, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.as = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check27, label %.lr.ph89.i.i.i.i.preheader44, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec29 = and i64 %i.as, -8                    ; 3 uses
  %i.at = or disjoint i64 %n.vec29, 1
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat31, %vector.ph28 ], [ %i.ax, %vector.body32 ]
  %vec.phi35 = phi <4 x i32> [ %broadcast.splat31, %vector.ph28 ], [ %i.ay, %vector.body32 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %wide.load36 = load <4 x i32>, ptr %i.av, align 4, !tbaa !24
  %wide.load37 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !24
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi34, <4 x i32> %wide.load36) ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi35, <4 x i32> %wide.load37) ; 2 uses
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.az, label %middle.block39, label %vector.body32, !llvm.loop !1220

middle.block39:                                   ; preds = %vector.body32
  %rdx.minmax40 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax40) ; 2 uses
  %cmp.n41 = icmp eq i64 %i.as, %n.vec29
  br i1 %cmp.n41, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader44

.lr.ph89.i.i.i.i.preheader44:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block39
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.at, %middle.block39 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.aq, %.lr.ph89.i.i.i.i.preheader ], [ %i.ba, %middle.block39 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader44, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader44 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader44 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bc) ; 2 uses
  %i.be = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.be, %i.d
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !1221

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block39, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %i.aq, %bb.f ], [ %i.ab, %bb.e ], [ %i.ba, %middle.block39 ], [ %i.al, %middle.block ], [ %i.ao, %.lr.ph84.i.i.i.i ]
  %i.bf = add nsw i32 %.3.i.i.i.i, 1
  tail call void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.503", align 8 ; 4 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.507", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::div_assign_op", align 1 ; 3 uses
  %13 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %14 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %15 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %16 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %17 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %18 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %19 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %20 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %21 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %22 = alloca %"class.Eigen::Block.52", align 8  ; 9 uses
  %23 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %24 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %25 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %26 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %27 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %28 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %29 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %30 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %31 = alloca %"struct.Eigen::internal::evaluator.328", align 8 ; 5 uses
  %32 = alloca %"struct.Eigen::internal::evaluator.471", align 8 ; 5 uses
  %33 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.476", align 8 ; 7 uses
  %34 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %35 = alloca %"struct.Eigen::internal::assign_op.281", align 1 ; 3 uses
  %36 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %37 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %38 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %39 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %40 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %41 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %42 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %43 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %44 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %45 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %46 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %47 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %48 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %49 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %50 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %51 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %52 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %53 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %54 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %55 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %56 = alloca %"struct.Eigen::internal::evaluator.580", align 8 ; 5 uses
  %57 = alloca %"struct.Eigen::internal::evaluator.257", align 8 ; 5 uses
  %58 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.585", align 8 ; 7 uses
  %59 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %60 = alloca %"class.Eigen::Matrix.29", align 8 ; 11 uses
  %61 = alloca %"class.Eigen::Matrix.38", align 8 ; 37 uses
  %62 = alloca %"class.Eigen::Matrix.38", align 8 ; 27 uses
  %63 = alloca %"class.Eigen::Matrix.29", align 8 ; 26 uses
  %64 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %65 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %66 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %67 = alloca %"class.Eigen::Block.52", align 8  ; 10 uses
  %68 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %69 = alloca %"class.Eigen::Block.52", align 8  ; 11 uses
  %70 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %71 = alloca %"class.Eigen::Matrix.68", align 8 ; 11 uses
  %72 = alloca %"class.Eigen::CwiseBinaryOp.143", align 8 ; 6 uses
  %73 = alloca %"class.Eigen::Array", align 8     ; 9 uses
  %74 = alloca %"class.Eigen::CwiseBinaryOp.170", align 8 ; 6 uses
  %75 = alloca %"class.Eigen::Matrix.68", align 8 ; 14 uses
  %76 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %77 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %78 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %79 = alloca %"class.Eigen::Block.242", align 8 ; 10 uses
  %80 = alloca %"class.Eigen::Block.242", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 25 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !100  ; 8 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %60)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  switch i32 %2, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit [
    i32 0, label %bb.d
    i32 1, label %bb.q
    i32 2, label %bb.dj
    i32 3, label %bb.q
  ]

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.d:                                             ; preds = %bb.b
  %sext2796 = mul i64 %i.b, 12884901888
  %i.e = ashr exact i64 %sext2796, 32             ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.e, i64 noundef 1)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.e, i64 noundef 1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.e, i64 noundef 1)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.f = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1512
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %sext2797 = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext2797, 32             ; 5 uses
  %i.h = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1513 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !1513 ; 2 uses
  store ptr %i.h, ptr %64, align 8, !tbaa !32, !alias.scope !1513
  %i.k = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.g, ptr %i.k, align 8, !tbaa !33, !alias.scope !1513
  %i.l = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %i.l, align 8, !tbaa !33, !alias.scope !1513
  %i.m = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %61, ptr %i.m, align 8, !tbaa !35, !alias.scope !1513
  %i.n = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 %i.j, ptr %i.o, align 8, !tbaa !38, !alias.scope !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #14
  store ptr %i.f, ptr %56, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.q = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.q, ptr %i.p, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #14
  store ptr %i.h, ptr %57, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i64 %i.j, ptr %i.r, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #14
  store ptr %57, ptr %58, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %56, ptr %i.s, align 8, !tbaa !1514
  %i.t = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %59, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %58, i64 24
  store ptr %64, ptr %i.u, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %58)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #14
  %i.v = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1515
  %i.w = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1515 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.y = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1516
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.g ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !1516 ; 2 uses
  store ptr %i.z, ptr %65, align 8, !tbaa !32, !alias.scope !1516
  %i.ab = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %i.g, ptr %i.ab, align 8, !tbaa !33, !alias.scope !1516
  %i.ac = getelementptr inbounds nuw i8, ptr %65, i64 16
  store i64 1, ptr %i.ac, align 8, !tbaa !33, !alias.scope !1516
  %i.ad = getelementptr inbounds nuw i8, ptr %65, i64 24
  store ptr %61, ptr %i.ad, align 8, !tbaa !35, !alias.scope !1516
  %i.ae = getelementptr inbounds nuw i8, ptr %65, i64 32
  store i64 %i.g, ptr %i.ae, align 8, !tbaa !33, !alias.scope !1516
  %i.af = getelementptr inbounds nuw i8, ptr %65, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !33, !alias.scope !1516
  %i.ag = getelementptr inbounds nuw i8, ptr %65, i64 48
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !38, !alias.scope !1516
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #14
  store ptr %i.x, ptr %52, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 %i.w, ptr %i.ah, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #14
  store ptr %i.z, ptr %53, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 %i.aa, ptr %i.ai, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #14
  store ptr %53, ptr %54, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %52, ptr %i.aj, align 8, !tbaa !1514
  %i.ak = getelementptr inbounds nuw i8, ptr %54, i64 16
  store ptr %55, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %65, ptr %i.al, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #14
  %i.am = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1517
  %i.an = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1517 ; 2 uses
  %.idx2798 = shl nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %.idx2798
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #14
  %i.ap = shl nsw i32 %i.c, 1
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.ar = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1518
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load i64, ptr %i.i, align 8, !tbaa !29, !noalias !1518 ; 2 uses
  store ptr %i.as, ptr %66, align 8, !tbaa !32, !alias.scope !1518
  %i.au = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.g, ptr %i.au, align 8, !tbaa !33, !alias.scope !1518
  %i.av = getelementptr inbounds nuw i8, ptr %66, i64 16
  store i64 1, ptr %i.av, align 8, !tbaa !33, !alias.scope !1518
  %i.aw = getelementptr inbounds nuw i8, ptr %66, i64 24
  store ptr %61, ptr %i.aw, align 8, !tbaa !35, !alias.scope !1518
  %i.ax = getelementptr inbounds nuw i8, ptr %66, i64 32
  store i64 %i.aq, ptr %i.ax, align 8, !tbaa !33, !alias.scope !1518
  %i.ay = getelementptr inbounds nuw i8, ptr %66, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !33, !alias.scope !1518
  %i.az = getelementptr inbounds nuw i8, ptr %66, i64 48
  store i64 %i.at, ptr %i.az, align 8, !tbaa !38, !alias.scope !1518
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #14
  store ptr %i.ao, ptr %48, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 %i.an, ptr %i.ba, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #14
  store ptr %i.as, ptr %49, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 %i.at, ptr %i.bb, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #14
  store ptr %49, ptr %50, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %48, ptr %i.bc, align 8, !tbaa !1514
  %i.bd = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %51, ptr %i.bd, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %50, i64 24
  store ptr %66, ptr %i.be, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #14
  %i.bf = load ptr, ptr %61, align 8, !tbaa !28   ; 8 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !29  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.j
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.bh, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j
  %i.bk = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc ], [ %i.bh, %bb.j ] ; 7 uses
  %i.bl = load ptr, ptr %62, align 8, !tbaa !28   ; 8 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = sdiv i64 %i.bk, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 6 uses
  %i.bp = icmp sgt i64 %i.bk, 3
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.k
  %i.bq = icmp slt i64 %i.bo, %i.bk
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.br = sub i64 %i.bk, %i.bo                    ; 3 uses
  %min.iters.check3615 = icmp ult i64 %i.br, 8
  %i.bs = sub i64 %i.bg, %i.bm
  %diff.check3613 = icmp ugt i64 %i.bs, -32
  %or.cond = select i1 %min.iters.check3615, i1 true, i1 %diff.check3613
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640, label %vector.ph3616

vector.ph3616:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec3617 = and i64 %i.br, -8                  ; 3 uses
  %i.bt = add i64 %i.bo, %n.vec3617
  br label %vector.body3618

vector.body3618:                                  ; preds = %vector.body3618, %vector.ph3616
  %index3619 = phi i64 [ 0, %vector.ph3616 ], [ %index.next3622, %vector.body3618 ] ; 2 uses
  %i.bu = add i64 %i.bo, %index3619               ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bu ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load3620 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !24
  %wide.load3621 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %wide.load3620, ptr %i.bv, align 4, !tbaa !24
  store <4 x i32> %wide.load3621, ptr %i.by, align 4, !tbaa !24
  %index.next3622 = add nuw i64 %index3619, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next3622, %n.vec3617
  br i1 %i.bz, label %middle.block3623, label %vector.body3618, !llvm.loop !1234

middle.block3623:                                 ; preds = %vector.body3618
  %cmp.n3624 = icmp eq i64 %i.br, %n.vec3617
  br i1 %cmp.n3624, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640

.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block3623
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block3623 ] ; 4 uses
  %i.ca = sub i64 %i.bk, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter3871 = and i64 %i.ca, 3                ; 2 uses
  %lcmp.mod3872.not = icmp eq i64 %xtraiter3871, 0
  br i1 %lcmp.mod3872.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640 ] ; 3 uses
  %prol.iter3873 = phi i64 [ %prol.iter3873.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640 ]
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !24
  %i.ce = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter3873.next = add i64 %prol.iter3873, 1 ; 2 uses
  %prol.iter3873.cmp.not = icmp eq i64 %prol.iter3873.next, %xtraiter3871
  br i1 %prol.iter3873.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1235

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader3640 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.cf = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bk
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !24
  %i.ck = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !24
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !24
  %i.co = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.co
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !24
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !24
  %i.cs = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !24
  %i.cw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cw, %i.bk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1236

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.011.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.011.i.i.i.i.i.i.i.i
  %i.cz = load <2 x i64>, ptr %i.cy, align 16, !tbaa !22
  store <2 x i64> %i.cz, ptr %i.cx, align 16, !tbaa !22
  %i.da = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.bo
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block3623, %._crit_edge.i.i.i.i.i.i.i.i
  invoke void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %60, i32 noundef 3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %63)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.dd = load ptr, ptr %63, align 8, !tbaa !54   ; 3 uses
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !55 ; 6 uses
  %i.df = sdiv i64 %i.de, 2
  %i.dg = shl nsw i64 %i.df, 1                    ; 6 uses
  %i.dh = icmp sgt i64 %i.de, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l
  %i.di = icmp slt i64 %i.dg, %i.de
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dj = sub i64 %i.de, %i.dg                    ; 2 uses
  %min.iters.check3627 = icmp ult i64 %i.dj, 2
  br i1 %min.iters.check3627, label %.lr.ph.i.i.i.i.i.i.i.preheader3639, label %vector.ph3628

vector.ph3628:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dk = and i64 %i.de, 1                        ; 2 uses
  %n.vec3629 = sub nuw i64 %i.dj, %i.dk           ; 2 uses
  %i.dl = add i64 %i.dg, %n.vec3629
  %i.dm = getelementptr [8 x i8], ptr %i.dd, i64 %i.dg
  br label %vector.body3630

vector.body3630:                                  ; preds = %vector.body3630, %vector.ph3628
  %index3631 = phi i64 [ 0, %vector.ph3628 ], [ %index.next3633, %vector.body3630 ] ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index3631 ; 2 uses
  %wide.load3632 = load <2 x double>, ptr %i.dn, align 8, !tbaa !57
  %i.do = fdiv <2 x double> %wide.load3632, splat (double 6.000000e+00)
  store <2 x double> %i.do, ptr %i.dn, align 8, !tbaa !57
  %index.next3633 = add nuw i64 %index3631, 2     ; 2 uses
  %i.dp = icmp eq i64 %index.next3633, %n.vec3629
  br i1 %i.dp, label %middle.block3634, label %vector.body3630, !llvm.loop !1237

middle.block3634:                                 ; preds = %vector.body3630
  %cmp.n3635 = icmp eq i64 %i.dk, 0
  br i1 %cmp.n3635, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader3639

.lr.ph.i.i.i.i.i.i.i.preheader3639:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block3634
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dl, %middle.block3634 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader3639, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader3639 ] ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !57
  %i.ds = fdiv double %i.dr, 6.000000e+00
  store double %i.ds, ptr %i.dq, align 8, !tbaa !57
  %i.dt = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, %i.de
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1238

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.dv = load <2 x double>, ptr %i.du, align 16, !tbaa !22
  %i.dw = fdiv <2 x double> %i.dv, splat (double 6.000000e+00)
  store <2 x double> %i.dw, ptr %i.du, align 16, !tbaa !22
  %i.dx = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.dy = icmp slt i64 %i.dx, %i.dg
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1

bb.m:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i331, %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, %bb.dl, %bb.dk, %bb.dj, %bb.s, %bb.r, %bb.q, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit, %bb.f, %bb.e, %bb.d
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.n:                                             ; preds = %bb.g
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #14
  br label %bb.en

bb.o:                                             ; preds = %bb.h
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #14
  br label %bb.en

bb.p:                                             ; preds = %bb.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #14
  br label %bb.en

bb.q:                                             ; preds = %bb.b, %bb.b
  %sext2786 = mul i64 %i.b, 12884901888
  %i.ed = ashr exact i64 %sext2786, 32            ; 3 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %61, i64 noundef %i.ed, i64 noundef 1)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.ed, i64 noundef 1)
          to label %bb.s unwind label %bb.m

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.ed, i64 noundef 1)
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.s
  %i.ee = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1519
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %sext2787 = shl i64 %i.b, 32
  %i.ef = ashr exact i64 %sext2787, 32            ; 11 uses
  %i.eg = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1520 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !29, !noalias !1520 ; 2 uses
  store ptr %i.eg, ptr %67, align 8, !tbaa !32, !alias.scope !1520
  %i.ej = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 %i.ef, ptr %i.ej, align 8, !tbaa !33, !alias.scope !1520
  %i.ek = getelementptr inbounds nuw i8, ptr %67, i64 16
  store i64 1, ptr %i.ek, align 8, !tbaa !33, !alias.scope !1520
  %i.el = getelementptr inbounds nuw i8, ptr %67, i64 24
  store ptr %61, ptr %i.el, align 8, !tbaa !35, !alias.scope !1520
  %i.em = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %67, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  store i64 %i.ei, ptr %i.en, align 8, !tbaa !38, !alias.scope !1520
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #14
  store ptr %i.ee, ptr %44, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #14
  store ptr %i.eg, ptr %45, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 %i.ei, ptr %i.eq, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #14
  store ptr %45, ptr %46, align 8, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %44, ptr %i.er, align 8, !tbaa !1514
  %i.es = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %47, ptr %i.es, align 8, !tbaa !48
  %i.et = getelementptr inbounds nuw i8, ptr %46, i64 24
  store ptr %67, ptr %i.et, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.u unwind label %bb.cy

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  %i.eu = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1521
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1521 ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.ex = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1522
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ef ; 2 uses
  %i.ez = load i64, ptr %i.eh, align 8, !tbaa !29, !noalias !1522 ; 2 uses
  store ptr %i.ey, ptr %68, align 8, !tbaa !32, !alias.scope !1522
  %i.fa = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 %i.ef, ptr %i.fa, align 8, !tbaa !33, !alias.scope !1522
  %i.fb = getelementptr inbounds nuw i8, ptr %68, i64 16
  store i64 1, ptr %i.fb, align 8, !tbaa !33, !alias.scope !1522
  %i.fc = getelementptr inbounds nuw i8, ptr %68, i64 24
  store ptr %61, ptr %i.fc, align 8, !tbaa !35, !alias.scope !1522
  %i.fd = getelementptr inbounds nuw i8, ptr %68, i64 32
  store i64 %i.ef, ptr %i.fd, align 8, !tbaa !33, !alias.scope !1522
  %i.fe = getelementptr inbounds nuw i8, ptr %68, i64 40
  store i64 0, ptr %i.fe, align 8, !tbaa !33, !alias.scope !1522
  %i.ff = getelementptr inbounds nuw i8, ptr %68, i64 48
  store i64 %i.ez, ptr %i.ff, align 8, !tbaa !38, !alias.scope !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #14
  store ptr %i.ew, ptr %40, align 8, !tbaa !102
  %i.fg = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 %i.ev, ptr %i.fg, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #14
  store ptr %i.ey, ptr %41, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 %i.ez, ptr %i.fh, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #14
  store ptr %41, ptr %42, align 8, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %40, ptr %i.fi, align 8, !tbaa !1514
  %i.fj = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %43, ptr %i.fj, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %68, ptr %i.fk, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.v unwind label %bb.cz

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  %i.fl = load ptr, ptr %1, align 8, !tbaa !99, !noalias !1523
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !100, !noalias !1523 ; 2 uses
  %.idx2788 = shl nsw i64 %i.fm, 3
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %.idx2788
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #14
  %i.fo = shl nsw i32 %i.c, 1
  %i.fp = sext i32 %i.fo to i64                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.fq = load ptr, ptr %61, align 8, !tbaa !28, !noalias !1524
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fp ; 2 uses
  %i.fs = load i64, ptr %i.eh, align 8, !tbaa !29, !noalias !1524 ; 2 uses
  store ptr %i.fr, ptr %69, align 8, !tbaa !32, !alias.scope !1524
  %i.ft = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 %i.ef, ptr %i.ft, align 8, !tbaa !33, !alias.scope !1524
  %i.fu = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i64 1, ptr %i.fu, align 8, !tbaa !33, !alias.scope !1524
  %i.fv = getelementptr inbounds nuw i8, ptr %69, i64 24
  store ptr %61, ptr %i.fv, align 8, !tbaa !35, !alias.scope !1524
  %i.fw = getelementptr inbounds nuw i8, ptr %69, i64 32
  store i64 %i.fp, ptr %i.fw, align 8, !tbaa !33, !alias.scope !1524
  %i.fx = getelementptr inbounds nuw i8, ptr %69, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !33, !alias.scope !1524
  %i.fy = getelementptr inbounds nuw i8, ptr %69, i64 48
  store i64 %i.fs, ptr %i.fy, align 8, !tbaa !38, !alias.scope !1524
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #14
  store ptr %i.fn, ptr %36, align 8, !tbaa !102
  %i.fz = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 %i.fm, ptr %i.fz, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #14
  store ptr %i.fr, ptr %37, align 8, !tbaa !43
  %i.ga = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 %i.fs, ptr %i.ga, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #14
  store ptr %37, ptr %38, align 8, !tbaa !45
  %i.gb = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %36, ptr %i.gb, align 8, !tbaa !1514
  %i.gc = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %39, ptr %i.gc, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %69, ptr %i.gd, align 8, !tbaa !50
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.w unwind label %bb.da

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #14
  %i.ge = load ptr, ptr %61, align 8, !tbaa !28   ; 8 uses
  %i.gf = ptrtoaddr ptr %i.ge to i64
  %i.gg = load i64, ptr %i.eh, align 8, !tbaa !29 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !29
  %.not.i.i.i.i.i.i.i.i330 = icmp eq i64 %i.gi, %i.gg
  br i1 %.not.i.i.i.i.i.i.i.i330, label %bb.x, label %thread-pre-split.i.i.i.i.i.i.i331

thread-pre-split.i.i.i.i.i.i.i331:                ; preds = %bb.w
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %62, i64 noundef %i.gg, i64 noundef 1)
          to label %.noexc339 unwind label %bb.m

.noexc339:                                        ; preds = %thread-pre-split.i.i.i.i.i.i.i331
  %.pr.i.i.i.i.i.i.i332 = load i64, ptr %i.gh, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %.noexc339, %bb.w
  %i.gj = phi i64 [ %.pr.i.i.i.i.i.i.i332, %.noexc339 ], [ %i.gg, %bb.w ] ; 7 uses
  %i.gk = load ptr, ptr %62, align 8, !tbaa !28   ; 8 uses
  %i.gl = ptrtoaddr ptr %i.gk to i64
  %i.gm = sdiv i64 %i.gj, 4
  %i.gn = shl nsw i64 %i.gm, 2                    ; 6 uses
  %i.go = icmp sgt i64 %i.gj, 3
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i.i.i337, label %._crit_edge.i.i.i.i.i.i.i.i333

._crit_edge.i.i.i.i.i.i.i.i333:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i337, %bb.x
  %i.gp = icmp slt i64 %i.gn, %i.gj
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i.i.i.i.i334.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEaSERKS1_.exit340

.lr.ph.i.i.i.i.i.i.i.i.i334.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i333
  %i.gq = sub i64 %i.gj, %i.gn                    ; 3 uses
  %min.iters.check3358 = icmp ult i64 %i.gq, 8
  %i.gr = sub i64 %i.gf, %i.gl
  %diff.check3356 = icmp ugt i64 %i.gr, -32
  %or.cond3637 = select i1 %min.iters.check3358, i1 true, i1 %diff.check3356
  br i1 %or.cond3637, label %.lr.ph.i.i.i.i.i.i.i.i.i334.preheader3654, label %vector.ph3359

vector.ph3359:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i334.preheader
  %n.vec3360 = and i64 %i.gq, -8                  ; 3 uses
  %i.gs = add i64 %i.gn, %n.vec3360
  br label %vector.body3361

vector.body3361:                                  ; preds = %vector.body3361, %vector.ph3359
end_hunk_4
begin_hunk_5_@_ZN3igl20massmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_14MassMatrixTypeEiRNS1_12SparseMatrixIT1_Li0EiEE:bb.a

vector.ph3345:                                    ; preds = %vector.memcheck3341
  %n.vec3346 = and i64 %i.ddb, -8                 ; 3 uses
  %i.ddn = add i64 %i.dbq, %n.vec3346
  br label %vector.body3347

vector.body3347:                                  ; preds = %vector.body3347, %vector.ph3345
  %index3348 = phi i64 [ 0, %vector.ph3345 ], [ %index.next3351, %vector.body3347 ] ; 2 uses
  %i.ddo = add i64 %i.dbq, %index3348             ; 2 uses
  %i.ddp = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.ddo ; 2 uses
  %i.ddq = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.ddo ; 2 uses
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddq, i64 16
  %wide.load3349 = load <4 x i32>, ptr %i.ddq, align 4, !tbaa !24
  %wide.load3350 = load <4 x i32>, ptr %i.ddr, align 4, !tbaa !24
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddp, i64 16
  store <4 x i32> %wide.load3349, ptr %i.ddp, align 4, !tbaa !24
  store <4 x i32> %wide.load3350, ptr %i.dds, align 4, !tbaa !24
  %index.next3351 = add nuw i64 %index3348, 8     ; 2 uses
  %i.ddt = icmp eq i64 %index.next3351, %n.vec3346
  br i1 %i.ddt, label %middle.block3352, label %vector.body3347, !llvm.loop !1505

middle.block3352:                                 ; preds = %vector.body3347
  %cmp.n3353 = icmp eq i64 %i.ddb, %n.vec3346
  br i1 %cmp.n3353, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655: ; preds = %vector.memcheck3341, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader, %middle.block3352
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph = phi i64 [ %i.dbq, %vector.memcheck3341 ], [ %i.dbq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader ], [ %i.ddn, %middle.block3352 ] ; 4 uses
  %i.ddu = sub i64 %i.dbb, %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph
  %xtraiter3777 = and i64 %i.ddu, 3               ; 2 uses
  %lcmp.mod3778.not = icmp eq i64 %xtraiter3777, 0
  br i1 %lcmp.mod3778.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol = phi i64 [ %i.ddy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ] ; 3 uses
  %prol.iter3779 = phi i64 [ %prol.iter3779.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ]
  %i.ddv = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol
  %i.ddw = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol
  %i.ddx = load i32, ptr %i.ddw, align 4, !tbaa !24
  store i32 %i.ddx, ptr %i.ddv, align 4, !tbaa !24
  %i.ddy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.prol, 1 ; 2 uses
  %prol.iter3779.next = add i64 %prol.iter3779, 1 ; 2 uses
  %prol.iter3779.cmp.not = icmp eq i64 %prol.iter3779.next, %xtraiter3777
  br i1 %prol.iter3779.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol, !llvm.loop !1506

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.preheader3655 ], [ %i.ddy, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol ]
  %i.ddz = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.ph, %i.dbb
  %i.dea = icmp ugt i64 %i.ddz, -4
  br i1 %i.dea, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i773 = phi i64 [ %i.deq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772 ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i773.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit ] ; 6 uses
  %i.deb = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773
  %i.dec = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773
  %i.ded = load i32, ptr %i.dec, align 4, !tbaa !24
  store i32 %i.ded, ptr %i.deb, align 4, !tbaa !24
  %i.dee = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 1 ; 2 uses
  %i.def = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dee
  %i.deg = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dee
  %i.deh = load i32, ptr %i.deg, align 4, !tbaa !24
  store i32 %i.deh, ptr %i.def, align 4, !tbaa !24
  %i.dei = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 2 ; 2 uses
  %i.dej = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dei
  %i.dek = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dei
  %i.del = load i32, ptr %i.dek, align 4, !tbaa !24
  store i32 %i.del, ptr %i.dej, align 4, !tbaa !24
  %i.dem = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 3 ; 2 uses
  %i.den = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %i.dem
  %i.deo = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %i.dem
  %i.dep = load i32, ptr %i.deo, align 4, !tbaa !24
  store i32 %i.dep, ptr %i.den, align 4, !tbaa !24
  %i.deq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i773, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i774.3 = icmp eq i64 %i.deq, %i.dbb
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i774.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772, !llvm.loop !1507

.lr.ph.i.i.i.i.i.i.i.i.i.i.i775:                  ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775
  %.021.i.i.i.i.i.i.i.i.i.i.i776 = phi i64 [ %i.deu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i769, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS5_INS6_IKNS7_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i770 ] ; 3 uses
  %i.der = getelementptr inbounds [4 x i8], ptr %i.dbg, i64 %.021.i.i.i.i.i.i.i.i.i.i.i776
  %i.des = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %.021.i.i.i.i.i.i.i.i.i.i.i776
  %i.det = load <2 x i64>, ptr %i.des, align 1, !tbaa !22
  store <2 x i64> %i.det, ptr %i.der, align 16, !tbaa !22
  %i.deu = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i776, 4 ; 2 uses
  %i.dev = icmp slt i64 %i.deu, %i.dbq
  br i1 %i.dev, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i775, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i771, !llvm.loop !1351

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i772, %middle.block3352, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i771
  invoke void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %60, i32 noundef 9, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %63)
          to label %bb.ef unwind label %bb.m

bb.ef:                                            ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_5BlockIKNS1_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEERS3_RKNS_9DenseBaseIT_EE.exit780
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %sext2784 = mul i64 %i.b, 25769803776
  %i.dew = ashr exact i64 %sext2784, 32           ; 3 uses
  %i.dex = load ptr, ptr %63, align 8, !tbaa !54, !noalias !1594 ; 2 uses
  %i.dey = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.dez = load i64, ptr %i.dey, align 8, !tbaa !55, !noalias !1594 ; 2 uses
  store ptr %i.dex, ptr %79, align 8, !tbaa !64, !alias.scope !1594
  %i.dfa = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %i.dew, ptr %i.dfa, align 8, !tbaa !33, !alias.scope !1594
  %i.dfb = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i64 1, ptr %i.dfb, align 8, !tbaa !33, !alias.scope !1594
  %i.dfc = getelementptr inbounds nuw i8, ptr %79, i64 24
  store ptr %63, ptr %i.dfc, align 8, !tbaa !66, !alias.scope !1594
  %i.dfd = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.dfe = getelementptr inbounds nuw i8, ptr %79, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dfd, i8 0, i64 16, i1 false)
  store i64 %i.dez, ptr %i.dfe, align 8, !tbaa !69, !alias.scope !1594
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store double 2.400000e+01, ptr %9, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %i.dex, ptr %10, align 8, !tbaa !73
  %i.dff = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dez, ptr %i.dff, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %10, ptr %11, align 8, !tbaa !75
  %i.dfg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.dfg, align 8, !tbaa !85
  %i.dfh = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %12, ptr %i.dfh, align 8, !tbaa !87
  %i.dfi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %79, ptr %i.dfi, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %sext2785 = mul i64 %i.b, 12884901888
  %i.dfj = ashr exact i64 %sext2785, 32
  %i.dfk = load ptr, ptr %63, align 8, !tbaa !54, !noalias !1595
  %i.dfl = getelementptr inbounds [8 x i8], ptr %i.dfk, i64 %i.dew ; 2 uses
  %i.dfm = load i64, ptr %i.dey, align 8, !tbaa !55, !noalias !1595 ; 2 uses
  store ptr %i.dfl, ptr %80, align 8, !tbaa !64, !alias.scope !1595
  %i.dfn = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %i.dfj, ptr %i.dfn, align 8, !tbaa !33, !alias.scope !1595
  %i.dfo = getelementptr inbounds nuw i8, ptr %80, i64 16
  store i64 1, ptr %i.dfo, align 8, !tbaa !33, !alias.scope !1595
  %i.dfp = getelementptr inbounds nuw i8, ptr %80, i64 24
  store ptr %63, ptr %i.dfp, align 8, !tbaa !66, !alias.scope !1595
  %i.dfq = getelementptr inbounds nuw i8, ptr %80, i64 32
  store i64 %i.dew, ptr %i.dfq, align 8, !tbaa !33, !alias.scope !1595
  %i.dfr = getelementptr inbounds nuw i8, ptr %80, i64 40
  store i64 0, ptr %i.dfr, align 8, !tbaa !33, !alias.scope !1595
  %i.dfs = getelementptr inbounds nuw i8, ptr %80, i64 48
  store i64 %i.dfm, ptr %i.dfs, align 8, !tbaa !69, !alias.scope !1595
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store double 1.200000e+01, ptr %5, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %i.dfl, ptr %6, align 8, !tbaa !73
  %i.dft = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.dfm, ptr %i.dft, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %6, ptr %7, align 8, !tbaa !75
  %i.dfu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.dfu, align 8, !tbaa !85
  %i.dfv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.dfv, align 8, !tbaa !87
  %i.dfw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %80, ptr %i.dfw, align 8, !tbaa !81
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #14
  br label %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit

bb.ei:                                            ; preds = %bb.dm
  %i.dfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ej:                                            ; preds = %.loopexit2810
  %i.dfy = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ek:                                            ; preds = %bb.ef
  %i.dfz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #14
  br label %bb.en

bb.el:                                            ; preds = %bb.eg
  %i.dga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #14
  br label %bb.en

_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block3634, %bb.b, %._crit_edge.i.i.i.i.i.i, %bb.eh, %bb.cx
  %i.dgb = sext i32 %3 to i64                     ; 2 uses
  invoke void @_ZN3igl6sparseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEdEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 noundef %i.dgb, i64 noundef %i.dgb, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.em unwind label %bb.m

bb.em:                                            ; preds = %_ZN5Eigen9DenseBaseINS_12ArrayWrapperINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEdVERKd.exit
  %i.dgc = load ptr, ptr %63, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgc) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #14
  %i.dgd = load ptr, ptr %62, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #14
  %i.dge = load ptr, ptr %61, align 8, !tbaa !28
  call void @free(ptr noundef %i.dge) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #14
  %i.dgf = load ptr, ptr %60, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #14
  ret void

bb.en:                                            ; preds = %bb.ej, %bb.ei, %bb.da, %bb.cz, %bb.cy, %bb.p, %bb.o, %bb.n, %bb.el, %bb.ek, %.body, %bb.m
  %.pn316 = phi { ptr, i32 } [ %i.dz, %bb.m ], [ %i.axq, %bb.da ], [ %i.ea, %bb.n ], [ %i.dfy, %bb.ej ], [ %i.ec, %bb.p ], [ %.pn300.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.axo, %bb.cy ], [ %i.axp, %bb.cz ], [ %i.eb, %bb.o ], [ %i.dga, %bb.el ], [ %i.dfz, %bb.ek ], [ %i.dfx, %bb.ei ]
  %i.dgg = load ptr, ptr %63, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #14
  %i.dgh = load ptr, ptr %62, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #14
  %i.dgi = load ptr, ptr %61, align 8, !tbaa !28
  call void @free(ptr noundef %i.dgi) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #14
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.c
  %.pn316.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn316, %bb.en ], [ %i.d, %bb.c ]
  %i.dgj = load ptr, ptr %60, align 8, !tbaa !54
  call void @free(ptr noundef %i.dgj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #14
  resume { ptr, i32 } %.pn316.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), double noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.i) #14
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !28
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !55
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.i) #14
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !62
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #16
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !54
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !55
  ret void
}

declare void @_ZN3igl6repmatIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EEiiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl6sparseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEdEEvRKT_RKT0_RKT1_mmRNS1_12SparseMatrixIT2_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi4ELi0ELin1ELi4EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1611, !nonnull !104, !align !105 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
end_hunk_5
