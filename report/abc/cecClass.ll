Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecClass?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@s_Count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@Cec_ManSimHashKey.s_Primes = internal unnamed_addr constant [16 x i32] [i32 1291, i32 1699, i32 1999, i32 2357, i32 2953, i32 3313, i32 3907, i32 4177, i32 4831, i32 5147, i32 5647, i32 6343, i32 6899, i32 7103, i32 7873, i32 8147], align 16
@.str.1 = private unnamed_addr constant [53 x i8] c"Cec_ManSimSimulateRound(): Memory management error!\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Cec_ManSimCompareConst(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader14
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph21.preheader, label %.loopexit

.lr.ph21.preheader:                               ; preds = %.preheader
  %wide.trip.count31 = zext nneg i32 %1 to i64
  br label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not13 = icmp eq i32 %i.e, -1
  br i1 %.not13, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %.lr.ph21
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %.lr.ph21, !llvm.loop !11

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %bb.c
  %indvars.iv28 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next29, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph21, %bb.c, %.preheader14, %.preheader
  %.011 = phi i32 [ 1, %.preheader14 ], [ 1, %bb.c ], [ 1, %.preheader ], [ 0, %.lr.ph21 ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Cec_ManSimCompareEqual(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = load i32, ptr %1, align 4, !tbaa !8
  %i.c = xor i32 %i.b, %i.a
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader18
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph25.preheader, label %.loopexit

.lr.ph25.preheader:                               ; preds = %.preheader
  %wide.trip.count35 = zext nneg i32 %2 to i64
  br label %.lr.ph25

bb.b:                                             ; preds = %.lr.ph25
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %.loopexit, label %.lr.ph25, !llvm.loop !12

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %bb.b
  %indvars.iv32 = phi i64 [ 0, %.lr.ph25.preheader ], [ %indvars.iv.next33, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %.not17 = icmp eq i32 %i.h, %i.j
  br i1 %.not17, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = xor i32 %i.n, %i.l
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.lr.ph25, %bb.b, %.preheader18, %.preheader
  %.016 = phi i32 [ 1, %.preheader18 ], [ 1, %bb.b ], [ 1, %.preheader ], [ 0, %.lr.ph25 ], [ 1, %bb.c ], [ 0, %.lr.ph ]
  ret i32 %.016
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Cec_ManSimCompareConstFirstBit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader22
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph29.preheader, label %.loopexit

.lr.ph29.preheader:                               ; preds = %.preheader
  %wide.trip.count40 = zext nneg i32 %1 to i64
  br label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %.not21 = icmp eq i32 %i.e, -1
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = xor i32 %i.e, -1
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !14

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %bb.d
  %indvars.iv37 = phi i64 [ 0, %.lr.ph29.preheader ], [ %indvars.iv.next38, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv37
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %.lr.ph29
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.loopexit, label %.lr.ph29, !llvm.loop !15

.loopexit.sink.split:                             ; preds = %.lr.ph29, %bb.b
  %.lcssa.sink = phi i32 [ %i.f, %bb.b ], [ %i.h, %.lr.ph29 ]
  %.sink50.in.in = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv37, %.lr.ph29 ]
  %.sink50.in = trunc i64 %.sink50.in.in to i32
  %.sink50 = shl nsw i32 %.sink50.in, 5
  %i.i = tail call fastcc i32 @Gia_WordFindFirstBit(i32 noundef %.lcssa.sink)
  %i.j = add nsw i32 %i.i, %.sink50
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %.loopexit.sink.split, %.preheader22, %.preheader
  %.017 = phi i32 [ %i.j, %.loopexit.sink.split ], [ -1, %.preheader ], [ -1, %bb.d ], [ -1, %.preheader22 ], [ -1, %bb.c ]
  ret i32 %.017
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 32) i32 @Gia_WordFindFirstBit(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 2
  %.not.1 = icmp eq i32 %i.b, 0
  br i1 %.not.1, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 4
  %.not.2 = icmp eq i32 %i.c, 0
  br i1 %.not.2, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.d = and i32 %0, 8
  %.not.3 = icmp eq i32 %i.d, 0
  br i1 %.not.3, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.e = and i32 %0, 16
  %.not.4 = icmp eq i32 %i.e, 0
  br i1 %.not.4, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.f = and i32 %0, 32
  %.not.5 = icmp eq i32 %i.f, 0
  br i1 %.not.5, label %bb.g, label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.g = and i32 %0, 64
  %.not.6 = icmp eq i32 %i.g, 0
  br i1 %.not.6, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.h = and i32 %0, 128
  %.not.7 = icmp eq i32 %i.h, 0
  br i1 %.not.7, label %bb.i, label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.i = and i32 %0, 256
  %.not.8 = icmp eq i32 %i.i, 0
  br i1 %.not.8, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.j = and i32 %0, 512
  %.not.9 = icmp eq i32 %i.j, 0
  br i1 %.not.9, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 1024
  %.not.10 = icmp eq i32 %i.k, 0
  br i1 %.not.10, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.l = and i32 %0, 2048
  %.not.11 = icmp eq i32 %i.l, 0
  br i1 %.not.11, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.m = and i32 %0, 4096
  %.not.12 = icmp eq i32 %i.m, 0
  br i1 %.not.12, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.n = and i32 %0, 8192
  %.not.13 = icmp eq i32 %i.n, 0
  br i1 %.not.13, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.o = and i32 %0, 16384
  %.not.14 = icmp eq i32 %i.o, 0
  br i1 %.not.14, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %i.p = and i32 %0, 32768
  %.not.15 = icmp eq i32 %i.p, 0
  br i1 %.not.15, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.q = and i32 %0, 65536
  %.not.16 = icmp eq i32 %i.q, 0
  br i1 %.not.16, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.r = and i32 %0, 131072
  %.not.17 = icmp eq i32 %i.r, 0
  br i1 %.not.17, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.s = and i32 %0, 262144
  %.not.18 = icmp eq i32 %i.s, 0
  br i1 %.not.18, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.t = and i32 %0, 524288
  %.not.19 = icmp eq i32 %i.t, 0
  br i1 %.not.19, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.u = and i32 %0, 1048576
  %.not.20 = icmp eq i32 %i.u, 0
  br i1 %.not.20, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.v = and i32 %0, 2097152
  %.not.21 = icmp eq i32 %i.v, 0
  br i1 %.not.21, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.w = and i32 %0, 4194304
  %.not.22 = icmp eq i32 %i.w, 0
  br i1 %.not.22, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.x = and i32 %0, 8388608
  %.not.23 = icmp eq i32 %i.x, 0
  br i1 %.not.23, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.y = and i32 %0, 16777216
  %.not.24 = icmp eq i32 %i.y, 0
  br i1 %.not.24, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.z = and i32 %0, 33554432
  %.not.25 = icmp eq i32 %i.z, 0
  br i1 %.not.25, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.aa = and i32 %0, 67108864
  %.not.26 = icmp eq i32 %i.aa, 0
  br i1 %.not.26, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ab = and i32 %0, 134217728
  %.not.27 = icmp eq i32 %i.ab, 0
  br i1 %.not.27, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ac = and i32 %0, 268435456
  %.not.28 = icmp eq i32 %i.ac, 0
  br i1 %.not.28, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ad = and i32 %0, 536870912
  %.not.29 = icmp eq i32 %i.ad, 0
  br i1 %.not.29, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ae = and i32 %0, 1073741824
  %.not.30 = icmp eq i32 %i.ae, 0
  br i1 %.not.30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not.31 = icmp eq i32 %0, 0
  %spec.select = select i1 %.not.31, i32 -1, i32 31
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 16, %bb.q ], [ 1, %bb.b ], [ %spec.select, %bb.af ], [ 2, %bb.c ], [ 20, %bb.u ], [ 3, %bb.d ], [ 30, %bb.ae ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 29, %bb.ad ], [ 6, %bb.g ], [ 23, %bb.x ], [ 7, %bb.h ], [ 28, %bb.ac ], [ 8, %bb.i ], [ 18, %bb.s ], [ 9, %bb.j ], [ 27, %bb.ab ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 26, %bb.aa ], [ 12, %bb.m ], [ 19, %bb.t ], [ 13, %bb.n ], [ 25, %bb.z ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ], [ 24, %bb.y ]
  ret i32 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Cec_ManSimCompareEqualFirstBit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = load i32, ptr %1, align 4, !tbaa !8
  %i.c = xor i32 %i.b, %i.a
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph41.preheader, label %.loopexit

.lr.ph41.preheader:                               ; preds = %.preheader
  %wide.trip.count56 = zext nneg i32 %2 to i64
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.c
  %indvars.iv53 = phi i64 [ 0, %.lr.ph41.preheader ], [ %indvars.iv.next54, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %.not31 = icmp eq i32 %i.h, %i.j
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph41
  %i.k = xor i32 %i.j, %i.h
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %.lr.ph41
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit, label %.lr.ph41, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = xor i32 %i.o, -1                         ; 2 uses
  %.not = icmp eq i32 %i.m, %i.p
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.q = xor i32 %i.m, %i.p
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit.sink.split:                             ; preds = %bb.b, %bb.d
  %.sink73 = phi i32 [ %i.q, %bb.d ], [ %i.k, %bb.b ]
  %.sink72.in.in = phi i64 [ %indvars.iv, %bb.d ], [ %indvars.iv53, %bb.b ]
  %.sink72.in = trunc i64 %.sink72.in.in to i32
  %.sink72 = shl nsw i32 %.sink72.in, 5
  %i.r = tail call fastcc i32 @Gia_WordFindFirstBit(i32 noundef %.sink73)
  %i.s = add nsw i32 %i.r, %.sink72
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.loopexit.sink.split, %.preheader32, %.preheader
  %.026 = phi i32 [ %i.s, %.loopexit.sink.split ], [ -1, %.preheader ], [ -1, %bb.c ], [ -1, %.preheader32 ], [ -1, %bb.e ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Cec_ManSimCompareConstScore(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader32, label %.preheader36

.preheader36:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit33

.lr.ph.preheader:                                 ; preds = %.preheader36
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader32:                                     ; preds = %bb.a
  br i1 %i.c, label %.lr.ph42.preheader, label %.loopexit33

.lr.ph42.preheader:                               ; preds = %.preheader32
  %wide.trip.count56 = zext nneg i32 %1 to i64
  br label %.lr.ph42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit35
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next46, %.loopexit35 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv45 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not30 = icmp eq i32 %i.e, -1
  br i1 %.not30, label %.loopexit35, label %.preheader34

.preheader34:                                     ; preds = %.lr.ph
  %i.f = shl i64 %indvars.iv45, 5
  %3 = and i64 %i.f, 4294967264
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader34
  %indvars.iv = phi i64 [ 0, %.preheader34 ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !8
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = shl nuw i32 1, %i.h
  %i.j = and i32 %i.g, %i.i
  %.not31.not = icmp eq i32 %i.j, 0
  br i1 %.not31.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %gep, align 4, !tbaa !8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %gep, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !8
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.m, %i.o
  %.not31.not.1 = icmp eq i32 %i.p, 0
  br i1 %.not31.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.q = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %gep.1, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %.loopexit35, label %bb.b, !llvm.loop !18

.loopexit35:                                      ; preds = %bb.f, %.lr.ph
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond48.not, label %.loopexit33, label %.lr.ph, !llvm.loop !19

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.loopexit
  %indvars.iv53 = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next54, %.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %.not28 = icmp eq i32 %i.t, 0
  br i1 %.not28, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph42
  %i.u = shl i64 %indvars.iv53, 5
  %4 = and i64 %i.u, 4294967264
  %invariant.gep59 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader
  %indvars.iv49 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next50.1, %bb.k ] ; 4 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !8
  %i.w = trunc nuw nsw i64 %indvars.iv49 to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.v, %i.x
  %.not29 = icmp eq i32 %i.y, 0
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep60 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep59, i64 %indvars.iv49 ; 2 uses
  %i.z = load i32, ptr %gep60, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %gep60, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next50 = or disjoint i64 %indvars.iv49, 1 ; 2 uses
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !8
  %i.ac = trunc nuw nsw i64 %indvars.iv.next50 to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ab, %i.ad
  %.not29.1 = icmp eq i32 %i.ae, 0
  br i1 %.not29.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep60.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep59, i64 %indvars.iv.next50 ; 2 uses
  %i.af = load i32, ptr %gep60.1, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %gep60.1, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next50.1 = add nuw nsw i64 %indvars.iv49, 2 ; 2 uses
  %exitcond52.not.1 = icmp eq i64 %indvars.iv.next50.1, 32
  br i1 %exitcond52.not.1, label %.loopexit, label %bb.g, !llvm.loop !20

.loopexit:                                        ; preds = %bb.k, %.lr.ph42
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit33, label %.lr.ph42, !llvm.loop !21

.loopexit33:                                      ; preds = %.loopexit35, %.loopexit, %.preheader36, %.preheader32
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Cec_ManSimCompareEqualScore(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = load i32, ptr %1, align 4, !tbaa !8
  %i.c = xor i32 %i.b, %i.a
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.e, label %.preheader40, label %.preheader44

.preheader44:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit41

.lr.ph.preheader:                                 ; preds = %.preheader44
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.preheader40:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph50.preheader, label %.loopexit41

.lr.ph50.preheader:                               ; preds = %.preheader40
  %wide.trip.count64 = zext nneg i32 %2 to i64
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.loopexit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next62, %.loopexit ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv61 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv61 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %.not38 = icmp eq i32 %i.h, %i.j
  br i1 %.not38, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph50
  %i.k = shl i64 %indvars.iv61, 5
  %4 = and i64 %i.k, 4294967264
  %invariant.gep67 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader
  %indvars.iv57 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next58.1, %bb.f ] ; 4 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !8
  %i.m = load i32, ptr %i.i, align 4, !tbaa !8
  %i.n = xor i32 %i.m, %i.l
  %i.o = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.n, %i.p
  %.not39 = icmp eq i32 %i.q, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep68 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67, i64 %indvars.iv57 ; 2 uses
  %i.r = load i32, ptr %gep68, align 4, !tbaa !8
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %gep68, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next58 = or disjoint i64 %indvars.iv57, 1 ; 2 uses
  %i.t = load i32, ptr %i.g, align 4, !tbaa !8
  %i.u = load i32, ptr %i.i, align 4, !tbaa !8
  %i.v = xor i32 %i.u, %i.t
  %i.w = trunc nuw nsw i64 %indvars.iv.next58 to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.v, %i.x
  %.not39.1 = icmp eq i32 %i.y, 0
  br i1 %.not39.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep68.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67, i64 %indvars.iv.next58 ; 2 uses
  %i.z = load i32, ptr %gep68.1, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %gep68.1, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next58.1 = add nuw nsw i64 %indvars.iv57, 2 ; 2 uses
  %exitcond60.not.1 = icmp eq i64 %indvars.iv.next58.1, 32
  br i1 %exitcond60.not.1, label %.loopexit, label %bb.b, !llvm.loop !22

.loopexit:                                        ; preds = %bb.f, %.lr.ph50
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit41, label %.lr.ph50, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit43
  %indvars.iv53 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next54, %.loopexit43 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = xor i32 %i.ae, %i.ac
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %.loopexit43, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph
  %i.ag = shl i64 %indvars.iv53, 5
  %5 = and i64 %i.ag, 4294967264
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %5 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader42
  %indvars.iv = phi i64 [ 0, %.preheader42 ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.aj = xor i32 %i.ai, %i.ah
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = and i32 %i.aj, %i.al
  %.not37.not = icmp eq i32 %i.am, 0
  br i1 %.not37.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %gep, align 4, !tbaa !8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %gep, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.at = shl nuw i32 1, %i.as
  %i.au = and i32 %i.ar, %i.at
  %.not37.not.1 = icmp eq i32 %i.au, 0
  br i1 %.not37.not.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.av = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %gep.1, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %.loopexit43, label %bb.g, !llvm.loop !24

.loopexit43:                                      ; preds = %bb.k, %.lr.ph
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count
  br i1 %exitcond56.not, label %.loopexit41, label %.lr.ph, !llvm.loop !25

.loopexit41:                                      ; preds = %.loopexit43, %.loopexit, %.preheader44, %.preheader40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Cec_ManSimClassCreate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val26 = load i32, ptr %i.a, align 4, !tbaa !26
  %i.b = icmp sgt i32 %.val26, 0
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 200
  %.val21.peel = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.f = load i32, ptr %.val21.peel, align 4, !tbaa !8 ; 4 uses
  %.val23.peel = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %.val23.peel, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.i, 268435455
  store i32 %i.j, ptr %i.h, align 4
  %.val.peel.pre = load i32, ptr %i.a, align 4, !tbaa !26
  %i.k = icmp sgt i32 %.val.peel.pre, 1
  br i1 %i.k, label %.peel.next, label %.critedge.loopexit

.peel.next:                                       ; preds = %bb.b
  %i.l = and i32 %i.f, 268435455
  br label %bb.c

bb.c:                                             ; preds = %.peel.next, %bb.c
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01828 = phi i32 [ %i.f, %.peel.next ], [ %i.n, %bb.c ]
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 4 uses
  %.val22 = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val22, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -268435456
  %i.s = or disjoint i32 %i.r, %i.l
  store i32 %i.s, ptr %i.p, align 4
  %.val25 = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.t = sext i32 %.01828 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val25, i64 %i.t
  store i32 %i.n, ptr %i.u, align 4, !tbaa !8
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = sext i32 %.val.pre to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.loopexit, !llvm.loop !51

.critedge.loopexit:                               ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.c ]
  %i.x = sext i32 %.lcssa to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.018.lcssa = phi i64 [ -1, %bb.a ], [ %i.x, %.critedge.loopexit ]
  %i.y = getelementptr i8, ptr %0, i64 200
  %.val24 = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds [4 x i8], ptr %.val24, i64 %.018.lcssa
  store i32 0, ptr %i.z, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %s_Count.promoted = load i32, ptr @s_Count, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.au, %bb.a
  %i.h = phi ptr [ %.pre, %bb.a ], [ %i.hx, %bb.au ]
  %i.i = phi i32 [ %s_Count.promoted, %bb.a ], [ %i.j, %bb.au ]
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.ie, %bb.au ] ; 2 uses
  %.tr88 = phi i32 [ %1, %bb.a ], [ %i.id, %bb.au ] ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !26
  %i.n = load i32, ptr %i.l, align 4, !tbaa !26   ; 7 uses
  %i.o = load i32, ptr %i.k, align 8, !tbaa !58
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %tailrecurse
  %i.q = icmp slt i32 %i.n, 16
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  store ptr %i.v, ptr %i.r, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %i.n, 1073741823
  %i.x = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.n, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.z, null
  %i.aa = zext nneg i32 %spec.select.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.h ], [ %i.ad, %bb.i ]
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
end_hunk_0
begin_hunk_1_@Cec_ManSimClassRefineOne_rec:bb.a

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = xor i32 %i.bp, %i.bn
  %.not.i = icmp eq i32 %i.bq, -1
  br i1 %.not.i, label %bb.l, label %Cec_ManSimCompareEqual.exit

.loopexit:                                        ; preds = %bb.l, %bb.k, %.preheader18.i, %.preheader.i
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !57  ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !26 ; 7 uses
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !58
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.m, label %Vec_IntPush.exit50

bb.m:                                             ; preds = %.loopexit
  %i.bw = icmp slt i32 %i.bt, 16
  br i1 %i.bw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i48 = icmp eq ptr %i.by, null
  br i1 %.not9.i.i48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.by, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i49

bb.p:                                             ; preds = %bb.n
  %i.ca = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i49

Vec_IntGrow.exit.i49:                             ; preds = %bb.p, %bb.o
  %i.cb = phi ptr [ %i.bz, %bb.o ], [ %i.ca, %bb.p ]
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i46

bb.q:                                             ; preds = %bb.m
  %i.cc = icmp samesign ult i32 %i.bt, 1073741823
  %i.cd = shl nuw nsw i32 %i.bt, 1
  %spec.select.i43 = select i1 %i.cc, i32 %i.cd, i32 2147483647 ; 3 uses
  %.not.i9.i44 = icmp samesign ult i32 %i.bt, %spec.select.i43
  br i1 %.not.i9.i44, label %bb.r, label %Vec_IntPush.exit50

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i45 = icmp eq ptr %i.cf, null
  %i.cg = zext nneg i32 %spec.select.i43 to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef %i.ch) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = phi ptr [ %i.ci, %bb.s ], [ %i.cj, %bb.t ]
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i46

Vec_IntGrow.exit11.sink.split.i46:                ; preds = %bb.u, %Vec_IntGrow.exit.i49
  %spec.select.sink.i47 = phi i32 [ %spec.select.i43, %bb.u ], [ 16, %Vec_IntGrow.exit.i49 ]
  store i32 %spec.select.sink.i47, ptr %i.br, align 8, !tbaa !58
  %.pre103 = load i32, ptr %i.bs, align 4, !tbaa !26
  br label %Vec_IntPush.exit50

Vec_IntPush.exit50:                               ; preds = %.loopexit, %bb.q, %Vec_IntGrow.exit11.sink.split.i46
  %i.cl = phi i32 [ %i.bt, %.loopexit ], [ %i.bt, %bb.q ], [ %.pre103, %Vec_IntGrow.exit11.sink.split.i46 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.co = add nsw i32 %i.cl, 1
  store i32 %i.co, ptr %i.bs, align 4, !tbaa !26
  %i.cp = sext i32 %i.cl to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %.094, ptr %i.cq, align 4, !tbaa !8
  br label %Cec_ManSimCompareEqualScore.exit

Cec_ManSimCompareEqual.exit:                      ; preds = %.lr.ph.i, %.lr.ph25.i
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !53  ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !26 ; 7 uses
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !58
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.v, label %Vec_IntPush.exit58

bb.v:                                             ; preds = %Cec_ManSimCompareEqual.exit
  %i.cw = icmp slt i32 %i.ct, 16
  br i1 %i.cw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i57

bb.y:                                             ; preds = %bb.w
  %i.da = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.y, %bb.x
  %i.db = phi ptr [ %i.cz, %bb.x ], [ %i.da, %bb.y ]
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i54

bb.z:                                             ; preds = %bb.v
  %i.dc = icmp samesign ult i32 %i.ct, 1073741823
  %i.dd = shl nuw nsw i32 %i.ct, 1
  %spec.select.i51 = select i1 %i.dc, i32 %i.dd, i32 2147483647 ; 3 uses
  %.not.i9.i52 = icmp samesign ult i32 %i.ct, %spec.select.i51
  br i1 %.not.i9.i52, label %bb.aa, label %Vec_IntPush.exit58

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i53 = icmp eq ptr %i.df, null
  %i.dg = zext nneg i32 %spec.select.i51 to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 2 uses
  br i1 %.not9.i10.i53, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = tail call ptr @realloc(ptr noundef nonnull %i.df, i64 noundef %i.dh) #22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.dh) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dk = phi ptr [ %i.di, %bb.ab ], [ %i.dj, %bb.ac ]
  store ptr %i.dk, ptr %i.de, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i54

Vec_IntGrow.exit11.sink.split.i54:                ; preds = %bb.ad, %Vec_IntGrow.exit.i57
  %spec.select.sink.i55 = phi i32 [ %spec.select.i51, %bb.ad ], [ 16, %Vec_IntGrow.exit.i57 ]
  store i32 %spec.select.sink.i55, ptr %i.cr, align 8, !tbaa !58
  %.pre102 = load i32, ptr %i.cs, align 4, !tbaa !26
  br label %Vec_IntPush.exit58

Vec_IntPush.exit58:                               ; preds = %Cec_ManSimCompareEqual.exit, %bb.z, %Vec_IntGrow.exit11.sink.split.i54
  %i.dl = phi i32 [ %i.ct, %Cec_ManSimCompareEqual.exit ], [ %i.ct, %bb.z ], [ %.pre102, %Vec_IntGrow.exit11.sink.split.i54 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  %i.do = add nsw i32 %i.dl, 1
  store i32 %i.do, ptr %i.cs, align 4, !tbaa !26
  %i.dp = sext i32 %i.dl to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dp
  store i32 %.094, ptr %i.dq, align 4, !tbaa !8
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !63
  %.not34 = icmp eq ptr %i.dr, null
  br i1 %.not34, label %Cec_ManSimCompareEqualScore.exit, label %bb.ae

bb.ae:                                            ; preds = %Vec_IntPush.exit58
  %i.ds = load i32, ptr %i.e, align 8, !tbaa !62  ; 3 uses
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !64  ; 2 uses
  %i.du = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.dv = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.dw = xor i32 %i.dv, %i.du
  %i.dx = and i32 %i.dw, 1
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = icmp sgt i32 %i.ds, 0                   ; 2 uses
  br i1 %i.dy, label %.preheader40.i, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.ae
  br i1 %i.dz, label %.lr.ph.preheader.i59, label %Cec_ManSimCompareEqualScore.exit

.lr.ph.preheader.i59:                             ; preds = %.preheader44.i
  %wide.trip.count.i60 = zext nneg i32 %i.ds to i64
  br label %.lr.ph.i61

.preheader40.i:                                   ; preds = %bb.ae
  br i1 %i.dz, label %.lr.ph50.preheader.i, label %Cec_ManSimCompareEqualScore.exit

.lr.ph50.preheader.i:                             ; preds = %.preheader40.i
  %wide.trip.count64.i = zext nneg i32 %i.ds to i64
  br label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.loopexit.i, %.lr.ph50.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph50.preheader.i ], [ %indvars.iv.next62.i, %.loopexit.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv61.i ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv61.i ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %.not38.i = icmp eq i32 %i.eb, %i.ed
  br i1 %.not38.i, label %.loopexit.i, label %.preheader.i66

.preheader.i66:                                   ; preds = %.lr.ph50.i
  %i.ee = shl nuw nsw i64 %indvars.iv61.i, 5
  %2 = and i64 %i.ee, 4294967264
  %invariant.gep67.i = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %2 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.preheader.i66
  %indvars.iv57.i = phi i64 [ 0, %.preheader.i66 ], [ %indvars.iv.next58.i.1, %bb.aj ] ; 4 uses
  %i.ef = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.eh = xor i32 %i.eg, %i.ef
  %i.ei = trunc nuw nsw i64 %indvars.iv57.i to i32
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = and i32 %i.eh, %i.ej
  %.not39.i = icmp eq i32 %i.ek, 0
  br i1 %.not39.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %gep68.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67.i, i64 %indvars.iv57.i ; 2 uses
  %i.el = load i32, ptr %gep68.i, align 4, !tbaa !8
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %gep68.i, align 4, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next58.i = or disjoint i64 %indvars.iv57.i, 1 ; 2 uses
  %i.en = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.eo = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ep = xor i32 %i.eo, %i.en
  %i.eq = trunc nuw nsw i64 %indvars.iv.next58.i to i32
  %i.er = shl nuw i32 1, %i.eq
  %i.es = and i32 %i.ep, %i.er
  %.not39.i.1 = icmp eq i32 %i.es, 0
  br i1 %.not39.i.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %gep68.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep67.i, i64 %indvars.iv.next58.i ; 2 uses
  %i.et = load i32, ptr %gep68.i.1, align 4, !tbaa !8
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %gep68.i.1, align 4, !tbaa !8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, 32
  br i1 %exitcond60.not.i.1, label %.loopexit.i, label %bb.af, !llvm.loop !22

.loopexit.i:                                      ; preds = %bb.aj, %.lr.ph50.i
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %Cec_ManSimCompareEqualScore.exit, label %.lr.ph50.i, !llvm.loop !23

.lr.ph.i61:                                       ; preds = %.loopexit43.i, %.lr.ph.preheader.i59
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %indvars.iv.next54.i, %.loopexit43.i ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv53.i ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv53.i ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = xor i32 %i.ey, %i.ew
  %.not.i62 = icmp eq i32 %i.ez, -1
  br i1 %.not.i62, label %.loopexit43.i, label %.preheader42.i

.preheader42.i:                                   ; preds = %.lr.ph.i61
  %i.fa = shl nuw nsw i64 %indvars.iv53.i, 5
  %3 = and i64 %i.fa, 4294967264
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %3 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.preheader42.i
  %indvars.iv.i63 = phi i64 [ 0, %.preheader42.i ], [ %indvars.iv.next.i64.1, %bb.ao ] ; 4 uses
  %i.fb = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.fc = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fd = xor i32 %i.fc, %i.fb
  %i.fe = trunc nuw nsw i64 %indvars.iv.i63 to i32
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = and i32 %i.fd, %i.ff
  %.not37.not.i = icmp eq i32 %i.fg, 0
  br i1 %.not37.not.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i63 ; 2 uses
  %i.fh = load i32, ptr %gep.i, align 4, !tbaa !8
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %gep.i, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next.i64 = or disjoint i64 %indvars.iv.i63, 1 ; 2 uses
  %i.fj = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.fk = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fl = xor i32 %i.fk, %i.fj
  %i.fm = trunc nuw nsw i64 %indvars.iv.next.i64 to i32
  %i.fn = shl nuw i32 1, %i.fm
  %i.fo = and i32 %i.fl, %i.fn
  %.not37.not.i.1 = icmp eq i32 %i.fo, 0
  br i1 %.not37.not.i.1, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i64 ; 2 uses
  %i.fp = load i32, ptr %gep.i.1, align 4, !tbaa !8
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %gep.i.1, align 4, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %indvars.iv.next.i64.1 = add nuw nsw i64 %indvars.iv.i63, 2 ; 2 uses
  %exitcond.not.i65.1 = icmp eq i64 %indvars.iv.next.i64.1, 32
  br i1 %exitcond.not.i65.1, label %.loopexit43.i, label %bb.ak, !llvm.loop !24

.loopexit43.i:                                    ; preds = %bb.ao, %.lr.ph.i61
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i60
  br i1 %exitcond56.not.i, label %Cec_ManSimCompareEqualScore.exit, label %.lr.ph.i61, !llvm.loop !25

Cec_ManSimCompareEqualScore.exit:                 ; preds = %.loopexit43.i, %.loopexit.i, %.preheader40.i, %.preheader44.i, %Vec_IntPush.exit50, %Vec_IntPush.exit58
  %i.fr = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 200
  %.val41 = load ptr, ptr %i.fs, align 8, !tbaa !50 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.val41, i64 %i.av
  %.0 = load i32, ptr %i.ft, align 4, !tbaa !8    ; 2 uses
  %i.fu = icmp sgt i32 %.0, 0
  br i1 %i.fu, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %Cec_ManSimCompareEqualScore.exit, %Vec_IntPush.exit
  %.val24.i105 = phi ptr [ %.val42, %Vec_IntPush.exit ], [ %.val41, %Cec_ManSimCompareEqualScore.exit ]
  %i.fv = phi ptr [ %i.ar, %Vec_IntPush.exit ], [ %i.fr, %Cec_ManSimCompareEqualScore.exit ] ; 3 uses
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  %.val35 = load i32, ptr %i.fx, align 4, !tbaa !26
  %i.fy = icmp eq i32 %.val35, 0
  br i1 %i.fy, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 3 uses
  %.val26.i = load i32, ptr %i.ga, align 4, !tbaa !26
  %i.gb = icmp sgt i32 %.val26.i, 0
  br i1 %i.gb, label %bb.aq, label %Cec_ManSimClassCreate.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr i8, ptr %i.fz, i64 8      ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fv, i64 192    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fv, i64 200    ; 2 uses
  %.val21.peel.i = load ptr, ptr %i.gc, align 8, !tbaa !30
  %i.gf = load i32, ptr %.val21.peel.i, align 4, !tbaa !8 ; 3 uses
  %.val23.peel.i = load ptr, ptr %i.gd, align 8, !tbaa !31
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %.val23.peel.i, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = or i32 %i.gi, 268435455
  store i32 %i.gj, ptr %i.gh, align 4
  %.val.peel.pre.i = load i32, ptr %i.ga, align 4, !tbaa !26
  %i.gk = icmp sgt i32 %.val.peel.pre.i, 1
  br i1 %i.gk, label %.peel.next.i, label %..critedge.loopexit.i_crit_edge

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.aq
  %.val24.i.pre.pre = load ptr, ptr %i.ge, align 8, !tbaa !50
  br label %.critedge.loopexit.i

.peel.next.i:                                     ; preds = %bb.aq
  %i.gl = and i32 %i.gf, 268435455
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.peel.next.i
  %indvars.iv.i67 = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i68, %bb.ar ] ; 2 uses
  %.01828.i = phi i32 [ %i.gf, %.peel.next.i ], [ %i.gn, %bb.ar ]
  %.val21.i = load ptr, ptr %i.gc, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %indvars.iv.i67
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8  ; 3 uses
  %.val22.i = load ptr, ptr %i.gd, align 8, !tbaa !31
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = and i32 %i.gq, -268435456
  %i.gs = or disjoint i32 %i.gr, %i.gl
  store i32 %i.gs, ptr %i.gp, align 4
  %.val25.i = load ptr, ptr %i.ge, align 8, !tbaa !50 ; 2 uses
  %i.gt = sext i32 %.01828.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.val25.i, i64 %i.gt
  store i32 %i.gn, ptr %i.gu, align 4, !tbaa !8
  %.val.pre.i = load i32, ptr %i.ga, align 4, !tbaa !26
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.gv = sext i32 %.val.pre.i to i64
  %i.gw = icmp slt i64 %indvars.iv.next.i68, %i.gv
  br i1 %i.gw, label %bb.ar, label %.critedge.loopexit.i, !llvm.loop !51

.critedge.loopexit.i:                             ; preds = %bb.ar, %..critedge.loopexit.i_crit_edge
  %.pre-phi = phi i64 [ %i.gg, %..critedge.loopexit.i_crit_edge ], [ %i.go, %bb.ar ]
  %.val24.i.pre = phi ptr [ %.val24.i.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %.val25.i, %bb.ar ]
  %.pre106 = load ptr, ptr %0, align 8, !tbaa !61
  %.pre107 = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %Cec_ManSimClassCreate.exit

Cec_ManSimClassCreate.exit:                       ; preds = %bb.ap, %.critedge.loopexit.i
  %i.gx = phi ptr [ %i.fw, %bb.ap ], [ %.pre107, %.critedge.loopexit.i ] ; 3 uses
  %i.gy = phi ptr [ %i.fv, %bb.ap ], [ %.pre106, %.critedge.loopexit.i ] ; 3 uses
  %.val24.i = phi ptr [ %.val24.i105, %bb.ap ], [ %.val24.i.pre, %.critedge.loopexit.i ]
  %.018.lcssa.i = phi i64 [ -1, %bb.ap ], [ %.pre-phi, %.critedge.loopexit.i ]
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val24.i, i64 %.018.lcssa.i
  store i32 0, ptr %i.gz, align 4, !tbaa !8
  %i.ha = getelementptr i8, ptr %i.gx, i64 4      ; 3 uses
  %.val26.i69 = load i32, ptr %i.ha, align 4, !tbaa !26
  %i.hb = icmp sgt i32 %.val26.i69, 0
  br i1 %i.hb, label %bb.as, label %Cec_ManSimClassCreate.exit85

bb.as:                                            ; preds = %Cec_ManSimClassCreate.exit
  %i.hc = getelementptr i8, ptr %i.gx, i64 8      ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gy, i64 192    ; 2 uses
  %i.he = getelementptr i8, ptr %i.gy, i64 200
  %.val21.peel.i72 = load ptr, ptr %i.hc, align 8, !tbaa !30
  %i.hf = load i32, ptr %.val21.peel.i72, align 4, !tbaa !8 ; 3 uses
  %.val23.peel.i73 = load ptr, ptr %i.hd, align 8, !tbaa !31
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %.val23.peel.i73, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = or i32 %i.hi, 268435455
  store i32 %i.hj, ptr %i.hh, align 4
  %.val.peel.pre.i74 = load i32, ptr %i.ha, align 4, !tbaa !26
  %i.hk = icmp sgt i32 %.val.peel.pre.i74, 1
  br i1 %i.hk, label %.peel.next.i77, label %.critedge.loopexit.i75

.peel.next.i77:                                   ; preds = %bb.as
  %i.hl = and i32 %i.hf, 268435455
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.peel.next.i77
  %indvars.iv.i78 = phi i64 [ 1, %.peel.next.i77 ], [ %indvars.iv.next.i84, %bb.at ] ; 2 uses
  %.01828.i79 = phi i32 [ %i.hf, %.peel.next.i77 ], [ %i.hn, %bb.at ]
  %.val21.i80 = load ptr, ptr %i.hc, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val21.i80, i64 %indvars.iv.i78
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !8  ; 3 uses
  %.val22.i81 = load ptr, ptr %i.hd, align 8, !tbaa !31
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %.val22.i81, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = and i32 %i.hq, -268435456
  %i.hs = or disjoint i32 %i.hr, %i.hl
  store i32 %i.hs, ptr %i.hp, align 4
  %.val25.i82 = load ptr, ptr %i.he, align 8, !tbaa !50
  %i.ht = sext i32 %.01828.i79 to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.val25.i82, i64 %i.ht
  store i32 %i.hn, ptr %i.hu, align 4, !tbaa !8
  %.val.pre.i83 = load i32, ptr %i.ha, align 4, !tbaa !26
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.hv = sext i32 %.val.pre.i83 to i64
  %i.hw = icmp slt i64 %indvars.iv.next.i84, %i.hv
  br i1 %i.hw, label %bb.at, label %.critedge.loopexit.i75, !llvm.loop !51

.critedge.loopexit.i75:                           ; preds = %bb.at, %bb.as
  %.pre-phi110 = phi i64 [ %i.hg, %bb.as ], [ %i.ho, %bb.at ]
  %.pre108 = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %Cec_ManSimClassCreate.exit85

Cec_ManSimClassCreate.exit85:                     ; preds = %Cec_ManSimClassCreate.exit, %.critedge.loopexit.i75
  %i.hx = phi ptr [ %i.gx, %Cec_ManSimClassCreate.exit ], [ %.pre108, %.critedge.loopexit.i75 ] ; 3 uses
  %.018.lcssa.i70 = phi i64 [ -1, %Cec_ManSimClassCreate.exit ], [ %.pre-phi110, %.critedge.loopexit.i75 ]
  %i.hy = getelementptr i8, ptr %i.gy, i64 200
  %.val24.i71 = load ptr, ptr %i.hy, align 8, !tbaa !50
  %i.hz = getelementptr inbounds [4 x i8], ptr %.val24.i71, i64 %.018.lcssa.i70
  store i32 0, ptr %i.hz, align 4, !tbaa !8
  %i.ia = getelementptr i8, ptr %i.hx, i64 4
  %.val = load i32, ptr %i.ia, align 4, !tbaa !26
  %i.ib = icmp sgt i32 %.val, 1
  br i1 %i.ib, label %bb.au, label %bb.av

bb.au:                                            ; preds = %Cec_ManSimClassCreate.exit85
end_hunk_1
begin_hunk_2_@Cec_ManSimFindBestPattern:bb.a
  %i.bd = lshr i32 %i.bc, %i.ap
  %i.be = xor i32 %i.bd, %i.ba
  %i.bf = and i32 %i.be, 1
  %.not29 = icmp eq i32 %i.bf, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = shl nuw i32 1, %i.az
  %i.bh = xor i32 %i.ay, %i.bg
  store i32 %i.bh, ptr %i.ax, align 4, !tbaa !8
  %.val31.pre = load i32, ptr %i.af, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val31 = phi i32 [ %.val3144, %bb.d ], [ %.val31.pre, %bb.e ] ; 2 uses
  %i.bi = add nuw nsw i32 %.12739, 1              ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %.val31
  br i1 %i.bj, label %bb.d, label %._crit_edge42, !llvm.loop !128

._crit_edge42:                                    ; preds = %bb.f, %.preheader
  store i32 %.024.lcssa, ptr %i.ac, align 4, !tbaa !116
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge42, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Cec_ManSimAnalyzeOutputs(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !130
  %.not50 = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %.val57131 = load i32, ptr %i.h, align 8, !tbaa !127
  %i.i = getelementptr i8, ptr %i.g, i64 72
  %.val58132 = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.j = getelementptr i8, ptr %.val58132, i64 4  ; 3 uses
  %.val58.val133 = load i32, ptr %i.j, align 4, !tbaa !26
  %i.k = icmp sgt i32 %.val58.val133, %.val57131  ; 2 uses
  br i1 %.not50, label %.preheader, label %.preheader110

.preheader110:                                    ; preds = %bb.b
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader110
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.b
  br i1 %i.k, label %.lr.ph135, label %.loopexit

.lr.ph135:                                        ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !62   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0                     ; 4 uses
  %wide.trip.count.i77 = zext nneg i32 %i.w to i64 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  br label %bb.q

bb.c:                                             ; preds = %.lr.ph, %Cec_ManSimCompareEqual.exit.thread
  %i.ad = phi ptr [ %i.g, %.lr.ph ], [ %i.dr, %Cec_ManSimCompareEqual.exit.thread ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Cec_ManSimCompareEqual.exit.thread ] ; 4 uses
  %i.ae = phi ptr [ %i.j, %.lr.ph ], [ %i.du, %Cec_ManSimCompareEqual.exit.thread ]
  %i.af = phi ptr [ %i.h, %.lr.ph ], [ %i.ds, %Cec_ManSimCompareEqual.exit.thread ]
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val54 = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %indvars.iv ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 6 uses
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.an = load i32, ptr %i.al, align 4, !tbaa !8
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.preheader.i, label %.preheader18.i

.preheader18.i:                                   ; preds = %bb.c
  br i1 %i.o, label %.lr.ph.i, label %Cec_ManSimCompareEqual.exit.thread

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.o, label %.lr.ph25.i, label %Cec_ManSimCompareEqual.exit.thread

bb.d:                                             ; preds = %.lr.ph25.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i
  br i1 %exitcond36.not.i, label %Cec_ManSimCompareEqual.exit.thread, label %.lr.ph25.i, !llvm.loop !12

.lr.ph25.i:                                       ; preds = %.preheader.i, %bb.d
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv32.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv32.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %.not17.i = icmp eq i32 %i.as, %i.au
  br i1 %.not17.i, label %bb.d, label %Cec_ManSimCompareEqual.exit

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cec_ManSimCompareEqual.exit.thread, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %.preheader18.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.preheader18.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = xor i32 %i.ay, %i.aw
  %.not.i = icmp eq i32 %i.az, -1
  br i1 %.not.i, label %bb.e, label %Cec_ManSimCompareEqual.exit

Cec_ManSimCompareEqual.exit:                      ; preds = %.lr.ph.i, %.lr.ph25.i
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !115
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.f, label %Cec_ManSimSavePattern.exit

bb.f:                                             ; preds = %Cec_ManSimCompareEqual.exit
  %i.bc = lshr exact i64 %indvars.iv, 1
  %i.bd = trunc nuw nsw i64 %i.bc to i32          ; 2 uses
  store i32 %i.bd, ptr %i.p, align 8, !tbaa !115
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.bf = load i32, ptr %i.al, align 4, !tbaa !8
  %i.bg = xor i32 %i.bf, %i.be
  %i.bh = and i32 %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.preheader.i70, label %.preheader32.i

.preheader32.i:                                   ; preds = %bb.f
  br i1 %i.o, label %.lr.ph.i65, label %Cec_ManSimCompareEqualFirstBit.exit

.preheader.i70:                                   ; preds = %bb.f
  br i1 %i.o, label %.lr.ph41.i, label %Cec_ManSimCompareEqualFirstBit.exit

.lr.ph41.i:                                       ; preds = %.preheader.i70, %bb.h
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.h ], [ 0, %.preheader.i70 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv53.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8  ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv53.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %.not31.i = icmp eq i32 %i.bk, %i.bm
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph41.i
  %i.bn = xor i32 %i.bm, %i.bk
  br label %.loopexit.sink.split.i

bb.h:                                             ; preds = %.lr.ph41.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i
  br i1 %exitcond57.not.i, label %Cec_ManSimCompareEqualFirstBit.exit, label %.lr.ph41.i, !llvm.loop !16

.lr.ph.i65:                                       ; preds = %.preheader32.i, %bb.j
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i68, %bb.j ], [ 0, %.preheader32.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i66
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i66
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = xor i32 %i.br, -1                       ; 2 uses
  %.not.i67 = icmp eq i32 %i.bp, %i.bs
  br i1 %.not.i67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i65
  %i.bt = xor i32 %i.bp, %i.bs
  br label %.loopexit.sink.split.i

bb.j:                                             ; preds = %.lr.ph.i65
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.next.i68, %wide.trip.count.i
  br i1 %exitcond.not.i69, label %Cec_ManSimCompareEqualFirstBit.exit, label %.lr.ph.i65, !llvm.loop !17

.loopexit.sink.split.i:                           ; preds = %bb.i, %bb.g
  %.sink73.i = phi i32 [ %i.bt, %bb.i ], [ %i.bn, %bb.g ]
  %.sink72.in.in.i = phi i64 [ %indvars.iv.i66, %bb.i ], [ %indvars.iv53.i, %bb.g ]
  %.sink72.in.i = trunc i64 %.sink72.in.in.i to i32
  %.sink72.i = shl nsw i32 %.sink72.in.i, 5
  %i.bu = tail call fastcc i32 @Gia_WordFindFirstBit(i32 noundef %.sink73.i)
  %i.bv = add nsw i32 %.sink72.i, %i.bu
  br label %Cec_ManSimCompareEqualFirstBit.exit

Cec_ManSimCompareEqualFirstBit.exit:              ; preds = %bb.j, %bb.h, %.preheader32.i, %.preheader.i70, %.loopexit.sink.split.i
  %.026.i = phi i32 [ %i.bv, %.loopexit.sink.split.i ], [ -1, %.preheader.i70 ], [ -1, %bb.h ], [ -1, %.preheader32.i ], [ -1, %bb.j ] ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ad, i64 64
  %.val18.i = load ptr, ptr %i.bw, align 8, !tbaa !113
  %i.bx = getelementptr i8, ptr %.val18.i, i64 4
  %.val18.val.i = load i32, ptr %i.bx, align 4, !tbaa !26 ; 6 uses
  %i.by = ashr i32 %.val18.val.i, 5
  %i.bz = and i32 %.val18.val.i, 31
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = add nsw i32 %i.by, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, 20
  %i.cg = tail call noalias ptr @calloc(i64 noundef %i.cf, i64 noundef 1) #25 ; 5 uses
  store ptr %i.cg, ptr %i.q, align 8, !tbaa !114
  store i32 %i.bd, ptr %i.cg, align 4, !tbaa !116
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 %.val18.val.i, ptr %i.ch, align 4, !tbaa !118
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 %.val18.val.i, ptr %i.ci, align 4, !tbaa !119
  %i.cj = icmp sgt i32 %.val18.val.i, 0
  br i1 %i.cj, label %.lr.ph.i71, label %Cec_ManSimSavePattern.exit

.lr.ph.i71:                                       ; preds = %Cec_ManSimCompareEqualFirstBit.exit
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val19.i = load ptr, ptr %i.cl, align 8, !tbaa !121
  %i.cm = ashr i32 %.026.i, 5
  %i.cn = sext i32 %i.cm to i64
  %i.co = and i32 %.026.i, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cr = zext nneg i32 %.val18.val.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i74, %bb.m ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !123
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cn
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = and i32 %i.cv, %i.cp
  %.not.i73 = icmp eq i32 %i.cw, 0
  br i1 %.not.i73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = trunc nuw nsw i64 %indvars.iv.i72 to i32
  %i.cy = and i32 %i.cx, 31
  %i.cz = shl nuw i32 1, %i.cy
  %i.da = lshr i64 %indvars.iv.i72, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = or i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i74, %i.cr
  br i1 %exitcond.not, label %Cec_ManSimSavePattern.exit, label %bb.k, !llvm.loop !124

Cec_ManSimSavePattern.exit:                       ; preds = %bb.m, %Cec_ManSimCompareEqualFirstBit.exit, %Cec_ManSimCompareEqual.exit
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !133 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Cec_ManSimSavePattern.exit
  %.val59 = load i32, ptr %i.af, align 8, !tbaa !127
  %.val60.val = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.dg = sub nsw i32 %.val60.val, %.val59
  %i.dh = sdiv i32 %i.dg, 2
  %i.di = sext i32 %i.dh to i64
  %i.dj = tail call noalias ptr @calloc(i64 noundef %i.di, i64 noundef 8) #25 ; 2 uses
  store ptr %i.dj, ptr %i.s, align 8, !tbaa !133
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %Cec_ManSimSavePattern.exit
  %i.dk = phi ptr [ %i.dj, %bb.n ], [ %i.de, %Cec_ManSimSavePattern.exit ]
  %i.dl = lshr exact i64 %indvars.iv, 1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !123
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.p, label %Cec_ManSimCompareEqual.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dp = load i32, ptr %i.t, align 4, !tbaa !134
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.t, align 4, !tbaa !134
  store ptr inttoptr (i64 1 to ptr), ptr %i.dm, align 8, !tbaa !123
  %.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %Cec_ManSimCompareEqual.exit.thread

Cec_ManSimCompareEqual.exit.thread:               ; preds = %bb.e, %bb.d, %.preheader.i, %.preheader18.i, %bb.p, %bb.o
  %i.dr = phi ptr [ %i.ad, %bb.d ], [ %i.ad, %bb.o ], [ %i.ad, %.preheader.i ], [ %i.ad, %.preheader18.i ], [ %.pre, %bb.p ], [ %i.ad, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 16     ; 2 uses
  %.val61 = load i32, ptr %i.ds, align 8, !tbaa !127
  %i.dt = getelementptr i8, ptr %i.dr, i64 72
  %.val62 = load ptr, ptr %i.dt, align 8, !tbaa !131
  %i.du = getelementptr i8, ptr %.val62, i64 4    ; 2 uses
  %.val62.val = load i32, ptr %i.du, align 4, !tbaa !26
  %i.dv = sub nsw i32 %.val62.val, %.val61
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next, %i.dw
  br i1 %i.dx, label %bb.c, label %.loopexit, !llvm.loop !135

bb.q:                                             ; preds = %.lr.ph135, %Cec_ManSimCompareConst.exit.thread
  %i.dy = phi ptr [ %i.g, %.lr.ph135 ], [ %i.gq, %Cec_ManSimCompareConst.exit.thread ] ; 6 uses
  %indvars.iv160 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next161, %Cec_ManSimCompareConst.exit.thread ] ; 4 uses
  %i.dz = phi ptr [ %i.j, %.lr.ph135 ], [ %i.gt, %Cec_ManSimCompareConst.exit.thread ]
  %i.ea = phi ptr [ %i.h, %.lr.ph135 ], [ %i.gr, %Cec_ManSimCompareConst.exit.thread ]
  %i.eb = load ptr, ptr %i.u, align 8, !tbaa !132
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val = load ptr, ptr %i.ec, align 8, !tbaa !121
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv160
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !123 ; 6 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = and i32 %i.ef, 1
  %.not.i75 = icmp eq i32 %i.eg, 0
  br i1 %.not.i75, label %.preheader.i82, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.q
  br i1 %i.x, label %.lr.ph.i78, label %Cec_ManSimCompareConst.exit.thread

.preheader.i82:                                   ; preds = %bb.q
  br i1 %i.x, label %.lr.ph21.i, label %Cec_ManSimCompareConst.exit.thread

bb.r:                                             ; preds = %.lr.ph.i78
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i77
  br i1 %exitcond.not.i81, label %Cec_ManSimCompareConst.exit.thread, label %.lr.ph.i78, !llvm.loop !9

.lr.ph.i78:                                       ; preds = %.preheader14.i, %bb.r
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80, %bb.r ], [ 0, %.preheader14.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i79
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %.not13.i = icmp eq i32 %i.ei, -1
  br i1 %.not13.i, label %bb.r, label %Cec_ManSimCompareConst.exit

bb.s:                                             ; preds = %.lr.ph21.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count.i77
  br i1 %exitcond32.not.i, label %Cec_ManSimCompareConst.exit.thread, label %.lr.ph21.i, !llvm.loop !11

.lr.ph21.i:                                       ; preds = %.preheader.i82, %bb.s
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %bb.s ], [ 0, %.preheader.i82 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv28.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %.not12.i = icmp eq i32 %i.ek, 0
  br i1 %.not12.i, label %bb.s, label %Cec_ManSimCompareConst.exit

Cec_ManSimCompareConst.exit:                      ; preds = %.lr.ph.i78, %.lr.ph21.i
  %i.el = load i32, ptr %i.y, align 8, !tbaa !115
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %bb.t, label %Cec_ManSimSavePattern.exit99

bb.t:                                             ; preds = %Cec_ManSimCompareConst.exit
  %i.en = trunc nuw nsw i64 %indvars.iv160 to i32 ; 2 uses
  store i32 %i.en, ptr %i.y, align 8, !tbaa !115
  %i.eo = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.ep = and i32 %i.eo, 1
  %.not.i83 = icmp eq i32 %i.ep, 0
  br i1 %.not.i83, label %.preheader.i91, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.t
  br i1 %i.x, label %.lr.ph.i86, label %Cec_ManSimCompareConstFirstBit.exit

.preheader.i91:                                   ; preds = %bb.t
  br i1 %i.x, label %.lr.ph29.i, label %Cec_ManSimCompareConstFirstBit.exit

.lr.ph.i86:                                       ; preds = %.preheader22.i, %bb.v
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i89, %bb.v ], [ 0, %.preheader22.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i87
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8  ; 2 uses
  %.not21.i = icmp eq i32 %i.er, -1
  br i1 %.not21.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i86
  %i.es = xor i32 %i.er, -1
  br label %.loopexit.sink.split.i88

bb.v:                                             ; preds = %.lr.ph.i86
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i77
  br i1 %exitcond.not.i90, label %Cec_ManSimCompareConstFirstBit.exit, label %.lr.ph.i86, !llvm.loop !14

.lr.ph29.i:                                       ; preds = %.preheader.i91, %bb.w
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %bb.w ], [ 0, %.preheader.i91 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv37.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8  ; 2 uses
  %.not20.i = icmp eq i32 %i.eu, 0
  br i1 %.not20.i, label %bb.w, label %.loopexit.sink.split.i88

bb.w:                                             ; preds = %.lr.ph29.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i77
  br i1 %exitcond41.not.i, label %Cec_ManSimCompareConstFirstBit.exit, label %.lr.ph29.i, !llvm.loop !15

.loopexit.sink.split.i88:                         ; preds = %.lr.ph29.i, %bb.u
  %.lcssa.sink.i = phi i32 [ %i.es, %bb.u ], [ %i.eu, %.lr.ph29.i ]
  %.sink50.in.in.i = phi i64 [ %indvars.iv.i87, %bb.u ], [ %indvars.iv37.i, %.lr.ph29.i ]
  %.sink50.in.i = trunc i64 %.sink50.in.in.i to i32
  %.sink50.i = shl nsw i32 %.sink50.in.i, 5
  %i.ev = tail call fastcc i32 @Gia_WordFindFirstBit(i32 noundef %.lcssa.sink.i)
  %i.ew = add nsw i32 %.sink50.i, %i.ev
  br label %Cec_ManSimCompareConstFirstBit.exit

Cec_ManSimCompareConstFirstBit.exit:              ; preds = %bb.v, %bb.w, %.preheader22.i, %.preheader.i91, %.loopexit.sink.split.i88
  %.017.i = phi i32 [ %i.ew, %.loopexit.sink.split.i88 ], [ -1, %.preheader.i91 ], [ -1, %bb.w ], [ -1, %.preheader22.i ], [ -1, %bb.v ] ; 2 uses
  %i.ex = getelementptr i8, ptr %i.dy, i64 64
  %.val18.i92 = load ptr, ptr %i.ex, align 8, !tbaa !113
  %i.ey = getelementptr i8, ptr %.val18.i92, i64 4
  %.val18.val.i93 = load i32, ptr %i.ey, align 4, !tbaa !26 ; 6 uses
  %i.ez = ashr i32 %.val18.val.i93, 5
  %i.fa = and i32 %.val18.val.i93, 31
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %i.fd = add nsw i32 %i.ez, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = add nsw i64 %i.ff, 20
  %i.fh = tail call noalias ptr @calloc(i64 noundef %i.fg, i64 noundef 1) #25 ; 5 uses
  store ptr %i.fh, ptr %i.z, align 8, !tbaa !114
  store i32 %i.en, ptr %i.fh, align 4, !tbaa !116
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 %.val18.val.i93, ptr %i.fi, align 4, !tbaa !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 %.val18.val.i93, ptr %i.fj, align 4, !tbaa !119
  %i.fk = icmp sgt i32 %.val18.val.i93, 0
  br i1 %i.fk, label %.lr.ph.i94, label %Cec_ManSimSavePattern.exit99

.lr.ph.i94:                                       ; preds = %Cec_ManSimCompareConstFirstBit.exit
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %.val19.i95 = load ptr, ptr %i.fm, align 8, !tbaa !121
  %i.fn = ashr i32 %.017.i, 5
  %i.fo = sext i32 %i.fn to i64
  %i.fp = and i32 %.017.i, 31
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %i.fs = zext nneg i32 %.val18.val.i93 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i94
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.i94 ], [ %indvars.iv.next.i98, %bb.z ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.val19.i95, i64 %indvars.iv.i96
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !123
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fo
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = and i32 %i.fw, %i.fq
  %.not.i97 = icmp eq i32 %i.fx, 0
  br i1 %.not.i97, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fy = trunc nuw nsw i64 %indvars.iv.i96 to i32
  %i.fz = and i32 %i.fy, 31
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = lshr i64 %indvars.iv.i96, 5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8
  %i.ge = or i32 %i.gd, %i.ga
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next.i98, %i.fs
  br i1 %exitcond159.not, label %Cec_ManSimSavePattern.exit99, label %bb.x, !llvm.loop !124

Cec_ManSimSavePattern.exit99:                     ; preds = %bb.z, %Cec_ManSimCompareConstFirstBit.exit, %Cec_ManSimCompareConst.exit
  %i.gf = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %Cec_ManSimSavePattern.exit99
  %.val55 = load i32, ptr %i.ea, align 8, !tbaa !127
  %.val56.val = load i32, ptr %i.dz, align 4, !tbaa !26
  %i.gh = sub nsw i32 %.val56.val, %.val55
  %i.gi = sext i32 %i.gh to i64
  %i.gj = tail call noalias ptr @calloc(i64 noundef %i.gi, i64 noundef 8) #25 ; 2 uses
  store ptr %i.gj, ptr %i.ab, align 8, !tbaa !133
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %Cec_ManSimSavePattern.exit99
  %i.gk = phi ptr [ %i.gj, %bb.aa ], [ %i.gf, %Cec_ManSimSavePattern.exit99 ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv160 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !123
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ac, label %Cec_ManSimCompareConst.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.go = load i32, ptr %i.ac, align 4, !tbaa !134
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.ac, align 4, !tbaa !134
  store ptr inttoptr (i64 1 to ptr), ptr %i.gl, align 8, !tbaa !123
  %.pre163 = load ptr, ptr %0, align 8, !tbaa !61
  br label %Cec_ManSimCompareConst.exit.thread

Cec_ManSimCompareConst.exit.thread:               ; preds = %bb.r, %bb.s, %.preheader.i82, %.preheader14.i, %bb.ac, %bb.ab
  %i.gq = phi ptr [ %i.dy, %bb.s ], [ %i.dy, %bb.ab ], [ %i.dy, %.preheader.i82 ], [ %i.dy, %.preheader14.i ], [ %.pre163, %bb.ac ], [ %i.dy, %bb.r ] ; 3 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16     ; 2 uses
  %.val57 = load i32, ptr %i.gr, align 8, !tbaa !127
  %i.gs = getelementptr i8, ptr %i.gq, i64 72
  %.val58 = load ptr, ptr %i.gs, align 8, !tbaa !131
  %i.gt = getelementptr i8, ptr %.val58, i64 4    ; 2 uses
  %.val58.val = load i32, ptr %i.gt, align 4, !tbaa !26
  %i.gu = sub nsw i32 %.val58.val, %.val57
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next161, %i.gv
  br i1 %i.gw, label %bb.q, label %.loopexit, !llvm.loop !136

.loopexit:                                        ; preds = %Cec_ManSimCompareEqual.exit.thread, %Cec_ManSimCompareConst.exit.thread, %.preheader110, %.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !133
  %i.gz = icmp ne ptr %i.gy, null
  %i.ha = zext i1 %i.gz to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %.loopexit
  %.049 = phi i32 [ %i.ha, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cec_ManSimSimulateRound(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @Cec_ManSimSimulateRoundInt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Cec_ManSimSimulateRoundInt(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67
  %i.h = add i32 %i.d, 1                          ; 2 uses
  %i.i = mul nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = add i32 %i.h, %i.i
  %i.l = load i32, ptr %i.j, align 8, !tbaa !68
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %Cec_ManSimMemRelink.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.016.i = phi i32 [ %i.i, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %.01415.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.q, %bb.c ]
  store i32 %.016.i, ptr %.01415.i, align 4, !tbaa !8
  %i.p = zext i32 %.016.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.c, align 8, !tbaa !62
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = add i32 %i.s, %.016.i                    ; 2 uses
  %i.u = add i32 %i.s, %i.t
  %i.v = load i32, ptr %i.j, align 8, !tbaa !68
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %bb.c, label %Cec_ManSimMemRelink.exit, !llvm.loop !69

Cec_ManSimMemRelink.exit:                         ; preds = %bb.c, %bb.b
  %.014.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.q, %bb.c ]
  store i32 0, ptr %.014.lcssa.i, align 4, !tbaa !8
  %i.x = load i32, ptr %i.c, align 8, !tbaa !62
  store i32 %i.x, ptr %i.a, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %Cec_ManSimMemRelink.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %.not197 = icmp eq ptr %i.aa, null
  br i1 %.not197, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aa) #24
  store ptr null, ptr %i.z, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %.not198 = icmp eq ptr %i.ac, null
  br i1 %.not198, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !62
  %i.ae = shl nsw i32 %i.ad, 5
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 4) #25
end_hunk_2
begin_hunk_3_@Cec_ManSimSimulateRoundInt:bb.a
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !8
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1
  %i.gi = load i32, ptr %i.c, align 8, !tbaa !62
  %i.gj = sext i32 %i.gi to i64
  %.not210.not = icmp slt i64 %indvars.iv388, %i.gj
  br i1 %.not210.not, label %.lr.ph337, label %.loopexit305, !llvm.loop !145

.loopexit305:                                     ; preds = %.lr.ph328, %.lr.ph331, %.lr.ph334, %.lr.ph337, %.preheader310, %.preheader308, %.preheader306, %.preheader304
  br i1 %.not215, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit305
  %i.gk = lshr i64 %indvars.iv400, 5
  %i.gl = and i64 %i.gk, 134217727
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gl ; 2 uses
  %i.gn = and i32 %i.dr, 31
  %i.go = shl nuw i32 1, %i.gn                    ; 2 uses
  %i.gp = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.gq = xor i32 %i.go, -1
  %i.gr = and i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !8
  %i.gu = and i32 %i.gt, 1
  %.not216 = icmp eq i32 %i.gu, 0
  %i.gv = select i1 %.not216, i32 0, i32 %i.go
  %i.gw = or i32 %i.gv, %i.gr
  store i32 %i.gw, ptr %i.gm, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %.loopexit305, %bb.x, %.loopexit
  %.0191 = phi ptr [ %i.bl, %.loopexit ], [ %i.ds, %bb.x ], [ %i.ds, %.loopexit305 ] ; 5 uses
  %.2 = phi i32 [ %.1182, %.loopexit ], [ %.0181352, %bb.x ], [ %.0181352, %.loopexit305 ] ; 5 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !61
  %i.gy = getelementptr i8, ptr %i.gx, i64 192
  %.val238 = load ptr, ptr %i.gy, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val238, i64 %indvars.iv400
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = and i32 %i.ha, 268435455
  %.not297 = icmp eq i32 %i.hb, 0
  br i1 %.not297, label %bb.z, label %Cec_ManSimCompareConstScore.exit

bb.z:                                             ; preds = %bb.y
  %i.hc = getelementptr inbounds nuw i8, ptr %.0191, i64 4 ; 6 uses
  %i.hd = load i32, ptr %i.c, align 8, !tbaa !62  ; 3 uses
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !8
  %i.hf = and i32 %i.he, 1
  %.not.i258 = icmp eq i32 %i.hf, 0
  %i.hg = icmp sgt i32 %i.hd, 0                   ; 2 uses
  br i1 %.not.i258, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.z
  br i1 %i.hg, label %.lr.ph.preheader.i, label %Cec_ManSimCompareConstScore.exit

.lr.ph.preheader.i:                               ; preds = %.preheader14.i
  %wide.trip.count.i = zext nneg i32 %i.hd to i64
  br label %.lr.ph.i259

.preheader.i:                                     ; preds = %bb.z
  br i1 %i.hg, label %.lr.ph21.preheader.i, label %Cec_ManSimCompareConstScore.exit

.lr.ph21.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count31.i = zext nneg i32 %i.hd to i64
  br label %.lr.ph21.i

bb.aa:                                            ; preds = %.lr.ph.i259
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Cec_ManSimCompareConstScore.exit, label %.lr.ph.i259, !llvm.loop !9

.lr.ph.i259:                                      ; preds = %bb.aa, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !8
  %.not13.i = icmp eq i32 %i.hi, -1
  br i1 %.not13.i, label %bb.aa, label %Cec_ManSimCompareConst.exit

bb.ab:                                            ; preds = %.lr.ph21.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %Cec_ManSimCompareConstScore.exit, label %.lr.ph21.i, !llvm.loop !11

.lr.ph21.i:                                       ; preds = %bb.ab, %.lr.ph21.preheader.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph21.preheader.i ], [ %indvars.iv.next29.i, %bb.ab ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv28.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8
  %.not12.i = icmp eq i32 %i.hk, 0
  br i1 %.not12.i, label %bb.ab, label %Cec_ManSimCompareConst.exit

Cec_ManSimCompareConst.exit:                      ; preds = %.lr.ph.i259, %.lr.ph21.i
  %i.hl = load i32, ptr %.0191, align 4, !tbaa !8
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %.0191, align 4, !tbaa !8
  %i.hn = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !26 ; 7 uses
  %i.hq = load i32, ptr %i.hn, align 8, !tbaa !58
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %Cec_ManSimCompareConst.exit
  %i.hs = icmp slt i32 %i.hp, 16
  br i1 %i.hs, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hu, null
  br i1 %.not9.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hu, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.af, %bb.ae
  %i.hx = phi ptr [ %i.hv, %bb.ae ], [ %i.hw, %bb.af ]
  store ptr %i.hx, ptr %i.ht, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ac
  %i.hy = icmp samesign ult i32 %i.hp, 1073741823
  %i.hz = shl nuw nsw i32 %i.hp, 1
  %spec.select.i = select i1 %i.hy, i32 %i.hz, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.hp, %spec.select.i
  br i1 %.not.i9.i, label %bb.ah, label %Vec_IntPush.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ib, null
  %i.ic = zext nneg i32 %spec.select.i to i64
  %i.id = shl nuw nsw i64 %i.ic, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ie = tail call ptr @realloc(ptr noundef nonnull %i.ib, i64 noundef %i.id) #22
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.if = tail call noalias ptr @malloc(i64 noundef %i.id) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ig = phi ptr [ %i.ie, %bb.ai ], [ %i.if, %bb.aj ]
  store ptr %i.ig, ptr %i.ia, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ak, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ak ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hn, align 8, !tbaa !58
  %.pre = load i32, ptr %i.ho, align 4, !tbaa !26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Cec_ManSimCompareConst.exit, %bb.ag, %Vec_IntGrow.exit11.sink.split.i
  %i.ih = phi i32 [ %i.hp, %Cec_ManSimCompareConst.exit ], [ %i.hp, %bb.ag ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !30
  %i.ik = add nsw i32 %i.ih, 1
  store i32 %i.ik, ptr %i.ho, align 4, !tbaa !26
  %i.il = sext i32 %i.ih to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.il
  %i.in = trunc nuw nsw i64 %indvars.iv400 to i32
  store i32 %i.in, ptr %i.im, align 4, !tbaa !8
  %i.io = load ptr, ptr %i.ab, align 8, !tbaa !63
  %.not226 = icmp eq ptr %i.io, null
  br i1 %.not226, label %Cec_ManSimCompareConstScore.exit, label %bb.al

bb.al:                                            ; preds = %Vec_IntPush.exit
  %i.ip = load i32, ptr %i.c, align 8, !tbaa !62  ; 3 uses
  %i.iq = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ir = load i32, ptr %i.hc, align 4, !tbaa !8
  %i.is = and i32 %i.ir, 1
  %.not.i260 = icmp eq i32 %i.is, 0
  %i.it = icmp sgt i32 %i.ip, 0                   ; 2 uses
  br i1 %.not.i260, label %.preheader32.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.al
  br i1 %i.it, label %.lr.ph.preheader.i261, label %Cec_ManSimCompareConstScore.exit

.lr.ph.preheader.i261:                            ; preds = %.preheader36.i
  %wide.trip.count.i262 = zext nneg i32 %i.ip to i64
  br label %.lr.ph.i263

.preheader32.i:                                   ; preds = %bb.al
  br i1 %i.it, label %.lr.ph42.preheader.i, label %Cec_ManSimCompareConstScore.exit

.lr.ph42.preheader.i:                             ; preds = %.preheader32.i
  %wide.trip.count56.i = zext nneg i32 %i.ip to i64
  br label %.lr.ph42.i

.lr.ph.i263:                                      ; preds = %.loopexit35.i, %.lr.ph.preheader.i261
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph.preheader.i261 ], [ %indvars.iv.next46.i, %.loopexit35.i ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv45.i ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8
  %.not30.i = icmp eq i32 %i.iv, -1
  br i1 %.not30.i, label %.loopexit35.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %.lr.ph.i263
  %i.iw = shl nuw nsw i64 %indvars.iv45.i, 5
  %4 = and i64 %i.iw, 4294967264
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %4 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.preheader34.i
  %indvars.iv.i264 = phi i64 [ 0, %.preheader34.i ], [ %indvars.iv.next.i265.1, %bb.aq ] ; 4 uses
  %i.ix = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.iy = trunc nuw nsw i64 %indvars.iv.i264 to i32
  %i.iz = shl nuw i32 1, %i.iy
  %i.ja = and i32 %i.iz, %i.ix
  %.not31.not.i = icmp eq i32 %i.ja, 0
  br i1 %.not31.not.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i264 ; 2 uses
  %i.jb = load i32, ptr %gep.i, align 4, !tbaa !8
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %gep.i, align 4, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %indvars.iv.next.i265 = or disjoint i64 %indvars.iv.i264, 1 ; 2 uses
  %i.jd = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.je = trunc nuw nsw i64 %indvars.iv.next.i265 to i32
  %i.jf = shl nuw i32 1, %i.je
  %i.jg = and i32 %i.jf, %i.jd
  %.not31.not.i.1 = icmp eq i32 %i.jg, 0
  br i1 %.not31.not.i.1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i265 ; 2 uses
  %i.jh = load i32, ptr %gep.i.1, align 4, !tbaa !8
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %gep.i.1, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %indvars.iv.next.i265.1 = add nuw nsw i64 %indvars.iv.i264, 2 ; 2 uses
  %exitcond.not.i266.1 = icmp eq i64 %indvars.iv.next.i265.1, 32
  br i1 %exitcond.not.i266.1, label %.loopexit35.i, label %bb.am, !llvm.loop !18

.loopexit35.i:                                    ; preds = %bb.aq, %.lr.ph.i263
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i262
  br i1 %exitcond48.not.i, label %Cec_ManSimCompareConstScore.exit, label %.lr.ph.i263, !llvm.loop !19

.lr.ph42.i:                                       ; preds = %.loopexit.i, %.lr.ph42.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph42.preheader.i ], [ %indvars.iv.next54.i, %.loopexit.i ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv53.i ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !8
  %.not28.i = icmp eq i32 %i.jk, 0
  br i1 %.not28.i, label %.loopexit.i, label %.preheader.i267

.preheader.i267:                                  ; preds = %.lr.ph42.i
  %i.jl = shl nuw nsw i64 %indvars.iv53.i, 5
  %5 = and i64 %i.jl, 4294967264
  %invariant.gep59.i = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %5 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.preheader.i267
  %indvars.iv49.i = phi i64 [ 0, %.preheader.i267 ], [ %indvars.iv.next50.i.1, %bb.av ] ; 4 uses
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !8
  %i.jn = trunc nuw nsw i64 %indvars.iv49.i to i32
  %i.jo = shl nuw i32 1, %i.jn
  %i.jp = and i32 %i.jo, %i.jm
  %.not29.i = icmp eq i32 %i.jp, 0
  br i1 %.not29.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %gep60.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep59.i, i64 %indvars.iv49.i ; 2 uses
  %i.jq = load i32, ptr %gep60.i, align 4, !tbaa !8
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %gep60.i, align 4, !tbaa !8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next50.i = or disjoint i64 %indvars.iv49.i, 1 ; 2 uses
  %i.js = load i32, ptr %i.jj, align 4, !tbaa !8
  %i.jt = trunc nuw nsw i64 %indvars.iv.next50.i to i32
  %i.ju = shl nuw i32 1, %i.jt
  %i.jv = and i32 %i.ju, %i.js
  %.not29.i.1 = icmp eq i32 %i.jv, 0
  br i1 %.not29.i.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %gep60.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep59.i, i64 %indvars.iv.next50.i ; 2 uses
  %i.jw = load i32, ptr %gep60.i.1, align 4, !tbaa !8
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %gep60.i.1, align 4, !tbaa !8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next50.i.1 = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %exitcond52.not.i.1 = icmp eq i64 %indvars.iv.next50.i.1, 32
  br i1 %exitcond52.not.i.1, label %.loopexit.i, label %bb.ar, !llvm.loop !20

.loopexit.i:                                      ; preds = %bb.av, %.lr.ph42.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %Cec_ManSimCompareConstScore.exit, label %.lr.ph42.i, !llvm.loop !21

Cec_ManSimCompareConstScore.exit:                 ; preds = %bb.aa, %bb.ab, %.loopexit35.i, %.loopexit.i, %.preheader.i, %.preheader14.i, %.preheader32.i, %.preheader36.i, %Vec_IntPush.exit, %bb.y
  %i.jy = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 192
  %.val7.i = load ptr, ptr %i.jz, align 8, !tbaa !31
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val7.i, i64 %indvars.iv400 ; 3 uses
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = and i32 %i.kb, 268435455
  %.off.i = add nsw i32 %i.kc, -1
  %switch.i = icmp ult i32 %.off.i, 268435454
  br i1 %switch.i, label %bb.aw, label %Gia_ObjIsClass.exit

Gia_ObjIsClass.exit:                              ; preds = %Cec_ManSimCompareConstScore.exit
  %i.kd = getelementptr i8, ptr %i.jy, i64 200
  %.val.i = load ptr, ptr %i.kd, align 8, !tbaa !50
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv400
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !8
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %.critedge2, label %bb.aw

bb.aw:                                            ; preds = %Gia_ObjIsClass.exit, %Cec_ManSimCompareConstScore.exit
  %i.kh = load i32, ptr %.0191, align 4, !tbaa !8
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %.0191, align 4, !tbaa !8
  %.pre406 = load i32, ptr %i.ka, align 4
  %.pre415 = and i32 %.pre406, 268435455
  %.pre416 = add nsw i32 %.pre415, -1
  %i.kj = icmp ult i32 %.pre416, 268435454
  br i1 %i.kj, label %Gia_ObjIsTail.exit, label %.critedge2

Gia_ObjIsTail.exit:                               ; preds = %bb.aw
  %i.kk = getelementptr i8, ptr %i.jy, i64 200
  %.val.i271 = load ptr, ptr %i.kk, align 8, !tbaa !50
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.val.i271, i64 %indvars.iv400
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !8
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.critedge2, label %bb.ax

bb.ax:                                            ; preds = %Gia_ObjIsTail.exit
  %i.ko = load ptr, ptr %i.bc, align 8, !tbaa !84
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  store i32 0, ptr %i.kp, align 4, !tbaa !26
  %i.kq = load i32, ptr %i.ka, align 4
  %i.kr = and i32 %i.kq, 268435455                ; 2 uses
  %.not360 = icmp eq i32 %i.kr, 0
  br i1 %.not360, label %._crit_edge, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.ax, %Vec_IntPush.exit279
  %i.ks = phi ptr [ %i.ln, %Vec_IntPush.exit279 ], [ %i.jy, %bb.ax ] ; 2 uses
  %.0183344 = phi i32 [ %i.lx, %Vec_IntPush.exit279 ], [ %i.kr, %bb.ax ] ; 2 uses
  %i.kt = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !26 ; 7 uses
  %i.kw = load i32, ptr %i.kt, align 8, !tbaa !58
  %i.kx = icmp eq i32 %i.kv, %i.kw
  br i1 %i.kx, label %bb.ay, label %Vec_IntPush.exit279

bb.ay:                                            ; preds = %.lr.ph345
  %i.ky = icmp slt i32 %i.kv, 16
  br i1 %i.ky, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i277 = icmp eq ptr %i.la, null
  br i1 %.not9.i.i277, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.la, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i278

bb.bb:                                            ; preds = %bb.az
  %i.lc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i278

Vec_IntGrow.exit.i278:                            ; preds = %bb.bb, %bb.ba
  %i.ld = phi ptr [ %i.lb, %bb.ba ], [ %i.lc, %bb.bb ]
  store ptr %i.ld, ptr %i.kz, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i275

bb.bc:                                            ; preds = %bb.ay
  %i.le = icmp samesign ult i32 %i.kv, 1073741823
  %i.lf = shl nuw nsw i32 %i.kv, 1
  %spec.select.i272 = select i1 %i.le, i32 %i.lf, i32 2147483647 ; 3 uses
  %.not.i9.i273 = icmp samesign ult i32 %i.kv, %spec.select.i272
  br i1 %.not.i9.i273, label %bb.bd, label %Vec_IntPush.exit279

bb.bd:                                            ; preds = %bb.bc
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !30 ; 2 uses
  %.not9.i10.i274 = icmp eq ptr %i.lh, null
  %i.li = zext nneg i32 %spec.select.i272 to i64
  %i.lj = shl nuw nsw i64 %i.li, 2                ; 2 uses
  br i1 %.not9.i10.i274, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lk = tail call ptr @realloc(ptr noundef nonnull %i.lh, i64 noundef %i.lj) #22
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ll = tail call noalias ptr @malloc(i64 noundef %i.lj) #23
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lm = phi ptr [ %i.lk, %bb.be ], [ %i.ll, %bb.bf ]
  store ptr %i.lm, ptr %i.lg, align 8, !tbaa !30
  br label %Vec_IntGrow.exit11.sink.split.i275

Vec_IntGrow.exit11.sink.split.i275:               ; preds = %bb.bg, %Vec_IntGrow.exit.i278
  %spec.select.sink.i276 = phi i32 [ %spec.select.i272, %bb.bg ], [ 16, %Vec_IntGrow.exit.i278 ]
  store i32 %spec.select.sink.i276, ptr %i.kt, align 8, !tbaa !58
  %.pre407 = load i32, ptr %i.ku, align 4, !tbaa !26
  %.pre408 = load ptr, ptr %0, align 8, !tbaa !61
  br label %Vec_IntPush.exit279

Vec_IntPush.exit279:                              ; preds = %.lr.ph345, %bb.bc, %Vec_IntGrow.exit11.sink.split.i275
  %i.ln = phi ptr [ %i.ks, %.lr.ph345 ], [ %i.ks, %bb.bc ], [ %.pre408, %Vec_IntGrow.exit11.sink.split.i275 ] ; 3 uses
  %i.lo = phi i32 [ %i.kv, %.lr.ph345 ], [ %i.kv, %bb.bc ], [ %.pre407, %Vec_IntGrow.exit11.sink.split.i275 ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !30
  %i.lr = add nsw i32 %i.lo, 1
  store i32 %i.lr, ptr %i.ku, align 4, !tbaa !26
  %i.ls = sext i32 %i.lo to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.ls
  store i32 %.0183344, ptr %i.lt, align 4, !tbaa !8
  %i.lu = getelementptr i8, ptr %i.ln, i64 200
  %.val234 = load ptr, ptr %i.lu, align 8, !tbaa !50
  %i.lv = zext nneg i32 %.0183344 to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val234, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !8  ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph345, label %._crit_edge.loopexit, !llvm.loop !146

._crit_edge.loopexit:                             ; preds = %Vec_IntPush.exit279
  %.phi.trans.insert = getelementptr i8, ptr %i.ln, i64 192
  %.val236.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  %.phi.trans.insert410 = getelementptr inbounds nuw [4 x i8], ptr %.val236.pre, i64 %indvars.iv400
  %.pre411 = load i32, ptr %.phi.trans.insert410, align 4
  %.pre417 = and i32 %.pre411, 268435455
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ax
  %.pre-phi418 = phi i32 [ %.pre417, %._crit_edge.loopexit ], [ 0, %bb.ax ]
  %i.lz = tail call range(i32 -2147483647, -2147483648) i32 @Cec_ManSimClassRefineOne_rec(ptr noundef nonnull readonly %0, i32 noundef %.pre-phi418) ; 0 uses
  %i.ma = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 4      ; 2 uses
  %.val230346 = load i32, ptr %i.mb, align 4, !tbaa !26
  %i.mc = icmp sgt i32 %.val230346, 0
  br i1 %i.mc, label %.lr.ph349, label %.critedge2

.lr.ph349:                                        ; preds = %._crit_edge
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  %.val232 = load ptr, ptr %i.md, align 8, !tbaa !30
  %i.me = load ptr, ptr %i.aw, align 8, !tbaa !60
  %i.mf = load ptr, ptr %i.ax, align 8, !tbaa !59
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph349, %Cec_ManSimSimDeref.exit280
  %indvars.iv397 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next398, %Cec_ManSimSimDeref.exit280 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val232, i64 %indvars.iv397
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !8
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mi ; 3 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !8
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.ml ; 3 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !8
  %i.mo = add i32 %i.mn, -1                       ; 2 uses
  store i32 %i.mo, ptr %i.mm, align 4, !tbaa !8
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.bi, label %Cec_ManSimSimDeref.exit280

bb.bi:                                            ; preds = %bb.bh
  %i.mq = load i32, ptr %i.ay, align 4, !tbaa !82
  store i32 %i.mq, ptr %i.mm, align 4, !tbaa !8
  %i.mr = load i32, ptr %i.mj, align 4, !tbaa !8
  store i32 %i.mr, ptr %i.ay, align 4, !tbaa !82
  store i32 0, ptr %i.mj, align 4, !tbaa !8
  %i.ms = load i32, ptr %i.az, align 4, !tbaa !67
  %i.mt = add nsw i32 %i.ms, -1
  store i32 %i.mt, ptr %i.az, align 4, !tbaa !67
  br label %Cec_ManSimSimDeref.exit280

Cec_ManSimSimDeref.exit280:                       ; preds = %bb.bh, %bb.bi
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %.val230 = load i32, ptr %i.mb, align 4, !tbaa !26
end_hunk_3
begin_hunk_4_@Cec_ManSimCreateInfo:bb.a
._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.pre107 = load ptr, ptr %0, align 8, !tbaa !61
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.lr.ph83.split
  %i.ca = phi ptr [ %.pre107, %._crit_edge78.loopexit ], [ %i.bq, %.lr.ph83.split ] ; 2 uses
  %i.cb = phi i32 [ %i.bx, %._crit_edge78.loopexit ], [ %i.br, %.lr.ph83.split ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 64
  %.val = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.cd = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.ce = sext i32 %.val.val to i64
  %i.cf = icmp slt i64 %indvars.iv.next101, %i.ce
  br i1 %i.cf, label %.lr.ph83.split, label %.loopexit, !llvm.loop !160

.loopexit:                                        ; preds = %._crit_edge69, %._crit_edge78, %.lr.ph83, %.lr.ph74, %.preheader, %bb.c
  ret void
}

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cec_ManSimClassesPrepare(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val123 = load i32, ptr %i.b, align 8, !tbaa !71
  %i.c = sext i32 %.val123 to i64                 ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  tail call void @Gia_ManCreateValueRefs(ptr noundef %i.a) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !161
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.preheader139

.preheader139:                                    ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !71
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader139, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader139 ] ; 2 uses
  %i.p = phi ptr [ %i.v, %bb.b ], [ %i.l, %.preheader139 ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val112 = load ptr, ptr %i.q, align 8, !tbaa !85
  %.not97 = icmp eq ptr %.val112, null
  br i1 %.not97, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %i.p, i64 192
  %.val109 = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val109, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = or i32 %i.t, 268435455
  store i32 %i.u, ptr %i.s, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.critedge, !llvm.loop !162

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp eq i32 %1, -1
  %i.ab = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  br i1 %i.aa, label %.preheader138, label %bb.e

.preheader138:                                    ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph150, label %.critedge

.lr.ph150:                                        ; preds = %.preheader138, %bb.d
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.d ], [ 0, %.preheader138 ] ; 3 uses
  %i.af = phi ptr [ %i.ar, %bb.d ], [ %i.ab, %.preheader138 ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %.val111 = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %.not95 = icmp eq ptr %.val111, null
  br i1 %.not95, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph150
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val111, i64 %indvars.iv168
  %.val125 = load i64, ptr %i.ah, align 4         ; 2 uses
  %i.ai = and i64 %.val125, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val125, 536870911
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  %i.al = select i1 %narrow.i.not, i32 268435455, i32 0
  %i.am = getelementptr i8, ptr %i.af, i64 192
  %.val108 = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val108, i64 %indvars.iv168 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, -268435456
  %i.aq = or disjoint i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.an, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !71
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next169, %i.au
  br i1 %i.av, label %.lr.ph150, label %.critedge, !llvm.loop !163

bb.e:                                             ; preds = %bb.c
  %i.aw = tail call i32 @Gia_ManLevelNum(ptr noundef %i.ab) #24 ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !71
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph146, label %.critedge4

.lr.ph146:                                        ; preds = %bb.e, %bb.s
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.pre-phi, %bb.s ], [ 0, %bb.e ] ; 10 uses
  %i.bb = phi ptr [ %i.cz, %bb.s ], [ %i.ax, %bb.e ] ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %.val110 = load ptr, ptr %i.bc, align 8, !tbaa !85 ; 2 uses
  %.not92 = icmp eq ptr %.val110, null
  br i1 %.not92, label %.critedge4, label %bb.f

bb.f:                                             ; preds = %.lr.ph146
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.val110, i64 %indvars.iv165
  %.val124 = load i64, ptr %i.bd, align 4         ; 2 uses
  %i.be = and i64 %.val124, 2147483648
  %.not.i132 = icmp ne i64 %i.be, 0
  %i.bf = and i64 %.val124, 536870911
  %i.bg = icmp eq i64 %i.bf, 536870911
  %narrow.i133.not = or i1 %.not.i132, %i.bg
  br i1 %narrow.i133.not, label %._crit_edge180, label %bb.g

._crit_edge180:                                   ; preds = %bb.f
  %.pre181 = add nuw nsw i64 %indvars.iv165, 1
  br label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %i.bb, i64 160
  %.val128 = load ptr, ptr %i.bh, align 8, !tbaa !164 ; 7 uses
  %i.bi = add nuw nsw i64 %indvars.iv165, 1       ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val128, i64 4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26 ; 3 uses
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  %.not.i.not.i.i.i = icmp slt i64 %indvars.iv165, %i.bl
  br i1 %.not.i.not.i.i.i, label %Gia_ObjLevel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %.val128, align 8, !tbaa !58 ; 4 uses
  %i.bn = shl nsw i32 %i.bm, 1                    ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %.not.i.i.i = icmp slt i64 %indvars.iv165, %i.bo
  br i1 %.not.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.bq, null
  %i.br = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef %i.br) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = phi ptr [ %i.bs, %bb.j ], [ %i.bt, %bb.k ]
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !30
  %i.bv = trunc nuw nsw i64 %i.bi to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.m:                                             ; preds = %bb.h
  %i.bw = sext i32 %i.bm to i64
  %.not.i.i.not.i.i.i = icmp slt i64 %indvars.iv165, %i.bw
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp slt i32 %i.bm, 1073741823
  %spec.select.i.i.i.i = select i1 %i.bx, i32 %i.bn, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.bm, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.o, label %Vec_IntGrow.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = sext i32 %spec.select.i.i.i.i to i64
  %i.cb = shl nsw i64 %i.ca, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = tail call ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef %i.cb) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cb) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ce = phi ptr [ %i.cc, %bb.p ], [ %i.cd, %bb.q ]
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !30
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.r, %bb.l
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.r ], [ %i.bv, %bb.l ]
  store i32 %spec.select.sink.i.i.i.i, ptr %.val128, align 8, !tbaa !58
  %.pre.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %.pre179 = sext i32 %.pre.i.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.n, %bb.m
  %.pre-phi = phi i64 [ %.pre179, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.bl, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %i.cf = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ]
  %.not3.i.i.i = icmp sgt i64 %.pre-phi, %indvars.iv165
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.val128, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.ci = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.cj = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.ck = sub i32 %i.cj, %i.cf
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.cn, i1 false), !tbaa !8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  %i.co = trunc nuw nsw i64 %i.bi to i32
  store i32 %i.co, ptr %i.bj, align 4, !tbaa !26
  br label %Gia_ObjLevel.exit

Gia_ObjLevel.exit:                                ; preds = %bb.g, %._crit_edge.i.i.i.i
  %i.cp = getelementptr i8, ptr %.val128, i64 8
  %.val.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !30
  %sext.i = shl nuw nsw i64 %indvars.iv165, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %sext.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %.not94 = icmp sgt i32 %i.cr, %1
  %i.cs = select i1 %.not94, i32 268435455, i32 0
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge180, %Gia_ObjLevel.exit
  %indvars.iv.next166.pre-phi = phi i64 [ %.pre181, %._crit_edge180 ], [ %i.bi, %Gia_ObjLevel.exit ] ; 2 uses
  %i.ct = phi i32 [ 268435455, %._crit_edge180 ], [ %i.cs, %Gia_ObjLevel.exit ]
  %i.cu = getelementptr i8, ptr %i.bb, i64 192
  %.val107 = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val107, i64 %indvars.iv165 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, -268435456
  %i.cy = or disjoint i32 %i.cx, %i.ct
  store i32 %i.cy, ptr %i.cv, align 4
  %i.cz = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !71
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next166.pre-phi, %i.dc
  br i1 %i.dd, label %.lr.ph146, label %.critedge4, !llvm.loop !165

.critedge4:                                       ; preds = %.lr.ph146, %bb.s, %bb.e
  %.lcssa = phi ptr [ %i.ax, %bb.e ], [ %i.cz, %bb.s ], [ %i.bb, %.lr.ph146 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.lcssa, i64 160 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !166 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.critedge4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30 ; 2 uses
  %.not.i134 = icmp eq ptr %i.di, null
  br i1 %.not.i134, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.di) #24
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !166 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr null, ptr %i.dk, align 8, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %bb.t
  %i.dl = phi ptr [ %i.dj, %.thread.i ], [ %i.df, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.dl) #24
  store ptr null, ptr %i.de, align 8, !tbaa !166
  %.pre174.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph150, %bb.d, %.preheader139, %.preheader138, %bb.u, %.critedge4
  %.pre174 = phi ptr [ %i.af, %.lr.ph150 ], [ %.lcssa, %.critedge4 ], [ %i.l, %.preheader139 ], [ %i.ab, %.preheader138 ], [ %.pre174.pre, %bb.u ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ], [ %i.p, %.lr.ph ] ; 4 uses
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !153
  %.not98 = icmp eq i32 %i.do, 0
  br i1 %.not98, label %.critedge6, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.dp = getelementptr i8, ptr %.pre174, i64 16
  %.val115152 = load i32, ptr %i.dp, align 8, !tbaa !127 ; 2 uses
  %i.dq = icmp sgt i32 %.val115152, 0
  br i1 %i.dq, label %.lr.ph155, label %.critedge6

.lr.ph155:                                        ; preds = %.preheader, %bb.x
  %i.dr = phi ptr [ %i.ej, %bb.x ], [ %.pre174, %.preheader ] ; 5 uses
  %.val115154 = phi i32 [ %.val115, %bb.x ], [ %.val115152, %.preheader ]
  %.3153 = phi i32 [ %i.ek, %bb.x ], [ 0, %.preheader ] ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 32
  %.val129 = load ptr, ptr %i.ds, align 8, !tbaa !85 ; 2 uses
  %.not99 = icmp eq ptr %.val129, null
  br i1 %.not99, label %.critedge6, label %bb.v

bb.v:                                             ; preds = %.lr.ph155
  %i.dt = getelementptr i8, ptr %i.dr, i64 64
  %.val117 = load ptr, ptr %i.dt, align 8, !tbaa !113 ; 2 uses
  %i.du = getelementptr i8, ptr %.val117, i64 8
  %.val130.val = load ptr, ptr %i.du, align 8, !tbaa !30
  %i.dv = sub i32 %.3153, %.val115154
  %i.dw = getelementptr i8, ptr %.val117, i64 4
  %.val117.val = load i32, ptr %i.dw, align 4, !tbaa !26
  %i.dx = add i32 %i.dv, %.val117.val
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %.val130.val, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [12 x i8], ptr %.val129, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !86
  %.not106 = icmp eq i32 %i.ee, 0
  br i1 %.not106, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr i8, ptr %i.dr, i64 192
  %.val = load ptr, ptr %i.ef, align 8, !tbaa !31
  %i.eg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.eb ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = and i32 %i.eh, -268435456
  store i32 %i.ei, ptr %i.eg, align 4
  %.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ej = phi ptr [ %i.dr, %bb.v ], [ %.pre, %bb.w ] ; 3 uses
  %i.ek = add nuw nsw i32 %.3153, 1               ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 16
  %.val115 = load i32, ptr %i.el, align 8, !tbaa !127 ; 2 uses
  %i.em = icmp slt i32 %i.ek, %.val115
  br i1 %i.em, label %.lr.ph155, label %.critedge6, !llvm.loop !167

.critedge6:                                       ; preds = %bb.x, %.lr.ph155, %.preheader, %.critedge
  %i.en = phi ptr [ %.pre174, %.critedge ], [ %.pre174, %.preheader ], [ %i.ej, %bb.x ], [ %i.dr, %.lr.ph155 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 840
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !168 ; 2 uses
  %.not100 = icmp eq i32 %i.ep, 0
  br i1 %.not100, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge6
  %i.eq = shl nsw i32 %i.ep, 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !62
  %i.es = getelementptr i8, ptr %i.en, i64 64
  %.val113157 = load ptr, ptr %i.es, align 8, !tbaa !113
  %i.et = getelementptr i8, ptr %.val113157, i64 4
  %.val113.val158 = load i32, ptr %i.et, align 4, !tbaa !26
  %i.eu = icmp sgt i32 %.val113.val158, 0
  br i1 %i.eu, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph160, %bb.z
  %indvars.iv171 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next172, %bb.z ] ; 3 uses
  %i.ew = phi ptr [ %i.en, %.lr.ph160 ], [ %i.fm, %bb.z ] ; 2 uses
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !120
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %.val114 = load ptr, ptr %i.ey, align 8, !tbaa !121
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val114, i64 %indvars.iv171
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !123
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 872
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !169
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 840
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !168 ; 2 uses
  %i.ff = trunc nuw nsw i64 %indvars.iv171 to i32
  %i.fg = mul nsw i32 %i.fe, %i.ff
  %i.fh = getelementptr i8, ptr %i.fc, i64 8
  %.val131 = load ptr, ptr %i.fh, align 8, !tbaa !170
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %.val131, i64 %i.fi
end_hunk_4
