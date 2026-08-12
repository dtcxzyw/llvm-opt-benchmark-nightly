loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSBGST\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b8 = internal global double 0.000000e+00, align 8
@c_b9 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4
@c_b20 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsbgst_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef captures(none) initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 45 uses
  %i.b = alloca i32, align 4                      ; 28 uses
  %i.c = alloca i32, align 4                      ; 73 uses
  %i.d = alloca i32, align 4                      ; 65 uses
  %i.e = alloca double, align 8                   ; 10 uses
  %i.f = alloca i32, align 4                      ; 67 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca i32, align 4                      ; 38 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = alloca i32, align 4                      ; 120 uses
  %i.k = alloca double, align 8                   ; 22 uses
  %i.l = alloca i32, align 4                      ; 23 uses
  %i.m = alloca i32, align 4                      ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.n = load i32, ptr %6, align 4, !tbaa !8      ; 105 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64                  ; 6 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %i.o ; 204 uses
  %i.q = load i32, ptr %8, align 4, !tbaa !8      ; 13 uses
  %narrow2639 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow2639 to i64              ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %7, i64 %i.r ; 37 uses
  %i.t = load i32, ptr %10, align 4, !tbaa !8     ; 25 uses
  %narrow2646 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow2646 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %9, i64 %i.u ; 24 uses
  %i.w = getelementptr inbounds i8, ptr %11, i64 -8 ; 199 uses
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.y = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.fr = freeze i32 %i.y
  %i.z = load i32, ptr %3, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !8
  %i.ab = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 11 uses
  store i32 0, ptr %12, align 4, !tbaa !8
  %.not = icmp eq i32 %i.x, 0                     ; 15 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not2640 = icmp eq i32 %i.ad, 0
  br i1 %.not2640, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not2641 = icmp eq i32 %.fr, 0                 ; 4 uses
  br i1 %.not2641, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %.not2642 = icmp eq i32 %i.ae, 0
  br i1 %.not2642, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load i32, ptr %2, align 4, !tbaa !8     ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !8     ; 3 uses
  %or.cond2756 = icmp ugt i32 %i.aj, %i.ah
  br i1 %or.cond2756, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %6, align 4, !tbaa !8     ; 2 uses
  %.not2643 = icmp sgt i32 %i.ak, %i.ah
  br i1 %.not2643, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %8, align 4, !tbaa !8
  %.not2644 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not2644, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %10, align 4, !tbaa !8    ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ugt i32 %i.af, 1
  %i.ap = icmp samesign ult i32 %i.am, %i.af
  %spec.select = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %spec.select, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pr = load i32, ptr %12, align 4, !tbaa !8     ; 2 uses
  %.not2645 = icmp eq i32 %.pr, 0
  br i1 %.not2645, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sink4173 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -4, %bb.f ], [ -7, %bb.h ], [ -9, %bb.i ], [ -5, %bb.g ], [ -3, %bb.e ], [ -11, %bb.l ], [ -11, %bb.j ] ; 2 uses
  store i32 %.sink4173, ptr %12, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.aq = phi i32 [ %.pr, %bb.m ], [ %.sink4173, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %i.aq
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !8
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit2877

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i32 %i.af, 0
  br i1 %i.at, label %.loopexit2877, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = mul nsw i32 %i.aa, %i.ak
  store i32 %i.au, ptr %i.f, align 4, !tbaa !8
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %9, ptr noundef nonnull %10) #4
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  %.pre3785 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi i32 [ %.pre3785, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %bb.p ], [ %i.af, %bb.o ] ; 3 uses
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sdiv i32 %i.ax, 2                       ; 72 uses
  %i.az = add nsw i32 %i.aw, 1
  %i.ba = add nsw i32 %i.ay, 1                    ; 15 uses
  %i.bb = sext i32 %i.n to i64                    ; 25 uses
  %i.bc = sext i32 %i.q to i64                    ; 14 uses
  %i.bd = sext i32 %i.ay to i64                   ; 16 uses
  %.0255729803501 = add i32 %i.n, -1
  %.0255729803502 = add i32 %i.n, -1              ; 11 uses
  %i.be = shl nsw i64 %i.o, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.be
  %i.bf = add nsw i64 %i.be, 8                    ; 2 uses
  %scevgep4279.a = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = shl nsw i64 %i.r, 3                     ; 2 uses
  %scevgep4283.a = getelementptr i8, ptr %7, i64 %i.bg
  %i.bh = add i32 %i.ab, 1
  %13 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4285.a = getelementptr i8, ptr %13, i64 8
  %scevgep4287.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4289 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bi = add i32 %i.ab, 1
  %14 = shl nsw i64 %i.o, 3                       ; 4 uses
  %scevgep4338.a = getelementptr i8, ptr %5, i64 %14
  %15 = add nsw i64 %14, 8                        ; 4 uses
  %scevgep4341.a = getelementptr i8, ptr %5, i64 %15
  %16 = shl nsw i64 %i.r, 3                       ; 3 uses
  %scevgep4343.a = getelementptr i8, ptr %7, i64 %16
  %17 = add i32 %i.ab, 1
  %18 = add nsw i64 %16, 8                        ; 2 uses
  %scevgep4345.a = getelementptr i8, ptr %7, i64 %18
  %scevgep4347.a = getelementptr i8, ptr %7, i64 %16
  %scevgep4349 = getelementptr i8, ptr %7, i64 %18
  %scevgep4352.a = getelementptr i8, ptr %5, i64 %14
  %scevgep4354 = getelementptr i8, ptr %5, i64 %15
  %scevgep4356 = getelementptr i8, ptr %5, i64 %14
  %scevgep4358 = getelementptr i8, ptr %5, i64 %15
  %scevgep4361 = getelementptr i8, ptr %5, i64 %15
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3787.a = phi i32 [ %.pre3787.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bj = phi i32 [ %i.bve, %.loopexit2884 ], [ %i.av, %bb.q ] ; 10 uses
  %.02605.ph = phi i32 [ %.126062773, %.loopexit2884 ], [ %i.az, %bb.q ] ; 33 uses
  %.02547.ph = phi i32 [ %.125482776, %.loopexit2884 ], [ undef, %bb.q ]
  %.02542.ph = phi i32 [ %.125432779, %.loopexit2884 ], [ undef, %bb.q ]
  %.02538.ph = phi i32 [ %.125392782, %.loopexit2884 ], [ undef, %bb.q ]
  %.02532.ph = phi i32 [ %.025322916, %.loopexit2884 ], [ 1, %bb.q ]
  %.not26472935 = icmp eq i32 %.02532.ph, 0
  %.pre3786 = load i32, ptr %3, align 4, !tbaa !8 ; 9 uses
  br i1 %.not26472935, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer2886
  %i.bk = add i32 %.02605.ph, -1                  ; 43 uses
  %i.bl = add i32 %.02605.ph, -2                  ; 16 uses
  %i.bm = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl) ; 9 uses
  store i32 %i.bm, ptr %i.l, align 4, !tbaa !8
  %i.bn = add i32 %.pre3786, %i.bk                ; 2 uses
  %i.bo = call i32 @llvm.smin.i32(i32 %.pre3787.a, i32 %i.bn) ; 16 uses
  %i.bp = sub i32 %i.bk, %i.bm                    ; 13 uses
  %i.bq = load i32, ptr %i.j, align 4, !tbaa !8   ; 22 uses
  %i.br = add nsw i32 %i.bp, %i.bq                ; 4 uses
  %.not2651 = icmp sgt i32 %.02605.ph, %i.ba
  br i1 %.not2651, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 %.pre3787.a, ptr %i.a, align 4, !tbaa !8
  %.neg.le = sub nsw i32 1, %.02605.ph            ; 5 uses
  %i.bs = mul i32 %i.bk, %i.q                     ; 7 uses
  %.not26533001 = icmp sgt i32 %i.bk, %i.bo       ; 4 uses
  br i1 %.not2641, label %bb.bo, label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bt = icmp eq i32 %.pre3786, 0
  store i32 %.pre3787.a, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !8
  br i1 %i.bt, label %.loopexit2888, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.outer2886
  %.02547.lcssa = phi i32 [ %.02547.ph, %.outer2886 ], [ %i.ay, %.lr.ph.split ] ; 3 uses
  %.02542.lcssa = phi i32 [ %.02542.ph, %.outer2886 ], [ %i.bo, %.lr.ph.split ] ; 3 uses
  %.02538.lcssa = phi i32 [ %.02538.ph, %.outer2886 ], [ %i.br, %.lr.ph.split ] ; 3 uses
  %i.bu = add nsw i32 %.pre3786, %.02605.ph       ; 3 uses
  %.not2648 = icmp slt i32 %i.bu, %.pre3787.a
  br i1 %.not2648, label %bb.r, label %.loopexit2888

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not2641, label %bb.bx, label %bb.ab

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.bv = add i32 %i.bs, %i.ac                    ; 7 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9 ; 13 uses
  br i1 %.not26533001, label %._crit_edge2954, label %.lr.ph2953

.lr.ph2953:                                       ; preds = %bb.s
  %i.bz = zext i32 %i.bk to i64                   ; 2 uses
  %i.ca = add i32 %i.bo, 1                        ; 2 uses
  %i.cb = xor i32 %i.bo, 2
  %i.cc = sub i32 %i.cb, %.02605.ph
  %i.cd = sub i32 %i.ca, %.02605.ph
  %xtraiter = and i32 %i.cc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2953, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bz, %.lr.ph2953 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2953 ]
  %i.ce = trunc i64 %indvars.iv.prol to i32
  %i.cf = sub i32 %i.bk, %i.ce
  %i.cg = trunc i64 %indvars.iv.prol to i32
  %i.ch = mul i32 %i.n, %i.cg
  %i.ci = add i32 %i.cf, %i.ch
  %i.cj = add i32 %i.ci, %i.bq
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fdiv double %i.cm, %i.by
  store double %i.cn, ptr %i.cl, align 8, !tbaa !9
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2953
  %indvars.iv.unr = phi i64 [ %i.bz, %.lr.ph2953 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.co = icmp ult i32 %i.cd, 3
  br i1 %i.co, label %._crit_edge2954, label %.lr.ph2953.new

.lr.ph2953.new:                                   ; preds = %.prol.loopexit, %.lr.ph2953.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2953.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cp = trunc i64 %indvars.iv to i32
  %i.cq = sub i32 %i.bk, %i.cp
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = mul i32 %i.n, %i.cr
  %i.ct = add i32 %i.cq, %i.cs
  %i.cu = add i32 %i.ct, %i.bq
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !9
  %i.cy = fdiv double %i.cx, %i.by
  store double %i.cy, ptr %i.cw, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = trunc i64 %indvars.iv.next to i32
  %i.da = sub i32 %i.bk, %i.cz
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = mul i32 %i.n, %i.db
  %i.dd = add i32 %i.da, %i.dc
  %i.de = add i32 %i.dd, %i.bq
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !9
  %i.di = fdiv double %i.dh, %i.by
  store double %i.di, ptr %i.dg, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dj = trunc i64 %indvars.iv.next.1 to i32
  %i.dk = sub i32 %i.bk, %i.dj
  %i.dl = trunc i64 %indvars.iv.next.1 to i32
  %i.dm = mul i32 %i.n, %i.dl
  %i.dn = add i32 %i.dk, %i.dm
  %i.do = add i32 %i.dn, %i.bq
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dp ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !9
  %i.ds = fdiv double %i.dr, %i.by
  store double %i.ds, ptr %i.dq, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dt = trunc i64 %indvars.iv.next.2 to i32
  %i.du = sub i32 %i.bk, %i.dt
  %i.dv = trunc i64 %indvars.iv.next.2 to i32
  %i.dw = mul i32 %i.n, %i.dv
  %i.dx = add i32 %i.du, %i.dw
  %i.dy = add i32 %i.dx, %i.bq
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !9
  %i.ec = fdiv double %i.eb, %i.by
  store double %i.ec, ptr %i.ea, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.ca, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2954, label %.lr.ph2953.new, !llvm.loop !13

._crit_edge2954:                                  ; preds = %.prol.loopexit, %.lr.ph2953.new, %bb.s
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.ed = sub nsw i32 %i.bk, %.pre3786            ; 4 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !8
  store i32 %i.bk, ptr %i.c, align 4, !tbaa !8
  %i.ee = call i32 @llvm.smax.i32(i32 %i.ed, i32 1) ; 13 uses
  %.not2676.not2955 = icmp slt i32 %i.ee, %.02605.ph
  br i1 %.not2676.not2955, label %iter.check4425, label %._crit_edge2959

iter.check4425:                                   ; preds = %._crit_edge2954
  %i.ef = mul nsw i32 %i.bk, %i.n                 ; 2 uses
  %i.eg = add i32 %i.ef, %.neg.le
  %invariant.op = add i32 %i.eg, %i.bq            ; 7 uses
  %i.eh = zext nneg i32 %i.ee to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.ei = sub nsw i64 %wide.trip.count, %i.eh     ; 7 uses
  %min.iters.check4407 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check4407, label %vec.epilog.scalar.ph4426.preheader, label %vector.scevcheck4405

vector.scevcheck4405:                             ; preds = %iter.check4425
  %i.ej = xor i64 %i.eh, -1
  %i.ek = add nsw i64 %i.ej, %wide.trip.count     ; 2 uses
  %i.el = add i32 %i.bq, 1
  %i.em = add i32 %i.el, %i.ee
  %i.en = add i32 %i.em, %i.ef
  %i.eo = sub i32 %i.en, %.02605.ph               ; 2 uses
  %i.ep = trunc i64 %i.ek to i32
  %i.eq = add i32 %i.eo, %i.ep
  %i.er = icmp slt i32 %i.eq, %i.eo
  %i.es = icmp ugt i64 %i.ek, 4294967295
  %i.et = or i1 %i.er, %i.es
  br i1 %i.et, label %vec.epilog.scalar.ph4426.preheader, label %vector.main.loop.iter.check4408

vector.main.loop.iter.check4408:                  ; preds = %vector.scevcheck4405
  %min.iters.check4409 = icmp ult i64 %i.ei, 16
  br i1 %min.iters.check4409, label %vec.epilog.ph4429, label %vector.ph4410

vector.ph4410:                                    ; preds = %vector.main.loop.iter.check4408
  %i.eu = and i64 %i.ei, 12
  %n.vec4411 = and i64 %i.ei, -16                 ; 4 uses
  %i.ev = add nsw i64 %n.vec4411, %i.eh
  %broadcast.splatinsert4412 = insertelement <4 x double> poison, double %i.by, i64 0
  %broadcast.splat4413 = shufflevector <4 x double> %broadcast.splatinsert4412, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4756 = add i32 %i.ee, %invariant.op
  br label %vector.body4414

vector.body4414:                                  ; preds = %vector.body4414, %vector.ph4410
  %index4415 = phi i64 [ 0, %vector.ph4410 ], [ %index.next4420, %vector.body4414 ] ; 2 uses
  %i.ew = trunc i64 %index4415 to i32
  %.reass4757 = add i32 %i.ew, %invariant.op4756
  %i.ex = sext i32 %.reass4757 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %wide.load4416 = load <4 x double>, ptr %i.ey, align 8, !tbaa !9
  %wide.load4417 = load <4 x double>, ptr %i.ez, align 8, !tbaa !9
  %wide.load4418 = load <4 x double>, ptr %i.fa, align 8, !tbaa !9
  %wide.load4419 = load <4 x double>, ptr %i.fb, align 8, !tbaa !9
  %i.fc = fdiv <4 x double> %wide.load4416, %broadcast.splat4413
  %i.fd = fdiv <4 x double> %wide.load4417, %broadcast.splat4413
  %i.fe = fdiv <4 x double> %wide.load4418, %broadcast.splat4413
  %i.ff = fdiv <4 x double> %wide.load4419, %broadcast.splat4413
  store <4 x double> %i.fc, ptr %i.ey, align 8, !tbaa !9
  store <4 x double> %i.fd, ptr %i.ez, align 8, !tbaa !9
  store <4 x double> %i.fe, ptr %i.fa, align 8, !tbaa !9
  store <4 x double> %i.ff, ptr %i.fb, align 8, !tbaa !9
  %index.next4420 = add nuw i64 %index4415, 16    ; 2 uses
  %i.fg = icmp eq i64 %index.next4420, %n.vec4411
  br i1 %i.fg, label %middle.block4421, label %vector.body4414, !llvm.loop !15

middle.block4421:                                 ; preds = %vector.body4414
  %cmp.n4422 = icmp eq i64 %i.ei, %n.vec4411
  br i1 %cmp.n4422, label %._crit_edge2959, label %vec.epilog.iter.check4427

vec.epilog.iter.check4427:                        ; preds = %middle.block4421
  %min.epilog.iters.check4428 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check4428, label %vec.epilog.scalar.ph4426.preheader, label %vec.epilog.ph4429, !prof !18

vec.epilog.ph4429:                                ; preds = %vector.main.loop.iter.check4408, %vec.epilog.iter.check4427
  %vec.epilog.resume.val4423 = phi i64 [ %n.vec4411, %vec.epilog.iter.check4427 ], [ 0, %vector.main.loop.iter.check4408 ]
  %n.vec4430 = and i64 %i.ei, -4                  ; 3 uses
  %i.fh = add nsw i64 %n.vec4430, %i.eh
  %broadcast.splatinsert4431 = insertelement <4 x double> poison, double %i.by, i64 0
  %broadcast.splat4432 = shufflevector <4 x double> %broadcast.splatinsert4431, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4758 = add i32 %i.ee, %invariant.op
  br label %vec.epilog.vector.body4433

vec.epilog.vector.body4433:                       ; preds = %vec.epilog.vector.body4433, %vec.epilog.ph4429
  %index4434 = phi i64 [ %vec.epilog.resume.val4423, %vec.epilog.ph4429 ], [ %index.next4436, %vec.epilog.vector.body4433 ] ; 2 uses
  %i.fi = trunc i64 %index4434 to i32
  %.reass4759 = add i32 %i.fi, %invariant.op4758
  %i.fj = sext i32 %.reass4759 to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fj ; 2 uses
  %wide.load4435 = load <4 x double>, ptr %i.fk, align 8, !tbaa !9
  %i.fl = fdiv <4 x double> %wide.load4435, %broadcast.splat4432
  store <4 x double> %i.fl, ptr %i.fk, align 8, !tbaa !9
  %index.next4436 = add nuw i64 %index4434, 4     ; 2 uses
  %i.fm = icmp eq i64 %index.next4436, %n.vec4430
  br i1 %i.fm, label %vec.epilog.middle.block4437, label %vec.epilog.vector.body4433, !llvm.loop !19

vec.epilog.middle.block4437:                      ; preds = %vec.epilog.vector.body4433
  %cmp.n4438 = icmp eq i64 %i.ei, %n.vec4430
  br i1 %cmp.n4438, label %._crit_edge2959, label %vec.epilog.scalar.ph4426.preheader

vec.epilog.scalar.ph4426.preheader:               ; preds = %vector.scevcheck4405, %iter.check4425, %vec.epilog.iter.check4427, %vec.epilog.middle.block4437
  %indvars.iv3551.ph = phi i64 [ %i.eh, %iter.check4425 ], [ %i.eh, %vector.scevcheck4405 ], [ %i.ev, %vec.epilog.iter.check4427 ], [ %i.fh, %vec.epilog.middle.block4437 ] ; 4 uses
  %i.fn = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4694 = and i64 %i.fn, 3                ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %vec.epilog.scalar.ph4426.prol.loopexit, label %vec.epilog.scalar.ph4426.prol

vec.epilog.scalar.ph4426.prol:                    ; preds = %vec.epilog.scalar.ph4426.preheader, %vec.epilog.scalar.ph4426.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4426.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4426.preheader ] ; 2 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %vec.epilog.scalar.ph4426.prol ], [ 0, %vec.epilog.scalar.ph4426.preheader ]
  %i.fo = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fo
  %i.fp = sext i32 %.reass.prol to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9
  %i.fs = fdiv double %i.fr, %i.by
  store double %i.fs, ptr %i.fq, align 8, !tbaa !9
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %vec.epilog.scalar.ph4426.prol.loopexit, label %vec.epilog.scalar.ph4426.prol, !llvm.loop !20

