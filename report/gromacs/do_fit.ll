Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/do_fit?download=true
inline.NumInlined: 93
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z11do_fit_ndimiiPfPA3_KfPA3_f:bb.a
vector.ph:                                        ; preds = %.preheader29.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %.pre44, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x float> poison, float %.pre46, i64 0
  %broadcast.splat66 = shufflevector <8 x float> %broadcast.splatinsert65, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x float> poison, float %.pre48, i64 0
  %broadcast.splat68 = shufflevector <8 x float> %broadcast.splatinsert67, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %.pre51, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %.pre54, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %.pre56, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %.pre59, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <8 x float> poison, float %.pre62, i64 0
  %broadcast.splat78 = shufflevector <8 x float> %broadcast.splatinsert77, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.c, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec79 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec80 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %i.d = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.e = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat64, <8 x float> %strided.vec79, <8 x float> %i.d)
  %i.f = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat66, <8 x float> %strided.vec80, <8 x float> %i.e)
  %i.g = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat68, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.h = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat70, <8 x float> %strided.vec79, <8 x float> %i.g)
  %i.i = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat72, <8 x float> %strided.vec80, <8 x float> %i.h)
  %i.j = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat74, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat76, <8 x float> %strided.vec79, <8 x float> %i.j)
  %i.l = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat78, <8 x float> %strided.vec80, <8 x float> %i.k)
  %i.m = shufflevector <8 x float> %i.f, <8 x float> %i.i, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.n = shufflevector <8 x float> %i.l, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.m, <16 x float> %i.n, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.c, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader29.preheader81

.preheader29.preheader81:                         ; preds = %.preheader29.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader29.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader81, %.preheader29
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader29 ], [ %indvars.iv.ph, %.preheader29.preheader81 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv ; 4 uses
  %.sroa.0.0.copyload = load float, ptr %i.p, align 4, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %.pre, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.r = tail call float @llvm.fmuladd.f32(float %.pre44, float %.sroa.6.0.copyload, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %.pre46, float %.sroa.9.0.copyload, float %i.r)
  store float %i.s, ptr %i.p, align 4, !tbaa !9
  %i.t = tail call float @llvm.fmuladd.f32(float %.pre48, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.u = tail call float @llvm.fmuladd.f32(float %.pre51, float %.sroa.6.0.copyload, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.pre54, float %.sroa.9.0.copyload, float %i.u)
  store float %i.v, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9
  %i.w = tail call float @llvm.fmuladd.f32(float %.pre56, float %.sroa.0.0.copyload, float 0.000000e+00)
  %i.x = tail call float @llvm.fmuladd.f32(float %.pre59, float %.sroa.6.0.copyload, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %.pre62, float %.sroa.9.0.copyload, float %i.x)
  store float %i.y, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader29, !llvm.loop !53

._crit_edge:                                      ; preds = %.preheader29, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef 3, i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader29.preheader.i, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit

.preheader29.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  %.pre.i = load float, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre44.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre46.i = load float, ptr %.phi.trans.insert45.i, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre48.i = load float, ptr %.phi.trans.insert47.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert50.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre51.i = load float, ptr %.phi.trans.insert50.i, align 16, !tbaa !9 ; 2 uses
  %.phi.trans.insert53.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre54.i = load float, ptr %.phi.trans.insert53.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre56.i = load float, ptr %.phi.trans.insert55.i, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert58.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre59.i = load float, ptr %.phi.trans.insert58.i, align 4, !tbaa !9 ; 2 uses
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre62.i = load float, ptr %.phi.trans.insert61.i, align 16, !tbaa !9 ; 2 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.preheader29.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <8 x float> poison, float %.pre44.i, i64 0
  %broadcast.splat4 = shufflevector <8 x float> %broadcast.splatinsert3, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x float> poison, float %.pre46.i, i64 0
  %broadcast.splat6 = shufflevector <8 x float> %broadcast.splatinsert5, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <8 x float> poison, float %.pre48.i, i64 0
  %broadcast.splat8 = shufflevector <8 x float> %broadcast.splatinsert7, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> poison, float %.pre51.i, i64 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> poison, float %.pre54.i, i64 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert13 = insertelement <8 x float> poison, float %.pre56.i, i64 0
  %broadcast.splat14 = shufflevector <8 x float> %broadcast.splatinsert13, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <8 x float> poison, float %.pre59.i, i64 0
  %broadcast.splat16 = shufflevector <8 x float> %broadcast.splatinsert15, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert17 = insertelement <8 x float> poison, float %.pre62.i, i64 0
  %broadcast.splat18 = shufflevector <8 x float> %broadcast.splatinsert17, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.c, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 3 uses
  %strided.vec19 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 3 uses
  %strided.vec20 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 3 uses
  %i.d = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.e = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat4, <8 x float> %strided.vec19, <8 x float> %i.d)
  %i.f = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat6, <8 x float> %strided.vec20, <8 x float> %i.e)
  %i.g = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat8, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.h = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat10, <8 x float> %strided.vec19, <8 x float> %i.g)
  %i.i = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat12, <8 x float> %strided.vec20, <8 x float> %i.h)
  %i.j = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat14, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat16, <8 x float> %strided.vec19, <8 x float> %i.j)
  %i.l = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat18, <8 x float> %strided.vec20, <8 x float> %i.k)
  %i.m = shufflevector <8 x float> %i.f, <8 x float> %i.i, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.n = shufflevector <8 x float> %i.l, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.m, <16 x float> %i.n, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.c, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i.preheader

