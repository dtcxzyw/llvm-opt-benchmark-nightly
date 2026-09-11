Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/inet_net_ntop?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @pg_inet_net_ntop(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 15 uses
  switch i32 %0, label %bb.bb [
    i32 2, label %bb.b
    i32 3, label %bb.m
    i32 10, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %2, 32
  br i1 %or.cond.i, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.b = icmp ult i64 %4, 6
  br i1 %i.b, label %.loopexit.i, label %.preheader.1.i

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #6
  store i32 22, ptr %i.c, align 4
  br label %inet_net_ntop_ipv4.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %.pre.i = load i8, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = zext i8 %.pre.i to i32
  %i.f = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %i.e) #7 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %3 to i64
  %.neg.i = add i64 %4, %i.j                      ; 4 uses
  %i.k = sub i64 %.neg.i, %i.i
  %i.l = icmp ult i64 %i.k, 6
  br i1 %i.l, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.preheader.1.i
  %.not29.1.i = icmp eq i32 %i.f, 0
  br i1 %.not29.1.i, label %.preheader.2.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 46, ptr %i.h, align 1
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.e, %bb.d
  %.1.1.i = phi ptr [ %i.m, %bb.e ], [ %3, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.d, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.1.1.i, ptr noundef nonnull @.str, i32 noundef %i.p) #7
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.1.1.i, i64 %i.r ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %.neg.i, %i.t
  %i.v = icmp ult i64 %i.u, 6
  br i1 %i.v, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.preheader.2.i
  %.not29.2.i = icmp eq ptr %i.s, %3
  br i1 %.not29.2.i, label %.preheader.3.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.s, align 1
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.g, %bb.f
  %.1.2.i = phi ptr [ %i.w, %bb.g ], [ %3, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.n, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.1.2.i, ptr noundef nonnull @.str, i32 noundef %i.z) #7
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.2.i, i64 %i.ab ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %.neg.i, %i.ad
  %i.af = icmp ult i64 %i.ae, 6
  br i1 %i.af, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.preheader.3.i
  %.not29.3.i = icmp eq ptr %i.ac, %3
  br i1 %.not29.3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 46, ptr %i.ac, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.3.i = phi ptr [ %i.ag, %bb.i ], [ %3, %bb.h ] ; 2 uses
  %i.ah = load i8, ptr %i.x, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.1.3.i, ptr noundef nonnull @.str, i32 noundef %i.ai) #7
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %i.ak ; 2 uses
  %.not.i = icmp eq i32 %2, 32
  br i1 %.not.i, label %inet_net_ntop_ipv4.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %.neg.i, %i.am
  %i.ao = icmp ult i64 %i.an, 5
  br i1 %i.ao, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %i.al, ptr noundef nonnull @.str.1, i32 noundef %2) #7 ; 0 uses
  br label %inet_net_ntop_ipv4.exit

.loopexit.i:                                      ; preds = %bb.k, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %i.aq = tail call ptr @__errno_location() #6
  store i32 90, ptr %i.aq, align 4
  br label %inet_net_ntop_ipv4.exit

bb.m:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ar = add i32 %2, -129
  %or.cond.i9 = icmp ult i32 %i.ar, -130
  br i1 %or.cond.i9, label %bb.n, label %.preheader.preheader.i10

bb.n:                                             ; preds = %bb.m
  %i.as = tail call ptr @__errno_location() #6
  store i32 22, ptr %i.as, align 4
  br label %inet_net_ntop_ipv6.exit

.preheader.preheader.i10:                         ; preds = %bb.m
  %i.at = load i8, ptr %1, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bt, %i.bw            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm            ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.cz, %i.dc            ; 4 uses
  %.not308.not.i = icmp eq i32 %i.az, 0           ; 3 uses
  %i.de = icmp eq i32 %i.bh, 0
  %..i = zext i1 %.not308.not.i to i32            ; 2 uses
  %not..not308.not359.i = xor i1 %.not308.not.i, true ; 3 uses
  %.355.i = sext i1 %not..not308.not359.i to i32
  br i1 %i.de, label %bb.o, label %.preheader.2.i11

bb.o:                                             ; preds = %.preheader.preheader.i10
  %.353.i = zext i1 %not..not308.not359.i to i32
  %spec.select101.1.i = select i1 %.not308.not.i, i32 2, i32 1
  br label %.preheader.2.i11

.preheader.2.i11:                                 ; preds = %bb.o, %.preheader.preheader.i10
  %.sroa.16.2.1.i = phi i32 [ %..i, %.preheader.preheader.i10 ], [ 0, %bb.o ] ; 4 uses
  %i.df = phi i1 [ %not..not308.not359.i, %.preheader.preheader.i10 ], [ true, %bb.o ]
  %.sroa.041.2.1.i = phi i32 [ %.355.i, %.preheader.preheader.i10 ], [ -1, %bb.o ] ; 3 uses
  %.sroa.10.1.1.i = phi i32 [ %..i, %.preheader.preheader.i10 ], [ %spec.select101.1.i, %bb.o ] ; 5 uses
  %.sroa.0.1.1.i = phi i32 [ -1, %.preheader.preheader.i10 ], [ %.353.i, %bb.o ] ; 3 uses
  %i.dg = icmp eq i32 %i.bp, 0
  %i.dh = icmp eq i32 %.sroa.0.1.1.i, -1          ; 3 uses
  br i1 %i.dg, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.preheader.2.i11
  br i1 %i.dh, label %.preheader.3.i12, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = icmp samesign ugt i32 %.sroa.10.1.1.i, %.sroa.16.2.1.i
  %or.cond94.2.i = select i1 %i.df, i1 true, i1 %i.di ; 2 uses
  %.sroa.16.1.2.i = select i1 %or.cond94.2.i, i32 %.sroa.10.1.1.i, i32 %.sroa.16.2.1.i
  %.sroa.041.1.2.i = select i1 %or.cond94.2.i, i32 %.sroa.0.1.1.i, i32 %.sroa.041.2.1.i
  br label %.preheader.3.i12

