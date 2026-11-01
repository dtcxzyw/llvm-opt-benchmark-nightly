Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-draw?download=true
inline.NumInlined: 357
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hb_vector_draw_set_user_data:bb.a
  br i1 %.not19.i, label %.lr.ph.i, label %._crit_edge.i, !prof !44

_ZL23hb_object_set_user_dataI16hb_vector_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_vector_draw_get_user_data(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_get_user_dataIK16hb_vector_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_get_user_dataIK16hb_vector_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %_ZL23hb_object_get_user_dataIK16hb_vector_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #15 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !52
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #15 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK16hb_vector_draw_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK16hb_vector_draw_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_vector_draw_set_transform(ptr nofree noundef writeonly captures(none) initializes((20, 44)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %1, ptr %i.a, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %4, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %5, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %6, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_vector_draw_get_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load float, ptr %i.a, align 4, !tbaa !86
  store float %i.b, ptr %1, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load float, ptr %i.c, align 4, !tbaa !87
  store float %i.d, ptr %2, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load float, ptr %i.e, align 4, !tbaa !88
  store float %i.f, ptr %3, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !89
  store float %i.h, ptr %4, align 4, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load float, ptr %i.i, align 4, !tbaa !90
  store float %i.j, ptr %5, align 4, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not27 = icmp eq ptr %6, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !91
  store float %i.l, ptr %6, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_vector_draw_set_scale_factor(ptr nofree noundef writeonly captures(none) initializes((44, 52)) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ogt float %1, 0.000000e+00
  %i.b = select i1 %i.a, float %1, float 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.b, ptr %i.c, align 4, !tbaa !53
  %i.d = fcmp ogt float %2, 0.000000e+00
  %i.e = select i1 %i.d, float %2, float 1.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.e, ptr %i.f, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_vector_draw_get_scale_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load float, ptr %i.a, align 4, !tbaa !53
  store float %i.b, ptr %1, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !54
  store float %i.d, ptr %2, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_vector_draw_set_extents(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !92
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !93
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = load <2 x float>, ptr %i.b, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.j = load <2 x float>, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.k = fdiv <2 x float> %i.i, %i.j              ; 4 uses
  %i.l = fdiv <2 x float> %2, %i.j
  %i.m = fadd <2 x float> %i.k, %i.l              ; 3 uses
  %i.n = fcmp ole <2 x float> %i.k, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %i.k, <2 x float> %i.m ; 4 uses
  %i.p = fsub <2 x float> %i.m, %i.k
  %i.q = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !55, !range !56, !noundef !57
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.w = fadd <2 x float> %i.o, %i.q              ; 2 uses
  %i.x = load <2 x float>, ptr %i.u, align 4, !tbaa !16 ; 3 uses
  %i.y = fcmp ole <2 x float> %i.x, %i.o
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> %i.o ; 2 uses
  %i.aa = load <2 x float>, ptr %i.v, align 4, !tbaa !16
  %i.ab = fadd <2 x float> %i.x, %i.aa            ; 2 uses
  %i.ac = fcmp oge <2 x float> %i.ab, %i.w
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.ab, <2 x float> %i.w
  %i.ae = fsub <2 x float> %i.ad, %i.z
  store <2 x float> %i.z, ptr %i.u, align 4, !tbaa !16
  store <2 x float> %i.ae, ptr %i.v, align 4, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = shufflevector <2 x float> %i.o, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.af, ptr %i.u, align 4, !tbaa !16
  store i8 1, ptr %i.r, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_vector_draw_get_extents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !55, !range !56, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !94
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @hb_vector_draw_set_glyph_extents(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !55, !range !56, !noundef !57
  %i.d = zext nneg i8 %i.c to i32
  store i32 %i.d, ptr %i.a, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load float, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = call fastcc noundef i32 @_ZL34hb_vector_set_glyph_extents_commonRK14hb_transform_tIfEffPK18hb_glyph_extents_tP19hb_vector_extents_tPi(ptr noundef nonnull align 4 dereferenceable(24) %i.e, float noundef %i.g, float noundef %i.i, ptr noundef %1, ptr noundef nonnull %i.j, ptr noundef %i.a)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !58
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL34hb_vector_set_glyph_extents_commonRK14hb_transform_tIfEffPK18hb_glyph_extents_tP19hb_vector_extents_tPi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i32>, ptr %3, align 4, !tbaa !58
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 3 uses
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !58
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = fadd <2 x float> %i.e, %i.g              ; 2 uses
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !16 ; 2 uses
  %i.k = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.k, <2 x float> %i.i) ; 2 uses
  %i.m = load <2 x float>, ptr %i.c, align 4, !tbaa !16 ; 4 uses
  %i.n = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.n, <2 x float> %i.l)
  %i.p = insertelement <2 x float> poison, float %1, i64 0
  %i.q = insertelement <2 x float> %i.p, float %2, i64 1 ; 4 uses
  %i.r = fdiv <2 x float> %i.o, %i.q              ; 4 uses
  %i.s = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.s, <2 x float> %i.l)
  %i.u = fdiv <2 x float> %i.t, %i.q              ; 4 uses
  %i.v = fcmp ole <2 x float> %i.r, %i.u
  %i.w = select <2 x i1> %i.v, <2 x float> %i.r, <2 x float> %i.u ; 2 uses
  %i.x = fcmp oge <2 x float> %i.r, %i.u
  %i.y = select <2 x i1> %i.x, <2 x float> %i.r, <2 x float> %i.u ; 2 uses
  %i.z = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.z, <2 x float> %i.i) ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.n, <2 x float> %i.aa)
  %i.ac = fdiv <2 x float> %i.ab, %i.q            ; 4 uses
  %i.ad = fcmp ole <2 x float> %i.w, %i.ac
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.w, <2 x float> %i.ac ; 2 uses
  %i.af = fcmp oge <2 x float> %i.y, %i.ac
  %i.ag = select <2 x i1> %i.af, <2 x float> %i.y, <2 x float> %i.ac ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.s, <2 x float> %i.aa)
  %i.ai = fdiv <2 x float> %i.ah, %i.q            ; 4 uses
  %i.aj = fcmp ole <2 x float> %i.ae, %i.ai
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.ae, <2 x float> %i.ai ; 5 uses
  %i.al = fcmp oge <2 x float> %i.ag, %i.ai
  %i.am = select <2 x i1> %i.al, <2 x float> %i.ag, <2 x float> %i.ai ; 5 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ap = fcmp ugt float %i.an, %i.ao
  %i.aq = extractelement <2 x float> %i.am, i64 1
  %i.ar = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.as = fcmp ugt float %i.aq, %i.ar
  %or.cond = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.at = load i32, ptr %5, align 4, !tbaa !58
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = load <2 x float>, ptr %4, align 4, !tbaa !16 ; 3 uses
  %i.aw = fcmp ole <2 x float> %i.av, %i.ak
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> %i.ak ; 2 uses
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !16
  %i.az = fadd <2 x float> %i.av, %i.ay           ; 2 uses
  %i.ba = fcmp oge <2 x float> %i.az, %i.am
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.az, <2 x float> %i.am
  %i.bc = fsub <2 x float> %i.bb, %i.ax
  store <2 x float> %i.ax, ptr %4, align 4, !tbaa !16
  store <2 x float> %i.bc, ptr %i.au, align 4, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bd = fsub <2 x float> %i.am, %i.ak
  store float %i.ao, ptr %4, align 4, !tbaa !16
  store float %i.ar, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.bd, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  store i32 1, ptr %5, align 4, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @hb_vector_draw_get_format(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_vector_draw_get_funcs(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  switch i32 %i.b, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit [
    i32 1937139488, label %bb.c
    i32 1885627936, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load atomic ptr, ptr @_ZL28static_vector_draw_svg_funcs acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !42

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %i.d = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL28static_vector_draw_svg_funcs) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.d, null
end_hunk_0