.preheader29.i.preheader:                         ; preds = %.preheader29.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader29.preheader.i ], [ %n.vec, %middle.block ]
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i.preheader, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ %indvars.iv.i.ph, %.preheader29.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.i ; 4 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.p, align 4, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %.pre.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.r = tail call float @llvm.fmuladd.f32(float %.pre44.i, float %.sroa.6.0.copyload.i, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %.pre46.i, float %.sroa.9.0.copyload.i, float %i.r)
  store float %i.s, ptr %i.p, align 4, !tbaa !9
  %i.t = tail call float @llvm.fmuladd.f32(float %.pre48.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.u = tail call float @llvm.fmuladd.f32(float %.pre51.i, float %.sroa.6.0.copyload.i, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.pre54.i, float %.sroa.9.0.copyload.i, float %i.u)
  store float %i.v, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !9
  %i.w = tail call float @llvm.fmuladd.f32(float %.pre56.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.x = tail call float @llvm.fmuladd.f32(float %.pre59.i, float %.sroa.6.0.copyload.i, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %.pre62.i, float %.sroa.9.0.copyload.i, float %i.x)
  store float %i.y, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i, !llvm.loop !55

_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit:              ; preds = %.preheader29.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12reset_x_ndimiiPKiiS0_PA3_fPKf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 16             ; 30 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 305) #17
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.e = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.h = load i64, ptr %i.f, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  %.not = icmp eq ptr %2, null
  %i.k = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader70, label %.preheader72

.preheader72:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph77, label %.loopexit71

.lr.ph77:                                         ; preds = %.preheader72
  %i.l = icmp sgt i32 %0, 0
  %wide.trip.count107 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.l, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph77
  %wide.trip.count102 = zext nneg i32 %0 to i64
  %trip.count.minus.1 = add nsw i64 %wide.trip.count102, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.m = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter = and i64 %wide.trip.count107, 3      ; 3 uses
  %i.n = icmp ult i32 %1, 4
  br i1 %i.n, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count107, 2147483644
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next105.3, %.lr.ph.us ] ; 5 uses
  %.05476.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader.new ], [ %i.aw, %.lr.ph.us ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.3, %.lr.ph.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %6, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr inbounds [12 x i8], ptr %5, i64 %i.q
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.t, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %wide.masked.load, <4 x float> %wide.masked.load159)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.u, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %6, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.1 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat158.1 = shufflevector <4 x float> %broadcast.splatinsert157.1, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr inbounds [12 x i8], ptr %5, i64 %i.y
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ab, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.1, <4 x float> %wide.masked.load.1, <4 x float> %wide.masked.load159.1)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ac, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.2 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat158.2 = shufflevector <4 x float> %broadcast.splatinsert157.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ag
  %wide.masked.load.2 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aj, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.2, <4 x float> %wide.masked.load.2, <4 x float> %wide.masked.load159.2)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ak, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.3 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat158.3 = shufflevector <4 x float> %broadcast.splatinsert157.3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ao
  %i.as = fadd float %.05476.us, %i.s
  %i.at = fadd float %i.as, %i.aa
  %i.au = fadd float %i.at, %i.ai
  %wide.masked.load.3 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ar, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.3, <4 x float> %wide.masked.load.3, <4 x float> %wide.masked.load159.3)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.av, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.aw = fadd float %i.au, %i.aq                 ; 3 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit71.loopexit213.unr-lcssa, label %.lr.ph.us, !llvm.loop !56

