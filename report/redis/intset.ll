Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/intset?download=true
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
define dso_local range(i64 8, -8589934582) i64 @intsetAllocSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
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
define dso_local ptr @intsetAdd(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  store i8 1, ptr %2, align 1, !tbaa !17
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
  %3 = phi i32 [ %4, %_intsetSet.exit.us33.i ], [ %.pre48.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_intsetSet.exit.us33.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.t = add nsw i64 %indvars.iv.next.i, %.lobit.i ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next.i
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  switch i32 %3, label %bb.g [
    i32 8, label %bb.f
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.w = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !12
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !12
  br label %_intsetSet.exit.us33.i

bb.f:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  store i64 %i.x, ptr %i.y, align 4, !tbaa !14
  br label %_intsetSet.exit.us33.i

bb.g:                                             ; preds = %_intsetGetEncoded.exit.us31.i
  %i.z = trunc i32 %i.v to i16
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.t
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !19
  br label %_intsetSet.exit.us33.i

_intsetSet.exit.us33.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %4 = phi i32 [ %3, %bb.g ], [ 8, %bb.f ], [ %.pre.i, %bb.e ]
  %.not.us34.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.us34.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.us31.i, !llvm.loop !16

_intsetGetEncoded.exit.i:                         ; preds = %.lr.ph.i, %_intsetSet.exit.i
  %5 = phi i32 [ %6, %_intsetSet.exit.i ], [ %.pre48.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %_intsetSet.exit.i ], [ %i.s, %.lr.ph.i ]
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1 ; 4 uses
  %i.ab = add nsw i64 %indvars.iv.next42.i, %.lobit.i ; 3 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv.next42.i
  %.0.copyload.i.i = load i16, ptr %i.ac, align 2 ; 3 uses
  switch i32 %5, label %bb.j [
    i32 8, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ad = sext i16 %.0.copyload.i.i to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ab
  store i64 %i.ad, ptr %i.ae, align 4, !tbaa !14
  br label %_intsetSet.exit.i

bb.i:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.af = sext i16 %.0.copyload.i.i to i32
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ab
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %.pre47.i = load i32, ptr %i.q, align 4, !tbaa !12
  br label %_intsetSet.exit.i

bb.j:                                             ; preds = %_intsetGetEncoded.exit.i
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ab
  store i16 %.0.copyload.i.i, ptr %i.ah, align 2, !tbaa !19
  br label %_intsetSet.exit.i

_intsetSet.exit.i:                                ; preds = %bb.j, %bb.i, %bb.h
  %6 = phi i32 [ 8, %bb.h ], [ %.pre47.i, %bb.i ], [ %5, %bb.j ]
  %.not.i = icmp eq i64 %indvars.iv.next42.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %_intsetGetEncoded.exit.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %_intsetSet.exit.i, %_intsetSet.exit.us33.i, %bb.d
  br i1 %i.j, label %bb.k, label %bb.o

bb.k:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !12
  switch i32 %i.ai, label %bb.n [
    i32 8, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %1, ptr %i.aj, align 4, !tbaa !14
  br label %intsetUpgradeAndAdd.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = trunc i64 %1 to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !12
  br label %intsetUpgradeAndAdd.exit

bb.n:                                             ; preds = %bb.k
  %i.am = trunc i64 %1 to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.am, ptr %i.an, align 4, !tbaa !19
  br label %intsetUpgradeAndAdd.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12 ; 3 uses
  %i.aq = load i32, ptr %i.q, align 4, !tbaa !12
  switch i32 %i.aq, label %bb.r [
    i32 8, label %bb.p
    i32 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  store i64 %1, ptr %i.at, align 4, !tbaa !14
  br label %intsetUpgradeAndAdd.exit

bb.q:                                             ; preds = %bb.o
  %i.au = trunc i64 %1 to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !12
  br label %intsetUpgradeAndAdd.exit

bb.r:                                             ; preds = %bb.o
  %i.ay = trunc i64 %1 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ba = sext i32 %i.ap to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  store i16 %i.ay, ptr %i.bb, align 2, !tbaa !19
  br label %intsetUpgradeAndAdd.exit

intsetUpgradeAndAdd.exit:                         ; preds = %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !12
  br label %bb.ae

bb.s:                                             ; preds = %bb.c
  %i.bf = call fastcc zeroext i8 @intsetSearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %i.a)
  %.not23 = icmp eq i8 %i.bf, 0
  br i1 %.not23, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %2, align 1, !tbaa !17
  br label %bb.ae

bb.v:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = add i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = zext i32 %i.f to i64
  %i.bl = mul nuw i64 %i.bj, %i.bk
  %i.bm = add nuw i64 %i.bl, 8
  %i.bn = call ptr @zrealloc(ptr noundef nonnull %0, i64 noundef %i.bm) #14 ; 7 uses
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !12  ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !12 ; 4 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  %.pre = load i32, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  br i1 %i.br, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bs = add nuw i32 %i.bo, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 6 uses
  %i.bu = zext i32 %i.bo to i64                   ; 3 uses
  %i.bv = zext i32 %i.bs to i64                   ; 3 uses
  switch i32 %.pre, label %bb.z [
    i32 8, label %bb.x
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  br label %intsetMoveTail.exit

bb.y:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bv
  br label %intsetMoveTail.exit

bb.z:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bu
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bv
  br label %intsetMoveTail.exit

intsetMoveTail.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %.sink.i = phi i32 [ 2, %bb.y ], [ 1, %bb.z ], [ 3, %bb.x ]
  %.023.i = phi ptr [ %i.by, %bb.y ], [ %i.ca, %bb.z ], [ %i.bw, %bb.x ]
  %.022.i = phi ptr [ %i.bz, %bb.y ], [ %i.cb, %bb.z ], [ %i.bx, %bb.x ]
  %i.cc = sub nuw i32 %i.bq, %i.bo
  %i.cd = shl i32 %i.cc, %.sink.i
  %i.ce = zext i32 %i.cd to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.022.i, ptr nonnull align 1 %.023.i, i64 %i.ce, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %intsetMoveTail.exit
  switch i32 %.pre, label %bb.ad [
    i32 8, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cg = sext i32 %i.bo to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  store i64 %1, ptr %i.ch, align 4, !tbaa !14
  br label %_intsetSet.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ci = trunc i64 %1 to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ck = sext i32 %i.bo to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !12
  %.pre26 = load i32, ptr %i.bp, align 4, !tbaa !12
  br label %_intsetSet.exit

bb.ad:                                            ; preds = %bb.aa
  %i.cm = trunc i64 %1 to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.co = sext i32 %i.bo to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.co
  store i16 %i.cm, ptr %i.cp, align 2, !tbaa !19
  br label %_intsetSet.exit

_intsetSet.exit:                                  ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.cq = phi i32 [ %i.bq, %bb.ab ], [ %.pre26, %bb.ac ], [ %i.bq, %bb.ad ]
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.bp, align 4, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.u, %_intsetSet.exit, %intsetUpgradeAndAdd.exit
  %.0 = phi ptr [ %i.q, %intsetUpgradeAndAdd.exit ], [ %i.bn, %_intsetSet.exit ], [ %0, %bb.u ], [ %0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @intsetSearch(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
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
end_hunk_0
