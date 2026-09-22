Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-draw?download=true
inline.NumInlined: 414
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hb_atomic_t.7 = type { ptr }
%struct.hb_raster_extents_t = type { i32, i32, i32, i32, i32 }
%"struct.hb_user_data_array_t::hb_user_data_item_t" = type { ptr, ptr, ptr }
%struct.quad_node_t = type { float, float, float, float, float, float, i32 }
%struct.cubic_node_t = type { float, float, float, float, float, float, float, float, i32 }

$_ZN11hb_vector_tIjLb0EE6extendIS0_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEvRKS3_b = comdat any

$_ZN16hb_raster_draw_tD2Ev = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_ = comdat any

$_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b = comdat any

$_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb = comdat any

$_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v = comdat any

$_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_ = comdat any

$_ZN11hb_vector_tI16hb_raster_edge_tLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIiLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIsLb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIS_IjLb0EELb0EE5allocEjb = comdat any

$_ZN11hb_vector_tIjLb0EE5allocEjb = comdat any

@_ZL24static_raster_draw_funcs = internal global { %struct.hb_atomic_t.7 } zeroinitializer, align 8
@_hb_CrapPool = external hidden global [80 x i64], align 16
@_hb_NullPool = external hidden local_unnamed_addr constant [80 x i64], align 16

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_draw_create_or_fail() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 160) #18 ; 11 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL16hb_object_createI16hb_raster_draw_tJEEPT_DpT0_.exit, label %_ZL15hb_object_traceI16hb_raster_draw_tEvPKT_PKc.exit.i, !prof !11

_ZL15hb_object_traceI16hb_raster_draw_tEvPKT_PKc.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.g, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, i8 0, i64 88, i1 false)
  store atomic i32 1, ptr %i.a monotonic, align 8
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.i = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  br label %_ZL16hb_object_createI16hb_raster_draw_tJEEPT_DpT0_.exit

_ZL16hb_object_createI16hb_raster_draw_tJEEPT_DpT0_.exit: ; preds = %bb.a, %_ZL15hb_object_traceI16hb_raster_draw_tEvPKT_PKc.exit.i
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_raster_draw_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI16hb_raster_draw_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI16hb_raster_draw_tEPT_S2_.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI16hb_raster_draw_tEPT_S2_.exit

_ZL19hb_object_referenceI16hb_raster_draw_tEPT_S2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_raster_draw_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit.thread, label %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit, !prof !11

_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i, label %bb.c, label %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit.thread

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @hb_raster_image_destroy(ptr noundef %i.e) #18
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i.i4, label %_ZL26hb_object_actually_destroyI16hb_raster_draw_tEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  %i.i = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.g) #18
  store atomic ptr null, ptr %i.f monotonic, align 8
  br label %_ZL26hb_object_actually_destroyI16hb_raster_draw_tEvPT_.exit

_ZL26hb_object_actually_destroyI16hb_raster_draw_tEvPT_.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZN16hb_raster_draw_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #18
  tail call void @hb_free(ptr noundef nonnull %0) #18
  br label %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit.thread

_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit.thread: ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI16hb_raster_draw_tEbPT_.exit, %_ZL26hb_object_actually_destroyI16hb_raster_draw_tEvPT_.exit
  ret void
}

declare void @hb_raster_image_destroy(ptr noundef) local_unnamed_addr #3

declare void @hb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_raster_draw_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI16hb_raster_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI16hb_raster_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !11

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !36

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 56) #18 ; 8 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI16hb_raster_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null) #18 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = cmpxchg weak ptr %i.b, ptr null, ptr %i.d acq_rel monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i, label %bb.d, !prof !37

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader.i
  %.016.i = phi ptr [ %i.c, %.preheader.i ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.j = zext i1 %i.i to i32
  br label %_ZL23hb_object_set_user_dataI16hb_raster_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #18 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.d) #18
  %i.l = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %.lr.ph.i, label %._crit_edge.i, !prof !38

_ZL23hb_object_set_user_dataI16hb_raster_draw_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_draw_get_user_data(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_get_user_dataIK16hb_raster_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_get_user_dataIK16hb_raster_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %_ZL23hb_object_get_user_dataIK16hb_raster_draw_tEPvPT_P18hb_user_data_key_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42   ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

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
  store float %1, ptr %i.a, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %4, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %6, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !14
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
  store float %i.b, ptr %1, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !49
  store float %i.d, ptr %2, align 4, !tbaa !14
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
  %i.b = load float, ptr %i.a, align 8, !tbaa !80
  store float %i.b, ptr %1, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !81
  store float %i.d, ptr %2, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !82
  store float %i.f, ptr %3, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !83
  store float %i.h, ptr %4, align 4, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load float, ptr %i.i, align 8, !tbaa !84
  store float %i.j, ptr %5, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not27 = icmp eq ptr %6, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !85
  store float %i.l, ptr %6, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hb_raster_draw_set_extents(ptr nofree noundef writeonly captures(none) initializes((48, 69)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_raster_draw_get_extents(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !52, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false), !tbaa.struct !51
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @hb_raster_draw_set_glyph_extents(ptr nofree noundef captures(none) initializes((48, 69)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i32>, ptr %1, align 4, !tbaa !50
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = load <2 x i32>, ptr %i.a, align 4, !tbaa !50
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fadd <2 x float> %i.g, %i.i
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.l = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.m = fcmp oge <4 x float> %i.k, %i.l
  %i.n = fcmp ole <4 x float> %i.k, %i.l
  %i.o = shufflevector <4 x i1> %i.m, <4 x i1> %i.n, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.p = select <4 x i1> %i.o, <4 x float> %i.l, <4 x float> %i.k ; 4 uses
  %i.q = load <2 x float>, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.r = load <2 x float>, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.s = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.s, <2 x float> %i.q) ; 2 uses
  %i.u = load <2 x float>, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %i.v = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.t)
  %i.x = load <2 x float>, ptr %i.e, align 8, !tbaa !14 ; 4 uses
  %i.y = fdiv <2 x float> %i.w, %i.x              ; 4 uses
  %i.z = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.z, <2 x float> %i.t)
  %i.ab = fdiv <2 x float> %i.aa, %i.x            ; 4 uses
  %i.ac = fcmp ole <2 x float> %i.y, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.y, <2 x float> %i.ab ; 2 uses
  %i.ae = fcmp oge <2 x float> %i.y, %i.ab
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.y, <2 x float> %i.ab ; 2 uses
  %i.ag = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ag, <2 x float> %i.q) ; 2 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.v, <2 x float> %i.ah)
  %i.aj = fdiv <2 x float> %i.ai, %i.x            ; 4 uses
  %i.ak = fcmp ole <2 x float> %i.ad, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x float> %i.ad, <2 x float> %i.aj ; 2 uses
  %i.am = fcmp oge <2 x float> %i.af, %i.aj
  %i.an = select <2 x i1> %i.am, <2 x float> %i.af, <2 x float> %i.aj ; 2 uses
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.z, <2 x float> %i.ah)
  %i.ap = fdiv <2 x float> %i.ao, %i.x            ; 4 uses
  %i.aq = fcmp ole <2 x float> %i.al, %i.ap
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.al, <2 x float> %i.ap
  %i.as = fcmp oge <2 x float> %i.an, %i.ap
  %i.at = select <2 x i1> %i.as, <2 x float> %i.an, <2 x float> %i.ap
  %i.au = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ar)
  %i.av = fpext <2 x float> %i.au to <2 x double> ; 2 uses
  %i.aw = fcmp oge <2 x double> %i.av, splat (double f0xC1E0000000000000)
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.av, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.ay = fcmp ole <2 x double> %i.ax, splat (double f0x41DFFFFFFFC00000)
  %i.az = select <2 x i1> %i.ay, <2 x double> %i.ax, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.ba = fptosi <2 x double> %i.az to <2 x i32>  ; 3 uses
  %i.bb = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.at)
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 2 uses
  %i.bd = fcmp oge <2 x double> %i.bc, splat (double f0xC1E0000000000000)
  %i.be = select <2 x i1> %i.bd, <2 x double> %i.bc, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.bf = fcmp ole <2 x double> %i.be, splat (double f0x41DFFFFFFFC00000)
  %i.bg = select <2 x i1> %i.bf, <2 x double> %i.be, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.bh = fptosi <2 x double> %i.bg to <2 x i32>  ; 2 uses
  %i.bi = icmp sle <2 x i32> %i.bh, %i.ba
  %i.bj = bitcast <2 x i1> %i.bi to i2
  %i.bk = icmp eq i2 %i.bj, 0
  br i1 %i.bk, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bl, i8 0, i64 20, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bm = sext <2 x i32> %i.bh to <2 x i64>
  %i.bn = sext <2 x i32> %i.ba to <2 x i64>
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i32> %i.ba, ptr %i.bo, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = sub nsw <2 x i64> %i.bm, %i.bn
  %i.bq = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.bp, <2 x i64> splat (i64 4096))
  %i.br = trunc <2 x i64> %i.bq to <2 x i32>
  store <2 x i32> %i.br, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !50
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 %.sink, ptr %i.bs, align 4, !tbaa !52
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
  store i8 0, ptr %i.b, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_raster_draw_reset(ptr nofree noundef writeonly captures(none) initializes((16, 69), (76, 80), (140, 144)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.b, i8 0, i64 21, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_Z28hb_raster_draw_get_edge_workP16hb_raster_draw_tj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %.01116.epil.init, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %.01116, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = ashr i32 %i.y, 8
  %i.aa = sext i32 %i.z to i64
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.f)
  %i.ab = add i64 %.017, 1
  %i.ac = add i64 %i.ab, %.sroa.speculated
  %i.ad = getelementptr inbounds nuw i8, ptr %.01116, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %.01116, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !61
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  tail call void @hb_raster_image_destroy(ptr noundef %i.b) #18
  store ptr %1, ptr %i.a, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_draw_get_funcs(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !36

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %i.b = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL24static_raster_draw_funcs) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %.lr.ph.i.i ] ; 3 uses
  %i.d = cmpxchg weak ptr @_ZL24static_raster_draw_funcs, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i)
  %i.f = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !38

_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.19.ph.i.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.d ], [ %.07.i.i, %bb.c ]
  ret ptr %.19.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_raster_draw_glyph_or_fail(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %hb_raster_draw_get_funcs.exit, !prof !36

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.d
  %i.b = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL24static_raster_draw_funcs) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.c = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %.lr.ph.i.i.i ] ; 3 uses
  %i.d = cmpxchg weak ptr @_ZL24static_raster_draw_funcs, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %hb_raster_draw_get_funcs.exit, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i.i)
  %i.f = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %hb_raster_draw_get_funcs.exit, !prof !38

