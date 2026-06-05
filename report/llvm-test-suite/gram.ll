inline.NumInlined: 110
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"declare expects argument, line %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"declare does not expect argument, line %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"duplicate pass '%s' line %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown pass '%s' line %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" _synthetic\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0 Start\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1 Start\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"<EOF> \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"string(\22%s\22) \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"regex(\22%s\22) \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"code(\22%s\22) \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"token(\22%s\22) \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"unknown token kind\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"$none\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"$left\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"$right\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"$unary_left\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"$unary_right\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"$binary_left\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"$binary_right\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"$noassoc\00", align 1
@assoc_strings = dso_local local_unnamed_addr global [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.15 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.22 }], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"SPECULATIVE_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"FINAL_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\09: \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"\09| \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"op %d \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"rule %d \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@verbose_level = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"eq %d %d \00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"diff state (%d %d) \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"diff rule \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"][ \00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"reduces_to %d %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"%d productions %d terminals %d states %d declarations\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"encountered an escaped NULL while processing '%s'\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"empty string after unescape '%s'\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"STATE %d (%d ITEMS)%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" ACCEPT\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c" : %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@action_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62], align 16
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"reduce/reduce\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"shift/reduce\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\09%s: \00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"REDUCE\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"\09%s conflict \00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"duplicate production '%s'\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"unresolved identifier: '%s'\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"circular regex production '%s'\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"final and/or multi-rule code not permitted in regex productions '%s'\00", align 1
@.str.69 = private unnamed_addr constant [62 x i8] c"regex production '%s' cannot invoke non-regex production '%s'\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"code not permitted in rule %d of regex productions '%s'\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"regex production '%s' cannot include scanners or tokens\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"unable to resolve circular regex production: '%s'\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"unresolved declaration '%s'\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"shared tokenize subtrees\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"number of rules in default action != 1\00", align 1
@str = private unnamed_addr constant [13 x i8] c"PRODUCTIONS\0A\00", align 1
@str.1 = private unnamed_addr constant [11 x i8] c"TERMINALS\0A\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"\09;\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"  GOTO\00", align 1
@str.4 = private unnamed_addr constant [9 x i8] c"  ACTION\00", align 1
@str.5 = private unnamed_addr constant [49 x i8] c"  CONFLICT (before precedence and associativity)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @new_production(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %.not24.i = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28 ; 5 uses
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.e = ashr exact i64 %sext, 32
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.i, %i.b
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.k = tail call i32 @strncmp(ptr noundef %i.j, ptr noundef nonnull readonly %1, i64 noundef %i.e) #24
  %.not15.not.i = icmp eq i32 %i.k, 0
  br i1 %.not15.not.i, label %lookup_production.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !llvm.loop !37

.loopexit:                                        ; preds = %.thread.i, %bb.a
  %calloc = tail call dereferenceable_or_null(232) ptr @calloc(i64 1, i64 232) ; 7 uses
  %.not31 = icmp eq ptr %.pre, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !28
  %i.n = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !8
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p
  store ptr %calloc, ptr %i.q, align 8, !tbaa !29
  br label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = icmp eq ptr %.pre, %i.r
  %i.t = load i32, ptr %i.c, align 8, !tbaa !8    ; 6 uses
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ult i32 %i.t, 3
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %i.t, 1
  store i32 %i.v, ptr %i.c, align 8, !tbaa !8
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.w
  store ptr %calloc, ptr %i.x, align 8, !tbaa !29
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.y = and i32 %i.t, 7
  %.not32 = icmp eq i32 %i.y, 0
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add i32 %i.t, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !8
  %i.aa = zext i32 %i.t to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.aa
  store ptr %calloc, ptr %i.ab, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.h
  tail call void @vec_add_internal(ptr noundef nonnull %i.c, ptr noundef nonnull %calloc) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.d
  store ptr %1, ptr %calloc, align 8, !tbaa !36
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !30
  br label %lookup_production.exit