bb.r:                                             ; preds = %.preheader.2.i11
  %i.dj = add nuw nsw i32 %.sroa.10.1.1.i, 1
  %spec.select101.2.i = select i1 %i.dh, i32 1, i32 %i.dj
  %spec.select102.2.i = select i1 %i.dh, i32 2, i32 %.sroa.0.1.1.i
  br label %.preheader.3.i12

.preheader.3.i12:                                 ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.16.2.2.i = phi i32 [ %.sroa.16.2.1.i, %bb.p ], [ %.sroa.16.2.1.i, %bb.r ], [ %.sroa.16.1.2.i, %bb.q ] ; 4 uses
  %.sroa.041.2.2.i = phi i32 [ %.sroa.041.2.1.i, %bb.p ], [ %.sroa.041.2.1.i, %bb.r ], [ %.sroa.041.1.2.i, %bb.q ] ; 4 uses
  %.sroa.10.1.2.i = phi i32 [ %.sroa.10.1.1.i, %bb.p ], [ %spec.select101.2.i, %bb.r ], [ %.sroa.10.1.1.i, %bb.q ] ; 5 uses
  %.sroa.0.1.2.i = phi i32 [ -1, %bb.p ], [ %spec.select102.2.i, %bb.r ], [ -1, %bb.q ] ; 3 uses
  %i.dk = icmp eq i32 %i.bx, 0
  %i.dl = icmp eq i32 %.sroa.0.1.2.i, -1          ; 3 uses
  br i1 %i.dk, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.preheader.3.i12
  br i1 %i.dl, label %.preheader.4.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp eq i32 %.sroa.041.2.2.i, -1
  %i.dn = icmp samesign ugt i32 %.sroa.10.1.2.i, %.sroa.16.2.2.i
  %or.cond94.3.i = select i1 %i.dm, i1 true, i1 %i.dn ; 2 uses
  %.sroa.16.1.3.i = select i1 %or.cond94.3.i, i32 %.sroa.10.1.2.i, i32 %.sroa.16.2.2.i
  %.sroa.041.1.3.i = select i1 %or.cond94.3.i, i32 %.sroa.0.1.2.i, i32 %.sroa.041.2.2.i
  br label %.preheader.4.i

bb.u:                                             ; preds = %.preheader.3.i12
  %i.do = add nuw nsw i32 %.sroa.10.1.2.i, 1
  %spec.select101.3.i = select i1 %i.dl, i32 1, i32 %i.do
  %spec.select102.3.i = select i1 %i.dl, i32 3, i32 %.sroa.0.1.2.i
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.16.2.3.i = phi i32 [ %.sroa.16.2.2.i, %bb.s ], [ %.sroa.16.2.2.i, %bb.u ], [ %.sroa.16.1.3.i, %bb.t ] ; 4 uses
  %.sroa.041.2.3.i = phi i32 [ %.sroa.041.2.2.i, %bb.s ], [ %.sroa.041.2.2.i, %bb.u ], [ %.sroa.041.1.3.i, %bb.t ] ; 4 uses
  %.sroa.10.1.3.i = phi i32 [ %.sroa.10.1.2.i, %bb.s ], [ %spec.select101.3.i, %bb.u ], [ %.sroa.10.1.2.i, %bb.t ] ; 5 uses
  %.sroa.0.1.3.i = phi i32 [ -1, %bb.s ], [ %spec.select102.3.i, %bb.u ], [ -1, %bb.t ] ; 3 uses
  %i.dp = icmp eq i32 %i.cf, 0
  %i.dq = icmp eq i32 %.sroa.0.1.3.i, -1          ; 3 uses
  br i1 %i.dp, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.preheader.4.i
  br i1 %i.dq, label %.preheader.5.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = icmp eq i32 %.sroa.041.2.3.i, -1
  %i.ds = icmp samesign ugt i32 %.sroa.10.1.3.i, %.sroa.16.2.3.i
  %or.cond94.4.i = select i1 %i.dr, i1 true, i1 %i.ds ; 2 uses
  %.sroa.16.1.4.i = select i1 %or.cond94.4.i, i32 %.sroa.10.1.3.i, i32 %.sroa.16.2.3.i
  %.sroa.041.1.4.i = select i1 %or.cond94.4.i, i32 %.sroa.0.1.3.i, i32 %.sroa.041.2.3.i
  br label %.preheader.5.i