.preheader70:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph81, label %.loopexit71

.lr.ph81:                                         ; preds = %.preheader70
  %i.ax = icmp sgt i32 %0, 0
  %wide.trip.count122 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.ax, label %.lr.ph.us83.preheader, label %._crit_edge

.lr.ph.us83.preheader:                            ; preds = %.lr.ph81
  %wide.trip.count117 = zext nneg i32 %0 to i64
  %trip.count.minus.1163 = add nsw i64 %wide.trip.count117, -1
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %trip.count.minus.1163, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ay = icmp uge <4 x i64> %broadcast.splat165, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter217 = and i64 %wide.trip.count122, 3   ; 3 uses
  %i.az = icmp ult i32 %1, 4
  br i1 %i.az, label %.lr.ph.us83.epil.preheader, label %.lr.ph.us83.preheader.new

.lr.ph.us83.preheader.new:                        ; preds = %.lr.ph.us83.preheader
  %unroll_iter222 = and i64 %wide.trip.count122, 2147483644
  br label %.lr.ph.us83

.lr.ph.us83:                                      ; preds = %.lr.ph.us83, %.lr.ph.us83.preheader.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %indvars.iv.next120.3, %.lr.ph.us83 ] ; 6 uses
  %.15580.us = phi float [ 0.000000e+00, %.lr.ph.us83.preheader.new ], [ %i.bt, %.lr.ph.us83 ]
  %niter223 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %niter223.next.3, %.lr.ph.us83 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv119
  %wide.masked.load171 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bc, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167, <4 x float> %wide.masked.load171, <4 x float> %wide.masked.load172)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.1 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat167.1 = shufflevector <4 x float> %broadcast.splatinsert166.1, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120
  %wide.masked.load171.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bg, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.1, <4 x float> %wide.masked.load171.1, <4 x float> %wide.masked.load172.1)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bh, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120.1 = or disjoint i64 %indvars.iv119, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120.1
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.2 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat167.2 = shufflevector <4 x float> %broadcast.splatinsert166.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120.1
  %wide.masked.load171.2 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bk, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.2, <4 x float> %wide.masked.load171.2, <4 x float> %wide.masked.load172.2)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bl, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120.2 = or disjoint i64 %indvars.iv119, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.3 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat167.3 = shufflevector <4 x float> %broadcast.splatinsert166.3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120.2
  %i.bp = fadd float %.15580.us, %i.bb
  %i.bq = fadd float %i.bp, %i.bf
  %i.br = fadd float %i.bq, %i.bj
  %wide.masked.load171.3 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.3, <4 x float> %wide.masked.load171.3, <4 x float> %wide.masked.load172.3)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bs, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %i.bt = fadd float %i.br, %i.bn                 ; 3 uses
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %niter223.next.3 = add i64 %niter223, 4         ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %.loopexit71.loopexit.unr-lcssa, label %.lr.ph.us83, !llvm.loop !57

