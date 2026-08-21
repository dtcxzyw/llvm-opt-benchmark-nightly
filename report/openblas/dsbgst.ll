Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
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
  %i.bg = shl nsw i64 %i.r, 3
  %13 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4283.a = getelementptr i8, ptr %13, i64 8
  %i.bh = add i32 %i.ab, 1
  %scevgep4285.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4287 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bi = add i32 %i.ab, 1
  %14 = shl nsw i64 %i.o, 3                       ; 3 uses
  %scevgep4336.a = getelementptr i8, ptr %5, i64 %14
  %15 = add nsw i64 %14, 8                        ; 4 uses
  %scevgep4339.a = getelementptr i8, ptr %5, i64 %15
  %16 = shl nsw i64 %i.r, 3                       ; 2 uses
  %17 = add nsw i64 %16, 8                        ; 2 uses
  %scevgep4341.a = getelementptr i8, ptr %7, i64 %17
  %18 = add i32 %i.ab, 1
  %scevgep4343 = getelementptr i8, ptr %7, i64 %16
  %scevgep4345.a = getelementptr i8, ptr %7, i64 %17
  %scevgep4348 = getelementptr i8, ptr %5, i64 %15
  %scevgep4350 = getelementptr i8, ptr %5, i64 %14
  %scevgep4352 = getelementptr i8, ptr %5, i64 %15
  %scevgep4355 = getelementptr i8, ptr %5, i64 %15
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3787.a = phi i32 [ %.pre3787.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bj = phi i32 [ %i.bvf, %.loopexit2884 ], [ %i.av, %bb.q ] ; 10 uses
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
  br i1 %.not2676.not2955, label %iter.check4419, label %._crit_edge2959

iter.check4419:                                   ; preds = %._crit_edge2954
  %i.ef = mul nsw i32 %i.bk, %i.n                 ; 2 uses
  %i.eg = add i32 %i.ef, %.neg.le
  %invariant.op = add i32 %i.eg, %i.bq            ; 7 uses
  %i.eh = zext nneg i32 %i.ee to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.ei = sub nsw i64 %wide.trip.count, %i.eh     ; 7 uses
  %min.iters.check4401 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check4401, label %vec.epilog.scalar.ph4420.preheader, label %vector.scevcheck4399

vector.scevcheck4399:                             ; preds = %iter.check4419
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
  br i1 %i.et, label %vec.epilog.scalar.ph4420.preheader, label %vector.main.loop.iter.check4402

vector.main.loop.iter.check4402:                  ; preds = %vector.scevcheck4399
  %min.iters.check4403 = icmp ult i64 %i.ei, 16
  br i1 %min.iters.check4403, label %vec.epilog.ph4423, label %vector.ph4404

vector.ph4404:                                    ; preds = %vector.main.loop.iter.check4402
  %i.eu = and i64 %i.ei, 12
  %n.vec4405 = and i64 %i.ei, -16                 ; 4 uses
  %i.ev = add nsw i64 %n.vec4405, %i.eh
  %broadcast.splatinsert4406 = insertelement <4 x double> poison, double %i.by, i64 0
  %broadcast.splat4407 = shufflevector <4 x double> %broadcast.splatinsert4406, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4748 = add i32 %i.ee, %invariant.op
  br label %vector.body4408

vector.body4408:                                  ; preds = %vector.body4408, %vector.ph4404
  %index4409 = phi i64 [ 0, %vector.ph4404 ], [ %index.next4414, %vector.body4408 ] ; 2 uses
  %i.ew = trunc i64 %index4409 to i32
  %.reass4749 = add i32 %i.ew, %invariant.op4748
  %i.ex = sext i32 %.reass4749 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %wide.load4410 = load <4 x double>, ptr %i.ey, align 8, !tbaa !9
  %wide.load4411 = load <4 x double>, ptr %i.ez, align 8, !tbaa !9
  %wide.load4412 = load <4 x double>, ptr %i.fa, align 8, !tbaa !9
  %wide.load4413 = load <4 x double>, ptr %i.fb, align 8, !tbaa !9
  %i.fc = fdiv <4 x double> %wide.load4410, %broadcast.splat4407
  %i.fd = fdiv <4 x double> %wide.load4411, %broadcast.splat4407
  %i.fe = fdiv <4 x double> %wide.load4412, %broadcast.splat4407
  %i.ff = fdiv <4 x double> %wide.load4413, %broadcast.splat4407
  store <4 x double> %i.fc, ptr %i.ey, align 8, !tbaa !9
  store <4 x double> %i.fd, ptr %i.ez, align 8, !tbaa !9
  store <4 x double> %i.fe, ptr %i.fa, align 8, !tbaa !9
  store <4 x double> %i.ff, ptr %i.fb, align 8, !tbaa !9
  %index.next4414 = add nuw i64 %index4409, 16    ; 2 uses
  %i.fg = icmp eq i64 %index.next4414, %n.vec4405
  br i1 %i.fg, label %middle.block4415, label %vector.body4408, !llvm.loop !15

middle.block4415:                                 ; preds = %vector.body4408
  %cmp.n4416 = icmp eq i64 %i.ei, %n.vec4405
  br i1 %cmp.n4416, label %._crit_edge2959, label %vec.epilog.iter.check4421

vec.epilog.iter.check4421:                        ; preds = %middle.block4415
  %min.epilog.iters.check4422 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check4422, label %vec.epilog.scalar.ph4420.preheader, label %vec.epilog.ph4423, !prof !18

vec.epilog.ph4423:                                ; preds = %vector.main.loop.iter.check4402, %vec.epilog.iter.check4421
  %vec.epilog.resume.val4417 = phi i64 [ %n.vec4405, %vec.epilog.iter.check4421 ], [ 0, %vector.main.loop.iter.check4402 ]
  %n.vec4424 = and i64 %i.ei, -4                  ; 3 uses
  %i.fh = add nsw i64 %n.vec4424, %i.eh
  %broadcast.splatinsert4425 = insertelement <4 x double> poison, double %i.by, i64 0
  %broadcast.splat4426 = shufflevector <4 x double> %broadcast.splatinsert4425, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4750 = add i32 %i.ee, %invariant.op
  br label %vec.epilog.vector.body4427

vec.epilog.vector.body4427:                       ; preds = %vec.epilog.vector.body4427, %vec.epilog.ph4423
  %index4428 = phi i64 [ %vec.epilog.resume.val4417, %vec.epilog.ph4423 ], [ %index.next4430, %vec.epilog.vector.body4427 ] ; 2 uses
  %i.fi = trunc i64 %index4428 to i32
  %.reass4751 = add i32 %i.fi, %invariant.op4750
  %i.fj = sext i32 %.reass4751 to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fj ; 2 uses
  %wide.load4429 = load <4 x double>, ptr %i.fk, align 8, !tbaa !9
  %i.fl = fdiv <4 x double> %wide.load4429, %broadcast.splat4426
  store <4 x double> %i.fl, ptr %i.fk, align 8, !tbaa !9
  %index.next4430 = add nuw i64 %index4428, 4     ; 2 uses
  %i.fm = icmp eq i64 %index.next4430, %n.vec4424
  br i1 %i.fm, label %vec.epilog.middle.block4431, label %vec.epilog.vector.body4427, !llvm.loop !19

vec.epilog.middle.block4431:                      ; preds = %vec.epilog.vector.body4427
  %cmp.n4432 = icmp eq i64 %i.ei, %n.vec4424
  br i1 %cmp.n4432, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader

vec.epilog.scalar.ph4420.preheader:               ; preds = %vector.scevcheck4399, %iter.check4419, %vec.epilog.iter.check4421, %vec.epilog.middle.block4431
  %indvars.iv3551.ph = phi i64 [ %i.eh, %iter.check4419 ], [ %i.eh, %vector.scevcheck4399 ], [ %i.ev, %vec.epilog.iter.check4421 ], [ %i.fh, %vec.epilog.middle.block4431 ] ; 4 uses
  %i.fn = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4686 = and i64 %i.fn, 3                ; 2 uses
  %lcmp.mod4687.not = icmp eq i64 %xtraiter4686, 0
  br i1 %lcmp.mod4687.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol

vec.epilog.scalar.ph4420.prol:                    ; preds = %vec.epilog.scalar.ph4420.preheader, %vec.epilog.scalar.ph4420.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ] ; 2 uses
  %prol.iter4688 = phi i64 [ %prol.iter4688.next, %vec.epilog.scalar.ph4420.prol ], [ 0, %vec.epilog.scalar.ph4420.preheader ]
  %i.fo = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fo
  %i.fp = sext i32 %.reass.prol to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9
  %i.fs = fdiv double %i.fr, %i.by
  store double %i.fs, ptr %i.fq, align 8, !tbaa !9
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4688.next = add i64 %prol.iter4688, 1 ; 2 uses
  %prol.iter4688.cmp.not = icmp eq i64 %prol.iter4688.next, %xtraiter4686
  br i1 %prol.iter4688.cmp.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol, !llvm.loop !20

vec.epilog.scalar.ph4420.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4420.prol, %vec.epilog.scalar.ph4420.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ]
  %i.ft = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader.new

vec.epilog.scalar.ph4420.preheader.new:           ; preds = %vec.epilog.scalar.ph4420.prol.loopexit
  %invariant.op4752 = add i32 1, %invariant.op
  %invariant.op4753.a = add i32 2, %invariant.op
  %invariant.op4754 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4420

vec.epilog.scalar.ph4420:                         ; preds = %vec.epilog.scalar.ph4420, %vec.epilog.scalar.ph4420.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4420.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4420 ] ; 5 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.fv
  %i.fw = sext i32 %.reass to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !9
  %i.fz = fdiv double %i.fy, %i.by
  store double %i.fz, ptr %i.fx, align 8, !tbaa !9
  %i.ga = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.ga, %invariant.op4752
  %i.gb = sext i32 %.reass.1.reass to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gb ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !9
  %i.ge = fdiv double %i.gd, %i.by
  store double %i.ge, ptr %i.gc, align 8, !tbaa !9
  %i.gf = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gf, %invariant.op4753.a
  %i.gg = sext i32 %.reass.2.reass to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gg ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9
  %i.gj = fdiv double %i.gi, %i.by
  store double %i.gj, ptr %i.gh, align 8, !tbaa !9
  %i.gk = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gk, %invariant.op4754
  %i.gl = sext i32 %.reass.3.reass to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = fdiv double %i.gn, %i.by
  store double %i.go, ptr %i.gm, align 8, !tbaa !9
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4420, !llvm.loop !21

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4420.prol.loopexit, %vec.epilog.scalar.ph4420, %middle.block4415, %vec.epilog.middle.block4431, %._crit_edge2954
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
  %scevgep4286 = getelementptr i8, ptr %scevgep4285.a, i64 %i.hv
  %i.hw = add nsw i64 %i.hl, %i.hv
  %i.hx = sub nsw i64 %i.hw, %i.hm
  %scevgep4288 = getelementptr i8, ptr %scevgep4287, i64 %i.hx
  %umax4293 = call i64 @llvm.umax.i64(i64 %i.gy, i64 %i.gz)
  %i.hy = add nuw nsw i64 %umax4293, 1
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
  %i.im = add i32 %18, %i.bs
  %i.in = sub i32 %i.im, %30                      ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.io, 3                    ; 2 uses
  %scevgep4344 = getelementptr i8, ptr %scevgep4343, i64 %i.ip
  %scevgep4346.a = getelementptr i8, ptr %scevgep4345.a, i64 %i.ip
  %i.iq = add i32 %i.bq, %i.gp
  %i.ir = sub i32 %i.iq, %30                      ; 2 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep4351 = getelementptr i8, ptr %scevgep4350, i64 %i.it
  %scevgep4353 = getelementptr i8, ptr %scevgep4352, i64 %i.it
  %i.iu = shl nsw i64 %i.gr, 3
  %scevgep4356 = getelementptr i8, ptr %scevgep4355, i64 %i.iu
  %34 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bl)
  %35 = sub i32 %34, %i.bm
  %min.iters.check4295 = icmp ult i64 %i.hz, 4
  %i.iv = trunc nuw i64 %i.ha to i32              ; 2 uses
  %i.iw = add i32 %i.hh, %i.iv
  %i.ix = icmp slt i32 %i.iw, %i.hh
  %min.iters.check4297 = icmp ult i64 %i.hz, 16
  %i.iy = and i64 %i.hz, 12
  %n.vec4299 = and i64 %i.hz, -16                 ; 4 uses
  %i.iz = add nsw i64 %n.vec4299, %i.gy
  %cmp.n4314 = icmp eq i64 %i.hz, %n.vec4299
  %min.epilog.iters.check4320 = icmp eq i64 %i.iy, 0
  %n.vec4322 = and i64 %i.hz, -4                  ; 3 uses
  %i.ja = add nsw i64 %n.vec4322, %i.gy
  %cmp.n4331 = icmp eq i64 %i.hz, %n.vec4322
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
  %scevgep4338 = getelementptr i8, ptr %scevgep4336.a, i64 %i.jg ; 5 uses
  %i.jh = add i32 %i.il, %indvar
  %38 = zext i32 %i.jh to i64
  %i.ji = shl nuw nsw i64 %38, 3                  ; 3 uses
  %i.jj = getelementptr i8, ptr %scevgep4339.a, i64 %i.jg
  %scevgep4340.a = getelementptr i8, ptr %i.jj, i64 %i.ji ; 5 uses
  %i.jk = add i32 %i.in, %indvar
  %i.jl = sext i32 %i.jk to i64
  %i.jm = shl nsw i64 %i.jl, 3
  %scevgep4342 = getelementptr i8, ptr %scevgep4341.a, i64 %i.jm
  %scevgep4347 = getelementptr i8, ptr %scevgep4346.a, i64 %i.ji
  %i.jn = add i32 %i.ir, %indvar
  %i.jo = sext i32 %i.jn to i64
  %i.jp = shl nsw i64 %i.jo, 3
  %scevgep4349 = getelementptr i8, ptr %scevgep4348, i64 %i.jp
  %scevgep4354 = getelementptr i8, ptr %scevgep4353, i64 %i.ji
  %i.jq = add i32 %27, %indvar                    ; 3 uses
  %39 = mul i32 %.0255729803502, %indvar
  %40 = add i32 %i.id, %39                        ; 2 uses
  %i.jr = mul i32 %.0255729803502, %indvar
  %i.js = add i32 %i.hk, %i.jr
  %41 = sext i32 %i.js to i64
  %42 = shl nsw i64 %41, 3                        ; 2 uses
  %scevgep4278 = getelementptr i8, ptr %scevgep, i64 %42 ; 2 uses
  %scevgep4282 = getelementptr i8, ptr %scevgep4281.a, i64 %42 ; 2 uses
  %i.jt = add i32 %i.hp, %indvar
  %i.ju = sext i32 %i.jt to i64
  %43 = shl nsw i64 %i.ju, 3
  %scevgep4284 = getelementptr i8, ptr %scevgep4283.a, i64 %43
  %44 = mul i32 %.0255729803502, %indvar
  %45 = add i32 %i.hd, %44                        ; 2 uses
  %.not26952960 = icmp slt i64 %indvars.iv3565, %19
  br i1 %.not26952960, label %._crit_edge2964, label %.lr.ph2963

