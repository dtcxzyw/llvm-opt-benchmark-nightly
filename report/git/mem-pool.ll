Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/mem-pool?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu + %lu\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to format message: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mem-pool.c\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"your vsnprintf is broken (returns inconsistent lengths)\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @mem_pool_init(ptr nofree noundef captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1048552, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 24                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.c, align 8, !tbaa !17
  %i.d = icmp ugt i64 %1, -25
  br i1 %i.d, label %bb.c, label %mem_pool_alloc_block.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef 24, i64 noundef %1) #15
  unreachable

mem_pool_alloc_block.exit:                        ; preds = %bb.b
  %i.e = tail call ptr @xmalloc(i64 noundef %i.b) #16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.j, ptr %i.e, align 8, !tbaa !20
  store ptr %i.e, ptr %0, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %mem_pool_alloc_block.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @mem_pool_discard(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.012.us = phi ptr [ %i.b, %.lr.ph.split.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.b = load ptr, ptr %.012.us, align 8, !tbaa !20 ; 2 uses
  tail call void @free(ptr noundef nonnull %.012.us) #16
  %.not.us = icmp eq ptr %i.b, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.012 = phi ptr [ %i.c, %.lr.ph.split ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.012, align 8, !tbaa !20  ; 2 uses
  tail call void @free(ptr noundef nonnull %.012) #16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @mem_pool_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = and i64 %i.a, -8                         ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not19 = icmp ult i64 %i.j, %i.b
  br i1 %.not19, label %select.unfold, label %bb.g

select.unfold:                                    ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 5 uses
  %i.m = lshr i64 %i.l, 1
  %.not21 = icmp ult i64 %i.b, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %select.unfold
  %i.p = add i64 %i.b, 24                         ; 2 uses
  %i.q = add i64 %i.o, %i.p
  store i64 %i.q, ptr %i.n, align 8, !tbaa !17
  %i.r = icmp ugt i64 %i.a, -25
  br i1 %i.r, label %bb.d, label %mem_pool_alloc_block.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef 24, i64 noundef %i.b) #15
  unreachable

mem_pool_alloc_block.exit:                        ; preds = %bb.c
  %i.s = tail call ptr @xmalloc(i64 noundef %i.p) #16 ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %..i = select i1 %.not, ptr %0, ptr %i.c        ; 2 uses
  %i.w = load ptr, ptr %..i, align 8, !tbaa !20
  store ptr %i.w, ptr %i.s, align 8, !tbaa !20
  store ptr %i.s, ptr %..i, align 8, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %select.unfold
  %i.x = add i64 %i.l, 24                         ; 2 uses
  %i.y = add i64 %i.o, %i.x
  store i64 %i.y, ptr %i.n, align 8, !tbaa !17
  %i.z = icmp ugt i64 %i.l, -25
  br i1 %i.z, label %bb.f, label %mem_pool_alloc_block.exit23

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef 24, i64 noundef %i.l) #15
  unreachable

mem_pool_alloc_block.exit23:                      ; preds = %bb.e
  %i.aa = tail call ptr @xmalloc(i64 noundef %i.x) #16 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %3, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %i.ae = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !20
  store ptr %i.aa, ptr %0, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %mem_pool_alloc_block.exit, %mem_pool_alloc_block.exit23
  %i.af = phi ptr [ %3, %mem_pool_alloc_block.exit23 ], [ %2, %mem_pool_alloc_block.exit ], [ %i.g, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.aa, %mem_pool_alloc_block.exit23 ], [ %i.s, %mem_pool_alloc_block.exit ], [ %i.c, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.b
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !19
  ret ptr %i.af
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mem_pool_strfmt(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  br label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.j = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.k = call i32 @vsnprintf(ptr noundef %i.i, i64 noundef %i.j, ptr noundef %1, ptr noundef nonnull %2) #16 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %st_add.exit.i

bb.c:                                             ; preds = %.thread.i
  %i.m = call fastcc ptr @_()
  call void (ptr, ...) @die(ptr noundef %i.m, ptr noundef %1) #15
  unreachable

st_add.exit.i:                                    ; preds = %.thread.i
  %narrow.i = add nuw i32 %i.k, 1
  %i.n = zext i32 %narrow.i to i64                ; 2 uses
  %i.o = call ptr @mem_pool_alloc(ptr noundef nonnull %0, i64 noundef %i.n) ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %mem_pool_strvfmt.exit, label %bb.d

bb.d:                                             ; preds = %st_add.exit.i
  %i.q = call i32 @vsnprintf(ptr noundef %i.o, i64 noundef %i.n, ptr noundef %1, ptr noundef nonnull %3) #16
  %.not27.i = icmp eq i32 %i.q, %i.k
  br i1 %.not27.i, label %mem_pool_strvfmt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef nonnull @.str.3) #15
  unreachable

mem_pool_strvfmt.exit:                            ; preds = %st_add.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @mem_pool_calloc(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %st_mult.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.c, label %st_mult.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, i64 noundef %1, i64 noundef %2) #15
  unreachable

st_mult.exit:                                     ; preds = %bb.a, %bb.b
  %i.a = mul i64 %2, %1                           ; 2 uses
  %i.b = tail call ptr @mem_pool_alloc(ptr noundef %0, i64 noundef %i.a) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.b, i8 0, i64 %i.a, i1 false)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @mem_pool_strdup(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call ptr @mem_pool_alloc(ptr noundef %0, i64 noundef %i.b) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @mem_pool_strndup(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %1, i32 noundef 0, i64 noundef %2) #17 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = select i1 %.not, i64 %2, i64 %i.d        ; 3 uses
  %i.f = add i64 %i.e, 1
  %i.g = tail call ptr @mem_pool_alloc(ptr noundef %0, i64 noundef %i.f) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %i.e, i1 false)
  ret ptr %i.g
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @mem_pool_contains(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #7 {
bb.a:
  %.010 = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %.0, %bb.c ], [ %.010, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %.not9 = icmp ult ptr %1, %i.a
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ult ptr %1, %i.c
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0 = load ptr, ptr %.012, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mem_pool_combine(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %.pr = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %.not18 = icmp eq ptr %.pr, null                ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi ptr [ %i.b, %.preheader ], [ %i.a, %bb.b ] ; 2 uses
  %i.b = load ptr, ptr %.0, align 8, !tbaa !20    ; 2 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %.thread.sink.split, label %.preheader, !llvm.loop !26

bb.c:                                             ; preds = %bb.a
  br i1 %.not18, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %.preheader, %bb.c
  %.sink = phi ptr [ %0, %bb.c ], [ %.0, %.preheader ]
  store ptr %.pr, ptr %.sink, align 8, !tbaa !20
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !17
  store i64 0, ptr %i.c, align 8, !tbaa !17
  store ptr null, ptr %1, align 8, !tbaa !21
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
end_hunk_0
