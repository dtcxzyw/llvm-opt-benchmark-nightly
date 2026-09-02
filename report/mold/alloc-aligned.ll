Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/alloc-aligned?download=true
inline.NumInlined: 88
inline.NumDeleted: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__mi_theap_default = external hidden thread_local(initialexec) local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [102 x i8] c"aligned allocation requires the alignment to be a power-of-two (size %zu, alignment %zu, offset %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"aligned allocation request is too large (size %zu, alignment %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [121 x i8] c"aligned allocation with a large alignment cannot be used with an alignment offset (size %zu, alignment %zu, offset %zu)\0A\00", align 1
@__mi_theap_cached = external hidden thread_local(initialexec) local_unnamed_addr global ptr, align 8
@_mi_cpu_stosb_max = external hidden local_unnamed_addr global i64, align 8
@_mi_cpu_movsb_max = external hidden local_unnamed_addr global i64, align 8

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_theap_malloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i = icmp eq i64 %i.a, 1
  br i1 %or.cond.i.i, label %bb.b, label %mi_alignment_is_valid.exit.thread.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i:            ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %1, i64 noundef %2, i64 noundef 0) #9
  br label %mi_theap_malloc_aligned_at.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 1025
  %i.c = icmp ule i64 %2, %1
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %.thread.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = and i64 %i.l, %i.m
  %.not40.i.i = icmp eq i64 %i.n, 0
  br i1 %.not40.i.i, label %bb.e, label %.thread.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %1, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.p = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext false, ptr noundef null) #11
  br label %mi_theap_malloc_aligned_at.exit

mi_theap_malloc_aligned_at.exit:                  ; preds = %mi_alignment_is_valid.exit.thread.i.i, %bb.e, %.thread.i.i
  %.3.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i ], [ %i.p, %.thread.i.i ], [ %i.o, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_malloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.i.i, label %bb.b, label %mi_alignment_is_valid.exit.thread.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i:            ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef %2) #9
  br label %mi_theap_malloc_aligned_at.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not40.i.i = icmp eq i64 %i.q, 0
  br i1 %.not40.i.i, label %bb.e, label %.thread.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i64 noundef %0, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.s = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null) #11
  br label %mi_theap_malloc_aligned_at.exit

mi_theap_malloc_aligned_at.exit:                  ; preds = %mi_alignment_is_valid.exit.thread.i.i, %bb.e, %.thread.i.i
  %.3.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i ], [ %i.s, %.thread.i.i ], [ %i.r, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_malloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.i.i.i, label %bb.b, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef 0) #9
  br label %mi_theap_malloc_aligned.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.thread.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not40.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not40.i.i.i, label %bb.e, label %.thread.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i64 noundef %0, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_aligned.exit

.thread.i.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.r = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false, ptr noundef null) #11
  br label %mi_theap_malloc_aligned.exit

mi_theap_malloc_aligned.exit:                     ; preds = %mi_alignment_is_valid.exit.thread.i.i.i, %bb.e, %.thread.i.i.i
  %.3.i.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.r, %.thread.i.i.i ], [ %i.q, %bb.e ]
  ret ptr %.3.i.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_umalloc_aligned(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.i, label %bb.b, label %mi_theap_malloc_zero_aligned_at.exit.thread, !prof !8

mi_theap_malloc_zero_aligned_at.exit.thread:      ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef 0) #9
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %0, 1025
  %i.f = icmp ule i64 %1, %0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.thread.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %0, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.thread.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %1, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.o, %i.p
  %.not40.i = icmp eq i64 %i.q, 0
  br i1 %.not40.i, label %bb.e, label %.thread.i, !prof !9

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.a, align 8, !tbaa !12
  %i.r = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, i64 noundef %0, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_zero_aligned_at.exit

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.s = call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.c, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %i.a) #11
  br label %mi_theap_malloc_zero_aligned_at.exit