hb_raster_draw_get_funcs.exit:                    ; preds = %bb.c, %bb.d, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.a, %bb.a ], [ %.07.i.i.i, %bb.c ], [ %i.f, %bb.d ]
  %i.g = tail call i32 @hb_font_draw_glyph_or_fail(ptr noundef %1, i32 noundef %2, ptr noundef %.19.ph.i.i.i, ptr noundef %0) #18
  ret i32 %i.g
}

declare i32 @hb_font_draw_glyph_or_fail(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @hb_raster_draw_glyph(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %hb_raster_draw_glyph_or_fail.exit, !prof !36

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.d
  %i.b = tail call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL24static_raster_draw_funcs) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.c = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.d = cmpxchg weak ptr @_ZL24static_raster_draw_funcs, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %hb_raster_draw_glyph_or_fail.exit, label %bb.d, !prof !37

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i.i.i)
  %i.f = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %hb_raster_draw_glyph_or_fail.exit, !prof !38

hb_raster_draw_glyph_or_fail.exit:                ; preds = %bb.c, %bb.d, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.d ], [ %.07.i.i.i.i, %bb.c ]
  %i.g = tail call i32 @hb_font_draw_glyph_or_fail(ptr noundef %1, i32 noundef %2, ptr noundef %.19.ph.i.i.i.i, ptr noundef %0) #18 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @hb_raster_draw_render(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %1 = alloca %struct.hb_raster_extents_t, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !52, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 5 uses
  %i.i = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.i, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !61
  %i.o = load i32, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.p = ashr i32 %.sroa.speculated404, 8         ; 2 uses
  %i.q = ashr i32 %.sroa.speculated390, 8         ; 2 uses
  %i.r = sext i32 %.sroa.speculated397 to i64
  %i.s = add nsw i64 %i.r, 255
  %i.t = lshr i64 %i.s, 8
  %i.u = trunc i64 %i.t to i32
  %i.v = sext i32 %.sroa.speculated383 to i64
  %i.w = add nsw i64 %i.v, 255
  %i.x = lshr i64 %i.w, 8
  %i.y = trunc i64 %i.x to i32
  %i.z = sub nsw i32 %i.u, %i.p
  %.sroa.speculated373 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %.sroa.speculated368 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated373, i32 4096)
  %i.aa = sub nsw i32 %i.y, %i.q
  %.sroa.speculated359 = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %.sroa.speculated354 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated359, i32 4096)
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.058599 = phi ptr [ %i.ak, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 5 uses
  %.0569598 = phi i32 [ %.sroa.speculated404, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %.0570597 = phi i32 [ %.sroa.speculated397, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %.0571596 = phi i32 [ %.sroa.speculated390, %.lr.ph ], [ %i.n, %.lr.ph.preheader ]
  %.0572595 = phi i32 [ %.sroa.speculated383, %.lr.ph ], [ %i.l, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.058599, i64 8
  %i.ac = load i32, ptr %.058599, align 4, !tbaa !50 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !50 ; 2 uses
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ad)
  %.sroa.speculated404 = tail call i32 @llvm.smin.i32(i32 %.0569598, i32 %i.ae) ; 2 uses
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ad)
  %.sroa.speculated397 = tail call i32 @llvm.smax.i32(i32 %.0570597, i32 %i.af) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.058599, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %.sroa.speculated390 = tail call i32 @llvm.smin.i32(i32 %.0571596, i32 %i.ah) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.058599, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50
  %.sroa.speculated383 = tail call i32 @llvm.smax.i32(i32 %.0572595, i32 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.058599, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0408.0.copyload = load i32, ptr %i.al, align 8, !tbaa !50 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !50 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !50 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !50 ; 2 uses
  %i.am = icmp eq i32 %.sroa.26.0.copyload, 0
  br i1 %i.am, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %._crit_edge, %bb.c
  %.sroa.19.0585 = phi i32 [ %.sroa.19.0.copyload, %bb.c ], [ 0, %bb.b ], [ %.sroa.speculated354, %._crit_edge ]
  %.sroa.10.0582 = phi i32 [ %.sroa.10.0.copyload, %bb.c ], [ 0, %bb.b ], [ %.sroa.speculated368, %._crit_edge ] ; 2 uses
  %.sroa.7.0581 = phi i32 [ %.sroa.7.0.copyload, %bb.c ], [ 0, %bb.b ], [ %i.q, %._crit_edge ]
  %.sroa.0408.0579 = phi i32 [ %.sroa.0408.0.copyload, %bb.c ], [ 0, %bb.b ], [ %i.p, %._crit_edge ]
  %i.an = add i32 %.sroa.10.0582, 3
  %i.ao = and i32 %i.an, -4
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.sroa.19.0584 = phi i32 [ %.sroa.19.0585, %.thread ], [ %.sroa.19.0.copyload, %bb.c ] ; 13 uses
  %.sroa.10.0583 = phi i32 [ %.sroa.10.0582, %.thread ], [ %.sroa.10.0.copyload, %bb.c ] ; 19 uses
  %.sroa.7.0580 = phi i32 [ %.sroa.7.0581, %.thread ], [ %.sroa.7.0.copyload, %bb.c ] ; 3 uses
  %.sroa.0408.0578 = phi i32 [ %.sroa.0408.0579, %.thread ], [ %.sroa.0408.0.copyload, %bb.c ] ; 7 uses
  %.sroa.26.1 = phi i32 [ %i.ao, %.thread ], [ %.sroa.26.0.copyload, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %.not69 = icmp eq ptr %i.aq, null
  br i1 %.not69, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @hb_raster_image_destroy(ptr noundef null) #18
  tail call void @hb_raster_image_destroy(ptr noundef null) #18
  store ptr null, ptr %i.ap, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = tail call ptr @hb_raster_image_create_or_fail() #18 ; 2 uses
  tail call void @hb_raster_image_destroy(ptr noundef null) #18
  tail call void @hb_raster_image_destroy(ptr noundef null) #18
  %.not590 = icmp eq ptr %i.ar, null
  br i1 %.not590, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0341.0 = phi ptr [ %i.ar, %bb.f ], [ %i.aq, %bb.e ] ; 11 uses
  store i32 %.sroa.0408.0578, ptr %1, align 8, !tbaa !50
  %.sroa.7.0..sroa_idx413 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sroa.7.0580, ptr %.sroa.7.0..sroa_idx413, align 4, !tbaa !50
  %.sroa.10.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.10.0583, ptr %.sroa.10.0..sroa_idx418, align 8, !tbaa !50
  %.sroa.19.0..sroa_idx429 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sroa.19.0584, ptr %.sroa.19.0..sroa_idx429, align 4, !tbaa !50
  %.sroa.26.0..sroa_idx437 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx437, align 8, !tbaa !50
  %i.as = tail call noundef zeroext i1 @_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0341.0, i32 noundef 0, ptr noundef nonnull byval(%struct.hb_raster_extents_t) align 8 %1) #18
  br i1 %i.as, label %bb.h, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", !prof !37

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN17hb_raster_image_t5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0341.0) #18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !99
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = icmp ne i32 %.sroa.10.0583, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %i.ax = icmp ne i32 %.sroa.19.0584, 0
  %or.cond5 = select i1 %or.cond, i1 %i.ax, i1 false
  br i1 %or.cond5, label %bb.i, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit"

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp slt i32 %.sroa.10.0583, 0
  br i1 %i.ay, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef %.sroa.10.0583, i1 noundef zeroext false)
  br i1 %i.ba, label %bb.k, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", !prof !102

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.10.0583, ptr %i.bb, align 4, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = tail call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %.sroa.10.0583, i1 noundef zeroext false)
  br i1 %i.bd, label %bb.l, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit"

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sroa.10.0583, ptr %i.be, align 4, !tbaa !63
  %i.bf = shl i32 %.sroa.10.0583, 2               ; 2 uses
  %.not.i102 = icmp eq i32 %i.bf, 0
  br i1 %.not.i102, label %_ZL9hb_memsetPvij.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = zext i32 %i.bf to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.l, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !104
  %i.bl = shl nuw i32 %.sroa.10.0583, 1
  %i.bm = zext i32 %i.bl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !105 ; 3 uses
  %i.bp = icmp ugt i32 %.sroa.19.0584, %i.bo
  br i1 %i.bp, label %bb.n, label %.lr.ph605

bb.n:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.bq = icmp slt i32 %.sroa.19.0584, 0
  br i1 %i.bq, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bs = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IjLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i32 noundef %.sroa.19.0584, i1 noundef zeroext false)
  br i1 %i.bs, label %bb.p, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", !prof !102

bb.p:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !64 ; 6 uses
  %i.bu = icmp ugt i32 %.sroa.19.0584, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = sub nuw nsw i32 %.sroa.19.0584, %i.bt
  %i.bw = shl i32 %i.bv, 4                        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = zext nneg i32 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bz
  %i.cb = zext i32 %i.bw to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ca, i8 0, i64 %i.cb, i1 false)
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  %i.cc = icmp ult i32 %.sroa.19.0584, %i.bt
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %i.cd = sub nuw i32 %i.bt, %.sroa.19.0584
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !65
  %i.cg = zext i32 %i.bt to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cg
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.cj, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i ], [ %i.ch, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.ci, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i ], [ %i.cd, %.lr.ph.preheader.i.i.i ]
  %i.ci = add i32 %.046.i.i.i, -1                 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !66
  %i.cl = add i32 %i.ck, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.cl, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.t, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.cm, align 4, !tbaa !56
  %i.cn = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !67
  tail call void @hb_free(ptr noundef %i.co) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i:           ; preds = %bb.t, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i, %bb.s, %bb.r, %bb.q
  store i32 %.sroa.19.0584, ptr %i.bn, align 4, !tbaa !64
  %.not641 = icmp eq i32 %i.bo, 0
  br i1 %.not641, label %.preheader, label %.lr.ph605

.lr.ph605:                                        ; preds = %_ZL9hb_memsetPvij.exit, %.loopexit
  %.sroa.speculated335 = tail call i32 @llvm.umin.i32(i32 %.sroa.19.0584, i32 %i.bo) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !106 ; 9 uses
  %wide.trip.count = zext i32 %.sroa.speculated335 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.cr = add i32 %.sroa.speculated335, -1
  %i.cs = icmp ult i32 %i.cr, 7
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph605.new