.loopexit71.loopexit.unr-lcssa:                   ; preds = %.lr.ph.us83
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %.loopexit71, label %.lr.ph.us83.epil.preheader

.lr.ph.us83.epil.preheader:                       ; preds = %.loopexit71.loopexit.unr-lcssa, %.lr.ph.us83.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph.us83.preheader ], [ %indvars.iv.next120.3, %.loopexit71.loopexit.unr-lcssa ]
  %.15580.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us83.preheader ], [ %i.bt, %.loopexit71.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter217, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph.us83.epil

.lr.ph.us83.epil:                                 ; preds = %.lr.ph.us83.epil, %.lr.ph.us83.epil.preheader
  %indvars.iv119.epil = phi i64 [ %indvars.iv119.epil.init, %.lr.ph.us83.epil.preheader ], [ %indvars.iv.next120.epil, %.lr.ph.us83.epil ] ; 3 uses
  %.15580.us.epil = phi float [ %.15580.us.epil.init, %.lr.ph.us83.epil.preheader ], [ %i.by, %.lr.ph.us83.epil ]
  %epil.iter218 = phi i64 [ 0, %.lr.ph.us83.epil.preheader ], [ %epil.iter218.next, %.lr.ph.us83.epil ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119.epil
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.epil = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat167.epil = shufflevector <4 x float> %broadcast.splatinsert166.epil, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv119.epil
  %wide.masked.load171.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bw, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.epil, <4 x float> %wide.masked.load171.epil, <4 x float> %wide.masked.load172.epil)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bx, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %i.by = fadd float %.15580.us.epil, %i.bv       ; 2 uses
  %indvars.iv.next120.epil = add nuw nsw i64 %indvars.iv119.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %.loopexit71, label %.lr.ph.us83.epil, !llvm.loop !58

.loopexit71.loopexit213.unr-lcssa:                ; preds = %.lr.ph.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit71, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.loopexit71.loopexit213.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next105.3, %.loopexit71.loopexit213.unr-lcssa ]
  %.05476.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.aw, %.loopexit71.loopexit213.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.epil ] ; 2 uses
  %.05476.us.epil = phi float [ %.05476.us.epil.init, %.lr.ph.us.epil.preheader ], [ %i.cg, %.lr.ph.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.epil ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104.epil
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.epil = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat158.epil = shufflevector <4 x float> %broadcast.splatinsert157.epil, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = getelementptr inbounds [12 x i8], ptr %5, i64 %i.cb
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ce, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.epil, <4 x float> %wide.masked.load.epil, <4 x float> %wide.masked.load159.epil)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cf, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.cg = fadd float %.05476.us.epil, %i.cd       ; 2 uses
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit71, label %.lr.ph.us.epil, !llvm.loop !59

.loopexit71:                                      ; preds = %.loopexit71.loopexit213.unr-lcssa, %.lr.ph.us.epil, %.loopexit71.loopexit.unr-lcssa, %.lr.ph.us83.epil, %.preheader72, %.preheader70
  %.2 = phi float [ %i.by, %.lr.ph.us83.epil ], [ 0.000000e+00, %.preheader70 ], [ 0.000000e+00, %.preheader72 ], [ %i.bt, %.loopexit71.loopexit.unr-lcssa ], [ %i.aw, %.loopexit71.loopexit213.unr-lcssa ], [ %i.cg, %.lr.ph.us.epil ] ; 3 uses
  %i.ch = icmp sgt i32 %0, 0
  br i1 %i.ch, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit71
  %wide.trip.count127 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check176 = icmp ult i32 %0, 32
  br i1 %min.iters.check176, label %vec.epilog.ph, label %vector.ph177