lookup_production.exit:                           ; preds = %bb.c, %bb.k
  %.0 = phi ptr [ %calloc, %bb.k ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lookup_production(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = sext i32 %2 to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not = icmp eq i32 %i.i, %2
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.k = tail call i32 @strncmp(ptr noundef %i.j, ptr noundef %1, i64 noundef %i.e) #24
  %.not15.not = icmp eq i32 %i.k, 0
  br i1 %.not15.not, label %._crit_edge, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.c, %.thread, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.thread ], [ %i.g, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @vec_add_internal(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @new_rule(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %calloc = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !39
  %calloc.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 72
  store ptr %calloc.i, ptr %i.b, align 8, !tbaa !45
  store i32 3, ptr %calloc.i, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %calloc, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 152
  store i32 %i.e, ptr %i.f, align 8, !tbaa !50
  ret ptr %calloc
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @new_elem_nterm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %0, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !48
  ret ptr %calloc.i
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @escape_string_for_regex(ptr noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = shl i64 %i.a, 1
  %i.c = add i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #26 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.010 = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.d ] ; 4 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.d ]    ; 3 uses
  %i.e = load i8, ptr %.0, align 1, !tbaa !51     ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.e
    i8 40, label %bb.c
    i8 41, label %bb.c
    i8 91, label %bb.c
    i8 93, label %bb.c
    i8 45, label %bb.c
    i8 94, label %bb.c
    i8 42, label %bb.c
    i8 63, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 1
  store i8 92, ptr %.010, align 1, !tbaa !51
  %.pre = load i8, ptr %.0, align 1, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi i8 [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %.1 = phi ptr [ %.010, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.g, ptr %.1, align 1, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !52

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.010, align 1, !tbaa !51
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = getelementptr inbounds i8, ptr %2, i64 -1
  %i.c = tail call fastcc ptr @new_term_string(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %3) ; 2 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !51
  %i.e = icmp eq i8 %i.d, 34
  %i.f = zext i1 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  store i32 %i.f, ptr %i.h, align 8, !tbaa !53
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !51   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.094.i = phi ptr [ %i.k, %bb.a ], [ %.296.i, %bb.af ] ; 28 uses
  %.0.i = phi ptr [ %i.k, %bb.a ], [ %i.cm, %bb.af ] ; 15 uses
  %i.l = load i8, ptr %.0.i, align 1, !tbaa !51   ; 2 uses
  switch i8 %i.l, label %bb.ad [
    i8 0, label %bb.ag
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 13 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  switch i8 %i.n, label %bb.ac [
    i8 98, label %bb.d
    i8 102, label %bb.e
    i8 110, label %bb.f
    i8 114, label %bb.g
    i8 116, label %bb.h
    i8 118, label %bb.i
    i8 97, label %bb.j
    i8 99, label %bb.k
    i8 34, label %bb.l
    i8 39, label %bb.n
    i8 120, label %bb.p
    i8 100, label %bb.r
    i8 48, label %bb.z
    i8 49, label %bb.z
    i8 50, label %bb.z
    i8 51, label %bb.z
    i8 52, label %bb.z
    i8 53, label %bb.z
    i8 54, label %bb.z
    i8 55, label %bb.z
  ]

bb.d:                                             ; preds = %bb.c
  store i8 8, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  store i8 12, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.f:                                             ; preds = %bb.c
  store i8 10, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.g:                                             ; preds = %bb.c
  store i8 13, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.h:                                             ; preds = %bb.c
  store i8 9, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.i:                                             ; preds = %bb.c
  store i8 11, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.j:                                             ; preds = %bb.c
  store i8 7, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.k:                                             ; preds = %bb.c
  store i8 0, ptr %.094.i, align 1, !tbaa !51
  br label %unescape_term_string.exit

bb.l:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.i, align 8, !tbaa !53
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  store i8 34, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.n:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.i, align 8, !tbaa !53
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  store i8 39, ptr %.094.i, align 1, !tbaa !51
  br label %bb.ae

bb.p:                                             ; preds = %bb.c
  %i.s = tail call ptr @__ctype_b_loc() #27
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !51
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !58
  %i.z = and i16 %i.y, 4096
  %.not119.i = icmp eq i16 %i.z, 0
  br i1 %.not119.i, label %bb.af, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !51
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !58
  %i.af = and i16 %i.ae, 4096
  %.not120.i = icmp eq i16 %i.af, 0
  %i.ag = select i1 %.not120.i, i64 1, i64 2
  br label %.thread148.i

bb.r:                                             ; preds = %bb.c
  %i.ah = tail call ptr @__ctype_b_loc() #27
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !51  ; 3 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !58
  %i.ao = and i16 %i.an, 2048
  %.not116.i = icmp eq i16 %i.ao, 0
  br i1 %.not116.i, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !51  ; 3 uses
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !58
  %i.au = and i16 %i.at, 2048
  %.not117.i = icmp eq i16 %i.au, 0
  br i1 %.not117.i, label %.thread148.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !51  ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !58
  %i.ba = and i16 %i.az, 2048
  %.not118.i = icmp eq i16 %i.ba, 0
  br i1 %.not118.i, label %.thread148.i, label %bb.u

end_hunk_0
begin_hunk_1_@new_term_string:bb.a
bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq ptr %i.af, %i.ag
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !66 ; 6 uses
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = icmp ult i32 %i.am, 3
  br i1 %i.an, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.ad, align 8, !tbaa !66
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ap
  store ptr %calloc.i.i, ptr %i.aq, align 8, !tbaa !67
  br label %new_elem_term.exit

bb.n:                                             ; preds = %bb.k
  %i.ar = and i32 %i.am, 7
  %.not24.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add i32 %i.am, 1
  store i32 %i.as, ptr %i.ad, align 8, !tbaa !66
  %i.at = zext i32 %i.am to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.at
  store ptr %calloc.i.i, ptr %i.au, align 8, !tbaa !67
  br label %new_elem_term.exit

bb.p:                                             ; preds = %bb.n, %bb.l
  tail call void @vec_add_internal(ptr noundef nonnull %i.ad, ptr noundef nonnull %calloc.i.i) #25
  br label %new_elem_term.exit

new_elem_term.exit:                               ; preds = %bb.j, %bb.m, %bb.o, %bb.p
  ret ptr %calloc.i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_ident(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 9 uses
  store i32 2, ptr %calloc.i, align 8, !tbaa !46
  %i.a = tail call ptr @dup_str(ptr noundef %0, ptr noundef %1) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !51
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i32 %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !48
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 4 uses
  %.not29 = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  br i1 %.not29, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8, !tbaa !65
  %i.k = load i32, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !66
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  store ptr %calloc.i, ptr %i.n, align 8, !tbaa !67
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %i.i, %i.j
  %i.p = load i32, ptr %i.g, align 8, !tbaa !66   ; 6 uses
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw nsw i32 %i.p, 1
  store i32 %i.r, ptr %i.g, align 8, !tbaa !66
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s
  store ptr %calloc.i, ptr %i.t, align 8, !tbaa !67
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.u = and i32 %i.p, 7
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i32 %i.p, 1
  store i32 %i.v, ptr %i.g, align 8, !tbaa !66
  %i.w = zext i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.w
  store ptr %calloc.i, ptr %i.x, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  tail call void @vec_add_internal(ptr noundef nonnull %i.g, ptr noundef nonnull %calloc.i) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.h, %bb.i, %bb.a
  ret ptr %calloc.i
}

declare ptr @dup_str(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @new_token(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48) ; 7 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = add nsw i64 %i.c, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %1, i64 %i.c, i1 false)
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.g, align 1, !tbaa !51
  %i.h = trunc i64 %i.c to i32
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i32 %i.h, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 4 uses
  %.not = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %i.k, align 8, !tbaa !62
  %i.n = load i32, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.j, align 8, !tbaa !63
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p
  store ptr %calloc.i, ptr %i.q, align 8, !tbaa !64
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %i.l, %i.m
  %i.s = load i32, ptr %i.j, align 8, !tbaa !63   ; 6 uses
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw nsw i32 %i.s, 1
  store i32 %i.u, ptr %i.j, align 8, !tbaa !63
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  store ptr %calloc.i, ptr %i.w, align 8, !tbaa !64
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %i.s, 7
  %.not32 = icmp eq i32 %i.x, 0
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add i32 %i.s, 1
  store i32 %i.y, ptr %i.j, align 8, !tbaa !63
  %i.z = zext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.z
  store ptr %calloc.i, ptr %i.aa, align 8, !tbaa !64
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  tail call void @vec_add_internal(ptr noundef nonnull %i.j, ptr noundef nonnull %calloc.i) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  store i32 3, ptr %calloc.i, align 8, !tbaa !53
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @new_term_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  store i32 2, ptr %i.c, align 8, !tbaa !53
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @dup_elem(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !48
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @add_global_code(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i32, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %i.g = and i32 %i.f, 4
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.e, 4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.b, i64 noundef %i.j) #28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.b ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.l = tail call ptr @dup_str(ptr noundef %1, ptr noundef %2) #25
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.p ; 2 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %3, ptr %i.r, align 8, !tbaa !71
  %i.s = add nsw i32 %i.o, 1
  store i32 %i.s, ptr %i.n, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @new_declaration(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 4 uses
  %.not = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.f, align 8, !tbaa !77
  %i.i = add i32 %i.d, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !75
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  store ptr %i.a, ptr %i.k, align 8, !tbaa !78
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %i.g, %i.h
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i32 %i.d, 3
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw nsw i32 %i.d, 1
  store i32 %i.n, ptr %i.c, align 8, !tbaa !75
  %i.o = zext nneg i32 %i.d to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  store ptr %i.a, ptr %i.p, align 8, !tbaa !78
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = and i32 %i.d, 7
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %i.d, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !75
  %i.s = zext i32 %i.d to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.s
  store ptr %i.a, ptr %i.t, align 8, !tbaa !78
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  tail call void @vec_add_internal(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_declaration(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %bb.i [
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 0, label %bb.g
    i32 7, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 1, ptr %i.b, align 8, !tbaa !80
  br label %new_declaration.exit

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 1, ptr %i.c, align 4, !tbaa !81
  br label %new_declaration.exit

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 1, ptr %i.d, align 4, !tbaa !82
  br label %new_declaration.exit

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.e, align 4, !tbaa !82
  br label %new_declaration.exit

bb.g:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 1, ptr %i.f, align 8, !tbaa !83
  br label %new_declaration.exit

bb.h:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 1, ptr %i.g, align 8, !tbaa !84
  br label %new_declaration.exit

bb.i:                                             ; preds = %bb.b
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str, i32 noundef %4) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  switch i32 %3, label %bb.m [
    i32 6, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.h = tail call ptr @dup_str(ptr noundef %1, ptr noundef %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.h, ptr %i.i, align 8, !tbaa !85
  br label %new_declaration.exit

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.1, i32 noundef %4) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 4 uses
  store i32 2, ptr %calloc.i.i, align 8, !tbaa !46
  %i.j = tail call ptr @dup_str(ptr noundef %1, ptr noundef %2) #25 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !51
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #24
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !51
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 7 uses
  store ptr %calloc.i.i, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %3, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.v, ptr %i.t, align 8, !tbaa !77
  %i.w = add i32 %i.r, 1
  store i32 %i.w, ptr %i.q, align 8, !tbaa !75
  %i.x = zext i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.o, ptr %i.y, align 8, !tbaa !78
  br label %new_declaration.exit

bb.o:                                             ; preds = %bb.m
  %i.z = icmp eq ptr %i.u, %i.v
  br i1 %i.z, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aa = icmp ult i32 %i.r, 3
  br i1 %i.aa, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ab = add nuw nsw i32 %i.r, 1
  store i32 %i.ab, ptr %i.q, align 8, !tbaa !75
  %i.ac = zext nneg i32 %i.r to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  store ptr %i.o, ptr %i.ad, align 8, !tbaa !78
  br label %new_declaration.exit

bb.r:                                             ; preds = %bb.o
  %i.ae = and i32 %i.r, 7
  %.not23.i = icmp eq i32 %i.ae, 0
  br i1 %.not23.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = add i32 %i.r, 1
  store i32 %i.af, ptr %i.q, align 8, !tbaa !75
  %i.ag = zext i32 %i.r to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ag
  store ptr %i.o, ptr %i.ah, align 8, !tbaa !78
  br label %new_declaration.exit

bb.t:                                             ; preds = %bb.r, %bb.p
  tail call void @vec_add_internal(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o) #25
  br label %new_declaration.exit

new_declaration.exit:                             ; preds = %bb.t, %bb.s, %bb.q, %bb.n, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

declare void @d_fail(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @find_pass(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %.not23 = icmp eq i8 %i.a, 0
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #27
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.j, %bb.c ]
  %.01824 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = and i16 %i.g, 8192
  %.not21 = icmp eq i16 %i.h, 0
  br i1 %.not21, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01824, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !86

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.018.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %bb.c ], [ %.01824, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %.018.lcssa to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %sext = shl i64 %i.m, 32
  %i.s = ashr exact i64 %sext, 32
  %wide.trip.count = zext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph28, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull %.018.lcssa, i64 noundef %i.s) #24
  %.not22 = icmp eq i32 %i.z, 0
  br i1 %.not22, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.e, %bb.f, %.critedge
  %.0 = phi ptr [ null, %.critedge ], [ null, %bb.f ], [ %i.u, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @add_pass(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %.not23.i = icmp eq i8 %i.a, 0
  br i1 %.not23.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #27
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.d = phi i8 [ %i.a, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.01824.i = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = and i16 %i.g, 8192
  %.not21.i = icmp eq i16 %i.h, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01824.i, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.018.lcssa.i = phi ptr [ %1, %bb.a ], [ %.01824.i, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = ptrtoint ptr %.018.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %sext.i = shl i64 %i.m, 32
  %i.s = ashr exact i64 %sext.i, 32
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph28.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull %.018.lcssa.i, i64 noundef %i.s) #24
  %.not22.i = icmp eq i32 %i.z, 0
  br i1 %.not22.i, label %find_pass.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d, !llvm.loop !94

find_pass.exit:                                   ; preds = %bb.e
  %i.aa = tail call ptr @dup_str(ptr noundef nonnull %1, ptr noundef %2) #25
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.2, ptr noundef %i.aa, i32 noundef %4) #25
  br label %bb.n

.loopexit:                                        ; preds = %bb.f, %.critedge.i
  %i.ab = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #26 ; 8 uses
  %i.ac = tail call ptr @dup_str(ptr noundef nonnull %1, ptr noundef %2) #25
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !93
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.k, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %3, ptr %i.ah, align 4, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !96 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.aj, ptr %i.al, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88 ; 4 uses
  %.not33 = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !88
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.o, align 8, !tbaa !87
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !89
  br label %bb.n

bb.h:                                             ; preds = %.loopexit
  %i.at = icmp eq ptr %i.an, %i.ao
  %i.au = load i32, ptr %i.o, align 8, !tbaa !87  ; 6 uses
  br i1 %i.at, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i32 %i.au, 1
  store i32 %i.aw, ptr %i.o, align 8, !tbaa !87
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.ab, ptr %i.ay, align 8, !tbaa !89
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.az = and i32 %i.au, 7
  %.not34 = icmp eq i32 %i.az, 0
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = add i32 %i.au, 1
  store i32 %i.ba, ptr %i.o, align 8, !tbaa !87
  %i.bb = zext i32 %i.au to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bb
  store ptr %i.ab, ptr %i.bc, align 8, !tbaa !89
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.k
  tail call void @vec_add_internal(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ab) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %find_pass.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_pass_code(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !51      ; 2 uses
  %.not23.i = icmp eq i8 %i.a, 0
  br i1 %.not23.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #27
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.d = phi i8 [ %i.a, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.01824.i = phi ptr [ %2, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !58
  %i.h = and i16 %i.g, 8192
  %.not21.i = icmp eq i16 %i.h, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.01824.i, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.018.lcssa.i = phi ptr [ %2, %bb.a ], [ %.01824.i, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %3 to i64
  %i.l = ptrtoint ptr %.018.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not32.i = icmp eq i32 %i.p, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %sext.i = shl i64 %i.m, 32
  %i.s = ashr exact i64 %sext.i, 32
  %wide.trip.count.i = zext i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph28.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = icmp eq i32 %i.w, %i.n
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.z = tail call i32 @strncmp(ptr noundef %i.y, ptr noundef nonnull %.018.lcssa.i, i64 noundef %i.s) #24
  %.not22.i = icmp eq i32 %i.z, 0
  br i1 %.not22.i, label %find_pass.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d, !llvm.loop !94

.loopexit:                                        ; preds = %bb.f, %.critedge.i
  %i.aa = tail call ptr @dup_str(ptr noundef nonnull %2, ptr noundef %3) #25
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.3, ptr noundef %i.aa, i32 noundef %6) #25
  br label %find_pass.exit

find_pass.exit:                                   ; preds = %bb.e, %.loopexit
  %.0.i36 = phi ptr [ null, %.loopexit ], [ %i.u, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i36, i64 16 ; 4 uses
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %.not3140 = icmp ugt i32 %i.ad, %i.ae
  br i1 %.not3140, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %find_pass.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %i.ah = phi i32 [ %i.ae, %.lr.ph ], [ %i.aw, %bb.o ] ; 3 uses
  %i.ai = phi i32 [ %i.ad, %.lr.ph ], [ %i.ax, %bb.o ] ; 8 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !99 ; 4 uses
  %.not32 = icmp eq ptr %i.aj, null
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !99
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.ab, align 8, !tbaa !98
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.al
  store ptr null, ptr %i.am, align 8, !tbaa !100
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.an = icmp eq ptr %i.aj, %i.ag
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i32 %i.ai, 3
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i32 %i.ai, 1                ; 2 uses
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !98
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aq
  store ptr null, ptr %i.ar, align 8, !tbaa !100
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.as = and i32 %i.ai, 7
  %.not33 = icmp eq i32 %i.as, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ab, align 8, !tbaa !98
  %i.au = zext i32 %i.ai to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.au
  store ptr null, ptr %i.av, align 8, !tbaa !100
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.l
  tail call void @vec_add_internal(ptr noundef nonnull %i.ab, ptr noundef null) #25
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !98
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.h
  %i.aw = phi i32 [ %.pre42, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.k ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ax = phi i32 [ %.pre, %bb.n ], [ %i.at, %bb.m ], [ %i.ap, %bb.k ], [ %i.ak, %bb.h ] ; 2 uses
  %.not31 = icmp ugt i32 %i.ax, %i.aw
  br i1 %.not31, label %._crit_edge, label %bb.g, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.o, %find_pass.exit
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !97
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !100
  %i.be = tail call ptr @dup_str(ptr noundef %4, ptr noundef %5) #25
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !99
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !97
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 2 uses
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !70
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %7, ptr %i.bk, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_internal_production(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ @.str.4, %bb.a ] ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.d = add i64 %i.c, 20
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.b, i32 noundef %i.g) #25 ; 0 uses
  %i.i = tail call ptr @new_production(ptr noundef %0, ptr noundef nonnull %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 4 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -29
  %i.m = or disjoint i8 %i.l, 4                   ; 3 uses
  store i8 %i.m, ptr %i.j, align 4
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 1
  %i.q = and i8 %i.m, -26
  %i.r = or disjoint i8 %i.p, %i.q
  store i8 %i.r, ptr %i.j, align 4
  %i.s = load i32, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.not42 = icmp eq i32 %i.s, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %.041 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %.03240 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.i ] ; 4 uses
  %.03439 = phi ptr [ null, %.lr.ph ], [ %.135, %bb.i ] ; 2 uses
  %.not38 = icmp eq i32 %.041, 0
  %i.v = sext i32 %.03240 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.03439, ptr %i.w, align 8, !tbaa !29
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i32 %.03240, 1               ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.135 = phi ptr [ %i.x, %bb.f ], [ %i.ac, %bb.h ], [ %.03439, %bb.g ]
  %.133 = phi i32 [ %.03240, %bb.f ], [ %i.z, %bb.h ], [ %.03240, %bb.g ]
  %.1 = phi i32 [ 1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ]
  %i.ad = add nsw i32 %.133, 1                    ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %i.s
  br i1 %i.ae, label %bb.e, label %.loopexit, !llvm.loop !102

.critedge:                                        ; preds = %bb.c
  %i.af = and i8 %i.m, -26
  store i8 %i.af, ptr %i.j, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %.critedge
  ret ptr %i.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @conditional_EBNF(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = tail call ptr @new_internal_production(ptr noundef %0, ptr noundef %i.b) ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -29
  %i.g = or disjoint i8 %i.f, 8
  store i8 %i.g, ptr %i.d, align 4
  %calloc.i = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !39
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  store ptr %calloc.i.i, ptr %i.i, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %calloc.i, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 152
  store i32 %i.l, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = load i32, ptr %i.r, align 8, !tbaa !66
  %i.v = add i32 %i.u, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !65
  store i32 1, ptr %i.o, align 8, !tbaa !66
  store ptr %i.y, ptr %i.z, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.ae = add i32 %i.ad, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %calloc.i, ptr %i.ai, align 8, !tbaa !48
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %calloc.i, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 13 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !105 ; 4 uses
  %.not79 = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  br i1 %.not79, label %.thread.thread, label %bb.b

.thread.thread:                                   ; preds = %bb.a
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !105
  %i.ap = load i32, ptr %i.al, align 8, !tbaa !106 ; 2 uses
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.al, align 8, !tbaa !106
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar
  store ptr %calloc.i, ptr %i.as, align 8, !tbaa !107
  br label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.at = icmp eq ptr %i.an, %i.ao
  %i.au = load i32, ptr %i.al, align 8, !tbaa !106 ; 4 uses
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.thread.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aw = and i32 %i.au, 7
  %.not80 = icmp eq i32 %i.aw, 0
  br i1 %.not80, label %bb.e, label %.thread.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @vec_add_internal(ptr noundef nonnull %i.al, ptr noundef nonnull %calloc.i) #25
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %.not81 = icmp eq ptr %.pre, null
  br i1 %.not81, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %calloc.i83 = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %calloc.i83, i64 8
  store ptr %i.c, ptr %i.ax, align 8, !tbaa !39
  %calloc.i.i84 = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc.i83, i64 72
  store ptr %calloc.i.i84, ptr %i.ay, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i84, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %calloc.i.i84, i64 8
  store ptr %calloc.i83, ptr %i.az, align 8, !tbaa !48
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %calloc.i83, i64 152
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.bc, ptr %i.am, align 8, !tbaa !105
  %i.bd = load i32, ptr %i.al, align 8, !tbaa !106 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.al, align 8, !tbaa !106
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  store ptr %calloc.i83, ptr %i.bg, align 8, !tbaa !107
  br label %bb.k

.thread.sink.split:                               ; preds = %bb.d, %bb.c
end_hunk_1
begin_hunk_2_@plus_EBNF:bb.a
  %i.bm = add nuw nsw i32 %i.bk, 1
  store i32 %i.bm, ptr %i.bb, align 8, !tbaa !106
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  store ptr %calloc.i, ptr %i.bo, align 8, !tbaa !107
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.bp = and i32 %i.bk, 7
  %.not176 = icmp eq i32 %i.bp, 0
  br i1 %.not176, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i32 %i.bk, 1
  store i32 %i.bq, ptr %i.bb, align 8, !tbaa !106
  %i.br = zext i32 %i.bk to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  store ptr %calloc.i, ptr %i.bs, align 8, !tbaa !107
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.i
  tail call void @vec_add_internal(ptr noundef nonnull %i.bb, ptr noundef nonnull %calloc.i) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.e
  %calloc.i191 = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 8
  store ptr %i.c, ptr %i.bt, align 8, !tbaa !39
  %calloc.i.i192 = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 72
  store ptr %calloc.i.i192, ptr %i.bu, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i192, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %calloc.i.i192, i64 8
  store ptr %calloc.i191, ptr %i.bv, align 8, !tbaa !48
  %i.bw = load i32, ptr %i.k, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 152
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %calloc.i191, i64 48 ; 2 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !65
  store i32 1, ptr %i.bz, align 8, !tbaa !66
  store ptr %i.y, ptr %i.ca, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %calloc.i191, ptr %i.cb, align 8, !tbaa !48
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !105 ; 4 uses
  %.not179 = icmp eq ptr %i.cc, null
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  br i1 %.not179, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cd, ptr %i.bc, align 8, !tbaa !105
  %i.ce = load i32, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bb, align 8, !tbaa !106
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  store ptr %calloc.i191, ptr %i.ch, align 8, !tbaa !107
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.ci = icmp eq ptr %i.cc, %i.cd
  %i.cj = load i32, ptr %i.bb, align 8, !tbaa !106 ; 6 uses
  br i1 %i.ci, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp ult i32 %i.cj, 3
  br i1 %i.ck, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cl = add nuw nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.bb, align 8, !tbaa !106
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cm
  store ptr %calloc.i191, ptr %i.cn, align 8, !tbaa !107
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.co = and i32 %i.cj, 7
  %.not180 = icmp eq i32 %i.co, 0
  br i1 %.not180, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add i32 %i.cj, 1
  store i32 %i.cp, ptr %i.bb, align 8, !tbaa !106
  %i.cq = zext i32 %i.cj to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cq
  store ptr %calloc.i191, ptr %i.cr, align 8, !tbaa !107
  br label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.q
  tail call void @vec_add_internal(ptr noundef nonnull %i.bb, ptr noundef nonnull %calloc.i191) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_productions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.6) #25
  %i.b = tail call ptr @new_production(ptr noundef %0, ptr noundef %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -29
  %i.f = or disjoint i8 %i.e, 4
  store i8 %i.f, ptr %i.c, align 4
  %calloc.i = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !39
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  store ptr %calloc.i.i, ptr %i.h, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %calloc.i, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 152
  store i32 %i.k, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  %calloc.i.i47 = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i.i47, i64 8
  store ptr %calloc.i, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !65
  store i32 1, ptr %i.n, align 8, !tbaa !66
  store ptr %calloc.i.i47, ptr %i.p, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 4 uses
  %.not45 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  br i1 %.not45, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.r, align 8, !tbaa !105
  %i.u = load i32, ptr %i.q, align 8, !tbaa !106  ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.q, align 8, !tbaa !106
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  store ptr %calloc.i, ptr %i.x, align 8, !tbaa !107
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %i.s, %i.t
  %i.z = load i32, ptr %i.q, align 8, !tbaa !106  ; 6 uses
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.q, align 8, !tbaa !106
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  store ptr %calloc.i, ptr %i.ad, align 8, !tbaa !107
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ae = and i32 %i.z, 7
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add i32 %i.z, 1
  store i32 %i.af, ptr %i.q, align 8, !tbaa !106
  %i.ag = zext i32 %i.z to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ag
  store ptr %calloc.i, ptr %i.ah, align 8, !tbaa !107
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  tail call void @vec_add_internal(ptr noundef nonnull %i.q, ptr noundef nonnull %calloc.i) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  %i.ai = tail call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.7) #25
  %i.aj = tail call ptr @new_production(ptr noundef nonnull %0, ptr noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 60 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -29
  %i.an = or disjoint i8 %i.am, 4
  store i8 %i.an, ptr %i.ak, align 4
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @finish_productions(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %calloc.i = tail call dereferenceable_or_null(168) ptr @calloc(i64 1, i64 168) ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !39
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  store ptr %calloc.i.i, ptr %i.f, align 8, !tbaa !45
  store i32 3, ptr %calloc.i.i, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %calloc.i, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 152
  store i32 %i.i, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  %calloc.i.i44 = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i.i44, i64 8
  store ptr %calloc.i, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48 ; 5 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !65
  store i32 1, ptr %i.l, align 8, !tbaa !66
  store ptr %calloc.i.i44, ptr %i.n, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 4 uses
  %.not42 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  br i1 %.not42, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.p, align 8, !tbaa !105
  %i.s = load i32, ptr %i.o, align 8, !tbaa !106  ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.o, align 8, !tbaa !106
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  store ptr %calloc.i, ptr %i.v, align 8, !tbaa !107
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %i.q, %i.r
  %i.x = load i32, ptr %i.o, align 8, !tbaa !106  ; 6 uses
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ult i32 %i.x, 3
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = add nuw nsw i32 %i.x, 1
  store i32 %i.z, ptr %i.o, align 8, !tbaa !106
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aa
  store ptr %calloc.i, ptr %i.ab, align 8, !tbaa !107
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ac = and i32 %i.x, 7
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add i32 %i.x, 1
  store i32 %i.ad, ptr %i.o, align 8, !tbaa !106
  %i.ae = zext i32 %i.x to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ae
  store ptr %calloc.i, ptr %i.af, align 8, !tbaa !107
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  tail call void @vec_add_internal(ptr noundef nonnull %i.o, ptr noundef nonnull %calloc.i) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  %.pre48 = load ptr, ptr %i.k, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  %i.ag = phi ptr [ %.pre48, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.e ], [ %i.n, %bb.b ]
  %i.ah = phi ptr [ %.pre, %bb.h ], [ %i.b, %bb.g ], [ %i.b, %bb.e ], [ %i.b, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_term(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @escape_string(ptr noundef nonnull %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !53
  switch i32 %i.e, label %bb.k [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !51
  %.not18 = icmp eq i8 %i.g, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.d) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.d) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.d) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.d) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.13) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.i, %bb.f, %bb.g
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.d) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

declare ptr @escape_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @print_elem(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  switch i32 %i.a, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @print_term(ptr noundef %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.c) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.e) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_rule(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %print_elem.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %print_elem.exit ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 3 uses
  switch i32 %i.k, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @print_term(ptr noundef %i.m)
  br label %print_elem.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.m) ; 0 uses
  br label %print_elem.exit

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.o) ; 0 uses
  br label %print_elem.exit

print_elem.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.e, align 8, !tbaa !66
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %print_elem.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.u) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111  ; 2 uses
  %.not11 = icmp eq ptr %i.x, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %i.x) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_grammar(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !8
  %.not74 = icmp eq i32 %i.c, 0
  br i1 %.not74, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph68, %._crit_edge65
  %indvars.iv82 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next83, %._crit_edge65 ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv82
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = trunc nuw i64 %indvars.iv82 to i32
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %i.h, i32 noundef %i.i) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106
  %.not75 = icmp eq i32 %i.l, 0
  br i1 %.not75, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph64, %bb.av
  %indvars.iv79 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next80, %bb.av ] ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv79
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107  ; 8 uses
  %.not49 = icmp eq i64 %indvars.iv79, 0
  %.str.28..str.29 = select i1 %.not49, ptr @.str.28, ptr @.str.29
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.28..str.29) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !66
  %.not76 = icmp eq i32 %i.s, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %print_elem.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %print_elem.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51   ; 4 uses
  switch i32 %i.x, label %bb.t [
    i32 1, label %bb.f
    i32 2, label %bb.s
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call ptr @escape_string(ptr noundef nonnull %i.ab) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ null, %bb.f ] ; 6 uses
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !53
  switch i32 %i.ae, label %bb.p [
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %.not17.i = icmp eq ptr %i.af, null
  br i1 %.not17.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51
  %.not18.i = icmp eq i8 %i.ag, 0
  br i1 %.not18.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.ad) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.ad) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.ad) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.h
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.ad) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.13) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.not19.i = icmp eq ptr %i.ad, null
  br i1 %.not19.i, label %print_elem.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ad) #25
  br label %print_elem.exit

bb.s:                                             ; preds = %bb.e
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.z) ; 0 uses
  br label %print_elem.exit

bb.t:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.an) ; 0 uses
  br label %print_elem.exit

print_elem.exit:                                  ; preds = %bb.r, %bb.q, %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !66
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.e, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %print_elem.exit, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !113 ; 2 uses
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.at) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !114 ; 9 uses
  %.not51 = icmp eq i32 %i.aw, 0
  br i1 %.not51, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load i32, ptr @assoc_strings, align 16, !tbaa !115
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 16), align 16, !tbaa !115
  %i.ba = icmp eq i32 %i.aw, %i.az
  br i1 %i.ba, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 32), align 16, !tbaa !115
  %i.bc = icmp eq i32 %i.aw, %i.bb
  br i1 %i.bc, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 48), align 16, !tbaa !115
  %i.be = icmp eq i32 %i.aw, %i.bd
  br i1 %i.be, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 64), align 16, !tbaa !115
  %i.bg = icmp eq i32 %i.aw, %i.bf
  br i1 %i.bg, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 80), align 16, !tbaa !115
  %i.bi = icmp eq i32 %i.aw, %i.bh
  br i1 %i.bi, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 96), align 16, !tbaa !115
  %i.bk = icmp eq i32 %i.aw, %i.bj
  br i1 %i.bk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 112), align 16, !tbaa !115
  %i.bm = icmp eq i32 %i.aw, %i.bl
  br i1 %i.bm, label %bb.ae, label %assoc_str.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.lcssa.i = phi ptr [ @assoc_strings, %bb.w ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 16), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 32), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 48), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 64), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 80), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 96), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 112), %bb.ad ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  br label %assoc_str.exit