.lr.ph605.new:                                    ; preds = %.lr.ph605
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.v

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph605
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod739 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod739)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.epil
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 0, ptr %i.cu, align 4, !tbaa !56
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.u, !llvm.loop !86

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.u, %.loopexit
  %i.cv = load i32, ptr %i.at, align 4, !tbaa !99
  %.not642 = icmp eq i32 %i.cv, 0
  br i1 %.not642, label %._crit_edge608, label %.lr.ph607

.lr.ph607:                                        ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = load i32, ptr @_hb_NullPool, align 16
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph605.new
  %indvars.iv = phi i64 [ 0, %.lr.ph605.new ], [ %indvars.iv.next.7, %bb.v ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph605.new ], [ %niter.next.7, %bb.v ]
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.da, align 4, !tbaa !56
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  store i32 0, ptr %i.dc, align 4, !tbaa !56
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  store i32 0, ptr %i.de, align 4, !tbaa !56
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i32 0, ptr %i.dg, align 4, !tbaa !56
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  store i32 0, ptr %i.di, align 4, !tbaa !56
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 84
  store i32 0, ptr %i.dk, align 4, !tbaa !56
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 100
  store i32 0, ptr %i.dm, align 4, !tbaa !56
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 116
  store i32 0, ptr %i.do, align 4, !tbaa !56
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.v, !llvm.loop !87

._crit_edge608:                                   ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  store i32 0, ptr %i.dp, align 4, !tbaa !56
  %i.dq = sext i32 %.sroa.7.0580 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0341.0, i64 24 ; 2 uses
  %i.dx = sext i32 %.sroa.0408.0578 to i64        ; 2 uses
  %wide.trip.count673 = zext i32 %.sroa.19.0584 to i64
  br label %bb.aa

bb.w:                                             ; preds = %.lr.ph607, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %indvars.iv649 = phi i64 [ 0, %.lr.ph607 ], [ %indvars.iv.next650, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 3 uses
  %i.dy = load ptr, ptr %i.cw, align 8, !tbaa !100
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %indvars.iv649
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !61
  %i.ec = ashr i32 %i.eb, 8
  %i.ed = sub nsw i32 %i.ec, %.sroa.7.0580
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 0) ; 2 uses
  %.not73 = icmp ult i32 %spec.store.select, %.sroa.19.0584
  br i1 %.not73, label %bb.x, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.x:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %i.cx, align 8, !tbaa !106
  %i.ef = zext nneg i32 %spec.store.select to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ef ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !56 ; 3 uses
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !66
  %.not.i107 = icmp slt i32 %i.ei, %i.ej
  br i1 %.not.i107, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = add i32 %i.ei, 1
  %i.el = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i32 noundef %i.ek, i1 noundef zeroext false)
  br i1 %i.el, label %..critedge_crit_edge.i, label %bb.z, !prof !37

..critedge_crit_edge.i:                           ; preds = %bb.y
  %.pre.i = load i32, ptr %i.eh, align 4, !tbaa !56
  br label %.critedge.i

bb.z:                                             ; preds = %bb.y
  store i32 %i.cy, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.x
  %i.em = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ei, %bb.x ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !67
  %i.ep = add i32 %i.em, 1
  store i32 %i.ep, ptr %i.eh, align 4, !tbaa !56
  %i.eq = zext i32 %i.em to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.eq
  %i.es = trunc nuw i64 %indvars.iv649 to i32
  store i32 %i.es, ptr %i.er, align 4, !tbaa !50
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.z, %bb.w
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %i.et = load i32, ptr %i.at, align 4, !tbaa !99
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next650, %i.eu
  br i1 %i.ev, label %bb.w, label %._crit_edge608, !llvm.loop !88

bb.aa:                                            ; preds = %._crit_edge608, %_ZL9hb_memsetPvij.exit152
  %indvars.iv669 = phi i64 [ 0, %._crit_edge608 ], [ %indvars.iv.next670, %_ZL9hb_memsetPvij.exit152 ] ; 4 uses
  %i.ew = add nsw i64 %indvars.iv669, %i.dq       ; 2 uses
  %i.ex = shl nsw i64 %i.ew, 8
  %.not.i3.i = icmp sgt i64 %i.ew, 8388607
  %.sroa.speculate.load.false.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.ex, i64 -2147483648)
  %i.ey = trunc i64 %.sroa.speculate.load.false.sroa.speculated to i32
  %i.ez = select i1 %.not.i3.i, i32 2147483647, i32 %i.ey ; 5 uses
  %i.fa = load ptr, ptr %i.ds, align 8, !tbaa !106
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %indvars.iv669
  tail call void @_ZN11hb_vector_tIjLb0EE6extendIS0_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEvRKS3_b(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i1 noundef zeroext false)
  %i.fc = load i32, ptr %i.dp, align 4, !tbaa !108 ; 2 uses
  %.not643 = icmp eq i32 %i.fc, 0
  br i1 %.not643, label %._crit_edge636.thread, label %.lr.ph635

.lr.ph635:                                        ; preds = %bb.aa
  %i.fd = load ptr, ptr %i.dt, align 8, !tbaa !109 ; 2 uses
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !100
  %i.ff = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 2147483391)
  %narrow = add nsw i32 %i.ff, 256
  %wide.trip.count663 = zext i32 %i.fc to i64
  br label %bb.ae

._crit_edge636:                                   ; preds = %bb.bi
  %i.fg = icmp slt i32 %.161, 0
  br i1 %i.fg, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %._crit_edge636.thread, !prof !110

._crit_edge636.thread:                            ; preds = %bb.aa, %._crit_edge636
  %.060.lcssa726 = phi i32 [ %.161, %._crit_edge636 ], [ 0, %bb.aa ] ; 4 uses
  %.0.lcssa724 = phi i32 [ %.1555, %._crit_edge636 ], [ 0, %bb.aa ] ; 2 uses
  %.0556.lcssa722 = phi i32 [ %.1557, %._crit_edge636 ], [ %.sroa.10.0583, %bb.aa ] ; 2 uses
  %i.fh = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i32 noundef %.060.lcssa726, i1 noundef zeroext false)
  br i1 %i.fh, label %bb.ab, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

bb.ab:                                            ; preds = %._crit_edge636.thread
  %i.fi = load i32, ptr %i.dp, align 4, !tbaa !56 ; 3 uses
  %i.fj = icmp ugt i32 %.060.lcssa726, %i.fi
  br i1 %i.fj, label %bb.ac, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fk = sub nuw nsw i32 %.060.lcssa726, %i.fi
  %i.fl = shl i32 %i.fk, 2                        ; 2 uses
  %.not.i.i.i.i110 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i.i110, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.fm = load ptr, ptr %i.dt, align 8, !tbaa !67
  %i.fn = zext nneg i32 %i.fi to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fn
  %i.fp = zext i32 %i.fl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fo, i8 0, i64 %i.fp, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  store i32 %.060.lcssa726, ptr %i.dp, align 4, !tbaa !56
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %._crit_edge636, %._crit_edge636.thread, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %.0.lcssa725 = phi i32 [ %.1555, %._crit_edge636 ], [ %.0.lcssa724, %._crit_edge636.thread ], [ %.0.lcssa724, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 7 uses
  %.0556.lcssa723 = phi i32 [ %.1557, %._crit_edge636 ], [ %.0556.lcssa722, %._crit_edge636.thread ], [ %.0556.lcssa722, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 4 uses
  %.not70 = icmp ugt i32 %.0556.lcssa723, %.0.lcssa725
  br i1 %.not70, label %_ZL9hb_memsetPvij.exit152, label %bb.bj

bb.ae:                                            ; preds = %.lr.ph635, %bb.bi
  %indvars.iv660 = phi i64 [ 0, %.lr.ph635 ], [ %indvars.iv.next661, %bb.bi ] ; 2 uses
  %.060632 = phi i32 [ 0, %.lr.ph635 ], [ %.161, %bb.bi ] ; 3 uses
  %.0631 = phi i32 [ 0, %.lr.ph635 ], [ %.1555, %bb.bi ] ; 11 uses
  %.0556630 = phi i32 [ %.sroa.10.0583, %.lr.ph635 ], [ %.1557, %bb.bi ] ; 8 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv660
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !50 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %i.fs ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !60 ; 2 uses
  %.not72 = icmp sgt i32 %i.fv, %i.ez
  br i1 %.not72, label %bb.af, label %bb.bi

bb.af:                                            ; preds = %bb.ae
  %i.fw = load ptr, ptr %i.dv, align 8, !tbaa !103 ; 7 uses
  %i.fx = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 21 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !50 ; 2 uses
  %.sroa.speculated495 = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 %i.ez) ; 3 uses
  %.sroa.speculated489 = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 %narrow) ; 3 uses
  %.not.i = icmp slt i32 %.sroa.speculated495, %.sroa.speculated489
  br i1 %.not.i, label %bb.ag, label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.ag:                                            ; preds = %bb.af
  %i.ga = load i32, ptr %i.ft, align 8, !tbaa !101
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = sext i32 %.sroa.speculated495 to i64
  %i.gd = sext i32 %i.fz to i64                   ; 2 uses
  %i.ge = sub nsw i64 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !111 ; 2 uses
  %i.gh = mul nsw i64 %i.gg, %i.ge
  %i.gi = ashr i64 %i.gh, 16
  %i.gj = add nsw i64 %i.gi, %i.gb
  %i.gk = sext i32 %.sroa.speculated489 to i64
  %i.gl = sub nsw i64 %i.gk, %i.gd
  %i.gm = mul nsw i64 %i.gg, %i.gl
  %i.gn = ashr i64 %i.gm, 16
  %i.go = add nsw i64 %i.gn, %i.gb
  %.sroa.speculate.load.false.sroa.speculated475 = tail call i64 @llvm.smax.i64(i64 %i.gj, i64 -2147483648)
  %.sroa.speculated471 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculate.load.false.sroa.speculated475, i64 2147483647) ; 4 uses
  %i.gp = trunc nsw i64 %.sroa.speculated471 to i32 ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated467 = tail call i64 @llvm.smax.i64(i64 %i.go, i64 -2147483648)
  %.sroa.speculated464 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculate.load.false.sroa.speculated467, i64 2147483647) ; 2 uses
  %i.gq = trunc nsw i64 %.sroa.speculated464 to i32 ; 2 uses
  %i.gr = sub nsw i32 %.sroa.speculated495, %i.ez ; 5 uses
  %i.gs = sub nsw i32 %.sroa.speculated489, %i.ez ; 7 uses
  %i.gt = ashr i32 %i.gp, 8                       ; 10 uses
  %i.gu = and i32 %i.gp, 255                      ; 3 uses
  %i.gv = ashr i32 %i.gq, 8                       ; 7 uses
  %i.gw = and i32 %i.gq, 255                      ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !112 ; 17 uses
  %i.gz = icmp eq i32 %i.gt, %i.gv
  br i1 %i.gz, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ha = sub nsw i32 %i.gt, %.sroa.0408.0578     ; 5 uses
  %.not.i76 = icmp ult i32 %i.ha, %.sroa.10.0583
  br i1 %.not.i76, label %bb.ak, label %bb.ai, !prof !37