mi_theap_malloc_zero_aligned_at.exit:             ; preds = %bb.e, %.thread.i
  %.3.i = phi ptr [ %i.r, %bb.e ], [ %i.s, %.thread.i ] ; 3 uses
  %i.t = icmp ne ptr %.3.i, null
  %i.u = icmp ne ptr %2, null
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_theap_malloc_zero_aligned_at.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %.val = load i64, ptr %i.w, align 8, !tbaa !24
  store i64 %.val, ptr %2, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %mi_theap_malloc_zero_aligned_at.exit.thread, %bb.f, %mi_theap_malloc_zero_aligned_at.exit
  %.3.i8 = phi ptr [ null, %mi_theap_malloc_zero_aligned_at.exit.thread ], [ %.3.i, %bb.f ], [ %.3.i, %mi_theap_malloc_zero_aligned_at.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.3.i8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_zalloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.i.i, label %bb.b, label %mi_alignment_is_valid.exit.thread.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i:            ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef %2) #9
  br label %mi_theap_zalloc_aligned_at.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.thread.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = add i64 %2, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not40.i.i = icmp eq i64 %i.q, 0
  br i1 %.not40.i.i, label %bb.e, label %.thread.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i64 noundef %0, i1 noundef zeroext true) #10
  br label %mi_theap_zalloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.s = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_zalloc_aligned_at.exit

mi_theap_zalloc_aligned_at.exit:                  ; preds = %mi_alignment_is_valid.exit.thread.i.i, %bb.e, %.thread.i.i
  %.3.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i ], [ %i.s, %.thread.i.i ], [ %i.r, %bb.e ]
  ret ptr %.3.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_zalloc_aligned(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %or.cond.i.i.i, label %bb.b, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef 0) #9
  br label %mi_theap_zalloc_aligned.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1025
  %i.e = icmp ule i64 %1, %0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %.thread.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %1, -1
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.n, %i.o
  %.not40.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not40.i.i.i, label %bb.e, label %.thread.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, i64 noundef %0, i1 noundef zeroext true) #10
  br label %mi_theap_zalloc_aligned.exit

.thread.i.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.r = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_zalloc_aligned.exit

mi_theap_zalloc_aligned.exit:                     ; preds = %mi_alignment_is_valid.exit.thread.i.i.i, %bb.e, %.thread.i.i.i
  %.3.i.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.r, %.thread.i.i.i ], [ %i.q, %bb.e ]
  ret ptr %.3.i.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_uzalloc_aligned(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %or.cond.i = icmp eq i64 %i.d, 1
  br i1 %or.cond.i, label %bb.b, label %mi_theap_malloc_zero_aligned_at.exit.thread, !prof !8

mi_theap_malloc_zero_aligned_at.exit.thread:      ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef 0) #9
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %0, 1025
  %i.f = icmp ule i64 %1, %0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.thread.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %0, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.thread.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %1, -1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.o, %i.p
  %.not40.i = icmp eq i64 %i.q, 0
  br i1 %.not40.i, label %bb.e, label %.thread.i, !prof !9

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.a, align 8, !tbaa !12
  %i.r = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, i64 noundef %0, i1 noundef zeroext true) #10
  br label %mi_theap_malloc_zero_aligned_at.exit

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.s = call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.c, i64 noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %i.a) #11
  br label %mi_theap_malloc_zero_aligned_at.exit

mi_theap_malloc_zero_aligned_at.exit:             ; preds = %bb.e, %.thread.i
  %.3.i = phi ptr [ %i.r, %bb.e ], [ %i.s, %.thread.i ] ; 3 uses
  %i.t = icmp ne ptr %.3.i, null
  %i.u = icmp ne ptr %2, null
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_theap_malloc_zero_aligned_at.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %.val = load i64, ptr %i.w, align 8, !tbaa !24
  store i64 %.val, ptr %2, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %mi_theap_malloc_zero_aligned_at.exit.thread, %bb.f, %mi_theap_malloc_zero_aligned_at.exit
  %.3.i8 = phi ptr [ null, %mi_theap_malloc_zero_aligned_at.exit.thread ], [ %.3.i, %bb.f ], [ %.3.i, %mi_theap_malloc_zero_aligned_at.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.3.i8
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned_at(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_calloc_aligned_at.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 6 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.i.i.i, label %bb.d, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %bb.c
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3) #9
  br label %mi_theap_calloc_aligned_at.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %.thread.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = add i64 %3, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not40.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not40.i.i.i, label %bb.g, label %.thread.i.i.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #10
  br label %mi_theap_calloc_aligned_at.exit

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.v = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_calloc_aligned_at.exit

mi_theap_calloc_aligned_at.exit:                  ; preds = %bb.b, %mi_alignment_is_valid.exit.thread.i.i.i, %bb.g, %.thread.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.v, %.thread.i.i.i ], [ %i.u, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_calloc_aligned.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 6 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i.i.i = icmp eq i64 %i.f, 1
  br i1 %or.cond.i.i.i.i, label %bb.d, label %mi_alignment_is_valid.exit.thread.i.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i.i:        ; preds = %bb.c
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0) #9
  br label %mi_theap_calloc_aligned.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.h = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %.thread.i.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %2, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.q, %i.r
  %.not40.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not40.i.i.i.i, label %bb.g, label %.thread.i.i.i.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true) #10
  br label %mi_theap_calloc_aligned.exit