vec.epilog.scalar.ph4426.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4426.prol, %vec.epilog.scalar.ph4426.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4426.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4426.prol ]
  %i.ft = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %._crit_edge2959, label %vec.epilog.scalar.ph4426.preheader.new

vec.epilog.scalar.ph4426.preheader.new:           ; preds = %vec.epilog.scalar.ph4426.prol.loopexit
  %invariant.op4760 = add i32 1, %invariant.op
  %invariant.op4761.a = add i32 2, %invariant.op
  %invariant.op4762 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4426

vec.epilog.scalar.ph4426:                         ; preds = %vec.epilog.scalar.ph4426, %vec.epilog.scalar.ph4426.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4426.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4426 ] ; 5 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.fv
  %i.fw = sext i32 %.reass to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !9
  %i.fz = fdiv double %i.fy, %i.by
  store double %i.fz, ptr %i.fx, align 8, !tbaa !9
  %i.ga = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.ga, %invariant.op4760
  %i.gb = sext i32 %.reass.1.reass to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gb ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !9
  %i.ge = fdiv double %i.gd, %i.by
  store double %i.ge, ptr %i.gc, align 8, !tbaa !9
  %i.gf = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gf, %invariant.op4761.a
  %i.gg = sext i32 %.reass.2.reass to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gg ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9
  %i.gj = fdiv double %i.gi, %i.by
  store double %i.gj, ptr %i.gh, align 8, !tbaa !9
  %i.gk = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gk, %invariant.op4762
  %i.gl = sext i32 %.reass.3.reass to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = fdiv double %i.gn, %i.by
  store double %i.go, ptr %i.gm, align 8, !tbaa !9
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4426, !llvm.loop !21

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4426.prol.loopexit, %vec.epilog.scalar.ph4426, %middle.block4421, %vec.epilog.middle.block4437, %._crit_edge2954
  %.not26772979 = icmp sgt i32 %i.bp, %i.bl
  br i1 %.not26772979, label %bb.u, label %.lr.ph2983

.lr.ph2983:                                       ; preds = %._crit_edge2959
  %i.gp = mul i32 %i.bk, %i.n                     ; 6 uses
  %i.gq = add i32 %i.bq, %i.gp                    ; 6 uses
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr [8 x i8], ptr %i.p, i64 %i.gr ; 5 uses
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !8
  %i.gt = xor i32 %i.bm, -1
  %i.gu = add i32 %i.bk, %i.gt                    ; 3 uses
  store i32 %i.gu, ptr %i.d, align 4, !tbaa !8
  %.not26972969 = icmp sgt i32 %i.ee, %i.gu
  %i.gv = add i32 %.neg.le, %i.ac
  %invariant.op2985 = add i32 %i.bs, %i.gv
  %i.gw = add i32 %i.gp, %.neg.le
  %invariant.op2974 = add i32 %i.gw, %i.bq        ; 3 uses
  %19 = sext i32 %i.bp to i64                     ; 6 uses
  %i.gx = sub i32 %.02605.ph, %i.bm
  %i.gy = zext nneg i32 %i.ee to i64              ; 10 uses
  %i.gz = zext i32 %i.gu to i64                   ; 4 uses
  %i.ha = call i64 @llvm.usub.sat.i64(i64 %i.gz, i64 %i.gy)
  %i.hb = add i32 %i.bq, %i.ee
  %20 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl)
  %21 = xor i32 %20, -1
  %22 = add i32 %.02605.ph, %21
  %i.hc = mul i32 %.0255729803502, %22
  %i.hd = add i32 %i.hb, %i.hc
  %i.he = add i32 %i.bq, 1
  %i.hf = add i32 %i.he, %i.ee
  %i.hg = add i32 %i.hf, %i.gp
  %i.hh = sub i32 %i.hg, %.02605.ph               ; 2 uses
  %i.hi = add i32 %i.bq, %i.ee
  %23 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl) ; 2 uses
  %24 = xor i32 %23, -1
  %25 = add i32 %.02605.ph, %24
  %i.hj = mul i32 %.0255729803502, %25
  %i.hk = add i32 %i.hi, %i.hj
  %umax4280 = call i64 @llvm.umax.i64(i64 %i.gy, i64 %i.gz)
  %i.hl = shl nuw nsw i64 %umax4280, 3            ; 2 uses
  %i.hm = shl nuw nsw i64 %i.gy, 3                ; 2 uses
  %i.hn = sub nsw i64 %i.hl, %i.hm
  %scevgep4281.a = getelementptr i8, ptr %scevgep4279.a, i64 %i.hn
  %i.ho = add i32 %i.bh, %i.bs
  %i.hp = sub i32 %i.ho, %23
  %i.hq = add i32 %i.bq, 1
  %i.hr = add i32 %i.hq, %i.ee
  %i.hs = add i32 %i.hr, %i.gp
  %i.ht = sub i32 %i.hs, %.02605.ph
  %i.hu = sext i32 %i.ht to i64
  %i.hv = shl nsw i64 %i.hu, 3                    ; 2 uses
  %scevgep4288 = getelementptr i8, ptr %scevgep4287.a, i64 %i.hv
  %i.hw = add nsw i64 %i.hl, %i.hv
  %i.hx = sub nsw i64 %i.hw, %i.hm
  %scevgep4290 = getelementptr i8, ptr %scevgep4289, i64 %i.hx
  %umax4295 = call i64 @llvm.umax.i64(i64 %i.gy, i64 %i.gz)
  %i.hy = add nuw nsw i64 %umax4295, 1
  %i.hz = sub nsw i64 %i.hy, %i.gy                ; 7 uses
  %26 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl) ; 5 uses
  %27 = sub i32 %26, %i.bm
  %i.ia = add i32 %.02605.ph, -1                  ; 2 uses
  %i.ib = add i32 %i.ia, %i.bq
  %28 = sub i32 %i.ia, %26
  %29 = mul i32 %.0255729803502, %28
  %i.ic = add i32 %i.ib, %29
  %i.id = sub i32 %i.ic, %26
  %i.ie = add i32 %i.bi, %i.bs
  %i.if = sub i32 %i.ie, %26                      ; 2 uses
  %i.ig = add i32 %i.bq, %i.gp
  %i.ih = sub i32 %i.ig, %26                      ; 2 uses
  %i.ii = add i32 %.02605.ph, -1                  ; 2 uses
  %i.ij = add i32 %i.ii, %i.bq
  %30 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl) ; 5 uses
  %31 = sub i32 %i.ii, %30
  %32 = mul i32 %.0255729803502, %31
  %i.ik = add i32 %i.ij, %32
  %33 = sub i32 %i.ik, %30
  %i.il = sub i32 %30, %i.bm
  %i.im = add i32 %17, %i.bs
  %i.in = sub i32 %i.im, %30                      ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.io, 3                    ; 2 uses
  %scevgep4348 = getelementptr i8, ptr %scevgep4347.a, i64 %i.ip
  %scevgep4350.a = getelementptr i8, ptr %scevgep4349, i64 %i.ip
  %i.iq = add i32 %i.bq, %i.gp
  %i.ir = sub i32 %i.iq, %30                      ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep4357 = getelementptr i8, ptr %scevgep4356, i64 %i.it
  %scevgep4359 = getelementptr i8, ptr %scevgep4358, i64 %i.it
  %i.iu = shl nsw i64 %i.gr, 3
  %scevgep4362 = getelementptr i8, ptr %scevgep4361, i64 %i.iu
  %34 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl)
  %35 = sub i32 %34, %i.bm
  %min.iters.check4297 = icmp ult i64 %i.hz, 4
  %i.iv = trunc nuw i64 %i.ha to i32              ; 2 uses
  %i.iw = add i32 %i.hh, %i.iv
  %i.ix = icmp slt i32 %i.iw, %i.hh
  %min.iters.check4299 = icmp ult i64 %i.hz, 16
  %i.iy = and i64 %i.hz, 12
  %n.vec4301 = and i64 %i.hz, -16                 ; 4 uses
  %i.iz = add nsw i64 %n.vec4301, %i.gy
  %cmp.n4316 = icmp eq i64 %i.hz, %n.vec4301
  %min.epilog.iters.check4322 = icmp eq i64 %i.iy, 0
  %n.vec4324 = and i64 %i.hz, -4                  ; 3 uses
  %i.ja = add nsw i64 %n.vec4324, %i.gy
  %cmp.n4333 = icmp eq i64 %i.hz, %n.vec4324
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph2983, %._crit_edge2973
  %indvar = phi i32 [ 0, %.lr.ph2983 ], [ %indvar.next, %._crit_edge2973 ] ; 12 uses
  %indvars.iv3565 = phi i64 [ %19, %.lr.ph2983 ], [ %indvars.iv.next3566, %._crit_edge2973 ] ; 5 uses
  %indvars.iv3558 = phi i32 [ %i.gx, %.lr.ph2983 ], [ %indvars.iv.next3559, %._crit_edge2973 ] ; 3 uses
  %36 = add i32 %i.bp, %indvar
  %i.jb = add i32 %35, %indvar                    ; 2 uses
  %37 = zext i32 %i.jb to i64
  %i.jc = add nuw nsw i64 %37, 1                  ; 2 uses
  %i.jd = mul i32 %.0255729803502, %indvar
  %i.je = add i32 %33, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  %scevgep4340 = getelementptr i8, ptr %scevgep4338.a, i64 %i.jg ; 5 uses
  %38 = add i32 %i.il, %indvar
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3                    ; 3 uses
  %i.jh = getelementptr i8, ptr %scevgep4341.a, i64 %i.jg
  %scevgep4342 = getelementptr i8, ptr %i.jh, i64 %40 ; 5 uses
  %i.ji = add i32 %i.in, %indvar
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 3                    ; 2 uses
  %scevgep4344.a = getelementptr i8, ptr %scevgep4343.a, i64 %i.jk
  %scevgep4346.a = getelementptr i8, ptr %scevgep4345.a, i64 %i.jk
  %scevgep4351 = getelementptr i8, ptr %scevgep4350.a, i64 %40
  %i.jl = add i32 %i.ir, %indvar
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 3                    ; 2 uses
  %scevgep4353.a = getelementptr i8, ptr %scevgep4352.a, i64 %i.jn
  %scevgep4355 = getelementptr i8, ptr %scevgep4354, i64 %i.jn
  %scevgep4360 = getelementptr i8, ptr %scevgep4359, i64 %40
  %i.jo = add i32 %27, %indvar                    ; 3 uses
  %41 = mul i32 %.0255729803502, %indvar
  %42 = add i32 %i.id, %41                        ; 2 uses
  %43 = mul i32 %.0255729803502, %indvar
  %i.jp = add i32 %i.hk, %43
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 3                    ; 2 uses
  %scevgep4278 = getelementptr i8, ptr %scevgep, i64 %i.jr ; 2 uses
  %scevgep4282 = getelementptr i8, ptr %scevgep4281.a, i64 %i.jr ; 2 uses
  %i.js = add i32 %i.hp, %indvar
  %44 = sext i32 %i.js to i64
  %45 = shl nsw i64 %44, 3                        ; 2 uses
  %scevgep4284 = getelementptr i8, ptr %scevgep4283.a, i64 %45
  %scevgep4286 = getelementptr i8, ptr %scevgep4285.a, i64 %45
  %46 = mul i32 %.0255729803502, %indvar
  %i.jt = add i32 %i.hd, %46                      ; 2 uses
  %.not26952960 = icmp slt i64 %indvars.iv3565, %19
  br i1 %.not26952960, label %._crit_edge2964, label %.lr.ph2963