bb.ai:                                            ; preds = %bb.ah
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.aj, label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.hc = sub nsw i32 %i.gs, %i.gr
  %i.hd = mul nsw i32 %i.gy, %i.hc
  %i.he = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.hf = trunc i32 %i.hd to i16
  %i.hg = add i16 %i.he, %i.hf
  store i16 %i.hg, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.ak:                                            ; preds = %bb.ah
  %i.hh = sub nsw i32 %i.gs, %i.gr
  %i.hi = add nuw nsw i32 %i.gu, %i.gw
  %i.hj = mul i32 %i.gy, %i.hh                    ; 2 uses
  %i.hk = mul i32 %i.hj, %i.hi
  %i.hl = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.hl ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !50
  %i.ho = add nsw i32 %i.hn, %i.hk
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !50
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.hl ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !114
  %i.hr = trunc i32 %i.hj to i16
  %i.hs = add i16 %i.hq, %i.hr
  store i16 %i.hs, ptr %i.hp, align 2, !tbaa !114
  %.sroa.speculated290 = tail call i32 @llvm.umin.i32(i32 %.0556630, i32 %i.ha)
  %.sroa.speculated204 = tail call i32 @llvm.umax.i32(i32 %.0631, i32 %i.ha)
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.al:                                            ; preds = %bb.ag
  %i.ht = sub nsw i64 %.sroa.speculated464, %.sroa.speculated471 ; 4 uses
  %i.hu = sext i32 %i.gs to i64
  %i.hv = sext i32 %i.gr to i64
  %i.hw = sub nsw i64 %i.hu, %i.hv                ; 3 uses
  %i.hx = shl nuw nsw i64 %i.hw, 8
  %i.hy = sdiv i64 %i.hx, %i.ht
  %i.hz = trunc i64 %i.hy to i32                  ; 5 uses
  %i.ia = icmp sgt i64 %i.ht, 0
  br i1 %i.ia, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  %narrow.i = add nsw i32 %i.gt, 1                ; 2 uses
  %i.ib = zext i32 %narrow.i to i64
  %i.ic = shl i64 %i.ib, 40
  %.not.i3.i123 = icmp sgt i32 %i.gt, 8388606
  %i.id = ashr exact i64 %i.ic, 32
  %i.ie = select i1 %.not.i3.i123, i64 2147483647, i64 %i.id
  %i.if = sub nsw i64 %i.ie, %.sroa.speculated471
  %i.ig = mul nsw i64 %i.if, %i.hw
  %i.ih = sdiv i64 %i.ig, %i.ht
  %i.ii = trunc i64 %i.ih to i32                  ; 4 uses
  %i.ij = add nsw i32 %i.gr, %i.ii                ; 2 uses
  %i.ik = sub nsw i32 %i.gt, %.sroa.0408.0578     ; 5 uses
  %.not.i81 = icmp ult i32 %i.ik, %.sroa.10.0583
  br i1 %.not.i81, label %bb.ap, label %bb.an, !prof !37

bb.an:                                            ; preds = %bb.am
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.ao, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.im = mul nsw i32 %i.gy, %i.ii
  %i.in = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.io = trunc i32 %i.im to i16
  %i.ip = add i16 %i.in, %i.io
  store i16 %i.ip, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82

bb.ap:                                            ; preds = %bb.am
  %i.iq = or disjoint i32 %i.gu, 256
  %i.ir = mul i32 %i.iq, %i.gy
  %i.is = mul i32 %i.ir, %i.ii
  %i.it = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.it ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !50
  %i.iw = add nsw i32 %i.iv, %i.is
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !50
  %i.ix = mul nsw i32 %i.gy, %i.ii
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.it ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !114
  %i.ja = trunc i32 %i.ix to i16
  %i.jb = add i16 %i.iz, %i.ja
  store i16 %i.jb, ptr %i.iy, align 2, !tbaa !114
  %.sroa.speculated284 = tail call i32 @llvm.umin.i32(i32 %.0556630, i32 %i.ik)
  %.sroa.speculated198 = tail call i32 @llvm.umax.i32(i32 %.0631, i32 %i.ik)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82

_ZL8cell_addPiPsjiiiiiiRjS1_.exit82:              ; preds = %bb.an, %bb.ao, %bb.ap
  %.9565 = phi i32 [ %.sroa.speculated284, %bb.ap ], [ 0, %bb.ao ], [ %.0556630, %bb.an ] ; 2 uses
  %.9 = phi i32 [ %.sroa.speculated198, %bb.ap ], [ %.0631, %bb.ao ], [ %.0631, %bb.an ] ; 2 uses
  %i.jc = icmp slt i32 %narrow.i, %i.gv
  br i1 %i.jc, label %.lr.ph625, label %._crit_edge626

.lr.ph625:                                        ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82
  %factor.op.mul = mul i32 %i.gy, %i.hz           ; 2 uses
  %i.jd = trunc i32 %factor.op.mul to i16         ; 2 uses
  %.reass = shl i32 %factor.op.mul, 8
  %narrow716 = add nsw i32 %i.gt, 1
  %i.je = sext i32 %narrow716 to i64
  %wide.trip.count658 = sext i32 %i.gv to i64
  br label %bb.at