bb.x:                                             ; preds = %.preheader.4.i
  %i.dt = add nuw nsw i32 %.sroa.10.1.3.i, 1
  %spec.select101.4.i = select i1 %i.dq, i32 1, i32 %i.dt
  %spec.select102.4.i = select i1 %i.dq, i32 4, i32 %.sroa.0.1.3.i
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.16.2.4.i = phi i32 [ %.sroa.16.2.3.i, %bb.v ], [ %.sroa.16.2.3.i, %bb.x ], [ %.sroa.16.1.4.i, %bb.w ] ; 4 uses
  %.sroa.041.2.4.i = phi i32 [ %.sroa.041.2.3.i, %bb.v ], [ %.sroa.041.2.3.i, %bb.x ], [ %.sroa.041.1.4.i, %bb.w ] ; 4 uses
  %.sroa.10.1.4.i = phi i32 [ %.sroa.10.1.3.i, %bb.v ], [ %spec.select101.4.i, %bb.x ], [ %.sroa.10.1.3.i, %bb.w ] ; 5 uses
  %.sroa.0.1.4.i = phi i32 [ -1, %bb.v ], [ %spec.select102.4.i, %bb.x ], [ -1, %bb.w ] ; 3 uses
  %i.du = icmp eq i32 %i.cn, 0
  %i.dv = icmp eq i32 %.sroa.0.1.4.i, -1          ; 3 uses
  br i1 %i.du, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.preheader.5.i
  br i1 %i.dv, label %.preheader.6.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = icmp eq i32 %.sroa.041.2.4.i, -1
  %i.dx = icmp samesign ugt i32 %.sroa.10.1.4.i, %.sroa.16.2.4.i
  %or.cond94.5.i = select i1 %i.dw, i1 true, i1 %i.dx ; 2 uses
  %.sroa.16.1.5.i = select i1 %or.cond94.5.i, i32 %.sroa.10.1.4.i, i32 %.sroa.16.2.4.i
  %.sroa.041.1.5.i = select i1 %or.cond94.5.i, i32 %.sroa.0.1.4.i, i32 %.sroa.041.2.4.i
  br label %.preheader.6.i

bb.aa:                                            ; preds = %.preheader.5.i
  %i.dy = add nuw nsw i32 %.sroa.10.1.4.i, 1
  %spec.select101.5.i = select i1 %i.dv, i32 1, i32 %i.dy
  %spec.select102.5.i = select i1 %i.dv, i32 5, i32 %.sroa.0.1.4.i
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.16.2.5.i = phi i32 [ %.sroa.16.2.4.i, %bb.y ], [ %.sroa.16.2.4.i, %bb.aa ], [ %.sroa.16.1.5.i, %bb.z ] ; 4 uses
  %.sroa.041.2.5.i = phi i32 [ %.sroa.041.2.4.i, %bb.y ], [ %.sroa.041.2.4.i, %bb.aa ], [ %.sroa.041.1.5.i, %bb.z ] ; 4 uses
  %.sroa.10.1.5.i = phi i32 [ %.sroa.10.1.4.i, %bb.y ], [ %spec.select101.5.i, %bb.aa ], [ %.sroa.10.1.4.i, %bb.z ] ; 5 uses
  %.sroa.0.1.5.i = phi i32 [ -1, %bb.y ], [ %spec.select102.5.i, %bb.aa ], [ -1, %bb.z ] ; 3 uses
  %i.dz = icmp eq i32 %i.cv, 0
  %i.ea = icmp eq i32 %.sroa.0.1.5.i, -1          ; 3 uses
  br i1 %i.dz, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.preheader.6.i
  br i1 %i.ea, label %.preheader.7.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = icmp eq i32 %.sroa.041.2.5.i, -1
  %i.ec = icmp samesign ugt i32 %.sroa.10.1.5.i, %.sroa.16.2.5.i
  %or.cond94.6.i = select i1 %i.eb, i1 true, i1 %i.ec ; 2 uses
  %.sroa.16.1.6.i = select i1 %or.cond94.6.i, i32 %.sroa.10.1.5.i, i32 %.sroa.16.2.5.i
  %.sroa.041.1.6.i = select i1 %or.cond94.6.i, i32 %.sroa.0.1.5.i, i32 %.sroa.041.2.5.i
  br label %.preheader.7.i

bb.ad:                                            ; preds = %.preheader.6.i
  %i.ed = add nuw nsw i32 %.sroa.10.1.5.i, 1
  %spec.select101.6.i = select i1 %i.ea, i32 1, i32 %i.ed
  %spec.select102.6.i = select i1 %i.ea, i32 6, i32 %.sroa.0.1.5.i
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.16.2.6.i = phi i32 [ %.sroa.16.2.5.i, %bb.ab ], [ %.sroa.16.2.5.i, %bb.ad ], [ %.sroa.16.1.6.i, %bb.ac ] ; 5 uses
  %.sroa.041.2.6.i = phi i32 [ %.sroa.041.2.5.i, %bb.ab ], [ %.sroa.041.2.5.i, %bb.ad ], [ %.sroa.041.1.6.i, %bb.ac ] ; 5 uses
  %.sroa.10.1.6.i = phi i32 [ %.sroa.10.1.5.i, %bb.ab ], [ %spec.select101.6.i, %bb.ad ], [ %.sroa.10.1.5.i, %bb.ac ] ; 3 uses
  %.sroa.0.1.6.i = phi i32 [ -1, %bb.ab ], [ %spec.select102.6.i, %bb.ad ], [ -1, %bb.ac ] ; 3 uses
  %i.ee = icmp eq i32 %i.dd, 0
  %i.ef = icmp eq i32 %.sroa.0.1.6.i, -1          ; 3 uses
  br i1 %i.ee, label %select.unfold.i, label %bb.ae

