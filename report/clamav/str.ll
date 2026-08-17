inline.NumInlined: 37
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"cli_hex2ui(): Malformed hexstring: %s (length: %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cli_hex2str(): Malformed hexstring: %s (length: %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cli_hex2num(): Malformed hexstring: %s (length: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"cli_xtoi(): cli_max_malloc fails.\0A\00", align 1
@__const.cli_str2hex.HEX = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.4 = private unnamed_addr constant [50 x i8] c"cli_strtok: Unable to allocate memory for buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cli_strrcpy: NULL argument\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"cli_unescape: Unable to allocate memory for string\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"cli_basename: Invalid arguments.\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"cli_basename: Provided path does not include a file name.\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"cli_basename: Failed to allocate memory for file basename.\0A\00", align 1
@hex_chars = internal unnamed_addr constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @cli_realhex2ui(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.041 = phi i32 [ %i.ak, %bb.k ], [ 0, %bb.a ]  ; 3 uses
  %.03440 = phi ptr [ %i.aj, %bb.k ], [ %1, %bb.a ] ; 2 uses
  %i.a = zext i32 %.041 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 4 uses
  %i.d = icmp eq i8 %i.c, 63
  %i.e = or disjoint i32 %.041, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  br i1 %i.d, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp eq i8 %i.h, 63
  br i1 %i.i, label %bb.k, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 3 uses
  %i.l = icmp eq i8 %i.k, 63
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.m = zext i8 %i.c to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.tr = trunc i32 %i.o to i16
  %i.q = shl i16 %.tr, 4
  %i.r = or i16 %i.q, 768
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph._crit_edge
  switch i8 %i.c, label %bb.h [
    i8 63, label %bb.f
    i8 40, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = zext i8 %i.k to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9    ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.w = trunc i32 %i.u to i16
  %i.x = or i16 %i.w, 1024
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.y = zext i8 %i.c to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ac = zext i8 %i.k to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ag = shl i32 %i.aa, 4
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = trunc i32 %i.ah to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.b, %bb.d, %bb.j, %bb.g
  %.032 = phi i16 [ %i.ai, %bb.j ], [ %i.r, %bb.d ], [ %i.x, %bb.g ], [ 256, %bb.b ], [ 512, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.03440, i64 2
  store i16 %.032, ptr %.03440, align 2, !tbaa !10
  %i.ak = add i32 %.041, 2                        ; 2 uses
  %i.al = icmp ult i32 %i.ak, %2
  br i1 %i.al, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.f, %bb.i, %bb.h, %bb.k, %bb.a
  %.033 = phi i32 [ 1, %bb.a ], [ 1, %bb.k ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.c ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @cli_hex2ui(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.b = trunc i64 %i.a to i32                    ; 5 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %0, i32 noundef %i.b) #22
  br label %cli_realhex2ui.exit

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i32 %i.b, 1
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  %i.g = tail call ptr @cli_max_calloc(i64 noundef %i.f, i64 noundef 2) #22 ; 5 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %cli_realhex2ui.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cli_realhex2ui.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.m
  %.041.i = phi i32 [ %i.ao, %bb.m ], [ 0, %bb.d ] ; 3 uses
  %.03440.i = phi ptr [ %i.an, %bb.m ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = zext i32 %.041.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 4 uses
  %i.k = icmp eq i8 %i.j, 63
  %i.l = or disjoint i32 %.041.i, 1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 3 uses
  %i.p = icmp eq i8 %i.o, 63                      ; 2 uses
  br i1 %i.k, label %bb.e, label %.lr.ph._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.p, label %bb.m, label %.thread

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph._crit_edge.i
  %i.q = zext i8 %i.j to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %.tr.i = trunc i32 %i.s to i16
  %i.u = shl i16 %.tr.i, 4
  %i.v = or i16 %i.u, 768
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph._crit_edge.i
  %cond = icmp eq i8 %i.j, 40
  br i1 %cond, label %bb.m, label %bb.j

.thread:                                          ; preds = %bb.e
  %i.w = zext i8 %i.o to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9    ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.thread
  %i.aa = trunc i32 %i.y to i16
  %i.ab = or i16 %i.aa, 1024
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ac = zext i8 %i.j to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ag = zext i8 %i.o to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = shl i32 %i.ae, 4
  %i.al = add i32 %i.ai, %i.ak
  %i.am = trunc i32 %i.al to i16
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i, %bb.g, %bb.e
  %.032.i = phi i16 [ %i.am, %bb.l ], [ %i.v, %bb.g ], [ %i.ab, %bb.i ], [ 256, %bb.e ], [ 512, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %.03440.i, i64 2
  store i16 %.032.i, ptr %.03440.i, align 2, !tbaa !10
  %i.ao = add i32 %.041.i, 2                      ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.b
  br i1 %i.ap, label %.lr.ph.i, label %cli_realhex2ui.exit

bb.n:                                             ; preds = %.thread, %bb.k, %bb.j, %bb.f
  tail call void @free(ptr noundef %i.g) #22
  br label %cli_realhex2ui.exit

cli_realhex2ui.exit:                              ; preds = %bb.m, %bb.d, %bb.c, %bb.n, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.n ], [ %i.g, %bb.d ], [ %i.g, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #4

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @cli_hex2str(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 5 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i32 noundef %i.c) #22
  br label %cli_hex2str_to.exit

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i64 %i.a, 1
  %i.e = add nuw i64 %i.d, 1
  %i.f = tail call ptr @cli_max_calloc(i64 noundef %i.e, i64 noundef 1) #22 ; 5 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %cli_hex2str_to.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %cli_hex2str_to.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.017.i = phi i64 [ %i.w, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %i.v, %bb.f ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.017.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl i32 %i.k, 4
  %i.t = add i32 %i.q, %i.s
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.01316.i, i64 1
  store i8 %i.u, ptr %.01316.i, align 1, !tbaa !8
  %i.w = add i64 %.017.i, 2                       ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.a
  br i1 %i.x, label %.lr.ph.i, label %cli_hex2str_to.exit

bb.g:                                             ; preds = %.lr.ph.i, %bb.e
  tail call void @free(ptr noundef %i.f) #22
  br label %cli_hex2str_to.exit

cli_hex2str_to.exit:                              ; preds = %bb.f, %bb.d, %bb.c, %bb.g, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @cli_hex2str_to(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.017 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.01316 = phi ptr [ %i.p, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.017 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.e, 4
  %i.n = add i32 %i.k, %i.m
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.01316, i64 1
  store i8 %i.o, ptr %.01316, align 1, !tbaa !8
  %i.q = add i64 %.017, 2                         ; 2 uses
  %i.r = icmp ult i64 %i.q, %2
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.c, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %.lr.ph ], [ -1, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @cli_hex2num(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %0, i32 noundef %i.b) #22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01315 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = shl i32 %.01315, 4
  %i.l = or i32 %i.i, %i.k                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %bb.b
  %.012 = phi i32 [ -1, %bb.b ], [ 0, %.preheader ], [ %.01315, %.lr.ph ], [ %i.l, %bb.c ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @cli_xtoi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 8 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %cli_hex2num.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = and i64 %i.b, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %cli_hex2num.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = shl i32 %.01315.i, 4
  %i.n = or i32 %i.k, %i.m                        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cli_hex2num.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  %i.o = shl i64 %i.b, 32
  %sext = add i64 %i.o, 8589934592
  %i.p = ashr exact i64 %sext, 32
  %i.q = tail call ptr @cli_max_calloc(i64 noundef %i.p, i64 noundef 1) #22 ; 13 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = and i64 %i.b, 2147483647     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %i.u = sub i64 %i.r, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.b, 28
  %n.vec = and i64 %i.b, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !8
  %wide.load35 = load <16 x i8>, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  store <16 x i8> %wide.load, ptr %i.z, align 1, !tbaa !8
  store <16 x i8> %wide.load35, ptr %i.aa, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.b, 2147483644             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index37
  %wide.load38 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %index37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store <4 x i8> %wide.load38, ptr %i.ae, align 1, !tbaa !8
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %wide.trip.count, %n.vec36
  br i1 %cmp.n40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3) #22
  br label %cli_hex2num.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next
  store i8 %i.am, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.3
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !8
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #21 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = and i32 %i.ay, 1
  %.not.i17 = icmp eq i32 %i.az, 0
  br i1 %.not.i17, label %.preheader.i19, label %bb.e

.preheader.i19:                                   ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.lr.ph.preheader.i20, label %cli_hex2num.exit27

.lr.ph.preheader.i20:                             ; preds = %.preheader.i19
  %wide.trip.count.i21 = and i64 %i.ax, 2147483647
  br label %.lr.ph.i22

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.q, i32 noundef %i.ay) #22
  br label %cli_hex2num.exit27

.lr.ph.i22:                                       ; preds = %bb.f, %.lr.ph.preheader.i20
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.preheader.i20 ], [ %indvars.iv.next.i25, %bb.f ] ; 2 uses
  %.01315.i24 = phi i32 [ 0, %.lr.ph.preheader.i20 ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i23
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9  ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %cli_hex2num.exit27, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i22
  %i.bh = shl i32 %.01315.i24, 4
  %i.bi = or i32 %i.bf, %i.bh                     ; 2 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i21
  br i1 %exitcond.not.i26, label %cli_hex2num.exit27, label %.lr.ph.i22

cli_hex2num.exit27:                               ; preds = %.lr.ph.i22, %bb.f, %.preheader.i19, %bb.e
  %.012.i18 = phi i32 [ -1, %bb.e ], [ 0, %.preheader.i19 ], [ %i.bi, %bb.f ], [ %.01315.i24, %.lr.ph.i22 ]
  tail call void @free(ptr noundef %i.q) #22
  br label %cli_hex2num.exit

cli_hex2num.exit:                                 ; preds = %bb.b, %.lr.ph.i, %.preheader.i, %cli_hex2num.exit27, %bb.d
  %.0 = phi i32 [ %.012.i18, %cli_hex2num.exit27 ], [ -1, %bb.d ], [ 0, %.preheader.i ], [ %.01315.i, %.lr.ph.i ], [ %i.n, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cli_str2hex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @cli_max_calloc(i64 noundef %i.c, i64 noundef 1) #22 ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i32 %.018 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !8
  %i.o = load i8, ptr %i.g, align 1, !tbaa !8
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = or disjoint i32 %.018, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  store i8 %i.s, ptr %i.v, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = add i32 %.018, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define range(i32 0, 2) i32 @cli_strbcasestr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %i.a, %i.c
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #21
  %.not = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @cli_chomp(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  switch i8 %i.h, label %.critedge.loopexit.split.loop.exit25 [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.critedge.loopexit.split.loop.exit25:             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.loopexit.split.loop.exit25, %.preheader, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %i.c, %.preheader ], [ %i.j, %.critedge.loopexit.split.loop.exit25 ], [ 0, %.critedge2 ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define ptr @cli_strtok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03855 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03954 = phi i32 [ %.140, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #21
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03954, 1
  %i.i = sext i32 %.03855 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not50 = icmp eq i8 %i.k, 0
  br i1 %.not50, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #21
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %.critedge.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.140 = phi i32 [ %.03954, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03855, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.140, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa53 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  %i.v = phi i8 [ %i.a, %bb.a ], [ %i.r, %.critedge ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa53
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.i, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.x = sext i32 %.038.lcssa to i64
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.e
  %indvars.iv69 = phi i64 [ %i.x, %.lr.ph60.preheader ], [ %indvars.iv.next70, %bb.e ] ; 2 uses
  %i.y = phi i8 [ %i.v, %.lr.ph60.preheader ], [ %i.ad, %bb.e ]
  %.059 = phi i32 [ %.038.lcssa, %.lr.ph60.preheader ], [ %i.ab, %bb.e ]
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.z) #21
  %.not47 = icmp eq ptr %i.aa, null
  br i1 %.not47, label %bb.e, label %._crit_edge61.split.loop.exit80

bb.e:                                             ; preds = %.lr.ph60
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ab = add nsw i32 %.059, 1                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next70
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8   ; 2 uses
  %.not46 = icmp eq i8 %i.ad, 0
  br i1 %.not46, label %._crit_edge61, label %.lr.ph60

._crit_edge61.split.loop.exit80:                  ; preds = %.lr.ph60
  %i.ae = trunc nsw i64 %indvars.iv69 to i32
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.e, %._crit_edge61.split.loop.exit80
  %.0.lcssa.ph = phi i32 [ %i.ae, %._crit_edge61.split.loop.exit80 ], [ %i.ab, %bb.e ] ; 2 uses
  %i.af = icmp eq i32 %.038.lcssa, %.0.lcssa.ph
  br i1 %i.af, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge61
  %i.ag = sub nsw i32 %.0.lcssa.ph, %.038.lcssa   ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @cli_max_malloc(i64 noundef %i.ai) #22 ; 4 uses
  %.not48 = icmp eq ptr %i.aj, null
  br i1 %.not48, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = tail call ptr @strncpy(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.w, i64 noundef %i.ak) #22 ; 0 uses
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %._crit_edge, %bb.h, %bb.g
  %.041 = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.h ], [ null, %bb.g ], [ null, %._crit_edge61 ]
  ret ptr %.041
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @cli_strtokbuf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03549 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03648 = phi i32 [ %.137, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #21
  %.not43 = icmp eq ptr %i.g, null
  br i1 %.not43, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03648, 1
  %i.i = sext i32 %.03549 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not44 = icmp eq i8 %i.k, 0
  br i1 %.not44, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #21
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %.critedge.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.137 = phi i32 [ %.03648, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03549, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.137, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa47 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  %i.v = phi i8 [ %i.a, %bb.a ], [ %i.r, %.critedge ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa47
  %i.x = icmp eq i8 %i.v, 0
  br i1 %i.x, label %bb.g, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %._crit_edge
  %i.y = sext i32 %.035.lcssa to i64
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.e
  %indvars.iv63 = phi i64 [ %i.y, %.lr.ph54.preheader ], [ %indvars.iv.next64, %bb.e ] ; 2 uses
  %i.z = phi i8 [ %i.v, %.lr.ph54.preheader ], [ %i.ae, %bb.e ]
  %.053 = phi i32 [ %.035.lcssa, %.lr.ph54.preheader ], [ %i.ac, %bb.e ]
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.aa) #21
  %.not42 = icmp eq ptr %i.ab, null
  br i1 %.not42, label %bb.e, label %._crit_edge55.split.loop.exit73

bb.e:                                             ; preds = %.lr.ph54
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.ac = add nsw i32 %.053, 1                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next64
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph54

._crit_edge55.split.loop.exit73:                  ; preds = %.lr.ph54
  %i.af = trunc nsw i64 %indvars.iv63 to i32
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %bb.e, %._crit_edge55.split.loop.exit73
  %.0.lcssa.ph = phi i32 [ %i.af, %._crit_edge55.split.loop.exit73 ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ag = icmp eq i32 %.035.lcssa, %.0.lcssa.ph
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge55
  %i.ah = sub nsw i32 %.0.lcssa.ph, %.035.lcssa
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = tail call ptr @strncpy(ptr noundef %3, ptr noundef nonnull %i.w, i64 noundef %i.ai) #22 ; 0 uses
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge, %bb.f
  %.038 = phi ptr [ %3, %bb.f ], [ null, %._crit_edge ], [ null, %._crit_edge55 ]
  ret ptr %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @cli_memstr(ptr nofree noundef readonly %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = add i64 %3, -1
  %.not48 = icmp ult i64 %i.a, %1
  br i1 %.not48, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %3, 1
  %i.d = load i8, ptr %2, align 1, !tbaa !8       ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = sext i8 %i.d to i32
  %i.f = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.e, i64 noundef %1) #21
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %i.i = icmp eq i8 %i.d, %i.h                    ; 2 uses
  %. = select i1 %i.i, i64 2, i64 1
  %.44 = select i1 %i.i, i64 1, i64 2             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = sub i64 %1, %3
  %i.l = add i64 %3, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.03449 = phi i64 [ 0, %bb.e ], [ %.1, %bb.i ]  ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 %.03449    ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %.not41 = icmp eq i8 %i.h, %i.o
  br i1 %.not41, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.m, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.d, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.r, i64 %i.l)
  %.not42 = icmp eq i32 %bcmp, 0
  br i1 %.not42, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.033.pn = phi i64 [ %., %bb.f ], [ %.44, %bb.h ], [ %.44, %bb.g ]
  %.1 = add i64 %.033.pn, %.03449                 ; 2 uses
  %.not = icmp ugt i64 %.1, %i.k
  br i1 %.not, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.b, %bb.a, %bb.d
  %.035 = phi ptr [ %0, %bb.b ], [ null, %bb.a ], [ %i.f, %bb.d ], [ null, %bb.i ], [ %i.m, %bb.h ]
  ret ptr %.035
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @cli_strrcpy(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5) #22
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.e, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.c, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 1
  store i8 %i.d, ptr %.07, align 1, !tbaa !8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %.07, %.preheader ]
  ret ptr %.08
}

; Function Attrs: nofree nounwind memory(read) uwtable
define noundef ptr @__cli_strcasestr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.d = tail call ptr @__ctype_tolower_loc() #23
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = load i8, ptr %1, align 1, !tbaa !8
  %i.g = sext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.a, align 1, !tbaa !8
  %i.k = tail call ptr @__ctype_toupper_loc() #23
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.g
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.q, align 1, !tbaa !8
  %i.r = call i64 @strcspn(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not21 = icmp eq i64 %i.r, %i.b
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02022 = phi i64 [ %i.y, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.02022 ; 3 uses
  %i.t = tail call i32 @strncasecmp(ptr noundef nonnull %i.s, ptr noundef nonnull %1, i64 noundef %i.c) #21
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = call i64 @strcspn(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #21
  %i.x = add i64 %.02022, 1
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %.not = icmp eq i64 %i.y, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @__cli_strndup(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strnlen(ptr noundef nonnull %0, i64 noundef %1) #21 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 4 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @__cli_strnlen(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not8 = icmp eq i64 %1, 0
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.05
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ %.05, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @__cli_strnstr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.014 = phi i64 [ %2, %bb.b ], [ %i.h, %bb.g ]  ; 2 uses
  %.013 = phi ptr [ %0, %bb.b ], [ %i.i, %bb.g ]
  %i.d = icmp eq i64 %.014, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.e = icmp eq i64 %i.h, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.in = phi i64 [ %i.h, %bb.d ], [ %.014, %bb.c ]
  %.142 = phi ptr [ %i.i, %bb.d ], [ %.013, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.142, align 1, !tbaa !8    ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.h = add i64 %.in, -1                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.142, i64 1 ; 3 uses
  %.not20 = icmp eq i8 %i.f, %i.b
  br i1 %.not20, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ugt i64 %i.c, %i.h
  br i1 %i.j, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @strncmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, i64 noundef %i.c) #21
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.c, %.lr.ph, %bb.d, %bb.a
  %.0 = phi ptr [ null, %.lr.ph ], [ %0, %bb.a ], [ null, %bb.d ], [ %.142, %bb.g ], [ null, %bb.f ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i8 %1 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01624 = phi i64 [ 0, %.lr.ph ], [ %i.b, %bb.c ] ; 4 uses
  %.01823 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.b = add nuw i64 %.01624, 1                   ; 5 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.01624
  store ptr %.01823, ptr %i.c, align 8, !tbaa !23
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01823, i32 noundef %i.a) #21 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, %2
  br i1 %i.e, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %.preheader
  %i.f = shl i64 %.01624, 3
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.h = shl i64 %2, 3
  %i.i = add i64 %i.h, -8
  %i.j = shl i64 %.01624, 3
  %i.k = sub i64 %i.i, %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %.lr.ph26.preheader, %bb.a, %.preheader
  %.017 = phi i64 [ %i.b, %.preheader ], [ %i.b, %.lr.ph26.preheader ], [ 0, %bb.a ], [ %2, %bb.c ]
  ret i64 %.017
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strntol(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.thread167, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #23
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.084 = phi ptr [ %i.k, %bb.c ], [ %0, %.preheader ] ; 3 uses
  %i.f = load i8, ptr %.084, align 1, !tbaa !8    ; 4 uses
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.e
  br i1 %i.l, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.185 = phi ptr [ %i.k, %bb.c ], [ %.084, %bb.b ] ; 6 uses
  %.not100 = icmp ult ptr %.185, %i.e
  br i1 %.not100, label %bb.d, label %.thread167

bb.d:                                             ; preds = %.critedge
  %.not105 = icmp eq i8 %i.f, 45                  ; 3 uses
  br i1 %.not105, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.185, i64 1 ; 2 uses
  %i.n = load i8, ptr %.185, align 1, !tbaa !8
  %.not102 = icmp ult ptr %i.m, %i.e
  br i1 %.not102, label %bb.h, label %.thread167

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.f, 43
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.185, i64 1 ; 2 uses
  %i.q = load i8, ptr %.185, align 1, !tbaa !8
  %.not101 = icmp ult ptr %i.p, %i.e
  br i1 %.not101, label %bb.h, label %.thread167

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.286 = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %.185, %bb.f ] ; 5 uses
  %.078.in = phi i8 [ %i.n, %bb.e ], [ %i.q, %bb.g ], [ %i.f, %bb.f ]
  %.078.in.fr = freeze i8 %.078.in
  %i.r = and i32 %3, -17
  %or.cond = icmp eq i32 %i.r, 0
  %i.s = icmp eq i8 %.078.in.fr, 48               ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.s
  br i1 %or.cond3, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.286, i64 1 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.e
  br i1 %i.u, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.t, align 1, !tbaa !8
  switch i8 %i.v, label %.thread [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.286, i64 2 ; 2 uses
  %.not103 = icmp ult ptr %i.w, %i.e
  br i1 %.not103, label %.thread127, label %.thread167

.thread:                                          ; preds = %bb.j, %bb.i
  %i.x = icmp eq i32 %3, 0
  br i1 %i.x, label %bb.m, label %.thread127

bb.l:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %3, 0
  %. = select i1 %i.s, i32 8, i32 10
  br i1 %i.y, label %bb.m, label %.thread127

bb.m:                                             ; preds = %bb.l, %.thread
  %i.z = phi i32 [ %., %bb.l ], [ 8, %.thread ]
  br label %.thread127

.thread127:                                       ; preds = %bb.l, %bb.k, %.thread, %bb.m
  %.3118130 = phi ptr [ %.286, %bb.m ], [ %i.w, %bb.k ], [ %.286, %.thread ], [ %.286, %bb.l ] ; 4 uses
  %i.aa = phi i32 [ %i.z, %bb.m ], [ 16, %bb.k ], [ %3, %.thread ], [ %3, %bb.l ] ; 2 uses
  %i.ab = select i1 %.not105, i64 -9223372036854775808, i64 9223372036854775807 ; 3 uses
  %i.ac = sext i32 %i.aa to i64                   ; 3 uses
  %i.ad = urem i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = udiv i64 %i.ab, %i.ac                   ; 3 uses
  %i.ag = icmp ult ptr %.3118130, %i.e
  br i1 %i.ag, label %.lr.ph.preheader, label %.thread167

.lr.ph.preheader:                                 ; preds = %.thread127
  %.3118130148 = ptrtoaddr ptr %.3118130 to i64
  %i.ah = add i64 %1, %i.a
  %i.ai = sub i64 %i.ah, %.3118130148
  %scevgep = getelementptr i8, ptr %.3118130, i64 %i.ai ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.075137 = phi i32 [ %.176, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.081136 = phi i64 [ %.182, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.4135 = phi ptr [ %i.bb, %bb.u ], [ %.3118130, %.lr.ph.preheader ] ; 4 uses
  %i.aj = load i8, ptr %.4135, align 1, !tbaa !8  ; 2 uses
  %i.ak = sext i8 %i.aj to i32                    ; 2 uses
  %i.al = sext i8 %i.aj to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !10
  %i.ao = zext i16 %i.an to i32                   ; 3 uses
  %i.ap = and i32 %i.ao, 2048
  %.not106 = icmp eq i32 %i.ap, 0
  br i1 %.not106, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.aq = add nsw i32 %i.ak, -48
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.ar = and i32 %i.ao, 1024
  %.not107 = icmp eq i32 %i.ar, 0
  br i1 %.not107, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %i.ao, 256
  %.not108 = icmp eq i32 %i.as, 0
  %.neg = select i1 %.not108, i32 -87, i32 -55
  %i.at = add nsw i32 %.neg, %i.ak
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.280 = phi i32 [ %i.aq, %bb.n ], [ %i.at, %bb.p ] ; 3 uses
  %.not109 = icmp slt i32 %.280, %i.aa
  br i1 %.not109, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.au = icmp slt i32 %.075137, 0
  %i.av = icmp ugt i64 %.081136, %i.af
  %or.cond112 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond112, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = icmp eq i64 %.081136, %i.af
  %i.ax = icmp sgt i32 %.280, %i.ae
  %or.cond113 = and i1 %i.aw, %i.ax
  br i1 %or.cond113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = mul i64 %.081136, %i.ac
  %i.az = sext i32 %.280 to i64
  %i.ba = add i64 %i.ay, %i.az
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.182 = phi i64 [ %i.ba, %bb.t ], [ %i.af, %bb.s ], [ %.081136, %bb.r ] ; 2 uses
  %.176 = phi i32 [ 1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.4135, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bb, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.o, %bb.q
  %.4.lcssa = phi ptr [ %.4135, %bb.q ], [ %scevgep, %bb.u ], [ %.4135, %bb.o ] ; 2 uses
  %.081.lcssa = phi i64 [ %.081136, %bb.q ], [ %.182, %bb.u ], [ %.081136, %bb.o ] ; 2 uses
  %.075.lcssa = phi i32 [ %.075137, %bb.q ], [ %.176, %bb.u ], [ %.075137, %bb.o ] ; 2 uses
  %i.bc = icmp slt i32 %.075.lcssa, 0
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.bd = tail call ptr @__errno_location() #23
  store i32 34, ptr %i.bd, align 4, !tbaa !9
  br label %.thread167

bb.w:                                             ; preds = %._crit_edge
  %i.be = sub i64 0, %.081.lcssa
  %spec.select = select i1 %.not105, i64 %i.be, i64 %.081.lcssa
  %i.bf = icmp eq i32 %.075.lcssa, 0
  %spec.select174 = select i1 %i.bf, ptr %0, ptr %.4.lcssa
  br label %.thread167

.thread167:                                       ; preds = %bb.w, %.thread127, %bb.v, %bb.k, %bb.g, %bb.e, %.critedge, %bb.a
  %.283 = phi i64 [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.k ], [ %i.ab, %bb.v ], [ 0, %bb.g ], [ %spec.select, %bb.w ], [ 0, %.thread127 ]
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %.critedge ], [ %0, %bb.e ], [ %0, %bb.k ], [ %.4.lcssa, %bb.v ], [ %0, %bb.g ], [ %spec.select174, %bb.w ], [ %0, %.thread127 ]
  %.not110 = icmp eq ptr %2, null
  br i1 %.not110, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread167
  store ptr %.2, ptr %2, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread167
  ret i64 %.283
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @cli_strntoul(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = tail call ptr @__ctype_b_loc() #23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.073 = phi ptr [ %0, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.e = load i8, ptr %.073, align 1, !tbaa !8    ; 4 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = and i16 %i.h, 8192
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 3 uses
  %i.k = icmp ult ptr %i.j, %i.d
  br i1 %i.k, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.174 = phi ptr [ %i.j, %bb.c ], [ %.073, %bb.b ] ; 6 uses
  %.not95 = icmp ult ptr %.174, %i.d
  br i1 %.not95, label %bb.d, label %.thread161

bb.d:                                             ; preds = %.critedge
  %.not104 = icmp eq i8 %i.e, 45                  ; 2 uses
  br i1 %.not104, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.174, i64 1 ; 2 uses
  %i.m = load i8, ptr %.174, align 1, !tbaa !8
  %.not97 = icmp ult ptr %i.l, %i.d
  br i1 %.not97, label %bb.h, label %.thread161

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i8 %i.e, 43
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.174, i64 1 ; 2 uses
  %i.p = load i8, ptr %.174, align 1, !tbaa !8
  %.not96 = icmp ult ptr %i.o, %i.d
  br i1 %.not96, label %bb.h, label %.thread161

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.076.in = phi i8 [ %i.m, %bb.e ], [ %i.p, %bb.g ], [ %i.e, %bb.f ]
  %.275 = phi ptr [ %i.l, %bb.e ], [ %i.o, %bb.g ], [ %.174, %bb.f ] ; 5 uses
  %.076.in.fr = freeze i8 %.076.in
  %i.q = and i32 %3, -17
  %or.cond = icmp eq i32 %i.q, 0
  %i.r = icmp eq i8 %.076.in.fr, 48               ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.r
  br i1 %or.cond3, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.275, i64 1 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.d
  br i1 %i.t, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  switch i8 %i.u, label %.thread [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.275, i64 2 ; 2 uses
  %.not98 = icmp ult ptr %i.v, %i.d
  br i1 %.not98, label %.thread122, label %.thread161

.thread:                                          ; preds = %bb.j, %bb.i
  %i.w = icmp eq i32 %3, 0
  br i1 %i.w, label %bb.m, label %.thread122

bb.l:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %3, 0
  %. = select i1 %i.r, i32 8, i32 10
  br i1 %i.x, label %bb.m, label %.thread122

bb.m:                                             ; preds = %bb.l, %.thread
  %i.y = phi i32 [ %., %bb.l ], [ 8, %.thread ]
  br label %.thread122

.thread122:                                       ; preds = %bb.l, %bb.k, %.thread, %bb.m
  %.3113125 = phi ptr [ %.275, %bb.m ], [ %i.v, %bb.k ], [ %.275, %.thread ], [ %.275, %bb.l ] ; 4 uses
  %i.z = phi i32 [ %i.y, %bb.m ], [ 16, %bb.k ], [ %3, %.thread ], [ %3, %bb.l ] ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = udiv i64 -1, %i.aa                      ; 3 uses
  %i.ac = urem i64 -1, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp ult ptr %.3113125, %i.d
  br i1 %i.ae, label %.lr.ph.preheader, label %.thread161

.lr.ph.preheader:                                 ; preds = %.thread122
  %.3113125143 = ptrtoaddr ptr %.3113125 to i64
  %i.af = add i64 %1, %i.a
  %i.ag = sub i64 %i.af, %.3113125143
  %scevgep = getelementptr i8, ptr %.3113125, i64 %i.ag ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.070132 = phi i32 [ %.171, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.4131 = phi ptr [ %i.az, %bb.u ], [ %.3113125, %.lr.ph.preheader ] ; 4 uses
  %.079130 = phi i64 [ %.180, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.ah = load i8, ptr %.4131, align 1, !tbaa !8  ; 2 uses
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  %i.aj = sext i8 %i.ah to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !10
  %i.am = zext i16 %i.al to i32                   ; 3 uses
  %i.an = and i32 %i.am, 2048
  %.not99 = icmp eq i32 %i.an, 0
  br i1 %.not99, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ao = add nsw i32 %i.ai, -48
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.ap = and i32 %i.am, 1024
  %.not100 = icmp eq i32 %i.ap, 0
  br i1 %.not100, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = and i32 %i.am, 256
  %.not101 = icmp eq i32 %i.aq, 0
  %.neg = select i1 %.not101, i32 -87, i32 -55
  %i.ar = add nsw i32 %.neg, %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.278 = phi i32 [ %i.ao, %bb.n ], [ %i.ar, %bb.p ] ; 3 uses
  %.not102 = icmp slt i32 %.278, %i.z
  br i1 %.not102, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.as = icmp slt i32 %.070132, 0
  %i.at = icmp ugt i64 %.079130, %i.ab
  %or.cond107 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond107, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = icmp eq i64 %.079130, %i.ab
  %i.av = icmp sgt i32 %.278, %i.ad
  %or.cond108 = and i1 %i.au, %i.av
  br i1 %or.cond108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = mul i64 %.079130, %i.aa
  %i.ax = sext i32 %.278 to i64
  %i.ay = add i64 %i.aw, %i.ax
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.180 = phi i64 [ %i.ay, %bb.t ], [ %i.ab, %bb.s ], [ %.079130, %bb.r ] ; 2 uses
  %.171 = phi i32 [ 1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.4131, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.az, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.o, %bb.q
  %.079.lcssa = phi i64 [ %.079130, %bb.q ], [ %.180, %bb.u ], [ %.079130, %bb.o ] ; 2 uses
  %.4.lcssa = phi ptr [ %.4131, %bb.q ], [ %scevgep, %bb.u ], [ %.4131, %bb.o ] ; 2 uses
  %.070.lcssa = phi i32 [ %.070132, %bb.q ], [ %.171, %bb.u ], [ %.070132, %bb.o ] ; 2 uses
  %i.ba = icmp slt i32 %.070.lcssa, 0
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.bb = tail call ptr @__errno_location() #23
  store i32 34, ptr %i.bb, align 4, !tbaa !9
  br label %.thread161

bb.w:                                             ; preds = %._crit_edge
  %i.bc = sub i64 0, %.079.lcssa
  %spec.select = select i1 %.not104, i64 %i.bc, i64 %.079.lcssa
  %i.bd = icmp eq i32 %.070.lcssa, 0
  %spec.select168 = select i1 %i.bd, ptr %0, ptr %.4.lcssa
  br label %.thread161

.thread161:                                       ; preds = %bb.w, %.thread122, %bb.v, %bb.k, %bb.g, %bb.e, %.critedge
  %.281 = phi i64 [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.k ], [ -1, %bb.v ], [ 0, %bb.g ], [ %spec.select, %bb.w ], [ 0, %.thread122 ]
  %.2 = phi ptr [ %0, %.critedge ], [ %0, %bb.e ], [ %0, %bb.k ], [ %.4.lcssa, %bb.v ], [ %0, %bb.g ], [ %spec.select168, %bb.w ], [ %0, %.thread122 ]
  %.not105 = icmp eq ptr %2, null
  br i1 %.not105, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread161
  store ptr %.2, ptr %2, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread161
  ret i64 %.281
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 28) i32 @cli_strntol_wrap(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %4, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #23    ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.f = call i64 @cli_strntol(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3) ; 2 uses
  %i.g = add i64 %i.f, -9223372036854775807
  %or.cond5 = icmp ult i64 %i.g, 2
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp ne i32 %2, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = icmp ult ptr %i.j, %i.l
  %or.cond25 = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1, !tbaa !8
  %.not23 = icmp eq i8 %i.n, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.f, ptr %4, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 27, %bb.a ], [ 27, %bb.c ], [ 27, %bb.d ], [ 0, %bb.g ], [ 27, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 28) i32 @cli_strntoul_wrap(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = icmp ne i64 %1, 0
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %4, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #23    ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !9
  %i.f = call i64 @cli_strntoul(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef %3) ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.h, 34
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp ne i32 %2, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.m = icmp ult ptr %i.j, %i.l
  %or.cond22 = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1, !tbaa !8
  %.not20 = icmp eq i8 %i.n, 0
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.f, ptr %4, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 27, %bb.a ], [ 27, %bb.c ], [ 27, %bb.d ], [ 0, %bb.g ], [ 27, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @cli_ldbtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not84 = icmp eq i64 %2, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a, %.split.us
  %.03578 = phi i64 [ %i.v, %.split.us ], [ 0, %bb.a ] ; 4 uses
  %.03877 = phi i64 [ %i.b, %.split.us ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.03578 ; 4 uses
  %i.b = add nuw i64 %.03877, 1                   ; 7 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03877
  store ptr %i.a, ptr %i.c, align 8, !tbaa !23
  %i.d = load i8, ptr %i.a, align 1, !tbaa !8     ; 3 uses
  %.not53 = icmp eq i8 %i.d, 0
  br i1 %.not53, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph80
  %.not85 = icmp ult i64 %.03877, %4
  br i1 %.not85, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not118 = icmp eq i8 %i.d, %1
  br i1 %.not118, label %.split.us, label %.lr.ph63.split

bb.b:                                             ; preds = %.lr.ph63.split
  %.not86 = icmp eq i8 %i.g, %1
  br i1 %.not86, label %.split.us.loopexit, label %.lr.ph63.split

.lr.ph63.split:                                   ; preds = %.lr.ph.split.us, %bb.b
  %.13654.us62 = phi i64 [ %i.e, %bb.b ], [ %.03578, %.lr.ph.split.us ]
  %i.e = add i64 %.13654.us62, 1                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %.not.us = icmp eq i8 %i.g, 0
  br i1 %.not.us, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph80, %bb.e, %.lr.ph63.split
  %i.h = icmp ult i64 %i.b, %2
  br i1 %i.h, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.i = shl i64 %i.b, 3
  %scevgep111 = getelementptr i8, ptr %3, i64 %i.i
  %i.j = sub nuw i64 %2, %i.b
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep111, i8 0, i64 %i.k, i1 false), !tbaa !23
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.l = phi i8 [ %i.t, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.m = phi ptr [ %i.s, %bb.e ], [ %i.a, %.lr.ph ] ; 2 uses
  %.155 = phi i1 [ %.2, %bb.e ], [ false, %.lr.ph ] ; 3 uses
  %.13654 = phi i64 [ %i.r, %bb.e ], [ %.03578, %.lr.ph ] ; 3 uses
  %i.n = icmp ne i8 %i.l, %1
  %or.cond45.not = or i1 %.155, %i.n
  br i1 %or.cond45.not, label %bb.c, label %.split.us

bb.c:                                             ; preds = %.lr.ph.split
  %.not87 = icmp eq i64 %.13654, 0
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.m, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %.not43 = icmp ne i8 %i.p, 92
  %i.q = icmp eq i8 %i.l, 47
  %or.cond46 = and i1 %i.q, %.not43
  %spec.select = xor i1 %.155, %or.cond46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i1 [ %spec.select, %bb.d ], [ %.155, %bb.c ]
  %i.r = add i64 %.13654, 1                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %.preheader, label %.lr.ph.split

.split.us.loopexit:                               ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.split.us.loopexit, %.lr.ph.split.us
  %.us-phi = phi i64 [ %.03578, %.lr.ph.split.us ], [ %i.e, %.split.us.loopexit ], [ %.13654, %.lr.ph.split ]
  %.us-phi59 = phi ptr [ %i.a, %.lr.ph.split.us ], [ %i.u, %.split.us.loopexit ], [ %i.m, %.lr.ph.split ]
  store i8 0, ptr %.us-phi59, align 1, !tbaa !8
  %i.v = add i64 %.us-phi, 1
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph80

.loopexit:                                        ; preds = %.split.us, %.lr.ph83.preheader, %bb.a, %.preheader
  %.039 = phi i64 [ %i.b, %.preheader ], [ %i.b, %.lr.ph83.preheader ], [ 0, %bb.a ], [ %2, %.split.us ]
  ret i64 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @cli_isnumber(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 2 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !8      ; 3 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = zext nneg i8 %i.b to i64
  %memchr.bounds = icmp ugt i8 %i.b, 63
  %i.e = shl nuw i64 1, %i.d
  %i.f = and i64 %i.e, 287948901175001089
  %memchr.bits = icmp eq i64 %i.f, 0
  %memchr6.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr6.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a
  %.03 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.b ]
  ret i32 %.03
}

; Function Attrs: nounwind uwtable
define ptr @cli_unescape(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 5 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call ptr @cli_max_malloc(i64 noundef %i.b) #22 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not84 = icmp eq i64 %i.a, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.7) #22
  br label %bb.v

.lr.ph:                                           ; preds = %.preheader, %bb.u
  %.06482 = phi i64 [ %.1, %bb.u ], [ 0, %.preheader ] ; 4 uses
  %.06581 = phi i64 [ %i.dc, %bb.u ], [ 0, %.preheader ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.06581 ; 6 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.f = icmp eq i8 %i.e, 37
  br i1 %i.f, label %bb.c, label %bb.t

bb.c:                                             ; preds = %.lr.ph
  %i.g = add i64 %.06581, 5                       ; 3 uses
  %.not71 = icmp ult i64 %i.g, %i.a
  br i1 %.not71, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %.not72 = icmp eq i8 %i.i, 117
  br i1 %.not72, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__ctype_b_loc() #23
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = and i16 %i.p, 4096
  %.not73 = icmp eq i16 %i.q, 0
  br i1 %.not73, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.d, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !10
  %i.w = and i16 %i.v, 4096
  %.not74 = icmp eq i16 %i.w, 0
  br i1 %.not74, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.d, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 2 uses
  %i.z = sext i8 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !10
  %i.ac = and i16 %i.ab, 4096
  %.not75 = icmp eq i16 %i.ac, 0
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !10
  %i.ai = and i16 %i.ah, 4096
  %.not76 = icmp eq i16 %i.ai, 0
  br i1 %.not76, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = add i64 %.06581, 2                      ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %i.a
  br i1 %i.ak, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @__ctype_b_loc() #23
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8   ; 2 uses
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.as = and i16 %i.ar, 4096
  %.not77 = icmp eq i16 %i.as, 0
  br i1 %.not77, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8   ; 2 uses
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !10
  %i.ay = and i16 %i.ax, 4096
  %.not78 = icmp eq i16 %i.ay, 0
  br i1 %.not78, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = zext i8 %i.ao to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %spec.select = shl i32 %i.bc, 4
  %i.bd = zext i8 %i.au to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = or i32 %spec.select, %i.bf
  %i.bh = trunc i32 %i.bg to i8
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.bi = zext i8 %i.m to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !9
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %spec.select80 = shl i32 %i.bl, 12
  %i.bm = zext i8 %i.s to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bq = shl i32 %i.bp, 8
  %i.br = or i32 %i.bq, %spec.select80
  %i.bs = zext i8 %i.y to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bw = shl i32 %i.bv, 4
  %i.bx = zext i8 %i.ae to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !9
  %i.ca = or i32 %i.br, %i.bz
  %i.cb = or i32 %i.ca, %i.bw                     ; 6 uses
  %i.cc = trunc i32 %i.cb to i16                  ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %.06482 ; 6 uses
  %.not.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.cd, align 1, !tbaa !8
  br label %output_utf8.exit

bb.o:                                             ; preds = %bb.m
  %i.ce = icmp ult i16 %i.cc, 128
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = trunc i32 %i.cb to i8
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !8
  br label %output_utf8.exit

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp ult i16 %i.cc, 2048
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = lshr i32 %i.cb, 6
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = or disjoint i8 %i.cj, -64
  store i8 %i.ck, ptr %i.cd, align 1, !tbaa !8
  %i.cl = trunc i32 %i.cb to i8
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, -128
  store i8 %i.cn, ptr %i.ch, align 1, !tbaa !8
  br label %output_utf8.exit

bb.s:                                             ; preds = %bb.q
  %i.co = lshr i16 %i.cc, 12
  %i.cp = trunc nuw nsw i16 %i.co to i8
  %i.cq = or disjoint i8 %i.cp, -32
  store i8 %i.cq, ptr %i.cd, align 1, !tbaa !8
  %i.cr = lshr i32 %i.cb, 6
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = and i8 %i.cs, 63
  %i.cu = or disjoint i8 %i.ct, -128
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.cu, ptr %i.ch, align 1, !tbaa !8
  %i.cw = trunc i32 %i.cb to i8
  %i.cx = and i8 %i.cw, 63
  %i.cy = or disjoint i8 %i.cx, -128
  store i8 %i.cy, ptr %i.cv, align 1, !tbaa !8
  br label %output_utf8.exit

output_utf8.exit:                                 ; preds = %bb.n, %bb.p, %bb.r, %bb.s
  %.0.i = phi i64 [ 1, %bb.p ], [ 2, %bb.r ], [ 3, %bb.s ], [ 1, %bb.n ]
  %i.cz = add i64 %.0.i, %.06482
  br label %bb.u

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph
  %.166 = phi i64 [ %i.aj, %bb.l ], [ %.06581, %bb.k ], [ %.06581, %bb.j ], [ %.06581, %bb.i ], [ %.06581, %.lr.ph ]
  %.063 = phi i8 [ %i.bh, %bb.l ], [ 37, %bb.k ], [ 37, %bb.j ], [ 37, %bb.i ], [ %i.e, %.lr.ph ]
  %spec.store.select = tail call i8 @llvm.umax.i8(i8 %.063, i8 1)
  %i.da = add i64 %.06482, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %.06482
  store i8 %spec.store.select, ptr %i.db, align 1, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %output_utf8.exit
  %.2 = phi i64 [ %.166, %bb.t ], [ %i.g, %output_utf8.exit ]
  %.1 = phi i64 [ %i.da, %bb.t ], [ %i.cz, %output_utf8.exit ] ; 2 uses
  %i.dc = add nuw i64 %.2, 1                      ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.a
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %.064.lcssa = phi i64 [ 0, %.preheader ], [ %.1, %bb.u ] ; 2 uses
  %i.de = add i64 %.064.lcssa, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 %.064.lcssa
  store i8 0, ptr %i.df, align 1, !tbaa !8
  %i.dg = tail call ptr @cli_max_realloc_or_free(ptr noundef nonnull %i.c, i64 noundef %i.de) #22
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi ptr [ %i.dg, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @cli_max_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @cli_textbuffer_append_normalize(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %textbuffer_ensure_capacity.exit.thread65, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %textbuffer_ensure_capacity.exit
  %.05269 = phi i64 [ 0, %.lr.ph ], [ %i.cu, %textbuffer_ensure_capacity.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.05269 ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = icmp eq i8 %i.d, 92
  br i1 %i.e, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %.05269, 1                   ; 11 uses
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.i, label %bb.w [
    i8 48, label %bb.x
    i8 98, label %bb.e
    i8 116, label %bb.f
    i8 110, label %bb.g
    i8 118, label %bb.h
    i8 102, label %bb.i
    i8 114, label %bb.j
    i8 120, label %bb.k
    i8 117, label %bb.m
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  br label %bb.x

bb.g:                                             ; preds = %bb.d
  br label %bb.x

bb.h:                                             ; preds = %bb.d
  br label %bb.x

bb.i:                                             ; preds = %bb.d
  br label %bb.x

bb.j:                                             ; preds = %bb.d
  br label %bb.x

bb.k:                                             ; preds = %bb.d
  %i.j = add i64 %.05269, 3                       ; 4 uses
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr i8, ptr %i.c, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %spec.select = shl i32 %i.q, 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = or i32 %spec.select, %i.v
  %i.x = trunc i32 %i.w to i8
  br label %bb.x

bb.m:                                             ; preds = %bb.d
  %i.y = add i64 %.05269, 5                       ; 3 uses
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %i.c, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %spec.select68 = shl i32 %i.af, 12
  %i.ag = getelementptr i8, ptr %i.c, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  %i.am = shl i32 %i.al, 8
  %i.an = or i32 %i.am, %spec.select68
  %i.ao = getelementptr i8, ptr %i.c, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  %i.au = shl i32 %i.at, 4
  %i.av = or i32 %i.an, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.bc = add i64 %i.bb, 4                        ; 2 uses
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.be = icmp ugt i64 %i.bc, %i.bd
  %.pre = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = add i64 %i.bd, 4096
  %..i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.bf)
  %i.bg = and i64 %..i, 4294967295                ; 2 uses
  %i.bh = tail call ptr @cli_max_realloc(ptr noundef %.pre, i64 noundef %i.bg) #22 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %textbuffer_ensure_capacity.exit.thread65, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !31
  store ptr %i.bh, ptr %0, align 8, !tbaa !32
  %.pre74 = load i64, ptr %i.a, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %.thread.i, %bb.n
  %i.bi = phi i64 [ %.pre74, %.thread.i ], [ %i.bb, %bb.n ]
  %i.bj = phi ptr [ %i.bh, %.thread.i ], [ %.pre, %bb.n ]
  %i.bk = or i32 %i.av, %i.ba                     ; 6 uses
  %i.bl = trunc i32 %i.bk to i16                  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 6 uses
  %.not.i60 = icmp eq i16 %i.bl, 0
  br i1 %.not.i60, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bm, align 1, !tbaa !8
  br label %output_utf8.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = icmp ult i16 %i.bl, 128
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i32 %i.bk to i8
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !8
  br label %output_utf8.exit

bb.t:                                             ; preds = %bb.r
  %i.bp = icmp ult i16 %i.bl, 2048
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = lshr i32 %i.bk, 6
  %i.bs = trunc i32 %i.br to i8
  %i.bt = or disjoint i8 %i.bs, -64
  store i8 %i.bt, ptr %i.bm, align 1, !tbaa !8
  %i.bu = trunc i32 %i.bk to i8
  %i.bv = and i8 %i.bu, 63
  %i.bw = or disjoint i8 %i.bv, -128
  store i8 %i.bw, ptr %i.bq, align 1, !tbaa !8
  br label %output_utf8.exit

bb.v:                                             ; preds = %bb.t
  %i.bx = lshr i16 %i.bl, 12
  %i.by = trunc nuw nsw i16 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, -32
  store i8 %i.bz, ptr %i.bm, align 1, !tbaa !8
  %i.ca = lshr i32 %i.bk, 6
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = and i8 %i.cb, 63
  %i.cd = or disjoint i8 %i.cc, -128
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %i.cd, ptr %i.bq, align 1, !tbaa !8
  %i.cf = trunc i32 %i.bk to i8
  %i.cg = and i8 %i.cf, 63
  %i.ch = or disjoint i8 %i.cg, -128
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !8
  br label %output_utf8.exit

output_utf8.exit:                                 ; preds = %bb.q, %bb.s, %bb.u, %bb.v
  %.0.i = phi i64 [ 1, %bb.s ], [ 2, %bb.u ], [ 3, %bb.v ], [ 1, %bb.q ]
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !29
  %i.cj = add i64 %i.ci, %.0.i
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !29
  br label %textbuffer_ensure_capacity.exit

bb.w:                                             ; preds = %bb.d
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %bb.l, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.w, %bb.m, %bb.c, %bb.b
  %.254 = phi i64 [ %i.f, %bb.w ], [ %.05269, %bb.b ], [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ %i.f, %bb.d ], [ %i.f, %bb.m ], [ %.05269, %bb.c ], [ %i.j, %bb.l ], [ %i.j, %bb.k ]
  %.151 = phi i8 [ %i.i, %bb.w ], [ %i.d, %bb.b ], [ 8, %bb.e ], [ 9, %bb.f ], [ 10, %bb.g ], [ 11, %bb.h ], [ 12, %bb.i ], [ 13, %bb.j ], [ 0, %bb.d ], [ 92, %bb.m ], [ 92, %bb.c ], [ %i.x, %bb.l ], [ 92, %bb.k ]
  %spec.store.select = tail call i8 @llvm.umax.i8(i8 %.151, i8 1)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !32  ; 2 uses
  br i1 %i.cn, label %bb.y, label %textbuffer_putc.exit

bb.y:                                             ; preds = %bb.x
  %i.co = add i64 %i.cm, 4096
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.co)
  %i.cp = and i64 %..i.i, 4294967295              ; 2 uses
  %i.cq = tail call ptr @cli_max_realloc(ptr noundef %.pre.i, i64 noundef %i.cp) #22 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %textbuffer_ensure_capacity.exit.thread65, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !31
  store ptr %i.cq, ptr %0, align 8, !tbaa !32
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %.pre6.i = add i64 %.pre5.i, 1
  br label %textbuffer_putc.exit

textbuffer_putc.exit:                             ; preds = %bb.x, %.thread.i.i
  %.pre-phi.i = phi i64 [ %.pre6.i, %.thread.i.i ], [ %i.cl, %bb.x ]
  %i.cr = phi i64 [ %.pre5.i, %.thread.i.i ], [ %i.ck, %bb.x ]
  %i.cs = phi ptr [ %i.cq, %.thread.i.i ], [ %.pre.i, %bb.x ]
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 %spec.store.select, ptr %i.ct, align 1, !tbaa !8
  br label %textbuffer_ensure_capacity.exit

textbuffer_ensure_capacity.exit:                  ; preds = %output_utf8.exit, %textbuffer_putc.exit
  %.355 = phi i64 [ %.254, %textbuffer_putc.exit ], [ %i.y, %output_utf8.exit ]
  %i.cu = add i64 %.355, 1                        ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %2
  br i1 %i.cv, label %bb.b, label %textbuffer_ensure_capacity.exit.thread65

textbuffer_ensure_capacity.exit.thread65:         ; preds = %textbuffer_ensure_capacity.exit, %bb.o, %bb.y, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ -1, %bb.o ], [ -1, %bb.y ], [ 0, %textbuffer_ensure_capacity.exit ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @cli_hexnibbles(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = trunc i32 %i.f to i8
  store i8 %i.h, ptr %i.b, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_basename(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #22
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %.045 = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  %i.e = icmp sgt i64 %1, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.0 = getelementptr inbounds i8, ptr %.047, i64 -1 ; 3 uses
  %i.f = icmp ugt ptr %.0, %0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.047 = phi ptr [ %.0, %bb.d ], [ %.045, %bb.c ] ; 5 uses
  %.pn46 = phi ptr [ %.047, %bb.d ], [ %i.d, %bb.c ]
  %i.g = load i8, ptr %.047, align 1, !tbaa !8    ; 2 uses
  %i.h = icmp eq i8 %i.g, 47
  %i.i = icmp eq i8 %i.g, 92
  %or.cond5 = and i1 %3, %i.i
  %or.cond40 = or i1 %i.h, %or.cond5
  br i1 %or.cond40, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.pn.lcssa = phi ptr [ %i.d, %bb.c ], [ %.047, %bb.d ], [ %.pn46, %.lr.ph ]
  %.0.lcssa = phi ptr [ %.045, %bb.c ], [ %.0, %bb.d ], [ %.047, %.lr.ph ]
  %.not = icmp eq ptr %.0.lcssa, %0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.j = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.k = icmp eq i8 %i.j, 47
  %i.l = icmp eq i8 %i.j, 92
  %or.cond7 = and i1 %3, %i.l
  %or.cond41 = or i1 %i.k, %or.cond7
  br i1 %or.cond41, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi ptr [ %.pn.lcssa, %bb.f ], [ %0, %bb.e ] ; 3 uses
  %i.m = ptrtoint ptr %.1 to i64
  %i.n = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.n, %i.m
  %i.o = add i64 %.neg, %1                        ; 2 uses
  %i.p = tail call i64 @strnlen(ptr noundef %.1, i64 noundef %i.o) #21
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #22
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @strndup(ptr noundef %.1, i64 noundef %i.o) #22 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.10) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.b
  %.034 = phi i32 [ 3, %bb.b ], [ 26, %bb.h ], [ 20, %bb.j ], [ 0, %bb.i ]
  ret i32 %.034
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 27) i32 @cli_hexstr_to_bytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = and i64 %1, 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond70 = and i1 %.not, %or.cond
  br i1 %or.cond70, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.d = lshr exact i64 %1, 1
  %.not78 = icmp eq i64 %1, 0
  br i1 %.not78, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = tail call ptr @__ctype_b_loc() #23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.05871 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.o ] ; 3 uses
  %i.f = shl nuw i64 %.05871, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.l = zext i8 %i.h to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !10
  %i.o = and i16 %i.n, 4096
  %.not68 = icmp eq i16 %i.o, 0
  br i1 %.not68, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i8 %i.j to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10
  %i.s = and i16 %i.r, 4096
  %.not69 = icmp eq i16 %i.s, 0
  br i1 %.not69, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sext i8 %i.h to i32                      ; 3 uses
  %i.u = add i8 %i.h, -48
  %or.cond4 = icmp ult i8 %i.u, 10
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.t, -48
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.w = add i8 %i.h, -97
  %or.cond7 = icmp ult i8 %i.w, 6
  br i1 %or.cond7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.t, -87
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = add i8 %i.h, -65
  %or.cond10 = icmp ult i8 %i.y, 6
  %i.z = add nsw i32 %i.t, -55
  %i.aa = select i1 %or.cond10, i32 %i.z, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.ab = phi i32 [ %i.v, %bb.e ], [ %i.x, %bb.g ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ac = sext i8 %i.j to i32                     ; 3 uses
  %i.ad = add i8 %i.j, -48
  %or.cond13 = icmp ult i8 %i.ad, 10
  br i1 %or.cond13, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.ac, -48
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = add i8 %i.j, -97
  %or.cond16 = icmp ult i8 %i.af, 6
  br i1 %or.cond16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.ac, -87
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = add i8 %i.j, -65
  %or.cond19 = icmp ult i8 %i.ah, 6
  %i.ai = add nsw i32 %i.ac, -55
  %i.aj = select i1 %or.cond19, i32 %i.ai, i32 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.ak = phi i32 [ %i.ae, %bb.j ], [ %i.ag, %bb.l ], [ %i.aj, %bb.m ] ; 2 uses
  %i.al = icmp slt i32 %i.ab, 0
  %i.am = icmp slt i32 %i.ak, 0
  %or.cond21 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond21, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = shl nuw nsw i32 %i.ab, 4
  %i.ao = or i32 %i.ak, %i.an
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.05871
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !8
  %i.ar = add nuw nsw i64 %.05871, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.d
  br i1 %exitcond.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.o, %bb.n, %bb.c, %bb.b, %.preheader, %bb.a
  %.2 = phi i32 [ 26, %bb.a ], [ 0, %.preheader ], [ 26, %bb.c ], [ 26, %bb.n ], [ 0, %bb.o ], [ 26, %bb.b ]
  ret i32 %.2
}

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !13}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 int", !22, i64 0}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !22, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 short", !22, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!30, !28, i64 8}
!30 = !{!"text_buffer", !24, i64 0, !28, i64 8, !28, i64 16}
!31 = !{!30, !28, i64 16}
!32 = !{!30, !24, i64 0}
end_hunk_0