._crit_edge626:                                   ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82
  %.4560.lcssa = phi i32 [ %.9565, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82 ], [ %.7563, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 2 uses
  %.4.lcssa = phi i32 [ %.9, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82 ], [ %.7, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 3 uses
  %.0133.i.lcssa = phi i32 [ %i.ij, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit82 ], [ %i.jy, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 2 uses
  %i.jf = sub nsw i32 %i.gv, %.sroa.0408.0578     ; 5 uses
  %.not.i79 = icmp ult i32 %i.jf, %.sroa.10.0583
  br i1 %.not.i79, label %bb.as, label %bb.aq, !prof !37

bb.aq:                                            ; preds = %._crit_edge626
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %bb.ar, label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit, !prof !11

bb.ar:                                            ; preds = %bb.aq
  %i.jh = sub nsw i32 %i.gs, %.0133.i.lcssa
  %i.ji = mul nsw i32 %i.jh, %i.gy
  %i.jj = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.jk = trunc i32 %i.ji to i16
  %i.jl = add i16 %i.jj, %i.jk
  store i16 %i.jl, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.as:                                            ; preds = %._crit_edge626
  %i.jm = sub nsw i32 %i.gs, %.0133.i.lcssa       ; 2 uses
  %i.jn = mul i32 %i.gw, %i.gy
  %i.jo = mul i32 %i.jn, %i.jm
  %i.jp = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !50
  %i.js = add nsw i32 %i.jr, %i.jo
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !50
  %i.jt = mul nsw i32 %i.jm, %i.gy
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.jp ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !114
  %i.jw = trunc i32 %i.jt to i16
  %i.jx = add i16 %i.jv, %i.jw
  store i16 %i.jx, ptr %i.ju, align 2, !tbaa !114
  %.sroa.speculated278 = tail call i32 @llvm.umin.i32(i32 %.4560.lcssa, i32 %i.jf)
  %.sroa.speculated192 = tail call i32 @llvm.umax.i32(i32 %.4.lcssa, i32 %i.jf)
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.at:                                            ; preds = %.lr.ph625, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78
  %indvars.iv655 = phi i64 [ %i.je, %.lr.ph625 ], [ %indvars.iv.next656, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 2 uses
  %.0133.i623 = phi i32 [ %i.ij, %.lr.ph625 ], [ %i.jy, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ]
  %.4622 = phi i32 [ %.9, %.lr.ph625 ], [ %.7, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 3 uses
  %.4560621 = phi i32 [ %.9565, %.lr.ph625 ], [ %.7563, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78 ] ; 2 uses
  %i.jy = add nsw i32 %.0133.i623, %i.hz          ; 2 uses
  %i.jz = sub nsw i64 %indvars.iv655, %i.dx       ; 4 uses
  %i.ka = trunc nsw i64 %i.jz to i32              ; 3 uses
  %.not.i77 = icmp ugt i32 %.sroa.10.0583, %i.ka
  br i1 %.not.i77, label %bb.aw, label %bb.au, !prof !37

bb.au:                                            ; preds = %bb.at
  %i.kb = icmp slt i64 %i.jz, 0
  br i1 %i.kb, label %bb.av, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.kc = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.kd = add i16 %i.kc, %i.jd
  store i16 %i.kd, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78

bb.aw:                                            ; preds = %bb.at
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.jz ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !50
  %i.kg = add nsw i32 %i.kf, %.reass
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !50
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.jz ; 2 uses
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !114
  %i.kj = add i16 %i.ki, %i.jd
  store i16 %i.kj, ptr %i.kh, align 2, !tbaa !114
  %.sroa.speculated272 = tail call i32 @llvm.umin.i32(i32 %.4560621, i32 %i.ka)
  %.sroa.speculated186 = tail call i32 @llvm.umax.i32(i32 %.4622, i32 %i.ka)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit78

_ZL8cell_addPiPsjiiiiiiRjS1_.exit78:              ; preds = %bb.au, %bb.av, %bb.aw
  %.7563 = phi i32 [ %.sroa.speculated272, %bb.aw ], [ 0, %bb.av ], [ %.4560621, %bb.au ] ; 2 uses
  %.7 = phi i32 [ %.sroa.speculated186, %bb.aw ], [ %.4622, %bb.av ], [ %.4622, %bb.au ] ; 2 uses
  %indvars.iv.next656 = add nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count658
  br i1 %exitcond659.not, label %._crit_edge626, label %bb.at, !llvm.loop !89

bb.ax:                                            ; preds = %bb.al
  %i.kk = zext i32 %i.gt to i64
  %i.kl = shl i64 %i.kk, 40
  %i.km = ashr exact i64 %i.kl, 32
  %i.kn = sub nsw i64 %i.km, %.sroa.speculated471
  %i.ko = mul nsw i64 %i.kn, %i.hw
  %i.kp = sdiv i64 %i.ko, %i.ht
  %i.kq = trunc i64 %i.kp to i32                  ; 4 uses
  %i.kr = add nsw i32 %i.gr, %i.kq                ; 2 uses
  %i.ks = sub nsw i32 %i.gt, %.sroa.0408.0578     ; 5 uses
  %.not.i87 = icmp ult i32 %i.ks, %.sroa.10.0583
  br i1 %.not.i87, label %bb.ba, label %bb.ay, !prof !37

bb.ay:                                            ; preds = %bb.ax
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %bb.az, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88, !prof !11

bb.az:                                            ; preds = %bb.ay
  %i.ku = mul nsw i32 %i.gy, %i.kq
  %i.kv = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.kw = trunc i32 %i.ku to i16
  %i.kx = add i16 %i.kv, %i.kw
  store i16 %i.kx, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88

bb.ba:                                            ; preds = %bb.ax
  %i.ky = mul i32 %i.gu, %i.gy
  %i.kz = mul i32 %i.ky, %i.kq
  %i.la = zext nneg i32 %i.ks to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.la ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !50
  %i.ld = add nsw i32 %i.lc, %i.kz
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !50
  %i.le = mul nsw i32 %i.gy, %i.kq
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.la ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !114
  %i.lh = trunc i32 %i.le to i16
  %i.li = add i16 %i.lg, %i.lh
  store i16 %i.li, ptr %i.lf, align 2, !tbaa !114
  %.sroa.speculated266 = tail call i32 @llvm.umin.i32(i32 %.0556630, i32 %i.ks)
  %.sroa.speculated180 = tail call i32 @llvm.umax.i32(i32 %.0631, i32 %i.ks)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88

_ZL8cell_addPiPsjiiiiiiRjS1_.exit88:              ; preds = %bb.ay, %bb.az, %bb.ba
  %.12568 = phi i32 [ %.sroa.speculated266, %bb.ba ], [ 0, %bb.az ], [ %.0556630, %bb.ay ] ; 2 uses
  %.12 = phi i32 [ %.sroa.speculated180, %bb.ba ], [ %.0631, %bb.az ], [ %.0631, %bb.ay ] ; 2 uses
  %.0.i610 = add nsw i32 %i.gt, -1
  %i.lj = icmp sgt i32 %.0.i610, %i.gv
  br i1 %i.lj, label %.lr.ph615, label %._crit_edge616

.lr.ph615:                                        ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88
  %i.lk = mul i32 %i.gy, %i.hz
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = sub i32 0, %i.hz                        ; 2 uses
  %i.ln = shl i32 %i.gy, 8
  %i.lo = mul i32 %i.ln, %i.lm
  %i.lp = mul nsw i32 %i.gy, %i.lm
  %i.lq = trunc i32 %i.lp to i16
  %narrow715 = add nsw i32 %i.gt, -1
  %i.lr = sext i32 %narrow715 to i64
  %i.ls = sext i32 %i.gv to i64
  br label %bb.be

._crit_edge616:                                   ; preds = %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88
  %.2558.lcssa = phi i32 [ %.12568, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %.10566, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %.10, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 3 uses
  %.0131.i.lcssa = phi i32 [ %i.kr, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit88 ], [ %i.mm, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %i.lt = sub nsw i32 %i.gv, %.sroa.0408.0578     ; 5 uses
  %.not.i85 = icmp ult i32 %i.lt, %.sroa.10.0583
  br i1 %.not.i85, label %bb.bd, label %bb.bb, !prof !37

bb.bb:                                            ; preds = %._crit_edge616
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %bb.bc, label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit, !prof !11

bb.bc:                                            ; preds = %bb.bb
  %i.lv = sub nsw i32 %i.gs, %.0131.i.lcssa
  %i.lw = mul nsw i32 %i.lv, %i.gy
  %i.lx = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.ly = trunc i32 %i.lw to i16
  %i.lz = add i16 %i.lx, %i.ly
  store i16 %i.lz, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.bd:                                            ; preds = %._crit_edge616
  %i.ma = sub nsw i32 %i.gs, %.0131.i.lcssa
  %i.mb = or disjoint i32 %i.gw, 256
  %i.mc = mul i32 %i.ma, %i.gy                    ; 2 uses
  %i.md = mul i32 %i.mc, %i.mb
  %i.me = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.me ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !50
  %i.mh = add nsw i32 %i.mg, %i.md
  store i32 %i.mh, ptr %i.mf, align 4, !tbaa !50
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.me ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !114
  %i.mk = trunc i32 %i.mc to i16
  %i.ml = add i16 %i.mj, %i.mk
  store i16 %i.ml, ptr %i.mi, align 2, !tbaa !114
  %.sroa.speculated260 = tail call i32 @llvm.umin.i32(i32 %.2558.lcssa, i32 %i.lt)
  %.sroa.speculated174 = tail call i32 @llvm.umax.i32(i32 %.2.lcssa, i32 %i.lt)
  br label %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit

bb.be:                                            ; preds = %.lr.ph615, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84
  %indvars.iv652 = phi i64 [ %i.lr, %.lr.ph615 ], [ %indvars.iv.next653, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %.0131.i613 = phi i32 [ %i.kr, %.lr.ph615 ], [ %i.mm, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ]
  %.2612 = phi i32 [ %.12, %.lr.ph615 ], [ %.10, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 3 uses
  %.2558611 = phi i32 [ %.12568, %.lr.ph615 ], [ %.10566, %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84 ] ; 2 uses
  %i.mm = sub nsw i32 %.0131.i613, %i.hz          ; 2 uses
  %i.mn = sub nsw i64 %indvars.iv652, %i.dx       ; 4 uses
  %i.mo = trunc nsw i64 %i.mn to i32              ; 3 uses
  %.not.i83 = icmp ugt i32 %.sroa.10.0583, %i.mo
  br i1 %.not.i83, label %bb.bh, label %bb.bf, !prof !37

bb.bf:                                            ; preds = %bb.be
  %i.mp = icmp slt i64 %i.mn, 0
  br i1 %i.mp, label %bb.bg, label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84, !prof !11

bb.bg:                                            ; preds = %bb.bf
  %i.mq = load i16, ptr %i.fx, align 2, !tbaa !114
  %i.mr = sub i16 %i.mq, %i.ll
  store i16 %i.mr, ptr %i.fx, align 2, !tbaa !114
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84

bb.bh:                                            ; preds = %bb.be
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.mn ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !50
  %i.mu = add nsw i32 %i.mt, %i.lo
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !50
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.fx, i64 %i.mn ; 2 uses
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !114
  %i.mx = add i16 %i.mw, %i.lq
  store i16 %i.mx, ptr %i.mv, align 2, !tbaa !114
  %.sroa.speculated254 = tail call i32 @llvm.umin.i32(i32 %.2558611, i32 %i.mo)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.2612, i32 %i.mo)
  br label %_ZL8cell_addPiPsjiiiiiiRjS1_.exit84

_ZL8cell_addPiPsjiiiiiiRjS1_.exit84:              ; preds = %bb.bf, %bb.bg, %bb.bh
  %.10566 = phi i32 [ %.sroa.speculated254, %bb.bh ], [ 0, %bb.bg ], [ %.2558611, %bb.bf ] ; 2 uses
  %.10 = phi i32 [ %.sroa.speculated, %bb.bh ], [ %.2612, %bb.bg ], [ %.2612, %bb.bf ] ; 2 uses
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, -1 ; 2 uses
  %i.my = icmp sgt i64 %indvars.iv.next653, %i.ls
  br i1 %i.my, label %bb.be, label %._crit_edge616, !llvm.loop !90

_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit: ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.aq, %bb.ar, %bb.as, %bb.bb, %bb.bc, %bb.bd, %bb.af
  %.5561 = phi i32 [ %.0556630, %bb.af ], [ %.4560.lcssa, %bb.aq ], [ %.0556630, %bb.ai ], [ %.sroa.speculated290, %bb.ak ], [ 0, %bb.aj ], [ %.sroa.speculated278, %bb.as ], [ 0, %bb.ar ], [ %.sroa.speculated260, %bb.bd ], [ 0, %bb.bc ], [ %.2558.lcssa, %bb.bb ]
  %.5 = phi i32 [ %.0631, %bb.af ], [ %.4.lcssa, %bb.aq ], [ %.0631, %bb.ai ], [ %.sroa.speculated204, %bb.ak ], [ %.0631, %bb.aj ], [ %.sroa.speculated192, %bb.as ], [ %.4.lcssa, %bb.ar ], [ %.sroa.speculated174, %bb.bd ], [ %.2.lcssa, %bb.bc ], [ %.2.lcssa, %bb.bb ]
  %i.mz = add i32 %.060632, 1
  %i.na = zext i32 %.060632 to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.na
  store i32 %i.fr, ptr %i.nb, align 4, !tbaa !50
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ae, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit
  %.1557 = phi i32 [ %.5561, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.0556630, %bb.ae ] ; 3 uses
  %.1555 = phi i32 [ %.5, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.0631, %bb.ae ] ; 3 uses
  %.161 = phi i32 [ %i.mz, %_ZL14edge_sweep_rowPiPsjiiRK16hb_raster_edge_tRjS4_.exit ], [ %.060632, %bb.ae ] ; 3 uses
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next661, %wide.trip.count663
  br i1 %exitcond664.not, label %._crit_edge636, label %bb.ae, !llvm.loop !91

bb.bj:                                            ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.nc = load ptr, ptr %i.dw, align 8, !tbaa !119
  %i.nd = trunc nuw i64 %indvars.iv669 to i32
  %i.ne = mul i32 %.sroa.26.1, %i.nd
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf ; 2 uses
  %i.nh = load ptr, ptr %i.dv, align 8, !tbaa !103 ; 2 uses
  %i.ni = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.nj = add nuw i32 %.0556.lcssa723, 7
  %.not88.i = icmp ugt i32 %i.nj, %.0.lcssa725
  br i1 %.not88.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.bj
  %.082.lcssa.i = phi i32 [ %.0556.lcssa723, %bb.bj ], [ %i.qm, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.bj ], [ %i.pl, %.lr.ph.i ] ; 2 uses
  %.not8592.i = icmp ugt i32 %.082.lcssa.i, %.0.lcssa725
  br i1 %.not8592.i, label %_ZL18sweep_row_to_alphaPhPiPsjj.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %.preheader.i
  %i.nk = zext nneg i32 %.082.lcssa.i to i64
  %i.nl = add nuw nsw i32 %.0.lcssa725, 1
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %bb.bj, %.lr.ph.i
  %.090.i = phi i32 [ %i.pl, %.lr.ph.i ], [ 0, %bb.bj ]
  %.08289.i = phi i32 [ %i.qm, %.lr.ph.i ], [ %.0556.lcssa723, %bb.bj ] ; 10 uses
  %i.nm = zext i32 %.08289.i to i64               ; 3 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nm ; 2 uses
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.np = sext i16 %i.no to i32
  %i.nq = add nsw i32 %.090.i, %i.np              ; 2 uses
  %i.nr = add i32 %.08289.i, 1
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.nv = sext i16 %i.nu to i32
  %i.nw = add nsw i32 %i.nq, %i.nv                ; 2 uses
  %i.nx = add i32 %.08289.i, 2
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ny
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.ob = sext i16 %i.oa to i32
  %i.oc = add nsw i32 %i.nw, %i.ob                ; 2 uses
  %i.od = add i32 %.08289.i, 3
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.oe
  %i.og = load i16, ptr %i.of, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.oh = sext i16 %i.og to i32
  %i.oi = add nsw i32 %i.oc, %i.oh                ; 2 uses
  %i.oj = insertelement <4 x i32> poison, i32 %i.nq, i64 0
  %i.ok = insertelement <4 x i32> %i.oj, i32 %i.nw, i64 1
  %i.ol = insertelement <4 x i32> %i.ok, i32 %i.oc, i64 2
  %i.om = insertelement <4 x i32> %i.ol, i32 %i.oi, i64 3
  %i.on = shl nsw <4 x i32> %i.om, splat (i32 9)
  %i.oo = add i32 %.08289.i, 4
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.op
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.os = sext i16 %i.or to i32
  %i.ot = add nsw i32 %i.oi, %i.os                ; 2 uses
  %i.ou = add i32 %.08289.i, 5
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ov
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.oy = sext i16 %i.ox to i32
  %i.oz = add nsw i32 %i.ot, %i.oy                ; 2 uses
  %i.pa = add i32 %.08289.i, 6
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.pb
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.pe = sext i16 %i.pd to i32
  %i.pf = add nsw i32 %i.oz, %i.pe                ; 2 uses
  %i.pg = add i32 %.08289.i, 7
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.ph
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.pk = sext i16 %i.pj to i32
  %i.pl = add nsw i32 %i.pf, %i.pk                ; 3 uses
  %i.pm = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %i.pn = insertelement <4 x i32> %i.pm, i32 %i.oz, i64 1
  %i.po = insertelement <4 x i32> %i.pn, i32 %i.pf, i64 2
  %i.pp = insertelement <4 x i32> %i.po, i32 %i.pl, i64 3
  %i.pq = shl nsw <4 x i32> %i.pp, splat (i32 9)
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nm ; 3 uses
  %i.ps = load <4 x i32>, ptr %i.pr, align 1, !tbaa !124, !alias.scope !121, !noalias !125
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pu = load <4 x i32>, ptr %i.pt, align 1, !tbaa !124, !alias.scope !121, !noalias !125
  %i.pv = sub <4 x i32> %i.on, %i.ps
  %i.pw = sub <4 x i32> %i.pq, %i.pu
  %i.px = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.pv, i1 false)
  %i.py = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.pw, i1 false)
  %i.pz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.px, <4 x i32> splat (i32 131072))
  %i.qa = mul <4 x i32> %i.pz, splat (i32 255)
  %i.qb = add <4 x i32> %i.qa, splat (i32 65536)
  %i.qc = ashr <4 x i32> %i.qb, splat (i32 17)
  %i.qd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.py, <4 x i32> splat (i32 131072))
  %i.qe = mul <4 x i32> %i.qd, splat (i32 255)
  %i.qf = add <4 x i32> %i.qe, splat (i32 65536)
  %i.qg = ashr <4 x i32> %i.qf, splat (i32 17)
  %i.qh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qc, <4 x i32> %i.qg)
  %i.qi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.qh, <8 x i16> poison)
  %i.qj = bitcast <16 x i8> %i.qi to <2 x i64>
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nm
  %i.ql = extractelement <2 x i64> %i.qj, i64 0
  store i64 %i.ql, ptr %i.qk, align 1, !tbaa !124, !alias.scope !120, !noalias !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pr, i8 0, i64 32, i1 false), !alias.scope !121, !noalias !125
  store <2 x i64> zeroinitializer, ptr %i.nn, align 2, !tbaa !124, !alias.scope !122, !noalias !123
  %i.qm = add i32 %.08289.i, 8                    ; 2 uses
  %i.qn = add i32 %.08289.i, 15
  %.not.i150 = icmp ugt i32 %i.qn, %.0.lcssa725
  br i1 %.not.i150, label %.preheader.i, label %.lr.ph.i, !llvm.loop !96

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv665 = phi i64 [ %i.nk, %.lr.ph95.i.preheader ], [ %indvars.iv.next666, %.lr.ph95.i ] ; 4 uses
  %.294.i = phi i32 [ %.0.lcssa.i, %.lr.ph95.i.preheader ], [ %i.qr, %.lr.ph95.i ]
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %indvars.iv665 ; 2 uses
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %i.qq = sext i16 %i.qp to i32
  %i.qr = add nsw i32 %.294.i, %i.qq              ; 3 uses
  %i.qs = shl nsw i32 %i.qr, 9
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv665 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !50, !alias.scope !121, !noalias !125
  %i.qv = sub nsw i32 %i.qs, %i.qu
  %i.qw = tail call i32 @llvm.abs.i32(i32 %i.qv, i1 true)
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.qw, i32 131072)
  %i.qx = mul nuw nsw i32 %spec.store.select.i, 255
  %i.qy = add nuw nsw i32 %i.qx, 65536
  %i.qz = lshr i32 %i.qy, 17
  %i.ra = trunc nuw i32 %i.qz to i8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ng, i64 %indvars.iv665
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !124, !alias.scope !120, !noalias !126
  store i32 0, ptr %i.qt, align 4, !tbaa !50, !alias.scope !121, !noalias !125
  store i16 0, ptr %i.qo, align 2, !tbaa !114, !alias.scope !122, !noalias !123
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next666 to i32
  %exitcond668.not = icmp eq i32 %i.nl, %lftr.wideiv
  br i1 %exitcond668.not, label %_ZL18sweep_row_to_alphaPhPiPsjj.exit, label %.lr.ph95.i, !llvm.loop !97