bb.ae:                                            ; preds = %.preheader.7.i
  br i1 %i.ef, label %.thread316.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = icmp eq i32 %.sroa.041.2.6.i, -1
  %i.eh = icmp samesign ugt i32 %.sroa.10.1.6.i, %.sroa.16.2.6.i
  %or.cond94.7.i = select i1 %i.eg, i1 true, i1 %i.eh ; 2 uses
  %.sroa.16.1.7.i = select i1 %or.cond94.7.i, i32 %.sroa.10.1.6.i, i32 %.sroa.16.2.6.i
  %.sroa.041.1.7.i = select i1 %or.cond94.7.i, i32 %.sroa.0.1.6.i, i32 %.sroa.041.2.6.i
  br label %.thread316.i

select.unfold.i:                                  ; preds = %.preheader.7.i
  %i.ei = add nuw nsw i32 %.sroa.10.1.6.i, 1
  %spec.select356.i = select i1 %i.ef, i32 1, i32 %i.ei ; 2 uses
  %spec.select357.i = select i1 %i.ef, i32 7, i32 %.sroa.0.1.6.i
  %i.ej = icmp eq i32 %.sroa.041.2.6.i, -1
  %i.ek = icmp samesign ugt i32 %spec.select356.i, %.sroa.16.2.6.i
  %or.cond95.i = select i1 %i.ej, i1 true, i1 %i.ek ; 2 uses
  %spec.select103.i = select i1 %or.cond95.i, i32 %spec.select356.i, i32 %.sroa.16.2.6.i
  %spec.select104.i = select i1 %or.cond95.i, i32 %spec.select357.i, i32 %.sroa.041.2.6.i
  br label %.thread316.i

.thread316.i:                                     ; preds = %select.unfold.i, %bb.af, %bb.ae
  %.sroa.16.3.i = phi i32 [ %spec.select103.i, %select.unfold.i ], [ %.sroa.16.1.7.i, %bb.af ], [ %.sroa.16.2.6.i, %bb.ae ]
  %.sroa.041.3.i = phi i32 [ %spec.select104.i, %select.unfold.i ], [ %.sroa.041.1.7.i, %bb.af ], [ %.sroa.041.2.6.i, %bb.ae ]
  %.sroa.16.3.fr.i = freeze i32 %.sroa.16.3.i     ; 5 uses
  %i.el = icmp slt i32 %.sroa.16.3.fr.i, 2
  %.sroa.041.3.fr.i = freeze i32 %.sroa.041.3.i
  %spec.select.i = select i1 %i.el, i32 -1, i32 %.sroa.041.3.fr.i ; 18 uses
  %.not88.i = icmp ne i32 %spec.select.i, -1      ; 9 uses
  %i.em = add i32 %spec.select.i, %.sroa.16.3.fr.i ; 21 uses
  %i.en = icmp eq i32 %spec.select.i, 0
  %i.eo = icmp eq i32 %.sroa.16.3.fr.i, 7
  %i.ep = icmp eq i32 %.sroa.16.3.fr.i, 5
  br i1 %i.en, label %.split.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %.thread316.i
  %.not89.us.i = icmp slt i32 %spec.select.i, 1
  %i.eq = icmp sgt i32 %i.em, 0
  %i.er = and i1 %.not89.us.i, %i.eq
  %or.cond98.us.i = and i1 %.not88.i, %i.er
  br i1 %or.cond98.us.i, label %.split.us.1.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.split.us.preheader.i
  %i.es = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.az) #7
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.et
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %.thread.us.i, %.split.us.preheader.i
  %.3.us.i = phi ptr [ %i.eu, %.thread.us.i ], [ %i.a, %.split.us.preheader.i ] ; 5 uses
  %.not89.us.1.i = icmp slt i32 %spec.select.i, 2
  %i.ev = icmp sgt i32 %i.em, 1
  %i.ew = and i1 %.not89.us.1.i, %i.ev
  %or.cond98.us.1.i = and i1 %.not88.i, %i.ew
  br i1 %or.cond98.us.1.i, label %bb.ag, label %.thread.us.1.i

.thread.us.1.i:                                   ; preds = %.split.us.1.i
  store i8 58, ptr %.3.us.i, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 1 ; 2 uses
  %i.ey = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ex, ptr noundef nonnull @.str.2, i32 noundef %i.bh) #7
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  br label %.split.us.2.i

bb.ag:                                            ; preds = %.split.us.1.i
  %i.fb = icmp eq i32 %spec.select.i, 1
  br i1 %i.fb, label %.split.us.2.thread.i, label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.ag, %.thread.us.1.i
  %.3.us.1.i = phi ptr [ %i.fa, %.thread.us.1.i ], [ %.3.us.i, %bb.ag ] ; 4 uses
  %.not89.us.2.i = icmp slt i32 %spec.select.i, 3
  %i.fc = icmp sgt i32 %i.em, 2
  %i.fd = and i1 %.not89.us.2.i, %i.fc
  %or.cond98.us.2.i = and i1 %.not88.i, %i.fd
  br i1 %or.cond98.us.2.i, label %bb.ah, label %.thread.us.2.i

.split.us.2.thread.i:                             ; preds = %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 1 ; 2 uses
  store i8 58, ptr %.3.us.i, align 1
  %i.ff = icmp samesign ugt i32 %i.em, 2
  br i1 %i.ff, label %.split.us.3.i, label %.thread.us.2.i