.thread.i.i.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.u = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_calloc_aligned.exit

mi_theap_calloc_aligned.exit:                     ; preds = %bb.b, %mi_alignment_is_valid.exit.thread.i.i.i.i, %bb.g, %.thread.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %mi_alignment_is_valid.exit.thread.i.i.i.i ], [ %i.u, %.thread.i.i.i.i ], [ %i.t, %bb.g ]
  ret ptr %.0.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i = icmp eq i64 %i.g, 1
  br i1 %or.cond.i.i, label %bb.c, label %mi_alignment_is_valid.exit.thread.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i:            ; preds = %_mi_heap_theap.exit
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %1, i64 noundef %2, i64 noundef %3) #9
  br label %mi_theap_malloc_aligned_at.exit

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.h = icmp ult i64 %1, 1025
  %i.i = icmp ule i64 %2, %1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.thread.i.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %1, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %2, -1
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = add i64 %3, %i.s
  %i.u = and i64 %i.t, %i.r
  %.not40.i.i = icmp eq i64 %i.u, 0
  br i1 %.not40.i.i, label %bb.f, label %.thread.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.o, i64 noundef %1, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.w = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false, ptr noundef null) #11
  br label %mi_theap_malloc_aligned_at.exit

mi_theap_malloc_aligned_at.exit:                  ; preds = %mi_alignment_is_valid.exit.thread.i.i, %bb.f, %.thread.i.i
  %.3.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i ], [ %i.w, %.thread.i.i ], [ %i.v, %bb.f ]
  ret ptr %.3.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_malloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %or.cond.i.i.i, label %bb.c, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %_mi_heap_theap.exit
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %1, i64 noundef %2, i64 noundef 0) #9
  br label %mi_theap_malloc_aligned.exit

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.h = icmp ult i64 %1, 1025
  %i.i = icmp ule i64 %2, %1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.thread.i.i.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %1, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %2, -1
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.r, %i.s
  %.not40.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not40.i.i.i, label %bb.f, label %.thread.i.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.o, i64 noundef %1, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_aligned.exit

.thread.i.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.v = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext false, ptr noundef null) #11
  br label %mi_theap_malloc_aligned.exit

mi_theap_malloc_aligned.exit:                     ; preds = %mi_alignment_is_valid.exit.thread.i.i.i, %bb.f, %.thread.i.i.i
  %.3.i.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.v, %.thread.i.i.i ], [ %i.u, %bb.f ]
  ret ptr %.3.i.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i = icmp eq i64 %i.g, 1
  br i1 %or.cond.i.i, label %bb.c, label %mi_alignment_is_valid.exit.thread.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i:            ; preds = %_mi_heap_theap.exit
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %1, i64 noundef %2, i64 noundef %3) #9
  br label %mi_theap_zalloc_aligned_at.exit

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.h = icmp ult i64 %1, 1025
  %i.i = icmp ule i64 %2, %1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.thread.i.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %1, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %2, -1
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = add i64 %3, %i.s
  %i.u = and i64 %i.t, %i.r
  %.not40.i.i = icmp eq i64 %i.u, 0
  br i1 %.not40.i.i, label %bb.f, label %.thread.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.o, i64 noundef %1, i1 noundef zeroext true) #10
  br label %mi_theap_zalloc_aligned_at.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.w = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_zalloc_aligned_at.exit