_ZL18sweep_row_to_alphaPhPiPsjj.exit:             ; preds = %.lr.ph95.i, %.preheader.i
  %.2.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ %i.qr, %.lr.ph95.i ] ; 2 uses
  %.not71 = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not71, label %_ZL9hb_memsetPvij.exit152, label %bb.bk

bb.bk:                                            ; preds = %_ZL18sweep_row_to_alphaPhPiPsjj.exit
  %i.rc = xor i32 %.0.lcssa725, -1
  %i.rd = add nsw i32 %.sroa.10.0583, %i.rc       ; 2 uses
  %.not.i151 = icmp eq i32 %i.rd, 0
  br i1 %.not.i151, label %_ZL9hb_memsetPvij.exit152, label %bb.bl, !prof !11

bb.bl:                                            ; preds = %bb.bk
  %i.re = load ptr, ptr %i.dw, align 8, !tbaa !119
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.nf
  %i.rg = zext nneg i32 %.0.lcssa725 to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  %i.rj = shl nsw i32 %.2.lcssa.i, 9
  %i.rk = tail call i32 @llvm.abs.i32(i32 %i.rj, i1 true)
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.rk, i32 131072)
  %i.rl = mul nuw nsw i32 %spec.store.select6, 255
  %i.rm = add nuw nsw i32 %i.rl, 65536
  %i.rn = lshr i32 %i.rm, 17
  %i.ro = trunc nuw i32 %i.rn to i8
  %i.rp = zext i32 %i.rd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ri, i8 %i.ro, i64 %i.rp, i1 false)
  br label %_ZL9hb_memsetPvij.exit152

_ZL9hb_memsetPvij.exit152:                        ; preds = %bb.bl, %bb.bk, %_ZL18sweep_row_to_alphaPhPiPsjj.exit, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count673
  br i1 %exitcond674.not, label %"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit", label %bb.aa, !llvm.loop !98

"_ZN16hb_scope_guard_tIZ21hb_raster_draw_renderE3$_0ED2Ev.exit": ; preds = %_ZL9hb_memsetPvij.exit152, %bb.k, %bb.j, %bb.i, %bb.o, %bb.n, %bb.h, %bb.g, %bb.f
  %.sroa.0341.1 = phi ptr [ %.sroa.0341.0, %bb.j ], [ null, %bb.f ], [ null, %bb.h ], [ %.sroa.0341.0, %bb.o ], [ %.sroa.0341.0, %bb.g ], [ %.sroa.0341.0, %bb.k ], [ %.sroa.0341.0, %bb.n ], [ %.sroa.0341.0, %bb.i ], [ null, %_ZL9hb_memsetPvij.exit152 ]
  %.1 = phi ptr [ null, %bb.j ], [ null, %bb.f ], [ %.sroa.0341.0, %bb.h ], [ null, %bb.o ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.i ], [ %.sroa.0341.0, %_ZL9hb_memsetPvij.exit152 ]
  tail call void @hb_raster_image_destroy(ptr noundef %.sroa.0341.1) #18
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.rr, align 4, !tbaa !55
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.rs, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.rq, i8 0, i64 21, i1 false)
  ret ptr %.1
}

declare ptr @hb_raster_image_create_or_fail() local_unnamed_addr #3

declare hidden noundef zeroext i1 @_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef byval(%struct.hb_raster_extents_t) align 8) local_unnamed_addr #3

declare hidden void @_ZN17hb_raster_image_t5clearEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIjLb0EE6extendIS0_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEvRKS3_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !56  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56
  %i.e = add i32 %i.d, %.val
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.e, i1 noundef zeroext %2)
  %.not57 = icmp ne i32 %.val, 0
  %or.cond62.not = and i1 %.not57, %i.f
  br i1 %or.cond62.not, label %.lr.ph, label %.loopexit, !prof !130

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit

.critedge.preheader:                              ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit
  %i.i = and i64 %.sroa.7.3, 4294967295
  %.not53 = icmp eq i64 %i.i, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit:     ; preds = %.lr.ph, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit
  %.0844 = phi i32 [ 0, %.lr.ph ], [ %i.r, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ]
  %.sroa.023.043 = phi ptr [ %.val9, %.lr.ph ], [ %.sroa.023.3, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ] ; 2 uses
  %.sroa.7.042 = phi i64 [ %.sroa.2.8.insert.ext.i.i.i.i, %.lr.ph ], [ %.sroa.7.3, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit ] ; 3 uses
  %i.k = and i64 %.sroa.7.042, 4294967295
  %.not.i.i.i = icmp eq i64 %i.k, 0               ; 3 uses
  %i.l = add i64 %.sroa.7.042, 4294967295
  %.sroa.7.12.insert.insert = or i64 %i.l, 4294967296
  %spec.select.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %.sroa.023.043, !prof !11
  %.sroa.7.3 = select i1 %.not.i.i.i, i64 %.sroa.7.042, i64 %.sroa.7.12.insert.insert, !prof !11 ; 3 uses
  %.sroa.023.3.idx = select i1 %.not.i.i.i, i64 0, i64 4, !prof !11
  %.sroa.023.3 = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 %.sroa.023.3.idx ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 4, !tbaa !56
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.o
  %i.q = load i32, ptr %spec.select.i.i, align 4, !tbaa !50
  store i32 %i.q, ptr %i.p, align 4, !tbaa !50
  %i.r = add nuw i32 %.0844, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %.val
  br i1 %exitcond.not, label %.critedge.preheader, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit, !llvm.loop !127

.critedge.loopexit:                               ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18, %bb.c
  %.pre-phi = phi i64 [ %i.z, %bb.c ], [ %.sroa.7.8.insert.ext33, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.7.2.lcssa = phi i64 [ %.sroa.7.154, %bb.c ], [ %.sroa.7.12.insert.insert40, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.023.2.lcssa = phi ptr [ %.sroa.023.155, %bb.c ], [ %i.ac, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.not = icmp eq i64 %.pre-phi, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !128

bb.b:                                             ; preds = %.lr.ph56, %.critedge.loopexit
  %.sroa.023.155 = phi ptr [ %.sroa.023.3, %.lr.ph56 ], [ %.sroa.023.2.lcssa, %.critedge.loopexit ] ; 2 uses
  %.sroa.7.154 = phi i64 [ %.sroa.7.3, %.lr.ph56 ], [ %.sroa.7.2.lcssa, %.critedge.loopexit ] ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !56
  %i.t = add i32 %i.s, 1
  %i.u = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.t, i1 noundef zeroext false)
  br i1 %i.u, label %bb.c, label %.loopexit, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !56   ; 2 uses
  %i.x = sub i32 %i.v, %i.w
  %i.y = icmp eq i32 %i.v, %i.w
  %i.z = and i64 %.sroa.7.154, 4294967295         ; 2 uses
  %.not4146 = icmp eq i64 %i.z, 0
  %or.cond47 = or i1 %i.y, %.not4146
  br i1 %or.cond47, label %.critedge.loopexit, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph: ; preds = %bb.c
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !67
  br label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18

_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18:   ; preds = %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18
  %.050 = phi i32 [ 0, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %i.ai, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %.sroa.023.249 = phi ptr [ %.sroa.023.155, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %i.ac, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ] ; 2 uses
  %.sroa.7.248 = phi i64 [ %.sroa.7.154, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18.lr.ph ], [ %.sroa.7.12.insert.insert40, %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18 ]
  %i.ab = add i64 %.sroa.7.248, 4294967295
  %.sroa.7.8.insert.ext33 = and i64 %i.ab, 4294967295 ; 3 uses
  %.sroa.7.12.insert.insert40 = or disjoint i64 %.sroa.7.8.insert.ext33, 4294967296 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.249, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !56  ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !56
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i32, ptr %.sroa.023.249, align 4, !tbaa !50
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !50
  %i.ai = add nuw i32 %.050, 1                    ; 2 uses
  %i.aj = icmp uge i32 %i.ai, %i.x
  %.not41 = icmp eq i64 %.sroa.7.8.insert.ext33, 0
  %or.cond = select i1 %i.aj, i1 true, i1 %.not41
  br i1 %or.cond, label %.critedge.loopexit, label %_ZN9hb_iter_tI10hb_array_tIKjERS1_EppEi.exit18, !llvm.loop !129

.loopexit:                                        ; preds = %bb.b, %.critedge.loopexit, %.critedge.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #9

declare ptr @hb_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_raster_draw_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = add i32 %i.b, -1
  %spec.select.i.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  tail call void @hb_free(ptr noundef %i.f) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i1 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i1, label %bb.c, label %_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64   ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIS_IjLb0EELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.q, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.p, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i ], [ %i.k, %.lr.ph.preheader.i.i.i ]
  %i.p = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !66
  %i.s = add i32 %i.r, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.t, align 4, !tbaa !56
  %i.u = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  tail call void @hb_free(ptr noundef %i.v) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i:           ; preds = %bb.d, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IjLb0EELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN11hb_vector_tIS_IjLb0EELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i, %bb.c
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.x) #18
  br label %_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit

_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit:         ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %_ZN11hb_vector_tIS_IjLb0EELb0EE13shrink_vectorEj.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !69
  %i.aa = add i32 %i.z, -1
  %spec.select.i.i.i2 = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i.i2, label %bb.e, label %_ZN11hb_vector_tIsLb0EED2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.ab, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  tail call void @hb_free(ptr noundef %i.ad) #18
  br label %_ZN11hb_vector_tIsLb0EED2Ev.exit

_ZN11hb_vector_tIsLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIS_IjLb0EELb0EED2Ev.exit, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !71
  %i.ag = add i32 %i.af, -1
  %spec.select.i.i.i3 = icmp ult i32 %i.ag, -2
  br i1 %spec.select.i.i.i3, label %bb.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIsLb0EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.ah, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  tail call void @hb_free(ptr noundef %i.aj) #18
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIsLb0EED2Ev.exit, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !73
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i4 = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i4, label %bb.g, label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.an, align 4, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  tail call void @hb_free(ptr noundef %i.ap) #18
  br label %_ZN11hb_vector_tI16hb_raster_edge_tLb0EED2Ev.exit

_ZN11hb_vector_tI16hb_raster_edge_tLb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !135
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !74
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @hb_free(ptr noundef %i.f) #18
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !135  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !47
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !47 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !42, !noalias !136
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #18, !inline_history !2
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !135  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !133

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !74
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  tail call void @hb_free(ptr noundef %i.u) #18
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.hb_user_data_array_t::hb_user_data_item_t", align 8 ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ne ptr %2, null
  %i.c = icmp ne ptr %3, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42   ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i ; 4 uses
  %.val19.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.j = icmp eq ptr %.val19.i.i.i.i, %1
  br i1 %i.j, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47 ; 2 uses
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !76
  %i.n = load i32, ptr %i.g, align 4, !tbaa !42, !noalias !140 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.g, align 4, !tbaa !42, !noalias !140
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i: ; preds = %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #18 ; 0 uses
  %.not.i7.i = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i7.i, label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i
  tail call void %.sroa.4.0.copyload.i(ptr noundef %.sroa.3.0.copyload.i) #18, !inline_history !139
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #18 ; 0 uses
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %5, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47
  %i.s = tail call noundef ptr @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull byval(%"struct.hb_user_data_array_t::hb_user_data_item_t") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %i.a)
  %i.t = icmp ne ptr %i.s, null
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit: ; preds = %.loopexit.i, %bb.g, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i, %bb.a, %bb.h
  %.0 = phi i1 [ %i.t, %bb.h ], [ false, %bb.a ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i ], [ true, %bb.g ], [ true, %.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"struct.hb_user_data_array_t::hb_user_data_item_t") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %2) #18 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 5 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.e to i64 ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not26.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !45
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.i.i ; 6 uses
  %.val19.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.g = icmp eq ptr %.val.i.i.i, %.val19.i.i.i
  br i1 %i.g, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %.sroa.2.8.insert.ext.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %bb.b, !llvm.loop !141

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit: ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !76
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #18 ; 0 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #18, !inline_history !2
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #18 ; 0 uses
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !74
  %.not.i10 = icmp slt i32 %i.e, %i.j
  br i1 %.not.i10, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.k = add i32 %i.e, 1
  %i.l = tail call noundef zeroext i1 @_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.k, i1 noundef zeroext false)
  br i1 %i.l, label %..critedge_crit_edge.i, label %bb.h, !prof !37