.lr.ph2963:                                       ; preds = %bb.t
  %47 = trunc nsw i64 %indvars.iv3565 to i32
  %48 = mul i32 %.0255729803501, %47
  %invariant.op2965 = add i32 %48, %i.bq          ; 4 uses
  %49 = trunc i64 %indvars.iv3565 to i32
  %50 = sub i32 %49, %i.bk                        ; 2 uses
  %51 = add i32 %i.gq, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %52 ; 4 uses
  %54 = add i32 %i.bv, %50
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %i.s, i64 %55 ; 4 uses
  %min.iters.check4384 = icmp ult i32 %i.jb, 7
  br i1 %min.iters.check4384, label %scalar.ph4383.preheader, label %vector.scevcheck4335

vector.scevcheck4335:                             ; preds = %.lr.ph2963
  %i.ju = add i32 %42, %i.jo
  %i.jv = icmp slt i32 %i.ju, %42
  %i.jw = add i32 %i.if, %i.jo
  %i.jx = icmp slt i32 %i.jw, %i.if
  %i.jy = add i32 %i.ih, %i.jo
  %i.jz = icmp slt i32 %i.jy, %i.ih
  %i.ka = or i1 %i.jv, %i.jx
  %i.kb = or i1 %i.ka, %i.jz
  br i1 %i.kb, label %scalar.ph4383.preheader, label %vector.memcheck4337

vector.memcheck4337:                              ; preds = %vector.scevcheck4335
  %bound04363.a = icmp ult ptr %scevgep4340, %scevgep4346.a
  %bound14364.a = icmp ult ptr %scevgep4344.a, %scevgep4342
  %found.conflict4365.a = and i1 %bound04363.a, %bound14364.a
  %bound04366 = icmp ult ptr %scevgep4340, %scevgep4351
  %bound14367 = icmp ult ptr %scevgep4348, %scevgep4342
  %found.conflict4368 = and i1 %bound04366, %bound14367
  %conflict.rdx4369 = or i1 %found.conflict4365.a, %found.conflict4368
  %bound04370 = icmp ult ptr %scevgep4340, %scevgep4355
  %bound14371 = icmp ult ptr %scevgep4353.a, %scevgep4342
  %found.conflict4372 = and i1 %bound04370, %bound14371
  %conflict.rdx4373 = or i1 %conflict.rdx4369, %found.conflict4372
  %bound04374 = icmp ult ptr %scevgep4340, %scevgep4360
  %bound14375 = icmp ult ptr %scevgep4357, %scevgep4342
  %found.conflict4376 = and i1 %bound04374, %bound14375
  %conflict.rdx4377 = or i1 %conflict.rdx4373, %found.conflict4376
  %bound04378 = icmp ult ptr %scevgep4340, %scevgep4362
  %bound14379 = icmp ult ptr %i.gs, %scevgep4342
  %found.conflict4380 = and i1 %bound04378, %bound14379
  %conflict.rdx4381 = or i1 %conflict.rdx4377, %found.conflict4380
  br i1 %conflict.rdx4381, label %scalar.ph4383.preheader, label %vector.ph4385

vector.ph4385:                                    ; preds = %vector.memcheck4337
  %n.vec4386 = and i64 %i.jc, 8589934584          ; 3 uses
  %i.kc = add nsw i64 %n.vec4386, %19
  %i.kd = load double, ptr %53, align 8, !tbaa !9, !alias.scope !22
  %broadcast.splatinsert4395 = insertelement <4 x double> poison, double %i.kd, i64 0
  %broadcast.splat4396 = shufflevector <4 x double> %broadcast.splatinsert4395, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ke = load double, ptr %56, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert4387 = insertelement <4 x double> poison, double %i.ke, i64 0
  %broadcast.splat4388 = shufflevector <4 x double> %broadcast.splatinsert4387, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kf = fneg <4 x double> %broadcast.splat4388  ; 2 uses
  %i.kg = load double, ptr %i.gs, align 8, !tbaa !9, !alias.scope !27
  %broadcast.splatinsert4399 = insertelement <4 x double> poison, double %i.kg, i64 0
  %broadcast.splat4400 = shufflevector <4 x double> %broadcast.splatinsert4399, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4389

vector.body4389:                                  ; preds = %vector.body4389, %vector.ph4385
  %index4390 = phi i64 [ 0, %vector.ph4385 ], [ %index.next4401, %vector.body4389 ] ; 2 uses
  %i.kh = trunc i64 %index4390 to i32
  %i.ki = add i32 %i.bp, %i.kh                    ; 2 uses
  %i.kj = add i32 %invariant.op2965, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kk ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32 ; 2 uses
  %wide.load4391 = load <4 x double>, ptr %i.kl, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load4392 = load <4 x double>, ptr %i.km, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %i.kn = sub i32 %i.ki, %i.bk                    ; 2 uses
  %i.ko = add i32 %i.bv, %i.kn
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %wide.load4393 = load <4 x double>, ptr %i.kq, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %wide.load4394 = load <4 x double>, ptr %i.kr, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %i.ks = fneg <4 x double> %wide.load4393
  %i.kt = fneg <4 x double> %wide.load4394
  %i.ku = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ks, <4 x double> %broadcast.splat4396, <4 x double> %wide.load4391)
  %i.kv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kt, <4 x double> %broadcast.splat4396, <4 x double> %wide.load4392)
  %i.kw = add i32 %i.gq, %i.kn
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %wide.load4397 = load <4 x double>, ptr %i.ky, align 8, !tbaa !9, !alias.scope !35
  %wide.load4398 = load <4 x double>, ptr %i.kz, align 8, !tbaa !9, !alias.scope !35
  %i.la = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kf, <4 x double> %wide.load4397, <4 x double> %i.ku)
  %i.lb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kf, <4 x double> %wide.load4398, <4 x double> %i.kv)
  %i.lc = fmul <4 x double> %wide.load4393, %broadcast.splat4400
  %i.ld = fmul <4 x double> %wide.load4394, %broadcast.splat4400
  %i.le = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lc, <4 x double> %broadcast.splat4388, <4 x double> %i.la)
  %i.lf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %broadcast.splat4388, <4 x double> %i.lb)
  store <4 x double> %i.le, ptr %i.kl, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  store <4 x double> %i.lf, ptr %i.km, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next4401 = add nuw i64 %index4390, 8     ; 2 uses
  %i.lg = icmp eq i64 %index.next4401, %n.vec4386
  br i1 %i.lg, label %middle.block4402, label %vector.body4389, !llvm.loop !36

middle.block4402:                                 ; preds = %vector.body4389
  %cmp.n4403 = icmp eq i64 %i.jc, %n.vec4386
  br i1 %cmp.n4403, label %._crit_edge2964, label %scalar.ph4383.preheader

scalar.ph4383.preheader:                          ; preds = %vector.memcheck4337, %vector.scevcheck4335, %.lr.ph2963, %middle.block4402
  %indvars.iv3555.ph = phi i64 [ %19, %vector.memcheck4337 ], [ %19, %vector.scevcheck4335 ], [ %19, %.lr.ph2963 ], [ %i.kc, %middle.block4402 ] ; 5 uses
  %i.lh = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.li = sub i32 %indvars.iv3558, %i.lh
  %xtraiter4697 = and i32 %i.li, 1
  %lcmp.mod4698.not = icmp eq i32 %xtraiter4697, 0
  br i1 %lcmp.mod4698.not, label %scalar.ph4383.prol.loopexit, label %scalar.ph4383.prol

scalar.ph4383.prol:                               ; preds = %scalar.ph4383.preheader
  %i.lj = trunc nsw i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.lj
  %i.lk = sext i32 %.reass2966.prol to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lk ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !9
  %i.ln = trunc i64 %indvars.iv3555.ph to i32
  %i.lo = sub i32 %i.ln, %i.bk                    ; 2 uses
  %i.lp = add i32 %i.bv, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !9 ; 2 uses
  %i.lt = load double, ptr %53, align 8, !tbaa !9
  %i.lu = fneg double %i.ls
  %i.lv = call double @llvm.fmuladd.f64(double %i.lu, double %i.lt, double %i.lm)
  %i.lw = load double, ptr %56, align 8, !tbaa !9 ; 2 uses
  %i.lx = add i32 %i.gq, %i.lo
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !9
  %i.mb = fneg double %i.lw
  %i.mc = call double @llvm.fmuladd.f64(double %i.mb, double %i.ma, double %i.lv)
  %i.md = load double, ptr %i.gs, align 8, !tbaa !9
  %i.me = fmul double %i.ls, %i.md
  %i.mf = call double @llvm.fmuladd.f64(double %i.me, double %i.lw, double %i.mc)
  store double %i.mf, ptr %i.ll, align 8, !tbaa !9
  %indvars.iv.next3556.prol = add nsw i64 %indvars.iv3555.ph, 1
  br label %scalar.ph4383.prol.loopexit

scalar.ph4383.prol.loopexit:                      ; preds = %scalar.ph4383.prol, %scalar.ph4383.preheader
  %indvars.iv3555.unr = phi i64 [ %indvars.iv3555.ph, %scalar.ph4383.preheader ], [ %indvars.iv.next3556.prol, %scalar.ph4383.prol ]
  %i.mg = icmp eq i32 %36, %i.lh
  br i1 %i.mg, label %._crit_edge2964, label %scalar.ph4383

scalar.ph4383:                                    ; preds = %scalar.ph4383.prol.loopexit, %scalar.ph4383
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556.1, %scalar.ph4383 ], [ %indvars.iv3555.unr, %scalar.ph4383.prol.loopexit ] ; 4 uses
  %i.mh = trunc nsw i64 %indvars.iv3555 to i32
  %.reass2966 = add i32 %invariant.op2965, %i.mh
  %i.mi = sext i32 %.reass2966 to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mi ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !9
  %i.ml = trunc i64 %indvars.iv3555 to i32
  %i.mm = sub i32 %i.ml, %i.bk                    ; 2 uses
  %i.mn = add i32 %i.bv, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mo
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !9 ; 2 uses
  %i.mr = load double, ptr %53, align 8, !tbaa !9
  %i.ms = fneg double %i.mq
  %i.mt = call double @llvm.fmuladd.f64(double %i.ms, double %i.mr, double %i.mk)
  %i.mu = load double, ptr %56, align 8, !tbaa !9 ; 2 uses
  %i.mv = add i32 %i.gq, %i.mm
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !9
  %i.mz = fneg double %i.mu
  %i.na = call double @llvm.fmuladd.f64(double %i.mz, double %i.my, double %i.mt)
  %i.nb = load double, ptr %i.gs, align 8, !tbaa !9
  %i.nc = fmul double %i.mq, %i.nb
  %i.nd = call double @llvm.fmuladd.f64(double %i.nc, double %i.mu, double %i.na)
  store double %i.nd, ptr %i.mj, align 8, !tbaa !9
  %indvars.iv.next3556 = add nsw i64 %indvars.iv3555, 1 ; 2 uses
  %i.ne = trunc nsw i64 %indvars.iv.next3556 to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.ne
  %i.nf = sext i32 %.reass2966.1 to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nf ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !9
  %i.ni = trunc i64 %indvars.iv.next3556 to i32
  %i.nj = sub i32 %i.ni, %i.bk                    ; 2 uses
  %i.nk = add i32 %i.bv, %i.nj
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !9 ; 2 uses
  %i.no = load double, ptr %53, align 8, !tbaa !9
  %i.np = fneg double %i.nn
  %i.nq = call double @llvm.fmuladd.f64(double %i.np, double %i.no, double %i.nh)
  %i.nr = load double, ptr %56, align 8, !tbaa !9 ; 2 uses
  %i.ns = add i32 %i.gq, %i.nj
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nt
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !9
  %i.nw = fneg double %i.nr
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %i.nv, double %i.nq)
  %i.ny = load double, ptr %i.gs, align 8, !tbaa !9
  %i.nz = fmul double %i.nn, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.nz, double %i.nr, double %i.nx)
  store double %i.oa, ptr %i.ng, align 8, !tbaa !9
  %indvars.iv.next3556.1 = add nsw i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4383, !llvm.loop !37

._crit_edge2964:                                  ; preds = %scalar.ph4383.prol.loopexit, %scalar.ph4383, %middle.block4402, %bb.t
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4319

iter.check4319:                                   ; preds = %._crit_edge2964
  %i.ob = trunc nsw i64 %indvars.iv3565 to i32    ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985, %i.ob
  %i.oc = sext i32 %.reass2968.reass to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oc ; 3 uses
  %i.oe = mul i32 %.0255729803502, %i.ob
  %invariant.op2976 = add i32 %i.oe, %i.bq        ; 3 uses
  br i1 %min.iters.check4297, label %vec.epilog.scalar.ph4320.preheader, label %vector.scevcheck4274

vector.scevcheck4274:                             ; preds = %iter.check4319
  %i.of = add i32 %i.jt, %i.iv
  %i.og = icmp slt i32 %i.of, %i.jt
  %i.oh = or i1 %i.og, %i.ix
  br i1 %i.oh, label %vec.epilog.scalar.ph4320.preheader, label %vector.memcheck4276

vector.memcheck4276:                              ; preds = %vector.scevcheck4274
  %bound0 = icmp ult ptr %scevgep4278, %scevgep4286
  %bound1 = icmp ult ptr %scevgep4284, %scevgep4282
  %found.conflict = and i1 %bound0, %bound1
  %bound04291 = icmp ult ptr %scevgep4278, %scevgep4290
  %bound14292 = icmp ult ptr %scevgep4288, %scevgep4282
  %found.conflict4293 = and i1 %bound04291, %bound14292
  %conflict.rdx4294 = or i1 %found.conflict, %found.conflict4293
  br i1 %conflict.rdx4294, label %vec.epilog.scalar.ph4320.preheader, label %vector.main.loop.iter.check4298

vector.main.loop.iter.check4298:                  ; preds = %vector.memcheck4276
  br i1 %min.iters.check4299, label %vec.epilog.ph4323, label %vector.ph4300