assoc_str.exit:                                   ; preds = %bb.ad, %bb.ae
  %.05.in.i = phi ptr [ %i.bn, %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 8), %bb.ad ]
  %.05.i = load ptr, ptr %.05.in.i, align 8, !tbaa !117
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %.05.i) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %assoc_str.exit, %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !118 ; 2 uses
  %.not52 = icmp eq i32 %i.bq, 0
  br i1 %.not52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.bq) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !119 ; 9 uses
  %.not53 = icmp eq i32 %i.bt, 0
  br i1 %.not53, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = load i32, ptr @assoc_strings, align 16, !tbaa !115
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 16), align 16, !tbaa !115
  %i.bx = icmp eq i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 32), align 16, !tbaa !115
  %i.bz = icmp eq i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 48), align 16, !tbaa !115
  %i.cb = icmp eq i32 %i.bt, %i.ca
  br i1 %i.cb, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 64), align 16, !tbaa !115
  %i.cd = icmp eq i32 %i.bt, %i.cc
  br i1 %i.cd, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 80), align 16, !tbaa !115
  %i.cf = icmp eq i32 %i.bt, %i.ce
  br i1 %i.cf, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 96), align 16, !tbaa !115
  %i.ch = icmp eq i32 %i.bt, %i.cg
  br i1 %i.ch, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 112), align 16, !tbaa !115
  %i.cj = icmp eq i32 %i.bt, %i.ci
  br i1 %i.cj, label %bb.aq, label %assoc_str.exit60

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.lcssa.i59 = phi ptr [ @assoc_strings, %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 16), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 32), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 48), %bb.al ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 64), %bb.am ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 80), %bb.an ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 96), %bb.ao ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 112), %bb.ap ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.lcssa.i59, i64 8
  br label %assoc_str.exit60