.thread.us.2.i:                                   ; preds = %.split.us.2.thread.i, %.split.us.2.i
  %.3.us.1325.i = phi ptr [ %i.fe, %.split.us.2.thread.i ], [ %.3.us.1.i, %.split.us.2.i ] ; 2 uses
  store i8 58, ptr %.3.us.1325.i, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.3.us.1325.i, i64 1 ; 2 uses
  %i.fh = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.2, i32 noundef %i.bp) #7
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  br label %.split.us.3.i

bb.ah:                                            ; preds = %.split.us.2.i
  %i.fk = icmp eq i32 %spec.select.i, 2
  br i1 %i.fk, label %bb.ai, label %.split.us.3.i

bb.ai:                                            ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.us.1.i, i64 1
  store i8 58, ptr %.3.us.1.i, align 1
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.ai, %bb.ah, %.thread.us.2.i, %.split.us.2.thread.i
  %.3.us.2.i = phi ptr [ %i.fl, %bb.ai ], [ %.3.us.1.i, %bb.ah ], [ %i.fj, %.thread.us.2.i ], [ %i.fe, %.split.us.2.thread.i ] ; 5 uses
  %.not89.us.3.i = icmp slt i32 %spec.select.i, 4
  %i.fm = icmp sgt i32 %i.em, 3
  %i.fn = and i1 %.not89.us.3.i, %i.fm
  %or.cond98.us.3.i = and i1 %.not88.i, %i.fn
  br i1 %or.cond98.us.3.i, label %bb.aj, label %.thread.us.3.i

.thread.us.3.i:                                   ; preds = %.split.us.3.i
  store i8 58, ptr %.3.us.2.i, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.3.us.2.i, i64 1 ; 2 uses
  %i.fp = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.fo, ptr noundef nonnull @.str.2, i32 noundef %i.bx) #7
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  br label %.split.us.4.i

bb.aj:                                            ; preds = %.split.us.3.i
  %i.fs = icmp eq i32 %spec.select.i, 3
  br i1 %i.fs, label %.split.us.4.thread.i, label %.split.us.4.i

.split.us.4.i:                                    ; preds = %bb.aj, %.thread.us.3.i
  %.3.us.3.i = phi ptr [ %i.fr, %.thread.us.3.i ], [ %.3.us.2.i, %bb.aj ] ; 4 uses
  %.not89.us.4.i = icmp slt i32 %spec.select.i, 5
  %i.ft = icmp sgt i32 %i.em, 4
  %i.fu = and i1 %.not89.us.4.i, %i.ft
  %or.cond98.us.4.i = and i1 %.not88.i, %i.fu
  br i1 %or.cond98.us.4.i, label %bb.ak, label %.thread.us.4.i

.split.us.4.thread.i:                             ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %.3.us.2.i, i64 1 ; 2 uses
  store i8 58, ptr %.3.us.2.i, align 1
  %i.fw = icmp samesign ugt i32 %i.em, 4
  br i1 %i.fw, label %.split.us.5.i, label %.thread.us.4.i

.thread.us.4.i:                                   ; preds = %.split.us.4.thread.i, %.split.us.4.i
  %.3.us.3332.i = phi ptr [ %i.fv, %.split.us.4.thread.i ], [ %.3.us.3.i, %.split.us.4.i ] ; 2 uses
  store i8 58, ptr %.3.us.3332.i, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.3.us.3332.i, i64 1 ; 2 uses
  %i.fy = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.fx, ptr noundef nonnull @.str.2, i32 noundef %i.cf) #7
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fz
  br label %.split.us.5.i

bb.ak:                                            ; preds = %.split.us.4.i
  %i.gb = icmp eq i32 %spec.select.i, 4
  br i1 %i.gb, label %bb.al, label %.split.us.5.i

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.us.3.i, i64 1
  store i8 58, ptr %.3.us.3.i, align 1
  br label %.split.us.5.i

.split.us.5.i:                                    ; preds = %bb.al, %bb.ak, %.thread.us.4.i, %.split.us.4.thread.i
  %.3.us.4.i = phi ptr [ %i.gc, %bb.al ], [ %.3.us.3.i, %bb.ak ], [ %i.ga, %.thread.us.4.i ], [ %i.fv, %.split.us.4.thread.i ] ; 5 uses
  %.not89.us.5.i = icmp slt i32 %spec.select.i, 6
  %i.gd = icmp sgt i32 %i.em, 5
  %i.ge = and i1 %.not89.us.5.i, %i.gd
  %or.cond98.us.5.i = and i1 %.not88.i, %i.ge
  br i1 %or.cond98.us.5.i, label %bb.am, label %.thread.us.5.i

.thread.us.5.i:                                   ; preds = %.split.us.5.i
  store i8 58, ptr %.3.us.4.i, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.3.us.4.i, i64 1 ; 2 uses
  %i.gg = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.2, i32 noundef %i.cn) #7
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gh
  br label %.split.us.6.i

bb.am:                                            ; preds = %.split.us.5.i
  %i.gj = icmp eq i32 %spec.select.i, 5
  br i1 %i.gj, label %.split.us.6.thread.i, label %.split.us.6.i

.split.us.6.i:                                    ; preds = %bb.am, %.thread.us.5.i
  %.3.us.5.i = phi ptr [ %i.gi, %.thread.us.5.i ], [ %.3.us.4.i, %bb.am ] ; 4 uses
  %.not89.us.6.i = icmp slt i32 %spec.select.i, 7
  %i.gk = icmp sgt i32 %i.em, 6
  %i.gl = and i1 %.not89.us.6.i, %i.gk
  %or.cond98.us.6.i = and i1 %.not88.i, %i.gl
  br i1 %or.cond98.us.6.i, label %bb.an, label %.thread.us.6.i

