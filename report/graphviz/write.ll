Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/write?download=true
inline.NumInlined: 86
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Agiddisc_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.write_info_t = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"linelength\00", align 1
@Max_outputline = internal unnamed_addr global i32 128, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"digraph\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"subgraph\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"strict \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"tailport\00", align 1
@Tailport = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"headport\00", align 1
@Headport = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"graph \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"];\0A\00", align 1
@AgIdDisc = external global %struct.Agiddisc_s, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"_%lu_SUSPECT\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\09[\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\09[key=\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c" -- \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @agstrcanon(ptr noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @aghtmlstr(ptr noundef %0) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0) #14 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @_agstrcanon(ptr noundef %0, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare i32 @aghtmlstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc ptr @_agstrcanon(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef writeonly captures(ret: address, provenance) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !15
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  store i8 34, ptr %1, align 1, !tbaa !15
  %i.e = load i8, ptr %0, align 1, !tbaa !15      ; 5 uses
  %.not122 = icmp eq i8 %i.e, 0
  br i1 %.not122, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 34, ptr %i.d, align 1, !tbaa !15
  store i8 0, ptr %i.f, align 1, !tbaa !15
  br label %bb.ac

.lr.ph:                                           ; preds = %bb.c
  %.081121 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = add i8 %i.e, -48
  %i.h = icmp ult i8 %i.g, 10
  %2 = add i8 %i.e, -45
  %i.i = icmp ult i8 %2, 2
  %narrow = or i1 %i.h, %i.i                      ; 2 uses
  %i.j = load i32, ptr @Max_outputline, align 4, !tbaa !16 ; 2 uses
  %.not95 = icmp eq i32 %i.j, 0
  br i1 %.not95, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %is_escape.exit.us
  %.081132.us = phi ptr [ %.081.us, %is_escape.exit.us ], [ %.081121, %.lr.ph ] ; 3 uses
  %.065130.us = phi i1 [ %.2.us, %is_escape.exit.us ], [ %narrow, %.lr.ph ] ; 13 uses
  %.067129.us = phi i1 [ %.168.us, %is_escape.exit.us ], [ false, %.lr.ph ] ; 2 uses
  %.069128.us = phi i1 [ %.271.us, %is_escape.exit.us ], [ false, %.lr.ph ] ; 4 uses
  %.072127.us = phi i32 [ %.274.us, %is_escape.exit.us ], [ 0, %.lr.ph ] ; 17 uses
  %.075126.us = phi i32 [ %i.ab, %is_escape.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = phi i8 [ %i.aa, %is_escape.exit.us ], [ %i.e, %.lr.ph ] ; 7 uses
  %.078124.us = phi ptr [ %i.z, %is_escape.exit.us ], [ %i.d, %.lr.ph ] ; 17 uses
  %i.l = sext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp ne i8 %i.k, 34
  %or.cond4.us = or i1 %i.m, %.067129.us
  br i1 %or.cond4.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.078124.us, i64 1
  store i8 92, ptr %.078124.us, align 1, !tbaa !15
  br label %is_escape.exit.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %.not.i.us = icmp ne i8 %i.k, 92
  %or.cond.not = or i1 %.not.i.us, %.067129.us
  br i1 %or.cond.not, label %is_escape.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %.081132.us, align 1, !tbaa !15
  switch i8 %i.o, label %is_escape.exit.thread.us [
    i8 69, label %is_escape.exit.us
    i8 71, label %is_escape.exit.us
    i8 72, label %is_escape.exit.us
    i8 76, label %is_escape.exit.us
    i8 78, label %is_escape.exit.us
    i8 84, label %is_escape.exit.us
    i8 108, label %is_escape.exit.us
    i8 110, label %is_escape.exit.us
    i8 114, label %is_escape.exit.us
    i8 92, label %is_escape.exit.us
    i8 34, label %is_escape.exit.us
  ]

is_escape.exit.thread.us:                         ; preds = %bb.f, %bb.e
  br i1 %.065130.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %is_escape.exit.thread.us
  %i.p = and i32 %i.l, -33
  %i.q = add nsw i32 %i.p, -91
  %i.r = icmp ult i32 %i.q, -26
  %i.s = add nsw i32 %i.l, -58
  %i.t = icmp ult i32 %i.s, -10
  %.not120.us = select i1 %i.r, i1 %i.t, i1 false
  %i.u = icmp ne i8 %i.k, 95
  %or.cond7.not117.us = and i1 %i.u, %.not120.us
  %i.v = icmp sgt i8 %i.k, -1
  %or.cond102.us = and i1 %i.v, %or.cond7.not117.us
  %spec.select105.us = select i1 %or.cond102.us, i1 true, i1 %.069128.us
  br label %is_escape.exit.us

bb.h:                                             ; preds = %is_escape.exit.thread.us
  switch i8 %i.k, label %bb.k [
    i8 45, label %bb.j
    i8 46, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %.072127.us, 1
  %.not93.us = icmp eq i32 %.072127.us, 0         ; 2 uses
  %not..not93.us = xor i1 %.not93.us, true
  %spec.select98.us = select i1 %not..not93.us, i1 true, i1 %.069128.us
  br label %is_escape.exit.us

bb.j:                                             ; preds = %bb.h
  %.not94.us = icmp eq i32 %.075126.us, 0         ; 2 uses
  %not..not94.us = xor i1 %.not94.us, true
  %spec.select.us = select i1 %not..not94.us, i1 true, i1 %.069128.us
  br label %is_escape.exit.us

bb.k:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.l, -48
  %i.y = icmp ult i32 %i.x, 10                    ; 2 uses
  %not.138 = xor i1 %i.y, true
  %spec.select100.us = select i1 %not.138, i1 true, i1 %.069128.us
  br label %is_escape.exit.us

is_escape.exit.us:                                ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.d
  %.179.us = phi ptr [ %.078124.us, %bb.k ], [ %.078124.us, %bb.j ], [ %.078124.us, %bb.g ], [ %i.n, %bb.d ], [ %.078124.us, %bb.i ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ], [ %.078124.us, %bb.f ] ; 2 uses
  %.274.us = phi i32 [ %.072127.us, %bb.k ], [ %.072127.us, %bb.j ], [ %.072127.us, %bb.g ], [ %.072127.us, %bb.d ], [ %i.w, %bb.i ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ], [ %.072127.us, %bb.f ]
  %.271.us = phi i1 [ %spec.select100.us, %bb.k ], [ %spec.select.us, %bb.j ], [ %spec.select105.us, %bb.g ], [ true, %bb.d ], [ %spec.select98.us, %bb.i ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ] ; 2 uses
  %.168.us = phi i1 [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.i ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ]
  %.2.us = phi i1 [ %i.y, %bb.k ], [ %.not94.us, %bb.j ], [ false, %bb.g ], [ %.065130.us, %bb.d ], [ %.not93.us, %bb.i ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ], [ %.065130.us, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.179.us, i64 1 ; 2 uses
  store i8 %i.k, ptr %.179.us, align 1, !tbaa !15
  %i.aa = load i8, ptr %.081132.us, align 1, !tbaa !15 ; 2 uses
  %i.ab = add nuw nsw i32 %.075126.us, 1          ; 2 uses
  %.081.us = getelementptr inbounds nuw i8, ptr %.081132.us, i64 1
  %.not.us = icmp eq i8 %i.aa, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !71

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.z
  %.081132 = phi ptr [ %.081, %bb.z ], [ %.081121, %.lr.ph ] ; 4 uses
  %.064131 = phi i1 [ %.1, %bb.z ], [ false, %.lr.ph ] ; 3 uses
  %.065130 = phi i1 [ %.2, %bb.z ], [ %narrow, %.lr.ph ] ; 13 uses
  %.067129 = phi i1 [ %.168, %bb.z ], [ false, %.lr.ph ] ; 2 uses
  %.069128 = phi i1 [ %.3, %bb.z ], [ false, %.lr.ph ] ; 4 uses
  %.072127 = phi i32 [ %.274, %bb.z ], [ 0, %.lr.ph ] ; 17 uses
  %.075126 = phi i32 [ %.176, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  %.077125 = phi i8 [ %i.as, %bb.z ], [ %i.e, %.lr.ph ] ; 12 uses
  %.078124 = phi ptr [ %.280, %bb.z ], [ %i.d, %.lr.ph ] ; 17 uses
  %.pn123 = phi ptr [ %.081132, %bb.z ], [ %0, %.lr.ph ]
  %i.ac = sext i8 %.077125 to i32                 ; 7 uses
  %i.ad = icmp ne i8 %.077125, 34
  %or.cond4 = or i1 %i.ad, %.067129
  br i1 %or.cond4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.078124, i64 1
  store i8 92, ptr %.078124, align 1, !tbaa !15
  br label %is_escape.exit

bb.m:                                             ; preds = %.lr.ph.split
  br i1 %.067129, label %is_escape.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i8, ptr %.pn123, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.af, 92
  br i1 %.not.i, label %bb.o, label %is_escape.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ag = load i8, ptr %.081132, align 1, !tbaa !15
  switch i8 %i.ag, label %is_escape.exit.thread [
    i8 69, label %is_escape.exit
    i8 71, label %is_escape.exit
    i8 72, label %is_escape.exit
    i8 76, label %is_escape.exit
    i8 78, label %is_escape.exit
    i8 84, label %is_escape.exit
    i8 108, label %is_escape.exit
    i8 110, label %is_escape.exit
    i8 114, label %is_escape.exit
    i8 92, label %is_escape.exit
    i8 34, label %is_escape.exit
  ]

is_escape.exit.thread:                            ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.065130, label %bb.p, label %bb.t

bb.p:                                             ; preds = %is_escape.exit.thread
  switch i8 %.077125, label %bb.s [
    i8 45, label %bb.q
    i8 46, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %.not94 = icmp eq i32 %.075126, 0               ; 2 uses
  %not..not94 = xor i1 %.not94, true
  %spec.select = select i1 %not..not94, i1 true, i1 %.069128
  br label %is_escape.exit

bb.r:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %.072127, 1
  %.not93 = icmp eq i32 %.072127, 0               ; 2 uses
  %not..not93 = xor i1 %.not93, true
  %spec.select98 = select i1 %not..not93, i1 true, i1 %.069128
  br label %is_escape.exit

bb.s:                                             ; preds = %bb.p
  %i.ai = add nsw i32 %i.ac, -48
  %i.aj = icmp ult i32 %i.ai, 10                  ; 2 uses
  %not. = xor i1 %i.aj, true
  %spec.select100 = select i1 %not., i1 true, i1 %.069128
  br label %is_escape.exit

bb.t:                                             ; preds = %is_escape.exit.thread
  %i.ak = and i32 %i.ac, -33
  %i.al = add nsw i32 %i.ak, -91
  %i.am = icmp ult i32 %i.al, -26
  %i.an = add nsw i32 %i.ac, -58
  %i.ao = icmp ult i32 %i.an, -10
  %.not120 = select i1 %i.am, i1 %i.ao, i1 false
  %i.ap = icmp ne i8 %.077125, 95
  %or.cond7.not117 = and i1 %i.ap, %.not120
  %i.aq = icmp sgt i8 %.077125, -1
  %or.cond102 = and i1 %i.aq, %or.cond7.not117
  %spec.select105 = select i1 %or.cond102, i1 true, i1 %.069128
  br label %is_escape.exit

is_escape.exit:                                   ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.t, %bb.s, %bb.r, %bb.q, %bb.l
  %.179 = phi ptr [ %.078124, %bb.s ], [ %.078124, %bb.q ], [ %.078124, %bb.t ], [ %i.ae, %bb.l ], [ %.078124, %bb.r ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ], [ %.078124, %bb.o ] ; 4 uses
  %.274 = phi i32 [ %.072127, %bb.s ], [ %.072127, %bb.q ], [ %.072127, %bb.t ], [ %.072127, %bb.l ], [ %i.ah, %bb.r ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ], [ %.072127, %bb.o ]
  %.271 = phi i1 [ %spec.select100, %bb.s ], [ %spec.select, %bb.q ], [ %spec.select105, %bb.t ], [ true, %bb.l ], [ %spec.select98, %bb.r ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ] ; 3 uses
  %.168 = phi i1 [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.r ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.o ]
  %.2 = phi i1 [ %i.aj, %bb.s ], [ %.not94, %bb.q ], [ false, %bb.t ], [ %.065130, %bb.l ], [ %.not93, %bb.r ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ], [ %.065130, %bb.o ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.179, i64 1 ; 4 uses
  store i8 %.077125, ptr %.179, align 1, !tbaa !15
  %i.as = load i8, ptr %.081132, align 1, !tbaa !15 ; 8 uses
  %i.at = add nsw i32 %.075126, 1                 ; 4 uses
  %i.au = icmp ne i8 %i.as, 0                     ; 3 uses
  %or.cond9 = select i1 %i.au, i1 %.064131, i1 false
  br i1 %or.cond9, label %bb.u, label %bb.w

bb.u:                                             ; preds = %is_escape.exit
  %i.av = and i32 %i.ac, -33
  %i.aw = add nsw i32 %i.av, -65
  %i.ax = icmp ult i32 %i.aw, 26
  %i.ay = add nsw i32 %i.ac, -48
  %i.az = icmp ult i32 %i.ay, 10
  %i.ba = select i1 %i.ax, i1 true, i1 %i.az
  %i.bb = add i8 %.077125, -45
  %i.bc = icmp ult i8 %i.bb, 2
  %or.cond5.i = or i1 %i.bc, %i.ba
  %i.bd = icmp slt i8 %.077125, 0
  %spec.select.i = or i1 %i.bd, %or.cond5.i
  %i.be = icmp eq i8 %.077125, 92
  %or.cond113 = or i1 %i.be, %spec.select.i
  br i1 %or.cond113, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = sext i8 %i.as to i32                    ; 2 uses
  %i.bg = and i32 %i.bf, -33
  %i.bh = add nsw i32 %i.bg, -65
  %i.bi = icmp ult i32 %i.bh, 26
  %i.bj = add nsw i32 %i.bf, -48
  %i.bk = icmp ult i32 %i.bj, 10
  %i.bl = select i1 %i.bi, i1 true, i1 %i.bk
  %i.bm = add i8 %i.as, -45
  %i.bn = icmp ult i8 %i.bm, 2
  %or.cond5.i106 = or i1 %i.bn, %i.bl
  %i.bo = icmp slt i8 %i.as, 0
  %spec.select.i107 = or i1 %i.bo, %or.cond5.i106
  br i1 %spec.select.i107, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %is_escape.exit
  %.not96 = icmp sge i32 %i.at, %i.j
  %or.cond104.not = select i1 %i.au, i1 %.not96, i1 false
  br i1 %or.cond104.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bp = and i32 %i.ac, -33
  %i.bq = add nsw i32 %i.bp, -65
  %i.br = icmp ult i32 %i.bq, 26
  %i.bs = add nsw i32 %i.ac, -48
  %i.bt = icmp ult i32 %i.bs, 10
  %i.bu = select i1 %i.br, i1 true, i1 %i.bt
  %i.bv = add i8 %.077125, -45
  %i.bw = icmp ult i8 %i.bv, 2
  %or.cond5.i108 = or i1 %i.bw, %i.bu
  %i.bx = icmp slt i8 %.077125, 0
  %spec.select.i109 = or i1 %i.bx, %or.cond5.i108
  %i.by = icmp eq i8 %.077125, 92
  %or.cond114 = or i1 %i.by, %spec.select.i109
  br i1 %or.cond114, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = sext i8 %i.as to i32                    ; 2 uses
  %i.ca = and i32 %i.bz, -33
  %i.cb = add nsw i32 %i.ca, -65
  %i.cc = icmp ult i32 %i.cb, 26
  %i.cd = add nsw i32 %i.bz, -48
  %i.ce = icmp ult i32 %i.cd, 10
  %i.cf = select i1 %i.cc, i1 true, i1 %i.ce
  %i.cg = add i8 %i.as, -45
  %i.ch = icmp ult i8 %i.cg, 2
  %or.cond5.i110 = or i1 %i.ch, %i.cf
  %i.ci = icmp slt i8 %i.as, 0
  %spec.select.i111 = or i1 %i.ci, %or.cond5.i110
  br i1 %spec.select.i111, label %.sink.split, label %bb.z

.sink.split:                                      ; preds = %bb.y, %bb.v
  %.1.ph = phi i1 [ false, %bb.v ], [ %.064131, %bb.y ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.179, i64 2
  store i8 92, ptr %i.ar, align 1, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.179, i64 3
  store i8 10, ptr %i.cj, align 1, !tbaa !15
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x, %bb.y, %bb.w
  %.280 = phi ptr [ %i.ar, %bb.w ], [ %i.ar, %bb.y ], [ %i.ar, %bb.x ], [ %i.ck, %.sink.split ] ; 2 uses
  %.176 = phi i32 [ %i.at, %bb.w ], [ %i.at, %bb.y ], [ %i.at, %bb.x ], [ 0, %.sink.split ] ; 2 uses
  %.3 = phi i1 [ %.271, %bb.w ], [ %.271, %bb.y ], [ %.271, %bb.x ], [ true, %.sink.split ] ; 2 uses
  %.1 = phi i1 [ %.064131, %bb.w ], [ true, %bb.y ], [ true, %bb.x ], [ %.1.ph, %.sink.split ]
  %.081 = getelementptr inbounds nuw i8, ptr %.081132, i64 1
  br i1 %i.au, label %.lr.ph.split, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.z, %is_escape.exit.us
  %.078.lcssa = phi ptr [ %i.z, %is_escape.exit.us ], [ %.280, %bb.z ] ; 2 uses
  %.075.lcssa = phi i32 [ %i.ab, %is_escape.exit.us ], [ %.176, %bb.z ]
  %.069.lcssa = phi i1 [ %.271.us, %is_escape.exit.us ], [ %.3, %bb.z ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 1
  store i8 34, ptr %.078.lcssa, align 1, !tbaa !15
  store i8 0, ptr %i.cl, align 1, !tbaa !15
  br i1 %.069.lcssa, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.cm = icmp eq i32 %.075.lcssa, 1
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load i8, ptr %0, align 1, !tbaa !15
  %.off = add i8 %i.cn, -45
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.ab, %bb.aa
  %i.co = tail call i32 @strcasecmp(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #15
  %.not92 = icmp eq i32 %i.co, 0
  br i1 %.not92, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = tail call i32 @strcasecmp(ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #15
  %.not92.1 = icmp eq i32 %i.cp, 0
  br i1 %.not92.1, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = tail call i32 @strcasecmp(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #15
  %.not92.2 = icmp eq i32 %i.cq, 0
  br i1 %.not92.2, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = tail call i32 @strcasecmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %0) #15
  %.not92.3 = icmp eq i32 %i.cr, 0
  br i1 %.not92.3, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = tail call i32 @strcasecmp(ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #15
  %.not92.4 = icmp eq i32 %i.cs, 0
  br i1 %.not92.4, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = tail call i32 @strcasecmp(ptr noundef nonnull @.str.7, ptr noundef nonnull %0) #15
  %.not92.5 = icmp eq i32 %i.ct, 0
  %spec.select155 = select i1 %.not92.5, ptr %1, ptr %0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ab, %._crit_edge, %bb.a, %bb.b
  %.082 = phi ptr [ %1, %bb.ab ], [ @.str.8, %bb.a ], [ %1, %._crit_edge ], [ @.str.8, %bb.b ], [ %1, %bb.ac ], [ %1, %bb.af ], [ %1, %bb.ad ], [ %spec.select155, %bb.ah ], [ %1, %bb.ae ], [ %1, %bb.ag ]
  ret ptr %.082
}

; Function Attrs: nounwind uwtable
define i32 @agwrite(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.write_info_t, align 8       ; 13 uses
  %i.a = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str) #14 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  %3 = add i8 %i.b, -48
  %i.c = icmp ult i8 %3, 10
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strtoul(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #14 ; 3 uses
  %i.e = add i64 %i.d, -60
  %or.cond = icmp ult i64 %i.e, -59
  %i.f = icmp ult i64 %i.d, 2147483648
  %or.cond3 = and i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.d to i32
  store i32 %i.g, ptr @Max_outputline, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !74
  tail call fastcc void @set_attrwf(ptr noundef %0, i1 noundef zeroext true)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !noalias !74 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32, !noalias !74
  %i.m = add i64 %i.l, 1                          ; 5 uses
  %mul.ov.i.i = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.33, i64 noundef %i.m, i64 noundef 8) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = icmp ne i64 %i.m, 0
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #18, !noalias !74 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %or.cond3.i.i = and i1 %i.p, %i.r
  br i1 %or.cond3.i.i, label %bb.h, label %gv_calloc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.t = shl nuw i64 %i.m, 3
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.34, i64 noundef %i.t) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.g
  store ptr %i.q, ptr %2, align 8, !tbaa !35, !alias.scope !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32, !noalias !74
  %i.x = add i64 %i.w, 1                          ; 5 uses
  %mul.ov.i5.i = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %mul.ov.i5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %gv_calloc.exit.i
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.33, i64 noundef %i.x, i64 noundef 8) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.j:                                             ; preds = %gv_calloc.exit.i
  %i.aa = icmp ne i64 %i.x, 0
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.x, i64 noundef 8) #18, !noalias !74 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %or.cond3.i6.i = and i1 %i.aa, %i.ac
  br i1 %or.cond3.i6.i, label %bb.k, label %gv_calloc.exit7.i

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.ae = shl nuw i64 %i.x, 3
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.34, i64 noundef %i.ae) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit7.i:                                ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !36, !alias.scope !74
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32, !noalias !74
  %i.aj = add i64 %i.ai, 1                        ; 5 uses
  %mul.ov.i8.i = icmp ugt i64 %i.aj, 2305843009213693951
  br i1 %mul.ov.i8.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %gv_calloc.exit7.i
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.33, i64 noundef %i.aj, i64 noundef 8) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.m:                                             ; preds = %gv_calloc.exit7.i
  %i.am = icmp ne i64 %i.aj, 0
  %i.an = tail call noalias ptr @calloc(i64 noundef %i.aj, i64 noundef 8) #18, !noalias !74 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  %or.cond3.i9.i = and i1 %i.am, %i.ao
  br i1 %or.cond3.i9.i, label %bb.n, label %before_write.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !76, !noalias !74
  %i.aq = shl nuw i64 %i.aj, 3
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.34, i64 noundef %i.aq) #16, !noalias !74 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

before_write.exit:                                ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.an, ptr %i.as, align 8, !tbaa !37, !alias.scope !74
  %i.at = call fastcc i64 @subgdfs(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull align 8 %2) ; 0 uses
  %i.au = call fastcc i32 @write_hdr(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2)
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %before_write.exit
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.4.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.5.0.copyload = load ptr, ptr %i.as, align 8
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.4.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #14
  br label %bb.u

bb.p:                                             ; preds = %before_write.exit
  %i.aw = call fastcc i32 @write_body(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.022.0.copyload = load ptr, ptr %2, align 8
  %.sroa.423.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.524.0.copyload = load ptr, ptr %i.as, align 8
  tail call void @free(ptr noundef %.sroa.022.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.423.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.524.0.copyload) #14
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %.lr.ph.i.i, label %write_trl.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %.01.i.i = add nsw i32 %.01.i.i.in, -1
  %i.ba = icmp sgt i32 %.01.i.i.in, 2
  br i1 %i.ba, label %.lr.ph.i.i, label %write_trl.exit, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.01.i.i.in = phi i32 [ %.01.i.i, %bb.s ], [ %i.ay, %bb.r ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.bb = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr i8, ptr %.val.val.i.i, i64 8
  %.val.val.val.i.i = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bd = tail call i32 %.val.val.val.i.i(ptr noundef %1, ptr noundef nonnull @.str.18) #14, !inline_history !1
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %write_trl.exit.thread, label %bb.s

write_trl.exit:                                   ; preds = %bb.s, %bb.r
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.bf = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bg = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bh = tail call i32 %.val.val.val.i(ptr noundef %1, ptr noundef nonnull @.str.32) #14, !inline_history !2
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %write_trl.exit.thread, label %bb.t

write_trl.exit.thread:                            ; preds = %.lr.ph.i.i, %write_trl.exit
  %.sroa.026.0.copyload = load ptr, ptr %2, align 8
  %.sroa.427.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.528.0.copyload = load ptr, ptr %i.as, align 8
  tail call void @free(ptr noundef %.sroa.026.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.427.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.528.0.copyload) #14
  br label %bb.u

bb.t:                                             ; preds = %write_trl.exit
  %.sroa.030.0.copyload = load ptr, ptr %2, align 8
  %.sroa.431.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.532.0.copyload = load ptr, ptr %i.as, align 8
  tail call void @free(ptr noundef %.sroa.030.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.431.0.copyload) #14
  tail call void @free(ptr noundef %.sroa.532.0.copyload) #14
  store i32 128, ptr @Max_outputline, align 4, !tbaa !16
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77
  %i.bo = tail call i32 %i.bn(ptr noundef %1) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %write_trl.exit.thread, %bb.q, %bb.o
  %.0 = phi i32 [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %write_trl.exit.thread ], [ %i.bo, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
