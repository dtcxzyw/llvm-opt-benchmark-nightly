inline.NumInlined: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_md_info_t = type { i32, i8, i8 }
%struct.mbedtls_md_context_t = type { ptr, ptr, ptr }

@_ZL19mbedtls_sha256_info = internal constant %struct.mbedtls_md_info_t { i32 9, i8 32, i8 64 }, align 4
@_ZL17supported_digests = internal constant [2 x i32] [i32 9, i32 0], align 4
@.str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @mbedtls_md_info_from_type(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %0, 9
  %_ZL19mbedtls_sha256_info. = select i1 %cond, ptr @_ZL19mbedtls_sha256_info, ptr null
  ret ptr %_ZL19mbedtls_sha256_info.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_md_init(ptr noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_md_free(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.f, label %bb.g [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @mbedtls_sha1_free(ptr noundef nonnull %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @mbedtls_sha256_free(ptr noundef nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !11
  tail call void @free(ptr noundef %i.g) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.i, i64 noundef %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 24)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.j
  ret void
}

declare void @mbedtls_sha1_free(ptr noundef) local_unnamed_addr #4

declare void @mbedtls_sha256_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden range(i32 -20736, 1) i32 @mbedtls_md_clone(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  switch i32 %i.f, label %bb.g [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  tail call void @mbedtls_sha1_clone(ptr noundef %i.h, ptr noundef %i.j)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  tail call void @mbedtls_sha256_clone(ptr noundef %i.l, ptr noundef %i.n)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -20736, %bb.d ], [ -20736, %bb.a ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare void @mbedtls_sha1_clone(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mbedtls_sha256_clone(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden range(i32 -20864, 1) i32 @mbedtls_md_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %mbedtls_md_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %1, align 4, !tbaa !12
  switch i32 %i.e, label %mbedtls_md_free.exit [
    i32 5, label %bb.c
    i32 9, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(92) ptr @calloc(i64 noundef 1, i64 noundef 92) #12 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mbedtls_md_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @mbedtls_sha1_init(ptr noundef nonnull %i.f)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #12 ; 3 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !11
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %mbedtls_md_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_sha256_init(ptr noundef nonnull %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %mbedtls_md_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef 2, i64 noundef %i.l) #12 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !15
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %mbedtls_md_free.exit

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %mbedtls_md_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr %i.o, align 4, !tbaa !12
  switch i32 %i.r, label %bb.n [
    i32 5, label %bb.l
    i32 9, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @mbedtls_sha1_free(ptr noundef nonnull %i.q)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @mbedtls_sha256_free(ptr noundef nonnull %i.q)
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !11
  tail call void @free(ptr noundef %i.s) #11
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %.not14.i = icmp eq ptr %.pre, null
  br i1 %.not14.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %0, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %.pre, i64 noundef %i.x)
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.o, %bb.n
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 24)
  br label %mbedtls_md_free.exit

mbedtls_md_free.exit:                             ; preds = %.thread, %bb.i, %bb.g, %bb.h, %bb.b, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ -20864, %bb.c ], [ -20736, %bb.a ], [ -20864, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ -20736, %bb.b ], [ -20864, %bb.i ], [ -20864, %.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @mbedtls_sha1_init(ptr noundef) local_unnamed_addr #4

declare void @mbedtls_sha256_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_starts(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.d, label %bb.f [
    i32 5, label %bb.d
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @mbedtls_sha1_starts(ptr noundef %i.f)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha256_starts(ptr noundef %i.i, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.j, %bb.e ], [ -20736, %bb.a ], [ %i.g, %bb.d ], [ -20736, %bb.b ], [ -20736, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_sha1_starts(ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_sha256_starts(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_update(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.d, label %bb.f [
    i32 5, label %bb.d
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @mbedtls_sha1_update(ptr noundef %i.f, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha256_update(ptr noundef %i.i, ptr noundef %1, i64 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.j, %bb.e ], [ -20736, %bb.a ], [ %i.g, %bb.d ], [ -20736, %bb.b ], [ -20736, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_sha1_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @mbedtls_sha256_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_finish(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.d, label %bb.f [
    i32 5, label %bb.d
    i32 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @mbedtls_sha1_finish(ptr noundef %i.f, ptr noundef %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha256_finish(ptr noundef %i.i, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.j, %bb.e ], [ -20736, %bb.a ], [ %i.g, %bb.d ], [ -20736, %bb.b ], [ -20736, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_sha1_finish(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_sha256_finish(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  switch i32 %i.b, label %bb.e [
    i32 5, label %bb.c
    i32 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @mbedtls_sha1(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @mbedtls_sha256(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.d ], [ -20736, %bb.a ], [ %i.c, %bb.c ], [ -20736, %bb.b ]
  ret i32 %.0
}

declare i32 @mbedtls_sha1(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_sha256(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i8 @mbedtls_md_get_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @mbedtls_md_get_type(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @mbedtls_md_list() local_unnamed_addr #0 {
bb.a:
  ret ptr @_ZL17supported_digests
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_info_from_string(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str, ptr noundef nonnull dereferenceable(1) %0) #13
  %.not10 = icmp eq i32 %i.b, 0
  %_ZL19mbedtls_sha256_info..i = select i1 %.not10, ptr @_ZL19mbedtls_sha256_info, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.07 = phi ptr [ %_ZL19mbedtls_sha256_info..i, %.preheader.preheader ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_get_name(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  %.not10 = icmp eq i32 %i.b, 9
  %i.c = select i1 %.not10, ptr @.str, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.c, %.preheader ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_info_from_ctx(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_starts(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.c, align 4, !tbaa !12
  switch i32 %i.l, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.f
    i32 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = tail call i32 @mbedtls_sha1_starts(ptr noundef %i.n)
  br label %mbedtls_md_starts.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = tail call i32 @mbedtls_sha256_starts(ptr noundef %i.q, i32 noundef 0)
  br label %mbedtls_md_starts.exit

mbedtls_md_starts.exit:                           ; preds = %bb.f, %bb.g
  %.0.i51 = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.0.i51, 0
  br i1 %.not, label %bb.h, label %mbedtls_md_update.exit56

bb.h:                                             ; preds = %mbedtls_md_starts.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mbedtls_md_update.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.s, align 4, !tbaa !12
  switch i32 %i.u, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.j
    i32 9, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i32 @mbedtls_sha1_update(ptr noundef %i.w, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.aa = tail call i32 @mbedtls_sha256_update(ptr noundef %i.z, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.j, %bb.k
  %.0.i52 = phi i32 [ %i.aa, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %.not41 = icmp eq i32 %.0.i52, 0
  br i1 %.not41, label %bb.l, label %mbedtls_md_update.exit56

bb.l:                                             ; preds = %mbedtls_md_update.exit
  %i.ab = call i32 @mbedtls_md_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %bb.m, label %mbedtls_md_update.exit56

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !17
  %i.af = zext i8 %i.ae to i64
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %.pre77 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  %.pre78 = zext i8 %.pre77 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pre-phi = phi i64 [ %.pre78, %bb.m ], [ %i.j, %bb.d ] ; 5 uses
  %i.ag = phi ptr [ %.pre, %bb.m ], [ %i.f, %bb.d ] ; 20 uses
  %.033 = phi i64 [ %i.af, %bb.m ], [ %2, %bb.d ] ; 21 uses
  %.031 = phi ptr [ %i.a, %bb.m ], [ %1, %bb.d ]  ; 26 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.pre-phi ; 11 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 54, i64 %.pre-phi, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i8 %i.ak to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 92, i64 %i.al, i1 false)
  %.not.i4564 = icmp samesign ult i64 %.033, 8    ; 2 uses
  br i1 %.not.i4564, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.am = add i64 %.033, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 88
  br i1 %min.iters.check, label %.lr.ph.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = and i64 %.033, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep90 = getelementptr i8, ptr %.031, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep90
  %bound1 = icmp ult ptr %.031, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 3 uses
  %i.ar = or disjoint i64 %i.aq, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.at, align 1, !alias.scope !18, !noalias !21
  %wide.load91 = load <2 x i64>, ptr %i.au, align 1, !alias.scope !18, !noalias !21
  %i.av = getelementptr inbounds nuw i8, ptr %.031, i64 %i.as ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load92 = load <2 x i64>, ptr %i.av, align 1, !alias.scope !21
  %wide.load93 = load <2 x i64>, ptr %i.aw, align 1, !alias.scope !21
  %i.ax = xor <2 x i64> %wide.load92, %wide.load
  %i.ay = xor <2 x i64> %wide.load93, %wide.load91
  store <2 x i64> %i.ax, ptr %i.at, align 1, !alias.scope !18, !noalias !21
  store <2 x i64> %i.ay, ptr %i.au, align 1, !alias.scope !18, !noalias !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.preheader63, label %.lr.ph.preheader191

.lr.ph.preheader191:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph192 = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.0.i4465.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.preheader63:                                     ; preds = %.lr.ph, %middle.block, %bb.n
  %.0.i44.lcssa = phi i64 [ 0, %bb.n ], [ %i.aq, %middle.block ], [ %i.ca, %.lr.ph ] ; 10 uses
  %i.ba = icmp samesign ult i64 %.0.i44.lcssa, %.033
  br i1 %i.ba, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader

iter.check:                                       ; preds = %.preheader63
  %i.bb = sub nuw i64 %.033, %.0.i44.lcssa        ; 7 uses
  %min.iters.check104 = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check104, label %.lr.ph67.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check
  %scevgep96 = getelementptr i8, ptr %i.ag, i64 %.0.i44.lcssa
  %scevgep97 = getelementptr i8, ptr %i.ag, i64 %.033
  %scevgep98 = getelementptr i8, ptr %.031, i64 %.0.i44.lcssa
  %scevgep99 = getelementptr i8, ptr %.031, i64 %.033
  %bound0100 = icmp ult ptr %scevgep96, %scevgep99
  %bound1101 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck95
  %min.iters.check105 = icmp ult i64 %i.bb, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf107 = and i64 %i.bb, 28
  %n.vec108 = and i64 %i.bb, -32                  ; 4 uses
  %i.bc = add i64 %.0.i44.lcssa, %n.vec108
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.bd = add i64 %.0.i44.lcssa, %index110        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load111 = load <16 x i8>, ptr %i.be, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %wide.load112 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %i.bg = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load113 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !27, !alias.scope !31
  %wide.load114 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !27, !alias.scope !31
  %i.bi = xor <16 x i8> %wide.load113, %wide.load111
  %i.bj = xor <16 x i8> %wide.load114, %wide.load112
  store <16 x i8> %i.bi, ptr %i.be, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  store <16 x i8> %i.bj, ptr %i.bf, align 1, !tbaa !27, !alias.scope !28, !noalias !31
end_hunk_0
begin_hunk_1_@mbedtls_md_hmac_starts:bb.a
  %scevgep151 = getelementptr i8, ptr %i.dv, i64 %.033
  %scevgep152 = getelementptr i8, ptr %.031, i64 %.0.i.lcssa
  %scevgep153 = getelementptr i8, ptr %.031, i64 %.033
  %bound0154 = icmp ult ptr %scevgep150, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph73.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck149
  %min.iters.check160 = icmp ult i64 %i.dt, 32
  br i1 %min.iters.check160, label %vec.epilog.ph179, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %n.mod.vf162 = and i64 %i.dt, 28
  %n.vec163 = and i64 %i.dt, -32                  ; 4 uses
  %i.dw = add i64 %.0.i.lcssa, %n.vec163
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.dx = add i64 %.0.i.lcssa, %index165          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load166 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %wide.load167 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.ea = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dx ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load168 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !27, !alias.scope !49
  %wide.load169 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !27, !alias.scope !49
  %i.ec = xor <16 x i8> %wide.load168, %wide.load166
  %i.ed = xor <16 x i8> %wide.load169, %wide.load167
  store <16 x i8> %i.ec, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <16 x i8> %i.ed, ptr %i.dz, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next170 = add nuw i64 %index165, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.ee, label %middle.block171, label %vector.body164, !llvm.loop !51

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.dt, %n.vec163
  br i1 %cmp.n172, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block171
  %min.epilog.iters.check178 = icmp eq i64 %n.mod.vf162, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph73.preheader, label %vec.epilog.ph179, !prof !34

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check177
  %vec.epilog.resume.val173 = phi i64 [ %n.vec163, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %i.dt, -4                   ; 3 uses
  %i.ef = add i64 %.0.i.lcssa, %n.vec181
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val173, %vec.epilog.ph179 ], [ %index.next186, %vec.epilog.vector.body182 ] ; 2 uses
  %i.eg = add i64 %.0.i.lcssa, %index183          ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eg ; 2 uses
  %wide.load184 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.ei = getelementptr inbounds nuw i8, ptr %.031, i64 %i.eg
  %wide.load185 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !27, !alias.scope !49
  %i.ej = xor <4 x i8> %wide.load185, %wide.load184
  store <4 x i8> %i.ej, ptr %i.eh, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next186 = add nuw i64 %index183, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.ek, label %vec.epilog.middle.block187, label %vec.epilog.vector.body182, !llvm.loop !52

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body182
  %cmp.n188 = icmp eq i64 %i.dt, %n.vec181
  br i1 %cmp.n188, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %vector.memcheck149, %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block187
  %.1.i72.ph = phi i64 [ %.0.i.lcssa, %iter.check175 ], [ %.0.i.lcssa, %vector.memcheck149 ], [ %i.dw, %vec.epilog.iter.check177 ], [ %i.ef, %vec.epilog.middle.block187 ] ; 4 uses
  %i.el = sub i64 %.033, %.1.i72.ph
  %xtraiter194 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %.1.i72.prol = phi i64 [ %i.er, %.lr.ph73.prol ], [ %.1.i72.ph, %.lr.ph73.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72.prol ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72.prol
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !27
  %i.eq = xor i8 %i.ep, %i.en
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !27
  %i.er = add nuw nsw i64 %.1.i72.prol, 1         ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !53

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.1.i72.unr = phi i64 [ %.1.i72.ph, %.lr.ph73.preheader ], [ %i.er, %.lr.ph73.prol ]
  %i.es = sub i64 %.1.i72.ph, %.033
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73

_ZL11mbedtls_xorPhPKhS1_m.exit47:                 ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, %_ZL11mbedtls_xorPhPKhS1_m.exit47
  %i.eu = phi i64 [ %i.ey, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 3 uses
  %.0.i69 = phi i64 [ %i.eu, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.0.i69.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i69 ; 2 uses
  %.0.copyload.i50 = load i64, ptr %i.ev, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.031, i64 %.0.i69
  %.0.copyload.i49 = load i64, ptr %i.ew, align 1
  %i.ex = xor i64 %.0.copyload.i49, %.0.copyload.i50
  store i64 %i.ex, ptr %i.ev, align 1
  %i.ey = add nuw nsw i64 %i.eu, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ey, %.033
  br i1 %.not.i, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47, !llvm.loop !54

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.1.i72 = phi i64 [ %i.fw, %.lr.ph73 ], [ %.1.i72.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fd = xor i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !27
  %i.fe = add nuw nsw i64 %.1.i72, 1              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27
  %i.fj = xor i8 %i.fi, %i.fg
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !27
  %i.fk = add nuw nsw i64 %.1.i72, 2              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !27
  %i.fp = xor i8 %i.fo, %i.fm
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !27
  %i.fq = add nuw nsw i64 %.1.i72, 3              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fv = xor i8 %i.fu, %i.fs
  store i8 %i.fv, ptr %i.fr, align 1, !tbaa !27
  %i.fw = add nuw nsw i64 %.1.i72, 4              ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %i.fw, %.033
  br i1 %exitcond76.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73, !llvm.loop !55

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block171, %vec.epilog.middle.block187, %.preheader
  %i.fx = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %mbedtls_md_update.exit56, label %bb.o

bb.o:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !12
  switch i32 %i.fz, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.p
    i32 9, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !11
  %i.gc = call i32 @mbedtls_sha1_starts(ptr noundef %i.gb)
  br label %mbedtls_md_starts.exit54

bb.q:                                             ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !11
  %i.gf = call i32 @mbedtls_sha256_starts(ptr noundef %i.ge, i32 noundef 0)
  br label %mbedtls_md_starts.exit54

mbedtls_md_starts.exit54:                         ; preds = %bb.p, %bb.q
  %.0.i53 = phi i32 [ %i.gf, %bb.q ], [ %i.gc, %bb.p ] ; 2 uses
  %.not43 = icmp eq i32 %.0.i53, 0
  br i1 %.not43, label %bb.r, label %mbedtls_md_update.exit56

bb.r:                                             ; preds = %mbedtls_md_starts.exit54
  %i.gg = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i64                    ; 2 uses
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !12
  switch i32 %i.gk, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.s
    i32 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !11
  %i.gn = call i32 @mbedtls_sha1_update(ptr noundef %i.gm, ptr noundef %i.ag, i64 noundef %i.gj)
  br label %mbedtls_md_update.exit56

bb.t:                                             ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !11
  %i.gq = call i32 @mbedtls_sha256_update(ptr noundef %i.gp, ptr noundef %i.ag, i64 noundef %i.gj)
  br label %mbedtls_md_update.exit56

mbedtls_md_update.exit56:                         ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit, %bb.o, %bb.h, %bb.i, %bb.e, %bb.t, %bb.s, %bb.r, %mbedtls_md_starts.exit54, %bb.l, %mbedtls_md_update.exit, %mbedtls_md_starts.exit
  %.032 = phi i32 [ %.0.i51, %mbedtls_md_starts.exit ], [ %.0.i52, %mbedtls_md_update.exit ], [ %i.ab, %bb.l ], [ %.0.i53, %mbedtls_md_starts.exit54 ], [ -20736, %bb.h ], [ %i.gn, %bb.s ], [ -20736, %bb.e ], [ %i.gq, %bb.t ], [ -20736, %bb.r ], [ -20736, %bb.i ], [ -20736, %bb.o ], [ -20736, %_ZL11mbedtls_xorPhPKhS1_m.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 32)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %mbedtls_md_update.exit56
  %.0 = phi i32 [ %.032, %mbedtls_md_update.exit56 ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ -20736, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_update(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mbedtls_md_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %mbedtls_md_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.g, label %mbedtls_md_update.exit [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha1_update(ptr noundef %i.i, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 @mbedtls_sha256_update(ptr noundef %i.l, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -20736, %bb.a ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ %i.m, %bb.f ], [ -20736, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_finish(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %mbedtls_md_finish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mbedtls_md_finish.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mbedtls_md_finish.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !12
  switch i32 %i.l, label %mbedtls_md_finish.exit.thread [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = call i32 @mbedtls_sha1_finish(ptr noundef %i.n, ptr noundef nonnull %i.a)
  br label %mbedtls_md_finish.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call i32 @mbedtls_sha256_finish(ptr noundef %i.q, ptr noundef nonnull %i.a)
  br label %mbedtls_md_finish.exit

mbedtls_md_finish.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.r, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %mbedtls_md_finish.exit.thread

bb.g:                                             ; preds = %mbedtls_md_finish.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mbedtls_md_finish.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr %i.s, align 4, !tbaa !12
  switch i32 %i.u, label %mbedtls_md_finish.exit.thread [
    i32 5, label %bb.i
    i32 9, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = call i32 @mbedtls_sha1_starts(ptr noundef %i.w)
  br label %mbedtls_md_starts.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.aa = call i32 @mbedtls_sha256_starts(ptr noundef %i.z, i32 noundef 0)
  br label %mbedtls_md_starts.exit

mbedtls_md_starts.exit:                           ; preds = %bb.i, %bb.j
  %.0.i28 = phi i32 [ %i.aa, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %.not25 = icmp eq i32 %.0.i28, 0
  br i1 %.not25, label %bb.k, label %mbedtls_md_finish.exit.thread

bb.k:                                             ; preds = %mbedtls_md_starts.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64                    ; 2 uses
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !12
  switch i32 %i.af, label %mbedtls_md_finish.exit.thread [
    i32 5, label %bb.l
    i32 9, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = call i32 @mbedtls_sha1_update(ptr noundef %i.ah, ptr noundef nonnull %i.k, i64 noundef %i.ae)
  br label %mbedtls_md_update.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.al = call i32 @mbedtls_sha256_update(ptr noundef %i.ak, ptr noundef nonnull %i.k, i64 noundef %i.ae)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.l, %bb.m
  %.0.i29 = phi i32 [ %i.al, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  %.not26 = icmp eq i32 %.0.i29, 0
  br i1 %.not26, label %bb.n, label %mbedtls_md_finish.exit.thread

bb.n:                                             ; preds = %mbedtls_md_update.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !17
  %i.ap = zext i8 %i.ao to i64
  %i.aq = call i32 @mbedtls_md_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.ap) ; 2 uses
  %.not27 = icmp eq i32 %i.aq, 0
  br i1 %.not27, label %bb.o, label %mbedtls_md_finish.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ar = call i32 @mbedtls_md_finish(ptr noundef nonnull %0, ptr noundef %1)
  br label %mbedtls_md_finish.exit.thread

mbedtls_md_finish.exit.thread:                    ; preds = %bb.k, %bb.g, %bb.h, %bb.d, %bb.n, %mbedtls_md_update.exit, %mbedtls_md_starts.exit, %mbedtls_md_finish.exit, %bb.a, %bb.b, %bb.c, %bb.o
  %.0 = phi i32 [ %i.ar, %bb.o ], [ -20736, %bb.a ], [ %.0.i, %mbedtls_md_finish.exit ], [ %.0.i28, %mbedtls_md_starts.exit ], [ %.0.i29, %mbedtls_md_update.exit ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ %i.aq, %bb.n ], [ -20736, %bb.g ], [ -20736, %bb.d ], [ -20736, %bb.h ], [ -20736, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_reset(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mbedtls_md_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %mbedtls_md_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.g, label %mbedtls_md_update.exit [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha1_starts(ptr noundef %i.i)
  br label %mbedtls_md_starts.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 @mbedtls_sha256_starts(ptr noundef %i.l, i32 noundef 0)
  br label %mbedtls_md_starts.exit

mbedtls_md_starts.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.m, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %mbedtls_md_update.exit

bb.g:                                             ; preds = %mbedtls_md_starts.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64                      ; 2 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !12
  switch i32 %i.r, label %mbedtls_md_update.exit [
    i32 5, label %bb.h
    i32 9, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call i32 @mbedtls_sha1_update(ptr noundef %i.t, ptr noundef nonnull %i.e, i64 noundef %i.q)
  br label %mbedtls_md_update.exit

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i32 @mbedtls_sha256_update(ptr noundef %i.w, ptr noundef nonnull %i.e, i64 noundef %i.q)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %mbedtls_md_starts.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.u, %bb.h ], [ -20736, %bb.a ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ %.0.i, %mbedtls_md_starts.exit ], [ %i.x, %bb.i ], [ -20736, %bb.g ], [ -20736, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.mbedtls_md_context_t, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = call i32 @mbedtls_md_setup(ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %mbedtls_md_hmac_update.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @mbedtls_md_hmac_starts(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2) ; 2 uses
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.d, label %mbedtls_md_hmac_update.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %mbedtls_md_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_md_hmac_update.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.d, align 4, !tbaa !12
  switch i32 %i.i, label %mbedtls_md_hmac_update.exit.thread [
    i32 5, label %bb.g
    i32 9, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = call i32 @mbedtls_sha1_update(ptr noundef %i.k, ptr noundef %3, i64 noundef %4)
  br label %mbedtls_md_hmac_update.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = call i32 @mbedtls_sha256_update(ptr noundef %i.n, ptr noundef %3, i64 noundef %4)
  br label %mbedtls_md_hmac_update.exit

mbedtls_md_hmac_update.exit:                      ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.l, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %.not14 = icmp eq i32 %.0.i, 0
  br i1 %.not14, label %bb.i, label %mbedtls_md_hmac_update.exit.thread

bb.i:                                             ; preds = %mbedtls_md_hmac_update.exit
  %i.p = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %6, ptr noundef %5)
  br label %mbedtls_md_hmac_update.exit.thread

mbedtls_md_hmac_update.exit.thread:               ; preds = %bb.f, %bb.e, %bb.i, %mbedtls_md_hmac_update.exit, %bb.c, %bb.b
  %.0.ph = phi i32 [ -20736, %bb.f ], [ -20736, %bb.e ], [ %i.p, %bb.i ], [ %.0.i, %mbedtls_md_hmac_update.exit ], [ %i.c, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %mbedtls_md_free.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_md_hmac_update.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %.pr, align 4, !tbaa !12
  switch i32 %i.t, label %bb.n [
    i32 5, label %bb.l
    i32 9, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void @mbedtls_sha1_free(ptr noundef nonnull %i.s)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @mbedtls_sha256_free(ptr noundef nonnull %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !11
  call void @free(ptr noundef %i.u) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %6, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.w, i64 noundef %i.ab)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %6, i64 noundef 24)
  br label %mbedtls_md_free.exit

mbedtls_md_free.exit:                             ; preds = %bb.d, %bb.q, %mbedtls_md_hmac_update.exit.thread, %bb.a
  %.08 = phi i32 [ -20736, %bb.a ], [ %.0.ph, %mbedtls_md_hmac_update.exit.thread ], [ %.0.ph, %bb.q ], [ -20736, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.08
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS20mbedtls_md_context_t", !9, i64 0, !10, i64 8, !10, i64 16}
!9 = !{!"p1 _ZTS17mbedtls_md_info_t", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !10, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS17mbedtls_md_info_t", !14, i64 0, !5, i64 4, !5, i64 5}
!14 = !{!"_ZTS17mbedtls_md_type_t", !5, i64 0}
!15 = !{!8, !10, i64 16}
!16 = !{!13, !5, i64 5}
!17 = !{!13, !5, i64 4}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!5, !5, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !24, !25, !26}
!34 = !{!"branch_weights", i32 4, i32 28}
!35 = distinct !{!35, !24, !25, !26}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !24, !25}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !24, !25, !26}
!45 = distinct !{!45, !24, !25}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !24, !25, !26}
!52 = distinct !{!52, !24, !25, !26}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !24, !25}
!55 = distinct !{!55, !24, !25}
end_hunk_1