.lr.ph2963:                                       ; preds = %bb.t
  %46 = trunc nsw i64 %indvars.iv3565 to i32
  %47 = mul i32 %.0255729803501, %46
  %invariant.op2965 = add i32 %47, %i.bq          ; 4 uses
  %48 = trunc i64 %indvars.iv3565 to i32
  %49 = sub i32 %48, %i.bk                        ; 2 uses
  %50 = add i32 %i.gq, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %i.p, i64 %51 ; 5 uses
  %53 = add i32 %i.bv, %49
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %i.s, i64 %54 ; 5 uses
  %min.iters.check4378 = icmp ult i32 %i.jb, 7
  br i1 %min.iters.check4378, label %scalar.ph4377.preheader, label %vector.scevcheck4333

vector.scevcheck4333:                             ; preds = %.lr.ph2963
  %i.jv = add i32 %40, %i.jq
  %i.jw = icmp slt i32 %i.jv, %40
  %i.jx = add i32 %i.if, %i.jq
  %i.jy = icmp slt i32 %i.jx, %i.if
  %i.jz = add i32 %i.ih, %i.jq
  %i.ka = icmp slt i32 %i.jz, %i.ih
  %i.kb = or i1 %i.jw, %i.jy
  %i.kc = or i1 %i.kb, %i.ka
  br i1 %i.kc, label %scalar.ph4377.preheader, label %vector.memcheck4335

vector.memcheck4335:                              ; preds = %vector.scevcheck4333
  %bound04357.a = icmp ult ptr %scevgep4338, %scevgep4342
  %bound14358.a = icmp ult ptr %55, %scevgep4340.a
  %found.conflict4359.a = and i1 %bound04357.a, %bound14358.a
  %bound04360 = icmp ult ptr %scevgep4338, %scevgep4347
  %bound14361 = icmp ult ptr %scevgep4344, %scevgep4340.a
  %found.conflict4362 = and i1 %bound04360, %bound14361
  %conflict.rdx4363 = or i1 %found.conflict4359.a, %found.conflict4362
  %bound04364 = icmp ult ptr %scevgep4338, %scevgep4349
  %bound14365 = icmp ult ptr %52, %scevgep4340.a
  %found.conflict4366 = and i1 %bound04364, %bound14365
  %conflict.rdx4367 = or i1 %conflict.rdx4363, %found.conflict4366
  %bound04368 = icmp ult ptr %scevgep4338, %scevgep4354
  %bound14369 = icmp ult ptr %scevgep4351, %scevgep4340.a
  %found.conflict4370 = and i1 %bound04368, %bound14369
  %conflict.rdx4371 = or i1 %conflict.rdx4367, %found.conflict4370
  %bound04372 = icmp ult ptr %scevgep4338, %scevgep4356
  %bound14373 = icmp ult ptr %i.gs, %scevgep4340.a
  %found.conflict4374 = and i1 %bound04372, %bound14373
  %conflict.rdx4375 = or i1 %conflict.rdx4371, %found.conflict4374
  br i1 %conflict.rdx4375, label %scalar.ph4377.preheader, label %vector.ph4379

vector.ph4379:                                    ; preds = %vector.memcheck4335
  %n.vec4380 = and i64 %i.jc, 8589934584          ; 3 uses
  %i.kd = add nsw i64 %n.vec4380, %19
  %i.ke = load double, ptr %52, align 8, !tbaa !9, !alias.scope !22
  %broadcast.splatinsert4389 = insertelement <4 x double> poison, double %i.ke, i64 0
  %broadcast.splat4390 = shufflevector <4 x double> %broadcast.splatinsert4389, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kf = load double, ptr %55, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert4381 = insertelement <4 x double> poison, double %i.kf, i64 0
  %broadcast.splat4382 = shufflevector <4 x double> %broadcast.splatinsert4381, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kg = fneg <4 x double> %broadcast.splat4382  ; 2 uses
  %i.kh = load double, ptr %i.gs, align 8, !tbaa !9, !alias.scope !27
  %broadcast.splatinsert4393 = insertelement <4 x double> poison, double %i.kh, i64 0
  %broadcast.splat4394 = shufflevector <4 x double> %broadcast.splatinsert4393, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4383

vector.body4383:                                  ; preds = %vector.body4383, %vector.ph4379
  %index4384 = phi i64 [ 0, %vector.ph4379 ], [ %index.next4395, %vector.body4383 ] ; 2 uses
  %i.ki = trunc i64 %index4384 to i32
  %i.kj = add i32 %i.bp, %i.ki                    ; 2 uses
  %i.kk = add i32 %invariant.op2965, %i.kj
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kl ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %wide.load4385 = load <4 x double>, ptr %i.km, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load4386 = load <4 x double>, ptr %i.kn, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %i.ko = sub i32 %i.kj, %i.bk                    ; 2 uses
  %i.kp = add i32 %i.bv, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %wide.load4387 = load <4 x double>, ptr %i.kr, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %wide.load4388 = load <4 x double>, ptr %i.ks, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %i.kt = fneg <4 x double> %wide.load4387
  %i.ku = fneg <4 x double> %wide.load4388
  %i.kv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kt, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4385)
  %i.kw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ku, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4386)
  %i.kx = add i32 %i.gq, %i.ko
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %wide.load4391 = load <4 x double>, ptr %i.kz, align 8, !tbaa !9, !alias.scope !35
  %wide.load4392 = load <4 x double>, ptr %i.la, align 8, !tbaa !9, !alias.scope !35
  %i.lb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kg, <4 x double> %wide.load4391, <4 x double> %i.kv)
  %i.lc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kg, <4 x double> %wide.load4392, <4 x double> %i.kw)
  %i.ld = fmul <4 x double> %wide.load4387, %broadcast.splat4394
  %i.le = fmul <4 x double> %wide.load4388, %broadcast.splat4394
  %i.lf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %broadcast.splat4382, <4 x double> %i.lb)
  %i.lg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.le, <4 x double> %broadcast.splat4382, <4 x double> %i.lc)
  store <4 x double> %i.lf, ptr %i.km, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  store <4 x double> %i.lg, ptr %i.kn, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next4395 = add nuw i64 %index4384, 8     ; 2 uses
  %i.lh = icmp eq i64 %index.next4395, %n.vec4380
  br i1 %i.lh, label %middle.block4396, label %vector.body4383, !llvm.loop !36

middle.block4396:                                 ; preds = %vector.body4383
  %cmp.n4397 = icmp eq i64 %i.jc, %n.vec4380
  br i1 %cmp.n4397, label %._crit_edge2964, label %scalar.ph4377.preheader

scalar.ph4377.preheader:                          ; preds = %vector.memcheck4335, %vector.scevcheck4333, %.lr.ph2963, %middle.block4396
  %indvars.iv3555.ph = phi i64 [ %19, %vector.memcheck4335 ], [ %19, %vector.scevcheck4333 ], [ %19, %.lr.ph2963 ], [ %i.kd, %middle.block4396 ] ; 5 uses
  %i.li = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.lj = sub i32 %indvars.iv3558, %i.li
  %xtraiter4689 = and i32 %i.lj, 1
  %lcmp.mod4690.not = icmp eq i32 %xtraiter4689, 0
  br i1 %lcmp.mod4690.not, label %scalar.ph4377.prol.loopexit, label %scalar.ph4377.prol

scalar.ph4377.prol:                               ; preds = %scalar.ph4377.preheader
  %i.lk = trunc nsw i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.lk
  %i.ll = sext i32 %.reass2966.prol to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ll ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !9
  %i.lo = trunc i64 %indvars.iv3555.ph to i32
  %i.lp = sub i32 %i.lo, %i.bk                    ; 2 uses
  %i.lq = add i32 %i.bv, %i.lp
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !9 ; 2 uses
  %i.lu = load double, ptr %52, align 8, !tbaa !9
  %i.lv = fneg double %i.lt
  %i.lw = call double @llvm.fmuladd.f64(double %i.lv, double %i.lu, double %i.ln)
  %i.lx = load double, ptr %55, align 8, !tbaa !9 ; 2 uses
  %i.ly = add i32 %i.gq, %i.lp
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lz
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !9
  %i.mc = fneg double %i.lx
  %i.md = call double @llvm.fmuladd.f64(double %i.mc, double %i.mb, double %i.lw)
  %i.me = load double, ptr %i.gs, align 8, !tbaa !9
  %i.mf = fmul double %i.lt, %i.me
  %i.mg = call double @llvm.fmuladd.f64(double %i.mf, double %i.lx, double %i.md)
  store double %i.mg, ptr %i.lm, align 8, !tbaa !9
  %indvars.iv.next3556.prol = add nsw i64 %indvars.iv3555.ph, 1
  br label %scalar.ph4377.prol.loopexit

scalar.ph4377.prol.loopexit:                      ; preds = %scalar.ph4377.prol, %scalar.ph4377.preheader
  %indvars.iv3555.unr = phi i64 [ %indvars.iv3555.ph, %scalar.ph4377.preheader ], [ %indvars.iv.next3556.prol, %scalar.ph4377.prol ]
  %i.mh = icmp eq i32 %36, %i.li
  br i1 %i.mh, label %._crit_edge2964, label %scalar.ph4377