assoc_str.exit60:                                 ; preds = %bb.ap, %bb.aq
  %.05.in.i57 = phi ptr [ %i.ck, %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @assoc_strings, i64 8), %bb.ap ]
  %.05.i58 = load ptr, ptr %.05.in.i57, align 8, !tbaa !117
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %.05.i58) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %assoc_str.exit60, %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !110 ; 2 uses
  %.not54 = icmp eq ptr %i.cn, null
  br i1 %.not54, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.cn) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !111 ; 2 uses
  %.not55 = icmp eq ptr %i.cq, null
  br i1 %.not55, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.cq) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %putchar56 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cs = load i32, ptr %i.k, align 8, !tbaa !106
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next80, %i.ct
  br i1 %i.cu, label %bb.d, label %._crit_edge65, !llvm.loop !120

._crit_edge65:                                    ; preds = %bb.av, %bb.c
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %putchar48 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next83, %i.cw
  br i1 %i.cx, label %bb.c, label %._crit_edge69, !llvm.loop !121

._crit_edge69:                                    ; preds = %._crit_edge65, %bb.b
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !63
  %.not77 = icmp eq i32 %i.cz, 0
  br i1 %.not77, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge69
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph72, %bb.aw
  %indvars.iv85 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next86, %bb.aw ] ; 3 uses
  %putchar46 = tail call i32 @putchar(i32 9)      ; 0 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv85
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !64
  tail call void @print_term(ptr noundef %i.dd)
  %i.de = load i32, ptr %i.a, align 8, !tbaa !8
  %i.df = trunc nuw i64 %indvars.iv85 to i32
  %i.dg = add i32 %i.de, %i.df
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.dg) ; 0 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.di = load i32, ptr %i.cy, align 8, !tbaa !63
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next86, %i.dj
  br i1 %i.dk, label %bb.aw, label %._crit_edge73, !llvm.loop !122