.split.us.6.thread.i:                             ; preds = %bb.am
  %i.gm = getelementptr inbounds nuw i8, ptr %.3.us.4.i, i64 1 ; 2 uses
  store i8 58, ptr %.3.us.4.i, align 1
  %i.gn = icmp samesign ugt i32 %i.em, 6
  br i1 %i.gn, label %.split.us.7.i, label %.thread.us.6.i

.thread.us.6.i:                                   ; preds = %.split.us.6.thread.i, %.split.us.6.i
  %.3.us.5339.i = phi ptr [ %i.gm, %.split.us.6.thread.i ], [ %.3.us.5.i, %.split.us.6.i ] ; 2 uses
  store i8 58, ptr %.3.us.5339.i, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.3.us.5339.i, i64 1 ; 2 uses
  %i.gp = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.go, ptr noundef nonnull @.str.2, i32 noundef %i.cv) #7
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq
  br label %.split.us.7.i

bb.an:                                            ; preds = %.split.us.6.i
  %i.gs = icmp eq i32 %spec.select.i, 6
  br i1 %i.gs, label %bb.ao, label %.split.us.7.i

bb.ao:                                            ; preds = %bb.an
  %i.gt = getelementptr inbounds nuw i8, ptr %.3.us.5.i, i64 1
  store i8 58, ptr %.3.us.5.i, align 1
  br label %.split.us.7.i

.split.us.7.i:                                    ; preds = %bb.ao, %bb.an, %.thread.us.6.i, %.split.us.6.thread.i
  %.3.us.6.i = phi ptr [ %i.gt, %bb.ao ], [ %.3.us.5.i, %bb.an ], [ %i.gr, %.thread.us.6.i ], [ %i.gm, %.split.us.6.thread.i ] ; 5 uses
  %.not89.us.7.i = icmp slt i32 %spec.select.i, 8
  %i.gu = icmp sgt i32 %i.em, 7
  %i.gv = and i1 %.not89.us.7.i, %i.gu
  %or.cond98.us.7.i = and i1 %.not88.i, %i.gv
  br i1 %or.cond98.us.7.i, label %bb.ap, label %.thread.us.7.i

.thread.us.7.i:                                   ; preds = %.split.us.7.i
  store i8 58, ptr %.3.us.6.i, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.3.us.6.i, i64 1 ; 2 uses
  %i.gx = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.2, i32 noundef %i.dd) #7
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gy
  br label %.loopexit.i13

bb.ap:                                            ; preds = %.split.us.7.i
  %i.ha = icmp eq i32 %spec.select.i, 7
  br i1 %i.ha, label %bb.aq, label %.loopexit.i13

bb.aq:                                            ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %.3.us.6.i, i64 1
  store i8 58, ptr %.3.us.6.i, align 1
  br label %.loopexit.i13

.split.i:                                         ; preds = %.thread316.i
  %i.hc = icmp eq i32 %.sroa.16.3.fr.i, 6
  br i1 %i.hc, label %.split.split.us.split.1.i, label %.split.split.preheader.i

.split.split.preheader.i:                         ; preds = %.split.i
  %i.hd = icmp sgt i32 %i.em, 0
  br i1 %i.hd, label %.split.split.1.i, label %.split.split.1.i.thread

.split.split.us.split.1.i:                        ; preds = %.split.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 58, ptr %i.a, align 16
  %.not.i15 = icmp eq i32 %i.em, 6
  br i1 %.not.i15, label %.split136.us.loopexit.i, label %.loopexit.i13

.split136.us.loopexit.i:                          ; preds = %.split.split.us.split.1.i
  store i8 58, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.split136.us.i

.split136.us.i:                                   ; preds = %bb.av, %.split136.us.loopexit.i
  %.us-phi137.i = phi ptr [ %i.hf, %.split136.us.loopexit.i ], [ %i.jx, %bb.av ] ; 5 uses
  %i.hg = ptrtoint ptr %.us-phi137.i to i64       ; 2 uses
  %i.hh = ptrtoint ptr %i.a to i64
  %.neg.i14 = add i64 %i.hh, 50                   ; 4 uses
  %i.hi = sub i64 %.neg.i14, %i.hg
  %i.hj = icmp ult i64 %i.hi, 6
  br i1 %i.hj, label %.thread112.i, label %bb.ar

bb.ar:                                            ; preds = %.split136.us.i
  %i.hk = load i8, ptr %i.co, align 1
  %i.hl = zext i8 %i.hk to i32
  %i.hm = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.us-phi137.i, ptr noundef nonnull @.str, i32 noundef %i.hl) #7
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %.us-phi137.i, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1 ; 4 uses
  store i8 46, ptr %i.ho, align 1
  store i8 0, ptr %i.hp, align 1
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %.neg.i14, %i.hq
  %i.hs = icmp ult i64 %i.hr, 6
  br i1 %i.hs, label %.thread112.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ht = load i8, ptr %i.cs, align 1
  %i.hu = zext i8 %i.ht to i32
  %i.hv = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.hp, ptr noundef nonnull @.str, i32 noundef %i.hu) #7
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 4 uses
  store i8 46, ptr %i.hx, align 1
  store i8 0, ptr %i.hy, align 1
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %.neg.i14, %i.hz
  %i.ib = icmp ult i64 %i.ia, 6
  br i1 %i.ib, label %.thread112.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = load i8, ptr %i.cw, align 1
  %i.id = zext i8 %i.ic to i32
  %i.ie = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.hy, ptr noundef nonnull @.str, i32 noundef %i.id) #7
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1 ; 4 uses
  store i8 46, ptr %i.ig, align 1
  store i8 0, ptr %i.ih, align 1
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %.neg.i14, %i.ii
  %i.ik = icmp ult i64 %i.ij, 6
  br i1 %i.ik, label %.thread112.i, label %decoct.exit.i

