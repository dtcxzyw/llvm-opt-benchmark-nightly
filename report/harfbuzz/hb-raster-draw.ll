Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-draw?download=true
inline.NumInlined: 414
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hb_raster_draw_get_user_data:bb.a
bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41   ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK16hb_raster_draw_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK16hb_raster_draw_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_raster_draw_set_transform(ptr nofree noundef writeonly captures(none) initializes((16, 40)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.a, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %4, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !13
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %6, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_raster_draw_set_scale_factor(ptr nofree noundef writeonly captures(none) initializes((40, 48)) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp ogt float %1, 0.000000e+00
  %i.b = select i1 %i.a, float %1, float 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.b, ptr %i.c, align 8, !tbaa !48
  %i.d = fcmp ogt float %2, 0.000000e+00
  %i.e = select i1 %i.d, float %2, float 1.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.e, ptr %i.f, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_raster_draw_get_scale_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !48
  store float %i.b, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !49
  store float %i.d, ptr %2, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_raster_draw_get_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !50
  store float %i.b, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !51
  store float %i.d, ptr %2, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !52
  store float %i.f, ptr %3, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !53
  store float %i.h, ptr %4, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load float, ptr %i.i, align 8, !tbaa !54
  store float %i.j, ptr %5, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not27 = icmp eq ptr %6, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !55
  store float %i.l, ptr %6, align 4, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_raster_draw_set_extents(ptr nofree noundef writeonly captures(none) initializes((48, 69)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_raster_draw_get_extents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !58, !range !59, !noundef !60
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false), !tbaa.struct !56
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_raster_draw_set_glyph_extents(ptr nofree noundef captures(none) initializes((48, 69)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !57
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 2 uses
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !57
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fadd <2 x float> %i.c, %i.e
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.h = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.i = fcmp oge <4 x float> %i.g, %i.h
  %i.j = fcmp ole <4 x float> %i.g, %i.h
  %i.k = shufflevector <4 x i1> %i.i, <4 x i1> %i.j, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.l = select <4 x i1> %i.k, <4 x float> %i.h, <4 x float> %i.g ; 4 uses
  %i.m = load <2 x float>, ptr %3, align 4, !tbaa !13 ; 2 uses
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !13 ; 2 uses
  %i.o = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.o, <2 x float> %i.m) ; 2 uses
  %i.q = load <2 x float>, ptr %4, align 4, !tbaa !13 ; 4 uses
  %i.r = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = load <2 x float>, ptr %5, align 8, !tbaa !13 ; 4 uses
  %i.u = fdiv <2 x float> %i.s, %i.t              ; 4 uses
  %i.v = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.v, <2 x float> %i.p)
  %i.x = fdiv <2 x float> %i.w, %i.t              ; 4 uses
  %i.y = fcmp ole <2 x float> %i.u, %i.x
  %i.z = select <2 x i1> %i.y, <2 x float> %i.u, <2 x float> %i.x ; 2 uses
  %i.aa = fcmp oge <2 x float> %i.u, %i.x
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.u, <2 x float> %i.x ; 2 uses
  %i.ac = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ac, <2 x float> %i.m) ; 2 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.ad)
  %i.af = fdiv <2 x float> %i.ae, %i.t            ; 4 uses
  %i.ag = fcmp ole <2 x float> %i.z, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.z, <2 x float> %i.af ; 2 uses
  %i.ai = fcmp oge <2 x float> %i.ab, %i.af
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.ab, <2 x float> %i.af ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.v, <2 x float> %i.ad)
  %i.al = fdiv <2 x float> %i.ak, %i.t            ; 4 uses
  %i.am = fcmp ole <2 x float> %i.ah, %i.al
  %i.an = select <2 x i1> %i.am, <2 x float> %i.ah, <2 x float> %i.al
  %i.ao = fcmp oge <2 x float> %i.aj, %i.al
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.aj, <2 x float> %i.al
  %i.aq = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.an)
  %i.ar = fpext <2 x float> %i.aq to <2 x double> ; 2 uses
  %i.as = fcmp oge <2 x double> %i.ar, splat (double f0xC1E0000000000000)
  %i.at = select <2 x i1> %i.as, <2 x double> %i.ar, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.au = fcmp ole <2 x double> %i.at, splat (double f0x41DFFFFFFFC00000)
  %i.av = select <2 x i1> %i.au, <2 x double> %i.at, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>  ; 3 uses
  %i.ax = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ap)
  %i.ay = fpext <2 x float> %i.ax to <2 x double> ; 2 uses
  %i.az = fcmp oge <2 x double> %i.ay, splat (double f0xC1E0000000000000)
  %i.ba = select <2 x i1> %i.az, <2 x double> %i.ay, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.bb = fcmp ole <2 x double> %i.ba, splat (double f0x41DFFFFFFFC00000)
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.ba, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.bd = fptosi <2 x double> %i.bc to <2 x i32>  ; 2 uses
  %i.be = icmp sle <2 x i32> %i.bd, %i.aw
  %i.bf = bitcast <2 x i1> %i.be to i2
  %or.cond = icmp eq i2 %i.bf, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bh = sext <2 x i32> %i.bd to <2 x i64>
  %i.bi = sext <2 x i32> %i.aw to <2 x i64>
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.aw, ptr %i.bj, align 8, !tbaa !57
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = sub nsw <2 x i64> %i.bh, %i.bi
  %i.bl = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.bk, <2 x i64> splat (i64 4096))
  %i.bm = trunc <2 x i64> %i.bl to <2 x i32>
  store <2 x i32> %i.bm, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !57
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 %.sink, ptr %i.bn, align 4, !tbaa !58
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_raster_draw_clear(ptr nofree noundef writeonly captures(none) initializes((48, 69), (76, 80), (140, 144)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_raster_draw_reset(ptr nofree noundef writeonly captures(none) initializes((16, 69), (76, 80), (140, 144)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.b, i8 0, i64 21, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_Z28hb_raster_draw_get_edge_workP16hb_raster_draw_tj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61   ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %i.f = zext i32 %1 to i64                       ; 3 uses
  %i.g = add nuw nsw i64 %i.e, 576460752303423487 ; 2 uses
  %i.h = and i64 %i.g, 576460752303423487         ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.i, 1152921504606846974
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %i.k = and i64 %i.g, 1
  %lcmp.mod.not.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.017.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %.01116.epil.init = phi ptr [ %i.b, %.lr.ph ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.l = getelementptr inbounds nuw i8, ptr %.01116.epil.init, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %.01116.epil.init, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = sub nsw i32 %i.m, %i.o
  %i.q = ashr i32 %i.p, 8
  %i.r = sext i32 %i.q to i64
  %.sroa.speculated.epil = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.f)
  %i.s = add i64 %.017.epil.init, 1
  %i.t = add i64 %i.s, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.t, %.epil.preheader ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.017 = phi i64 [ 0, %.lr.ph.new ], [ %i.al, %bb.b ]
  %.01116 = phi ptr [ %i.b, %.lr.ph.new ], [ %i.am, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.01116, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %.01116, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !67
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = ashr i32 %i.y, 8
  %i.aa = sext i32 %i.z to i64
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.f)
  %i.ab = add i64 %.017, 1
  %i.ac = add i64 %i.ab, %.sroa.speculated
  %i.ad = getelementptr inbounds nuw i8, ptr %.01116, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %.01116, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67
  %i.ah = sub nsw i32 %i.ae, %i.ag
  %i.ai = ashr i32 %i.ah, 8
  %i.aj = sext i32 %i.ai to i64
  %.sroa.speculated.1 = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.f)
  %i.ak = add i64 %i.ac, 1
  %i.al = add i64 %i.ak, %.sroa.speculated.1      ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01116, i64 64 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_raster_draw_recycle_image(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @hb_raster_image_destroy(ptr noundef %i.b) #18
  store ptr %1, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_draw_get_funcs(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@hb_realloc

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_draw_funcs_create() #18 ; 7 uses
  tail call void @hb_draw_funcs_set_move_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL17hb_raster_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_line_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL17hb_raster_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_quadratic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL22hb_raster_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_cubic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL18hb_raster_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_close_path_func(ptr noundef %i.a, ptr noundef nonnull @_ZL20hb_raster_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_make_immutable(ptr noundef %i.a) #18
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL29free_static_raster_draw_funcsv) #18 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @hb_draw_funcs_get_empty() local_unnamed_addr #3

declare ptr @hb_draw_funcs_create() local_unnamed_addr #3

declare void @hb_draw_funcs_set_move_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL17hb_raster_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, float %3, float %4, ptr nofree readnone captures(none) %5) #12 {
bb.a:
  ret void
}

declare void @hb_draw_funcs_set_line_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL17hb_raster_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !13 ; 2 uses
  %i.g = load <2 x float>, ptr %i.c, align 4, !tbaa !13
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !13
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.k = load <2 x float>, ptr %i.d, align 4, !tbaa !13
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !13
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = insertelement <2 x float> %i.f, float %3, i64 1
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.p, <4 x float> %i.h)
  %i.r = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %4, i64 1
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.t, <4 x float> %i.q)
  %i.v = fdiv <4 x float> %i.u, %i.n              ; 4 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  %i.x = extractelement <4 x float> %i.v, i64 1
  %i.y = extractelement <4 x float> %i.v, i64 2
  %i.z = extractelement <4 x float> %i.v, i64 3
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.w, float noundef %i.x, float noundef %i.y, float noundef %i.z)
  ret void
}