._crit_edge73:                                    ; preds = %bb.aw, %._crit_edge69
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %._crit_edge73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_states(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %print_state.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %print_state.exit ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 10 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not.i = icmp eq i8 %i.l, 0
  %i.m = select i1 %.not.i, ptr @.str.50, ptr @.str.49
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.m) ; 0 uses
  %i.o = load i32, ptr %i.h, align 8, !tbaa !140
  %.not62.i = icmp eq i32 %i.o, 0
  br i1 %.not62.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.c

bb.c:                                             ; preds = %print_item.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %print_item.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.x) ; 0 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66
  %.not12.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not12.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %print_elem.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %print_elem.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.ac = phi ptr [ %i.bb, %print_elem.exit.i.i ], [ %i.z, %bb.c ]
  %.0910.i.i = phi i32 [ %.1.i.i, %print_elem.exit.i.i ], [ 1, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67 ; 3 uses
  %i.ah = icmp eq ptr %i.s, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 0, %bb.d ], [ %.0910.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 4 uses
  switch i32 %i.aj, label %bb.t [
    i32 1, label %bb.f
    i32 2, label %bb.s
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not.i46.i = icmp eq ptr %i.an, null
  br i1 %.not.i46.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call ptr @escape_string(ptr noundef nonnull %i.an) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi ptr [ %i.ao, %bb.g ], [ null, %bb.f ] ; 6 uses
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !53
  switch i32 %i.aq, label %bb.p [
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ar, null
  br i1 %.not17.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !51
  %.not18.i.i = icmp eq i8 %i.as, 0
  br i1 %.not18.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.ap) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.ap) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.ap) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.h
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.ap) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.13) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.not19.i.i = icmp eq ptr %i.ap, null
  br i1 %.not19.i.i, label %print_elem.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ap) #25
  br label %print_elem.exit.i.i

bb.s:                                             ; preds = %bb.e
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.al) ; 0 uses
  br label %print_elem.exit.i.i

bb.t:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.az) ; 0 uses
  br label %print_elem.exit.i.i

print_elem.exit.i.i:                              ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !48  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !66
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !142

._crit_edge.i.i:                                  ; preds = %print_elem.exit.i.i
  %i.bg = icmp eq i32 %.1.i.i, 0
  br i1 %i.bg, label %print_item.exit.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59) ; 0 uses
  br label %print_item.exit.i

print_item.exit.i:                                ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %putchar.i.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !140
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i, %i.bj
  br i1 %i.bk, label %bb.c, label %._crit_edge.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %print_item.exit.i, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !144
  %.not34.i = icmp eq i32 %i.bm, 0
  br i1 %.not34.i, label %._crit_edge55.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %.pre.i = load i32, ptr %i.bl, align 8, !tbaa !144
  %i.bn = icmp eq i32 %.pre.i, 0
  br i1 %i.bn, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %print_elem.exit.i, %.lr.ph54.i
  %indvars.iv67.i = phi i64 [ 0, %.lr.ph54.i ], [ %indvars.iv.next68.i, %print_elem.exit.i ] ; 3 uses
  %putchar40.i = tail call i32 @putchar(i32 9)    ; 0 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !145
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv67.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !146
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !148 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !51 ; 4 uses
  switch i32 %i.bt, label %bb.ak [
    i32 1, label %bb.w
    i32 2, label %bb.aj
  ]
end_hunk_2
begin_hunk_3_@print_states:bb.a
bb.ax:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.13) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %.not19.i17 = icmp eq ptr %i.ec, null
  br i1 %.not19.i17, label %print_elem.exit.i7, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %i.ec) #25
  br label %print_elem.exit.i7

bb.ba:                                            ; preds = %bb.am
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.dy) ; 0 uses
  br label %print_elem.exit.i7

bb.bb:                                            ; preds = %bb.am
  %i.em = load ptr, ptr %i.dy, align 8, !tbaa !36
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.em) ; 0 uses
  br label %print_elem.exit.i7

print_elem.exit.i7:                               ; preds = %bb.az, %bb.ay, %bb.bb, %bb.ba
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.eo = load i32, ptr %i.dq, align 8, !tbaa !66
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next.i8, %i.ep
  br i1 %i.eq, label %bb.am, label %._crit_edge.i9, !llvm.loop !109

._crit_edge.i9:                                   ; preds = %print_elem.exit.i7, %bb.al
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !110 ; 2 uses
  %.not.i10 = icmp eq ptr %i.es, null
  br i1 %.not.i10, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i9
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %i.es) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 2 uses
  %.not11.i = icmp eq ptr %i.ev, null
  br i1 %.not11.i, label %print_rule.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %i.ev) ; 0 uses
  br label %print_rule.exit

print_rule.exit:                                  ; preds = %bb.bd, %bb.be
  %putchar39.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.ex = load i32, ptr %i.cv, align 8, !tbaa !152 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next71.i, %i.ey
  br i1 %i.ez, label %bb.al, label %.preheader.i, !llvm.loop !161

bb.bf:                                            ; preds = %bb.bt, %.lr.ph60.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph60.i ], [ %indvars.iv.next74.i, %bb.bt ] ; 2 uses
  %i.fa = load ptr, ptr %i.db, align 8, !tbaa !162
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv73.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !155 ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !157
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr @action_types, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !159
  %i.fh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %i.fg) ; 0 uses
  %i.fi = load i32, ptr %i.fc, align 8, !tbaa !157
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.bg, label %bb.bt

bb.bg:                                            ; preds = %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !163 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 2 uses
  %.not.i4 = icmp eq ptr %i.fn, null
  br i1 %.not.i4, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fo = tail call ptr @escape_string(ptr noundef nonnull %i.fn) #25
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fp = phi ptr [ %i.fo, %bb.bh ], [ null, %bb.bg ] ; 6 uses
  %i.fq = load i32, ptr %i.fl, align 8, !tbaa !53
  switch i32 %i.fq, label %bb.bq [
    i32 0, label %bb.bj
    i32 1, label %bb.bn
    i32 2, label %bb.bo
    i32 3, label %bb.bp
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 2 uses
  %.not17.i = icmp eq ptr %i.fr, null
  br i1 %.not17.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !51
  %.not18.i = icmp eq i8 %i.fs, 0
  br i1 %.not18.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ft = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.br

bb.bm:                                            ; preds = %bb.bk
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.fp) ; 0 uses
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.fv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.fp) ; 0 uses
  br label %bb.br