decoct.exit.i:                                    ; preds = %bb.at
  %i.il = load i8, ptr %i.da, align 1
  %i.im = zext i8 %i.il to i32
  %i.in = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ih, ptr noundef nonnull @.str, i32 noundef %i.im) #7
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.io
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.iq, %i.hg
  %i.is = and i64 %i.ir, 4294967295
  %.not91.i = icmp eq i64 %i.is, 0
  br i1 %.not91.i, label %.thread112.i, label %bb.au

.thread112.i:                                     ; preds = %decoct.exit.i, %bb.at, %bb.as, %bb.ar, %.split136.us.i
  %i.it = tail call ptr @__errno_location() #6
  store i32 90, ptr %i.it, align 4
  br label %inet_net_ntop_ipv6.exit

bb.au:                                            ; preds = %decoct.exit.i
  %i.iu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.us-phi137.i) #8
  %i.iv = getelementptr inbounds nuw i8, ptr %.us-phi137.i, i64 %i.iu
  br label %.loopexit.i13.thread

.split.split.1.i.thread:                          ; preds = %.split.split.preheader.i
  %i.iw = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.az) #7
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ix
  br label %.split.split.2.i.thread

.split.split.1.i:                                 ; preds = %.split.split.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 8 uses
  store i8 58, ptr %i.a, align 16
  %.not = icmp eq i32 %i.em, 1
  br i1 %.not, label %.split.split.2.i.thread, label %.split.split.2.i

.split.split.2.i.thread:                          ; preds = %.split.split.1.i, %.split.split.1.i.thread
  %.3.i23 = phi ptr [ %i.iy, %.split.split.1.i.thread ], [ %i.iz, %.split.split.1.i ] ; 2 uses
  store i8 58, ptr %.3.i23, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %.3.i23, i64 1 ; 2 uses
  %i.jb = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ja, ptr noundef nonnull @.str.2, i32 noundef %i.bh) #7
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jc
  br label %.split.split.3.i.thread

.split.split.2.i:                                 ; preds = %.split.split.1.i
  %i.je = icmp samesign ugt i32 %i.em, 2
  br i1 %i.je, label %.split.split.3.i, label %.split.split.3.i.thread

.split.split.3.i.thread:                          ; preds = %.split.split.2.i, %.split.split.2.i.thread
  %.3.1.i25 = phi ptr [ %i.jd, %.split.split.2.i.thread ], [ %i.iz, %.split.split.2.i ] ; 2 uses
  store i8 58, ptr %.3.1.i25, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.3.1.i25, i64 1 ; 2 uses
  %i.jg = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.jf, ptr noundef nonnull @.str.2, i32 noundef %i.bp) #7
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh
  br label %.split.split.4.i.thread

.split.split.3.i:                                 ; preds = %.split.split.2.i
  %.not38 = icmp eq i32 %i.em, 3
  br i1 %.not38, label %.split.split.4.i.thread, label %.split.split.4.i

.split.split.4.i.thread:                          ; preds = %.split.split.3.i, %.split.split.3.i.thread
  %.3.2.i27 = phi ptr [ %i.ji, %.split.split.3.i.thread ], [ %i.iz, %.split.split.3.i ] ; 2 uses
  store i8 58, ptr %.3.2.i27, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.3.2.i27, i64 1 ; 2 uses
  %i.jk = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.jj, ptr noundef nonnull @.str.2, i32 noundef %i.bx) #7
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  br label %.split.split.5.i.thread

.split.split.4.i:                                 ; preds = %.split.split.3.i
  %i.jn = icmp samesign ugt i32 %i.em, 4
  br i1 %i.jn, label %.split.split.5.i, label %.split.split.5.i.thread

.split.split.5.i.thread:                          ; preds = %.split.split.4.i, %.split.split.4.i.thread
  %.3.3.i29 = phi ptr [ %i.jm, %.split.split.4.i.thread ], [ %i.iz, %.split.split.4.i ] ; 2 uses
  store i8 58, ptr %.3.3.i29, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.3.3.i29, i64 1 ; 2 uses
  %i.jp = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.jo, ptr noundef nonnull @.str.2, i32 noundef %i.cf) #7
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jq
  br label %.split.split.6.i.thread

.split.split.5.i:                                 ; preds = %.split.split.4.i
  %.not39 = icmp eq i32 %i.em, 5
  br i1 %.not39, label %.split.split.6.i.thread, label %.split.split.6.i

.split.split.6.i.thread:                          ; preds = %.split.split.5.i, %.split.split.5.i.thread
  %.3.4.i31 = phi ptr [ %i.jr, %.split.split.5.i.thread ], [ %i.iz, %.split.split.5.i ] ; 2 uses
  store i8 58, ptr %.3.4.i31, align 1
  %i.js = getelementptr inbounds nuw i8, ptr %.3.4.i31, i64 1 ; 2 uses
  %i.jt = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.js, ptr noundef nonnull @.str.2, i32 noundef %i.cn) #7
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ju
  br label %bb.av