vector.ph177:                                     ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %wide.trip.count127, 28
  %n.vec178 = and i64 %wide.trip.count127, 2147483616 ; 4 uses
  %broadcast.splatinsert179 = insertelement <8 x float> poison, float %.2, i64 0
  %broadcast.splat180 = shufflevector <8 x float> %broadcast.splatinsert179, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next186, %vector.body181 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index182 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cj, align 16, !tbaa !9
  %wide.load183 = load <8 x float>, ptr %i.ck, align 16, !tbaa !9
  %wide.load184 = load <8 x float>, ptr %i.cl, align 16, !tbaa !9
  %wide.load185 = load <8 x float>, ptr %i.cm, align 16, !tbaa !9
  %i.cn = fdiv <8 x float> %wide.load, %broadcast.splat180
  %i.co = fdiv <8 x float> %wide.load183, %broadcast.splat180
  %i.cp = fdiv <8 x float> %wide.load184, %broadcast.splat180
  %i.cq = fdiv <8 x float> %wide.load185, %broadcast.splat180
  store <8 x float> %i.cn, ptr %i.cj, align 16, !tbaa !9
  store <8 x float> %i.co, ptr %i.ck, align 16, !tbaa !9
  store <8 x float> %i.cp, ptr %i.cl, align 16, !tbaa !9
  store <8 x float> %i.cq, ptr %i.cm, align 16, !tbaa !9
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.cr = icmp eq i64 %index.next186, %n.vec178
  br i1 %i.cr, label %middle.block187, label %vector.body181, !llvm.loop !60

