Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/intset?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [9 x i8] c"intset.c\00", align 1, !guid !13
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1, !guid !14

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @intsetNew() local_unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #12 ; 3 uses
  store i32 2, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 8, -8589934582) i64 @intsetAllocSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %0, align 4, !tbaa !12
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw i64 %i.e, %i.c
  %i.g = add nuw i64 %i.f, 8
  ret i64 %i.g
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @intsetAdd(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 !guid !21 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i64 %1, -2147483648
  %or.cond.i = icmp ult i64 %i.b, -4294967296     ; 2 uses
  %i.c = add i64 %1, -32768
  %or.cond3.i = icmp ult i64 %i.c, -65536         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = select i1 %or.cond3.i, i32 4, i32 2
  %i.e = select i1 %or.cond.i, i32 8, i32 %i.d    ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 3 uses
  %i.j = icmp slt i64 %1, 0
  %.lobit.i = lshr i64 %1, 63                     ; 2 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !12
  %i.k = add i32 %i.i, 1
  %i.l = zext i32 %i.k to i64
  %i.m = select i1 %or.cond3.i, i64 2, i64 1
  %i.n = select i1 %or.cond.i, i64 3, i64 %i.m
  %i.o = shl nuw nsw i64 %i.l, %i.n
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.p) #14 ; 15 uses
  %.not27.i = icmp eq i32 %i.i, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 8 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %.pre48.i = load i32, ptr %i.q, align 4, !tbaa !12 ; 2 uses
  %cond = icmp eq i32 %i.f, 4
  br i1 %cond, label %_intsetGetEncoded.exit.us31.i, label %_intsetGetEncoded.exit.i

