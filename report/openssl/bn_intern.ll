Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_intern?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"crypto/bn/bn_intern.c\00", align 1
@__func__.bn_compute_wNAF = private unnamed_addr constant [16 x i8] c"bn_compute_wNAF\00", align 1
@__func__.bn_set_words = private unnamed_addr constant [13 x i8] c"bn_set_words\00", align 1

; Function Attrs: nounwind uwtable
define ptr @bn_compute_wNAF(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_zero(ptr noundef %0) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1, ptr noundef nonnull @.str, i32 noundef 31) #7 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !16
  store i64 1, ptr %2, align 8, !tbaa !9
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.d = add i32 %1, -8
  %or.cond = icmp ult i32 %i.d, -7
  br i1 %or.cond, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = shl nuw nsw i32 1, %1                    ; 7 uses
  %i.f = shl nuw nsw i32 2, %1                    ; 7 uses
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  %i.h = tail call i32 @BN_is_negative(ptr noundef %0) #7
  %.fr = freeze i32 %i.h
  %.not83 = icmp eq i32 %.fr, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @BN_num_bits(ptr noundef nonnull %0) #7
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = add nsw i64 %i.o, 1                      ; 2 uses
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 58) #7 ; 11 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !13
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.g, %i.u                       ; 2 uses
  %narrow = add nuw nsw i32 %1, 1
  %i.w = zext nneg i32 %narrow to i64             ; 4 uses
  %i.x = lshr i32 %i.g, 1                         ; 2 uses
  %i.y = sub nsw i32 0, %i.e                      ; 2 uses
  br i1 %.not83, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.h, %.critedge.thread.us
  %.070.us = phi i32 [ %26, %.critedge.thread.us ], [ %i.v, %bb.h ] ; 8 uses
  %.066.us = phi i64 [ %19, %.critedge.thread.us ], [ 0, %bb.h ] ; 5 uses
  %.not84.us = icmp eq i32 %.070.us, 0
  br i1 %.not84.us, label %15, label %.critedge.us

.critedge.us:                                     ; preds = %.split.us
  %3 = and i32 %.070.us, 1
  %.not85.us = icmp eq i32 %3, 0
  br i1 %.not85.us, label %.critedge.thread.us, label %4

4:                                                ; preds = %.critedge.us
  %5 = and i32 %.070.us, %i.e
  %.not86.us = icmp eq i32 %5, 0
  br i1 %.not86.us, label %11, label %6

6:                                                ; preds = %4
  %7 = sub nsw i32 %.070.us, %i.f
  %8 = add i64 %.066.us, %i.w
  %.not87.us = icmp ult i64 %8, %i.o
  %9 = and i32 %.070.us, %i.x
  %spec.select = select i1 %.not87.us, i32 %7, i32 %9 ; 2 uses
  %.pre = and i32 %spec.select, 1
  %10 = icmp eq i32 %.pre, 0
  br label %11

11:                                               ; preds = %6, %4
  %.pre-phi = phi i1 [ %10, %6 ], [ false, %4 ]
  %.0.us = phi i32 [ %spec.select, %6 ], [ %.070.us, %4 ] ; 5 uses
  %.not88.us = icmp sle i32 %.0.us, %i.y
  %.not89.us = icmp sge i32 %.0.us, %i.e
  %or.cond94.not101.us = or i1 %.not88.us, %.not89.us
  %or.cond95.us = or i1 %or.cond94.not101.us, %.pre-phi
  br i1 %or.cond95.us, label %.thread.sink.split, label %12

12:                                               ; preds = %11
  %13 = sub nsw i32 %.070.us, %.0.us              ; 4 uses
  %.not91.us = icmp eq i32 %13, 0
  br i1 %.not91.us, label %.critedge.thread.us, label %14