declare void @hb_draw_funcs_set_quadratic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22hb_raster_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %8 = alloca [16 x %struct.quad_node_t], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !13 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !13 ; 3 uses
  %i.k = insertelement <2 x float> poison, float %i.b, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.l, <2 x float> %i.i)
  %i.n = load <2 x float>, ptr %i.g, align 4, !tbaa !13 ; 3 uses
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.m)
  %i.r = load <2 x float>, ptr %i.h, align 8, !tbaa !13 ; 3 uses
  %i.s = fdiv <2 x float> %i.q, %i.r
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.u, <2 x float> %i.i)
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = fdiv <2 x float> %i.y, %i.r
  %i.aa = insertelement <2 x float> poison, float %5, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.ab, <2 x float> %i.i)
  %i.ad = insertelement <2 x float> poison, float %6, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = fdiv <2 x float> %i.af, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.066.i.i.ph = phi i32 [ %i.av, %bb.d ], [ 0, %bb.a ]
  %.064.i.i.ph = phi i32 [ %i.be, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.bc, %bb.d ], [ %i.ag, %bb.a ]
  %.ph25 = phi <2 x float> [ %i.bb, %bb.d ], [ %i.z, %bb.a ]
  %.ph26 = phi <2 x float> [ %i.ba, %bb.d ], [ %i.s, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.066.i.i = phi i32 [ %i.bi, %bb.e ], [ %.066.i.i.ph, %.outer ] ; 4 uses
  %.064.i.i = phi i32 [ %i.bh, %bb.e ], [ %.064.i.i.ph, %.outer ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.bo, %bb.e ], [ %.ph, %.outer ] ; 5 uses
  %i.ai = phi <2 x float> [ %i.bl, %bb.e ], [ %.ph25, %.outer ] ; 3 uses
  %i.aj = fadd <2 x float> %i.ah, %.ph26
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float -2.000000e+00), <2 x float> %i.aj)
  %i.al = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.am = fcmp ole <2 x float> %i.al, splat (float 2.500000e-01) ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = icmp sgt i32 %.064.i.i, 15
  %or.cond.i.i = select i1 %i.aq, i1 true, i1 %i.ap
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = extractelement <2 x float> %i.ah, i64 1
  %i.at = extractelement <2 x float> %.ph26, i64 0
  %i.au = extractelement <2 x float> %.ph26, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.at, float noundef %i.au, float noundef %i.ar, float noundef %i.as)
  %.not.i.i = icmp eq i32 %.066.i.i, 0
  br i1 %.not.i.i, label %_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = add i32 %.066.i.i, -1                   ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !13
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !13
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !150
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bf = fadd <2 x float> %i.ai, %.ph26
  %i.bg = fadd <2 x float> %i.ah, %i.ai
  %i.bh = add nsw i32 %.064.i.i, 1                ; 2 uses
  %i.bi = add i32 %.066.i.i, 1
  %i.bj = zext i32 %.066.i.i to i64
  %i.bk = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.bj ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bl = fmul <2 x float> %i.bf, splat (float 5.000000e-01) ; 2 uses
  %i.bm = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 2 uses
  %i.bn = fadd <2 x float> %i.bm, %i.bl
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bp, ptr %i.bk, align 4, !tbaa !13
  store <2 x float> %i.ah, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !13
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !57
  br label %bb.b