bb.bo:                                            ; preds = %bb.bi
  %i.fw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %i.fp) ; 0 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bi
  %i.fx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.fp) ; 0 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.bi
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.13) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %.not19.i = icmp eq ptr %i.fp, null
  br i1 %.not19.i, label %print_term.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @free(ptr noundef nonnull %i.fp) #25
  br label %print_term.exit

print_term.exit:                                  ; preds = %bb.br, %bb.bs
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !164
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !126
  %i.gb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.ga) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %print_term.exit, %bb.bf
  %putchar38.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.gc = load i32, ptr %i.cz, align 8, !tbaa !153
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp samesign ult i64 %indvars.iv.next74.i, %i.gd
  br i1 %i.ge, label %bb.bf, label %._crit_edge61.loopexit.i, !llvm.loop !165

._crit_edge61.loopexit.i:                         ; preds = %bb.bt
  %.pre76.i = load i32, ptr %i.cv, align 8, !tbaa !152
  br label %._crit_edge61.i

._crit_edge61.i:                                  ; preds = %._crit_edge61.loopexit.i, %.preheader.i
  %i.gf = phi i32 [ %.pre76.i, %._crit_edge61.loopexit.i ], [ %i.cy, %.preheader.i ] ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 2                   ; 2 uses
  br i1 %i.gg, label %bb.bu, label %print_conflict.exit.i

print_conflict.exit.i:                            ; preds = %._crit_edge61.i
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.gh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef nonnull @.str.56) ; 0 uses
  %putchar.i41.i = tail call i32 @putchar(i32 10) ; 0 uses
  %.pr.i = load i32, ptr %i.cv, align 8, !tbaa !152
  br label %bb.bu

bb.bu:                                            ; preds = %print_conflict.exit.i, %._crit_edge61.i
  %i.gi = phi i32 [ %.pr.i, %print_conflict.exit.i ], [ %i.gf, %._crit_edge61.i ]
  %.not36.i = icmp eq i32 %i.gi, 0
  br i1 %.not36.i, label %print_state.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gj = load i32, ptr %i.cz, align 8, !tbaa !153
  %.not37.i = icmp eq i32 %i.gj, 0
  br i1 %.not37.i, label %print_state.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.gg, label %bb.bx, label %print_conflict.exit45.i

bb.bx:                                            ; preds = %bb.bw
  %puts.i44.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %print_conflict.exit45.i

print_conflict.exit45.i:                          ; preds = %bb.bx, %bb.bw
  %i.gk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef nonnull @.str.57) ; 0 uses
  %putchar.i43.i = tail call i32 @putchar(i32 10) ; 0 uses
  br label %print_state.exit

print_state.exit:                                 ; preds = %bb.bu, %bb.bv, %print_conflict.exit45.i
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load i32, ptr %i.a, align 8, !tbaa !123
  %i.gm = zext i32 %i.gl to i64
  %i.gn = icmp samesign ult i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %bb.b, label %._crit_edge, !llvm.loop !166

._crit_edge:                                      ; preds = %print_state.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @state_for_declaration(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !167
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @build_eq(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123
  %i.c = zext i32 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 24
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #26 ; 16 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.not247 = icmp eq i32 %i.f, 0
  br i1 %.not247, label %._crit_edge246, label %.preheader225

.loopexit226:                                     ; preds = %.loopexit
  %i.j = icmp eq i32 %.2170.lcssa, 0
  br i1 %i.j, label %.preheader221, label %.preheader225, !llvm.loop !169

.preheader225:                                    ; preds = %bb.a, %.loopexit226
  %i.k = phi i32 [ %i.n, %.loopexit226 ], [ %i.f, %bb.a ] ; 2 uses
  %i.l = phi i32 [ %i.n, %.loopexit226 ], [ 1, %bb.a ]
  %.not248 = icmp eq i32 %i.l, 0
  br i1 %.not248, label %.preheader221, label %.lr.ph237

.preheader221:                                    ; preds = %.loopexit226, %.preheader225
  %i.m = phi i32 [ %i.k, %.preheader225 ], [ %i.n, %.loopexit226 ] ; 2 uses
  %.not251 = icmp eq i32 %i.m, 0
  br i1 %.not251, label %._crit_edge246, label %.lr.ph240

.lr.ph240:                                        ; preds = %.preheader221
  %.pre281 = load i32, ptr @verbose_level, align 4
  br label %bb.u

.loopexit:                                        ; preds = %.thread, %.lr.ph234, %.lr.ph237
  %i.n = phi i32 [ %i.q, %.lr.ph237 ], [ %i.q, %.lr.ph234 ], [ %i.dj, %.thread ] ; 5 uses
  %.2170.lcssa = phi i32 [ %.1169235, %.lr.ph237 ], [ %.1169235, %.lr.ph234 ], [ %.3171, %.thread ] ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next267, %i.o
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  br i1 %i.p, label %.lr.ph237, label %.loopexit226, !llvm.loop !171

.lr.ph237:                                        ; preds = %.preheader225, %.loopexit
  %i.q = phi i32 [ %i.n, %.loopexit ], [ %i.k, %.preheader225 ] ; 3 uses
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.loopexit ], [ 0, %.preheader225 ] ; 2 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.loopexit ], [ 1, %.preheader225 ] ; 2 uses
  %.1169235 = phi i32 [ %.2170.lcssa, %.loopexit ], [ 0, %.preheader225 ] ; 3 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv266
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125  ; 8 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !126
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.v ; 4 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 3 uses
  %i.x = zext i32 %i.q to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next267, %i.x
  br i1 %i.y, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %.lr.ph237
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 400
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph234.split, label %.loopexit

.lr.ph234.split:                                  ; preds = %.lr.ph234, %.thread
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %.thread ], [ %indvars.iv261, %.lr.ph234 ] ; 2 uses
  %.2170231 = phi i32 [ %.3171, %.thread ], [ %.1169235, %.lr.ph234 ] ; 12 uses
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv263
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125 ; 6 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !126
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !172
  %.not195 = icmp eq ptr %i.ao, null
  br i1 %.not195, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph234.split
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !172
  %.not196 = icmp eq ptr %i.ap, null
  br i1 %.not196, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 400
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %.not197 = icmp eq ptr %i.aq, %i.as
  %.not198 = icmp eq ptr %i.as, %i.t
  %or.cond215 = or i1 %.not197, %.not198
  br i1 %or.cond215, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !144
  %.not199 = icmp eq i32 %i.at, %i.av
  br i1 %.not199, label %.preheader223, label %.thread

.preheader223:                                    ; preds = %bb.d
  %.not249 = icmp eq i32 %i.at, 0
  br i1 %.not249, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader223
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !145
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.m
  %i.ay = phi ptr [ %.pre, %.lr.ph ], [ %i.bi, %bb.m ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !146
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !148
  %i.bc = tail call i32 @elem_symbol(ptr noundef %0, ptr noundef %i.bb) #25
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !145
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !146
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !148
  %i.bh = tail call i32 @elem_symbol(ptr noundef %0, ptr noundef %i.bg) #25
  %.not207 = icmp eq i32 %i.bc, %i.bh
  br i1 %.not207, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !145 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !146
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !150 ; 4 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !145
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !146
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !150 ; 5 uses
  %.not208 = icmp eq ptr %i.bm, %i.br
  br i1 %.not208, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = load i32, ptr %i.bm, align 8, !tbaa !126
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !172 ; 2 uses
  %.not209 = icmp eq ptr %i.bv, %i.br
  br i1 %.not209, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !126
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172
  %.not210 = icmp eq ptr %i.bz, %i.bm
  br i1 %.not210, label %bb.i, label %.thread

end_hunk_3
begin_hunk_4_@build_eq:bb.a
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !125
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !126 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.dt ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !172 ; 4 uses
  %i.dw = icmp ne ptr %i.dv, null
  %i.dx = icmp sgt i32 %i.do, 2
  %or.cond = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.dy = load i32, ptr %i.dv, align 8, !tbaa !126
  %i.dz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.ds, i32 noundef %i.dy) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !175 ; 2 uses
  %.not192 = icmp eq ptr %i.eb, null
  br i1 %.not192, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !126
  %i.ed = load i32, ptr %i.dv, align 8, !tbaa !126
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !175
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !126
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.ec, i32 noundef %i.ei) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !177 ; 2 uses
  %.not193 = icmp eq ptr %i.el, null
  br i1 %.not193, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39) ; 0 uses
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  tail call void @print_rule(ptr noundef nonnull %i.el)
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41) ; 0 uses
  %i.ep = load i32, ptr %i.dv, align 8, !tbaa !126
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !177
  tail call void @print_rule(ptr noundef %i.et)
  %putchar = tail call i32 @putchar(i32 93)       ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %putchar194 = tail call i32 @putchar(i32 10)    ; 0 uses
  %.pre280 = load i32, ptr @verbose_level, align 4
  %.pre282 = load i32, ptr %i.a, align 8, !tbaa !123
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.z
  %i.eu = phi i32 [ %i.dn, %bb.u ], [ %.pre282, %bb.z ] ; 5 uses
  %i.ev = phi i32 [ %i.do, %bb.u ], [ %.pre280, %bb.z ]
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.ew = zext i32 %i.eu to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next270, %i.ew
  br i1 %i.ex, label %bb.u, label %.preheader220, !llvm.loop !180