middle.block187:                                  ; preds = %vector.body181
  %cmp.n = icmp eq i64 %n.vec178, %wide.trip.count127
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block187
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec178, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %wide.trip.count127, 2147483644 ; 3 uses
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %.2, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index191 ; 2 uses
  %wide.load192 = load <4 x float>, ptr %i.cs, align 16, !tbaa !9
  %i.ct = fdiv <4 x float> %wide.load192, %broadcast.splat190
  store <4 x float> %i.ct, ptr %i.cs, align 16, !tbaa !9
  %index.next193 = add nuw i64 %index191, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %n.vec188, %wide.trip.count127
  br i1 %cmp.n194, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv124.ph = phi i64 [ 0, %iter.check ], [ %n.vec178, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %.lr.ph ], [ %indvars.iv124.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv124 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !9
  %i.cx = fdiv float %i.cw, %.2
  store float %i.cx, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph77, %.lr.ph81, %middle.block187, %vec.epilog.middle.block, %.loopexit71
  %.not65 = icmp eq ptr %4, null
  %i.cy = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %.not65, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %._crit_edge
  br i1 %i.cy, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader68
  %i.cz = load <2 x float>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %i.da = load float, ptr %i.j, align 8, !tbaa !9 ; 5 uses
  %wide.trip.count132 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count132, 3   ; 3 uses
  %i.db = icmp ult i32 %3, 4
  br i1 %i.db, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter228 = and i64 %wide.trip.count132, 2147483644
  br label %bb.i

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.cy, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %.preheader
  %i.dc = load <2 x float>, ptr %i.a, align 16, !tbaa !9 ; 3 uses
  %i.dd = load float, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %wide.trip.count137 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check195 = icmp ult i32 %3, 8
  br i1 %min.iters.check195, label %scalar.ph.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph90
  %n.vec197 = and i64 %wide.trip.count137, 2147483640 ; 3 uses
  %broadcast.splat199 = shufflevector <2 x float> %i.dc, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat201 = shufflevector <2 x float> %i.dc, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert202 = insertelement <8 x float> poison, float %i.dd, i64 0
  %i.de = shufflevector <8 x float> %broadcast.splatinsert202, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph196
  %index205 = phi i64 [ 0, %vector.ph196 ], [ %index.next208, %vector.body204 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %index205 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.df, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec206 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.dg = fsub <8 x float> %strided.vec, %broadcast.splat199
  %i.dh = fsub <8 x float> %strided.vec206, %broadcast.splat201
  %i.di = shufflevector <8 x float> %i.dg, <8 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dj = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = fsub <16 x float> %i.dj, %i.de
  %interleaved.vec = shufflevector <16 x float> %i.di, <16 x float> %i.dk, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.df, align 4, !tbaa !9
  %index.next208 = add nuw i64 %index205, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next208, %n.vec197
  br i1 %i.dl, label %middle.block209, label %vector.body204, !llvm.loop !64

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %n.vec197, %wide.trip.count137
  br i1 %cmp.n210, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph90, %middle.block209
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph90 ], [ %n.vec197, %middle.block209 ]
  br label %scalar.ph

bb.i:                                             ; preds = %bb.i, %.lr.ph88.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph88.new ], [ %indvars.iv.next130.3, %bb.i ] ; 5 uses
  %niter229 = phi i64 [ 0, %.lr.ph88.new ], [ %niter229.next.3, %bb.i ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [12 x i8], ptr %5, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !9
  %i.ds = fsub float %i.dr, %i.da
  %i.dt = load <2 x float>, ptr %i.dp, align 4, !tbaa !9
  %i.du = fsub <2 x float> %i.dt, %i.cz
  store <2 x float> %i.du, ptr %i.dp, align 4, !tbaa !9
  store float %i.ds, ptr %i.dq, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !9
  %i.ec = fsub float %i.eb, %i.da
  %i.ed = load <2 x float>, ptr %i.dz, align 4, !tbaa !9
  %i.ee = fsub <2 x float> %i.ed, %i.cz
  store <2 x float> %i.ee, ptr %i.dz, align 4, !tbaa !9
  store float %i.ec, ptr %i.ea, align 4, !tbaa !9
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !9
  %i.em = fsub float %i.el, %i.da
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !9
  %i.eo = fsub <2 x float> %i.en, %i.cz
  store <2 x float> %i.eo, ptr %i.ej, align 4, !tbaa !9
  store float %i.em, ptr %i.ek, align 4, !tbaa !9
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !13
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %5, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !9
  %i.ew = fsub float %i.ev, %i.da
  %i.ex = load <2 x float>, ptr %i.et, align 4, !tbaa !9
  %i.ey = fsub <2 x float> %i.ex, %i.cz
  store <2 x float> %i.ey, ptr %i.et, align 4, !tbaa !9
  store float %i.ew, ptr %i.eu, align 4, !tbaa !9
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter229.next.3 = add i64 %niter229, 4         ; 2 uses
  %niter229.ncmp.3 = icmp eq i64 %niter229.next.3, %unroll_iter228
  br i1 %niter229.ncmp.3, label %.loopexit.loopexit212.unr-lcssa, label %bb.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %scalar.ph ], [ %indvars.iv134.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv134 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !9
  %i.fc = fsub float %i.fb, %i.dd
  %i.fd = load <2 x float>, ptr %i.ez, align 4, !tbaa !9
  %i.fe = fsub <2 x float> %i.fd, %i.dc
  store <2 x float> %i.fe, ptr %i.ez, align 4, !tbaa !9
  store float %i.fc, ptr %i.fa, align 4, !tbaa !9
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %scalar.ph, !llvm.loop !66

.loopexit.loopexit212.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit212.unr-lcssa, %.lr.ph88
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next130.3, %.loopexit.loopexit212.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter224, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv129.epil.init, %.epil.preheader ], [ %indvars.iv.next130.epil, %bb.j ] ; 2 uses
  %epil.iter225 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter225.next, %bb.j ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129.epil
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !13
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [12 x i8], ptr %5, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !9
  %i.fl = fsub float %i.fk, %i.da
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !9
  %i.fn = fsub <2 x float> %i.fm, %i.cz
  store <2 x float> %i.fn, ptr %i.fi, align 4, !tbaa !9
  store float %i.fl, ptr %i.fj, align 4, !tbaa !9
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !67

.loopexit:                                        ; preds = %.loopexit.loopexit212.unr-lcssa, %bb.j, %scalar.ph, %middle.block209, %.preheader68, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !46
  %i.g = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.g, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.i, ptr %i.h, align 1, !tbaa !48
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = load ptr, ptr %0, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
end_hunk_0
