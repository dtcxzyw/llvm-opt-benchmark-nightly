Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-image?download=true
inline.NumInlined: 282
inline.NumDeleted: 140
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hb_raster_extents_t = type { i32, i32, i32, i32, i32 }
%struct.hb_raster_image_t = type { %struct.hb_object_header_t, %struct.hb_vector_t, %struct.hb_raster_extents_t, i32 }
%struct.hb_object_header_t = type { %struct.hb_reference_count_t, %struct.hb_atomic_t.0, %struct.hb_atomic_t.1 }
%struct.hb_reference_count_t = type { %struct.hb_atomic_t }
%struct.hb_atomic_t = type { i32 }
%struct.hb_atomic_t.0 = type { i8 }
%struct.hb_atomic_t.1 = type { ptr }
%struct.hb_vector_t = type { i32, i32, ptr }
%"struct.hb_user_data_array_t::hb_user_data_item_t" = type { ptr, ptr, ptr }

$_ZN11hb_vector_tIhLb0EE12resize_exactEi = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_ = comdat any

$_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei = comdat any

$_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b = comdat any

$_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb = comdat any

@.str = private unnamed_addr constant [7 x i8] c"1.6.43\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@_hb_CrapPool = external hidden global [80 x i64], align 16
@_hb_NullPool = external hidden local_unnamed_addr constant [80 x i64], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 1, 5) i32 @_ZN17hb_raster_image_t15bytes_per_pixelE18hb_raster_format_t(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  %i.b = select i1 %i.a, i32 4, i32 1
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, ptr nofree noundef byval(%struct.hb_raster_extents_t) align 8 captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  %spec.store.select = select i1 %or.cond, i32 0, i32 %1 ; 2 uses
  %.not = icmp eq i32 %spec.store.select, 0       ; 2 uses
  %i.a = select i1 %.not, i32 1, i32 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.a, i32 %i.c)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = select i1 %.not, i32 0, i32 2
  %i.d = shl i32 %i.c, %3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.f, i32 %i.d) ; 2 uses
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !78
  %i.j = zext i32 %i.g to i64
  %i.k = zext i32 %i.i to i64
  %i.l = mul nuw i64 %i.k, %i.j                   ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1073741824
  br i1 %i.m, label %_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i32            ; 3 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !15   ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp samesign ult i32 %i.p, %i.o
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.i, !prof !16

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.t, %.preheader.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = lshr i32 %.053.i.i, 1
  %i.s = add nuw nsw i32 %.053.i.i, 8
  %i.t = add nuw nsw i32 %i.s, %i.r               ; 6 uses
  %i.u = icmp samesign ult i32 %i.t, %i.o
  br i1 %i.u, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !0

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.p, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i

bb.e:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = zext nneg i32 %i.t to i64
  %i.y = tail call ptr @hb_malloc(i64 noundef %i.x) #16 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr readonly align 1 %i.ac, i64 %i.ab, i1 false), !alias.scope !79
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.e, %.thread39.i.i
  %i.ad = phi ptr [ null, %bb.e ], [ %i.w, %.thread39.i.i ]
  %i.ae = zext nneg i32 %i.t to i64
  %i.af = tail call ptr @hb_realloc(ptr noundef %i.ad, i64 noundef %i.ae) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.af, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i, !prof !20

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %bb.f
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !15  ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.t, %i.ag
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %bb.i, !prof !21

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %bb.h, %bb.g
  %.1.i.i52.i.i = phi ptr [ %i.af, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.y, %bb.g ], [ %i.y, %bb.h ]
  store ptr %.1.i.i52.i.i, ptr %i.v, align 8, !tbaa !18
  store i32 %i.t, ptr %i.n, align 8, !tbaa !15
  br label %bb.i

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i
  %i.ah = xor i32 %i.ag, -1
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !15
  br label %_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread

bb.i:                                             ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.o, ptr %i.ai, align 4, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %spec.store.select, ptr %i.aj, align 4, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !33
  br label %_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread

_ZN11hb_vector_tIhLb0EE12resize_dirtyEi.exit.thread: ; preds = %bb.c, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %bb.b, %bb.i, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17hb_raster_image_t20deserialize_from_pngEP9hb_blob_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 31 uses
  %i.c = alloca ptr, align 8                      ; 19 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.hb_raster_image_t, align 8  ; 14 uses
  %3 = alloca %struct.hb_raster_extents_t, align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !32
  %i.k = call ptr @hb_blob_get_data(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.l = icmp ne ptr %i.k, null
  %i.m = load i32, ptr %i.a, align 4
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.o = call noalias ptr @png_create_read_struct(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @_ZL19hb_raster_png_errorP14png_struct_defPKc, ptr noundef nonnull @_ZL21hb_raster_png_warningP14png_struct_defPKc) #16 ; 3 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !35
  %.not86 = icmp eq ptr %i.o, null
  br i1 %.not86, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.p = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.o) #16 ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !37
  %.not87 = icmp eq ptr %i.p, null
  br i1 %.not87, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #16
  br label %bb.ap