.lr.ph245:                                        ; preds = %bb.aj
  %.pre284 = load i32, ptr @verbose_level, align 4
  br label %bb.ak

bb.ab:                                            ; preds = %.lr.ph243, %bb.aj
  %indvars.iv272 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next273, %bb.aj ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv272
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !125 ; 5 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !126
  %i.fb = zext i32 %i.fa to i64                   ; 3 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.fb ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !172 ; 5 uses
  %.not188 = icmp eq ptr %i.fd, null
  br i1 %.not188, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !175 ; 2 uses
  %.not189 = icmp eq ptr %i.ff, null
  br i1 %.not189, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !126
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !177 ; 2 uses
  %.not190 = icmp eq ptr %i.fk, null
  br i1 %.not190, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !66
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 408
  store ptr %i.fd, ptr %i.fo, align 8, !tbaa !181
  %i.fp = load i32, ptr %i.fd, align 8, !tbaa !126
  %i.fq = zext i32 %i.fp to i64
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.fr = load i32, ptr %i.fd, align 8, !tbaa !126
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !175
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !126
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !177 ; 2 uses
  %.not191 = icmp eq ptr %i.ga, null
  br i1 %.not191, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !66
  %i.gd = icmp eq i32 %i.gc, 2
  br i1 %i.gd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 408
  store ptr %i.ez, ptr %i.ge, align 8, !tbaa !181
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ai
  %i.gf = phi i64 [ %i.fb, %bb.ai ], [ %i.fq, %bb.af ]
  %i.gg = phi i64 [ %i.fs, %bb.ai ], [ %i.fb, %bb.af ]
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.gg
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !177
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ez, i64 416
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !182
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !177
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 424
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ab, %bb.ac, %bb.ag, %bb.ah
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %.lr.ph245, label %bb.ab, !llvm.loop !184

bb.ak:                                            ; preds = %.lr.ph245, %bb.am
  %i.gp = phi i32 [ %i.eu, %.lr.ph245 ], [ %i.hb, %bb.am ]
  %i.gq = phi i32 [ %.pre284, %.lr.ph245 ], [ %i.hc, %bb.am ] ; 2 uses
  %indvars.iv277 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next278, %bb.am ] ; 2 uses
  %i.gr = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv277
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !125 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 408
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !181 ; 2 uses
  %i.gw = icmp ne ptr %i.gv, null
  %i.gx = icmp ne i32 %i.gq, 0
  %or.cond3 = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond3, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gy = load i32, ptr %i.gt, align 8, !tbaa !126
  %i.gz = load i32, ptr %i.gv, align 8, !tbaa !126
  %i.ha = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.gy, i32 noundef %i.gz) ; 0 uses
  %.pre283 = load i32, ptr @verbose_level, align 4
  %.pre285 = load i32, ptr %i.a, align 8, !tbaa !123
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.hb = phi i32 [ %i.gp, %bb.ak ], [ %.pre285, %bb.al ] ; 2 uses
  %i.hc = phi i32 [ %i.gq, %bb.ak ], [ %.pre283, %bb.al ]
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.hd = zext i32 %i.hb to i64
  %i.he = icmp samesign ult i64 %indvars.iv.next278, %i.hd
  br i1 %i.he, label %bb.ak, label %._crit_edge246, !llvm.loop !185

._crit_edge246:                                   ; preds = %bb.am, %bb.a, %.preheader221, %.preheader220
  tail call void @free(ptr noundef %i.e) #25
  ret void
}