mi_theap_zalloc_aligned_at.exit:                  ; preds = %mi_alignment_is_valid.exit.thread.i.i, %bb.f, %.thread.i.i
  %.3.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i ], [ %i.w, %.thread.i.i ], [ %i.v, %bb.f ]
  ret ptr %.3.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_zalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %or.cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %or.cond.i.i.i, label %bb.c, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %_mi_heap_theap.exit
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %1, i64 noundef %2, i64 noundef 0) #9
  br label %mi_theap_zalloc_aligned.exit

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.h = icmp ult i64 %1, 1025
  %i.i = icmp ule i64 %2, %1
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %.thread.i.i.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %1, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %2, -1
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.r, %i.s
  %.not40.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not40.i.i.i, label %bb.f, label %.thread.i.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.o, i64 noundef %1, i1 noundef zeroext true) #10
  br label %mi_theap_zalloc_aligned.exit

.thread.i.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.v = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_zalloc_aligned.exit

mi_theap_zalloc_aligned.exit:                     ; preds = %mi_alignment_is_valid.exit.thread.i.i.i, %bb.f, %.thread.i.i.i
  %.3.i.i.i = phi ptr [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.v, %.thread.i.i.i ], [ %i.u, %bb.f ]
  ret ptr %.3.i.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_calloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  br i1 %i.h, label %mi_theap_calloc_aligned_at.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %_mi_heap_theap.exit
  %storemerge.i.ph.i = phi i64 [ %2, %_mi_heap_theap.exit ], [ %i.i, %bb.c ] ; 6 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.i.i.i = icmp eq i64 %i.j, 1
  br i1 %or.cond.i.i.i, label %bb.e, label %mi_alignment_is_valid.exit.thread.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i:          ; preds = %bb.d
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4) #9
  br label %mi_theap_calloc_aligned_at.exit

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %storemerge.i.ph.i, 1025
  %i.l = icmp ule i64 %3, %storemerge.i.ph.i
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %.thread.i.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %3, -1
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = add i64 %4, %i.v
  %i.x = and i64 %i.w, %i.u
  %.not40.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not40.i.i.i, label %bb.h, label %.thread.i.i.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.r, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #10
  br label %mi_theap_calloc_aligned_at.exit

.thread.i.i.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.z = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_calloc_aligned_at.exit

mi_theap_calloc_aligned_at.exit:                  ; preds = %bb.c, %mi_alignment_is_valid.exit.thread.i.i.i, %bb.h, %.thread.i.i.i
  %.0.i4 = phi ptr [ null, %bb.c ], [ null, %mi_alignment_is_valid.exit.thread.i.i.i ], [ %i.z, %.thread.i.i.i ], [ %i.y, %bb.h ]
  ret ptr %.0.i4
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_calloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  br i1 %i.h, label %mi_theap_calloc_aligned.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %_mi_heap_theap.exit
  %storemerge.i.ph.i.i = phi i64 [ %2, %_mi_heap_theap.exit ], [ %i.i, %bb.c ] ; 6 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond.i.i.i.i = icmp eq i64 %i.j, 1
  br i1 %or.cond.i.i.i.i, label %bb.e, label %mi_alignment_is_valid.exit.thread.i.i.i.i, !prof !8

mi_alignment_is_valid.exit.thread.i.i.i.i:        ; preds = %bb.d
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %storemerge.i.ph.i.i, i64 noundef %3, i64 noundef 0) #9
  br label %mi_theap_calloc_aligned.exit

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %storemerge.i.ph.i.i, 1025
  %i.l = icmp ule i64 %3, %storemerge.i.ph.i.i
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %.thread.i.i.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %3, -1
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = and i64 %i.u, %i.v
  %.not40.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not40.i.i.i.i, label %bb.h, label %.thread.i.i.i.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.r, i64 noundef %storemerge.i.ph.i.i, i1 noundef zeroext true) #10
  br label %mi_theap_calloc_aligned.exit

.thread.i.i.i.i:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.y = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %.0.i, i64 noundef %storemerge.i.ph.i.i, i64 noundef %3, i64 noundef 0, i1 noundef zeroext true, ptr noundef null) #11
  br label %mi_theap_calloc_aligned.exit

mi_theap_calloc_aligned.exit:                     ; preds = %bb.c, %mi_alignment_is_valid.exit.thread.i.i.i.i, %bb.h, %.thread.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.c ], [ null, %mi_alignment_is_valid.exit.thread.i.i.i.i ], [ %i.y, %.thread.i.i.i.i ], [ %i.x, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #11
  ret ptr %i.c
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_theap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #10
  br label %mi_theap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext false) #11
  br label %mi_theap_realloc_aligned.exit

