inline.NumInlined: 25
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [9 x i8] c"intset.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @intsetNew() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @zmalloc(i64 noundef 8) #12 ; 3 uses
  store i32 2, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !9
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 8, -8589934582) i64 @intsetAllocSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %0, align 4, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw i64 %i.e, %i.c
  %i.g = add nuw i64 %i.f, 8
  ret i64 %i.g
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @intsetAdd(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  store i8 1, ptr %2, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = select i1 %or.cond3.i, i32 4, i32 2
  %i.e = select i1 %or.cond.i, i32 8, i32 %i.d    ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp slt i64 %1, 0
  %.lobit.i = lshr i64 %1, 63                     ; 2 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !9
  %i.k = add i32 %i.i, 1
  %i.l = zext i32 %i.k to i64
  %i.m = select i1 %or.cond3.i, i64 2, i64 1
  %i.n = select i1 %or.cond.i, i64 3, i64 %i.m
  %i.o = shl nuw nsw i64 %i.l, %i.n
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = tail call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.p) #14 ; 14 uses
  %.not27.i = icmp eq i32 %i.i, 0
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 8 uses
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %cond = icmp eq i32 %i.f, 4
  br i1 %cond, label %_intsetGetEncoded.exit.us31.i, label %_intsetGetEncoded.exit.i