14:                                               ; preds = %12
  %.not92.us = icmp eq i32 %13, %i.f
  %.not93.us = icmp eq i32 %13, %i.e
  %or.cond96.us = select i1 %.not92.us, i1 true, i1 %.not93.us
  br i1 %or.cond96.us, label %.critedge.thread.us, label %.thread.sink.split

15:                                               ; preds = %.split.us
  %16 = add i64 %.066.us, %i.w
  %17 = icmp ult i64 %16, %i.o
  br i1 %17, label %.critedge.thread.us, label %.split110.us

.critedge.thread.us:                              ; preds = %15, %14, %12, %.critedge.us
  %.171.us = phi i32 [ %.070.us, %.critedge.us ], [ %13, %14 ], [ 0, %12 ], [ 0, %15 ]
  %.1.us = phi i32 [ 0, %.critedge.us ], [ %.0.us, %14 ], [ %.0.us, %12 ], [ 0, %15 ]
  %18 = trunc nsw i32 %.1.us to i8
  %19 = add i64 %.066.us, 1                       ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.q, i64 %.066.us
  store i8 %18, ptr %20, align 1, !tbaa !16
  %21 = ashr i32 %.171.us, 1
  %22 = trunc i64 %19 to i32
  %23 = add i32 %1, %22
  %24 = tail call i32 @BN_is_bit_set(ptr noundef nonnull %0, i32 noundef %23) #7
  %25 = shl nsw i32 %24, %1
  %26 = add nsw i32 %25, %21                      ; 2 uses
  %27 = icmp sgt i32 %26, %i.f
  br i1 %27, label %.thread.sink.split, label %.split.us

.split:                                           ; preds = %bb.h, %.critedge.thread
  %.070 = phi i32 [ %i.ap, %.critedge.thread ], [ %i.v, %bb.h ] ; 8 uses
  %.066 = phi i64 [ %i.ai, %.critedge.thread ], [ 0, %bb.h ] ; 5 uses
  %.not84 = icmp eq i32 %.070, 0
  br i1 %.not84, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.split
  %i.z = add i64 %.066, %i.w
  %i.aa = icmp ult i64 %i.z, %i.o
  br i1 %i.aa, label %.critedge.thread, label %.split110.us

.critedge:                                        ; preds = %.split
  %i.ab = and i32 %.070, 1
  %.not85 = icmp eq i32 %i.ab, 0
  br i1 %.not85, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ac = and i32 %.070, %i.e
  %.not86 = icmp eq i32 %i.ac, 0
  br i1 %.not86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = sub nsw i32 %.070, %i.f
  %i.ae = add i64 %.066, %i.w
  %.not87 = icmp ult i64 %i.ae, %i.o
  %i.af = and i32 %.070, %i.x
  %spec.select113 = select i1 %.not87, i32 %i.ad, i32 %i.af ; 2 uses
  %.pre125 = and i32 %spec.select113, 1
  %i.ag = icmp eq i32 %.pre125, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi126 = phi i1 [ %i.ag, %bb.k ], [ false, %bb.j ]
  %.0 = phi i32 [ %spec.select113, %bb.k ], [ %.070, %bb.j ] ; 5 uses
  %.not88 = icmp sle i32 %.0, %i.y
  %.not89 = icmp sge i32 %.0, %i.e
  %or.cond94.not101 = or i1 %.not88, %.not89
  %or.cond95 = or i1 %or.cond94.not101, %.pre-phi126
  br i1 %or.cond95, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = sub nsw i32 %.070, %.0                  ; 4 uses
  %.not91 = icmp eq i32 %i.ah, 0
  br i1 %.not91, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not92 = icmp eq i32 %i.ah, %i.f
  %.not93 = icmp eq i32 %i.ah, %i.e
  %or.cond96 = select i1 %.not92, i1 true, i1 %.not93
  br i1 %or.cond96, label %.critedge.thread, label %.thread.sink.split