mi_theap_realloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #11
  ret ptr %i.c
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_rezalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_theap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #10
  br label %mi_theap_rezalloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true) #11
  br label %mi_theap_rezalloc_aligned.exit

mi_theap_rezalloc_aligned.exit:                   ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_recalloc_aligned_at.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #11
  br label %mi_theap_recalloc_aligned_at.exit

mi_theap_recalloc_aligned_at.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_recalloc_aligned.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = icmp ult i64 %3, 9
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_mi_theap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true) #10
  br label %mi_theap_recalloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef 0, i1 noundef zeroext true) #11
  br label %mi_theap_recalloc_aligned.exit

mi_theap_recalloc_aligned.exit:                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %.0.i, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #11
  ret ptr %i.g
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp ult i64 %3, 9
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_mi_heap_theap.exit
  %i.h = tail call ptr @_mi_theap_realloc_zero(ptr noundef %.0.i, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false) #10
  br label %mi_theap_realloc_aligned.exit

bb.d:                                             ; preds = %_mi_heap_theap.exit
  %i.i = tail call fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %.0.i, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i1 noundef zeroext false) #11
  br label %mi_theap_realloc_aligned.exit

mi_theap_realloc_aligned.exit:                    ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret ptr %.0.i.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #13
  br label %_mi_heap_theap.exit

end_hunk_0
begin_hunk_1_@mi_heap_recalloc_aligned:bb.a
  br label %mi_theap_recalloc_aligned.exit

mi_theap_recalloc_aligned.exit:                   ; preds = %bb.c, %bb.e, %bb.f
  %.0.i4 = phi ptr [ null, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  ret ptr %.0.i4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

; Function Attrs: cold noinline nooutline nounwind optsize uwtable
define internal fastcc void @mi_error_bad_alignment(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 22, ptr noundef nonnull @.str, i64 noundef %0, i64 noundef %1, i64 noundef %2) #10
  ret void
}

declare ptr @_mi_page_malloc_zero(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 22, ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %2) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ugt i64 %2, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %mi_malloc_is_naturally_aligned.exit.thread26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @mi_good_size(i64 noundef range(i64 0, -9223372036854775808) %1) #10 ; 3 uses
  %i.e = icmp ult i64 %i.d, 4097
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.d)
  %i.g = icmp samesign ult i64 %i.f, 2
  %or.cond.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i, label %mi_malloc_is_naturally_aligned.exit.thread, label %mi_malloc_is_naturally_aligned.exit

mi_malloc_is_naturally_aligned.exit:              ; preds = %bb.d
  %i.h = icmp eq i64 %2, 4096
  %i.i = and i64 %i.d, 4095
  %i.j = icmp eq i64 %i.i, 0
  %i.k = and i1 %i.h, %i.j
  br i1 %i.k, label %mi_malloc_is_naturally_aligned.exit.thread, label %mi_malloc_is_naturally_aligned.exit.thread26

mi_malloc_is_naturally_aligned.exit.thread:       ; preds = %bb.d, %mi_malloc_is_naturally_aligned.exit
  %i.l = tail call ptr @_mi_theap_malloc_zero(ptr noundef %0, i64 noundef range(i64 -1, -9223372036854710273) %1, i1 noundef zeroext %4, ptr noundef %5) #10 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %.thread, !prof !9

.thread:                                          ; preds = %mi_malloc_is_naturally_aligned.exit.thread
  tail call void @mi_free(ptr noundef %i.l) #10
  br label %mi_malloc_is_naturally_aligned.exit.thread26

mi_malloc_is_naturally_aligned.exit.thread26:     ; preds = %.thread, %mi_malloc_is_naturally_aligned.exit, %bb.c
  %i.q = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_overalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5) #11
  br label %bb.e