declare i32 @elem_symbol(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_D_Grammar(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(592) ptr @calloc(i64 1, i64 592) ; 2 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = tail call ptr @dup_str(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #25
  store ptr %i.c, ptr %calloc, align 8, !tbaa !186
  ret ptr %calloc
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_D_Grammar(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186
  tail call void @free(ptr noundef %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_grammar(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186
  %i.b = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef nonnull @.str.44)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !186
  %i.d = tail call ptr @sbuf_read(ptr noundef %i.c) #25 ; 3 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @initialize_productions(ptr noundef nonnull %0)
  %i.e = tail call ptr @new_D_Parser(ptr noundef %1, i32 noundef %2) #25 ; 3 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !187
  %i.f = load ptr, ptr %0, align 8, !tbaa !186
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !191
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #24
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @dparse(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef %i.i) #25
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp ugt i32 %i.l, 2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @finish_productions(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ -1, %bb.a ], [ 0, %bb.e ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #14

declare ptr @sbuf_read(ptr noundef) local_unnamed_addr #6

declare ptr @new_D_Parser(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @dparse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @build_grammar(ptr noundef initializes((588, 592)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 7 uses
  store i32 0, ptr %i.b, align 4, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %.not126.i = icmp eq i32 %i.d, 0
  br i1 %.not126.i, label %.preheader.i, label %.lr.ph.i.lr.ph.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %.lr.ph.i.i

.preheader.i:                                     ; preds = %._crit_edge120.i, %bb.a
  %i.i = phi i32 [ 0, %bb.a ], [ %i.cv, %._crit_edge120.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !63   ; 3 uses
  %.not129.i = icmp eq i32 %i.k, 0
  br i1 %.not129.i, label %._crit_edge125.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 9 uses
  %wide.trip.count.i = zext i32 %i.k to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.n = icmp ult i32 %i.k, 8
  br i1 %i.n, label %.epil.preheader, label %.lr.ph124.i.new

.lr.ph124.i.new:                                  ; preds = %.lr.ph124.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %._crit_edge120.i, %.lr.ph.i.lr.ph.i
  %indvars.iv141.i = phi i64 [ 0, %.lr.ph.i.lr.ph.i ], [ %indvars.iv.next142.i, %._crit_edge120.i ] ; 3 uses
  %i.o = phi i32 [ %i.d, %.lr.ph.i.lr.ph.i ], [ %i.cv, %._crit_edge120.i ]
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv141.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %wide.trip.count.i.i = zext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.thread.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.z, %i.u
  br i1 %.not.i.i, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.ab = call i32 @strncmp(ptr noundef %i.aa, ptr noundef readonly %i.s, i64 noundef %i.v) #24
  %.not15.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.not.i.i, label %lookup_production.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %lookup_production.exit.i, label %bb.b, !llvm.loop !37

lookup_production.exit.i:                         ; preds = %.thread.i.i, %bb.c
  %.2.i.i = phi ptr [ %i.x, %bb.c ], [ null, %.thread.i.i ]
  %.not.i = icmp eq ptr %i.r, %.2.i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %lookup_production.exit.i
  call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.65, ptr noundef %i.s) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %lookup_production.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ad = trunc nuw nsw i64 %indvars.iv141.i to i32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !106
  %.not127.i = icmp eq i32 %i.af, 0
  br i1 %.not127.i, label %._crit_edge120.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %.lr.ph119.i
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next139.i, %bb.r ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv138.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107 ; 7 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !192 ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 4, !tbaa !192
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !193
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !66
  %.not128.i = icmp eq i32 %i.an, 0
  br i1 %.not128.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !194
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %.063114.i = phi ptr [ null, %.lr.ph.i ], [ %.164.i, %bb.o ] ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !194
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51 ; 6 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !51 ; 3 uses
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %.not24.i75.i = icmp eq i32 %i.bd, 0
  br i1 %.not24.i75.i, label %.loopexit105.i, label %.lr.ph.i76.i

.lr.ph.i76.i:                                     ; preds = %bb.h
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bf = sext i32 %i.bb to i64
  %wide.trip.count.i77.i = zext i32 %i.bd to i64
end_hunk_4
begin_hunk_5_@convert_regex_production_one:bb.a
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 216
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.in191 = phi ptr [ %i.dy, %bb.aj ], [ %i.dw, %bb.ai ]
  %i.dz = load ptr, ptr %.in191, align 8, !tbaa !51 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store i8 40, ptr %i.br, align 1, !tbaa !51
  %i.eb = load i32, ptr %i.dz, align 8, !tbaa !53
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !55 ; 2 uses
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ef = tail call ptr @escape_string_for_regex(ptr noundef %i.ee)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0156 = phi ptr [ %i.ef, %bb.al ], [ %i.ee, %bb.ak ] ; 4 uses
  %i.eg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0156) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %.0156, i64 %i.eg, i1 false)
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0156) #24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eh ; 3 uses
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !53
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @free(ptr noundef nonnull %.0156) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 41, ptr %i.ei, align 1, !tbaa !51
  %. = select i1 %i.cy, i8 42, i8 43
  %.0158 = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %., ptr %i.el, align 1, !tbaa !51
  store i8 0, ptr %.0158, align 1, !tbaa !51
  br label %bb.bf

bb.ap:                                            ; preds = %bb.ab
  %i.em = icmp ugt i32 %i.cm, 1
  br i1 %i.em, label %.thread264, label %bb.aq

.thread264:                                       ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 40, ptr %i.br, align 1, !tbaa !51
  br label %.lr.ph228

bb.aq:                                            ; preds = %bb.ap
  %.not235 = icmp eq i32 %i.cm, 0
  br i1 %.not235, label %._crit_edge229.thread, label %.lr.ph228

.lr.ph228:                                        ; preds = %.thread264, %bb.aq
  %.1159267 = phi ptr [ %i.en, %.thread264 ], [ %i.br, %bb.aq ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph228, %bb.bd
  %indvars.iv249 = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next250, %bb.bd ] ; 3 uses
  %.2160226 = phi ptr [ %.1159267, %.lr.ph228 ], [ %.6, %bb.bd ] ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !105
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv249
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !107 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !66 ; 2 uses
  %i.eu = icmp ugt i32 %i.et, 1
  br i1 %i.eu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ev = getelementptr inbounds nuw i8, ptr %.2160226, i64 1
  store i8 40, ptr %.2160226, align 1, !tbaa !51
  %.pre256 = load i32, ptr %i.es, align 8, !tbaa !66
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ew = phi i32 [ %.pre256, %bb.as ], [ %i.et, %bb.ar ]
  %.3 = phi ptr [ %i.ev, %bb.as ], [ %.2160226, %bb.ar ] ; 2 uses
  %.not236 = icmp eq i32 %i.ew, 0
  br i1 %.not236, label %._crit_edge222.thread, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.at
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph221, %bb.ba
  %indvars.iv246 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next247, %bb.ba ] ; 2 uses
  %.4219 = phi ptr [ %.3, %.lr.ph221 ], [ %i.fo, %bb.ba ] ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv246
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !67 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !46
  %i.fc = icmp eq i32 %i.fb, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  br i1 %i.fc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 216
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.in = phi ptr [ %i.ff, %bb.av ], [ %i.fd, %bb.au ]
  %i.fg = load ptr, ptr %.in, align 8, !tbaa !51  ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !53
  %i.fi = icmp eq i32 %i.fh, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !55 ; 2 uses
  br i1 %i.fi, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fl = tail call ptr @escape_string_for_regex(ptr noundef %i.fk)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.1157 = phi ptr [ %i.fl, %bb.ax ], [ %i.fk, %bb.aw ] ; 4 uses
  %i.fm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1157) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4219, ptr nonnull align 1 %.1157, i64 %i.fm, i1 false)
  %i.fn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1157) #24
  %i.fo = getelementptr inbounds nuw i8, ptr %.4219, i64 %i.fn ; 4 uses
  %i.fp = load i32, ptr %i.fg, align 8, !tbaa !53
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @free(ptr noundef nonnull %.1157) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.fr = load i32, ptr %i.es, align 8, !tbaa !66 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next247, %i.fs
  br i1 %i.ft, label %bb.au, label %._crit_edge222, !llvm.loop !242

._crit_edge222:                                   ; preds = %bb.ba
  %i.fu = icmp ugt i32 %i.fr, 1
  br i1 %i.fu, label %bb.bb, label %._crit_edge222.thread

bb.bb:                                            ; preds = %._crit_edge222
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 41, ptr %i.fo, align 1, !tbaa !51
  br label %._crit_edge222.thread

._crit_edge222.thread:                            ; preds = %bb.at, %bb.bb, %._crit_edge222
  %.5 = phi ptr [ %i.fv, %bb.bb ], [ %i.fo, %._crit_edge222 ], [ %.3, %bb.at ] ; 3 uses
  %i.fw = load i32, ptr %i.i, align 8, !tbaa !106 ; 2 uses
  %i.fx = add i32 %i.fw, -1
  %i.fy = zext i32 %i.fx to i64
  %.not182 = icmp eq i64 %indvars.iv249, %i.fy
  br i1 %.not182, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge222.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 124, ptr %.5, align 1, !tbaa !51
  %.pre257 = load i32, ptr %i.i, align 8, !tbaa !106
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge222.thread, %bb.bc
  %i.ga = phi i32 [ %.pre257, %bb.bc ], [ %i.fw, %._crit_edge222.thread ] ; 2 uses
  %.6 = phi ptr [ %i.fz, %bb.bc ], [ %.5, %._crit_edge222.thread ] ; 4 uses
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp samesign ult i64 %indvars.iv.next250, %i.gb
  br i1 %i.gc, label %bb.ar, label %._crit_edge229, !llvm.loop !243

._crit_edge229:                                   ; preds = %bb.bd
  %i.gd = icmp ugt i32 %i.ga, 1
  br i1 %i.gd, label %bb.be, label %._crit_edge229.thread

bb.be:                                            ; preds = %._crit_edge229
  %i.ge = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 41, ptr %.6, align 1, !tbaa !51
  br label %._crit_edge229.thread

._crit_edge229.thread:                            ; preds = %bb.aq, %bb.be, %._crit_edge229
  %.7 = phi ptr [ %i.ge, %bb.be ], [ %.6, %._crit_edge229 ], [ %i.br, %bb.aq ]
  store i8 0, ptr %.7, align 1, !tbaa !51
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge229.thread, %bb.ao
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !211 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !55
  %i.gi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gh) #24
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !61
  %i.gl = load i8, ptr %i.c, align 4
  %i.gm = and i8 %i.gl, -3
  store i8 %i.gm, ptr %i.c, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %bb.bf
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_declaration_group(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %i.c, 0
  %.not = icmp eq ptr %i.f, null
  %or.cond = or i1 %i.h, %.not
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.74) #25
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  store ptr %2, ptr %i.j, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106  ; 2 uses
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !105 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.l, %.preheader.lr.ph ], [ %i.al, %._crit_edge ]
  %i.o = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.p = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.an, %._crit_edge ] ; 2 uses
  %indvars.iv34 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next35, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv34
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !66
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.u = phi ptr [ %i.ae, %bb.f ], [ %i.o, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.ag, %bb.f ], [ %i.r, %.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !46
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  tail call fastcc void @set_declaration_group(ptr noundef %i.ad, ptr noundef %1, ptr noundef %2)
  %.pre37 = load ptr, ptr %i.m, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ae = phi ptr [ %i.u, %.lr.ph ], [ %.pre37, %bb.e ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv34
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !107 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !66
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !244

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre38 = load i32, ptr %i.k, align 8, !tbaa !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.al = phi i32 [ %.pre38, %._crit_edge.loopexit ], [ %i.n, %.preheader ] ; 2 uses
  %i.am = phi ptr [ %i.ae, %._crit_edge.loopexit ], [ %i.o, %.preheader ]
  %i.an = phi ptr [ %i.ae, %._crit_edge.loopexit ], [ %i.p, %.preheader ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.ao = zext i32 %i.al to i64
  %i.ap = icmp samesign ult i64 %indvars.iv.next35, %i.ao
  br i1 %i.ap, label %.preheader, label %.loopexit, !llvm.loop !245

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"Grammar", !10, i64 0, !12, i64 8, !15, i64 48, !17, i64 88, !19, i64 128, !20, i64 144, !5, i64 152, !21, i64 160, !23, i64 200, !10, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !6, i64 276, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !25, i64 552, !26, i64 560, !27, i64 568, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4, !13, i64 8, !6, i64 16}
!13 = !{!"p2 _ZTS10Production", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !16, i64 8, !6, i64 16}
!16 = !{!"p2 _ZTS4Term", !14, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !18, i64 8, !6, i64 16}
!18 = !{!"p2 _ZTS5State", !14, i64 0}
!19 = !{!"Code", !10, i64 0, !5, i64 8}
!20 = !{!"p1 _ZTS4Code", !11, i64 0}
!21 = !{!"", !5, i64 0, !5, i64 4, !22, i64 8, !6, i64 16}
!22 = !{!"p2 _ZTS11Declaration", !14, i64 0}
!23 = !{!"", !5, i64 0, !5, i64 4, !24, i64 8, !6, i64 16}
!24 = !{!"p2 _ZTS6D_Pass", !14, i64 0}
!25 = !{!"p1 _ZTS10Production", !11, i64 0}
!26 = !{!"p1 _ZTS4Rule", !11, i64 0}
!27 = !{!"p1 _ZTS4Elem", !11, i64 0}
!28 = !{!9, !13, i64 16}
!29 = !{!25, !25, i64 0}
!30 = !{!31, !5, i64 8}
!31 = !{!"Production", !10, i64 0, !5, i64 8, !32, i64 16, !5, i64 56, !5, i64 60, !5, i64 60, !5, i64 60, !26, i64 64, !6, i64 72, !6, i64 136, !34, i64 200, !27, i64 208, !35, i64 216, !25, i64 224}
!32 = !{!"", !5, i64 0, !5, i64 4, !33, i64 8, !6, i64 16}
!33 = !{!"p2 _ZTS4Rule", !14, i64 0}
!34 = !{!"p1 _ZTS5State", !11, i64 0}
!35 = !{!"p1 _ZTS4Term", !11, i64 0}
!36 = !{!31, !10, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !25, i64 8}
!40 = !{!"Rule", !5, i64 0, !25, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !41, i64 32, !27, i64 72, !19, i64 80, !19, i64 96, !43, i64 112, !5, i64 152, !26, i64 160}
!41 = !{!"", !5, i64 0, !5, i64 4, !42, i64 8, !6, i64 16}
!42 = !{!"p2 _ZTS4Elem", !14, i64 0}
!43 = !{!"", !5, i64 0, !5, i64 4, !44, i64 8, !6, i64 16}
!44 = !{!"p2 _ZTS4Code", !14, i64 0}
!45 = !{!40, !27, i64 72}
!46 = !{!47, !5, i64 0}
!47 = !{!"Elem", !5, i64 0, !5, i64 4, !26, i64 8, !6, i64 16}
!48 = !{!47, !26, i64 8}
!49 = !{!9, !5, i64 576}
!50 = !{!40, !5, i64 152}
!51 = !{!6, !6, i64 0}
!52 = distinct !{!52, !38}
!53 = !{!54, !5, i64 0}
end_hunk_5