..critedge_crit_edge.i:                           ; preds = %bb.g
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !42 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !41
  %.pre14 = zext i32 %.pre.i to i64
  br label %.critedge.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.loopexit
  %.pre-phi = phi i64 [ %.pre14, %..critedge_crit_edge.i ], [ %.sroa.2.8.insert.ext.i.i.i, %.loopexit ]
  %i.m = phi ptr [ %.pre, %..critedge_crit_edge.i ], [ %i.c, %.loopexit ]
  %i.n = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.e, %.loopexit ]
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.pre-phi ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !76
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %bb.h, %.critedge.i
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.p, %.critedge.i ]
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #18 ; 0 uses
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %bb.e, %bb.d, %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit
  %.0 = phi ptr [ %.0.i, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit ], [ null, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %i.r = load i32, ptr %0, align 8, !tbaa !74
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, ptr null, ptr %.0
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !11

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !142

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 178956970
  br i1 %i.j, label %.critedge, label %bb.e, !prof !11

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 137438953441) %i.v, i1 false), !alias.scope !146
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !77

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !74    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #3

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

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
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.g = load <2 x float>, ptr %i.c, align 4, !tbaa !14
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !14
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.k = load <2 x float>, ptr %i.d, align 4, !tbaa !14
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !14
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
  %i.b = load float, ptr %i.a, align 4, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.k = insertelement <2 x float> poison, float %i.b, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.l, <2 x float> %i.i)
  %i.n = load <2 x float>, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.m)
  %i.r = load <2 x float>, ptr %i.h, align 8, !tbaa !14 ; 3 uses
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
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !14
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !14
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !151
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bf = fadd <2 x float> %i.ai, %.ph26
  %i.bg = fadd <2 x float> %i.ah, %i.ai
  %i.bh = add nsw i32 %.064.i.i, 1                ; 2 uses
  %i.bi = add nuw i32 %.066.i.i, 1
  %i.bj = zext i32 %.066.i.i to i64
  %i.bk = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.bj ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bl = fmul <2 x float> %i.bf, splat (float 5.000000e-01) ; 2 uses
  %i.bm = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 2 uses
  %i.bn = fadd <2 x float> %i.bm, %i.bl
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bp, ptr %i.bk, align 4, !tbaa !14
  store <2 x float> %i.ah, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !50
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
  %i.f = load <2 x float>, ptr %i.c, align 4, !tbaa !14 ; 4 uses
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !14 ; 4 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %11 = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.i = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.i, <2 x float> %i.f)
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %12, <2 x float> %i.j)
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !14 ; 4 uses
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
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !14
  %i.bj = load <2 x float>, ptr %i.bh, align 4, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !153
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bm = fadd <2 x float> %i.ak, %.ph36
  %i.bn = fadd <2 x float> %i.aj, %i.ak
  %i.bo = fadd <2 x float> %i.ai, %i.aj
  %i.bp = add nsw i32 %.0102.i.i, 1               ; 2 uses
  %i.bq = add nuw i32 %.0104.i.i, 1
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
  store <4 x float> %i.cc, ptr %i.bs, align 4, !tbaa !14
  store <2 x float> %i.bv, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  store <2 x float> %i.ai, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i32 %i.bp, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !tbaa !50
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
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !37

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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tIjLb0EE5allocEjb:bb.a
bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 137438953441) %i.v, i1 false), !alias.scope !179
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !77

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !66    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !67
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !66
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"float", !7, i64 0}
!13 = !{!"_ZTS14hb_transform_tIfE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!14 = !{!12, !12, i64 0}
!15 = !{!"_ZTS11hb_atomic_tIiE", !8, i64 0}
!16 = !{!"_ZTS20hb_reference_count_t", !15, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"_ZTS11hb_atomic_tIbE", !17, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 _ZTS20hb_user_data_array_t", !19, i64 0}
!21 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !20, i64 0}
!22 = !{!"_ZTS18hb_object_header_t", !16, i64 0, !18, i64 4, !21, i64 8}
!23 = !{!"_ZTS19hb_raster_extents_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!24 = !{!"p1 _ZTS16hb_raster_edge_t", !19, i64 0}
!25 = !{!"_ZTS11hb_vector_tI16hb_raster_edge_tLb0EE", !8, i64 0, !8, i64 4, !24, i64 8}
!26 = !{!"p1 int", !19, i64 0}
!27 = !{!"_ZTS11hb_vector_tIiLb0EE", !8, i64 0, !8, i64 4, !26, i64 8}
!28 = !{!"p1 short", !19, i64 0}
!29 = !{!"_ZTS11hb_vector_tIsLb0EE", !8, i64 0, !8, i64 4, !28, i64 8}
!30 = !{!"p1 _ZTS11hb_vector_tIjLb0EE", !19, i64 0}
!31 = !{!"_ZTS11hb_vector_tIS_IjLb0EELb0EE", !8, i64 0, !8, i64 4, !30, i64 8}
!32 = !{!"_ZTS11hb_vector_tIjLb0EE", !8, i64 0, !8, i64 4, !26, i64 8}
!33 = !{!"p1 _ZTS17hb_raster_image_t", !19, i64 0}
!34 = !{!"_ZTS16hb_raster_draw_t", !22, i64 0, !13, i64 16, !12, i64 40, !12, i64 44, !23, i64 48, !17, i64 68, !25, i64 72, !27, i64 88, !29, i64 104, !31, i64 120, !32, i64 136, !33, i64 152}
!35 = !{!34, !33, i64 152}
!36 = !{!"branch_weights", i32 1, i32 1999}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!"branch_weights", i32 0, i32 1}
!39 = !{!"p1 _ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !19, i64 0}
!40 = !{!"_ZTS11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE", !8, i64 0, !8, i64 4, !39, i64 8}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !8, i64 4}
!43 = !{!"p1 _ZTS18hb_user_data_key_t", !19, i64 0}
!44 = !{!"_ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !43, i64 0, !19, i64 8, !19, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!19, !19, i64 0}
!48 = !{!34, !12, i64 40}
!49 = !{!34, !12, i64 44}
!50 = !{!8, !8, i64 0}
!51 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 4, !50}
!52 = !{!34, !17, i64 68}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!25, !8, i64 4}
!56 = !{!32, !8, i64 4}
!57 = !{!25, !24, i64 8}
!58 = !{!"long", !7, i64 0}
!59 = !{!"_ZTS16hb_raster_edge_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !58, i64 16, !8, i64 24}
!60 = !{!59, !8, i64 12}
!61 = !{!59, !8, i64 4}
!62 = !{!27, !8, i64 4}
!63 = !{!29, !8, i64 4}
!64 = !{!31, !8, i64 4}
!65 = !{!31, !30, i64 8}
!66 = !{!32, !8, i64 0}
!67 = !{!32, !26, i64 8}
!68 = !{!31, !8, i64 0}
!69 = !{!29, !8, i64 0}
!70 = !{!29, !28, i64 8}
!71 = !{!27, !8, i64 0}
!72 = !{!27, !26, i64 8}
!73 = !{!25, !8, i64 0}
!74 = !{!40, !8, i64 0}
!75 = !{!43, !43, i64 0}
!76 = !{i64 0, i64 8, !75, i64 8, i64 8, !47, i64 16, i64 8, !47}
!77 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!78 = !{!13, !12, i64 0}
!79 = !{!13, !12, i64 12}
!80 = !{!34, !12, i64 16}
!81 = !{!34, !12, i64 20}
!82 = !{!34, !12, i64 24}
!83 = !{!34, !12, i64 28}
!84 = !{!34, !12, i64 32}
!85 = !{!34, !12, i64 36}
!86 = distinct !{!86, !107}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46}
!89 = distinct !{!89, !46}
!90 = distinct !{!90, !46}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !"_ZL18sweep_row_to_alphaPhPiPsjj"}
!93 = distinct !{!93, !92, !"_ZL18sweep_row_to_alphaPhPiPsjj: argument 0"}
!94 = distinct !{!94, !92, !"_ZL18sweep_row_to_alphaPhPiPsjj: argument 1"}
!95 = distinct !{!95, !92, !"_ZL18sweep_row_to_alphaPhPiPsjj: argument 2"}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46}
!98 = distinct !{!98, !46}
!99 = !{!34, !8, i64 76}
!100 = !{!34, !24, i64 80}
!101 = !{!59, !8, i64 0}
!102 = !{!"branch_weights", i32 2146410443, i32 1073205}
!103 = !{!34, !26, i64 96}
!104 = !{!34, !28, i64 112}
!105 = !{!34, !8, i64 124}
!106 = !{!34, !30, i64 128}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!34, !8, i64 140}
!109 = !{!34, !26, i64 144}
!110 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!111 = !{!59, !58, i64 16}
!112 = !{!59, !8, i64 24}
!113 = !{!"short", !7, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"p1 omnipotent char", !19, i64 0}
!116 = !{!"_ZTS11hb_vector_tIhLb0EE", !8, i64 0, !8, i64 4, !115, i64 8}
!117 = !{!"_ZTS18hb_raster_format_t", !7, i64 0}
!118 = !{!"_ZTS17hb_raster_image_t", !22, i64 0, !116, i64 16, !23, i64 32, !117, i64 52}
!119 = !{!118, !115, i64 24}
!120 = !{!93}
!121 = !{!94}
!122 = !{!95}
!123 = !{!93, !94}
!124 = !{!7, !7, i64 0}
!125 = !{!93, !95}
!126 = !{!94, !95}
!127 = distinct !{!127, !46}
!128 = distinct !{!128, !46}
!129 = distinct !{!129, !46}
!130 = !{!"branch_weights", i32 2000, i32 2002}
!131 = distinct !{!131, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!132 = distinct !{!132, !131, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!133 = distinct !{!133, !46}
!134 = !{!"_ZTS17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE", !40, i64 0}
!135 = !{!134, !8, i64 4}
!136 = !{!132}
!137 = distinct !{!137, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!138 = distinct !{!138, !137, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!139 = distinct !{null, null}
!140 = !{!138}
!141 = distinct !{!141, !46}
!142 = distinct !{!142, !46}
!143 = distinct !{!143, !"_ZL9hb_memcpyPvPKvm"}
!144 = distinct !{!144, !143, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!145 = distinct !{!145, !143, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!146 = !{!145, !144}
!147 = !{!"_ZTS15hb_draw_state_t", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!148 = !{!147, !12, i64 12}
!149 = !{!147, !12, i64 16}
!150 = !{!"_ZTSZL27flatten_quadratic_recursiveP16hb_raster_draw_tffffffiE11quad_node_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 24}
!151 = !{!150, !8, i64 24}
!152 = !{!"_ZTSZL23flatten_cubic_recursiveP16hb_raster_draw_tffffffffiE12cubic_node_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32}
!153 = !{!152, !8, i64 32}
!154 = !{!58, !58, i64 0}
!155 = distinct !{!155, !46}
!156 = distinct !{!156, !"_ZL9hb_memcpyPvPKvm"}
!157 = distinct !{!157, !156, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!158 = distinct !{!158, !156, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!159 = !{!158, !157}
!160 = distinct !{!160, !46}
!161 = distinct !{!161, !"_ZL9hb_memcpyPvPKvm"}
!162 = distinct !{!162, !161, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!163 = distinct !{!163, !161, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!164 = !{!163, !162}
!165 = distinct !{!165, !46}
!166 = distinct !{!166, !"_ZL9hb_memcpyPvPKvm"}
!167 = distinct !{!167, !166, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!168 = distinct !{!168, !166, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!169 = !{!168, !167}
!170 = distinct !{!170, !46}
!171 = distinct !{!171, !"_ZL9hb_memcpyPvPKvm"}
!172 = distinct !{!172, !171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!173 = distinct !{!173, !171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!174 = !{!173, !172}
!175 = distinct !{!175, !46}
!176 = distinct !{!176, !"_ZL9hb_memcpyPvPKvm"}
!177 = distinct !{!177, !176, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!178 = distinct !{!178, !176, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!179 = !{!178, !177}
end_hunk_1