bb.e:                                             ; preds = %mi_malloc_is_naturally_aligned.exit.thread, %mi_malloc_is_naturally_aligned.exit.thread26, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.q, %mi_malloc_is_naturally_aligned.exit.thread26 ], [ %i.l, %mi_malloc_is_naturally_aligned.exit.thread ]
  ret ptr %.1
}

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @mi_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_theap_malloc_zero_aligned_at_overalloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp ugt i64 %2, 65536
  br i1 %i.b, label %bb.b, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.2, i64 noundef %1, i64 noundef %2, i64 noundef %3) #10
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.d = call ptr @_mi_theap_malloc_zero_ex(ptr noundef %0, i64 noundef %i.c, i1 noundef zeroext %4, i64 noundef %2, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.g = add nsw i64 %2, -1
  %i.h = add i64 %i.g, %i.f
  %i.i = call ptr @_mi_theap_malloc_zero(ptr noundef %0, i64 noundef range(i64 -1, -9223372036854710273) %i.h, i1 noundef zeroext %4, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ %i.i, %bb.e ]  ; 3 uses
  %.not44 = icmp eq ptr %5, null
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !12
  store ptr %i.k, ptr %5, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = add i64 %2, -1
  %i.m = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.n = add i64 %3, %i.m
  %i.o = and i64 %i.n, %i.l                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = sub i64 %2, %i.o
  %i.r = select i1 %i.p, i64 0, i64 %i.q          ; 2 uses
  %i.s = add i64 %i.r, %i.m
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %.not45 = icmp eq ptr %.0, %i.t
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.v = atomicrmw or ptr %i.u, i64 2 monotonic, align 8 ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.x = add i64 %i.r, %1
  call void @_mi_padding_shrink(ptr noundef %i.w, ptr noundef nonnull %.0, i64 noundef %i.x) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.d, %bb.c
  %.038 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.038
}

declare i64 @mi_good_size(i64 noundef) local_unnamed_addr #4

declare ptr @_mi_theap_malloc_zero(ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @_mi_theap_malloc_zero_ex(ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_mi_padding_shrink(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: cold
declare ptr @_mi_heap_theap_get_or_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_theap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %or.cond73 = icmp eq i64 %i.b, 1
  br i1 %or.cond73, label %bb.b, label %mi_alignment_is_valid.exit.thread, !prof !8

mi_alignment_is_valid.exit.thread:                ; preds = %bb.a
  tail call fastcc void @mi_error_bad_alignment(i64 noundef %2, i64 noundef %3, i64 noundef %4) #9
  br label %mi_theap_malloc_zero_aligned_at.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %3, 9
  %i.d = icmp eq i64 %4, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_mi_theap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5) #10
  br label %mi_theap_malloc_zero_aligned_at.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %2, 1025
  %i.h = icmp ule i64 %3, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %.thread.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw nsw i64 %2, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %.not.i60 = icmp eq ptr %i.p, null
  br i1 %.not.i60, label %.thread.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %3, -1
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = add i64 %4, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not40.i = icmp eq i64 %i.t, 0
  br i1 %.not40.i, label %bb.h, label %.thread.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef %2, i1 noundef zeroext %5) #10
  br label %mi_theap_malloc_zero_aligned_at.exit

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e
  %i.v = tail call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef null) #11
  br label %mi_theap_malloc_zero_aligned_at.exit

bb.i:                                             ; preds = %bb.d
  %i.w = tail call i64 @mi_usable_size(ptr noundef nonnull %1) #10 ; 4 uses
  %.not = icmp ugt i64 %2, %i.w
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = lshr i64 %i.w, 1
  %i.y = sub nuw i64 %i.w, %i.x
  %.not57 = icmp ult i64 %2, %i.y
  br i1 %.not57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = add i64 %4, %i.z
  %i.ab = add i64 %3, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %mi_theap_malloc_zero_aligned_at.exit, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ae = icmp ult i64 %2, 1025
  %i.af = icmp ule i64 %3, %2
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %bb.m, label %.thread.i64, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ah = add nuw nsw i64 %2, 7
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not.i65 = icmp eq ptr %i.an, null
  br i1 %.not.i65, label %.thread.i64, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.ao = add i64 %3, -1
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %4, %i.ap
  %i.ar = and i64 %i.aq, %i.ao
  %.not40.i66 = icmp eq i64 %i.ar, 0
  br i1 %.not40.i66, label %bb.o, label %.thread.i64, !prof !9

bb.o:                                             ; preds = %bb.n
  store ptr %i.al, ptr %i.a, align 8, !tbaa !12
  %i.as = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef %2, i1 noundef zeroext false) #10
  br label %mi_theap_malloc_zero_aligned_at.exit67

.thread.i64:                                      ; preds = %bb.n, %bb.m, %bb.l
  %i.at = call fastcc ptr @mi_theap_malloc_zero_aligned_at_generic(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false, ptr noundef nonnull %i.a) #11
  br label %mi_theap_malloc_zero_aligned_at.exit67