.critedge.thread:                                 ; preds = %bb.i, %bb.m, %bb.n, %.critedge
  %.171 = phi i32 [ %.070, %.critedge ], [ %i.ah, %bb.n ], [ 0, %bb.m ], [ 0, %bb.i ]
  %.1 = phi i32 [ 0, %.critedge ], [ %.0, %bb.n ], [ %.0, %bb.m ], [ 0, %bb.i ]
  %28 = trunc i32 %.1 to i8
  %29 = sub i8 0, %28
  %i.ai = add i64 %.066, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.066
  store i8 %29, ptr %i.aj, align 1, !tbaa !16
  %i.ak = ashr i32 %.171, 1
  %i.al = trunc i64 %i.ai to i32
  %i.am = add i32 %1, %i.al
  %i.an = tail call i32 @BN_is_bit_set(ptr noundef nonnull %0, i32 noundef %i.am) #7
  %i.ao = shl nsw i32 %i.an, %1
  %i.ap = add nsw i32 %i.ao, %i.ak                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.f
  br i1 %i.aq, label %.thread.sink.split, label %.split

.split110.us:                                     ; preds = %bb.i, %15
  %.us-phi = phi i64 [ %.066.us, %15 ], [ %.066, %bb.i ] ; 2 uses
  %i.ar = icmp ugt i64 %.us-phi, %i.p
  br i1 %i.ar, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %.split110.us
  store i64 %.us-phi, ptr %2, align 8, !tbaa !9
  br label %bb.p

.thread.sink.split:                               ; preds = %.critedge.thread, %bb.n, %bb.l, %.critedge.thread.us, %14, %11, %.split110.us, %bb.e, %bb.f, %bb.d
  %.sink = phi i32 [ 53, %bb.f ], [ 109, %14 ], [ 53, %bb.e ], [ 126, %.split110.us ], [ 41, %bb.d ], [ 97, %11 ], [ 120, %.critedge.thread.us ], [ 109, %bb.n ], [ 120, %.critedge.thread ], [ 97, %bb.l ]
  %.069.ph = phi ptr [ null, %bb.f ], [ %i.q, %.critedge.thread.us ], [ null, %bb.e ], [ %i.q, %.split110.us ], [ null, %bb.d ], [ %i.q, %11 ], [ %i.q, %14 ], [ %i.q, %bb.l ], [ %i.q, %bb.n ], [ %i.q, %.critedge.thread ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.bn_compute_wNAF) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786691, ptr noundef null) #7
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g, %bb.b
  %.069 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %.069.ph, %.thread.sink.split ]
  tail call void @CRYPTO_free(ptr noundef %.069, ptr noundef nonnull @.str, i32 noundef 133) #7
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.c
  %.072 = phi ptr [ null, %.thread ], [ %i.b, %bb.c ], [ %i.q, %bb.o ]
  ret ptr %.072
}

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_bit_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @bn_get_top(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @bn_get_dmax(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @bn_set_all_zero(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = sext i32 %i.b to i64
  %i.h = shl nsw i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.h
  %i.i = xor i32 %i.b, -1
  %i.j = add i32 %i.d, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.m, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @bn_copy_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp sgt i32 %i.b, %2
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = shl nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.e, i1 false)
  %i.f = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %i.f, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @bn_get_words(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @bn_set_static_words(ptr noundef initializes((0, 20)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %i.d, align 4, !tbaa !18
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  ret void
}

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @bn_set_words(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %2) #7
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 187, ptr noundef nonnull @__func__.bn_set_words) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524291, ptr noundef null) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  %i.d = sext i32 %2 to i64
  %i.e = shl nsw i64 %i.d, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %1, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.f, align 8, !tbaa !14
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 long", !10, i64 0}
!12 = !{!"bignum_st", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !5, i64 8}
!15 = !{!12, !5, i64 12}
!16 = !{!4, !4, i64 0}
!17 = !{!12, !5, i64 16}
!18 = !{!12, !5, i64 20}
end_hunk_0
