Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-draw?download=true
inline.NumInlined: 357
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hb_vector_draw_get_user_data:bb.a
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
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !92 ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !93 ; 2 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.j = load <2 x float>, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.k = fdiv <2 x float> %i.i, %i.j              ; 4 uses
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.f, i64 1
  %i.n = fdiv <2 x float> %i.m, %i.j
  %i.o = fadd <2 x float> %i.k, %i.n              ; 3 uses
  %i.p = fcmp ole <2 x float> %i.k, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %i.k, <2 x float> %i.o ; 4 uses
  %i.r = fsub <2 x float> %i.o, %i.k
  %i.s = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !55, !range !56, !noundef !57
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.y = fadd <2 x float> %i.q, %i.s              ; 2 uses
  %i.z = load <2 x float>, ptr %i.w, align 4, !tbaa !16 ; 3 uses
  %i.aa = fcmp ole <2 x float> %i.z, %i.q
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.q ; 2 uses
  %i.ac = load <2 x float>, ptr %i.x, align 4, !tbaa !16
  %i.ad = fadd <2 x float> %i.z, %i.ac            ; 2 uses
  %i.ae = fcmp oge <2 x float> %i.ad, %i.y
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.ad, <2 x float> %i.y
  %i.ag = fsub <2 x float> %i.af, %i.ab
  store <2 x float> %i.ab, ptr %i.w, align 4, !tbaa !16
  store <2 x float> %i.ag, ptr %i.x, align 4, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ah, ptr %i.w, align 4, !tbaa !16
  store i8 1, ptr %i.t, align 4, !tbaa !55
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
  br i1 %.not10.i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call noundef ptr @hb_draw_funcs_get_empty() #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.e, %bb.d ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.f = cmpxchg weak ptr @_ZL28static_vector_draw_svg_funcs, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i)
  %i.h = load atomic ptr, ptr @_ZL28static_vector_draw_svg_funcs acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !44

bb.g:                                             ; preds = %bb.b
  %i.i = load atomic ptr, ptr @_ZL28static_vector_draw_pdf_funcs acquire, align 8 ; 2 uses
  %.not14.i.i4 = icmp eq ptr %i.i, null
  br i1 %.not14.i.i4, label %.lr.ph.i.i6, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !42

.lr.ph.i.i6:                                      ; preds = %bb.g, %bb.j
  %i.j = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t38hb_vector_draw_pdf_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL28static_vector_draw_pdf_funcs) ; 2 uses
  %.not10.i.i7 = icmp eq ptr %i.j, null
  br i1 %.not10.i.i7, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %.lr.ph.i.i6
  %i.k = tail call noundef ptr @hb_draw_funcs_get_empty() #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i6
  %.07.i.i8 = phi ptr [ %i.k, %bb.h ], [ %i.j, %.lr.ph.i.i6 ] ; 3 uses
  %i.l = cmpxchg weak ptr @_ZL28static_vector_draw_pdf_funcs, ptr null, ptr %.07.i.i8 acq_rel monotonic, align 8
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, label %bb.j, !prof !43

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_pdf_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i8)
  %i.n = load atomic ptr, ptr @_ZL28static_vector_draw_pdf_funcs acquire, align 8 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i.i9, label %.lr.ph.i.i6, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !44

_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t38hb_vector_draw_svg_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.a, %bb.g, %bb.c, %bb.b
  %.0 = phi ptr [ %i.i, %bb.g ], [ %i.h, %bb.f ], [ null, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ], [ %.07.i.i, %bb.e ], [ %i.n, %bb.j ], [ %.07.i.i8, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_vector_draw_new_path(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN16hb_vector_draw_t8new_pathEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  switch i32 %i.e, label %.thread.i.i [
    i32 1885627936, label %bb.c
    i32 1937139488, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN16hb_vector_draw_t14flush_path_pdfEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN16hb_vector_draw_t14flush_path_svgEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pr.i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not.i.not.i.i, label %_ZN16hb_vector_draw_t8new_pathEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.f = load i32, ptr %i.a, align 8, !tbaa !37
  %or.cond.i.i = icmp sgt i32 %i.f, 3
  br i1 %or.cond.i.i, label %bb.f, label %_ZN16hb_vector_draw_t8new_pathEv.exit, !prof !59

bb.f:                                             ; preds = %.thread.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  tail call void @hb_free(ptr noundef %i.h) #15
  store ptr null, ptr %i.g, align 8, !tbaa !38
  store i32 0, ptr %i.a, align 8, !tbaa !37
  br label %_ZN16hb_vector_draw_t8new_pathEv.exit

_ZN16hb_vector_draw_t8new_pathEv.exit:            ; preds = %bb.a, %bb.e, %.thread.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_vector_draw_glyph_or_fail(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.hb_glyph_extents_t, align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp eq i32 %3, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.c = call i32 @hb_font_get_glyph_extents(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #15
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !55, !range !56, !noundef !57
  %i.f = zext nneg i8 %i.e to i32
  store i32 %i.f, ptr %i.a, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = call fastcc noundef i32 @_ZL34hb_vector_set_glyph_extents_commonRK14hb_transform_tIfEffPK18hb_glyph_extents_tP19hb_vector_extents_tPi(ptr noundef nonnull align 4 dereferenceable(24) %i.g, float noundef %i.i, float noundef %i.k, ptr noundef nonnull %4, ptr noundef nonnull %i.l, ptr noundef %i.a) ; 0 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !58
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.d, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN16hb_vector_draw_t8new_pathEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35
  switch i32 %i.u, label %.thread.i.i [
    i32 1885627936, label %bb.g
    i32 1937139488, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @_ZN16hb_vector_draw_t14flush_path_pdfEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %bb.i
end_hunk_0
