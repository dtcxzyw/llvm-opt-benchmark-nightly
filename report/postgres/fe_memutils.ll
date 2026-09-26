Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe_memutils?download=true
inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot duplicate null pointer (internal error)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"invalid memory allocation request size %zu + %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"invalid memory allocation request size %zu * %zu\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pg_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pg_malloc_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.c, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_malloc_internal.exit:                          ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @pg_malloc0(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1) ; 5 uses
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.c, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.f = and i64 %i.e, 7
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %pg_malloc_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %spec.store.select.i, 7
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ult i64 %0, 1025
  %or.cond3.i = and i1 %i.j, %i.i
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %pg_malloc_internal.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.k = add i64 %spec.store.select.i, %i.e
  %i.l = add i64 %i.e, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = xor i64 %i.e, -1
  %i.n = add i64 %umax.i, %i.m
  %i.o = and i64 %i.n, -8
  %i.p = add i64 %i.o, 8
  br label %pg_malloc_internal.exit

pg_malloc_internal.exit:                          ; preds = %bb.c, %bb.d, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %spec.store.select.i, %bb.d ], [ %spec.store.select.i, %bb.c ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %.sink, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pg_malloc_extended(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1) ; 5 uses
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %pg_malloc_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.e, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %1, 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %pg_malloc_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %pg_malloc_internal.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = and i64 %spec.store.select.i, 7
  %i.l = icmp eq i64 %i.k, 0
  %i.m = icmp ult i64 %0, 1025
  %or.cond3.i = and i1 %i.m, %i.l
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %pg_malloc_internal.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.n = add i64 %spec.store.select.i, %i.h
  %i.o = add i64 %i.h, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax.i, %i.p
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  br label %pg_malloc_internal.exit.sink.split

pg_malloc_internal.exit.sink.split:               ; preds = %bb.e, %bb.f, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.s, %.lr.ph.preheader.i ], [ %spec.store.select.i, %bb.f ], [ %spec.store.select.i, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %.sink, i1 false)
  br label %pg_malloc_internal.exit

pg_malloc_internal.exit:                          ; preds = %pg_malloc_internal.exit.sink.split, %bb.b, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pg_realloc(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %spec.store.select = select i1 %or.cond, i64 1, i64 %1
  %i.c = tail call ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select) #16 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #1

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pg_strdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.1) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %0) #14 ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @pg_free(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @palloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pg_malloc_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.c, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_malloc_internal.exit:                          ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @palloc0(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1) ; 5 uses
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.c, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.f = and i64 %i.e, 7
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %pg_malloc_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %spec.store.select.i, 7
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ult i64 %0, 1025
  %or.cond3.i = and i1 %i.j, %i.i
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %pg_malloc_internal.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.k = add i64 %spec.store.select.i, %i.e
  %i.l = add i64 %i.e, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = xor i64 %i.e, -1
  %i.n = add i64 %umax.i, %i.m
  %i.o = and i64 %i.n, -8
  %i.p = add i64 %i.o, 8
  br label %pg_malloc_internal.exit

pg_malloc_internal.exit:                          ; preds = %bb.c, %bb.d, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %spec.store.select.i, %bb.d ], [ %spec.store.select.i, %bb.c ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %.sink, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @palloc_extended(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1) ; 5 uses
  %i.a = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %pg_malloc_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.e, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %1, 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %pg_malloc_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %pg_malloc_internal.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = and i64 %spec.store.select.i, 7
  %i.l = icmp eq i64 %i.k, 0
  %i.m = icmp ult i64 %0, 1025
  %or.cond3.i = and i1 %i.m, %i.l
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %pg_malloc_internal.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.n = add i64 %spec.store.select.i, %i.h
  %i.o = add i64 %i.h, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax.i, %i.p
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  br label %pg_malloc_internal.exit.sink.split

pg_malloc_internal.exit.sink.split:               ; preds = %bb.e, %bb.f, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.s, %.lr.ph.preheader.i ], [ %spec.store.select.i, %bb.f ], [ %spec.store.select.i, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %.sink, i1 false)
  br label %pg_malloc_internal.exit