_intsetGetEncoded.exit.us31.i:                    ; preds = %.lr.ph.i, %_intsetSet.exit.us33.i
  %i.t = phi i32 [ %i.ab, %_intsetSet.exit.us33.i ], [ %.pre48.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_intsetSet.exit.us33.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.u = add nsw i64 %indvars.iv.next.i, %.lobit.i ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %.0.copyload1.i.us.i = load i32, ptr %i.v, align 4 ; 3 uses
  switch i32 %i.t, label %bb.g [
    i32 8, label %bb.f
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.u
  store i32 %.0.copyload1.i.us.i, ptr %i.w, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !12
  br label %_intsetSet.exit.us33.i

bb.f:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.x = sext i32 %.0.copyload1.i.us.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u
  store i64 %i.x, ptr %i.y, align 4, !tbaa !16
  br label %_intsetSet.exit.us33.i

bb.g:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.z = trunc i32 %.0.copyload1.i.us.i to i16
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.u
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !24
  br label %_intsetSet.exit.us33.i

_intsetSet.exit.us33.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.g ], [ 8, %bb.f ], [ %.pre.i, %bb.e ]
  %.not.us34.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.us34.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.us31.i, !llvm.loop !20

_intsetGetEncoded.exit.i:                         ; preds = %.lr.ph.i, %_intsetSet.exit.i
  %i.ac = phi i32 [ %i.ak, %_intsetSet.exit.i ], [ %.pre48.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %_intsetSet.exit.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1 ; 4 uses
  %i.ad = add nsw i64 %indvars.iv.next42.i, %.lobit.i ; 3 uses
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv.next42.i
  %.0.copyload.i.i = load i16, ptr %i.ae, align 2 ; 3 uses
  switch i32 %i.ac, label %bb.j [
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.af = sext i16 %.0.copyload.i.i to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 4, !tbaa !16
  br label %_intsetSet.exit.i

bb.i:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ah = sext i16 %.0.copyload.i.i to i32
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !12
  %.pre47.i = load i32, ptr %i.q, align 4, !tbaa !12
  br label %_intsetSet.exit.i

bb.j:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ad
  store i16 %.0.copyload.i.i, ptr %i.aj, align 2, !tbaa !24
  br label %_intsetSet.exit.i

_intsetSet.exit.i:                                ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = phi i32 [ 8, %bb.h ], [ %.pre47.i, %bb.i ], [ %i.ac, %bb.j ]
  %.not.i = icmp eq i64 %indvars.iv.next42.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %_intsetSet.exit.i, %_intsetSet.exit.us33.i, %bb.d
  br i1 %i.j, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge.i
  %i.al = load i32, ptr %i.q, align 4, !tbaa !12
  switch i32 %i.al, label %bb.n [
    i32 8, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %1, ptr %i.am, align 4, !tbaa !16
  br label %intsetUpgradeAndAdd.exit

bb.m:                                             ; preds = %bb.k
  %i.an = trunc i64 %1 to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !12
  br label %intsetUpgradeAndAdd.exit

bb.n:                                             ; preds = %bb.k
  %i.ap = trunc i64 %1 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.ap, ptr %i.aq, align 4, !tbaa !24
  br label %intsetUpgradeAndAdd.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.at = load i32, ptr %i.q, align 4, !tbaa !12
  switch i32 %i.at, label %bb.r [
    i32 8, label %bb.p
    i32 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  store i64 %1, ptr %i.aw, align 4, !tbaa !16
  br label %intsetUpgradeAndAdd.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = trunc i64 %1 to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.az = sext i32 %i.as to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !12
  br label %intsetUpgradeAndAdd.exit

bb.r:                                             ; preds = %bb.o
  %i.bb = trunc i64 %1 to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bd = sext i32 %i.as to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bd
  store i16 %i.bb, ptr %i.be, align 2, !tbaa !24
  br label %intsetUpgradeAndAdd.exit

intsetUpgradeAndAdd.exit:                         ; preds = %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !12
  br label %bb.ae

bb.s:                                             ; preds = %bb.c
  %i.bi = call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %.not23 = icmp eq i8 %i.bi, 0
  br i1 %.not23, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %2, align 1, !tbaa !22
  br label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = zext i32 %i.f to i64
  %i.bo = mul nuw i64 %i.bm, %i.bn
  %i.bp = add nuw i64 %i.bo, 8
  %i.bq = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bp) #14 ; 7 uses
  %i.br = load i32, ptr %i.a, align 4, !tbaa !12  ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12 ; 4 uses
  %i.bu = icmp ult i32 %i.br, %i.bt
end_hunk_0
begin_hunk_1_@intsetSearch:bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = add i32 %i.b, -1                         ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.y, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !12
  %i.f = trunc i32 %i.e to i8                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = sext i32 %i.c to i64                     ; 3 uses
  switch i8 %i.f, label %bb.f [
    i8 8, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %.0.copyload3.i.i = load i64, ptr %i.i, align 4
  br label %_intsetGet.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %.0.copyload1.i.i = load i32, ptr %i.j, align 4
  %i.k = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.h
  %.0.copyload.i.i = load i16, ptr %i.l, align 2
  %i.m = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp sgt i64 %1, %.0.i.i
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_intsetGet.exit
  %.not48 = icmp eq ptr %2, null
  br i1 %.not48, label %bb.y, label %.sink.split

bb.h:                                             ; preds = %_intsetGet.exit
  switch i8 %i.f, label %bb.k [
    i8 8, label %bb.i
    i8 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %.0.copyload3.i.i52 = load i64, ptr %i.g, align 4
  br label %_intsetGet.exit54

bb.j:                                             ; preds = %bb.h
  %.0.copyload1.i.i50 = load i32, ptr %i.g, align 4
  %i.o = sext i32 %.0.copyload1.i.i50 to i64
  br label %_intsetGet.exit54

bb.k:                                             ; preds = %bb.h
  %.0.copyload.i.i53 = load i16, ptr %i.g, align 4
  %i.p = sext i16 %.0.copyload.i.i53 to i64
  br label %_intsetGet.exit54

_intsetGet.exit54:                                ; preds = %bb.i, %bb.j, %bb.k
  %.0.i.i51 = phi i64 [ %.0.copyload3.i.i52, %bb.i ], [ %i.o, %bb.j ], [ %i.p, %bb.k ]
  %i.q = icmp slt i64 %1, %.0.i.i51
  br i1 %i.q, label %bb.t, label %.preheader

.preheader:                                       ; preds = %_intsetGet.exit54
  %.not60 = icmp slt i32 %i.c, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  switch i8 %i.f, label %_intsetGet.exit59 [
    i8 8, label %_intsetGet.exit59.us
    i8 4, label %_intsetGet.exit59.us77
  ]

_intsetGet.exit59.us:                             ; preds = %.lr.ph, %bb.o
  %.03662.us = phi i32 [ %.137.us, %bb.o ], [ %i.c, %.lr.ph ] ; 2 uses
  %.03861.us = phi i32 [ %.139.us, %bb.o ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = add i32 %.03662.us, %.03861.us
  %i.s = lshr i32 %i.r, 1                         ; 5 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.t
  %.0.copyload3.i.i57.us = load i64, ptr %i.u, align 4 ; 4 uses
  %i.v = icmp sgt i64 %1, %.0.copyload3.i.i57.us
  br i1 %i.v, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_intsetGet.exit59.us
  %i.w = icmp slt i64 %1, %.0.copyload3.i.i57.us
  br i1 %i.w, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.s, -1
  br label %bb.o

bb.n:                                             ; preds = %_intsetGet.exit59.us
  %i.y = add nuw nsw i32 %i.s, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.139.us = phi i32 [ %i.y, %bb.n ], [ %.03861.us, %bb.m ] ; 3 uses
  %.137.us = phi i32 [ %.03662.us, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %.not.us = icmp slt i32 %.137.us, %.139.us
  br i1 %.not.us, label %._crit_edge, label %_intsetGet.exit59.us, !llvm.loop !25

_intsetGet.exit59.us77:                           ; preds = %.lr.ph, %bb.s
  %.03662.us75 = phi i32 [ %.137.us80, %bb.s ], [ %i.c, %.lr.ph ] ; 2 uses
  %.03861.us76 = phi i32 [ %.139.us79, %bb.s ], [ 0, %.lr.ph ] ; 3 uses
  %i.z = add i32 %.03662.us75, %.03861.us76
  %i.aa = lshr i32 %i.z, 1                        ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %.0.copyload1.i.i55.us = load i32, ptr %i.ac, align 4
  %i.ad = sext i32 %.0.copyload1.i.i55.us to i64  ; 4 uses
  %i.ae = icmp sgt i64 %1, %i.ad
  br i1 %i.ae, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_intsetGet.exit59.us77
  %i.af = icmp slt i64 %1, %i.ad
  br i1 %i.af, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.aa, -1
  br label %bb.s

bb.r:                                             ; preds = %_intsetGet.exit59.us77
  %i.ah = add nuw nsw i32 %i.aa, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.139.us79 = phi i32 [ %i.ah, %bb.r ], [ %.03861.us76, %bb.q ] ; 3 uses
  %.137.us80 = phi i32 [ %.03662.us75, %bb.r ], [ %i.ag, %bb.q ] ; 2 uses
  %.not.us81 = icmp slt i32 %.137.us80, %.139.us79
  br i1 %.not.us81, label %._crit_edge, label %_intsetGet.exit59.us77, !llvm.loop !25

bb.t:                                             ; preds = %_intsetGet.exit54
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %bb.y, label %.sink.split

_intsetGet.exit59:                                ; preds = %.lr.ph, %bb.x
  %.03662 = phi i32 [ %.137, %bb.x ], [ %i.c, %.lr.ph ] ; 2 uses
  %.03861 = phi i32 [ %.139, %bb.x ], [ 0, %.lr.ph ] ; 3 uses
  %i.ai = add i32 %.03662, %.03861
  %i.aj = lshr i32 %i.ai, 1                       ; 5 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ak
  %.0.copyload.i.i58 = load i16, ptr %i.al, align 2
  %i.am = sext i16 %.0.copyload.i.i58 to i64      ; 4 uses
  %i.an = icmp sgt i64 %1, %i.am
  br i1 %i.an, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_intsetGet.exit59
  %i.ao = add nuw nsw i32 %i.aj, 1
  br label %bb.x

bb.v:                                             ; preds = %_intsetGet.exit59
  %i.ap = icmp slt i64 %1, %i.am
  br i1 %i.ap, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.aq = add nsw i32 %i.aj, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.139 = phi i32 [ %i.ao, %bb.u ], [ %.03861, %bb.w ] ; 3 uses
  %.137 = phi i32 [ %.03662, %bb.u ], [ %i.aq, %bb.w ] ; 2 uses
  %.not = icmp slt i32 %.137, %.139
  br i1 %.not, label %._crit_edge, label %_intsetGet.exit59, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.s, %bb.p, %bb.o, %bb.l, %bb.x, %bb.v, %.preheader
  %.038.lcssa = phi i32 [ 0, %.preheader ], [ %.03861, %bb.v ], [ %.03861.us, %bb.l ], [ %.139, %bb.x ], [ %.139.us, %bb.o ], [ %.139.us79, %bb.s ], [ %.03861.us76, %bb.p ]
  %.135 = phi i32 [ -1, %.preheader ], [ %i.aj, %bb.x ], [ %i.s, %bb.o ], [ %i.aj, %bb.v ], [ %i.s, %bb.l ], [ %i.aa, %bb.p ], [ %i.aa, %bb.s ]
  %.1 = phi i64 [ -1, %.preheader ], [ %i.am, %bb.x ], [ %.0.copyload3.i.i57.us, %bb.o ], [ %i.am, %bb.v ], [ %.0.copyload3.i.i57.us, %bb.l ], [ %i.ad, %bb.p ], [ %i.ad, %bb.s ]
  %i.ar = icmp eq i64 %1, %.1                     ; 2 uses
  %.not46 = icmp eq ptr %2, null
  %. = zext i1 %i.ar to i8                        ; 2 uses
  %.135..038.lcssa = select i1 %i.ar, i32 %.135, i32 %.038.lcssa
  br i1 %.not46, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.t, %bb.g, %bb.b
  %.038.lcssa.sink = phi i32 [ %.135..038.lcssa, %._crit_edge ], [ 0, %bb.t ], [ %i.b, %bb.g ], [ 0, %bb.b ]
  %.040.ph = phi i8 [ %., %._crit_edge ], [ 0, %bb.t ], [ 0, %bb.g ], [ 0, %bb.b ]
  store i32 %.038.lcssa.sink, ptr %2, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.sink.split, %bb.t, %bb.g, %bb.b
  %.040 = phi i8 [ %., %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.t ], [ %.040.ph, %.sink.split ]
  ret i8 %.040
}

; Function Attrs: nounwind uwtable
define dso_local ptr @intsetRemove(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 !guid !27 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i64 %1, -2147483648
  %or.cond.i = icmp ult i64 %i.b, -4294967296
  %i.c = add i64 %1, -32768
  %or.cond3.i = icmp ult i64 %i.c, -65536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = select i1 %or.cond3.i, i32 4, i32 2
  %i.e = select i1 %or.cond.i, i32 8, i32 %i.d
  %i.f = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %.not18 = icmp ult i32 %i.f, %i.e
  br i1 %.not18, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %.not19 = icmp eq i8 %i.g, 0
  br i1 %.not19, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4, !tbaa !12
  %.pre.pre = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre = phi i32 [ %.pre.pre, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.k = add i32 %i.i, -1                         ; 3 uses
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw i32 %i.j, 1                      ; 2 uses
  %i.n = load i32, ptr %i.h, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.p = zext i32 %i.m to i64                     ; 3 uses
  %i.q = zext i32 %i.j to i64                     ; 3 uses
  switch i32 %.pre, label %bb.k [
    i32 8, label %bb.i
    i32 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  br label %intsetMoveTail.exit

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  br label %intsetMoveTail.exit

bb.k:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.p
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.q
  br label %intsetMoveTail.exit

intsetMoveTail.exit:                              ; preds = %bb.i, %bb.j, %bb.k
  %.sink.i = phi i32 [ 2, %bb.j ], [ 1, %bb.k ], [ 3, %bb.i ]
  %.023.i = phi ptr [ %i.t, %bb.j ], [ %i.v, %bb.k ], [ %i.r, %bb.i ]
  %.022.i = phi ptr [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.s, %bb.i ]
  %i.x = sub i32 %i.n, %i.m
  %i.y = shl i32 %i.x, %.sink.i
  %i.z = zext i32 %i.y to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.022.i, ptr nonnull align 1 %.023.i, i64 %i.z, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %intsetMoveTail.exit, %bb.g
  %i.aa = zext i32 %i.k to i64
  %i.ab = zext i32 %.pre to i64
  %i.ac = mul nuw i64 %i.ab, %i.aa
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.ad) #14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.k, ptr %i.af, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %bb.c
  %.0 = phi ptr [ %i.ae, %bb.l ], [ %0, %bb.d ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @intsetFind(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 !guid !28 {
bb.a:
  %i.a = add i64 %1, -2147483648
  %or.cond.i = icmp ult i64 %i.a, -4294967296
  %i.b = add i64 %1, -32768
  %or.cond3.i = icmp ult i64 %i.b, -65536
  %i.c = select i1 %or.cond3.i, i32 4, i32 2
  %i.d = select i1 %or.cond.i, i32 8, i32 %i.c
  %i.e = load i32, ptr %0, align 4, !tbaa !12
  %.not = icmp ult i32 %i.e, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local i64 @intsetRandom(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 270) #13
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @rand() #13
  %i.d = urem i32 %i.c, %i.b
  %i.e = load i32, ptr %0, align 4, !tbaa !12
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = sext i32 %i.d to i64                     ; 3 uses
  switch i8 %i.f, label %bb.f [
    i8 8, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %.0.copyload3.i.i = load i64, ptr %i.i, align 4
  br label %_intsetGet.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %.0.copyload1.i.i = load i32, ptr %i.j, align 4
  %i.k = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.h
  %.0.copyload.i.i = load i16, ptr %i.l, align 2
  %i.m = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @intsetMax(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = add i32 %i.b, -1
  %i.d = load i32, ptr %0, align 4, !tbaa !12
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %i.c to i64                     ; 3 uses
  switch i8 %i.e, label %bb.d [
    i8 8, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %.0.copyload3.i.i = load i64, ptr %i.h, align 4
  br label %_intsetGet.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %.0.copyload1.i.i = load i32, ptr %i.i, align 4
  %i.j = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %.0.copyload.i.i = load i16, ptr %i.k, align 2
  %i.l = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.l, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @intsetMin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !32 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = trunc i32 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i8 %i.b, label %bb.d [
    i8 8, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.0.copyload3.i.i = load i64, ptr %i.c, align 4
  br label %_intsetGet.exit

bb.c:                                             ; preds = %bb.a
  %.0.copyload1.i.i = load i32, ptr %i.c, align 4
  %i.d = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.d:                                             ; preds = %bb.a
  %.0.copyload.i.i = load i16, ptr %i.c, align 4
  %i.e = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext range(i8 0, 2) i8 @intsetGet(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #9 !guid !33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !12
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 3 uses
  switch i8 %i.e, label %bb.e [
    i8 8, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %.0.copyload3.i.i = load i64, ptr %i.h, align 4
  br label %_intsetGet.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %.0.copyload1.i.i = load i32, ptr %i.i, align 4
  %i.j = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %.0.copyload.i.i = load i16, ptr %i.k, align 2
  %i.l = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  store i64 %.0.i.i, ptr %2, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_intsetGet.exit
  %.0 = phi i8 [ 1, %_intsetGet.exit ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @intsetLen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 8, -8589934582) i64 @intsetBlobLen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 !guid !35 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %0, align 4, !tbaa !12
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw i64 %i.e, %i.c
  %i.g = add nuw i64 %i.f, 8
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
end_hunk_1