_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void
}

declare void @hb_draw_funcs_set_cubic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_raster_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %10 = alloca [16 x %struct.cubic_node_t], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load <2 x float>, ptr %i.c, align 4, !tbaa !13 ; 4 uses
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !13 ; 4 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !13 ; 4 uses
  %11 = load <2 x float>, ptr %i.a, align 4, !tbaa !13 ; 2 uses
  %i.i = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.i, <2 x float> %i.f)
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %12, <2 x float> %i.j)
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !13 ; 4 uses
  %i.m = fdiv <2 x float> %i.k, %i.l
  %i.n = insertelement <2 x float> poison, float %3, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.o, <2 x float> %i.f)
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = fdiv <2 x float> %i.s, %i.l
  %i.u = insertelement <2 x float> poison, float %5, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.v, <2 x float> %i.f)
  %i.x = insertelement <2 x float> poison, float %6, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.y, <2 x float> %i.w)
  %i.aa = fdiv <2 x float> %i.z, %i.l
  %i.ab = insertelement <2 x float> poison, float %7, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.ac, <2 x float> %i.f)
  %i.ae = insertelement <2 x float> poison, float %8, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = fdiv <2 x float> %i.ag, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.0104.i.i.ph = phi i32 [ %i.ba, %bb.d ], [ 0, %bb.a ]
  %.0102.i.i.ph = phi i32 [ %i.bl, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.bj, %bb.d ], [ %i.ah, %bb.a ]
  %.ph34 = phi <2 x float> [ %i.bi, %bb.d ], [ %i.aa, %bb.a ]
  %.ph35 = phi <2 x float> [ %i.bf, %bb.d ], [ %i.t, %bb.a ]
  %.ph36 = phi <2 x float> [ %i.bd, %bb.d ], [ %i.m, %bb.a ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.0104.i.i = phi i32 [ %i.bq, %bb.e ], [ %.0104.i.i.ph, %.outer ] ; 4 uses
  %.0102.i.i = phi i32 [ %i.bp, %bb.e ], [ %.0102.i.i.ph, %.outer ] ; 2 uses
  %i.ai = phi <2 x float> [ %i.cb, %bb.e ], [ %.ph, %.outer ] ; 6 uses
  %i.aj = phi <2 x float> [ %i.bx, %bb.e ], [ %.ph34, %.outer ] ; 3 uses
  %i.ak = phi <2 x float> [ %i.bt, %bb.e ], [ %.ph35, %.outer ] ; 3 uses
  %i.al = fmul <2 x float> %i.ak, splat (float -3.000000e+00)
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.ph36, <2 x float> splat (float 2.000000e+00), <2 x float> %i.al)
  %i.an = fadd <2 x float> %i.ai, %i.am
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> splat (float -3.000000e+00), <2 x float> %.ph36)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ao)
  %i.aq = shufflevector <2 x float> %i.an, <2 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr33 = freeze <4 x float> %i.aq
  %i.ar = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %.fr33)
  %i.as = fcmp ugt <4 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = bitcast <4 x i1> %i.as to i4
  %i.au = icmp eq i4 %i.at, 0
  %i.av = icmp sgt i32 %.0102.i.i, 15
  %or.cond5.i.i = or i1 %i.av, %i.au
  br i1 %or.cond5.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aw = extractelement <2 x float> %i.ai, i64 0
  %i.ax = extractelement <2 x float> %i.ai, i64 1
  %i.ay = extractelement <2 x float> %.ph36, i64 0
  %i.az = extractelement <2 x float> %.ph36, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.ay, float noundef %i.az, float noundef %i.aw, float noundef %i.ax)
  %.not.i.i = icmp eq i32 %.0104.i.i, 0
  br i1 %.not.i.i, label %_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = add i32 %.0104.i.i, -1                  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.bb ; 5 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.bj = load <2 x float>, ptr %i.bh, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !152
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bm = fadd <2 x float> %i.ak, %.ph36
  %i.bn = fadd <2 x float> %i.aj, %i.ak
  %i.bo = fadd <2 x float> %i.ai, %i.aj
  %i.bp = add nsw i32 %.0102.i.i, 1               ; 2 uses
  %i.bq = add i32 %.0104.i.i, 1
  %i.br = zext i32 %.0104.i.i to i64
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.br ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bt = fmul <2 x float> %i.bm, splat (float 5.000000e-01) ; 2 uses
  %i.bu = fmul <2 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bv = fmul <2 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bw = fadd <2 x float> %i.bu, %i.bt
  %i.bx = fmul <2 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = fadd <2 x float> %i.bv, %i.bu
  %i.bz = fmul <2 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
  %i.ca = fadd <2 x float> %i.bz, %i.bx
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.cc, ptr %i.bs, align 4, !tbaa !13
  store <2 x float> %i.bv, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !13
  store <2 x float> %i.ai, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !13
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i32 %i.bp, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !tbaa !57
  br label %bb.b