pg_malloc_internal.exit:                          ; preds = %pg_malloc_internal.exit.sink.split, %bb.b, %bb.d
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @pfree(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pstrdup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.1) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %0) #14 ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %bb.d, label %pg_strdup.exit

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_strdup.exit:                                   ; preds = %bb.c
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pnstrdup(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.1) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @strnlen(ptr noundef nonnull %0, i64 noundef %1) #17
  %i.d = shl i64 %i.c, 32                         ; 2 uses
  %sext = add i64 %i.d, 4294967296
  %i.e = ashr exact i64 %sext, 32
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #13 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.h, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = ashr exact i64 %i.d, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  store i8 0, ptr %i.k, align 1
  ret ptr %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @repalloc(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = and i1 %i.a, %i.b
  %spec.store.select.i = select i1 %or.cond.i, i64 1, i64 %1
  %i.c = tail call ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %pg_realloc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_realloc.exit:                                  ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @add_size(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @add_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.c
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define internal fastcc void @add_size_error(i64 noundef %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, i64 noundef %0, i64 noundef %1) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @mul_size(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.c
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define internal fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
  %i.b = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.3, i64 noundef %0, i64 noundef %1) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pg_malloc_mul(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %pg_malloc.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.h, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_malloc.exit:                                   ; preds = %bb.c
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @pg_malloc0_mul(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 5 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.h, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.k = and i64 %i.j, 7
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %pg_malloc0.exit

bb.f:                                             ; preds = %bb.e
  %i.m = and i64 %spec.store.select.i.i, 7
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp samesign ult i64 %i.c, 1025
  %or.cond3.i.i = and i1 %i.o, %i.n
  br i1 %or.cond3.i.i, label %.lr.ph.preheader.i.i, label %pg_malloc0.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.p = add i64 %spec.store.select.i.i, %i.j
  %i.q = add i64 %i.j, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.j, -1
  %i.s = add i64 %umax.i.i, %i.r
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 8
  br label %pg_malloc0.exit

pg_malloc0.exit:                                  ; preds = %bb.e, %bb.f, %.lr.ph.preheader.i.i
  %.sink.i = phi i64 [ %i.u, %.lr.ph.preheader.i.i ], [ %spec.store.select.i.i, %bb.f ], [ %spec.store.select.i.i, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %.sink.i, i1 false)
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pg_malloc_mul_extended(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 5 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %2, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %pg_malloc_extended.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8
  %i.k = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.j, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = and i32 %2, 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %pg_malloc_extended.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.n = and i64 %i.m, 7
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %pg_malloc_internal.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.p = and i64 %spec.store.select.i.i, 7
  %i.q = icmp eq i64 %i.p, 0
  %i.r = icmp samesign ult i64 %i.c, 1025
  %or.cond3.i.i = and i1 %i.r, %i.q
  br i1 %or.cond3.i.i, label %.lr.ph.preheader.i.i, label %pg_malloc_internal.exit.sink.split.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.s = add i64 %spec.store.select.i.i, %i.m
  %i.t = add i64 %i.m, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.t)
  %i.u = xor i64 %i.m, -1
  %i.v = add i64 %umax.i.i, %i.u
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8
  br label %pg_malloc_internal.exit.sink.split.i

pg_malloc_internal.exit.sink.split.i:             ; preds = %.lr.ph.preheader.i.i, %bb.h, %bb.g
  %.sink.i = phi i64 [ %i.x, %.lr.ph.preheader.i.i ], [ %spec.store.select.i.i, %bb.h ], [ %spec.store.select.i.i, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %.sink.i, i1 false)
  br label %pg_malloc_extended.exit

pg_malloc_extended.exit:                          ; preds = %bb.d, %bb.f, %pg_malloc_internal.exit.sink.split.i
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @pg_realloc_mul(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %1, i64 noundef %2) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %i.c, 0
  %or.cond.i = and i1 %i.f, %i.g
  %spec.store.select.i = select i1 %or.cond.i, i64 1, i64 %i.c
  %i.h = tail call ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %pg_realloc.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8
  %i.j = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.i, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

pg_realloc.exit:                                  ; preds = %bb.c
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @palloc_mul(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %palloc.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.h, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

palloc.exit:                                      ; preds = %bb.c
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @palloc0_mul(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 5 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.h, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.k = and i64 %i.j, 7
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %palloc0.exit

bb.f:                                             ; preds = %bb.e
  %i.m = and i64 %spec.store.select.i.i, 7
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp samesign ult i64 %i.c, 1025
  %or.cond3.i.i = and i1 %i.o, %i.n
  br i1 %or.cond3.i.i, label %.lr.ph.preheader.i.i, label %palloc0.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.p = add i64 %spec.store.select.i.i, %i.j
  %i.q = add i64 %i.j, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.j, -1
  %i.s = add i64 %umax.i.i, %i.r
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 8
  br label %palloc0.exit

palloc0.exit:                                     ; preds = %bb.e, %bb.f, %.lr.ph.preheader.i.i
  %.sink.i = phi i64 [ %i.u, %.lr.ph.preheader.i.i ], [ %spec.store.select.i.i, %bb.f ], [ %spec.store.select.i.i, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %.sink.i, i1 false)
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @palloc_mul_extended(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %0, i64 noundef %1) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 5 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i.i) #13 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %2, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %palloc_extended.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8
  %i.k = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.j, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = and i32 %2, 4
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %palloc_extended.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.n = and i64 %i.m, 7
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %pg_malloc_internal.exit.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.p = and i64 %spec.store.select.i.i, 7
  %i.q = icmp eq i64 %i.p, 0
  %i.r = icmp samesign ult i64 %i.c, 1025
  %or.cond3.i.i = and i1 %i.r, %i.q
  br i1 %or.cond3.i.i, label %.lr.ph.preheader.i.i, label %pg_malloc_internal.exit.sink.split.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.s = add i64 %spec.store.select.i.i, %i.m
  %i.t = add i64 %i.m, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.t)
  %i.u = xor i64 %i.m, -1
  %i.v = add i64 %umax.i.i, %i.u
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8
  br label %pg_malloc_internal.exit.sink.split.i

pg_malloc_internal.exit.sink.split.i:             ; preds = %.lr.ph.preheader.i.i, %bb.h, %bb.g
  %.sink.i = phi i64 [ %i.x, %.lr.ph.preheader.i.i ], [ %spec.store.select.i.i, %bb.h ], [ %spec.store.select.i.i, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.f, i8 0, i64 %.sink.i, i1 false)
  br label %palloc_extended.exit

palloc_extended.exit:                             ; preds = %bb.d, %bb.f, %pg_malloc_internal.exit.sink.split.i
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @repalloc_mul(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mul_size_error(i64 noundef %1, i64 noundef %2) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %i.c, 0
  %or.cond.i.i = and i1 %i.f, %i.g
  %spec.store.select.i.i = select i1 %or.cond.i.i, i64 1, i64 %i.c
  %i.h = tail call ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i.i) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %repalloc.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8
  %i.j = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.i, ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

repalloc.exit:                                    ; preds = %bb.c
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noinline noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