vector.ph4300:                                    ; preds = %vector.main.loop.iter.check4298
  %i.oi = load double, ptr %i.od, align 8, !tbaa !9, !alias.scope !38
  %.scalar = fneg double %i.oi
  %i.oj = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.ok = shufflevector <4 x double> %i.oj, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4304

vector.body4304:                                  ; preds = %vector.body4304, %vector.ph4300
  %index4305 = phi i64 [ 0, %vector.ph4300 ], [ %index.next4314, %vector.body4304 ] ; 2 uses
  %i.ol = trunc i64 %index4305 to i32
  %i.om = add i32 %i.ee, %i.ol                    ; 2 uses
  %i.on = add i32 %invariant.op2974, %i.om
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.oo ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 64
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 96
  %wide.load4306.a = load <4 x double>, ptr %i.op, align 8, !tbaa !9, !alias.scope !41
  %wide.load4307.a = load <4 x double>, ptr %i.oq, align 8, !tbaa !9, !alias.scope !41
  %wide.load4308.a = load <4 x double>, ptr %i.or, align 8, !tbaa !9, !alias.scope !41
  %wide.load4309.a = load <4 x double>, ptr %i.os, align 8, !tbaa !9, !alias.scope !41
  %i.ot = add i32 %invariant.op2976, %i.om
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ou ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 64 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 96 ; 2 uses
  %wide.load4310.a = load <4 x double>, ptr %i.ov, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4311 = load <4 x double>, ptr %i.ow, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4312 = load <4 x double>, ptr %i.ox, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4313 = load <4 x double>, ptr %i.oy, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.oz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ok, <4 x double> %wide.load4306.a, <4 x double> %wide.load4310.a)
  %i.pa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ok, <4 x double> %wide.load4307.a, <4 x double> %wide.load4311)
  %i.pb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ok, <4 x double> %wide.load4308.a, <4 x double> %wide.load4312)
  %i.pc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ok, <4 x double> %wide.load4309.a, <4 x double> %wide.load4313)
  store <4 x double> %i.oz, ptr %i.ov, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pa, ptr %i.ow, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pb, ptr %i.ox, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pc, ptr %i.oy, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4314 = add nuw i64 %index4305, 16    ; 2 uses
  %i.pd = icmp eq i64 %index.next4314, %n.vec4301
  br i1 %i.pd, label %middle.block4315, label %vector.body4304, !llvm.loop !46

middle.block4315:                                 ; preds = %vector.body4304
  br i1 %cmp.n4316, label %._crit_edge2973, label %vec.epilog.iter.check4321

vec.epilog.iter.check4321:                        ; preds = %middle.block4315
  br i1 %min.epilog.iters.check4322, label %vec.epilog.scalar.ph4320.preheader, label %vec.epilog.ph4323, !prof !18

vec.epilog.ph4323:                                ; preds = %vector.main.loop.iter.check4298, %vec.epilog.iter.check4321
  %vec.epilog.resume.val4317 = phi i64 [ %n.vec4301, %vec.epilog.iter.check4321 ], [ 0, %vector.main.loop.iter.check4298 ]
  %i.pe = load double, ptr %i.od, align 8, !tbaa !9, !alias.scope !38
  %.scalar4679 = fneg double %i.pe
  %i.pf = insertelement <4 x double> poison, double %.scalar4679, i64 0
  %i.pg = shufflevector <4 x double> %i.pf, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4327

vec.epilog.vector.body4327:                       ; preds = %vec.epilog.vector.body4327, %vec.epilog.ph4323
  %index4328 = phi i64 [ %vec.epilog.resume.val4317, %vec.epilog.ph4323 ], [ %index.next4331, %vec.epilog.vector.body4327 ] ; 2 uses
  %i.ph = trunc i64 %index4328 to i32
  %i.pi = add i32 %i.ee, %i.ph                    ; 2 uses
  %i.pj = add i32 %invariant.op2974, %i.pi
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pk
  %wide.load4329 = load <4 x double>, ptr %i.pl, align 8, !tbaa !9, !alias.scope !41
  %i.pm = add i32 %invariant.op2976, %i.pi
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pn ; 2 uses
  %wide.load4330 = load <4 x double>, ptr %i.po, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.pp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pg, <4 x double> %wide.load4329, <4 x double> %wide.load4330)
  store <4 x double> %i.pp, ptr %i.po, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4331 = add nuw i64 %index4328, 4     ; 2 uses
  %i.pq = icmp eq i64 %index.next4331, %n.vec4324
  br i1 %i.pq, label %vec.epilog.middle.block4332, label %vec.epilog.vector.body4327, !llvm.loop !47

vec.epilog.middle.block4332:                      ; preds = %vec.epilog.vector.body4327
  br i1 %cmp.n4333, label %._crit_edge2973, label %vec.epilog.scalar.ph4320.preheader

vec.epilog.scalar.ph4320.preheader:               ; preds = %vector.memcheck4276, %vector.scevcheck4274, %iter.check4319, %vec.epilog.iter.check4321, %vec.epilog.middle.block4332
  %indvars.iv3562.ph = phi i64 [ %i.gy, %iter.check4319 ], [ %i.gy, %vector.scevcheck4274 ], [ %i.gy, %vector.memcheck4276 ], [ %i.iz, %vec.epilog.iter.check4321 ], [ %i.ja, %vec.epilog.middle.block4332 ]
  br label %vec.epilog.scalar.ph4320

vec.epilog.scalar.ph4320:                         ; preds = %vec.epilog.scalar.ph4320.preheader, %vec.epilog.scalar.ph4320
  %indvars.iv3562 = phi i64 [ %indvars.iv.next3563, %vec.epilog.scalar.ph4320 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4320.preheader ] ; 3 uses
  %i.pr = load double, ptr %i.od, align 8, !tbaa !9
  %i.ps = trunc nuw nsw i64 %indvars.iv3562 to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.ps
  %i.pt = sext i32 %.reass2975 to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pt
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !9
  %.reass2977 = add i32 %invariant.op2976, %i.ps
  %i.pw = sext i32 %.reass2977 to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pw ; 2 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !9
  %i.pz = fneg double %i.pr
  %i.qa = call double @llvm.fmuladd.f64(double %i.pz, double %i.pv, double %i.py)
  store double %i.qa, ptr %i.px, align 8, !tbaa !9
  %indvars.iv.next3563 = add nuw nsw i64 %indvars.iv3562, 1
  %.not2697.not = icmp samesign ult i64 %indvars.iv3562, %i.gz
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4320, label %._crit_edge2973, !llvm.loop !48

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4320, %middle.block4315, %vec.epilog.middle.block4332, %._crit_edge2964
  %indvars.iv.next3566 = add nsw i64 %indvars.iv3565, 1 ; 2 uses
  %indvars.iv.next3559 = add i32 %indvars.iv3558, 1
  %lftr.wideiv3568 = trunc i64 %indvars.iv.next3566 to i32
  %exitcond3569.not = icmp eq i32 %i.bk, %lftr.wideiv3568
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond3569.not, label %._crit_edge2984, label %bb.t, !llvm.loop !49

._crit_edge2984:                                  ; preds = %._crit_edge2973
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge2984, %._crit_edge2959
  br i1 %.not26533001, label %bb.x, label %.lr.ph2998

.lr.ph2998:                                       ; preds = %bb.u
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !8
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !8
  %i.qb = add i32 %.neg.le, %i.ac
  %i.qc = add i32 %i.qb, %i.bs
  %i.qd = sext i32 %i.bl to i64
  %i.qe = zext i32 %i.bk to i64
  %i.qf = add i32 %i.bo, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2998, %._crit_edge2990
  %indvars.iv3574 = phi i64 [ %i.qe, %.lr.ph2998 ], [ %indvars.iv.next3575, %._crit_edge2990 ] ; 4 uses
  %indvars.iv3570 = phi i32 [ %i.ed, %.lr.ph2998 ], [ %indvars.iv.next3571, %._crit_edge2990 ] ; 2 uses
  %.42585.neg2996 = phi i32 [ %.neg.le, %.lr.ph2998 ], [ %.42585.neg, %._crit_edge2990 ] ; 2 uses
  %i.qg = trunc i64 %indvars.iv3574 to i32
  %i.qh = sub i32 %i.qg, %.pre3786                ; 2 uses
  %i.qi = call i32 @llvm.smax.i32(i32 %i.qh, i32 %i.bp)
  %.not26942986 = icmp sgt i32 %i.qi, %i.bl
  br i1 %.not26942986, label %._crit_edge2990, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.v
  %i.qj = call i32 @llvm.smax.i32(i32 %indvars.iv3570, i32 %i.bp)
  %smax = sext i32 %i.qj to i64
  %i.qk = add i32 %.42585.neg2996, %i.bk
  %i.ql = trunc i64 %indvars.iv3574 to i32
  %i.qm = mul i32 %i.n, %i.ql                     ; 2 uses
  %i.qn = add i32 %i.qk, %i.qm
  %i.qo = add i32 %i.qn, %i.bq
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qp
  %i.qr = add i32 %i.qm, %.42585.neg2996
  %invariant.op2991 = add i32 %i.qr, %i.bq
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph2989, %bb.w
  %indvars.iv3572 = phi i64 [ %smax, %.lr.ph2989 ], [ %indvars.iv.next3573, %bb.w ] ; 3 uses
  %i.qs = trunc nsw i64 %indvars.iv3572 to i32    ; 2 uses
  %i.qt = add i32 %i.qc, %i.qs
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.qu
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !9
  %i.qx = load double, ptr %i.qq, align 8, !tbaa !9
  %.reass2992 = add i32 %invariant.op2991, %i.qs
  %i.qy = sext i32 %.reass2992 to i64
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qy ; 2 uses
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !9
  %i.rb = fneg double %i.qw
  %i.rc = call double @llvm.fmuladd.f64(double %i.rb, double %i.qx, double %i.ra)
  store double %i.rc, ptr %i.qz, align 8, !tbaa !9
  %indvars.iv.next3573 = add nsw i64 %indvars.iv3572, 1
  %.not2694.not = icmp slt i64 %indvars.iv3572, %i.qd
  br i1 %.not2694.not, label %bb.w, label %._crit_edge2990, !llvm.loop !50

._crit_edge2990:                                  ; preds = %bb.w, %bb.v
  %indvars.iv.next3575 = add i64 %indvars.iv3574, 1 ; 2 uses
  %i.rd = trunc i64 %indvars.iv3574 to i32
  %.42585.neg = xor i32 %i.rd, -1
  %indvars.iv.next3571 = add i32 %indvars.iv3570, 1
  %lftr.wideiv3577 = trunc i64 %indvars.iv.next3575 to i32
  %exitcond3578.not = icmp eq i32 %i.qf, %lftr.wideiv3577
  br i1 %exitcond3578.not, label %._crit_edge2999, label %bb.v, !llvm.loop !51