bb.f:                                             ; preds = %bb.d
  %i.q = call ptr @hb_calloc(i64 noundef 1, i64 noundef 40) #16 ; 18 uses
  %.not88 = icmp eq ptr %i.q, null
  br i1 %.not88, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #16
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  store ptr %i.k, ptr %i.q, align 8, !tbaa !42
  %i.r = load i32, ptr %i.a, align 4, !tbaa !32
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !35
  call void @png_set_read_fn(ptr noundef %i.u, ptr noundef nonnull %i.q, ptr noundef nonnull @_ZL23hb_raster_png_read_blobP14png_struct_defPhm) #16
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.w = call ptr @png_set_longjmp_fn(ptr noundef %i.v, ptr noundef nonnull @longjmp, i64 noundef 200) #16
  %i.x = call i32 @_setjmp(ptr noundef %i.w) #17
  %.not89 = icmp eq i32 %i.x, 0
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  call void @hb_free(ptr noundef %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  call void @hb_free(ptr noundef %i.ab) #16
  call void @hb_free(ptr noundef nonnull %i.q) #16
  br label %bb.ap

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !37
  call void @png_read_info(ptr noundef %i.ac, ptr noundef %i.ad) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i32 0, ptr %i.e, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i32 0, ptr %i.f, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 0, ptr %i.g, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i32 0, ptr %i.h, align 4, !tbaa !32
end_hunk_0
begin_hunk_1_@hb_raster_image_create_or_fail:bb.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_raster_image_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #10 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit

_ZL19hb_object_referenceI17hb_raster_image_tEPT_S2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_raster_image_destroy(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread, label %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i, !prof !16

_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i, label %bb.c, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i, label %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.e) #16
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i

_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.e, label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit

bb.e:                                             ; preds = %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit

_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit: ; preds = %bb.e, %_ZL14hb_object_finiI17hb_raster_image_tEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %0) #16
  br label %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread

_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit.thread: ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI17hb_raster_image_tEbPT_.exit.i, %_ZL17hb_object_destroyI17hb_raster_image_tEbPT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_raster_image_set_user_data(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !16

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.c, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !123

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.d = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 56) #16 ; 8 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef null) #16 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = cmpxchg weak ptr %i.b, ptr null, ptr %i.d acq_rel monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i, label %bb.d, !prof !61

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader.i
  %.016.i = phi ptr [ %i.c, %.preheader.i ], [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.j = zext i1 %i.i to i32
  br label %_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.d) #16
  %i.l = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %.lr.ph.i, label %._crit_edge.i, !prof !124

_ZL23hb_object_set_user_dataI17hb_raster_image_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit: ; preds = %.lr.ph.i, %bb.a, %bb.b, %._crit_edge.i
  %.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %._crit_edge.i ], [ 0, %.lr.ph.i ]
  ret i32 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_raster_image_get_user_data(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL23hb_object_get_user_dataIK17hb_raster_image_tEPvPT_P18hb_user_data_key_t.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZL23hb_object_get_user_dataIK17hb_raster_image_tEPvPT_P18hb_user_data_key_t.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %_ZL23hb_object_get_user_dataIK17hb_raster_image_tEPvPT_P18hb_user_data_key_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #16 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %.val19.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.j = icmp eq ptr %.val19.i.i.i.i.i.i, %1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !69
  br label %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i

_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i: ; preds = %bb.e, %bb.f, %bb.d
  %i.k = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #16 ; 0 uses
  br label %_ZL23hb_object_get_user_dataIK17hb_raster_image_tEPvPT_P18hb_user_data_key_t.exit

_ZL23hb_object_get_user_dataIK17hb_raster_image_tEPvPT_P18hb_user_data_key_t.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.k, %_ZN20hb_user_data_array_t3getEP18hb_user_data_key_t.exit.i ], [ null, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_raster_image_configure(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef zeroext i1 @_ZN11hb_vector_tIhLb0EE12resize_exactEi(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef 0) ; 0 uses
  br label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !32 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %or.cond.i = icmp ugt i32 %1, 1
  %spec.store.select.i = select i1 %or.cond.i, i32 0, i32 %1 ; 2 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  %i.e = select i1 %.not.i, i32 1, i32 4
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.e, i32 %.sroa.2.0.copyload)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !32
  %3 = select i1 %.not.i, i32 0, i32 2
  %i.f = shl i32 %.sroa.2.0.copyload, %3
  %i.g = tail call i32 @llvm.umax.i32(i32 %.sroa.413.0.copyload, i32 %i.f) ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = zext i32 %.sroa.3.0.copyload to i64
  %i.j = mul nuw i64 %i.h, %i.i                   ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1073741824
  br i1 %i.k, label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = trunc nuw nsw i64 %i.j to i32            ; 3 uses
  %i.n = load i32, ptr %i.l, align 8, !tbaa !15   ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp samesign ult i32 %i.n, %i.m
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.k, !prof !16

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.r, %.preheader.i.i.i ], [ %i.n, %bb.f ] ; 2 uses
  %i.p = lshr i32 %.053.i.i.i, 1
  %i.q = add nuw nsw i32 %.053.i.i.i, 8
  %i.r = add nuw nsw i32 %i.q, %i.p               ; 6 uses
  %i.s = icmp samesign ult i32 %i.r, %i.m
  br i1 %i.s, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !0

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.n, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.g, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i