scalar.ph4377:                                    ; preds = %scalar.ph4377.prol.loopexit, %scalar.ph4377
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556.1, %scalar.ph4377 ], [ %indvars.iv3555.unr, %scalar.ph4377.prol.loopexit ] ; 4 uses
  %i.mi = trunc nsw i64 %indvars.iv3555 to i32
  %.reass2966 = add i32 %invariant.op2965, %i.mi
  %i.mj = sext i32 %.reass2966 to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mj ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9
  %i.mm = trunc i64 %indvars.iv3555 to i32
  %i.mn = sub i32 %i.mm, %i.bk                    ; 2 uses
  %i.mo = add i32 %i.bv, %i.mn
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9 ; 2 uses
  %i.ms = load double, ptr %52, align 8, !tbaa !9
  %i.mt = fneg double %i.mr
  %i.mu = call double @llvm.fmuladd.f64(double %i.mt, double %i.ms, double %i.ml)
  %i.mv = load double, ptr %55, align 8, !tbaa !9 ; 2 uses
  %i.mw = add i32 %i.gq, %i.mn
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mx
  %i.mz = load double, ptr %i.my, align 8, !tbaa !9
  %i.na = fneg double %i.mv
  %i.nb = call double @llvm.fmuladd.f64(double %i.na, double %i.mz, double %i.mu)
  %i.nc = load double, ptr %i.gs, align 8, !tbaa !9
  %i.nd = fmul double %i.mr, %i.nc
  %i.ne = call double @llvm.fmuladd.f64(double %i.nd, double %i.mv, double %i.nb)
  store double %i.ne, ptr %i.mk, align 8, !tbaa !9
  %indvars.iv.next3556 = add nsw i64 %indvars.iv3555, 1 ; 2 uses
  %i.nf = trunc nsw i64 %indvars.iv.next3556 to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.nf
  %i.ng = sext i32 %.reass2966.1 to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  %i.nj = trunc i64 %indvars.iv.next3556 to i32
  %i.nk = sub i32 %i.nj, %i.bk                    ; 2 uses
  %i.nl = add i32 %i.bv, %i.nk
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !9 ; 2 uses
  %i.np = load double, ptr %52, align 8, !tbaa !9
  %i.nq = fneg double %i.no
  %i.nr = call double @llvm.fmuladd.f64(double %i.nq, double %i.np, double %i.ni)
  %i.ns = load double, ptr %55, align 8, !tbaa !9 ; 2 uses
  %i.nt = add i32 %i.gq, %i.nk
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !9
  %i.nx = fneg double %i.ns
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double %i.nw, double %i.nr)
  %i.nz = load double, ptr %i.gs, align 8, !tbaa !9
  %i.oa = fmul double %i.no, %i.nz
  %i.ob = call double @llvm.fmuladd.f64(double %i.oa, double %i.ns, double %i.ny)
  store double %i.ob, ptr %i.nh, align 8, !tbaa !9
  %indvars.iv.next3556.1 = add nsw i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4377, !llvm.loop !37

._crit_edge2964:                                  ; preds = %scalar.ph4377.prol.loopexit, %scalar.ph4377, %middle.block4396, %bb.t
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4317

iter.check4317:                                   ; preds = %._crit_edge2964
  %i.oc = trunc nsw i64 %indvars.iv3565 to i32    ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985, %i.oc
  %i.od = sext i32 %.reass2968.reass to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.od ; 4 uses
  %i.of = mul i32 %.0255729803502, %i.oc
  %invariant.op2976 = add i32 %i.of, %i.bq        ; 3 uses
  br i1 %min.iters.check4295, label %vec.epilog.scalar.ph4318.preheader, label %vector.scevcheck4274

vector.scevcheck4274:                             ; preds = %iter.check4317
  %i.og = add i32 %45, %i.iv
  %i.oh = icmp slt i32 %i.og, %45
  %i.oi = or i1 %i.oh, %i.ix
  br i1 %i.oi, label %vec.epilog.scalar.ph4318.preheader, label %vector.memcheck4276

vector.memcheck4276:                              ; preds = %vector.scevcheck4274
  %bound0 = icmp ult ptr %scevgep4278, %scevgep4284
  %bound1 = icmp ult ptr %i.oe, %scevgep4282
  %found.conflict = and i1 %bound0, %bound1
  %bound04289 = icmp ult ptr %scevgep4278, %scevgep4288
  %bound14290 = icmp ult ptr %scevgep4286, %scevgep4282
  %found.conflict4291 = and i1 %bound04289, %bound14290
  %conflict.rdx4292 = or i1 %found.conflict, %found.conflict4291
  br i1 %conflict.rdx4292, label %vec.epilog.scalar.ph4318.preheader, label %vector.main.loop.iter.check4296

vector.main.loop.iter.check4296:                  ; preds = %vector.memcheck4276
  br i1 %min.iters.check4297, label %vec.epilog.ph4321, label %vector.ph4298

vector.ph4298:                                    ; preds = %vector.main.loop.iter.check4296
  %i.oj = load double, ptr %i.oe, align 8, !tbaa !9, !alias.scope !38
  %.scalar = fneg double %i.oj
  %i.ok = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.ol = shufflevector <4 x double> %i.ok, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4302

vector.body4302:                                  ; preds = %vector.body4302, %vector.ph4298
  %index4303 = phi i64 [ 0, %vector.ph4298 ], [ %index.next4312, %vector.body4302 ] ; 2 uses
  %i.om = trunc i64 %index4303 to i32
  %i.on = add i32 %i.ee, %i.om                    ; 2 uses
  %i.oo = add i32 %invariant.op2974, %i.on
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.op ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 96
  %wide.load4304.a = load <4 x double>, ptr %i.oq, align 8, !tbaa !9, !alias.scope !41
  %wide.load4305.a = load <4 x double>, ptr %i.or, align 8, !tbaa !9, !alias.scope !41
  %wide.load4306.a = load <4 x double>, ptr %i.os, align 8, !tbaa !9, !alias.scope !41
  %wide.load4307.a = load <4 x double>, ptr %i.ot, align 8, !tbaa !9, !alias.scope !41
  %i.ou = add i32 %invariant.op2976, %i.on
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ov ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 64 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 96 ; 2 uses
  %wide.load4308.a = load <4 x double>, ptr %i.ow, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4309 = load <4 x double>, ptr %i.ox, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4310 = load <4 x double>, ptr %i.oy, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4311 = load <4 x double>, ptr %i.oz, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.pa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ol, <4 x double> %wide.load4304.a, <4 x double> %wide.load4308.a)
  %i.pb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ol, <4 x double> %wide.load4305.a, <4 x double> %wide.load4309)
  %i.pc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ol, <4 x double> %wide.load4306.a, <4 x double> %wide.load4310)
  %i.pd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ol, <4 x double> %wide.load4307.a, <4 x double> %wide.load4311)
  store <4 x double> %i.pa, ptr %i.ow, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pb, ptr %i.ox, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pc, ptr %i.oy, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.pd, ptr %i.oz, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4312 = add nuw i64 %index4303, 16    ; 2 uses
  %i.pe = icmp eq i64 %index.next4312, %n.vec4299
  br i1 %i.pe, label %middle.block4313, label %vector.body4302, !llvm.loop !46

middle.block4313:                                 ; preds = %vector.body4302
  br i1 %cmp.n4314, label %._crit_edge2973, label %vec.epilog.iter.check4319

vec.epilog.iter.check4319:                        ; preds = %middle.block4313
  br i1 %min.epilog.iters.check4320, label %vec.epilog.scalar.ph4318.preheader, label %vec.epilog.ph4321, !prof !18

vec.epilog.ph4321:                                ; preds = %vector.main.loop.iter.check4296, %vec.epilog.iter.check4319
  %vec.epilog.resume.val4315 = phi i64 [ %n.vec4299, %vec.epilog.iter.check4319 ], [ 0, %vector.main.loop.iter.check4296 ]
  %i.pf = load double, ptr %i.oe, align 8, !tbaa !9, !alias.scope !38
  %.scalar4671 = fneg double %i.pf
  %i.pg = insertelement <4 x double> poison, double %.scalar4671, i64 0
  %i.ph = shufflevector <4 x double> %i.pg, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4325

vec.epilog.vector.body4325:                       ; preds = %vec.epilog.vector.body4325, %vec.epilog.ph4321
  %index4326 = phi i64 [ %vec.epilog.resume.val4315, %vec.epilog.ph4321 ], [ %index.next4329, %vec.epilog.vector.body4325 ] ; 2 uses
  %i.pi = trunc i64 %index4326 to i32
  %i.pj = add i32 %i.ee, %i.pi                    ; 2 uses
  %i.pk = add i32 %invariant.op2974, %i.pj
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pl
  %wide.load4327 = load <4 x double>, ptr %i.pm, align 8, !tbaa !9, !alias.scope !41
  %i.pn = add i32 %invariant.op2976, %i.pj
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.po ; 2 uses
  %wide.load4328 = load <4 x double>, ptr %i.pp, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.pq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ph, <4 x double> %wide.load4327, <4 x double> %wide.load4328)
  store <4 x double> %i.pq, ptr %i.pp, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4329 = add nuw i64 %index4326, 4     ; 2 uses
  %i.pr = icmp eq i64 %index.next4329, %n.vec4322
  br i1 %i.pr, label %vec.epilog.middle.block4330, label %vec.epilog.vector.body4325, !llvm.loop !47

vec.epilog.middle.block4330:                      ; preds = %vec.epilog.vector.body4325
  br i1 %cmp.n4331, label %._crit_edge2973, label %vec.epilog.scalar.ph4318.preheader

vec.epilog.scalar.ph4318.preheader:               ; preds = %vector.memcheck4276, %vector.scevcheck4274, %iter.check4317, %vec.epilog.iter.check4319, %vec.epilog.middle.block4330
  %indvars.iv3562.ph = phi i64 [ %i.gy, %iter.check4317 ], [ %i.gy, %vector.scevcheck4274 ], [ %i.gy, %vector.memcheck4276 ], [ %i.iz, %vec.epilog.iter.check4319 ], [ %i.ja, %vec.epilog.middle.block4330 ]
  br label %vec.epilog.scalar.ph4318

vec.epilog.scalar.ph4318:                         ; preds = %vec.epilog.scalar.ph4318.preheader, %vec.epilog.scalar.ph4318
  %indvars.iv3562 = phi i64 [ %indvars.iv.next3563, %vec.epilog.scalar.ph4318 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4318.preheader ] ; 3 uses
  %i.ps = load double, ptr %i.oe, align 8, !tbaa !9
  %i.pt = trunc nuw nsw i64 %indvars.iv3562 to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.pt
  %i.pu = sext i32 %.reass2975 to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pu
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !9
  %.reass2977 = add i32 %invariant.op2976, %i.pt
  %i.px = sext i32 %.reass2977 to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.px ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !9
  %i.qa = fneg double %i.ps
  %i.qb = call double @llvm.fmuladd.f64(double %i.qa, double %i.pw, double %i.pz)
  store double %i.qb, ptr %i.py, align 8, !tbaa !9
  %indvars.iv.next3563 = add nuw nsw i64 %indvars.iv3562, 1
  %.not2697.not = icmp samesign ult i64 %indvars.iv3562, %i.gz
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4318, label %._crit_edge2973, !llvm.loop !48

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4318, %middle.block4313, %vec.epilog.middle.block4330, %._crit_edge2964
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
  %i.qc = add i32 %.neg.le, %i.ac
  %i.qd = add i32 %i.qc, %i.bs
  %i.qe = sext i32 %i.bl to i64
  %i.qf = zext i32 %i.bk to i64
  %i.qg = add i32 %i.bo, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2998, %._crit_edge2990
  %indvars.iv3574 = phi i64 [ %i.qf, %.lr.ph2998 ], [ %indvars.iv.next3575, %._crit_edge2990 ] ; 4 uses
  %indvars.iv3570 = phi i32 [ %i.ed, %.lr.ph2998 ], [ %indvars.iv.next3571, %._crit_edge2990 ] ; 2 uses
  %.42585.neg2996 = phi i32 [ %.neg.le, %.lr.ph2998 ], [ %.42585.neg, %._crit_edge2990 ] ; 2 uses
  %i.qh = trunc i64 %indvars.iv3574 to i32
  %i.qi = sub i32 %i.qh, %.pre3786                ; 2 uses
  %i.qj = call i32 @llvm.smax.i32(i32 %i.qi, i32 %i.bp)
  %.not26942986 = icmp sgt i32 %i.qj, %i.bl
  br i1 %.not26942986, label %._crit_edge2990, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.v
  %i.qk = call i32 @llvm.smax.i32(i32 %indvars.iv3570, i32 %i.bp)
  %smax = sext i32 %i.qk to i64
  %i.ql = add i32 %.42585.neg2996, %i.bk
  %i.qm = trunc i64 %indvars.iv3574 to i32
  %i.qn = mul i32 %i.n, %i.qm                     ; 2 uses
  %i.qo = add i32 %i.ql, %i.qn
  %i.qp = add i32 %i.qo, %i.bq
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qq
  %i.qs = add i32 %i.qn, %.42585.neg2996
  %invariant.op2991 = add i32 %i.qs, %i.bq
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph2989, %bb.w
  %indvars.iv3572 = phi i64 [ %smax, %.lr.ph2989 ], [ %indvars.iv.next3573, %bb.w ] ; 3 uses
  %i.qt = trunc nsw i64 %indvars.iv3572 to i32    ; 2 uses
  %i.qu = add i32 %i.qd, %i.qt
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.qv
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !9
  %i.qy = load double, ptr %i.qr, align 8, !tbaa !9
  %.reass2992 = add i32 %invariant.op2991, %i.qt
  %i.qz = sext i32 %.reass2992 to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qz ; 2 uses
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !9
  %i.rc = fneg double %i.qx
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.qy, double %i.rb)
  store double %i.rd, ptr %i.ra, align 8, !tbaa !9
  %indvars.iv.next3573 = add nsw i64 %indvars.iv3572, 1
  %.not2694.not = icmp slt i64 %indvars.iv3572, %i.qe
  br i1 %.not2694.not, label %bb.w, label %._crit_edge2990, !llvm.loop !50