_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void
}

declare void @hb_draw_funcs_set_close_path_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL20hb_raster_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #12 {
bb.a:
  ret void
}

declare void @hb_draw_funcs_make_immutable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL29free_static_raster_draw_funcsv() #10 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL24static_raster_draw_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !36

.critedge.i:                                      ; preds = %bb.b
  %i.d = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  %.not3.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a) #18
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x float> poison, float %3, i64 0
  %i.b = insertelement <4 x float> %i.a, float %4, i64 1
  %i.c = insertelement <4 x float> %i.b, float %1, i64 2
  %i.d = insertelement <4 x float> %i.c, float %2, i64 3
  %i.e = fmul <4 x float> %i.d, splat (float 2.560000e+02)
  %i.f = fadd <4 x float> %i.e, splat (float 5.000000e-01)
  %i.g = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.f)
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 2 uses
  %i.i = fcmp oge <4 x double> %i.h, splat (double f0xC1E0000000000000)
  %i.j = select <4 x i1> %i.i, <4 x double> %i.h, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.k = fcmp ole <4 x double> %i.j, splat (double f0x41DFFFFFFFC00000)
  %i.l = select <4 x i1> %i.k, <4 x double> %i.j, <4 x double> splat (double f0x41DFFFFFFFC00000)
  %i.m = fptosi <4 x double> %i.l to <4 x i32>    ; 4 uses
  %i.n = extractelement <4 x i32> %i.m, i64 3     ; 4 uses
  %i.o = extractelement <4 x i32> %i.m, i64 1     ; 4 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %i.n, %i.o
  %i.r = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.16.0 = phi i32 [ -1, %bb.c ], [ 1, %bb.b ]
  %.sroa.12.0 = phi i32 [ %i.n, %bb.c ], [ %i.o, %bb.b ]
  %.sroa.6.0 = phi i32 [ %i.o, %bb.c ], [ %i.n, %bb.b ]
  %i.s = phi <4 x i32> [ %i.m, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.t = extractelement <4 x i32> %i.s, i64 2
  %i.u = sext i32 %i.t to i64
  %i.v = extractelement <4 x i32> %i.s, i64 0
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = shl nsw i64 %i.x, 16
  %i.z = sext i32 %.sroa.12.0 to i64
  %i.aa = sext i32 %.sroa.6.0 to i64
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = sdiv i64 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !61 ; 3 uses
end_hunk_1