bb.g:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext nneg i32 %i.r to i64
  %i.w = tail call ptr @hb_malloc(i64 noundef %i.v) #16 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i.i, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %i.aa, i64 %i.z, i1 false), !alias.scope !128
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.g, %.thread39.i.i.i
  %i.ab = phi ptr [ null, %bb.g ], [ %i.u, %.thread39.i.i.i ]
  %i.ac = zext nneg i32 %i.r to i64
  %i.ad = tail call ptr @hb_realloc(ptr noundef %i.ab, i64 noundef %i.ac) #16 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i.i, !prof !20

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i, %bb.h
  %i.ae = load i32, ptr %i.l, align 8, !tbaa !15  ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.r, %i.ae
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i.i, label %bb.k, !prof !21

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i, %bb.j, %bb.i
  %.1.i.i52.i.i.i = phi ptr [ %i.ad, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i.i ], [ %i.w, %bb.i ], [ %i.w, %bb.j ]
  store ptr %.1.i.i52.i.i.i, ptr %i.t, align 8, !tbaa !18
  store i32 %i.r, ptr %i.l, align 8, !tbaa !15
  br label %bb.k

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.af = xor i32 %i.ae, -1
  store i32 %i.af, ptr %i.l, align 8, !tbaa !15
  br label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit

bb.k:                                             ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.m, ptr %i.ag, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %spec.store.select.i, ptr %i.ah, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !32
  br label %_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit

_ZN17hb_raster_image_t9configureE18hb_raster_format_t19hb_raster_extents_t.exit: ; preds = %bb.k, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.k ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIhLb0EE12resize_exactEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIhLb0EE11resize_fullEibb.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIhLb0EE11resize_fullEibb.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 7 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %bb.d, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.sroa.speculated.i, 0
  %.not59.i = icmp eq i32 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %.thread39.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not59.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  tail call void @hb_free(ptr noundef %i.h) #16
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4

.thread39.i:                                      ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  br i1 %.not59.i, label %bb.g, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i

bb.g:                                             ; preds = %.thread39.i
  %.not9.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = zext i32 %.sroa.speculated.i to i64
  %i.l = tail call ptr @hb_malloc(i64 noundef %i.k) #16 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.n = zext i32 %i.m to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %i.o, i64 %i.n, i1 false), !alias.scope !132
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i: ; preds = %bb.g, %.thread39.i
  %i.p = phi ptr [ null, %bb.g ], [ %i.j, %.thread39.i ]
  %i.q = zext i32 %.sroa.speculated.i to i64
  %i.r = tail call ptr @hb_realloc(ptr noundef %i.p, i64 noundef %i.q) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4, !prof !20

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i, %bb.h
  %i.s = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not23.i = icmp ugt i32 %.sroa.speculated.i, %i.s
  br i1 %.not23.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4:    ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i
  %.1.i.i52.i = phi ptr [ %i.r, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i ], [ null, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.i ], [ %i.l, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i52.i, ptr %i.t, align 8, !tbaa !18
  store i32 %.sroa.speculated.i, ptr %0, align 8, !tbaa !15
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIhLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i
  %i.u = xor i32 %i.s, -1
  store i32 %i.u, ptr %0, align 8, !tbaa !15
  br label %_ZN11hb_vector_tIhLb0EE11resize_fullEibb.exit

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread:     ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i, %bb.c, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4
  %i.v = load i32, ptr %i.d, align 4, !tbaa !19   ; 3 uses
  %i.w = icmp ugt i32 %1, %i.v
  br i1 %i.w, label %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.k

_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread
  %i.x = sub nuw nsw i32 %1, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = zext nneg i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %bb.k
end_hunk_1