._crit_edge2990:                                  ; preds = %bb.w, %bb.v
  %indvars.iv.next3575 = add i64 %indvars.iv3574, 1 ; 2 uses
  %i.re = trunc i64 %indvars.iv3574 to i32
  %.42585.neg = xor i32 %i.re, -1
  %indvars.iv.next3571 = add i32 %indvars.iv3570, 1
  %lftr.wideiv3577 = trunc i64 %indvars.iv.next3575 to i32
  %exitcond3578.not = icmp eq i32 %i.qg, %lftr.wideiv3577
  br i1 %exitcond3578.not, label %._crit_edge2999, label %bb.v, !llvm.loop !51

._crit_edge2999:                                  ; preds = %._crit_edge2990
  store i32 %i.qi, ptr %i.d, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge2999, %bb.u
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.rf = sub nsw i32 %.pre3787.a, %i.ay
  store i32 %i.rf, ptr %i.c, align 4, !tbaa !8
  %i.rg = fdiv double 1.000000e+00, %i.by
  store double %i.rg, ptr %i.e, align 8, !tbaa !9
  %i.rh = mul nsw i32 %i.bk, %i.t
  %i.ri = add nsw i32 %i.rh, %i.ba
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.rj ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.rk, ptr noundef nonnull @c__1) #4
  %i.rl = load i32, ptr %i.l, align 4, !tbaa !8   ; 3 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.rn = load i32, ptr %2, align 4, !tbaa !8
  %i.ro = sub nsw i32 %i.rn, %i.ay
  store i32 %i.ro, ptr %i.c, align 4, !tbaa !8
  %i.rp = sub i32 %i.bv, %i.rl
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.rq
  %i.rs = sub nsw i32 %i.bk, %i.rl
  %i.rt = mul nsw i32 %i.rs, %i.t
  %i.ru = add nsw i32 %i.rt, %i.ba
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.rv
  call void @dger_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.rk, ptr noundef nonnull @c__1, ptr noundef %i.rr, ptr noundef nonnull @c__1, ptr noundef %i.rw, ptr noundef nonnull %10) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.rx = sub i32 %i.bk, %i.bo
  %i.ry = load i32, ptr %i.j, align 4, !tbaa !8
  %i.rz = mul nsw i32 %i.bo, %i.n
  %i.sa = add i32 %i.rx, %i.rz
  %i.sb = add i32 %i.sa, %i.ry
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sc
  %i.se = load double, ptr %i.sd, align 8, !tbaa !9
  store double %i.se, ptr %i.k, align 8, !tbaa !9
  %.pre3847.a = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %bb.aa
  %i.sf = phi i32 [ %.pre3847.a, %bb.aa ], [ %i.bj, %bb.r ] ; 2 uses
  %.025322917 = phi i32 [ 1, %bb.aa ], [ 0, %bb.r ] ; 7 uses
  %.not26472913 = phi i1 [ false, %bb.aa ], [ true, %bb.r ] ; 5 uses
  %.1260627722796 = phi i32 [ %i.bk, %bb.aa ], [ %i.bu, %bb.r ] ; 19 uses
  %.1254827752794 = phi i32 [ %i.bl, %bb.aa ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327782792 = phi i32 [ %i.bo, %bb.aa ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927812790 = phi i32 [ %i.br, %bb.aa ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.sg = add nsw i32 %i.sf, -1
  store i32 %i.sg, ptr %i.c, align 4, !tbaa !8
  %.not26793063 = icmp slt i32 %i.sf, 2
  br i1 %.not26793063, label %._crit_edge3068, label %.lr.ph3067

.lr.ph3067:                                       ; preds = %bb.ab
  %i.sh = mul nsw i32 %.1260627722796, %i.q
  %i.si = add i32 %i.sh, %i.ac
  %i.sj = add i32 %.1260627722796, 1
  %i.sk = sext i32 %.1260627722796 to i64
  %i.sl = sext i32 %.1254827752794 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph3067, %.loopexit2883
  %indvars.iv3619 = phi i64 [ 1, %.lr.ph3067 ], [ %indvars.iv.next3620, %.loopexit2883 ] ; 7 uses
  %indvars.iv3617 = phi i64 [ -1, %.lr.ph3067 ], [ %indvars.iv.next3618, %.loopexit2883 ] ; 4 uses
  %.pre3848 = load i32, ptr %2, align 4, !tbaa !8 ; 4 uses
  %.pre3849 = load i32, ptr %3, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26472913, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sm = sub nsw i64 %i.sk, %indvars.iv3619      ; 3 uses
  %i.sn = trunc nsw i64 %i.sm to i32              ; 2 uses
  %i.so = add nsw i32 %.pre3849, %i.sn            ; 3 uses
  %i.sp = icmp slt i32 %i.so, %.pre3848
  %i.sq = icmp sgt i64 %i.sm, 1
  %or.cond2757 = and i1 %i.sq, %i.sp
  br i1 %or.cond2757, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.sr = mul nsw i32 %i.so, %i.n
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv3619
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %i.sv = getelementptr [8 x i8], ptr %i.su, i64 %i.ss
  %i.sw = trunc nuw nsw i64 %indvars.iv3619 to i32
  %i.sx = add i32 %i.ay, %i.sw
  %i.sy = sub i32 %.1260627722796, %i.sx          ; 2 uses
  %i.sz = add i32 %i.sy, %.pre3849
  %i.ta = add i32 %i.sz, %.pre3848
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.tb
  %i.td = sub nsw i32 %i.so, %i.ay
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.te
  call void @dlartg_(ptr noundef %i.sv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.tc, ptr noundef nonnull %i.tf, ptr noundef nonnull %i.g) #4
  %i.tg = trunc nsw i64 %indvars.iv3617 to i32
  %i.th = add i32 %i.si, %i.tg
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ti
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !9
  %i.tl = fneg double %i.tk
  %i.tm = load double, ptr %i.k, align 8, !tbaa !9
  %i.tn = fmul double %i.tm, %i.tl                ; 2 uses
  %i.to = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.tp = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.tq = add i32 %i.sy, %i.to
  %i.tr = add i32 %i.tq, %i.tp
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ts ; 2 uses
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !9
  %i.tv = add nsw i32 %i.tp, %i.sn                ; 2 uses
  %i.tw = sub nsw i32 %i.tv, %i.ay
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.tx ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !9
  %i.ua = mul nsw i32 %i.tv, %i.n
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr [8 x i8], ptr %i.p, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 8      ; 3 uses
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !9
  %i.uf = fneg double %i.ue
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
vec.epilog.iter.check:                            ; preds = %middle.block4263
  %min.epilog.iters.check = icmp eq i64 %i.aov, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4255, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4266 = and i64 %i.aop, 8589934588         ; 3 uses
  %i.api = add nuw nsw i64 %n.vec4266, %i.aol
  %broadcast.splatinsert4267 = insertelement <4 x double> poison, double %i.aoi, i64 0
  %broadcast.splat4268 = shufflevector <4 x double> %broadcast.splatinsert4267, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4757 = add i32 %i.bk, %i.aok
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4269 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4271, %vec.epilog.vector.body ] ; 2 uses
  %i.apj = trunc i64 %index4269 to i32
  %.reass4758 = add i32 %i.apj, %invariant.op4757
  %i.apk = sext i32 %.reass4758 to i64
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apk ; 2 uses
  %wide.load4270 = load <4 x double>, ptr %i.apl, align 8, !tbaa !9
  %i.apm = fdiv <4 x double> %wide.load4270, %broadcast.splat4268
  store <4 x double> %i.apm, ptr %i.apl, align 8, !tbaa !9
  %index.next4271 = add nuw i64 %index4269, 4     ; 2 uses
  %i.apn = icmp eq i64 %index.next4271, %n.vec4266
  br i1 %i.apn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4272 = icmp eq i64 %i.aop, %n.vec4266
  br i1 %cmp.n4272, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck4250, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3579.ph = phi i64 [ %i.aol, %iter.check ], [ %i.aol, %vector.scevcheck4250 ], [ %i.aow, %vec.epilog.iter.check ], [ %i.api, %vec.epilog.middle.block ] ; 3 uses
  %i.apo = add i32 %i.bo, 1
  %i.app = trunc i64 %indvars.iv3579.ph to i32    ; 2 uses
  %i.apq = sub i32 %i.apo, %i.app
  %i.apr = sub i32 %i.bo, %i.app
  %xtraiter4692 = and i32 %i.apq, 3               ; 2 uses
  %lcmp.mod4693.not = icmp eq i32 %xtraiter4692, 0
  br i1 %lcmp.mod4693.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3579.prol = phi i64 [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4694 = phi i32 [ %prol.iter4694.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aps = trunc i64 %indvars.iv3579.prol to i32
  %i.apt = add i32 %i.aok, %i.aps
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apu ; 2 uses
  %i.apw = load double, ptr %i.apv, align 8, !tbaa !9
  %i.apx = fdiv double %i.apw, %i.aoi
  store double %i.apx, ptr %i.apv, align 8, !tbaa !9
  %indvars.iv.next3580.prol = add i64 %indvars.iv3579.prol, 1 ; 2 uses
  %prol.iter4694.next = add i32 %prol.iter4694, 1 ; 2 uses
  %prol.iter4694.cmp.not = icmp eq i32 %prol.iter4694.next, %xtraiter4692
  br i1 %prol.iter4694.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !71

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3579.unr = phi i64 [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ]
  %i.apy = icmp ult i32 %i.apr, 3
  br i1 %i.apy, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4759 = add i32 1, %i.aok
  %invariant.op4761.a = add i32 2, %i.aok
  %invariant.op4763.a = add i32 3, %i.aok
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3579 = phi i64 [ %indvars.iv3579.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3580.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.apz = trunc i64 %indvars.iv3579 to i32
  %i.aqa = add i32 %i.aok, %i.apz
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqb ; 2 uses
  %i.aqd = load double, ptr %i.aqc, align 8, !tbaa !9
  %i.aqe = fdiv double %i.aqd, %i.aoi
  store double %i.aqe, ptr %i.aqc, align 8, !tbaa !9
  %i.aqf = trunc i64 %indvars.iv3579 to i32
  %.reass4760 = add i32 %i.aqf, %invariant.op4759
  %i.aqg = sext i32 %.reass4760 to i64
  %i.aqh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqg ; 2 uses
  %i.aqi = load double, ptr %i.aqh, align 8, !tbaa !9
  %i.aqj = fdiv double %i.aqi, %i.aoi
  store double %i.aqj, ptr %i.aqh, align 8, !tbaa !9
  %i.aqk = trunc i64 %indvars.iv3579 to i32
  %.reass4762 = add i32 %i.aqk, %invariant.op4761.a
  %i.aql = sext i32 %.reass4762 to i64
  %i.aqm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aql ; 2 uses
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !9
  %i.aqo = fdiv double %i.aqn, %i.aoi
  store double %i.aqo, ptr %i.aqm, align 8, !tbaa !9
  %i.aqp = trunc i64 %indvars.iv3579 to i32
  %.reass4764 = add i32 %i.aqp, %invariant.op4763.a
  %i.aqq = sext i32 %.reass4764 to i64
  %i.aqr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqq ; 2 uses
  %i.aqs = load double, ptr %i.aqr, align 8, !tbaa !9
  %i.aqt = fdiv double %i.aqs, %i.aoi
  store double %i.aqt, ptr %i.aqr, align 8, !tbaa !9
  %indvars.iv.next3580.3 = add nsw i64 %indvars.iv3579, 4 ; 2 uses
  %lftr.wideiv3582.3 = trunc i64 %indvars.iv.next3580.3 to i32
  %exitcond3583.not.3 = icmp eq i32 %i.aom, %lftr.wideiv3582.3
  br i1 %exitcond3583.not.3, label %._crit_edge3005, label %vec.epilog.scalar.ph, !llvm.loop !72

._crit_edge3005:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4263, %vec.epilog.middle.block, %bb.bo
  store i32 1, ptr %i.b, align 4, !tbaa !8
  %i.aqu = sub nsw i32 %i.bk, %.pre3786           ; 4 uses
  store i32 %i.aqu, ptr %i.c, align 4, !tbaa !8
  store i32 %i.bk, ptr %i.d, align 4, !tbaa !8
  %i.aqv = call i32 @llvm.smax.i32(i32 %i.aqu, i32 1) ; 4 uses
  %.not2654.not3006 = icmp slt i32 %i.aqv, %.02605.ph
  br i1 %.not2654.not3006, label %.lr.ph3009.preheader, label %._crit_edge3010

.lr.ph3009.preheader:                             ; preds = %._crit_edge3005
  %i.aqw = zext nneg i32 %i.aqv to i64            ; 4 uses
  %wide.trip.count3587 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.aqx = sub nsw i64 %wide.trip.count3587, %i.aqw
  %xtraiter4695 = and i64 %i.aqx, 3               ; 2 uses
  %lcmp.mod4696.not = icmp eq i64 %xtraiter4695, 0
  br i1 %lcmp.mod4696.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol

.lr.ph3009.prol:                                  ; preds = %.lr.ph3009.preheader, %.lr.ph3009.prol
  %indvars.iv3584.prol = phi i64 [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ], [ %i.aqw, %.lr.ph3009.preheader ] ; 3 uses
  %prol.iter4697 = phi i64 [ %prol.iter4697.next, %.lr.ph3009.prol ], [ 0, %.lr.ph3009.preheader ]
  %i.aqy = mul nsw i64 %indvars.iv3584.prol, %i.bb
  %i.aqz = trunc nuw nsw i64 %indvars.iv3584.prol to i32
  %i.ara = sub i32 %.02605.ph, %i.aqz
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr [8 x i8], ptr %i.p, i64 %i.aqy
  %i.ard = getelementptr [8 x i8], ptr %i.arc, i64 %i.arb ; 2 uses
  %i.are = load double, ptr %i.ard, align 8, !tbaa !9
  %i.arf = fdiv double %i.are, %i.aoi
  store double %i.arf, ptr %i.ard, align 8, !tbaa !9
  %indvars.iv.next3585.prol = add nuw nsw i64 %indvars.iv3584.prol, 1 ; 2 uses
  %prol.iter4697.next = add i64 %prol.iter4697, 1 ; 2 uses
  %prol.iter4697.cmp.not = icmp eq i64 %prol.iter4697.next, %xtraiter4695
  br i1 %prol.iter4697.cmp.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol, !llvm.loop !73

.lr.ph3009.prol.loopexit:                         ; preds = %.lr.ph3009.prol, %.lr.ph3009.preheader
  %indvars.iv3584.unr = phi i64 [ %i.aqw, %.lr.ph3009.preheader ], [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ]
  %i.arg = sub nsw i64 %i.aqw, %wide.trip.count3587
  %i.arh = icmp ugt i64 %i.arg, -4
  br i1 %i.arh, label %._crit_edge3010, label %.lr.ph3009

.lr.ph3009:                                       ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009
  %indvars.iv3584 = phi i64 [ %indvars.iv.next3585.3, %.lr.ph3009 ], [ %indvars.iv3584.unr, %.lr.ph3009.prol.loopexit ] ; 6 uses
  %i.ari = mul nsw i64 %indvars.iv3584, %i.bb
  %i.arj = trunc nuw nsw i64 %indvars.iv3584 to i32
  %i.ark = sub i32 %.02605.ph, %i.arj
  %i.arl = sext i32 %i.ark to i64
  %i.arm = getelementptr [8 x i8], ptr %i.p, i64 %i.ari
  %i.arn = getelementptr [8 x i8], ptr %i.arm, i64 %i.arl ; 2 uses
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !9
  %i.arp = fdiv double %i.aro, %i.aoi
  store double %i.arp, ptr %i.arn, align 8, !tbaa !9
  %indvars.iv.next3585 = add nuw nsw i64 %indvars.iv3584, 1 ; 2 uses
  %i.arq = mul nsw i64 %indvars.iv.next3585, %i.bb
  %i.arr = trunc nuw nsw i64 %indvars.iv.next3585 to i32
  %i.ars = sub i32 %.02605.ph, %i.arr
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr [8 x i8], ptr %i.p, i64 %i.arq
  %i.arv = getelementptr [8 x i8], ptr %i.aru, i64 %i.art ; 2 uses
  %i.arw = load double, ptr %i.arv, align 8, !tbaa !9
  %i.arx = fdiv double %i.arw, %i.aoi
  store double %i.arx, ptr %i.arv, align 8, !tbaa !9
  %indvars.iv.next3585.1 = add nuw nsw i64 %indvars.iv3584, 2 ; 2 uses
  %i.ary = mul nsw i64 %indvars.iv.next3585.1, %i.bb
  %i.arz = trunc nuw nsw i64 %indvars.iv.next3585.1 to i32
  %i.asa = sub i32 %.02605.ph, %i.arz
  %i.asb = sext i32 %i.asa to i64
  %i.asc = getelementptr [8 x i8], ptr %i.p, i64 %i.ary
  %i.asd = getelementptr [8 x i8], ptr %i.asc, i64 %i.asb ; 2 uses
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !9
  %i.asf = fdiv double %i.ase, %i.aoi
  store double %i.asf, ptr %i.asd, align 8, !tbaa !9
  %indvars.iv.next3585.2 = add nuw nsw i64 %indvars.iv3584, 3 ; 2 uses
  %i.asg = mul nsw i64 %indvars.iv.next3585.2, %i.bb
  %i.ash = trunc nuw nsw i64 %indvars.iv.next3585.2 to i32
  %i.asi = sub i32 %.02605.ph, %i.ash
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr [8 x i8], ptr %i.p, i64 %i.asg
  %i.asl = getelementptr [8 x i8], ptr %i.ask, i64 %i.asj ; 2 uses
  %i.asm = load double, ptr %i.asl, align 8, !tbaa !9
  %i.asn = fdiv double %i.asm, %i.aoi
  store double %i.asn, ptr %i.asl, align 8, !tbaa !9
  %indvars.iv.next3585.3 = add nuw nsw i64 %indvars.iv3584, 4 ; 2 uses
  %exitcond3588.not.3 = icmp eq i64 %indvars.iv.next3585.3, %wide.trip.count3587
  br i1 %exitcond3588.not.3, label %._crit_edge3010, label %.lr.ph3009, !llvm.loop !74

._crit_edge3010:                                  ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009, %._crit_edge3005
  %.not26553023 = icmp sgt i32 %i.bp, %i.bl
  br i1 %.not26553023, label %bb.bq, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %._crit_edge3010
  %i.aso = mul nsw i32 %i.bk, %i.n
  %i.asp = sext i32 %i.aso to i64
  %i.asq = getelementptr [8 x i8], ptr %i.p, i64 %i.asp
  %i.asr = getelementptr i8, ptr %i.asq, i64 8    ; 3 uses
  store i32 %i.aqu, ptr %i.c, align 4, !tbaa !8
  %i.ass = xor i32 %i.bm, -1
  %i.ast = add i32 %i.bk, %i.ass                  ; 3 uses
  store i32 %i.ast, ptr %i.a, align 4, !tbaa !8
  %.not26743017 = icmp sgt i32 %i.aqv, %i.ast
  %i.asu = sext i32 %i.bp to i64                  ; 8 uses
  %i.asv = sext i32 %i.bk to i64                  ; 4 uses
  %i.asw = sub i32 %.02605.ph, %i.bm
  %i.asx = zext nneg i32 %i.aqv to i64
  %i.asy = zext nneg i32 %i.ast to i64
  %i.asz = mul nsw i64 %i.asu, %i.bb              ; 2 uses
  %invariant.gep4765 = getelementptr [8 x i8], ptr %i.p, i64 %i.asz
  %i.ata = sub nsw i64 %i.asv, %i.asu
  %i.atb = add nsw i64 %i.ata, 1                  ; 2 uses
  %i.atc = mul nsw i64 %i.asu, %i.bc
  %i.atd = getelementptr [8 x i8], ptr %i.s, i64 %i.atb
  %i.ate = getelementptr [8 x i8], ptr %i.atd, i64 %i.atc
  %i.atf = getelementptr [8 x i8], ptr %i.p, i64 %i.atb
  %i.atg = getelementptr [8 x i8], ptr %i.atf, i64 %i.asz
  %indvars.iv.next3590.prol = add nsw i64 %i.asu, 1
  br label %56

56:                                               ; preds = %.lr.ph3026, %._crit_edge3022
  %indvar4700 = phi i32 [ 0, %.lr.ph3026 ], [ %indvar.next4701, %._crit_edge3022 ] ; 3 uses
  %indvars.iv3599 = phi i64 [ %i.asu, %.lr.ph3026 ], [ %indvars.iv.next3600, %._crit_edge3022 ] ; 10 uses
  %indvars.iv3592 = phi i32 [ %i.asw, %.lr.ph3026 ], [ %indvars.iv.next3593, %._crit_edge3022 ] ; 2 uses
  %.not26723011 = icmp slt i64 %indvars.iv3599, %i.asu
  br i1 %.not26723011, label %._crit_edge3015, label %.lr.ph3014

.lr.ph3014:                                       ; preds = %56
  %i.ath = add i64 %indvars.iv3599, 1             ; 2 uses
  %i.ati = sub nsw i64 %i.asv, %indvars.iv3599
  %i.atj = add nsw i64 %i.ati, 1                  ; 2 uses
  %i.atk = mul nsw i64 %indvars.iv3599, %i.bb
  %i.atl = getelementptr [8 x i8], ptr %i.p, i64 %i.atj
  %i.atm = getelementptr [8 x i8], ptr %i.atl, i64 %i.atk ; 3 uses
  %i.atn = mul nsw i64 %indvars.iv3599, %i.bc
  %i.ato = getelementptr [8 x i8], ptr %i.s, i64 %i.atj
  %i.atp = getelementptr [8 x i8], ptr %i.ato, i64 %i.atn ; 3 uses
  %i.atq = and i32 %indvar4700, 1
  %lcmp.mod4703.not.not = icmp eq i32 %i.atq, 0
  br i1 %lcmp.mod4703.not.not, label %.prol.loopexit4699.unr-lcssa, label %.prol.loopexit4699

.prol.loopexit4699.unr-lcssa:                     ; preds = %.lr.ph3014
  %i.atr = sub i64 %i.ath, %i.asu
  %sext.prol = shl i64 %i.atr, 32
  %i.ats = ashr exact i64 %sext.prol, 29
  %gep4766 = getelementptr i8, ptr %invariant.gep4765, i64 %i.ats ; 2 uses
  %i.att = load double, ptr %gep4766, align 8, !tbaa !9
  %i.atu = load double, ptr %i.ate, align 8, !tbaa !9 ; 2 uses
  %i.atv = load double, ptr %i.atm, align 8, !tbaa !9
  %i.atw = fneg double %i.atu
  %i.atx = call double @llvm.fmuladd.f64(double %i.atw, double %i.atv, double %i.att)
  %i.aty = load double, ptr %i.atp, align 8, !tbaa !9 ; 2 uses
  %i.atz = load double, ptr %i.atg, align 8, !tbaa !9
  %i.aua = fneg double %i.aty
  %i.aub = call double @llvm.fmuladd.f64(double %i.aua, double %i.atz, double %i.atx)
  %i.auc = load double, ptr %i.asr, align 8, !tbaa !9
  %i.aud = fmul double %i.atu, %i.auc
  %i.aue = call double @llvm.fmuladd.f64(double %i.aud, double %i.aty, double %i.aub)
  store double %i.aue, ptr %gep4766, align 8, !tbaa !9
  br label %.prol.loopexit4699

.prol.loopexit4699:                               ; preds = %.prol.loopexit4699.unr-lcssa, %.lr.ph3014
  %indvars.iv3589.unr = phi i64 [ %i.asu, %.lr.ph3014 ], [ %indvars.iv.next3590.prol, %.prol.loopexit4699.unr-lcssa ]
  %i.auf = icmp eq i32 %indvar4700, 0
  br i1 %i.auf, label %._crit_edge3015, label %.lr.ph3014.new

.lr.ph3014.new:                                   ; preds = %.prol.loopexit4699, %.lr.ph3014.new
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.1, %.lr.ph3014.new ], [ %indvars.iv3589.unr, %.prol.loopexit4699 ] ; 7 uses
  %i.aug = mul nsw i64 %indvars.iv3589, %i.bb     ; 2 uses
  %i.auh = sub i64 %i.ath, %indvars.iv3589
  %sext = shl i64 %i.auh, 32
  %i.aui = ashr exact i64 %sext, 29
  %i.auj = getelementptr i8, ptr %i.p, i64 %i.aui
  %i.auk = getelementptr [8 x i8], ptr %i.auj, i64 %i.aug ; 2 uses
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !9
  %i.aum = sub nsw i64 %i.asv, %indvars.iv3589
  %i.aun = add nsw i64 %i.aum, 1                  ; 2 uses
  %i.auo = mul nsw i64 %indvars.iv3589, %i.bc
  %i.aup = getelementptr [8 x i8], ptr %i.s, i64 %i.aun
  %i.auq = getelementptr [8 x i8], ptr %i.aup, i64 %i.auo
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !9 ; 2 uses
  %i.aus = load double, ptr %i.atm, align 8, !tbaa !9
  %i.aut = fneg double %i.aur
  %i.auu = call double @llvm.fmuladd.f64(double %i.aut, double %i.aus, double %i.aul)
  %i.auv = load double, ptr %i.atp, align 8, !tbaa !9 ; 2 uses
  %i.auw = getelementptr [8 x i8], ptr %i.p, i64 %i.aun
  %i.aux = getelementptr [8 x i8], ptr %i.auw, i64 %i.aug
  %i.auy = load double, ptr %i.aux, align 8, !tbaa !9
  %i.auz = fneg double %i.auv
  %i.ava = call double @llvm.fmuladd.f64(double %i.auz, double %i.auy, double %i.auu)
  %i.avb = load double, ptr %i.asr, align 8, !tbaa !9
  %i.avc = fmul double %i.aur, %i.avb
  %i.avd = call double @llvm.fmuladd.f64(double %i.avc, double %i.auv, double %i.ava)
  store double %i.avd, ptr %i.auk, align 8, !tbaa !9
  %indvars.iv.next3590 = add nsw i64 %indvars.iv3589, 1 ; 3 uses
  %i.ave = mul nsw i64 %indvars.iv.next3590, %i.bb ; 2 uses
  %i.avf = sub i64 %indvars.iv3599, %indvars.iv3589
  %sext.1 = shl i64 %i.avf, 32
  %i.avg = ashr exact i64 %sext.1, 29
  %i.avh = getelementptr i8, ptr %i.p, i64 %i.avg
  %i.avi = getelementptr [8 x i8], ptr %i.avh, i64 %i.ave ; 2 uses
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !9
  %i.avk = sub nsw i64 %i.asv, %indvars.iv.next3590
  %i.avl = add nsw i64 %i.avk, 1                  ; 2 uses
  %i.avm = mul nsw i64 %indvars.iv.next3590, %i.bc
  %i.avn = getelementptr [8 x i8], ptr %i.s, i64 %i.avl
  %i.avo = getelementptr [8 x i8], ptr %i.avn, i64 %i.avm
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !9 ; 2 uses
  %i.avq = load double, ptr %i.atm, align 8, !tbaa !9
  %i.avr = fneg double %i.avp
  %i.avs = call double @llvm.fmuladd.f64(double %i.avr, double %i.avq, double %i.avj)
  %i.avt = load double, ptr %i.atp, align 8, !tbaa !9 ; 2 uses
  %i.avu = getelementptr [8 x i8], ptr %i.p, i64 %i.avl
  %i.avv = getelementptr [8 x i8], ptr %i.avu, i64 %i.ave
  %i.avw = load double, ptr %i.avv, align 8, !tbaa !9
  %i.avx = fneg double %i.avt
  %i.avy = call double @llvm.fmuladd.f64(double %i.avx, double %i.avw, double %i.avs)
  %i.avz = load double, ptr %i.asr, align 8, !tbaa !9
  %i.awa = fmul double %i.avp, %i.avz
  %i.awb = call double @llvm.fmuladd.f64(double %i.awa, double %i.avt, double %i.avy)
  store double %i.awb, ptr %i.avi, align 8, !tbaa !9
  %indvars.iv.next3590.1 = add nsw i64 %indvars.iv3589, 2 ; 2 uses
  %lftr.wideiv3594.1 = trunc i64 %indvars.iv.next3590.1 to i32
  %exitcond3595.not.1 = icmp eq i32 %indvars.iv3592, %lftr.wideiv3594.1
  br i1 %exitcond3595.not.1, label %._crit_edge3015, label %.lr.ph3014.new, !llvm.loop !75

._crit_edge3015:                                  ; preds = %.prol.loopexit4699, %.lr.ph3014.new, %56
  br i1 %.not26743017, label %._crit_edge3022, label %.lr.ph3021

.lr.ph3021:                                       ; preds = %._crit_edge3015
  %i.awc = mul nsw i64 %indvars.iv3599, %i.bc
  %i.awd = trunc nsw i64 %indvars.iv3599 to i32
  %i.awe = sub i32 %.02605.ph, %i.awd
  %i.awf = sext i32 %i.awe to i64
  %i.awg = getelementptr [8 x i8], ptr %i.s, i64 %i.awc
  %i.awh = getelementptr [8 x i8], ptr %i.awg, i64 %i.awf
  %i.awi = add i64 %indvars.iv3599, 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph3021, %bb.bp
  %indvars.iv3596 = phi i64 [ %i.asx, %.lr.ph3021 ], [ %indvars.iv.next3597, %bb.bp ] ; 5 uses
  %i.awj = load double, ptr %i.awh, align 8, !tbaa !9
  %i.awk = mul nsw i64 %indvars.iv3596, %i.bb     ; 2 uses
  %i.awl = trunc nuw nsw i64 %indvars.iv3596 to i32
  %i.awm = sub i32 %.02605.ph, %i.awl
  %i.awn = sext i32 %i.awm to i64
  %i.awo = getelementptr [8 x i8], ptr %i.p, i64 %i.awk
  %i.awp = getelementptr [8 x i8], ptr %i.awo, i64 %i.awn
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !9
  %i.awr = sub i64 %i.awi, %indvars.iv3596
  %sext4083.a = shl i64 %i.awr, 32
  %i.aws = ashr exact i64 %sext4083.a, 29
  %i.awt = getelementptr i8, ptr %i.p, i64 %i.aws
  %i.awu = getelementptr [8 x i8], ptr %i.awt, i64 %i.awk ; 2 uses
  %i.awv = load double, ptr %i.awu, align 8, !tbaa !9
  %i.aww = fneg double %i.awj
  %i.awx = call double @llvm.fmuladd.f64(double %i.aww, double %i.awq, double %i.awv)
  store double %i.awx, ptr %i.awu, align 8, !tbaa !9
  %indvars.iv.next3597 = add nuw nsw i64 %indvars.iv3596, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3596, %i.asy
  br i1 %.not2674.not, label %bb.bp, label %._crit_edge3022, !llvm.loop !76

._crit_edge3022:                                  ; preds = %bb.bp, %._crit_edge3015
  %indvars.iv.next3600 = add nsw i64 %indvars.iv3599, 1 ; 2 uses
  %indvars.iv.next3593 = add i32 %indvars.iv3592, 1
  %lftr.wideiv3602 = trunc i64 %indvars.iv.next3600 to i32
  %exitcond3603.not = icmp eq i32 %i.bk, %lftr.wideiv3602
  %indvar.next4701 = add i32 %indvar4700, 1
  br i1 %exitcond3603.not, label %._crit_edge3027, label %56, !llvm.loop !77

._crit_edge3027:                                  ; preds = %._crit_edge3022
  store i32 1, ptr %i.b, align 4, !tbaa !8
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge3027, %._crit_edge3010
  br i1 %.not26533001, label %bb.bt, label %.lr.ph3038

.lr.ph3038:                                       ; preds = %bb.bq
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !8
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !8
  %i.awy = mul nsw i32 %i.bk, %i.n
  %reass.sub3503 = sub i32 %i.awy, %.02605.ph
  %i.awz = add i32 %reass.sub3503, 2
  %i.axa = sext i32 %i.bl to i64
  %i.axb = zext i32 %i.bk to i64
  %i.axc = add i32 %i.bo, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3038, %._crit_edge3034
  %indvars.iv3609 = phi i64 [ %i.axb, %.lr.ph3038 ], [ %indvars.iv.next3610, %._crit_edge3034 ] ; 4 uses
  %indvars.iv3604 = phi i32 [ %i.aqu, %.lr.ph3038 ], [ %indvars.iv.next3605, %._crit_edge3034 ] ; 2 uses
  %i.axd = trunc i64 %indvars.iv3609 to i32
  %i.axe = sub i32 %i.axd, %.pre3786              ; 2 uses
  %i.axf = call i32 @llvm.smax.i32(i32 %i.axe, i32 %i.bp)
  %.not26713029 = icmp sgt i32 %i.axf, %i.bl
  br i1 %.not26713029, label %._crit_edge3034, label %.lr.ph3033

.lr.ph3033:                                       ; preds = %bb.br
  %i.axg = call i32 @llvm.smax.i32(i32 %indvars.iv3604, i32 %i.bp)
  %smax3606 = sext i32 %i.axg to i64
  %i.axh = trunc i64 %indvars.iv3609 to i32
  %i.axi = add i32 %i.awz, %i.axh
  %i.axj = sext i32 %i.axi to i64
  %i.axk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.axj
  %i.axl = add i64 %indvars.iv3609, 1
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph3033, %bb.bs
  %indvars.iv3607 = phi i64 [ %smax3606, %.lr.ph3033 ], [ %indvars.iv.next3608, %bb.bs ] ; 6 uses
  %i.axm = mul nsw i64 %indvars.iv3607, %i.bc
  %i.axn = trunc nsw i64 %indvars.iv3607 to i32
  %i.axo = sub i32 %.02605.ph, %i.axn
  %i.axp = sext i32 %i.axo to i64
  %i.axq = getelementptr [8 x i8], ptr %i.s, i64 %i.axm
  %i.axr = getelementptr [8 x i8], ptr %i.axq, i64 %i.axp
  %i.axs = load double, ptr %i.axr, align 8, !tbaa !9
  %i.axt = load double, ptr %i.axk, align 8, !tbaa !9
  %i.axu = mul nsw i64 %indvars.iv3607, %i.bb
  %i.axv = sub i64 %i.axl, %indvars.iv3607
  %sext4084 = shl i64 %i.axv, 32
  %i.axw = ashr exact i64 %sext4084, 29
  %i.axx = getelementptr i8, ptr %i.p, i64 %i.axw
  %i.axy = getelementptr [8 x i8], ptr %i.axx, i64 %i.axu ; 2 uses
  %i.axz = load double, ptr %i.axy, align 8, !tbaa !9
  %i.aya = fneg double %i.axs
  %i.ayb = call double @llvm.fmuladd.f64(double %i.aya, double %i.axt, double %i.axz)
  store double %i.ayb, ptr %i.axy, align 8, !tbaa !9
  %indvars.iv.next3608 = add nsw i64 %indvars.iv3607, 1
  %.not2671.not = icmp slt i64 %indvars.iv3607, %i.axa
  br i1 %.not2671.not, label %bb.bs, label %._crit_edge3034, !llvm.loop !78

._crit_edge3034:                                  ; preds = %bb.bs, %bb.br
  %indvars.iv.next3610 = add i64 %indvars.iv3609, 1 ; 2 uses
  %indvars.iv.next3605 = add i32 %indvars.iv3604, 1
  %lftr.wideiv3612 = trunc i64 %indvars.iv.next3610 to i32
  %exitcond3613.not = icmp eq i32 %i.axc, %lftr.wideiv3612
  br i1 %exitcond3613.not, label %._crit_edge3039, label %bb.br, !llvm.loop !79

._crit_edge3039:                                  ; preds = %._crit_edge3034
  store i32 %i.axe, ptr %i.a, align 4, !tbaa !8
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge3039, %bb.bq
  br i1 %.not, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ayc = sub nsw i32 %.pre3787.a, %i.ay
  store i32 %i.ayc, ptr %i.d, align 4, !tbaa !8
  %i.ayd = fdiv double 1.000000e+00, %i.aoi
  store double %i.ayd, ptr %i.e, align 8, !tbaa !9
  %i.aye = mul nsw i32 %i.bk, %i.t
  %i.ayf = add nsw i32 %i.aye, %i.ba
  %i.ayg = sext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ayg ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ayh, ptr noundef nonnull @c__1) #4
  %i.ayi = load i32, ptr %i.l, align 4, !tbaa !8  ; 3 uses
  %i.ayj = icmp sgt i32 %i.ayi, 0
  br i1 %i.ayj, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ayk = load i32, ptr %2, align 4, !tbaa !8
  %i.ayl = sub nsw i32 %i.ayk, %i.ay
  store i32 %i.ayl, ptr %i.d, align 4, !tbaa !8
  %i.aym = load i32, ptr %8, align 4, !tbaa !8
  %i.ayn = add nsw i32 %i.aym, -1
  store i32 %i.ayn, ptr %i.c, align 4, !tbaa !8
  %i.ayo = add nuw nsw i32 %i.ayi, 1
  %i.ayp = sub nsw i32 %i.bk, %i.ayi              ; 2 uses
  %i.ayq = mul nsw i32 %i.ayp, %i.q
  %i.ayr = add nsw i32 %i.ayo, %i.ayq
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ays
  %i.ayu = mul nsw i32 %i.ayp, %i.t
  %i.ayv = add nsw i32 %i.ayu, %i.ba
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ayw
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.ayh, ptr noundef nonnull @c__1, ptr noundef %i.ayt, ptr noundef nonnull %i.c, ptr noundef %i.ayx, ptr noundef nonnull %10) #4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bt
  %i.ayy = mul nsw i32 %i.bk, %i.n
  %reass.sub3504 = sub i32 %i.ayy, %.02605.ph
  %i.ayz = add i32 %reass.sub3504, 2
  %i.aza = add i32 %i.ayz, %i.bo
  %i.azb = sext i32 %i.aza to i64
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.azb
  %i.azd = load double, ptr %i.azc, align 8, !tbaa !9
  store double %i.azd, ptr %i.k, align 8, !tbaa !9
  %.pre3870 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.r, %bb.bw
  %i.aze = phi i32 [ %.pre3870, %bb.bw ], [ %i.bj, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bw ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bw ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.bk, %bb.bw ], [ %i.bu, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bl, %bb.bw ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bo, %bb.bw ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.br, %bb.bw ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.azf = add nsw i32 %i.aze, -1
  store i32 %i.azf, ptr %i.d, align 4, !tbaa !8
  %.not26573147 = icmp slt i32 %i.aze, 2
  br i1 %.not26573147, label %._crit_edge3152, label %.lr.ph3151

.lr.ph3151:                                       ; preds = %bb.bx
  %i.azg = mul nsw i32 %.1260627742809, %i.n
  %i.azh = add i32 %.1260627742809, 1
  %i.azi = sext i32 %.1260627742809 to i64
  %i.azj = sext i32 %.1254827772807 to i64
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph3151, %.loopexit2881
  %indvars.iv3645 = phi i64 [ 1, %.lr.ph3151 ], [ %indvars.iv.next3646, %.loopexit2881 ] ; 7 uses
  %.82565.neg3149 = phi i32 [ -1, %.lr.ph3151 ], [ %i.bbw, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3871, label %bb.bz

._crit_edge3871:                                  ; preds = %bb.by
  %.pre3872 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3874.a = load i32, ptr %2, align 4, !tbaa !8
  %.pre3875 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.azk = sub nsw i64 %i.azi, %indvars.iv3645    ; 5 uses
  %i.azl = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.azm = trunc nsw i64 %i.azk to i32            ; 2 uses
  %i.azn = add nsw i32 %i.azl, %i.azm             ; 2 uses
  %i.azo = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  %i.azp = icmp slt i32 %i.azn, %i.azo
  %i.azq = icmp sgt i64 %i.azk, 1
  %or.cond2759 = and i1 %i.azq, %i.azp
  %.pre3873 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br i1 %or.cond2759, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.azr = add i32 %.82565.neg3149, %i.azg
  %i.azs = add i32 %i.azr, %.pre3873
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.azt
  %i.azv = trunc nuw nsw i64 %indvars.iv3645 to i32
  %i.azw = add i32 %i.ay, %i.azv
  %i.azx = sub i32 %.1260627742809, %i.azw        ; 2 uses
  %i.azy = add i32 %i.azx, %i.azl
  %i.azz = add i32 %i.azy, %i.azo
  %i.baa = sext i32 %i.azz to i64
  %i.bab = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.baa
  %i.bac = sub nsw i32 %i.azn, %i.ay
  %i.bad = sext i32 %i.bac to i64
  %i.bae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bad
  call void @dlartg_(ptr noundef %i.azu, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bab, ptr noundef nonnull %i.bae, ptr noundef nonnull %i.g) #4
  %i.baf = mul nsw i64 %i.azk, %i.bc
  %i.bag = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3645
  %i.bah = getelementptr i8, ptr %i.bag, i64 8
  %i.bai = getelementptr [8 x i8], ptr %i.bah, i64 %i.baf
  %i.baj = load double, ptr %i.bai, align 8, !tbaa !9
  %i.bak = fneg double %i.baj
  %i.bal = load double, ptr %i.k, align 8, !tbaa !9
  %i.bam = fmul double %i.bal, %i.bak             ; 2 uses
  %i.ban = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.bao = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.bap = add i32 %i.azx, %i.ban
  %i.baq = add i32 %i.bap, %i.bao
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bar ; 2 uses
  %i.bat = load double, ptr %i.bas, align 8, !tbaa !9
  %i.bau = sub i32 %i.azm, %i.ay
  %i.bav = add i32 %i.bau, %i.bao
  %i.baw = sext i32 %i.bav to i64
  %i.bax = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.baw ; 2 uses
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %.pre3890 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %i.brw = phi i32 [ %i.brg, %bb.dg ], [ %.pre3890, %bb.dh ]
  %i.brx = add nsw i32 %.113196, -1
  %i.bry = icmp sgt i32 %.113196, 1
  br i1 %i.bry, label %bb.dg, label %._crit_edge3199.loopexit, !llvm.loop !93

._crit_edge3199.loopexit:                         ; preds = %bb.di
  %.pre3892 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge3199

._crit_edge3199:                                  ; preds = %._crit_edge3199.loopexit, %.lr.ph3203
  %i.brz = phi i32 [ %.pre3892, %._crit_edge3199.loopexit ], [ %i.bqm, %.lr.ph3203 ] ; 2 uses
  %i.bsa = add nuw nsw i32 %.1125683201, 1
  %.not2658.not = icmp slt i32 %.1125683201, %i.brz
  br i1 %.not2658.not, label %.lr.ph3203, label %._crit_edge3204, !llvm.loop !94

._crit_edge3204:                                  ; preds = %._crit_edge3199
  %.pre3893 = load i32, ptr %4, align 4, !tbaa !8 ; 6 uses
  %i.bsb = icmp sgt i32 %.pre3893, 1
  br i1 %i.bsb, label %bb.dj, label %.loopexit2884

bb.dj:                                            ; preds = %._crit_edge3204
  %i.bsc = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.bsd = shl i32 %i.bsc, 1
  %i.bse = add i32 %.1260627742809, 1
  %i.bsf = sub i32 %i.bse, %.pre3893
  %i.bsg = add i32 %i.bsf, %i.bsd                 ; 3 uses
  store i32 %i.bsg, ptr %i.c, align 4, !tbaa !8
  %i.bsh = load i32, ptr %2, align 4, !tbaa !8    ; 6 uses
  %.not2659.not3205 = icmp sgt i32 %i.bsh, %i.bsg
  br i1 %.not2659.not3205, label %.lr.ph3208, label %.loopexit2884

.lr.ph3208:                                       ; preds = %bb.dj
  %i.bsi = add i32 %i.bsc, %i.ay                  ; 8 uses
  %i.bsj = sext i32 %i.bsh to i64                 ; 11 uses
  %i.bsk = sext i32 %i.bsg to i64                 ; 3 uses
  %i.bsl = sub nsw i64 %i.bsj, %i.bsk             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bsl, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3208
  %i.bsm = xor i64 %i.bsk, -1
  %i.bsn = add nsw i64 %i.bsm, %i.bsj             ; 2 uses
  %i.bso = shl i32 %i.bsh, 1
  %i.bsp = xor i32 %i.bsi, -1
  %i.bsq = add i32 %i.bso, %i.bsp                 ; 2 uses
  %i.bsr = trunc i64 %i.bsn to i32                ; 2 uses
  %i.bss = sub i32 %i.bsq, %i.bsr
  %i.bst = icmp sgt i32 %i.bss, %i.bsq
  %i.bsu = xor i32 %i.bsi, -1
  %i.bsv = add i32 %i.bsh, %i.bsu                 ; 2 uses
  %i.bsw = sub i32 %i.bsv, %i.bsr
  %i.bsx = icmp sgt i32 %i.bsw, %i.bsv
  %i.bsy = icmp ugt i64 %i.bsn, 4294967295
  %i.bsz = or i1 %i.bsx, %i.bsy
  %i.bta = or i1 %i.bst, %i.bsz
  br i1 %i.bta, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.btb = shl nsw i64 %i.bsj, 3                  ; 3 uses
  %i.btc = add nsw i64 %i.btb, -1
  %diff.check = icmp ult i64 %i.btc, 31
  %i.btd = shl i32 %i.bsh, 1
  %i.bte = xor i32 %i.bsi, -1
  %i.btf = add i32 %i.btd, %i.bte
  %i.btg = sext i32 %i.btf to i64
  %i.bth = add nsw i64 %i.bd, %i.btg
  %i.bti = shl nsw i64 %i.bth, 3                  ; 2 uses
  %i.btj = shl nsw i64 %i.bsj, 4                  ; 2 uses
  %i.btk = sub nsw i64 %i.bti, %i.btj
  %diff.check4219.a = icmp ult i64 %i.btk, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4219.a
  %i.btl = xor i32 %i.bsi, -1
  %i.btm = add i32 %i.bsh, %i.btl
  %i.btn = sext i32 %i.btm to i64
  %i.bto = add nsw i64 %i.bd, %i.btn
  %i.btp = shl nsw i64 %i.bto, 3                  ; 2 uses
  %i.btq = sub nsw i64 %i.btj, %i.btp
  %i.btr = add nsw i64 %i.btq, -9
  %diff.check4220 = icmp ult i64 %i.btr, 31
  %conflict.rdx4221 = or i1 %conflict.rdx, %diff.check4220
  %i.bts = sub nsw i64 %i.bti, %i.btb
  %diff.check4222 = icmp ult i64 %i.bts, 24
  %conflict.rdx4223 = or i1 %conflict.rdx4221, %diff.check4222
  %i.btt = sub nsw i64 %i.btp, %i.btb
  %diff.check4224 = icmp ult i64 %i.btt, 24
  %conflict.rdx4225 = or i1 %conflict.rdx4223, %diff.check4224
  br i1 %conflict.rdx4225, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bsl, -4                     ; 3 uses
  %i.btu = sub nsw i64 %i.bsj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.btv = xor i64 %index, -1
  %i.btw = add i64 %i.btv, %i.bsj                 ; 3 uses
  %i.btx = add nsw i64 %i.btw, %i.bsj             ; 2 uses
  %i.bty = trunc nsw i64 %i.btx to i32
  %i.btz = sub i32 %i.bty, %i.bsi
  %i.bua = sext i32 %i.btz to i64
  %i.bub = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bua
  %i.buc = getelementptr inbounds i8, ptr %i.bub, i64 -24
  %wide.load = load <4 x double>, ptr %i.buc, align 8, !tbaa !9
  %i.bud = sub nsw i64 %i.btx, %i.bd
  %i.bue = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bud
  %i.buf = getelementptr inbounds i8, ptr %i.bue, i64 -24
  store <4 x double> %wide.load, ptr %i.buf, align 8, !tbaa !9
  %i.bug = trunc nsw i64 %i.btw to i32
  %i.buh = sub i32 %i.bug, %i.bsi
  %i.bui = sext i32 %i.buh to i64
  %i.buj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bui
  %i.buk = getelementptr inbounds i8, ptr %i.buj, i64 -24
  %wide.load4226 = load <4 x double>, ptr %i.buk, align 8, !tbaa !9
  %i.bul = sub nsw i64 %i.btw, %i.bd
  %i.bum = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bul
  %i.bun = getelementptr inbounds i8, ptr %i.bum, i64 -24
  store <4 x double> %wide.load4226, ptr %i.bun, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.buo = icmp eq i64 %index.next, %n.vec
  br i1 %i.buo, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bsl, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3208, %middle.block
  %indvars.iv3658.ph = phi i64 [ %i.bsj, %vector.memcheck ], [ %i.bsj, %vector.scevcheck ], [ %i.bsj, %.lr.ph3208 ], [ %i.btu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3658 = phi i64 [ %indvars.iv.next3659, %scalar.ph ], [ %indvars.iv3658.ph, %scalar.ph.preheader ]
  %indvars.iv.next3659 = add nsw i64 %indvars.iv3658, -1 ; 5 uses
  %i.bup = add nsw i64 %indvars.iv.next3659, %i.bsj ; 2 uses
  %i.buq = trunc nsw i64 %i.bup to i32
  %i.bur = sub i32 %i.buq, %i.bsi
  %i.bus = sext i32 %i.bur to i64
  %i.but = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bus
  %i.buu = load double, ptr %i.but, align 8, !tbaa !9
  %i.buv = sub nsw i64 %i.bup, %i.bd
  %i.buw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buv
  store double %i.buu, ptr %i.buw, align 8, !tbaa !9
  %i.bux = trunc nsw i64 %indvars.iv.next3659 to i32
  %i.buy = sub i32 %i.bux, %i.bsi
  %i.buz = sext i32 %i.buy to i64
  %i.bva = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.buz
  %i.bvb = load double, ptr %i.bva, align 8, !tbaa !9
  %i.bvc = sub nsw i64 %indvars.iv.next3659, %i.bd
  %i.bvd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvc
  store double %i.bvb, ptr %i.bvd, align 8, !tbaa !9
  %.not2659.not = icmp sgt i64 %indvars.iv.next3659, %i.bsk
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !96

.loopexit2884.sink.split:                         ; preds = %bb.cq, %._crit_edge3174, %bb.au, %._crit_edge3090
  %.ph4089.sink = phi i32 [ %i.abh, %bb.au ], [ %.pre3859, %._crit_edge3090 ], [ %.pre3884, %._crit_edge3174 ], [ %i.bif, %bb.cq ] ; 2 uses
  %.sink4180 = phi ptr [ %i.b, %bb.au ], [ %i.b, %._crit_edge3090 ], [ %i.c, %._crit_edge3174 ], [ %i.c, %bb.cq ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.au ], [ %.025322917, %._crit_edge3090 ], [ %.025322918, %._crit_edge3174 ], [ %.025322918, %bb.cq ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.au ], [ %.1253927812790, %._crit_edge3090 ], [ %.1253927832803, %._crit_edge3174 ], [ %.1253927832803, %bb.cq ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.au ], [ %.1254327782792, %._crit_edge3090 ], [ %.1254327802805, %._crit_edge3174 ], [ %.1254327802805, %bb.cq ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.au ], [ %.1254827752794, %._crit_edge3090 ], [ %.1254827772807, %._crit_edge3174 ], [ %.1254827772807, %bb.cq ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.au ], [ %.1260627722796, %._crit_edge3090 ], [ %.1260627742809, %._crit_edge3174 ], [ %.1260627742809, %bb.cq ]
  %i.bve = add nsw i32 %.ph4089.sink, -1
  store i32 %i.bve, ptr %.sink4180, align 4, !tbaa !8
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4238, %scalar.ph, %middle.block4247, %middle.block, %.loopexit2884.sink.split, %._crit_edge3195, %._crit_edge3113, %bb.bn, %bb.dj, %._crit_edge3204, %._crit_edge3122
  %i.bvf = phi i32 [ %.pre3893, %._crit_edge3204 ], [ %.pre3893, %bb.dj ], [ %.pre3869, %._crit_edge3122 ], [ %.pre3869, %bb.bn ], [ %.pre3865, %._crit_edge3113 ], [ %.pre3889, %._crit_edge3195 ], [ %.ph4089.sink, %.loopexit2884.sink.split ], [ %.pre3893, %middle.block ], [ %.pre3869, %middle.block4247 ], [ %.pre3893, %scalar.ph ], [ %.pre3869, %scalar.ph4238 ]
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
  %i.bvg = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4136 = getelementptr [8 x i8], ptr %i.s, i64 %i.bvg
  %invariant.gep4134 = getelementptr [8 x i8], ptr %i.s, i64 %i.bvg ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4782 = sub i32 1, %i.ay
  %invariant.op4783.a = sub i32 2, %i.ay
  %invariant.op4784 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bvh = add i32 %i.n, -1
  %57 = shl nsw i64 %i.o, 3                       ; 6 uses
  %scevgep4517.a = getelementptr i8, ptr %5, i64 %57
  %58 = shl nsw i64 %i.r, 3                       ; 2 uses
  %59 = add nsw i64 %58, 8                        ; 3 uses
  %scevgep4521 = getelementptr i8, ptr %7, i64 %59
  %scevgep4523 = getelementptr i8, ptr %5, i64 %57
  %scevgep4577.a = getelementptr i8, ptr %5, i64 %57
  %60 = add nsw i64 %57, 8                        ; 3 uses
  %scevgep4579.a = getelementptr i8, ptr %5, i64 %60
  %scevgep4582.a = getelementptr i8, ptr %7, i64 %58
  %scevgep4584.a = getelementptr i8, ptr %7, i64 %59
  %scevgep4586.a = getelementptr i8, ptr %7, i64 %59
  %scevgep4588 = getelementptr i8, ptr %5, i64 %57
  %scevgep4590 = getelementptr i8, ptr %5, i64 %60
  %scevgep4592 = getelementptr i8, ptr %5, i64 %60
  %i.bvi = getelementptr i8, ptr %5, i64 %57
  %scevgep4594 = getelementptr i8, ptr %i.bvi, i64 16
  %invariant.op4803 = sub i32 1, %i.ay
  %invariant.op4804 = sub i32 2, %i.ay
  %invariant.op4805 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3819.a = phi i32 [ %.pre3786, %.outer.us.preheader ], [ %.pre3819.be, %.outer.us.backedge ] ; 6 uses
  %i.bvj = phi i32 [ %i.bj, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dk, label %.lr.ph3212.us

bb.dk:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.cwv, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cwy, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bvk = sub nsw i32 %.22607.ph.us, %.pre3819.a ; 2 uses
  %i.bvl = icmp slt i32 %i.bvk, 2
  br i1 %i.bvl, label %.loopexit2877, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dk
  %.125332894.us = phi i32 [ 0, %bb.dk ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dk ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bvk, %bb.dk ], [ %i.cwr, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dk ], [ %i.cxa, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dk ], [ %i.cwv, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dk ], [ %i.cwy, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bvm = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.bvn = sub nsw i32 %i.ay, %i.bvm
  %i.bvo = icmp slt i32 %.32608.us, %i.bvn
  br i1 %i.bvo, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bvp = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %storemerge.us = phi i32 [ %i.bvp, %bb.dm ], [ %i.ay, %bb.dl ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891.us, label %bb.dx, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bvq = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bvr = sext i32 %i.bvq to i64
  %i.bvs = getelementptr [8 x i8], ptr %i.s, i64 %i.bvr ; 2 uses
  %i.bvt = getelementptr i8, ptr %i.bvs, i64 8
  %i.bvu = load double, ptr %i.bvt, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4729 ] ; 6 uses
  %i.bvv = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bvw = trunc nsw i64 %indvars.iv3722 to i32
  %i.bvx = sub i32 %i.cxb, %i.bvw
  %i.bvy = sext i32 %i.bvx to i64
  %i.bvz = getelementptr [8 x i8], ptr %i.p, i64 %i.bvv
  %i.bwa = getelementptr [8 x i8], ptr %i.bvz, i64 %i.bvy ; 2 uses
  %i.bwb = load double, ptr %i.bwa, align 8, !tbaa !9
  %i.bwc = fdiv double %i.bwb, %i.bvu
  store double %i.bwc, ptr %i.bwa, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bwd = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bwe = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bwf = sub i32 %i.cxb, %i.bwe
  %i.bwg = sext i32 %i.bwf to i64
  %i.bwh = getelementptr [8 x i8], ptr %i.p, i64 %i.bwd
  %i.bwi = getelementptr [8 x i8], ptr %i.bwh, i64 %i.bwg ; 2 uses
  %i.bwj = load double, ptr %i.bwi, align 8, !tbaa !9
  %i.bwk = fdiv double %i.bwj, %i.bvu
  store double %i.bwk, ptr %i.bwi, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.bwl = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.bwm = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.bwn = sub i32 %i.cxb, %i.bwm
  %i.bwo = sext i32 %i.bwn to i64
  %i.bwp = getelementptr [8 x i8], ptr %i.p, i64 %i.bwl
  %i.bwq = getelementptr [8 x i8], ptr %i.bwp, i64 %i.bwo ; 2 uses
  %i.bwr = load double, ptr %i.bwq, align 8, !tbaa !9
  %i.bws = fdiv double %i.bwr, %i.bvu
  store double %i.bws, ptr %i.bwq, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.bwt = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.bwu = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.bwv = sub i32 %i.cxb, %i.bwu
  %i.bww = sext i32 %i.bwv to i64
  %i.bwx = getelementptr [8 x i8], ptr %i.p, i64 %i.bwt
  %i.bwy = getelementptr [8 x i8], ptr %i.bwx, i64 %i.bww ; 2 uses
  %i.bwz = load double, ptr %i.bwy, align 8, !tbaa !9
  %i.bxa = fdiv double %i.bwz, %i.bvu
  store double %i.bxa, ptr %i.bwy, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cxb, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new, %bb.do
  %i.bxb = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.bxb, ptr %i.c, align 4, !tbaa !8
  %i.bxc = add nsw i32 %.pre3819.a, %.32608.us    ; 4 uses
  store i32 %i.bxc, ptr %i.a, align 4, !tbaa !8
  %i.bxd = call i32 @llvm.smin.i32(i32 %i.bxb, i32 %i.bxc) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.bxd
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4655

vec.epilog.scalar.ph4656:                         ; preds = %vec.epilog.scalar.ph4656, %vec.epilog.scalar.ph4656.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4656.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4656 ] ; 5 uses
  %i.bxe = trunc nsw i64 %indvars.iv3727 to i32
  %i.bxf = add i32 %i.cxp, %i.bxe
  %i.bxg = sext i32 %i.bxf to i64
  %i.bxh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxg ; 2 uses
  %i.bxi = load double, ptr %i.bxh, align 8, !tbaa !9
  %i.bxj = fdiv double %i.bxi, %i.bvu
  store double %i.bxj, ptr %i.bxh, align 8, !tbaa !9
  %i.bxk = trunc i64 %indvars.iv3727 to i32
  %.reass4790 = add i32 %i.bxk, %invariant.op4789.a
  %i.bxl = sext i32 %.reass4790 to i64
  %i.bxm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxl ; 2 uses
  %i.bxn = load double, ptr %i.bxm, align 8, !tbaa !9
  %i.bxo = fdiv double %i.bxn, %i.bvu
  store double %i.bxo, ptr %i.bxm, align 8, !tbaa !9
  %i.bxp = trunc i64 %indvars.iv3727 to i32
  %.reass4792 = add i32 %i.bxp, %invariant.op4791
  %i.bxq = sext i32 %.reass4792 to i64
  %i.bxr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxq ; 2 uses
  %i.bxs = load double, ptr %i.bxr, align 8, !tbaa !9
  %i.bxt = fdiv double %i.bxs, %i.bvu
  store double %i.bxt, ptr %i.bxr, align 8, !tbaa !9
  %i.bxu = trunc i64 %indvars.iv3727 to i32
  %.reass4794 = add i32 %i.bxu, %invariant.op4793
  %i.bxv = sext i32 %.reass4794 to i64
  %i.bxw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bxv ; 2 uses
  %i.bxx = load double, ptr %i.bxw, align 8, !tbaa !9
  %i.bxy = fdiv double %i.bxx, %i.bvu
  store double %i.bxy, ptr %i.bxw, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.cxr, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4656, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4656.prol.loopexit, %vec.epilog.scalar.ph4656, %middle.block4651, %vec.epilog.middle.block4667, %._crit_edge3373.us
  %i.bxz = add i32 %i.bvm, %.32608.us             ; 7 uses
  %i.bya = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bvm, 1
  br i1 %.not27053392.us, label %bb.dq, label %.lr.ph3396.us

bb.dp:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4574 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4575, %._crit_edge3388.us ] ; 8 uses
  %indvar4514 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4515, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.dav, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.bzk, %._crit_edge3388.us ]
  %smax4615 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.daw)
  %i.byb = add i64 %indvar4574, %i.dav
  %reass.sub4670 = sub i64 %smax4615, %i.byb
  %i.byc = add i64 %reass.sub4670, 1              ; 3 uses
  %i.byd = trunc i64 %indvar4574 to i32
  %i.bye = mul i32 %i.n, %i.byd
  %i.byf = add i32 %i.bye, %i.dbt
  %i.byg = sext i32 %i.byf to i64
  %i.byh = shl nsw i64 %i.byg, 3                  ; 2 uses
  %scevgep4578 = getelementptr i8, ptr %scevgep4577.a, i64 %i.byh ; 5 uses
  %smax4580 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.daw)
  %i.byi = add i64 %indvar4574, %i.dav
  %i.byj = sub i64 %smax4580, %i.byi
  %i.byk = shl nsw i64 %i.byj, 3                  ; 3 uses
  %i.byl = getelementptr i8, ptr %scevgep4579.a, i64 %i.byk
  %scevgep4581.a = getelementptr i8, ptr %i.byl, i64 %i.byh ; 5 uses
  %i.bym = trunc i64 %indvar4574 to i32
  %i.byn = add i32 %i.dbu, %i.bym
  %i.byo = sext i32 %i.byn to i64
  %i.byp = shl nsw i64 %i.byo, 3                  ; 3 uses
  %scevgep4583.a = getelementptr i8, ptr %scevgep4582.a, i64 %i.byp ; 2 uses
  %scevgep4585.a = getelementptr i8, ptr %scevgep4584.a, i64 %i.byp
  %i.byq = getelementptr i8, ptr %scevgep4586.a, i64 %i.byk
  %scevgep4587.a = getelementptr i8, ptr %i.byq, i64 %i.byp
  %i.byr = trunc i64 %indvar4574 to i32
  %i.bys = add i32 %i.dbv, %i.byr
  %i.byt = sext i32 %i.bys to i64
  %i.byu = shl nsw i64 %i.byt, 3                  ; 3 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.byu ; 2 uses
  %scevgep4591 = getelementptr i8, ptr %scevgep4590, i64 %i.byu
  %i.byv = getelementptr i8, ptr %scevgep4592, i64 %i.byk
  %scevgep4593 = getelementptr i8, ptr %i.byv, i64 %i.byu
  %i.byw = mul i32 %.0255729803502, %indvar4514
  %i.byx = add i32 %i.dbc, %i.byw
  %i.byy = sext i32 %i.byx to i64                 ; 2 uses
  %i.byz = shl nsw i64 %i.byy, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517.a, i64 %i.byz ; 2 uses
  %i.bza = add nsw i64 %i.dbh, %i.byy
  %i.bzb = shl nsw i64 %i.bza, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519, i64 %i.bzb ; 2 uses
  %i.bzc = add i32 %i.dbi, %indvar4514
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = shl nsw i64 %i.bzd, 3
end_hunk_2