_intsetGetEncoded.exit.us31.i:                    ; preds = %.lr.ph.i, %_intsetSet.exit.us33.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_intsetSet.exit.us33.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.t = add nsw i64 %indvars.iv.next.i, %.lobit.i ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %.0.copyload1.i.us.i = load i32, ptr %i.u, align 4 ; 3 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !9
  switch i32 %i.v, label %bb.g [
    i32 8, label %bb.f
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t
  store i32 %.0.copyload1.i.us.i, ptr %i.w, align 4, !tbaa !9
  br label %_intsetSet.exit.us33.i

bb.f:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.x = sext i32 %.0.copyload1.i.us.i to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  store i64 %i.x, ptr %i.y, align 4, !tbaa !14
  br label %_intsetSet.exit.us33.i

bb.g:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.z = trunc i32 %.0.copyload1.i.us.i to i16
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.t
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !16
  br label %_intsetSet.exit.us33.i

_intsetSet.exit.us33.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %.not.us34.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.us34.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.us31.i, !llvm.loop !18

_intsetGetEncoded.exit.i:                         ; preds = %.lr.ph.i, %_intsetSet.exit.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %_intsetSet.exit.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1 ; 4 uses
  %i.ab = add nsw i64 %indvars.iv.next42.i, %.lobit.i ; 3 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv.next42.i
  %.0.copyload.i.i = load i16, ptr %i.ac, align 2 ; 3 uses
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !9
  switch i32 %i.ad, label %bb.j [
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ae = sext i16 %.0.copyload.i.i to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ab
  store i64 %i.ae, ptr %i.af, align 4, !tbaa !14
  br label %_intsetSet.exit.i

bb.i:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ag = sext i16 %.0.copyload.i.i to i32
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ab
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !9
  br label %_intsetSet.exit.i

bb.j:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ab
  store i16 %.0.copyload.i.i, ptr %i.ai, align 2, !tbaa !16
  br label %_intsetSet.exit.i

_intsetSet.exit.i:                                ; preds = %bb.j, %bb.i, %bb.h
  %.not.i = icmp eq i64 %indvars.iv.next42.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %_intsetSet.exit.i, %_intsetSet.exit.us33.i, %bb.d
  br i1 %i.j, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.q, align 4, !tbaa !9
  switch i32 %i.aj, label %bb.n [
    i32 8, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %1, ptr %i.ak, align 4, !tbaa !14
  br label %intsetUpgradeAndAdd.exit

bb.m:                                             ; preds = %bb.k
  %i.al = trunc i64 %1 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !9
  br label %intsetUpgradeAndAdd.exit

bb.n:                                             ; preds = %bb.k
  %i.an = trunc i64 %1 to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !16
  br label %intsetUpgradeAndAdd.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9  ; 3 uses
  %i.ar = load i32, ptr %i.q, align 4, !tbaa !9
  switch i32 %i.ar, label %bb.r [
    i32 8, label %bb.p
    i32 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  store i64 %1, ptr %i.au, align 4, !tbaa !14
  br label %intsetUpgradeAndAdd.exit

bb.q:                                             ; preds = %bb.o
  %i.av = trunc i64 %1 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !9
  br label %intsetUpgradeAndAdd.exit

bb.r:                                             ; preds = %bb.o
  %i.az = trunc i64 %1 to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bb = sext i32 %i.aq to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bb
  store i16 %i.az, ptr %i.bc, align 2, !tbaa !16
  br label %intsetUpgradeAndAdd.exit

intsetUpgradeAndAdd.exit:                         ; preds = %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !9
  br label %bb.ae

bb.s:                                             ; preds = %bb.c
  %i.bg = call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %.not23 = icmp eq i8 %i.bg, 0
  br i1 %.not23, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %2, align 1, !tbaa !13
  br label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = add i32 %i.bi, 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = zext i32 %i.f to i64
  %i.bm = mul nuw i64 %i.bk, %i.bl
  %i.bn = add nuw i64 %i.bm, 8
  %i.bo = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bn) #14 ; 7 uses
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !9   ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9  ; 4 uses
  %i.bs = icmp ult i32 %i.bp, %i.br
  %.pre = load i32, ptr %i.bo, align 4, !tbaa !9  ; 2 uses
  br i1 %i.bs, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bt = add nuw i32 %i.bp, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 6 uses
  %i.bv = zext i32 %i.bp to i64                   ; 3 uses
  %i.bw = zext i32 %i.bt to i64                   ; 3 uses
  switch i32 %.pre, label %bb.z [
    i32 8, label %bb.x
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  br label %intsetMoveTail.exit

bb.y:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bw
  br label %intsetMoveTail.exit

bb.z:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.bv
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.bw
  br label %intsetMoveTail.exit

intsetMoveTail.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %.sink.i = phi i32 [ 2, %bb.y ], [ 1, %bb.z ], [ 3, %bb.x ]
  %.023.i = phi ptr [ %i.ca, %bb.y ], [ %i.cc, %bb.z ], [ %i.by, %bb.x ]
  %.0.i24 = phi ptr [ %i.bz, %bb.y ], [ %i.cb, %bb.z ], [ %i.bx, %bb.x ]
  %i.cd = sub i32 %i.br, %i.bp
  %i.ce = shl i32 %i.cd, %.sink.i
  %i.cf = zext i32 %i.ce to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.023.i, ptr nonnull align 1 %.0.i24, i64 %i.cf, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %intsetMoveTail.exit
  switch i32 %.pre, label %bb.ad [
    i32 8, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ch = sext i32 %i.bp to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  store i64 %1, ptr %i.ci, align 4, !tbaa !14
  br label %_intsetSet.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cj = trunc i64 %1 to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cl = sext i32 %i.bp to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !9
  %.pre27 = load i32, ptr %i.bq, align 4, !tbaa !9
  br label %_intsetSet.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cn = trunc i64 %1 to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cp = sext i32 %i.bp to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cp
  store i16 %i.cn, ptr %i.cq, align 2, !tbaa !16
  br label %_intsetSet.exit

_intsetSet.exit:                                  ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.cr = phi i32 [ %i.br, %bb.ab ], [ %.pre27, %bb.ac ], [ %i.br, %bb.ad ]
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.bq, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.u, %_intsetSet.exit, %intsetUpgradeAndAdd.exit
  %.0 = phi ptr [ %i.q, %intsetUpgradeAndAdd.exit ], [ %i.bo, %_intsetSet.exit ], [ %0, %bb.u ], [ %0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @intsetSearch(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  %i.c = add i32 %i.b, -1                         ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.y, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !9
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
  br i1 %.not.us, label %._crit_edge, label %_intsetGet.exit59.us, !llvm.loop !20

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
  br i1 %.not.us81, label %._crit_edge, label %_intsetGet.exit59.us77, !llvm.loop !20

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
  br i1 %.not, label %._crit_edge, label %_intsetGet.exit59, !llvm.loop !20

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
  store i32 %.038.lcssa.sink, ptr %2, align 4, !tbaa !9
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.sink.split, %bb.t, %bb.g, %bb.b
  %.040 = phi i8 [ %., %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.t ], [ %.040.ph, %.sink.split ]
  ret i8 %.040
}

; Function Attrs: nounwind uwtable
define dso_local ptr @intsetRemove(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = select i1 %or.cond3.i, i32 4, i32 2
  %i.e = select i1 %or.cond.i, i32 8, i32 %i.d
  %i.f = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %.not18 = icmp ult i32 %i.f, %i.e
  br i1 %.not18, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %.not19 = icmp eq i8 %i.g, 0
  br i1 %.not19, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4, !tbaa !9
  %.pre.pre = load i32, ptr %0, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre = phi i32 [ %.pre.pre, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !9    ; 3 uses
  %i.k = add i32 %i.i, -1                         ; 3 uses
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw i32 %i.j, 1                      ; 2 uses
  %i.n = load i32, ptr %i.h, align 4, !tbaa !9
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
  %.023.i = phi ptr [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.s, %bb.i ]
  %.0.i20 = phi ptr [ %i.t, %bb.j ], [ %i.v, %bb.k ], [ %i.r, %bb.i ]
  %i.x = sub i32 %i.n, %i.m
  %i.y = shl i32 %i.x, %.sink.i
  %i.z = zext i32 %i.y to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.023.i, ptr nonnull align 1 %.0.i20, i64 %i.z, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %intsetMoveTail.exit, %bb.g
  %i.aa = zext i32 %i.k to i64
  %i.ab = zext i32 %.pre to i64
  %i.ac = mul nuw i64 %i.ab, %i.aa
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.ad) #14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.k, ptr %i.af, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %bb.c
  %.0 = phi ptr [ %i.ae, %bb.l ], [ %0, %bb.d ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext range(i8 0, 2) i8 @intsetFind(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, -2147483648
  %or.cond.i = icmp ult i64 %i.a, -4294967296
  %i.b = add i64 %1, -32768
  %or.cond3.i = icmp ult i64 %i.b, -65536
  %i.c = select i1 %or.cond3.i, i32 4, i32 2
  %i.d = select i1 %or.cond.i, i32 8, i32 %i.c
  %i.e = load i32, ptr %0, align 4, !tbaa !9
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
define dso_local i64 @intsetRandom(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 270) #13
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @rand() #13
  %i.d = urem i32 %i.c, %i.b
  %i.e = load i32, ptr %0, align 4, !tbaa !9
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
define dso_local i64 @intsetMax(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = add i32 %i.b, -1
  %i.d = load i32, ptr %0, align 4, !tbaa !9
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
define dso_local i64 @intsetMin(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
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
define dso_local zeroext range(i8 0, 2) i8 @intsetGet(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !9
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
  store i64 %.0.i.i, ptr %2, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_intsetGet.exit
  %.0 = phi i8 [ 1, %_intsetGet.exit ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @intsetLen(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 8, -8589934582) i64 @intsetBlobLen(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %0, align 4, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw i64 %i.e, %i.c
  %i.g = add nuw i64 %i.f, 8
  ret i64 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @intsetValidateIntegrity(ptr noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  switch i32 %i.b, label %._crit_edge [
    i32 8, label %bb.e
    i32 4, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.029 = phi i64 [ 2, %bb.d ], [ 4, %bb.c ], [ 8, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9    ; 9 uses
  %i.e = zext i32 %i.d to i64
  %i.f = mul nuw nsw i64 %.029, %i.e
  %i.g = add nuw nsw i64 %i.f, 8
  %.not = icmp ne i64 %i.g, %1
  %i.h = icmp eq i32 %i.d, 0
  %or.cond = or i1 %i.h, %.not
  br i1 %or.cond, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not34 = icmp eq i32 %2, 0
  br i1 %.not34, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = trunc nuw nsw i32 %i.b to i8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i8 %i.i, label %bb.j [
    i8 8, label %bb.h
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %.0.copyload3.i.i = load i64, ptr %i.j, align 4
  br label %_intsetGet.exit

bb.i:                                             ; preds = %bb.g
  %.0.copyload1.i.i = load i32, ptr %i.j, align 4
  %i.k = sext i32 %.0.copyload1.i.i to i64
  br label %_intsetGet.exit

bb.j:                                             ; preds = %bb.g
  %.0.copyload.i.i = load i16, ptr %i.j, align 4
  %i.l = sext i16 %.0.copyload.i.i to i64
  br label %_intsetGet.exit

_intsetGet.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %.0.i.i = phi i64 [ %.0.copyload3.i.i, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ] ; 3 uses
  %.not3642 = icmp ult i32 %i.d, 2
  br i1 %.not3642, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_intsetGet.exit
  switch i8 %i.i, label %.lr.ph.split [
    i8 8, label %.lr.ph.split.us
    i8 4, label %.lr.ph.split.us48
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload3.i.i39.us66 = load i64, ptr %i.m, align 4 ; 2 uses
  %.not35.us67 = icmp sgt i64 %.0.copyload3.i.i39.us66, %.0.i.i
  br i1 %.not35.us67, label %.lr.ph69.preheader, label %._crit_edge

.lr.ph69.preheader:                               ; preds = %.lr.ph.split.us
  %exitcond79.not99 = icmp eq i32 %i.d, 2
  br i1 %exitcond79.not99, label %._crit_edge, label %_intsetGet.exit41.us.lr.ph, !llvm.loop !22

_intsetGet.exit41.us.lr.ph:                       ; preds = %.lr.ph69.preheader
  br label %_intsetGet.exit41.us, !llvm.loop !22

_intsetGet.exit41.us:                             ; preds = %_intsetGet.exit41.us.lr.ph, %.lr.ph69
  %.0.copyload3.i.i39.us68100 = phi i64 [ %.0.copyload3.i.i39.us66, %_intsetGet.exit41.us.lr.ph ], [ %.0.copyload3.i.i39.us, %.lr.ph69 ]
  %i.n = phi i32 [ 2, %_intsetGet.exit41.us.lr.ph ], [ %i.q, %.lr.ph69 ] ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.o
  %.0.copyload3.i.i39.us = load i64, ptr %i.p, align 4 ; 2 uses
  %.not35.us = icmp sgt i64 %.0.copyload3.i.i39.us, %.0.copyload3.i.i39.us68100
  br i1 %.not35.us, label %.lr.ph69, label %_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge, !llvm.loop !22

.lr.ph69:                                         ; preds = %_intsetGet.exit41.us
  %i.q = add i32 %i.n, 1                          ; 2 uses
  %exitcond79.not = icmp eq i32 %i.q, %i.d
  br i1 %exitcond79.not, label %.lr.ph73.._crit_edge.loopexit95_crit_edge, label %_intsetGet.exit41.us, !llvm.loop !22

.lr.ph.split.us48:                                ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.0.copyload1.i.i37.us71 = load i32, ptr %i.r, align 4
  %i.s = sext i32 %.0.copyload1.i.i37.us71 to i64 ; 2 uses
  %.not35.us5772 = icmp slt i64 %.0.i.i, %i.s
  br i1 %.not35.us5772, label %.lr.ph73.preheader, label %._crit_edge

.lr.ph73.preheader:                               ; preds = %.lr.ph.split.us48
  %exitcond.not97 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not97, label %._crit_edge, label %_intsetGet.exit41.us55.lr.ph, !llvm.loop !22

_intsetGet.exit41.us55.lr.ph:                     ; preds = %.lr.ph73.preheader
  br label %_intsetGet.exit41.us55, !llvm.loop !22

_intsetGet.exit41.us55:                           ; preds = %_intsetGet.exit41.us55.lr.ph, %.lr.ph73
  %i.t = phi i64 [ %i.s, %_intsetGet.exit41.us55.lr.ph ], [ %i.x, %.lr.ph73 ]
  %i.u = phi i32 [ 2, %_intsetGet.exit41.us55.lr.ph ], [ %i.y, %.lr.ph73 ] ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.v
  %.0.copyload1.i.i37.us = load i32, ptr %i.w, align 4
  %i.x = sext i32 %.0.copyload1.i.i37.us to i64   ; 2 uses
  %.not35.us57 = icmp slt i64 %i.t, %i.x
  br i1 %.not35.us57, label %.lr.ph73, label %_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge, !llvm.loop !22

.lr.ph73:                                         ; preds = %_intsetGet.exit41.us55
  %i.y = add i32 %i.u, 1                          ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %i.d
  br i1 %exitcond.not, label %.lr.ph73.._crit_edge.loopexit95_crit_edge, label %_intsetGet.exit41.us55, !llvm.loop !22

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.0.copyload.i.i4062 = load i16, ptr %i.z, align 2
  %i.aa = sext i16 %.0.copyload.i.i4062 to i64    ; 2 uses
  %.not3563 = icmp slt i64 %.0.i.i, %i.aa
  br i1 %.not3563, label %.lr.ph64.preheader, label %._crit_edge

.lr.ph64.preheader:                               ; preds = %.lr.ph.split
  %exitcond80.not103 = icmp eq i32 %i.d, 2
  br i1 %exitcond80.not103, label %._crit_edge, label %_intsetGet.exit41.lr.ph, !llvm.loop !22

_intsetGet.exit41.lr.ph:                          ; preds = %.lr.ph64.preheader
  br label %_intsetGet.exit41, !llvm.loop !22

.lr.ph64:                                         ; preds = %_intsetGet.exit41
  %i.ab = add i32 %i.ad, 1                        ; 2 uses
  %exitcond80.not = icmp eq i32 %i.ab, %i.d
  br i1 %exitcond80.not, label %.lr.ph73.._crit_edge.loopexit95_crit_edge, label %_intsetGet.exit41, !llvm.loop !22

_intsetGet.exit41:                                ; preds = %_intsetGet.exit41.lr.ph, %.lr.ph64
  %i.ac = phi i64 [ %i.aa, %_intsetGet.exit41.lr.ph ], [ %i.ag, %.lr.ph64 ]
  %i.ad = phi i32 [ 2, %_intsetGet.exit41.lr.ph ], [ %i.ab, %.lr.ph64 ] ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ae
  %.0.copyload.i.i40 = load i16, ptr %i.af, align 2
  %i.ag = sext i16 %.0.copyload.i.i40 to i64      ; 2 uses
  %.not35 = icmp slt i64 %i.ac, %i.ag
  br i1 %.not35, label %.lr.ph64, label %_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge, !llvm.loop !22

_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge: ; preds = %_intsetGet.exit41.us55, %_intsetGet.exit41.us, %_intsetGet.exit41
  br label %._crit_edge, !llvm.loop !22

.lr.ph73.._crit_edge.loopexit95_crit_edge:        ; preds = %.lr.ph73, %.lr.ph69, %.lr.ph64
  br label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph73.preheader, %_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge, %.lr.ph73.._crit_edge.loopexit95_crit_edge, %.lr.ph69.preheader, %.lr.ph64.preheader, %_intsetGet.exit, %.lr.ph.split.us48, %.lr.ph.split, %.lr.ph.split.us, %bb.b, %bb.f, %bb.e, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %_intsetGet.exit ], [ 0, %.lr.ph.split ], [ 0, %.lr.ph.split.us48 ], [ 1, %.lr.ph64.preheader ], [ 1, %.lr.ph69.preheader ], [ 0, %.lr.ph.split.us ], [ 1, %.lr.ph73.preheader ], [ 1, %.lr.ph73.._crit_edge.loopexit95_crit_edge ], [ 0, %_intsetGet.exit41.us55.._crit_edge.loopexit95_crit_edge ]
  ret i32 %.6
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !11, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !19}
end_hunk_0