._crit_edge2999:                                  ; preds = %._crit_edge2990
  store i32 %i.qh, ptr %i.d, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge2999, %bb.u
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.re = sub nsw i32 %.pre3787.a, %i.ay
  store i32 %i.re, ptr %i.c, align 4, !tbaa !8
  %i.rf = fdiv double 1.000000e+00, %i.by
  store double %i.rf, ptr %i.e, align 8, !tbaa !9
  %i.rg = mul nsw i32 %i.bk, %i.t
  %i.rh = add nsw i32 %i.rg, %i.ba
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ri ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.rj, ptr noundef nonnull @c__1) #4
  %i.rk = load i32, ptr %i.l, align 4, !tbaa !8   ; 3 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.rm = load i32, ptr %2, align 4, !tbaa !8
  %i.rn = sub nsw i32 %i.rm, %i.ay
  store i32 %i.rn, ptr %i.c, align 4, !tbaa !8
  %i.ro = sub i32 %i.bv, %i.rk
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.rp
  %i.rr = sub nsw i32 %i.bk, %i.rk
  %i.rs = mul nsw i32 %i.rr, %i.t
  %i.rt = add nsw i32 %i.rs, %i.ba
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ru
  call void @dger_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.rj, ptr noundef nonnull @c__1, ptr noundef %i.rq, ptr noundef nonnull @c__1, ptr noundef %i.rv, ptr noundef nonnull %10) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.rw = sub i32 %i.bk, %i.bo
  %i.rx = load i32, ptr %i.j, align 4, !tbaa !8
  %i.ry = mul nsw i32 %i.bo, %i.n
  %i.rz = add i32 %i.rw, %i.ry
  %i.sa = add i32 %i.rz, %i.rx
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sb
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !9
  store double %i.sd, ptr %i.k, align 8, !tbaa !9
  %.pre3847.a = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %bb.aa
  %i.se = phi i32 [ %.pre3847.a, %bb.aa ], [ %i.bj, %bb.r ] ; 2 uses
  %.025322917 = phi i32 [ 1, %bb.aa ], [ 0, %bb.r ] ; 7 uses
  %.not26472913 = phi i1 [ false, %bb.aa ], [ true, %bb.r ] ; 5 uses
  %.1260627722796 = phi i32 [ %i.bk, %bb.aa ], [ %i.bu, %bb.r ] ; 19 uses
  %.1254827752794 = phi i32 [ %i.bl, %bb.aa ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327782792 = phi i32 [ %i.bo, %bb.aa ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927812790 = phi i32 [ %i.br, %bb.aa ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.sf = add nsw i32 %i.se, -1
  store i32 %i.sf, ptr %i.c, align 4, !tbaa !8
  %.not26793063 = icmp slt i32 %i.se, 2
  br i1 %.not26793063, label %._crit_edge3068, label %.lr.ph3067

.lr.ph3067:                                       ; preds = %bb.ab
  %i.sg = mul nsw i32 %.1260627722796, %i.q
  %i.sh = add i32 %i.sg, %i.ac
  %i.si = add i32 %.1260627722796, 1
  %i.sj = sext i32 %.1260627722796 to i64
  %i.sk = sext i32 %.1254827752794 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph3067, %.loopexit2883
  %indvars.iv3619 = phi i64 [ 1, %.lr.ph3067 ], [ %indvars.iv.next3620, %.loopexit2883 ] ; 7 uses
  %indvars.iv3617 = phi i64 [ -1, %.lr.ph3067 ], [ %indvars.iv.next3618, %.loopexit2883 ] ; 4 uses
  %.pre3848 = load i32, ptr %2, align 4, !tbaa !8 ; 4 uses
  %.pre3849 = load i32, ptr %3, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26472913, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sl = sub nsw i64 %i.sj, %indvars.iv3619      ; 3 uses
  %i.sm = trunc nsw i64 %i.sl to i32              ; 2 uses
  %i.sn = add nsw i32 %.pre3849, %i.sm            ; 3 uses
  %i.so = icmp slt i32 %i.sn, %.pre3848
  %i.sp = icmp sgt i64 %i.sl, 1
  %or.cond2757 = and i1 %i.sp, %i.so
  br i1 %or.cond2757, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.sq = mul nsw i32 %i.sn, %i.n
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv3619
  %i.st = getelementptr i8, ptr %i.ss, i64 8
  %i.su = getelementptr [8 x i8], ptr %i.st, i64 %i.sr
  %i.sv = trunc nuw nsw i64 %indvars.iv3619 to i32
  %i.sw = add i32 %i.ay, %i.sv
  %i.sx = sub i32 %.1260627722796, %i.sw          ; 2 uses
  %i.sy = add i32 %i.sx, %.pre3849
  %i.sz = add i32 %i.sy, %.pre3848
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ta
  %i.tc = sub nsw i32 %i.sn, %i.ay
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.td
  call void @dlartg_(ptr noundef %i.su, ptr noundef nonnull %i.k, ptr noundef nonnull %i.tb, ptr noundef nonnull %i.te, ptr noundef nonnull %i.g) #4
  %i.tf = trunc nsw i64 %indvars.iv3617 to i32
  %i.tg = add i32 %i.sh, %i.tf
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.th
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !9
  %i.tk = fneg double %i.tj
  %i.tl = load double, ptr %i.k, align 8, !tbaa !9
  %i.tm = fmul double %i.tl, %i.tk                ; 2 uses
  %i.tn = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.to = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.tp = add i32 %i.sx, %i.tn
  %i.tq = add i32 %i.tp, %i.to
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.tr ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !9
  %i.tu = add nsw i32 %i.to, %i.sm                ; 2 uses
  %i.tv = sub nsw i32 %i.tu, %i.ay
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.tw ; 2 uses
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !9
  %i.tz = mul nsw i32 %i.tu, %i.n
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr [8 x i8], ptr %i.p, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 8      ; 3 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !9
  %i.ue = fneg double %i.ud
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
vec.epilog.iter.check:                            ; preds = %middle.block4263
  %min.epilog.iters.check = icmp eq i64 %i.aou, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4255, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4266 = and i64 %i.aoo, 8589934588         ; 3 uses
  %i.aph = add nuw nsw i64 %n.vec4266, %i.aok
  %broadcast.splatinsert4267 = insertelement <4 x double> poison, double %i.aoh, i64 0
  %broadcast.splat4268 = shufflevector <4 x double> %broadcast.splatinsert4267, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4765 = add i32 %i.bk, %i.aoj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4269 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4271, %vec.epilog.vector.body ] ; 2 uses
  %i.api = trunc i64 %index4269 to i32
  %.reass4766 = add i32 %i.api, %invariant.op4765
  %i.apj = sext i32 %.reass4766 to i64
  %i.apk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apj ; 2 uses
  %wide.load4270 = load <4 x double>, ptr %i.apk, align 8, !tbaa !9
  %i.apl = fdiv <4 x double> %wide.load4270, %broadcast.splat4268
  store <4 x double> %i.apl, ptr %i.apk, align 8, !tbaa !9
  %index.next4271 = add nuw i64 %index4269, 4     ; 2 uses
  %i.apm = icmp eq i64 %index.next4271, %n.vec4266
  br i1 %i.apm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4272 = icmp eq i64 %i.aoo, %n.vec4266
  br i1 %cmp.n4272, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck4250, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3579.ph = phi i64 [ %i.aok, %iter.check ], [ %i.aok, %vector.scevcheck4250 ], [ %i.aov, %vec.epilog.iter.check ], [ %i.aph, %vec.epilog.middle.block ] ; 3 uses
  %i.apn = add i32 %i.bo, 1
  %i.apo = trunc i64 %indvars.iv3579.ph to i32    ; 2 uses
  %i.app = sub i32 %i.apn, %i.apo
  %i.apq = sub i32 %i.bo, %i.apo
  %xtraiter4700 = and i32 %i.app, 3               ; 2 uses
  %lcmp.mod4701.not = icmp eq i32 %xtraiter4700, 0
  br i1 %lcmp.mod4701.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3579.prol = phi i64 [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4702 = phi i32 [ %prol.iter4702.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.apr = trunc i64 %indvars.iv3579.prol to i32
  %i.aps = add i32 %i.aoj, %i.apr
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apt ; 2 uses
  %i.apv = load double, ptr %i.apu, align 8, !tbaa !9
  %i.apw = fdiv double %i.apv, %i.aoh
  store double %i.apw, ptr %i.apu, align 8, !tbaa !9
  %indvars.iv.next3580.prol = add i64 %indvars.iv3579.prol, 1 ; 2 uses
  %prol.iter4702.next = add i32 %prol.iter4702, 1 ; 2 uses
  %prol.iter4702.cmp.not = icmp eq i32 %prol.iter4702.next, %xtraiter4700
  br i1 %prol.iter4702.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !71

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3579.unr = phi i64 [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ]
  %i.apx = icmp ult i32 %i.apq, 3
  br i1 %i.apx, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4767 = add i32 1, %i.aoj
  %invariant.op4769.a = add i32 2, %i.aoj
  %invariant.op4771.a = add i32 3, %i.aoj
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3579 = phi i64 [ %indvars.iv3579.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3580.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.apy = trunc i64 %indvars.iv3579 to i32
  %i.apz = add i32 %i.aoj, %i.apy
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqa ; 2 uses
  %i.aqc = load double, ptr %i.aqb, align 8, !tbaa !9
  %i.aqd = fdiv double %i.aqc, %i.aoh
  store double %i.aqd, ptr %i.aqb, align 8, !tbaa !9
  %i.aqe = trunc i64 %indvars.iv3579 to i32
  %.reass4768 = add i32 %i.aqe, %invariant.op4767
  %i.aqf = sext i32 %.reass4768 to i64
  %i.aqg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqf ; 2 uses
  %i.aqh = load double, ptr %i.aqg, align 8, !tbaa !9
  %i.aqi = fdiv double %i.aqh, %i.aoh
  store double %i.aqi, ptr %i.aqg, align 8, !tbaa !9
  %i.aqj = trunc i64 %indvars.iv3579 to i32
  %.reass4770 = add i32 %i.aqj, %invariant.op4769.a
  %i.aqk = sext i32 %.reass4770 to i64
  %i.aql = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqk ; 2 uses
  %i.aqm = load double, ptr %i.aql, align 8, !tbaa !9
  %i.aqn = fdiv double %i.aqm, %i.aoh
  store double %i.aqn, ptr %i.aql, align 8, !tbaa !9
  %i.aqo = trunc i64 %indvars.iv3579 to i32
  %.reass4772 = add i32 %i.aqo, %invariant.op4771.a
  %i.aqp = sext i32 %.reass4772 to i64
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqp ; 2 uses
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !9
  %i.aqs = fdiv double %i.aqr, %i.aoh
  store double %i.aqs, ptr %i.aqq, align 8, !tbaa !9
  %indvars.iv.next3580.3 = add nsw i64 %indvars.iv3579, 4 ; 2 uses
  %lftr.wideiv3582.3 = trunc i64 %indvars.iv.next3580.3 to i32
  %exitcond3583.not.3 = icmp eq i32 %i.aol, %lftr.wideiv3582.3
  br i1 %exitcond3583.not.3, label %._crit_edge3005, label %vec.epilog.scalar.ph, !llvm.loop !72

._crit_edge3005:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4263, %vec.epilog.middle.block, %bb.bo
  store i32 1, ptr %i.b, align 4, !tbaa !8
  %i.aqt = sub nsw i32 %i.bk, %.pre3786           ; 4 uses
  store i32 %i.aqt, ptr %i.c, align 4, !tbaa !8
  store i32 %i.bk, ptr %i.d, align 4, !tbaa !8
  %i.aqu = call i32 @llvm.smax.i32(i32 %i.aqt, i32 1) ; 4 uses
  %.not2654.not3006 = icmp slt i32 %i.aqu, %.02605.ph
  br i1 %.not2654.not3006, label %.lr.ph3009.preheader, label %._crit_edge3010

.lr.ph3009.preheader:                             ; preds = %._crit_edge3005
  %i.aqv = zext nneg i32 %i.aqu to i64            ; 4 uses
  %wide.trip.count3587 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.aqw = sub nsw i64 %wide.trip.count3587, %i.aqv
  %xtraiter4703 = and i64 %i.aqw, 3               ; 2 uses
  %lcmp.mod4704.not = icmp eq i64 %xtraiter4703, 0
  br i1 %lcmp.mod4704.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol

.lr.ph3009.prol:                                  ; preds = %.lr.ph3009.preheader, %.lr.ph3009.prol
  %indvars.iv3584.prol = phi i64 [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ], [ %i.aqv, %.lr.ph3009.preheader ] ; 3 uses
  %prol.iter4705 = phi i64 [ %prol.iter4705.next, %.lr.ph3009.prol ], [ 0, %.lr.ph3009.preheader ]
  %i.aqx = mul nsw i64 %indvars.iv3584.prol, %i.bb
  %i.aqy = trunc nuw nsw i64 %indvars.iv3584.prol to i32
  %i.aqz = sub i32 %.02605.ph, %i.aqy
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr [8 x i8], ptr %i.p, i64 %i.aqx
  %i.arc = getelementptr [8 x i8], ptr %i.arb, i64 %i.ara ; 2 uses
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !9
  %i.are = fdiv double %i.ard, %i.aoh
  store double %i.are, ptr %i.arc, align 8, !tbaa !9
  %indvars.iv.next3585.prol = add nuw nsw i64 %indvars.iv3584.prol, 1 ; 2 uses
  %prol.iter4705.next = add i64 %prol.iter4705, 1 ; 2 uses
  %prol.iter4705.cmp.not = icmp eq i64 %prol.iter4705.next, %xtraiter4703
  br i1 %prol.iter4705.cmp.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol, !llvm.loop !73

.lr.ph3009.prol.loopexit:                         ; preds = %.lr.ph3009.prol, %.lr.ph3009.preheader
  %indvars.iv3584.unr = phi i64 [ %i.aqv, %.lr.ph3009.preheader ], [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ]
  %i.arf = sub nsw i64 %i.aqv, %wide.trip.count3587
  %i.arg = icmp ugt i64 %i.arf, -4
  br i1 %i.arg, label %._crit_edge3010, label %.lr.ph3009

.lr.ph3009:                                       ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009
  %indvars.iv3584 = phi i64 [ %indvars.iv.next3585.3, %.lr.ph3009 ], [ %indvars.iv3584.unr, %.lr.ph3009.prol.loopexit ] ; 6 uses
  %i.arh = mul nsw i64 %indvars.iv3584, %i.bb
  %i.ari = trunc nuw nsw i64 %indvars.iv3584 to i32
  %i.arj = sub i32 %.02605.ph, %i.ari
  %i.ark = sext i32 %i.arj to i64
  %i.arl = getelementptr [8 x i8], ptr %i.p, i64 %i.arh
  %i.arm = getelementptr [8 x i8], ptr %i.arl, i64 %i.ark ; 2 uses
  %i.arn = load double, ptr %i.arm, align 8, !tbaa !9
  %i.aro = fdiv double %i.arn, %i.aoh
  store double %i.aro, ptr %i.arm, align 8, !tbaa !9
  %indvars.iv.next3585 = add nuw nsw i64 %indvars.iv3584, 1 ; 2 uses
  %i.arp = mul nsw i64 %indvars.iv.next3585, %i.bb
  %i.arq = trunc nuw nsw i64 %indvars.iv.next3585 to i32
  %i.arr = sub i32 %.02605.ph, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr [8 x i8], ptr %i.p, i64 %i.arp
  %i.aru = getelementptr [8 x i8], ptr %i.art, i64 %i.ars ; 2 uses
  %i.arv = load double, ptr %i.aru, align 8, !tbaa !9
  %i.arw = fdiv double %i.arv, %i.aoh
  store double %i.arw, ptr %i.aru, align 8, !tbaa !9
  %indvars.iv.next3585.1 = add nuw nsw i64 %indvars.iv3584, 2 ; 2 uses
  %i.arx = mul nsw i64 %indvars.iv.next3585.1, %i.bb
  %i.ary = trunc nuw nsw i64 %indvars.iv.next3585.1 to i32
  %i.arz = sub i32 %.02605.ph, %i.ary
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr [8 x i8], ptr %i.p, i64 %i.arx
  %i.asc = getelementptr [8 x i8], ptr %i.asb, i64 %i.asa ; 2 uses
  %i.asd = load double, ptr %i.asc, align 8, !tbaa !9
  %i.ase = fdiv double %i.asd, %i.aoh
  store double %i.ase, ptr %i.asc, align 8, !tbaa !9
  %indvars.iv.next3585.2 = add nuw nsw i64 %indvars.iv3584, 3 ; 2 uses
  %i.asf = mul nsw i64 %indvars.iv.next3585.2, %i.bb
  %i.asg = trunc nuw nsw i64 %indvars.iv.next3585.2 to i32
  %i.ash = sub i32 %.02605.ph, %i.asg
  %i.asi = sext i32 %i.ash to i64
  %i.asj = getelementptr [8 x i8], ptr %i.p, i64 %i.asf
  %i.ask = getelementptr [8 x i8], ptr %i.asj, i64 %i.asi ; 2 uses
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !9
  %i.asm = fdiv double %i.asl, %i.aoh
  store double %i.asm, ptr %i.ask, align 8, !tbaa !9
  %indvars.iv.next3585.3 = add nuw nsw i64 %indvars.iv3584, 4 ; 2 uses
  %exitcond3588.not.3 = icmp eq i64 %indvars.iv.next3585.3, %wide.trip.count3587
  br i1 %exitcond3588.not.3, label %._crit_edge3010, label %.lr.ph3009, !llvm.loop !74

._crit_edge3010:                                  ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009, %._crit_edge3005
  %.not26553023 = icmp sgt i32 %i.bp, %i.bl
  br i1 %.not26553023, label %bb.bq, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %._crit_edge3010
  %i.asn = mul nsw i32 %i.bk, %i.n
  %i.aso = sext i32 %i.asn to i64
  %i.asp = getelementptr [8 x i8], ptr %i.p, i64 %i.aso
  %i.asq = getelementptr i8, ptr %i.asp, i64 8    ; 3 uses
  store i32 %i.aqt, ptr %i.c, align 4, !tbaa !8
  %i.asr = xor i32 %i.bm, -1
  %i.ass = add i32 %i.bk, %i.asr                  ; 3 uses
  store i32 %i.ass, ptr %i.a, align 4, !tbaa !8
  %.not26743017 = icmp sgt i32 %i.aqu, %i.ass
  %i.ast = sext i32 %i.bp to i64                  ; 8 uses
  %i.asu = sext i32 %i.bk to i64                  ; 4 uses
  %i.asv = sub i32 %.02605.ph, %i.bm
  %i.asw = zext nneg i32 %i.aqu to i64
  %i.asx = zext nneg i32 %i.ass to i64
  %i.asy = mul nsw i64 %i.ast, %i.bb              ; 2 uses
  %invariant.gep4773 = getelementptr [8 x i8], ptr %i.p, i64 %i.asy
  %i.asz = sub nsw i64 %i.asu, %i.ast
  %i.ata = add nsw i64 %i.asz, 1                  ; 2 uses
  %i.atb = mul nsw i64 %i.ast, %i.bc
  %i.atc = getelementptr [8 x i8], ptr %i.s, i64 %i.ata
  %i.atd = getelementptr [8 x i8], ptr %i.atc, i64 %i.atb
  %i.ate = getelementptr [8 x i8], ptr %i.p, i64 %i.ata
  %i.atf = getelementptr [8 x i8], ptr %i.ate, i64 %i.asy
  %indvars.iv.next3590.prol = add nsw i64 %i.ast, 1
  br label %57

57:                                               ; preds = %.lr.ph3026, %._crit_edge3022
  %indvar4708 = phi i32 [ 0, %.lr.ph3026 ], [ %indvar.next4709, %._crit_edge3022 ] ; 3 uses
  %indvars.iv3599 = phi i64 [ %i.ast, %.lr.ph3026 ], [ %indvars.iv.next3600, %._crit_edge3022 ] ; 10 uses
  %indvars.iv3592 = phi i32 [ %i.asv, %.lr.ph3026 ], [ %indvars.iv.next3593, %._crit_edge3022 ] ; 2 uses
  %.not26723011 = icmp slt i64 %indvars.iv3599, %i.ast
  br i1 %.not26723011, label %._crit_edge3015, label %.lr.ph3014

.lr.ph3014:                                       ; preds = %57
  %i.atg = add i64 %indvars.iv3599, 1             ; 2 uses
  %i.ath = sub nsw i64 %i.asu, %indvars.iv3599
  %i.ati = add nsw i64 %i.ath, 1                  ; 2 uses
  %i.atj = mul nsw i64 %indvars.iv3599, %i.bb
  %i.atk = getelementptr [8 x i8], ptr %i.p, i64 %i.ati
  %i.atl = getelementptr [8 x i8], ptr %i.atk, i64 %i.atj ; 3 uses
  %i.atm = mul nsw i64 %indvars.iv3599, %i.bc
  %i.atn = getelementptr [8 x i8], ptr %i.s, i64 %i.ati
  %i.ato = getelementptr [8 x i8], ptr %i.atn, i64 %i.atm ; 3 uses
  %i.atp = and i32 %indvar4708, 1
  %lcmp.mod4711.not.not = icmp eq i32 %i.atp, 0
  br i1 %lcmp.mod4711.not.not, label %.prol.loopexit4707.unr-lcssa, label %.prol.loopexit4707

.prol.loopexit4707.unr-lcssa:                     ; preds = %.lr.ph3014
  %i.atq = sub i64 %i.atg, %i.ast
  %sext.prol = shl i64 %i.atq, 32
  %i.atr = ashr exact i64 %sext.prol, 29
  %gep4774 = getelementptr i8, ptr %invariant.gep4773, i64 %i.atr ; 2 uses
  %i.ats = load double, ptr %gep4774, align 8, !tbaa !9
  %i.att = load double, ptr %i.atd, align 8, !tbaa !9 ; 2 uses
  %i.atu = load double, ptr %i.atl, align 8, !tbaa !9
  %i.atv = fneg double %i.att
  %i.atw = call double @llvm.fmuladd.f64(double %i.atv, double %i.atu, double %i.ats)
  %i.atx = load double, ptr %i.ato, align 8, !tbaa !9 ; 2 uses
  %i.aty = load double, ptr %i.atf, align 8, !tbaa !9
  %i.atz = fneg double %i.atx
  %i.aua = call double @llvm.fmuladd.f64(double %i.atz, double %i.aty, double %i.atw)
  %i.aub = load double, ptr %i.asq, align 8, !tbaa !9
  %i.auc = fmul double %i.att, %i.aub
  %i.aud = call double @llvm.fmuladd.f64(double %i.auc, double %i.atx, double %i.aua)
  store double %i.aud, ptr %gep4774, align 8, !tbaa !9
  br label %.prol.loopexit4707

.prol.loopexit4707:                               ; preds = %.prol.loopexit4707.unr-lcssa, %.lr.ph3014
  %indvars.iv3589.unr = phi i64 [ %i.ast, %.lr.ph3014 ], [ %indvars.iv.next3590.prol, %.prol.loopexit4707.unr-lcssa ]
  %i.aue = icmp eq i32 %indvar4708, 0
  br i1 %i.aue, label %._crit_edge3015, label %.lr.ph3014.new

.lr.ph3014.new:                                   ; preds = %.prol.loopexit4707, %.lr.ph3014.new
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.1, %.lr.ph3014.new ], [ %indvars.iv3589.unr, %.prol.loopexit4707 ] ; 7 uses
  %i.auf = mul nsw i64 %indvars.iv3589, %i.bb     ; 2 uses
  %i.aug = sub i64 %i.atg, %indvars.iv3589
  %sext = shl i64 %i.aug, 32
  %i.auh = ashr exact i64 %sext, 29
  %i.aui = getelementptr i8, ptr %i.p, i64 %i.auh
  %i.auj = getelementptr [8 x i8], ptr %i.aui, i64 %i.auf ; 2 uses
  %i.auk = load double, ptr %i.auj, align 8, !tbaa !9
  %i.aul = sub nsw i64 %i.asu, %indvars.iv3589
  %i.aum = add nsw i64 %i.aul, 1                  ; 2 uses
  %i.aun = mul nsw i64 %indvars.iv3589, %i.bc
  %i.auo = getelementptr [8 x i8], ptr %i.s, i64 %i.aum
  %i.aup = getelementptr [8 x i8], ptr %i.auo, i64 %i.aun
  %i.auq = load double, ptr %i.aup, align 8, !tbaa !9 ; 2 uses
  %i.aur = load double, ptr %i.atl, align 8, !tbaa !9
  %i.aus = fneg double %i.auq
  %i.aut = call double @llvm.fmuladd.f64(double %i.aus, double %i.aur, double %i.auk)
  %i.auu = load double, ptr %i.ato, align 8, !tbaa !9 ; 2 uses
  %i.auv = getelementptr [8 x i8], ptr %i.p, i64 %i.aum
  %i.auw = getelementptr [8 x i8], ptr %i.auv, i64 %i.auf
  %i.aux = load double, ptr %i.auw, align 8, !tbaa !9
  %i.auy = fneg double %i.auu
  %i.auz = call double @llvm.fmuladd.f64(double %i.auy, double %i.aux, double %i.aut)
  %i.ava = load double, ptr %i.asq, align 8, !tbaa !9
  %i.avb = fmul double %i.auq, %i.ava
  %i.avc = call double @llvm.fmuladd.f64(double %i.avb, double %i.auu, double %i.auz)
  store double %i.avc, ptr %i.auj, align 8, !tbaa !9
  %indvars.iv.next3590 = add nsw i64 %indvars.iv3589, 1 ; 3 uses
  %i.avd = mul nsw i64 %indvars.iv.next3590, %i.bb ; 2 uses
  %i.ave = sub i64 %indvars.iv3599, %indvars.iv3589
  %sext.1 = shl i64 %i.ave, 32
  %i.avf = ashr exact i64 %sext.1, 29
  %i.avg = getelementptr i8, ptr %i.p, i64 %i.avf
  %i.avh = getelementptr [8 x i8], ptr %i.avg, i64 %i.avd ; 2 uses
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !9
  %i.avj = sub nsw i64 %i.asu, %indvars.iv.next3590
  %i.avk = add nsw i64 %i.avj, 1                  ; 2 uses
  %i.avl = mul nsw i64 %indvars.iv.next3590, %i.bc
  %i.avm = getelementptr [8 x i8], ptr %i.s, i64 %i.avk
  %i.avn = getelementptr [8 x i8], ptr %i.avm, i64 %i.avl
  %i.avo = load double, ptr %i.avn, align 8, !tbaa !9 ; 2 uses
  %i.avp = load double, ptr %i.atl, align 8, !tbaa !9
  %i.avq = fneg double %i.avo
  %i.avr = call double @llvm.fmuladd.f64(double %i.avq, double %i.avp, double %i.avi)
  %i.avs = load double, ptr %i.ato, align 8, !tbaa !9 ; 2 uses
  %i.avt = getelementptr [8 x i8], ptr %i.p, i64 %i.avk
  %i.avu = getelementptr [8 x i8], ptr %i.avt, i64 %i.avd
  %i.avv = load double, ptr %i.avu, align 8, !tbaa !9
  %i.avw = fneg double %i.avs
  %i.avx = call double @llvm.fmuladd.f64(double %i.avw, double %i.avv, double %i.avr)
  %i.avy = load double, ptr %i.asq, align 8, !tbaa !9
  %i.avz = fmul double %i.avo, %i.avy
  %i.awa = call double @llvm.fmuladd.f64(double %i.avz, double %i.avs, double %i.avx)
  store double %i.awa, ptr %i.avh, align 8, !tbaa !9
  %indvars.iv.next3590.1 = add nsw i64 %indvars.iv3589, 2 ; 2 uses
  %lftr.wideiv3594.1 = trunc i64 %indvars.iv.next3590.1 to i32
  %exitcond3595.not.1 = icmp eq i32 %indvars.iv3592, %lftr.wideiv3594.1
  br i1 %exitcond3595.not.1, label %._crit_edge3015, label %.lr.ph3014.new, !llvm.loop !75

._crit_edge3015:                                  ; preds = %.prol.loopexit4707, %.lr.ph3014.new, %57
  br i1 %.not26743017, label %._crit_edge3022, label %.lr.ph3021

.lr.ph3021:                                       ; preds = %._crit_edge3015
  %i.awb = mul nsw i64 %indvars.iv3599, %i.bc
  %i.awc = trunc nsw i64 %indvars.iv3599 to i32
  %i.awd = sub i32 %.02605.ph, %i.awc
  %i.awe = sext i32 %i.awd to i64
  %i.awf = getelementptr [8 x i8], ptr %i.s, i64 %i.awb
  %i.awg = getelementptr [8 x i8], ptr %i.awf, i64 %i.awe
  %i.awh = add i64 %indvars.iv3599, 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph3021, %bb.bp
  %indvars.iv3596 = phi i64 [ %i.asw, %.lr.ph3021 ], [ %indvars.iv.next3597, %bb.bp ] ; 5 uses
  %i.awi = load double, ptr %i.awg, align 8, !tbaa !9
  %i.awj = mul nsw i64 %indvars.iv3596, %i.bb     ; 2 uses
  %i.awk = trunc nuw nsw i64 %indvars.iv3596 to i32
  %i.awl = sub i32 %.02605.ph, %i.awk
  %i.awm = sext i32 %i.awl to i64
  %i.awn = getelementptr [8 x i8], ptr %i.p, i64 %i.awj
  %i.awo = getelementptr [8 x i8], ptr %i.awn, i64 %i.awm
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !9
  %i.awq = sub i64 %i.awh, %indvars.iv3596
  %sext4083.a = shl i64 %i.awq, 32
  %i.awr = ashr exact i64 %sext4083.a, 29
  %i.aws = getelementptr i8, ptr %i.p, i64 %i.awr
  %i.awt = getelementptr [8 x i8], ptr %i.aws, i64 %i.awj ; 2 uses
  %i.awu = load double, ptr %i.awt, align 8, !tbaa !9
  %i.awv = fneg double %i.awi
  %i.aww = call double @llvm.fmuladd.f64(double %i.awv, double %i.awp, double %i.awu)
  store double %i.aww, ptr %i.awt, align 8, !tbaa !9
  %indvars.iv.next3597 = add nuw nsw i64 %indvars.iv3596, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3596, %i.asx
  br i1 %.not2674.not, label %bb.bp, label %._crit_edge3022, !llvm.loop !76

._crit_edge3022:                                  ; preds = %bb.bp, %._crit_edge3015
  %indvars.iv.next3600 = add nsw i64 %indvars.iv3599, 1 ; 2 uses
  %indvars.iv.next3593 = add i32 %indvars.iv3592, 1
  %lftr.wideiv3602 = trunc i64 %indvars.iv.next3600 to i32
  %exitcond3603.not = icmp eq i32 %i.bk, %lftr.wideiv3602
  %indvar.next4709 = add i32 %indvar4708, 1
  br i1 %exitcond3603.not, label %._crit_edge3027, label %57, !llvm.loop !77

._crit_edge3027:                                  ; preds = %._crit_edge3022
  store i32 1, ptr %i.b, align 4, !tbaa !8
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge3027, %._crit_edge3010
  br i1 %.not26533001, label %bb.bt, label %.lr.ph3038

.lr.ph3038:                                       ; preds = %bb.bq
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !8
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !8
  %i.awx = mul nsw i32 %i.bk, %i.n
  %reass.sub3503 = sub i32 %i.awx, %.02605.ph
  %i.awy = add i32 %reass.sub3503, 2
  %i.awz = sext i32 %i.bl to i64
  %i.axa = zext i32 %i.bk to i64
  %i.axb = add i32 %i.bo, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3038, %._crit_edge3034
  %indvars.iv3609 = phi i64 [ %i.axa, %.lr.ph3038 ], [ %indvars.iv.next3610, %._crit_edge3034 ] ; 4 uses
  %indvars.iv3604 = phi i32 [ %i.aqt, %.lr.ph3038 ], [ %indvars.iv.next3605, %._crit_edge3034 ] ; 2 uses
  %i.axc = trunc i64 %indvars.iv3609 to i32
  %i.axd = sub i32 %i.axc, %.pre3786              ; 2 uses
  %i.axe = call i32 @llvm.smax.i32(i32 %i.axd, i32 %i.bp)
  %.not26713029 = icmp sgt i32 %i.axe, %i.bl
  br i1 %.not26713029, label %._crit_edge3034, label %.lr.ph3033

.lr.ph3033:                                       ; preds = %bb.br
  %i.axf = call i32 @llvm.smax.i32(i32 %indvars.iv3604, i32 %i.bp)
  %smax3606 = sext i32 %i.axf to i64
  %i.axg = trunc i64 %indvars.iv3609 to i32
  %i.axh = add i32 %i.awy, %i.axg
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.axi
  %i.axk = add i64 %indvars.iv3609, 1
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph3033, %bb.bs
  %indvars.iv3607 = phi i64 [ %smax3606, %.lr.ph3033 ], [ %indvars.iv.next3608, %bb.bs ] ; 6 uses
  %i.axl = mul nsw i64 %indvars.iv3607, %i.bc
  %i.axm = trunc nsw i64 %indvars.iv3607 to i32
  %i.axn = sub i32 %.02605.ph, %i.axm
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr [8 x i8], ptr %i.s, i64 %i.axl
  %i.axq = getelementptr [8 x i8], ptr %i.axp, i64 %i.axo
  %i.axr = load double, ptr %i.axq, align 8, !tbaa !9
  %i.axs = load double, ptr %i.axj, align 8, !tbaa !9
  %i.axt = mul nsw i64 %indvars.iv3607, %i.bb
  %i.axu = sub i64 %i.axk, %indvars.iv3607
  %sext4084 = shl i64 %i.axu, 32
  %i.axv = ashr exact i64 %sext4084, 29
  %i.axw = getelementptr i8, ptr %i.p, i64 %i.axv
  %i.axx = getelementptr [8 x i8], ptr %i.axw, i64 %i.axt ; 2 uses
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !9
  %i.axz = fneg double %i.axr
  %i.aya = call double @llvm.fmuladd.f64(double %i.axz, double %i.axs, double %i.axy)
  store double %i.aya, ptr %i.axx, align 8, !tbaa !9
  %indvars.iv.next3608 = add nsw i64 %indvars.iv3607, 1
  %.not2671.not = icmp slt i64 %indvars.iv3607, %i.awz
  br i1 %.not2671.not, label %bb.bs, label %._crit_edge3034, !llvm.loop !78

._crit_edge3034:                                  ; preds = %bb.bs, %bb.br
  %indvars.iv.next3610 = add i64 %indvars.iv3609, 1 ; 2 uses
  %indvars.iv.next3605 = add i32 %indvars.iv3604, 1
  %lftr.wideiv3612 = trunc i64 %indvars.iv.next3610 to i32
  %exitcond3613.not = icmp eq i32 %i.axb, %lftr.wideiv3612
  br i1 %exitcond3613.not, label %._crit_edge3039, label %bb.br, !llvm.loop !79

._crit_edge3039:                                  ; preds = %._crit_edge3034
  store i32 %i.axd, ptr %i.a, align 4, !tbaa !8
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge3039, %bb.bq
  br i1 %.not, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ayb = sub nsw i32 %.pre3787.a, %i.ay
  store i32 %i.ayb, ptr %i.d, align 4, !tbaa !8
  %i.ayc = fdiv double 1.000000e+00, %i.aoh
  store double %i.ayc, ptr %i.e, align 8, !tbaa !9
  %i.ayd = mul nsw i32 %i.bk, %i.t
  %i.aye = add nsw i32 %i.ayd, %i.ba
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ayf ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ayg, ptr noundef nonnull @c__1) #4
  %i.ayh = load i32, ptr %i.l, align 4, !tbaa !8  ; 3 uses
  %i.ayi = icmp sgt i32 %i.ayh, 0
  br i1 %i.ayi, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ayj = load i32, ptr %2, align 4, !tbaa !8
  %i.ayk = sub nsw i32 %i.ayj, %i.ay
  store i32 %i.ayk, ptr %i.d, align 4, !tbaa !8
  %i.ayl = load i32, ptr %8, align 4, !tbaa !8
  %i.aym = add nsw i32 %i.ayl, -1
  store i32 %i.aym, ptr %i.c, align 4, !tbaa !8
  %i.ayn = add nuw nsw i32 %i.ayh, 1
  %i.ayo = sub nsw i32 %i.bk, %i.ayh              ; 2 uses
  %i.ayp = mul nsw i32 %i.ayo, %i.q
  %i.ayq = add nsw i32 %i.ayn, %i.ayp
  %i.ayr = sext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ayr
  %i.ayt = mul nsw i32 %i.ayo, %i.t
  %i.ayu = add nsw i32 %i.ayt, %i.ba
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ayv
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.ayg, ptr noundef nonnull @c__1, ptr noundef %i.ays, ptr noundef nonnull %i.c, ptr noundef %i.ayw, ptr noundef nonnull %10) #4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bt
  %i.ayx = mul nsw i32 %i.bk, %i.n
  %reass.sub3504 = sub i32 %i.ayx, %.02605.ph
  %i.ayy = add i32 %reass.sub3504, 2
  %i.ayz = add i32 %i.ayy, %i.bo
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aza
  %i.azc = load double, ptr %i.azb, align 8, !tbaa !9
  store double %i.azc, ptr %i.k, align 8, !tbaa !9
  %.pre3870 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.r, %bb.bw
  %i.azd = phi i32 [ %.pre3870, %bb.bw ], [ %i.bj, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bw ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bw ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.bk, %bb.bw ], [ %i.bu, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bl, %bb.bw ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bo, %bb.bw ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.br, %bb.bw ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.aze = add nsw i32 %i.azd, -1
  store i32 %i.aze, ptr %i.d, align 4, !tbaa !8
  %.not26573147 = icmp slt i32 %i.azd, 2
  br i1 %.not26573147, label %._crit_edge3152, label %.lr.ph3151

.lr.ph3151:                                       ; preds = %bb.bx
  %i.azf = mul nsw i32 %.1260627742809, %i.n
  %i.azg = add i32 %.1260627742809, 1
  %i.azh = sext i32 %.1260627742809 to i64
  %i.azi = sext i32 %.1254827772807 to i64
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph3151, %.loopexit2881
  %indvars.iv3645 = phi i64 [ 1, %.lr.ph3151 ], [ %indvars.iv.next3646, %.loopexit2881 ] ; 7 uses
  %.82565.neg3149 = phi i32 [ -1, %.lr.ph3151 ], [ %i.bbv, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3871, label %bb.bz

._crit_edge3871:                                  ; preds = %bb.by
  %.pre3872 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3874.a = load i32, ptr %2, align 4, !tbaa !8
  %.pre3875 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.azj = sub nsw i64 %i.azh, %indvars.iv3645    ; 5 uses
  %i.azk = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.azl = trunc nsw i64 %i.azj to i32            ; 2 uses
  %i.azm = add nsw i32 %i.azk, %i.azl             ; 2 uses
  %i.azn = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  %i.azo = icmp slt i32 %i.azm, %i.azn
  %i.azp = icmp sgt i64 %i.azj, 1
  %or.cond2759 = and i1 %i.azp, %i.azo
  %.pre3873 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br i1 %or.cond2759, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.azq = add i32 %.82565.neg3149, %i.azf
  %i.azr = add i32 %i.azq, %.pre3873
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.azs
  %i.azu = trunc nuw nsw i64 %indvars.iv3645 to i32
  %i.azv = add i32 %i.ay, %i.azu
  %i.azw = sub i32 %.1260627742809, %i.azv        ; 2 uses
  %i.azx = add i32 %i.azw, %i.azk
  %i.azy = add i32 %i.azx, %i.azn
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.azz
  %i.bab = sub nsw i32 %i.azm, %i.ay
  %i.bac = sext i32 %i.bab to i64
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bac
  call void @dlartg_(ptr noundef %i.azt, ptr noundef nonnull %i.k, ptr noundef nonnull %i.baa, ptr noundef nonnull %i.bad, ptr noundef nonnull %i.g) #4
  %i.bae = mul nsw i64 %i.azj, %i.bc
  %i.baf = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3645
  %i.bag = getelementptr i8, ptr %i.baf, i64 8
  %i.bah = getelementptr [8 x i8], ptr %i.bag, i64 %i.bae
  %i.bai = load double, ptr %i.bah, align 8, !tbaa !9
  %i.baj = fneg double %i.bai
  %i.bak = load double, ptr %i.k, align 8, !tbaa !9
  %i.bal = fmul double %i.bak, %i.baj             ; 2 uses
  %i.bam = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.ban = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.bao = add i32 %i.azw, %i.bam
  %i.bap = add i32 %i.bao, %i.ban
  %i.baq = sext i32 %i.bap to i64
  %i.bar = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.baq ; 2 uses
  %i.bas = load double, ptr %i.bar, align 8, !tbaa !9
  %i.bat = sub i32 %i.azl, %i.ay
  %i.bau = add i32 %i.bat, %i.ban
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bav ; 2 uses
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %.pre3890 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %i.brv = phi i32 [ %i.brf, %bb.dg ], [ %.pre3890, %bb.dh ]
  %i.brw = add nsw i32 %.113196, -1
  %i.brx = icmp sgt i32 %.113196, 1
  br i1 %i.brx, label %bb.dg, label %._crit_edge3199.loopexit, !llvm.loop !93

._crit_edge3199.loopexit:                         ; preds = %bb.di
  %.pre3892 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge3199

._crit_edge3199:                                  ; preds = %._crit_edge3199.loopexit, %.lr.ph3203
  %i.bry = phi i32 [ %.pre3892, %._crit_edge3199.loopexit ], [ %i.bql, %.lr.ph3203 ] ; 2 uses
  %i.brz = add nuw nsw i32 %.1125683201, 1
  %.not2658.not = icmp slt i32 %.1125683201, %i.bry
  br i1 %.not2658.not, label %.lr.ph3203, label %._crit_edge3204, !llvm.loop !94

._crit_edge3204:                                  ; preds = %._crit_edge3199
  %.pre3893 = load i32, ptr %4, align 4, !tbaa !8 ; 6 uses
  %i.bsa = icmp sgt i32 %.pre3893, 1
  br i1 %i.bsa, label %bb.dj, label %.loopexit2884

bb.dj:                                            ; preds = %._crit_edge3204
  %i.bsb = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.bsc = shl i32 %i.bsb, 1
  %i.bsd = add i32 %.1260627742809, 1
  %i.bse = sub i32 %i.bsd, %.pre3893
  %i.bsf = add i32 %i.bse, %i.bsc                 ; 3 uses
  store i32 %i.bsf, ptr %i.c, align 4, !tbaa !8
  %i.bsg = load i32, ptr %2, align 4, !tbaa !8    ; 6 uses
  %.not2659.not3205 = icmp sgt i32 %i.bsg, %i.bsf
  br i1 %.not2659.not3205, label %.lr.ph3208, label %.loopexit2884

.lr.ph3208:                                       ; preds = %bb.dj
  %i.bsh = add i32 %i.bsb, %i.ay                  ; 8 uses
  %i.bsi = sext i32 %i.bsg to i64                 ; 11 uses
  %i.bsj = sext i32 %i.bsf to i64                 ; 3 uses
  %i.bsk = sub nsw i64 %i.bsi, %i.bsj             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bsk, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3208
  %i.bsl = xor i64 %i.bsj, -1
  %i.bsm = add nsw i64 %i.bsl, %i.bsi             ; 2 uses
  %i.bsn = shl i32 %i.bsg, 1
  %i.bso = xor i32 %i.bsh, -1
  %i.bsp = add i32 %i.bsn, %i.bso                 ; 2 uses
  %i.bsq = trunc i64 %i.bsm to i32                ; 2 uses
  %i.bsr = sub i32 %i.bsp, %i.bsq
  %i.bss = icmp sgt i32 %i.bsr, %i.bsp
  %i.bst = xor i32 %i.bsh, -1
  %i.bsu = add i32 %i.bsg, %i.bst                 ; 2 uses
  %i.bsv = sub i32 %i.bsu, %i.bsq
  %i.bsw = icmp sgt i32 %i.bsv, %i.bsu
  %i.bsx = icmp ugt i64 %i.bsm, 4294967295
  %i.bsy = or i1 %i.bsw, %i.bsx
  %i.bsz = or i1 %i.bss, %i.bsy
  br i1 %i.bsz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bta = shl nsw i64 %i.bsi, 3                  ; 3 uses
  %i.btb = add nsw i64 %i.bta, -1
  %diff.check = icmp ult i64 %i.btb, 31
  %i.btc = shl i32 %i.bsg, 1
  %i.btd = xor i32 %i.bsh, -1
  %i.bte = add i32 %i.btc, %i.btd
  %i.btf = sext i32 %i.bte to i64
  %i.btg = add nsw i64 %i.bd, %i.btf
  %i.bth = shl nsw i64 %i.btg, 3                  ; 2 uses
  %i.bti = shl nsw i64 %i.bsi, 4                  ; 2 uses
  %i.btj = sub nsw i64 %i.bth, %i.bti
  %diff.check4219.a = icmp ult i64 %i.btj, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4219.a
  %i.btk = xor i32 %i.bsh, -1
  %i.btl = add i32 %i.bsg, %i.btk
  %i.btm = sext i32 %i.btl to i64
  %i.btn = add nsw i64 %i.bd, %i.btm
  %i.bto = shl nsw i64 %i.btn, 3                  ; 2 uses
  %i.btp = sub nsw i64 %i.bti, %i.bto
  %i.btq = add nsw i64 %i.btp, -9
  %diff.check4220 = icmp ult i64 %i.btq, 31
  %conflict.rdx4221 = or i1 %conflict.rdx, %diff.check4220
  %i.btr = sub nsw i64 %i.bth, %i.bta
  %diff.check4222 = icmp ult i64 %i.btr, 24
  %conflict.rdx4223 = or i1 %conflict.rdx4221, %diff.check4222
  %i.bts = sub nsw i64 %i.bto, %i.bta
  %diff.check4224 = icmp ult i64 %i.bts, 24
  %conflict.rdx4225 = or i1 %conflict.rdx4223, %diff.check4224
  br i1 %conflict.rdx4225, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bsk, -4                     ; 3 uses
  %i.btt = sub nsw i64 %i.bsi, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.btu = xor i64 %index, -1
  %i.btv = add i64 %i.btu, %i.bsi                 ; 3 uses
  %i.btw = add nsw i64 %i.btv, %i.bsi             ; 2 uses
  %i.btx = trunc nsw i64 %i.btw to i32
  %i.bty = sub i32 %i.btx, %i.bsh
  %i.btz = sext i32 %i.bty to i64
  %i.bua = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.btz
  %i.bub = getelementptr inbounds i8, ptr %i.bua, i64 -24
  %wide.load = load <4 x double>, ptr %i.bub, align 8, !tbaa !9
  %i.buc = sub nsw i64 %i.btw, %i.bd
  %i.bud = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buc
  %i.bue = getelementptr inbounds i8, ptr %i.bud, i64 -24
  store <4 x double> %wide.load, ptr %i.bue, align 8, !tbaa !9
  %i.buf = trunc nsw i64 %i.btv to i32
  %i.bug = sub i32 %i.buf, %i.bsh
  %i.buh = sext i32 %i.bug to i64
  %i.bui = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buh
  %i.buj = getelementptr inbounds i8, ptr %i.bui, i64 -24
  %wide.load4226 = load <4 x double>, ptr %i.buj, align 8, !tbaa !9
  %i.buk = sub nsw i64 %i.btv, %i.bd
  %i.bul = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buk
  %i.bum = getelementptr inbounds i8, ptr %i.bul, i64 -24
  store <4 x double> %wide.load4226, ptr %i.bum, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bun = icmp eq i64 %index.next, %n.vec
  br i1 %i.bun, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bsk, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3208, %middle.block
  %indvars.iv3658.ph = phi i64 [ %i.bsi, %vector.memcheck ], [ %i.bsi, %vector.scevcheck ], [ %i.bsi, %.lr.ph3208 ], [ %i.btt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3658 = phi i64 [ %indvars.iv.next3659, %scalar.ph ], [ %indvars.iv3658.ph, %scalar.ph.preheader ]
  %indvars.iv.next3659 = add nsw i64 %indvars.iv3658, -1 ; 5 uses
  %i.buo = add nsw i64 %indvars.iv.next3659, %i.bsi ; 2 uses
  %i.bup = trunc nsw i64 %i.buo to i32
  %i.buq = sub i32 %i.bup, %i.bsh
  %i.bur = sext i32 %i.buq to i64
  %i.bus = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bur
  %i.but = load double, ptr %i.bus, align 8, !tbaa !9
  %i.buu = sub nsw i64 %i.buo, %i.bd
  %i.buv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buu
  store double %i.but, ptr %i.buv, align 8, !tbaa !9
  %i.buw = trunc nsw i64 %indvars.iv.next3659 to i32
  %i.bux = sub i32 %i.buw, %i.bsh
  %i.buy = sext i32 %i.bux to i64
  %i.buz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buy
  %i.bva = load double, ptr %i.buz, align 8, !tbaa !9
  %i.bvb = sub nsw i64 %indvars.iv.next3659, %i.bd
  %i.bvc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvb
  store double %i.bva, ptr %i.bvc, align 8, !tbaa !9
  %.not2659.not = icmp sgt i64 %indvars.iv.next3659, %i.bsj
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !96

.loopexit2884.sink.split:                         ; preds = %bb.cq, %._crit_edge3174, %bb.au, %._crit_edge3090
  %.ph4089.sink = phi i32 [ %i.abg, %bb.au ], [ %.pre3859, %._crit_edge3090 ], [ %.pre3884, %._crit_edge3174 ], [ %i.bie, %bb.cq ] ; 2 uses
  %.sink4180 = phi ptr [ %i.b, %bb.au ], [ %i.b, %._crit_edge3090 ], [ %i.c, %._crit_edge3174 ], [ %i.c, %bb.cq ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.au ], [ %.025322917, %._crit_edge3090 ], [ %.025322918, %._crit_edge3174 ], [ %.025322918, %bb.cq ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.au ], [ %.1253927812790, %._crit_edge3090 ], [ %.1253927832803, %._crit_edge3174 ], [ %.1253927832803, %bb.cq ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.au ], [ %.1254327782792, %._crit_edge3090 ], [ %.1254327802805, %._crit_edge3174 ], [ %.1254327802805, %bb.cq ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.au ], [ %.1254827752794, %._crit_edge3090 ], [ %.1254827772807, %._crit_edge3174 ], [ %.1254827772807, %bb.cq ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.au ], [ %.1260627722796, %._crit_edge3090 ], [ %.1260627742809, %._crit_edge3174 ], [ %.1260627742809, %bb.cq ]
  %i.bvd = add nsw i32 %.ph4089.sink, -1
  store i32 %i.bvd, ptr %.sink4180, align 4, !tbaa !8
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4238, %scalar.ph, %middle.block4247, %middle.block, %.loopexit2884.sink.split, %._crit_edge3195, %._crit_edge3113, %bb.bn, %bb.dj, %._crit_edge3204, %._crit_edge3122
  %i.bve = phi i32 [ %.pre3893, %._crit_edge3204 ], [ %.pre3893, %bb.dj ], [ %.pre3869, %._crit_edge3122 ], [ %.pre3869, %bb.bn ], [ %.pre3865, %._crit_edge3113 ], [ %.pre3889, %._crit_edge3195 ], [ %.ph4089.sink, %.loopexit2884.sink.split ], [ %.pre3893, %middle.block ], [ %.pre3869, %middle.block4247 ], [ %.pre3893, %scalar.ph ], [ %.pre3869, %scalar.ph4238 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3204 ], [ %.025322918, %bb.dj ], [ %.025322917, %._crit_edge3122 ], [ %.025322917, %bb.bn ], [ %.025322917, %._crit_edge3113 ], [ %.025322918, %._crit_edge3195 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4247 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4238 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3204 ], [ %.1253927832803, %bb.dj ], [ %.1253927812790, %._crit_edge3122 ], [ %.1253927812790, %bb.bn ], [ %.1253927812790, %._crit_edge3113 ], [ %.1253927832803, %._crit_edge3195 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4247 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4238 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3204 ], [ %.1254327802805, %bb.dj ], [ %.1254327782792, %._crit_edge3122 ], [ %.1254327782792, %bb.bn ], [ %.1254327782792, %._crit_edge3113 ], [ %.1254327802805, %._crit_edge3195 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4247 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4238 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3204 ], [ %.1254827772807, %bb.dj ], [ %.1254827752794, %._crit_edge3122 ], [ %.1254827752794, %bb.bn ], [ %.1254827752794, %._crit_edge3113 ], [ %.1254827772807, %._crit_edge3195 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4247 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4238 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3204 ], [ %.1260627742809, %bb.dj ], [ %.1260627722796, %._crit_edge3122 ], [ %.1260627722796, %bb.bn ], [ %.1260627722796, %._crit_edge3113 ], [ %.1260627742809, %._crit_edge3195 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4247 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4238 ]
  %.pre3787.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bo, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.br, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3515 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bvf = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4136 = getelementptr [8 x i8], ptr %i.s, i64 %i.bvf
  %invariant.gep4134 = getelementptr [8 x i8], ptr %i.s, i64 %i.bvf ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4790 = sub i32 1, %i.ay
  %invariant.op4791.a = sub i32 2, %i.ay
  %invariant.op4792 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bvg = add i32 %i.n, -1
  %58 = shl nsw i64 %i.o, 3                       ; 6 uses
  %scevgep4523.a = getelementptr i8, ptr %5, i64 %58
  %59 = shl nsw i64 %i.r, 3                       ; 3 uses
  %scevgep4527 = getelementptr i8, ptr %7, i64 %59
  %60 = add nsw i64 %59, 8                        ; 3 uses
  %scevgep4529 = getelementptr i8, ptr %7, i64 %60
  %scevgep4531 = getelementptr i8, ptr %5, i64 %58
  %scevgep4585.a = getelementptr i8, ptr %5, i64 %58
  %61 = add nsw i64 %58, 8                        ; 3 uses
  %scevgep4587.a = getelementptr i8, ptr %5, i64 %61
  %scevgep4590.a = getelementptr i8, ptr %7, i64 %59
  %scevgep4592.a = getelementptr i8, ptr %7, i64 %60
  %scevgep4594.a = getelementptr i8, ptr %7, i64 %60
  %scevgep4596 = getelementptr i8, ptr %5, i64 %58
  %scevgep4598 = getelementptr i8, ptr %5, i64 %61
  %scevgep4600 = getelementptr i8, ptr %5, i64 %61
  %i.bvh = getelementptr i8, ptr %5, i64 %58
  %scevgep4602 = getelementptr i8, ptr %i.bvh, i64 16
  %invariant.op4811 = sub i32 1, %i.ay
  %invariant.op4812 = sub i32 2, %i.ay
  %invariant.op4813 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3819.a = phi i32 [ %.pre3786, %.outer.us.preheader ], [ %.pre3819.be, %.outer.us.backedge ] ; 6 uses
  %i.bvi = phi i32 [ %i.bj, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dk, label %.lr.ph3212.us

bb.dk:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.cwy, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cxb, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bvj = sub nsw i32 %.22607.ph.us, %.pre3819.a ; 2 uses
  %i.bvk = icmp slt i32 %i.bvj, 2
  br i1 %i.bvk, label %.loopexit2877, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dk
  %.125332894.us = phi i32 [ 0, %bb.dk ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dk ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bvj, %bb.dk ], [ %i.cwu, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dk ], [ %i.cxd, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dk ], [ %i.cwy, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dk ], [ %i.cxb, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bvl = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.bvm = sub nsw i32 %i.ay, %i.bvl
  %i.bvn = icmp slt i32 %.32608.us, %i.bvm
  br i1 %i.bvn, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bvo = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %storemerge.us = phi i32 [ %i.bvo, %bb.dm ], [ %i.ay, %bb.dl ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891.us, label %bb.dx, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bvp = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bvq = sext i32 %i.bvp to i64
  %i.bvr = getelementptr [8 x i8], ptr %i.s, i64 %i.bvq ; 2 uses
  %i.bvs = getelementptr i8, ptr %i.bvr, i64 8
  %i.bvt = load double, ptr %i.bvs, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4737, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4737 ] ; 6 uses
  %i.bvu = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bvv = trunc nsw i64 %indvars.iv3722 to i32
  %i.bvw = sub i32 %i.cxe, %i.bvv
  %i.bvx = sext i32 %i.bvw to i64
  %i.bvy = getelementptr [8 x i8], ptr %i.p, i64 %i.bvu
  %i.bvz = getelementptr [8 x i8], ptr %i.bvy, i64 %i.bvx ; 2 uses
  %i.bwa = load double, ptr %i.bvz, align 8, !tbaa !9
  %i.bwb = fdiv double %i.bwa, %i.bvt
  store double %i.bwb, ptr %i.bvz, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bwc = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bwd = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bwe = sub i32 %i.cxe, %i.bwd
  %i.bwf = sext i32 %i.bwe to i64
  %i.bwg = getelementptr [8 x i8], ptr %i.p, i64 %i.bwc
  %i.bwh = getelementptr [8 x i8], ptr %i.bwg, i64 %i.bwf ; 2 uses
  %i.bwi = load double, ptr %i.bwh, align 8, !tbaa !9
  %i.bwj = fdiv double %i.bwi, %i.bvt
  store double %i.bwj, ptr %i.bwh, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.bwk = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.bwl = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.bwm = sub i32 %i.cxe, %i.bwl
  %i.bwn = sext i32 %i.bwm to i64
  %i.bwo = getelementptr [8 x i8], ptr %i.p, i64 %i.bwk
  %i.bwp = getelementptr [8 x i8], ptr %i.bwo, i64 %i.bwn ; 2 uses
  %i.bwq = load double, ptr %i.bwp, align 8, !tbaa !9
  %i.bwr = fdiv double %i.bwq, %i.bvt
  store double %i.bwr, ptr %i.bwp, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.bws = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.bwt = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.bwu = sub i32 %i.cxe, %i.bwt
  %i.bwv = sext i32 %i.bwu to i64
  %i.bww = getelementptr [8 x i8], ptr %i.p, i64 %i.bws
  %i.bwx = getelementptr [8 x i8], ptr %i.bww, i64 %i.bwv ; 2 uses
  %i.bwy = load double, ptr %i.bwx, align 8, !tbaa !9
  %i.bwz = fdiv double %i.bwy, %i.bvt
  store double %i.bwz, ptr %i.bwx, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cxe, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4737, %.lr.ph3372.us.new, %bb.do
  %i.bxa = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.bxa, ptr %i.c, align 4, !tbaa !8
  %i.bxb = add nsw i32 %.pre3819.a, %.32608.us    ; 4 uses
  store i32 %i.bxb, ptr %i.a, align 4, !tbaa !8
  %i.bxc = call i32 @llvm.smin.i32(i32 %i.bxa, i32 %i.bxb) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.bxc
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4663

vec.epilog.scalar.ph4664:                         ; preds = %vec.epilog.scalar.ph4664, %vec.epilog.scalar.ph4664.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4664.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4664 ] ; 5 uses
  %i.bxd = trunc nsw i64 %indvars.iv3727 to i32
  %i.bxe = add i32 %i.cxs, %i.bxd
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxf ; 2 uses
  %i.bxh = load double, ptr %i.bxg, align 8, !tbaa !9
  %i.bxi = fdiv double %i.bxh, %i.bvt
  store double %i.bxi, ptr %i.bxg, align 8, !tbaa !9
  %i.bxj = trunc i64 %indvars.iv3727 to i32
  %.reass4798 = add i32 %i.bxj, %invariant.op4797.a
  %i.bxk = sext i32 %.reass4798 to i64
  %i.bxl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxk ; 2 uses
  %i.bxm = load double, ptr %i.bxl, align 8, !tbaa !9
  %i.bxn = fdiv double %i.bxm, %i.bvt
  store double %i.bxn, ptr %i.bxl, align 8, !tbaa !9
  %i.bxo = trunc i64 %indvars.iv3727 to i32
  %.reass4800 = add i32 %i.bxo, %invariant.op4799
  %i.bxp = sext i32 %.reass4800 to i64
  %i.bxq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxp ; 2 uses
  %i.bxr = load double, ptr %i.bxq, align 8, !tbaa !9
  %i.bxs = fdiv double %i.bxr, %i.bvt
  store double %i.bxs, ptr %i.bxq, align 8, !tbaa !9
  %i.bxt = trunc i64 %indvars.iv3727 to i32
  %.reass4802 = add i32 %i.bxt, %invariant.op4801
  %i.bxu = sext i32 %.reass4802 to i64
  %i.bxv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxu ; 2 uses
  %i.bxw = load double, ptr %i.bxv, align 8, !tbaa !9
  %i.bxx = fdiv double %i.bxw, %i.bvt
  store double %i.bxx, ptr %i.bxv, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.cxu, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4664, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4664.prol.loopexit, %vec.epilog.scalar.ph4664, %middle.block4659, %vec.epilog.middle.block4675, %._crit_edge3373.us
  %i.bxy = add i32 %i.bvl, %.32608.us             ; 7 uses
  %i.bxz = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bvl, 1
  br i1 %.not27053392.us, label %bb.dq, label %.lr.ph3396.us

bb.dp:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4582 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4583, %._crit_edge3388.us ] ; 10 uses
  %indvar4520 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4521, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.day, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.bzj, %._crit_edge3388.us ]
  %smax4623 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.daz)
  %i.bya = add i64 %indvar4582, %i.day
  %reass.sub4678 = sub i64 %smax4623, %i.bya
  %i.byb = add i64 %reass.sub4678, 1              ; 3 uses
  %i.byc = trunc i64 %indvar4582 to i32
  %i.byd = mul i32 %i.n, %i.byc
  %i.bye = add i32 %i.byd, %i.dbw
  %i.byf = sext i32 %i.bye to i64
  %i.byg = shl nsw i64 %i.byf, 3                  ; 2 uses
  %scevgep4586 = getelementptr i8, ptr %scevgep4585.a, i64 %i.byg ; 5 uses
  %smax4588 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.daz)
  %i.byh = add i64 %indvar4582, %i.day
  %i.byi = sub i64 %smax4588, %i.byh
  %i.byj = shl nsw i64 %i.byi, 3                  ; 3 uses
  %i.byk = getelementptr i8, ptr %scevgep4587.a, i64 %i.byj
  %scevgep4589.a = getelementptr i8, ptr %i.byk, i64 %i.byg ; 5 uses
  %i.byl = trunc i64 %indvar4582 to i32
  %i.bym = add i32 %i.dbx, %i.byl
  %i.byn = sext i32 %i.bym to i64
  %i.byo = shl nsw i64 %i.byn, 3                  ; 3 uses
  %scevgep4591.a = getelementptr i8, ptr %scevgep4590.a, i64 %i.byo ; 2 uses
  %scevgep4593.a = getelementptr i8, ptr %scevgep4592.a, i64 %i.byo
  %i.byp = getelementptr i8, ptr %scevgep4594.a, i64 %i.byj
  %scevgep4595.a = getelementptr i8, ptr %i.byp, i64 %i.byo
  %i.byq = trunc i64 %indvar4582 to i32
  %i.byr = add i32 %i.dby, %i.byq
  %i.bys = sext i32 %i.byr to i64
  %i.byt = shl nsw i64 %i.bys, 3                  ; 3 uses
  %scevgep4597 = getelementptr i8, ptr %scevgep4596, i64 %i.byt ; 2 uses
  %scevgep4599 = getelementptr i8, ptr %scevgep4598, i64 %i.byt
  %i.byu = getelementptr i8, ptr %scevgep4600, i64 %i.byj
  %scevgep4601 = getelementptr i8, ptr %i.byu, i64 %i.byt
  %i.byv = mul i32 %.0255729803502, %indvar4520
  %i.byw = add i32 %i.dbf, %i.byv
  %i.byx = sext i32 %i.byw to i64                 ; 2 uses
  %i.byy = shl nsw i64 %i.byx, 3
  %scevgep4524.a = getelementptr i8, ptr %scevgep4523.a, i64 %i.byy ; 2 uses
  %i.byz = add nsw i64 %i.dbk, %i.byx
  %i.bza = shl nsw i64 %i.byz, 3
  %scevgep4526 = getelementptr i8, ptr %scevgep4525.a, i64 %i.bza ; 2 uses
  %i.bzb = add i32 %i.dbl, %indvar4520
  %i.bzc = sext i32 %i.bzb to i64
  %i.bzd = shl nsw i64 %i.bzc, 3                  ; 2 uses
end_hunk_2