mi_theap_malloc_zero_aligned_at.exit67:           ; preds = %bb.o, %.thread.i64
  %.3.i63 = phi ptr [ %i.as, %bb.o ], [ %i.at, %.thread.i64 ] ; 6 uses
  %.not58 = icmp eq ptr %.3.i63, null
  br i1 %.not58, label %bb.v, label %bb.p

bb.p:                                             ; preds = %mi_theap_malloc_zero_aligned_at.exit67
  %i.au = call i64 @llvm.umin.i64(i64 %2, i64 %i.w) ; 4 uses
  %i.av = call i64 @llvm.usub.sat.i64(i64 %i.au, i64 8) ; 3 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ax = call i64 @_mi_page_usable_size(ptr noundef %i.aw, ptr noundef nonnull %.3.i63) #10 ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %i.av
  %or.cond59 = select i1 %5, i1 %i.ay, i1 false
  br i1 %or.cond59, label %bb.q, label %_mi_memzero.exit

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.3.i63, i64 %i.av ; 2 uses
  %i.ba = sub nuw i64 %i.ax, %i.av                ; 3 uses
  %i.bb = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !25
  %.not.i.i = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.bc = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.az, i64 %i.ba) #12, !srcloc !26 ; 0 uses
  br label %_mi_memzero.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ba, i1 false)
  br label %_mi_memzero.exit

_mi_memzero.exit:                                 ; preds = %bb.s, %bb.r, %bb.p
  %i.bd = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !25
  %.not.i68 = icmp ugt i64 %i.au, %i.bd
  br i1 %.not.i68, label %bb.u, label %bb.t, !prof !22

bb.t:                                             ; preds = %_mi_memzero.exit
  %i.be = call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.3.i63, i64 %i.au, ptr nonnull %1) #12, !srcloc !27 ; 0 uses
  br label %_mi_memcpy.exit

bb.u:                                             ; preds = %_mi_memzero.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3.i63, ptr nonnull align 1 %1, i64 %i.au, i1 false)
  br label %_mi_memcpy.exit

_mi_memcpy.exit:                                  ; preds = %bb.t, %bb.u
  call void @mi_free(ptr noundef nonnull %1) #10
  br label %bb.v

bb.v:                                             ; preds = %_mi_memcpy.exit, %mi_theap_malloc_zero_aligned_at.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %mi_theap_malloc_zero_aligned_at.exit

mi_theap_malloc_zero_aligned_at.exit:             ; preds = %.thread.i, %bb.h, %bb.v, %bb.k, %bb.c, %mi_alignment_is_valid.exit.thread
  %.1 = phi ptr [ null, %mi_alignment_is_valid.exit.thread ], [ %i.e, %bb.c ], [ %1, %bb.k ], [ %.3.i63, %bb.v ], [ %i.u, %bb.h ], [ %i.v, %.thread.i ]
  ret ptr %.1
}

declare ptr @_mi_theap_realloc_zero(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i64 @mi_usable_size(ptr noundef) local_unnamed_addr #4

declare i64 @_mi_page_usable_size(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

attributes #0 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline nooutline nounwind optsize uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold "no-builtin-malloc" }
attributes #10 = { nounwind "no-builtin-malloc" }
attributes #11 = { "no-builtin-malloc" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind "no-builtin-malloc" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"branch_weights", i32 -2146410, i32 2146410}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS9mi_page_s", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS10mi_block_s", !10, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"_Bool", !4, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS10mi_theap_s", !10, i64 0}
!18 = !{!"p1 _ZTS9mi_heap_s", !10, i64 0}
!19 = !{!"mi_memid_s", !4, i64 0, !5, i64 16, !15, i64 20, !15, i64 21, !15, i64 22}
!20 = !{!"mi_page_s", !4, i64 0, !13, i64 8, !5, i64 16, !14, i64 20, !4, i64 22, !15, i64 23, !13, i64 24, !4, i64 32, !16, i64 40, !5, i64 48, !14, i64 52, !14, i64 54, !17, i64 56, !18, i64 64, !11, i64 72, !11, i64 80, !19, i64 88}
!21 = !{!20, !13, i64 8}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!17, !17, i64 0}
!24 = !{!20, !16, i64 40}
!25 = !{!16, !16, i64 0}
!26 = !{i64 158325}
!27 = !{i64 158075}
end_hunk_1