.split.split.6.i:                                 ; preds = %.split.split.5.i
  %i.jw = icmp samesign ugt i32 %i.em, 6
  br i1 %i.jw, label %.split.split.7.i, label %bb.av

bb.av:                                            ; preds = %.split.split.6.i.thread, %.split.split.6.i
  %.3.5.i33 = phi ptr [ %i.jv, %.split.split.6.i.thread ], [ %i.iz, %.split.split.6.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.3.5.i33, i64 1 ; 3 uses
  store i8 58, ptr %.3.5.i33, align 1
  %i.jy = icmp ne i32 %i.dd, 1
  %or.cond10.6.i = select i1 %i.eo, i1 %i.jy, i1 false
  %i.jz = icmp eq i32 %i.cn, 65535
  %or.cond13.6.i = select i1 %i.ep, i1 %i.jz, i1 false
  %or.cond358.i = select i1 %or.cond10.6.i, i1 true, i1 %or.cond13.6.i
  br i1 %or.cond358.i, label %.split136.us.i, label %.split.split.7.i.thread

.split.split.7.i.thread:                          ; preds = %bb.av
  %i.ka = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.jx, ptr noundef nonnull @.str.2, i32 noundef %i.cv) #7
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kb
  br label %.thread.7.i

.split.split.7.i:                                 ; preds = %.split.split.6.i
  %.not40 = icmp eq i32 %i.em, 7
  br i1 %.not40, label %.thread.7.i, label %.loopexit.i13

.thread.7.i:                                      ; preds = %.split.split.7.i.thread, %.split.split.7.i
  %.3.6.i35 = phi ptr [ %i.kc, %.split.split.7.i.thread ], [ %i.iz, %.split.split.7.i ] ; 2 uses
  store i8 58, ptr %.3.6.i35, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.3.6.i35, i64 1 ; 2 uses
  %i.ke = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.kd, ptr noundef nonnull @.str.2, i32 noundef %i.dd) #7
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kf
  br label %.loopexit.i13.thread

.loopexit.i13:                                    ; preds = %.split.split.7.i, %.split.split.us.split.1.i, %bb.aq, %bb.ap, %.thread.us.7.i
  %.4.i = phi ptr [ %i.iz, %.split.split.7.i ], [ %i.he, %.split.split.us.split.1.i ], [ %i.gz, %.thread.us.7.i ], [ %i.hb, %bb.aq ], [ %.3.us.6.i, %bb.ap ] ; 3 uses
  %i.kh = icmp eq i32 %i.em, 8
  %or.cond100.i = and i1 %.not88.i, %i.kh
  br i1 %or.cond100.i, label %bb.aw, label %.loopexit.i13.thread

bb.aw:                                            ; preds = %.loopexit.i13
  %i.ki = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 58, ptr %.4.i, align 1
  br label %.loopexit.i13.thread

.loopexit.i13.thread:                             ; preds = %bb.au, %.thread.7.i, %bb.aw, %.loopexit.i13
  %.5.i = phi ptr [ %i.ki, %bb.aw ], [ %.4.i, %.loopexit.i13 ], [ %i.kg, %.thread.7.i ], [ %i.iv, %bb.au ] ; 5 uses
  store i8 0, ptr %.5.i, align 1
  switch i32 %2, label %bb.ax [
    i32 -1, label %bb.ay
    i32 128, label %bb.ay
  ]

bb.ax:                                            ; preds = %.loopexit.i13.thread
  %i.kj = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.5.i, ptr noundef nonnull @.str.1, i32 noundef %2) #7
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.kk
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit.i13.thread, %.loopexit.i13.thread
  %.6.i = phi ptr [ %i.kl, %bb.ax ], [ %.5.i, %.loopexit.i13.thread ], [ %.5.i, %.loopexit.i13.thread ]
  %i.km = ptrtoint ptr %.6.i to i64
  %i.kn = ptrtoint ptr %i.a to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = icmp ugt i64 %i.ko, %4
  br i1 %i.kp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.kq = tail call ptr @__errno_location() #6
  store i32 90, ptr %i.kq, align 4
  br label %inet_net_ntop_ipv6.exit

bb.ba:                                            ; preds = %bb.ay
  %i.kr = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.a) #7 ; 0 uses
  br label %inet_net_ntop_ipv6.exit

inet_net_ntop_ipv6.exit:                          ; preds = %bb.n, %.thread112.i, %bb.az, %bb.ba
  %.186.i = phi ptr [ null, %bb.n ], [ null, %bb.az ], [ %3, %bb.ba ], [ null, %.thread112.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %inet_net_ntop_ipv4.exit

bb.bb:                                            ; preds = %bb.a
  %i.ks = tail call ptr @__errno_location() #6
  store i32 97, ptr %i.ks, align 4
  br label %inet_net_ntop_ipv4.exit

inet_net_ntop_ipv4.exit:                          ; preds = %.loopexit.i, %bb.l, %bb.j, %bb.c, %bb.bb, %inet_net_ntop_ipv6.exit
  %.0 = phi ptr [ null, %bb.bb ], [ %.186.i, %inet_net_ntop_ipv6.exit ], [ null, %bb.c ], [ null, %.loopexit.i ], [ %3, %bb.l ], [ %3, %bb.j ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
