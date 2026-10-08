Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
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
  %i.n = load i32, ptr %6, align 4, !tbaa !151    ; 105 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64                  ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %i.o ; 212 uses
  %i.q = load i32, ptr %8, align 4, !tbaa !151    ; 13 uses
  %narrow2639 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow2639 to i64              ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %7, i64 %i.r ; 37 uses
  %i.t = load i32, ptr %10, align 4, !tbaa !151   ; 25 uses
  %narrow2646 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow2646 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %9, i64 %i.u ; 24 uses
  %i.w = getelementptr inbounds i8, ptr %11, i64 -8 ; 199 uses
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.y = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.fr = freeze i32 %i.y
  %i.z = load i32, ptr %3, align 4, !tbaa !151
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !151
  %i.ab = load i32, ptr %4, align 4, !tbaa !151   ; 4 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 11 uses
  store i32 0, ptr %12, align 4, !tbaa !151
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
  %i.af = load i32, ptr %2, align 4, !tbaa !151   ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %3, align 4, !tbaa !151   ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !151   ; 3 uses
  %or.cond2756 = icmp ugt i32 %i.aj, %i.ah
  br i1 %or.cond2756, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %6, align 4, !tbaa !151   ; 2 uses
  %.not2643 = icmp sgt i32 %i.ak, %i.ah
  br i1 %.not2643, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %8, align 4, !tbaa !151
  %.not2644 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not2644, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %10, align 4, !tbaa !151  ; 2 uses
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
  %.pr = load i32, ptr %12, align 4, !tbaa !151   ; 2 uses
  %.not2645 = icmp eq i32 %.pr, 0
  br i1 %.not2645, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sink4168 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -4, %bb.f ], [ -7, %bb.h ], [ -9, %bb.i ], [ -5, %bb.g ], [ -3, %bb.e ], [ -11, %bb.l ], [ -11, %bb.j ] ; 2 uses
  store i32 %.sink4168, ptr %12, align 4, !tbaa !151
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.aq = phi i32 [ %.pr, %bb.m ], [ %.sink4168, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %i.aq
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !151
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit2877

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i32 %i.af, 0
  br i1 %i.at, label %.loopexit2877, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = mul nsw i32 %i.aa, %i.ak
  store i32 %i.au, ptr %i.f, align 4, !tbaa !151
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %9, ptr noundef nonnull %10) #4
  %.pre = load i32, ptr %2, align 4, !tbaa !151
  %.pre3779 = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi i32 [ %.pre3779, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %bb.p ], [ %i.af, %bb.o ] ; 3 uses
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sdiv i32 %i.ax, 2                       ; 72 uses
  %i.az = add nsw i32 %i.aw, 1
  %i.ba = add nsw i32 %i.ay, 1                    ; 15 uses
  %i.bb = sext i32 %i.n to i64                    ; 25 uses
  %i.bc = sext i32 %i.q to i64                    ; 14 uses
  %i.bd = sext i32 %i.ay to i64                   ; 16 uses
  %.0255729743491 = add i32 %i.n, -1
  %.0255729743492 = add i32 %i.n, -1              ; 9 uses
  %i.be = shl nsw i64 %i.o, 3                     ; 11 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.be
  %i.bf = add nsw i64 %i.be, 8                    ; 8 uses
  %scevgep4272 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = shl nsw i64 %i.r, 3                     ; 4 uses
  %i.bh = add nsw i64 %i.bg, 8                    ; 5 uses
  %scevgep4276 = getelementptr i8, ptr %7, i64 %i.bh
  %i.bi = add i32 %i.ab, 1
  %scevgep4278 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4280 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bj = add i32 %i.ab, 1
  %scevgep4328 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4334 = getelementptr i8, ptr %7, i64 %i.bh
  %i.bk = add i32 %i.ab, 1
  %scevgep4336 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4339.a = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4341.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4344 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bl = getelementptr i8, ptr %5, i64 %i.bf
  %i.bm = getelementptr i8, ptr %7, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = getelementptr i8, ptr %5, i64 %i.be
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3782 = phi i32 [ %.pre3782.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bq = phi i32 [ %i.bwc, %.loopexit2884 ], [ %i.av, %bb.q ] ; 5 uses
  %.02605.ph = phi i32 [ %.126062773, %.loopexit2884 ], [ %i.az, %bb.q ] ; 31 uses
  %.02547.ph = phi i32 [ %.125482776, %.loopexit2884 ], [ undef, %bb.q ]
  %.02542.ph = phi i32 [ %.125432779, %.loopexit2884 ], [ undef, %bb.q ]
  %.02538.ph = phi i32 [ %.125392782, %.loopexit2884 ], [ undef, %bb.q ]
  %.02532.ph = phi i32 [ %.025322916, %.loopexit2884 ], [ 1, %bb.q ]
  %.not26472935 = icmp eq i32 %.02532.ph, 0
  %.pre3781 = load i32, ptr %3, align 4, !tbaa !151 ; 9 uses
  br i1 %.not26472935, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer2886
  %i.br = add i32 %.02605.ph, -1                  ; 43 uses
  %i.bs = add i32 %.02605.ph, -2                  ; 11 uses
  %i.bt = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bs) ; 13 uses
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !151
  %i.bu = add i32 %.pre3781, %i.br                ; 2 uses
  %i.bv = call i32 @llvm.smin.i32(i32 %.pre3782, i32 %i.bu) ; 16 uses
  %i.bw = sub i32 %i.br, %i.bt                    ; 15 uses
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !151 ; 22 uses
  %i.by = add nsw i32 %i.bw, %i.bx                ; 4 uses
  %.not2651 = icmp sgt i32 %.02605.ph, %i.ba
  br i1 %.not2651, label %.thread2766, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bz = icmp eq i32 %.pre3781, 0
  store i32 %.pre3782, ptr %i.a, align 4, !tbaa !151
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !151
  br i1 %i.bz, label %.loopexit2888, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.outer2886
  %.02547.lcssa = phi i32 [ %.02547.ph, %.outer2886 ], [ %i.ay, %.lr.ph.split ] ; 3 uses
  %.02542.lcssa = phi i32 [ %.02542.ph, %.outer2886 ], [ %i.bv, %.lr.ph.split ] ; 3 uses
  %.02538.lcssa = phi i32 [ %.02538.ph, %.outer2886 ], [ %i.by, %.lr.ph.split ] ; 3 uses
  %i.ca = add nsw i32 %.pre3781, %.02605.ph       ; 3 uses
  %.not2648 = icmp slt i32 %i.ca, %.pre3782
  br i1 %.not2648, label %bb.r, label %.loopexit2888

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not2641, label %bb.bw, label %bb.aa

.thread2766:                                      ; preds = %.lr.ph
  store i32 %.pre3782, ptr %i.a, align 4, !tbaa !151
  %.neg.le = sub nsw i32 1, %.02605.ph            ; 5 uses
  %i.cb = mul i32 %i.br, %i.q                     ; 7 uses
  %.not26532995 = icmp sgt i32 %i.br, %i.bv       ; 4 uses
  br i1 %.not2641, label %bb.bn, label %bb.s

bb.s:                                             ; preds = %.thread2766
  %i.cc = add i32 %i.cb, %i.ac                    ; 7 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !153 ; 13 uses
  br i1 %.not26532995, label %._crit_edge2948, label %.lr.ph2947

.lr.ph2947:                                       ; preds = %bb.s
  %i.cg = zext i32 %i.br to i64                   ; 2 uses
  %i.ch = add i32 %i.bv, 1                        ; 2 uses
  %i.ci = xor i32 %i.bv, 2
  %i.cj = sub i32 %i.ci, %.02605.ph
  %i.ck = sub i32 %i.ch, %.02605.ph
  %xtraiter = and i32 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2947, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.cg, %.lr.ph2947 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2947 ]
  %i.cl = trunc i64 %indvars.iv.prol to i32
  %i.cm = sub i32 %i.br, %i.cl
  %i.cn = trunc i64 %indvars.iv.prol to i32
  %i.co = mul i32 %i.n, %i.cn
  %i.cp = add i32 %i.cm, %i.co
  %i.cq = add i32 %i.cp, %i.bx
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cr ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !153
  %i.cu = fdiv double %i.ct, %i.cf
  store double %i.cu, ptr %i.cs, align 8, !tbaa !153
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !8

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2947
  %indvars.iv.unr = phi i64 [ %i.cg, %.lr.ph2947 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.cv = icmp ult i32 %i.ck, 3
  br i1 %i.cv, label %._crit_edge2948, label %.lr.ph2947.new

.lr.ph2947.new:                                   ; preds = %.prol.loopexit, %.lr.ph2947.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2947.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = sub i32 %i.br, %i.cw
  %i.cy = trunc i64 %indvars.iv to i32
  %i.cz = mul i32 %i.n, %i.cy
  %i.da = add i32 %i.cx, %i.cz
  %i.db = add i32 %i.da, %i.bx
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dc ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !153
  %i.df = fdiv double %i.de, %i.cf
  store double %i.df, ptr %i.dd, align 8, !tbaa !153
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = trunc i64 %indvars.iv.next to i32
  %i.dh = sub i32 %i.br, %i.dg
  %i.di = trunc i64 %indvars.iv.next to i32
  %i.dj = mul i32 %i.n, %i.di
  %i.dk = add i32 %i.dh, %i.dj
  %i.dl = add i32 %i.dk, %i.bx
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dm ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !153
  %i.dp = fdiv double %i.do, %i.cf
  store double %i.dp, ptr %i.dn, align 8, !tbaa !153
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dq = trunc i64 %indvars.iv.next.1 to i32
  %i.dr = sub i32 %i.br, %i.dq
  %i.ds = trunc i64 %indvars.iv.next.1 to i32
  %i.dt = mul i32 %i.n, %i.ds
  %i.du = add i32 %i.dr, %i.dt
  %i.dv = add i32 %i.du, %i.bx
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dw ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !153
  %i.dz = fdiv double %i.dy, %i.cf
  store double %i.dz, ptr %i.dx, align 8, !tbaa !153
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ea = trunc i64 %indvars.iv.next.2 to i32
  %i.eb = sub i32 %i.br, %i.ea
  %i.ec = trunc i64 %indvars.iv.next.2 to i32
  %i.ed = mul i32 %i.n, %i.ec
  %i.ee = add i32 %i.eb, %i.ed
  %i.ef = add i32 %i.ee, %i.bx
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eg ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !153
  %i.ej = fdiv double %i.ei, %i.cf
  store double %i.ej, ptr %i.eh, align 8, !tbaa !153
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.ch, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2948, label %.lr.ph2947.new, !llvm.loop !9

._crit_edge2948:                                  ; preds = %.prol.loopexit, %.lr.ph2947.new, %bb.s
  store i32 1, ptr %i.a, align 4, !tbaa !151
  %i.ek = sub nsw i32 %i.br, %.pre3781            ; 4 uses
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !151
  store i32 %i.br, ptr %i.c, align 4, !tbaa !151
  %i.el = call i32 @llvm.smax.i32(i32 %i.ek, i32 1) ; 13 uses
  %.not2676.not2949 = icmp slt i32 %i.el, %.02605.ph
  br i1 %.not2676.not2949, label %iter.check4407, label %._crit_edge2953

iter.check4407:                                   ; preds = %._crit_edge2948
  %i.em = mul nsw i32 %i.br, %i.n                 ; 2 uses
  %i.en = add i32 %i.em, %.neg.le
  %invariant.op = add i32 %i.en, %i.bx            ; 7 uses
  %i.eo = zext nneg i32 %i.el to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.ep = sub nsw i64 %wide.trip.count, %i.eo     ; 7 uses
  %min.iters.check4389.a = icmp ult i64 %i.ep, 4
  br i1 %min.iters.check4389.a, label %vec.epilog.scalar.ph4408.preheader, label %vector.scevcheck4387

vector.scevcheck4387:                             ; preds = %iter.check4407
  %i.eq = xor i64 %i.eo, -1
  %i.er = add nsw i64 %i.eq, %wide.trip.count     ; 2 uses
  %i.es = add i32 %i.bx, 1
  %i.et = add i32 %i.es, %i.el
  %i.eu = add i32 %i.et, %i.em
  %i.ev = sub i32 %i.eu, %.02605.ph               ; 2 uses
  %i.ew = trunc i64 %i.er to i32
  %i.ex = add i32 %i.ev, %i.ew
  %i.ey = icmp slt i32 %i.ex, %i.ev
  %i.ez = icmp ugt i64 %i.er, 4294967295
  %i.fa = or i1 %i.ey, %i.ez
  br i1 %i.fa, label %vec.epilog.scalar.ph4408.preheader, label %vector.main.loop.iter.check4390

vector.main.loop.iter.check4390:                  ; preds = %vector.scevcheck4387
  %min.iters.check4391 = icmp ult i64 %i.ep, 16
  br i1 %min.iters.check4391, label %vec.epilog.ph4411, label %vector.ph4392

vector.ph4392:                                    ; preds = %vector.main.loop.iter.check4390
  %i.fb = and i64 %i.ep, 12
  %n.vec4393 = and i64 %i.ep, -16                 ; 4 uses
  %i.fc = add nsw i64 %n.vec4393, %i.eo
  %broadcast.splatinsert4394 = insertelement <4 x double> poison, double %i.cf, i64 0
  %broadcast.splat4395 = shufflevector <4 x double> %broadcast.splatinsert4394, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4738 = add i32 %i.el, %invariant.op
  br label %vector.body4396

vector.body4396:                                  ; preds = %vector.ph4392, %vector.body4396
  %index4397 = phi i64 [ 0, %vector.ph4392 ], [ %index.next4402, %vector.body4396 ] ; 2 uses
  %i.fd = trunc i64 %index4397 to i32
  %.reass4739 = add i32 %i.fd, %invariant.op4738
  %i.fe = sext i32 %.reass4739 to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fe ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 96 ; 2 uses
  %wide.load4398.a = load <4 x double>, ptr %i.ff, align 8, !tbaa !153
  %wide.load4399.a = load <4 x double>, ptr %i.fg, align 8, !tbaa !153
  %wide.load4400 = load <4 x double>, ptr %i.fh, align 8, !tbaa !153
  %wide.load4401 = load <4 x double>, ptr %i.fi, align 8, !tbaa !153
  %i.fj = fdiv <4 x double> %wide.load4398.a, %broadcast.splat4395
  %i.fk = fdiv <4 x double> %wide.load4399.a, %broadcast.splat4395
  %i.fl = fdiv <4 x double> %wide.load4400, %broadcast.splat4395
  %i.fm = fdiv <4 x double> %wide.load4401, %broadcast.splat4395
  store <4 x double> %i.fj, ptr %i.ff, align 8, !tbaa !153
  store <4 x double> %i.fk, ptr %i.fg, align 8, !tbaa !153
  store <4 x double> %i.fl, ptr %i.fh, align 8, !tbaa !153
  store <4 x double> %i.fm, ptr %i.fi, align 8, !tbaa !153
  %index.next4402 = add nuw i64 %index4397, 16    ; 2 uses
  %i.fn = icmp eq i64 %index.next4402, %n.vec4393
  br i1 %i.fn, label %middle.block4403, label %vector.body4396, !llvm.loop !10

middle.block4403:                                 ; preds = %vector.body4396
  %cmp.n4404 = icmp eq i64 %i.ep, %n.vec4393
  br i1 %cmp.n4404, label %._crit_edge2953, label %vec.epilog.iter.check4409

vec.epilog.iter.check4409:                        ; preds = %middle.block4403
  %min.epilog.iters.check4410 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check4410, label %vec.epilog.scalar.ph4408.preheader, label %vec.epilog.ph4411, !prof !158

vec.epilog.ph4411:                                ; preds = %vector.main.loop.iter.check4390, %vec.epilog.iter.check4409
  %vec.epilog.resume.val4405 = phi i64 [ %n.vec4393, %vec.epilog.iter.check4409 ], [ 0, %vector.main.loop.iter.check4390 ]
  %n.vec4412 = and i64 %i.ep, -4                  ; 3 uses
  %i.fo = add nsw i64 %n.vec4412, %i.eo
  %broadcast.splatinsert4413 = insertelement <4 x double> poison, double %i.cf, i64 0
  %broadcast.splat4414 = shufflevector <4 x double> %broadcast.splatinsert4413, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4740 = add i32 %i.el, %invariant.op
  br label %vec.epilog.vector.body4415

vec.epilog.vector.body4415:                       ; preds = %vec.epilog.vector.body4415, %vec.epilog.ph4411
  %index4416 = phi i64 [ %vec.epilog.resume.val4405, %vec.epilog.ph4411 ], [ %index.next4418, %vec.epilog.vector.body4415 ] ; 2 uses
  %i.fp = trunc i64 %index4416 to i32
  %.reass4741 = add i32 %i.fp, %invariant.op4740
  %i.fq = sext i32 %.reass4741 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fq ; 2 uses
  %wide.load4417 = load <4 x double>, ptr %i.fr, align 8, !tbaa !153
  %i.fs = fdiv <4 x double> %wide.load4417, %broadcast.splat4414
  store <4 x double> %i.fs, ptr %i.fr, align 8, !tbaa !153
  %index.next4418 = add nuw i64 %index4416, 4     ; 2 uses
  %i.ft = icmp eq i64 %index.next4418, %n.vec4412
  br i1 %i.ft, label %vec.epilog.middle.block4419, label %vec.epilog.vector.body4415, !llvm.loop !11

vec.epilog.middle.block4419:                      ; preds = %vec.epilog.vector.body4415
  %cmp.n4420 = icmp eq i64 %i.ep, %n.vec4412
  br i1 %cmp.n4420, label %._crit_edge2953, label %vec.epilog.scalar.ph4408.preheader

vec.epilog.scalar.ph4408.preheader:               ; preds = %iter.check4407, %vector.scevcheck4387, %vec.epilog.iter.check4409, %vec.epilog.middle.block4419
  %indvars.iv3541.ph = phi i64 [ %i.eo, %iter.check4407 ], [ %i.eo, %vector.scevcheck4387 ], [ %i.fc, %vec.epilog.iter.check4409 ], [ %i.fo, %vec.epilog.middle.block4419 ] ; 4 uses
  %i.fu = sub nsw i64 %wide.trip.count, %indvars.iv3541.ph
  %xtraiter4673 = and i64 %i.fu, 3                ; 2 uses
  %lcmp.mod4674.not = icmp eq i64 %xtraiter4673, 0
  br i1 %lcmp.mod4674.not, label %vec.epilog.scalar.ph4408.prol.loopexit, label %vec.epilog.scalar.ph4408.prol

vec.epilog.scalar.ph4408.prol:                    ; preds = %vec.epilog.scalar.ph4408.preheader, %vec.epilog.scalar.ph4408.prol
  %indvars.iv3541.prol = phi i64 [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4408.prol ], [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4408.preheader ] ; 2 uses
  %prol.iter4675 = phi i64 [ %prol.iter4675.next, %vec.epilog.scalar.ph4408.prol ], [ 0, %vec.epilog.scalar.ph4408.preheader ]
  %i.fv = trunc nuw nsw i64 %indvars.iv3541.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fv
  %i.fw = sext i32 %.reass.prol to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !153
  %i.fz = fdiv double %i.fy, %i.cf
  store double %i.fz, ptr %i.fx, align 8, !tbaa !153
  %indvars.iv.next3542.prol = add nuw nsw i64 %indvars.iv3541.prol, 1 ; 2 uses
  %prol.iter4675.next = add i64 %prol.iter4675, 1 ; 2 uses
  %prol.iter4675.cmp.not = icmp eq i64 %prol.iter4675.next, %xtraiter4673
  br i1 %prol.iter4675.cmp.not, label %vec.epilog.scalar.ph4408.prol.loopexit, label %vec.epilog.scalar.ph4408.prol, !llvm.loop !12

vec.epilog.scalar.ph4408.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4408.prol, %vec.epilog.scalar.ph4408.preheader
  %indvars.iv3541.unr = phi i64 [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4408.preheader ], [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4408.prol ]
  %i.ga = sub nsw i64 %indvars.iv3541.ph, %wide.trip.count
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge2953, label %vec.epilog.scalar.ph4408.preheader.new

vec.epilog.scalar.ph4408.preheader.new:           ; preds = %vec.epilog.scalar.ph4408.prol.loopexit
  %invariant.op4742 = add i32 1, %invariant.op
  %invariant.op4743.a = add i32 2, %invariant.op
  %invariant.op4744 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4408

vec.epilog.scalar.ph4408:                         ; preds = %vec.epilog.scalar.ph4408, %vec.epilog.scalar.ph4408.preheader.new
  %indvars.iv3541 = phi i64 [ %indvars.iv3541.unr, %vec.epilog.scalar.ph4408.preheader.new ], [ %indvars.iv.next3542.3, %vec.epilog.scalar.ph4408 ] ; 5 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv3541 to i32
  %.reass = add i32 %invariant.op, %i.gc
  %i.gd = sext i32 %.reass to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gd ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !153
  %i.gg = fdiv double %i.gf, %i.cf
  store double %i.gg, ptr %i.ge, align 8, !tbaa !153
  %i.gh = trunc i64 %indvars.iv3541 to i32
  %.reass.1.reass = add i32 %i.gh, %invariant.op4742
  %i.gi = sext i32 %.reass.1.reass to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !153
  %i.gl = fdiv double %i.gk, %i.cf
  store double %i.gl, ptr %i.gj, align 8, !tbaa !153
  %i.gm = trunc i64 %indvars.iv3541 to i32
  %.reass.2.reass = add i32 %i.gm, %invariant.op4743.a
  %i.gn = sext i32 %.reass.2.reass to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !153
  %i.gq = fdiv double %i.gp, %i.cf
  store double %i.gq, ptr %i.go, align 8, !tbaa !153
  %i.gr = trunc i64 %indvars.iv3541 to i32
  %.reass.3.reass = add i32 %i.gr, %invariant.op4744
  %i.gs = sext i32 %.reass.3.reass to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gs ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !153
  %i.gv = fdiv double %i.gu, %i.cf
  store double %i.gv, ptr %i.gt, align 8, !tbaa !153
  %indvars.iv.next3542.3 = add nuw nsw i64 %indvars.iv3541, 4 ; 2 uses
  %exitcond3544.not.3 = icmp eq i64 %indvars.iv.next3542.3, %wide.trip.count
  br i1 %exitcond3544.not.3, label %._crit_edge2953, label %vec.epilog.scalar.ph4408, !llvm.loop !13

._crit_edge2953:                                  ; preds = %vec.epilog.scalar.ph4408.prol.loopexit, %vec.epilog.scalar.ph4408, %middle.block4403, %vec.epilog.middle.block4419, %._crit_edge2948
  %.not26772973 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26772973, label %bb.t, label %.lr.ph2977

.lr.ph2977:                                       ; preds = %._crit_edge2953
  %i.gw = mul i32 %i.br, %i.n                     ; 6 uses
  %i.gx = add i32 %i.bx, %i.gw                    ; 6 uses
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.p, i64 %i.gy ; 5 uses
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !151
  %i.ha = xor i32 %i.bt, -1
  %i.hb = add i32 %i.br, %i.ha                    ; 3 uses
  store i32 %i.hb, ptr %i.d, align 4, !tbaa !151
  %.not26972963 = icmp sgt i32 %i.el, %i.hb
  %i.hc = add i32 %.neg.le, %i.ac
  %invariant.op2979 = add i32 %i.cb, %i.hc
  %i.hd = add i32 %i.gw, %.neg.le
  %invariant.op2968 = add i32 %i.hd, %i.bx        ; 3 uses
  %i.he = zext i32 %i.bw to i64                   ; 5 uses
  %i.hf = sub i32 %.02605.ph, %i.bt
  %i.hg = zext nneg i32 %i.el to i64              ; 10 uses
  %i.hh = zext i32 %i.hb to i64                   ; 4 uses
  %i.hi = call i64 @llvm.usub.sat.i64(i64 %i.hh, i64 %i.hg)
  %i.hj = add i32 %i.bx, %i.el
  %i.hk = mul i32 %.0255729743492, %i.bw
  %i.hl = add i32 %i.hj, %i.hk
  %i.hm = add i32 %i.bx, 1
  %i.hn = add i32 %i.hm, %i.el
  %i.ho = add i32 %i.hn, %i.gw
  %i.hp = sub i32 %i.ho, %.02605.ph               ; 2 uses
  %i.hq = add i32 %i.bx, %i.el
  %i.hr = mul i32 %.0255729743492, %i.bw          ; 3 uses
  %i.hs = add i32 %i.hq, %i.hr
  %umax4273 = call i64 @llvm.umax.i64(i64 %i.hg, i64 %i.hh)
  %i.ht = shl nuw nsw i64 %umax4273, 3            ; 2 uses
  %i.hu = shl nuw nsw i64 %i.hg, 3                ; 2 uses
  %i.hv = sub nsw i64 %i.ht, %i.hu
  %scevgep4274 = getelementptr i8, ptr %scevgep4272, i64 %i.hv
  %i.hw = add i32 %i.bi, %i.cb
  %i.hx = sub i32 %i.hw, %i.bt
  %i.hy = add i32 %i.bx, 1
  %i.hz = add i32 %i.hy, %i.el
  %i.ia = add i32 %i.hz, %i.gw
  %i.ib = sub i32 %i.ia, %.02605.ph
  %i.ic = sext i32 %i.ib to i64
  %i.id = shl nsw i64 %i.ic, 3                    ; 2 uses
  %scevgep4279 = getelementptr i8, ptr %scevgep4278, i64 %i.id
  %i.ie = add nsw i64 %i.ht, %i.id
  %i.if = sub nsw i64 %i.ie, %i.hu
  %scevgep4281 = getelementptr i8, ptr %scevgep4280, i64 %i.if
  %umax4286 = call i64 @llvm.umax.i64(i64 %i.hg, i64 %i.hh)
  %i.ig = add nuw nsw i64 %umax4286, 1
  %i.ih = sub nsw i64 %i.ig, %i.hg                ; 7 uses
  %i.ii = add i32 %.02605.ph, -1
  %i.ij = add i32 %i.ii, %i.bx
  %i.ik = add i32 %i.ij, %i.hr
  %i.il = sub i32 %i.ik, %i.bt
  %i.im = add i32 %i.bj, %i.cb
  %i.in = sub i32 %i.im, %i.bt                    ; 2 uses
  %i.io = add i32 %i.bx, %i.gw
  %i.ip = sub i32 %i.io, %i.bt                    ; 2 uses
  %i.iq = add i32 %.02605.ph, -1
  %i.ir = add i32 %i.iq, %i.bx
  %i.is = add i32 %i.ir, %i.hr
  %i.it = sub i32 %i.is, %i.bt
  %i.iu = add i32 %i.bk, %i.cb
  %i.iv = sub i32 %i.iu, %i.bt                    ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep4337 = getelementptr i8, ptr %scevgep4336, i64 %i.ix
  %i.iy = add i32 %i.bx, %i.gw
  %i.iz = sub i32 %i.iy, %i.bt                    ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i64 %i.ja, 3                    ; 2 uses
  %scevgep4342 = getelementptr i8, ptr %scevgep4341.a, i64 %i.jb
  %i.jc = shl nsw i64 %i.gy, 3
  %scevgep4345 = getelementptr i8, ptr %scevgep4344, i64 %i.jc
  %i.jd = getelementptr i8, ptr %i.bn, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.bp, i64 %i.jb
  %min.iters.check4288 = icmp ult i64 %i.ih, 4
  %i.jf = trunc nuw i64 %i.hi to i32              ; 2 uses
  %i.jg = add i32 %i.hp, %i.jf
  %i.jh = icmp slt i32 %i.jg, %i.hp
  %min.iters.check4290 = icmp ult i64 %i.ih, 16
  %i.ji = and i64 %i.ih, 12
  %n.vec4292 = and i64 %i.ih, -16                 ; 4 uses
  %i.jj = add nsw i64 %n.vec4292, %i.hg
  %cmp.n4307 = icmp eq i64 %i.ih, %n.vec4292
  %min.epilog.iters.check4313 = icmp eq i64 %i.ji, 0
  %n.vec4315 = and i64 %i.ih, -4                  ; 3 uses
  %i.jk = add nsw i64 %n.vec4315, %i.hg
  %cmp.n4324 = icmp eq i64 %i.ih, %n.vec4315
  br label %.lr.ph2957

.lr.ph2957:                                       ; preds = %._crit_edge2967, %.lr.ph2977
  %indvar4330 = phi i64 [ %indvar.next4331, %._crit_edge2967 ], [ 0, %.lr.ph2977 ] ; 6 uses
  %indvar = phi i32 [ %indvar.next, %._crit_edge2967 ], [ 0, %.lr.ph2977 ] ; 9 uses
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556, %._crit_edge2967 ], [ %i.he, %.lr.ph2977 ] ; 4 uses
  %indvars.iv3548 = phi i32 [ %indvars.iv.next3549, %._crit_edge2967 ], [ %i.hf, %.lr.ph2977 ] ; 3 uses
  %i.jl = trunc i64 %indvar4330 to i32
  %i.jm = add i32 %i.bw, %i.jl
  %i.jn = add i64 %indvar4330, 1                  ; 3 uses
  %i.jo = mul i32 %.0255729743492, %indvar
  %i.jp = add i32 %i.it, %i.jo
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 3                    ; 2 uses
  %scevgep4329 = getelementptr i8, ptr %scevgep4328, i64 %i.jr ; 5 uses
  %i.js = shl nuw nsw i64 %indvar4330, 3          ; 3 uses
  %scevgep4332 = getelementptr i8, ptr %i.bl, i64 %i.js
  %scevgep4333.a = getelementptr i8, ptr %scevgep4332, i64 %i.jr ; 5 uses
  %13 = trunc i64 %indvar4330 to i32
  %14 = add i32 %i.iv, %13
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %scevgep4335 = getelementptr i8, ptr %scevgep4334, i64 %16
  %scevgep4338.a = getelementptr i8, ptr %i.jd, i64 %i.js
  %i.jt = trunc i64 %indvar4330 to i32
  %i.ju = add i32 %i.iz, %i.jt
  %i.jv = sext i32 %i.ju to i64
  %i.jw = shl nsw i64 %i.jv, 3
  %scevgep4340 = getelementptr i8, ptr %scevgep4339.a, i64 %i.jw
  %scevgep4343 = getelementptr i8, ptr %i.je, i64 %i.js
  %i.jx = mul i32 %.0255729743492, %indvar
  %i.jy = add i32 %i.hs, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = shl nsw i64 %i.jz, 3                    ; 2 uses
  %scevgep4271 = getelementptr i8, ptr %scevgep, i64 %i.ka ; 2 uses
  %scevgep4275 = getelementptr i8, ptr %scevgep4274, i64 %i.ka ; 2 uses
  %i.kb = add i32 %i.hx, %indvar
  %i.kc = sext i32 %i.kb to i64
  %i.kd = shl nsw i64 %i.kc, 3
  %scevgep4277 = getelementptr i8, ptr %scevgep4276, i64 %i.kd
  %i.ke = mul i32 %.0255729743492, %indvar
  %i.kf = add i32 %i.hl, %i.ke                    ; 2 uses
  %i.kg = trunc i64 %indvars.iv3555 to i32
  %i.kh = mul i32 %.0255729743491, %i.kg
  %invariant.op2959 = add i32 %i.kh, %i.bx        ; 4 uses
  %i.ki = trunc i64 %indvars.iv3555 to i32
  %i.kj = sub i32 %i.ki, %i.br                    ; 2 uses
  %i.kk = add i32 %i.gx, %i.kj
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kl ; 5 uses
  %i.kn = add i32 %i.cc, %i.kj
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ko ; 5 uses
  %min.iters.check4366 = icmp ult i64 %i.jn, 8
  br i1 %min.iters.check4366, label %scalar.ph4365.preheader, label %vector.scevcheck4326

vector.scevcheck4326:                             ; preds = %.lr.ph2957
  %i.kq = mul i32 %.0255729743492, %indvar
  %i.kr = add i32 %i.il, %i.kq                    ; 2 uses
  %i.ks = add i32 %i.kr, %indvar
  %i.kt = icmp slt i32 %i.ks, %i.kr
  %i.ku = add i32 %i.in, %indvar
  %i.kv = icmp slt i32 %i.ku, %i.in
  %i.kw = add i32 %i.ip, %indvar
  %i.kx = icmp slt i32 %i.kw, %i.ip
  %i.ky = or i1 %i.kt, %i.kv
  %i.kz = or i1 %i.ky, %i.kx
  br i1 %i.kz, label %scalar.ph4365.preheader, label %vector.memcheck4327

vector.memcheck4327:                              ; preds = %vector.scevcheck4326
  %bound04346 = icmp ult ptr %scevgep4329, %scevgep4335
  %bound14347 = icmp ult ptr %i.kp, %scevgep4333.a
  %found.conflict4348 = and i1 %bound04346, %bound14347
  %bound04349 = icmp ult ptr %scevgep4329, %scevgep4338.a
  %bound14350 = icmp ult ptr %scevgep4337, %scevgep4333.a
  %found.conflict4351 = and i1 %bound04349, %bound14350
  %conflict.rdx4352 = or i1 %found.conflict4348, %found.conflict4351
  %bound04353 = icmp ult ptr %scevgep4329, %scevgep4340
  %bound14354 = icmp ult ptr %i.km, %scevgep4333.a
  %found.conflict4355 = and i1 %bound04353, %bound14354
  %conflict.rdx4356 = or i1 %conflict.rdx4352, %found.conflict4355
  %bound04357 = icmp ult ptr %scevgep4329, %scevgep4343
  %bound14358 = icmp ult ptr %scevgep4342, %scevgep4333.a
  %found.conflict4359 = and i1 %bound04357, %bound14358
  %conflict.rdx4360 = or i1 %conflict.rdx4356, %found.conflict4359
  %bound04361 = icmp ult ptr %scevgep4329, %scevgep4345
  %bound14362 = icmp ult ptr %i.gz, %scevgep4333.a
  %found.conflict4363 = and i1 %bound04361, %bound14362
  %conflict.rdx4364 = or i1 %conflict.rdx4360, %found.conflict4363
  br i1 %conflict.rdx4364, label %scalar.ph4365.preheader, label %vector.ph4367

vector.ph4367:                                    ; preds = %vector.memcheck4327
  %n.vec4368 = and i64 %i.jn, -8                  ; 3 uses
  %i.la = add i64 %n.vec4368, %i.he
  %i.lb = load double, ptr %i.km, align 8, !tbaa !153, !alias.scope !159
  %broadcast.splatinsert4377 = insertelement <4 x double> poison, double %i.lb, i64 0
  %broadcast.splat4378 = shufflevector <4 x double> %broadcast.splatinsert4377, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lc = load double, ptr %i.kp, align 8, !tbaa !153, !alias.scope !160
  %broadcast.splatinsert4369 = insertelement <4 x double> poison, double %i.lc, i64 0
  %broadcast.splat4370 = shufflevector <4 x double> %broadcast.splatinsert4369, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ld = fneg <4 x double> %broadcast.splat4370  ; 2 uses
  %i.le = load double, ptr %i.gz, align 8, !tbaa !153, !alias.scope !161
  %broadcast.splatinsert4381 = insertelement <4 x double> poison, double %i.le, i64 0
  %broadcast.splat4382 = shufflevector <4 x double> %broadcast.splatinsert4381, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4371

vector.body4371:                                  ; preds = %vector.body4371, %vector.ph4367
  %index4372 = phi i64 [ 0, %vector.ph4367 ], [ %index.next4383, %vector.body4371 ] ; 2 uses
  %i.lf = trunc i64 %index4372 to i32
  %i.lg = add i32 %i.bw, %i.lf                    ; 2 uses
  %i.lh = add i32 %invariant.op2959, %i.lg
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.li ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32 ; 2 uses
  %wide.load4373.a = load <4 x double>, ptr %i.lj, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %wide.load4374.a = load <4 x double>, ptr %i.lk, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %i.ll = sub i32 %i.lg, %i.br                    ; 2 uses
  %i.lm = add i32 %i.cc, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %wide.load4375 = load <4 x double>, ptr %i.lo, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %wide.load4376 = load <4 x double>, ptr %i.lp, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %i.lq = fneg <4 x double> %wide.load4375
  %i.lr = fneg <4 x double> %wide.load4376
  %i.ls = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lq, <4 x double> %broadcast.splat4378, <4 x double> %wide.load4373.a)
  %i.lt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lr, <4 x double> %broadcast.splat4378, <4 x double> %wide.load4374.a)
  %i.lu = add i32 %i.gx, %i.ll
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %wide.load4379 = load <4 x double>, ptr %i.lw, align 8, !tbaa !153, !alias.scope !165
  %wide.load4380 = load <4 x double>, ptr %i.lx, align 8, !tbaa !153, !alias.scope !165
  %i.ly = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %wide.load4379, <4 x double> %i.ls)
  %i.lz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ld, <4 x double> %wide.load4380, <4 x double> %i.lt)
  %i.ma = fmul <4 x double> %wide.load4375, %broadcast.splat4382
  %i.mb = fmul <4 x double> %wide.load4376, %broadcast.splat4382
  %i.mc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ma, <4 x double> %broadcast.splat4370, <4 x double> %i.ly)
  %i.md = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mb, <4 x double> %broadcast.splat4370, <4 x double> %i.lz)
  store <4 x double> %i.mc, ptr %i.lj, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  store <4 x double> %i.md, ptr %i.lk, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %index.next4383 = add nuw i64 %index4372, 8     ; 2 uses
  %i.me = icmp eq i64 %index.next4383, %n.vec4368
  br i1 %i.me, label %middle.block4384, label %vector.body4371, !llvm.loop !21

middle.block4384:                                 ; preds = %vector.body4371
  %cmp.n4385 = icmp eq i64 %i.jn, %n.vec4368
  br i1 %cmp.n4385, label %._crit_edge2958, label %scalar.ph4365.preheader

scalar.ph4365.preheader:                          ; preds = %vector.memcheck4327, %vector.scevcheck4326, %.lr.ph2957, %middle.block4384
  %indvars.iv3545.ph = phi i64 [ %i.he, %vector.memcheck4327 ], [ %i.he, %vector.scevcheck4326 ], [ %i.he, %.lr.ph2957 ], [ %i.la, %middle.block4384 ] ; 5 uses
  %i.mf = trunc i64 %indvars.iv3545.ph to i32     ; 2 uses
  %i.mg = sub i32 %indvars.iv3548, %i.mf
  %xtraiter4676 = and i32 %i.mg, 1
  %lcmp.mod4677.not = icmp eq i32 %xtraiter4676, 0
  br i1 %lcmp.mod4677.not, label %scalar.ph4365.prol.loopexit, label %scalar.ph4365.prol

scalar.ph4365.prol:                               ; preds = %scalar.ph4365.preheader
  %i.mh = trunc i64 %indvars.iv3545.ph to i32
  %.reass2960.prol = add i32 %invariant.op2959, %i.mh
  %i.mi = sext i32 %.reass2960.prol to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mi ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !153
  %i.ml = trunc i64 %indvars.iv3545.ph to i32
  %i.mm = sub i32 %i.ml, %i.br                    ; 2 uses
  %i.mn = add i32 %i.cc, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mo
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !153 ; 2 uses
  %i.mr = load double, ptr %i.km, align 8, !tbaa !153
  %i.ms = fneg double %i.mq
  %i.mt = call double @llvm.fmuladd.f64(double %i.ms, double %i.mr, double %i.mk)
  %i.mu = load double, ptr %i.kp, align 8, !tbaa !153 ; 2 uses
  %i.mv = add i32 %i.gx, %i.mm
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !153
  %i.mz = fneg double %i.mu
  %i.na = call double @llvm.fmuladd.f64(double %i.mz, double %i.my, double %i.mt)
  %i.nb = load double, ptr %i.gz, align 8, !tbaa !153
  %i.nc = fmul double %i.mq, %i.nb
  %i.nd = call double @llvm.fmuladd.f64(double %i.nc, double %i.mu, double %i.na)
  store double %i.nd, ptr %i.mj, align 8, !tbaa !153
  %indvars.iv.next3546.prol = add i64 %indvars.iv3545.ph, 1
  br label %scalar.ph4365.prol.loopexit

scalar.ph4365.prol.loopexit:                      ; preds = %scalar.ph4365.prol, %scalar.ph4365.preheader
  %indvars.iv3545.unr = phi i64 [ %indvars.iv3545.ph, %scalar.ph4365.preheader ], [ %indvars.iv.next3546.prol, %scalar.ph4365.prol ]
  %i.ne = icmp eq i32 %i.jm, %i.mf
  br i1 %i.ne, label %._crit_edge2958, label %scalar.ph4365

scalar.ph4365:                                    ; preds = %scalar.ph4365.prol.loopexit, %scalar.ph4365
  %indvars.iv3545 = phi i64 [ %indvars.iv.next3546.1, %scalar.ph4365 ], [ %indvars.iv3545.unr, %scalar.ph4365.prol.loopexit ] ; 4 uses
  %i.nf = trunc i64 %indvars.iv3545 to i32
  %.reass2960 = add i32 %invariant.op2959, %i.nf
  %i.ng = sext i32 %.reass2960 to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !153
  %i.nj = trunc i64 %indvars.iv3545 to i32
  %i.nk = sub i32 %i.nj, %i.br                    ; 2 uses
  %i.nl = add i32 %i.cc, %i.nk
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !153 ; 2 uses
  %i.np = load double, ptr %i.km, align 8, !tbaa !153
  %i.nq = fneg double %i.no
  %i.nr = call double @llvm.fmuladd.f64(double %i.nq, double %i.np, double %i.ni)
  %i.ns = load double, ptr %i.kp, align 8, !tbaa !153 ; 2 uses
  %i.nt = add i32 %i.gx, %i.nk
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !153
  %i.nx = fneg double %i.ns
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double %i.nw, double %i.nr)
  %i.nz = load double, ptr %i.gz, align 8, !tbaa !153
  %i.oa = fmul double %i.no, %i.nz
  %i.ob = call double @llvm.fmuladd.f64(double %i.oa, double %i.ns, double %i.ny)
  store double %i.ob, ptr %i.nh, align 8, !tbaa !153
  %indvars.iv.next3546 = add i64 %indvars.iv3545, 1 ; 2 uses
  %i.oc = trunc i64 %indvars.iv.next3546 to i32
  %.reass2960.1 = add i32 %invariant.op2959, %i.oc
  %i.od = sext i32 %.reass2960.1 to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.od ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !153
  %i.og = trunc i64 %indvars.iv.next3546 to i32
  %i.oh = sub i32 %i.og, %i.br                    ; 2 uses
  %i.oi = add i32 %i.cc, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oj
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !153 ; 2 uses
  %i.om = load double, ptr %i.km, align 8, !tbaa !153
  %i.on = fneg double %i.ol
  %i.oo = call double @llvm.fmuladd.f64(double %i.on, double %i.om, double %i.of)
  %i.op = load double, ptr %i.kp, align 8, !tbaa !153 ; 2 uses
  %i.oq = add i32 %i.gx, %i.oh
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !153
  %i.ou = fneg double %i.op
  %i.ov = call double @llvm.fmuladd.f64(double %i.ou, double %i.ot, double %i.oo)
  %i.ow = load double, ptr %i.gz, align 8, !tbaa !153
  %i.ox = fmul double %i.ol, %i.ow
  %i.oy = call double @llvm.fmuladd.f64(double %i.ox, double %i.op, double %i.ov)
  store double %i.oy, ptr %i.oe, align 8, !tbaa !153
  %indvars.iv.next3546.1 = add i64 %indvars.iv3545, 2 ; 2 uses
  %lftr.wideiv3550.1 = trunc i64 %indvars.iv.next3546.1 to i32
  %exitcond3551.not.1 = icmp eq i32 %indvars.iv3548, %lftr.wideiv3550.1
  br i1 %exitcond3551.not.1, label %._crit_edge2958, label %scalar.ph4365, !llvm.loop !22

._crit_edge2958:                                  ; preds = %scalar.ph4365.prol.loopexit, %scalar.ph4365, %middle.block4384
  br i1 %.not26972963, label %._crit_edge2967, label %iter.check4310

iter.check4310:                                   ; preds = %._crit_edge2958
  %i.oz = trunc i64 %indvars.iv3555 to i32        ; 2 uses
  %.reass2962.reass = add i32 %invariant.op2979, %i.oz
  %i.pa = sext i32 %.reass2962.reass to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pa ; 4 uses
  %i.pc = mul i32 %.0255729743492, %i.oz
  %invariant.op2970 = add i32 %i.pc, %i.bx        ; 3 uses
  br i1 %min.iters.check4288, label %vec.epilog.scalar.ph4311.preheader, label %vector.scevcheck4269

vector.scevcheck4269:                             ; preds = %iter.check4310
  %i.pd = add i32 %i.kf, %i.jf
  %i.pe = icmp slt i32 %i.pd, %i.kf
  %i.pf = or i1 %i.pe, %i.jh
  br i1 %i.pf, label %vec.epilog.scalar.ph4311.preheader, label %vector.memcheck4270

vector.memcheck4270:                              ; preds = %vector.scevcheck4269
  %bound0 = icmp ult ptr %scevgep4271, %scevgep4277
  %bound1 = icmp ult ptr %i.pb, %scevgep4275
  %found.conflict = and i1 %bound0, %bound1
  %bound04282 = icmp ult ptr %scevgep4271, %scevgep4281
  %bound14283 = icmp ult ptr %scevgep4279, %scevgep4275
  %found.conflict4284 = and i1 %bound04282, %bound14283
  %conflict.rdx4285 = or i1 %found.conflict, %found.conflict4284
  br i1 %conflict.rdx4285, label %vec.epilog.scalar.ph4311.preheader, label %vector.main.loop.iter.check4289

vector.main.loop.iter.check4289:                  ; preds = %vector.memcheck4270
  br i1 %min.iters.check4290, label %vec.epilog.ph4314, label %vector.ph4291

vector.ph4291:                                    ; preds = %vector.main.loop.iter.check4289
  %i.pg = load double, ptr %i.pb, align 8, !tbaa !153, !alias.scope !166
  %.scalar = fneg double %i.pg
  %i.ph = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.pi = shufflevector <4 x double> %i.ph, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4295

end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %i.bsu = add nsw i32 %.113190, -1
  %i.bsv = icmp sgt i32 %.113190, 1
  br i1 %i.bsv, label %bb.df, label %._crit_edge3193.loopexit, !llvm.loop !74

._crit_edge3193.loopexit:                         ; preds = %bb.dh
  %.pre3887 = load i32, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3193

._crit_edge3193:                                  ; preds = %._crit_edge3193.loopexit, %.lr.ph3197
  %i.bsw = phi i32 [ %.pre3887, %._crit_edge3193.loopexit ], [ %i.brj, %.lr.ph3197 ] ; 2 uses
  %i.bsx = add nuw nsw i32 %.1125683195, 1
  %.not2658.not = icmp slt i32 %.1125683195, %i.bsw
  br i1 %.not2658.not, label %.lr.ph3197, label %._crit_edge3198, !llvm.loop !75

._crit_edge3198:                                  ; preds = %._crit_edge3193
  %.pre3888 = load i32, ptr %4, align 4, !tbaa !151 ; 6 uses
  %i.bsy = icmp sgt i32 %.pre3888, 1
  br i1 %i.bsy, label %bb.di, label %.loopexit2884

bb.di:                                            ; preds = %._crit_edge3198
  %i.bsz = load i32, ptr %3, align 4, !tbaa !151  ; 2 uses
  %i.bta = shl i32 %i.bsz, 1
  %i.btb = add i32 %.1260627742809, 1
  %i.btc = sub i32 %i.btb, %.pre3888
  %i.btd = add i32 %i.btc, %i.bta                 ; 3 uses
  store i32 %i.btd, ptr %i.c, align 4, !tbaa !151
  %i.bte = load i32, ptr %2, align 4, !tbaa !151  ; 6 uses
  %.not2659.not3199 = icmp sgt i32 %i.bte, %i.btd
  br i1 %.not2659.not3199, label %.lr.ph3202, label %.loopexit2884

.lr.ph3202:                                       ; preds = %bb.di
  %i.btf = add i32 %i.bsz, %i.ay                  ; 8 uses
  %i.btg = sext i32 %i.bte to i64                 ; 11 uses
  %i.bth = sext i32 %i.btd to i64                 ; 3 uses
  %i.bti = sub nsw i64 %i.btg, %i.bth             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bti, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3202
  %i.btj = xor i64 %i.bth, -1
  %i.btk = add nsw i64 %i.btj, %i.btg             ; 2 uses
  %i.btl = shl i32 %i.bte, 1
  %i.btm = xor i32 %i.btf, -1
  %i.btn = add i32 %i.btl, %i.btm                 ; 2 uses
  %i.bto = trunc i64 %i.btk to i32                ; 2 uses
  %i.btp = sub i32 %i.btn, %i.bto
  %i.btq = icmp sgt i32 %i.btp, %i.btn
  %i.btr = xor i32 %i.btf, -1
  %i.bts = add i32 %i.bte, %i.btr                 ; 2 uses
  %i.btt = sub i32 %i.bts, %i.bto
  %i.btu = icmp sgt i32 %i.btt, %i.bts
  %i.btv = icmp ugt i64 %i.btk, 4294967295
  %i.btw = or i1 %i.btu, %i.btv
  %i.btx = or i1 %i.btq, %i.btw
  br i1 %i.btx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bty = shl nsw i64 %i.btg, 3                  ; 3 uses
  %i.btz = add nsw i64 %i.bty, -1
  %diff.check = icmp ult i64 %i.btz, 31
  %i.bua = shl i32 %i.bte, 1
  %i.bub = xor i32 %i.btf, -1
  %i.buc = add i32 %i.bua, %i.bub
  %i.bud = sext i32 %i.buc to i64
  %i.bue = add nsw i64 %i.bd, %i.bud
  %i.buf = shl nsw i64 %i.bue, 3                  ; 2 uses
  %i.bug = shl nsw i64 %i.btg, 4                  ; 2 uses
  %i.buh = sub nsw i64 %i.buf, %i.bug
  %diff.check4214 = icmp ult i64 %i.buh, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4214
  %i.bui = xor i32 %i.btf, -1
  %i.buj = add i32 %i.bte, %i.bui
  %i.buk = sext i32 %i.buj to i64
  %i.bul = add nsw i64 %i.bd, %i.buk
  %i.bum = shl nsw i64 %i.bul, 3                  ; 2 uses
  %i.bun = sub nsw i64 %i.bug, %i.bum
  %i.buo = add nsw i64 %i.bun, -9
  %diff.check4215 = icmp ult i64 %i.buo, 31
  %conflict.rdx4216 = or i1 %conflict.rdx, %diff.check4215
  %i.bup = sub nsw i64 %i.buf, %i.bty
  %diff.check4217 = icmp ult i64 %i.bup, 24
  %conflict.rdx4218 = or i1 %conflict.rdx4216, %diff.check4217
  %i.buq = sub nsw i64 %i.bum, %i.bty
  %diff.check4219 = icmp ult i64 %i.buq, 24
  %conflict.rdx4220 = or i1 %conflict.rdx4218, %diff.check4219
  br i1 %conflict.rdx4220, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bti, -4                     ; 3 uses
  %i.bur = sub nsw i64 %i.btg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bus = xor i64 %index, -1
  %i.but = add i64 %i.bus, %i.btg                 ; 3 uses
  %i.buu = add nsw i64 %i.but, %i.btg             ; 2 uses
  %i.buv = trunc nsw i64 %i.buu to i32
  %i.buw = sub i32 %i.buv, %i.btf
  %i.bux = sext i32 %i.buw to i64
  %i.buy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bux
  %i.buz = getelementptr inbounds i8, ptr %i.buy, i64 -24
  %wide.load = load <4 x double>, ptr %i.buz, align 8, !tbaa !153
  %i.bva = sub nsw i64 %i.buu, %i.bd
  %i.bvb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bva
  %i.bvc = getelementptr inbounds i8, ptr %i.bvb, i64 -24
  store <4 x double> %wide.load, ptr %i.bvc, align 8, !tbaa !153
  %i.bvd = trunc nsw i64 %i.but to i32
  %i.bve = sub i32 %i.bvd, %i.btf
  %i.bvf = sext i32 %i.bve to i64
  %i.bvg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvf
  %i.bvh = getelementptr inbounds i8, ptr %i.bvg, i64 -24
  %wide.load4221 = load <4 x double>, ptr %i.bvh, align 8, !tbaa !153
  %i.bvi = sub nsw i64 %i.but, %i.bd
  %i.bvj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvi
  %i.bvk = getelementptr inbounds i8, ptr %i.bvj, i64 -24
  store <4 x double> %wide.load4221, ptr %i.bvk, align 8, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bvl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvl, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bti, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3202, %middle.block
  %indvars.iv3648.ph = phi i64 [ %i.btg, %vector.memcheck ], [ %i.btg, %vector.scevcheck ], [ %i.btg, %.lr.ph3202 ], [ %i.bur, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3648 = phi i64 [ %indvars.iv.next3649, %scalar.ph ], [ %indvars.iv3648.ph, %scalar.ph.preheader ]
  %indvars.iv.next3649 = add nsw i64 %indvars.iv3648, -1 ; 5 uses
  %i.bvm = add nsw i64 %indvars.iv.next3649, %i.btg ; 2 uses
  %i.bvn = trunc nsw i64 %i.bvm to i32
  %i.bvo = sub i32 %i.bvn, %i.btf
  %i.bvp = sext i32 %i.bvo to i64
  %i.bvq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvp
  %i.bvr = load double, ptr %i.bvq, align 8, !tbaa !153
  %i.bvs = sub nsw i64 %i.bvm, %i.bd
  %i.bvt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvs
  store double %i.bvr, ptr %i.bvt, align 8, !tbaa !153
  %i.bvu = trunc nsw i64 %indvars.iv.next3649 to i32
  %i.bvv = sub i32 %i.bvu, %i.btf
  %i.bvw = sext i32 %i.bvv to i64
  %i.bvx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvw
  %i.bvy = load double, ptr %i.bvx, align 8, !tbaa !153
  %i.bvz = sub nsw i64 %indvars.iv.next3649, %i.bd
  %i.bwa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvz
  store double %i.bvy, ptr %i.bwa, align 8, !tbaa !153
  %.not2659.not = icmp sgt i64 %indvars.iv.next3649, %i.bth
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !77

.loopexit2884.sink.split:                         ; preds = %bb.cp, %._crit_edge3168, %bb.at, %._crit_edge3084
  %.ph4084.sink = phi i32 [ %i.ace, %bb.at ], [ %.pre3854, %._crit_edge3084 ], [ %.pre3879, %._crit_edge3168 ], [ %i.bjc, %bb.cp ] ; 2 uses
  %.sink4175 = phi ptr [ %i.b, %bb.at ], [ %i.b, %._crit_edge3084 ], [ %i.c, %._crit_edge3168 ], [ %i.c, %bb.cp ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.at ], [ %.025322917, %._crit_edge3084 ], [ %.025322918, %._crit_edge3168 ], [ %.025322918, %bb.cp ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.at ], [ %.1253927812790, %._crit_edge3084 ], [ %.1253927832803, %._crit_edge3168 ], [ %.1253927832803, %bb.cp ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.at ], [ %.1254327782792, %._crit_edge3084 ], [ %.1254327802805, %._crit_edge3168 ], [ %.1254327802805, %bb.cp ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.at ], [ %.1254827752794, %._crit_edge3084 ], [ %.1254827772807, %._crit_edge3168 ], [ %.1254827772807, %bb.cp ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.at ], [ %.1260627722796, %._crit_edge3084 ], [ %.1260627742809, %._crit_edge3168 ], [ %.1260627742809, %bb.cp ]
  %i.bwb = add nsw i32 %.ph4084.sink, -1
  store i32 %i.bwb, ptr %.sink4175, align 4, !tbaa !151
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4233, %scalar.ph, %middle.block4242, %middle.block, %.loopexit2884.sink.split, %._crit_edge3189, %._crit_edge3107, %bb.bm, %bb.di, %._crit_edge3198, %._crit_edge3116
  %i.bwc = phi i32 [ %.pre3888, %._crit_edge3198 ], [ %.pre3888, %bb.di ], [ %.pre3864, %._crit_edge3116 ], [ %.pre3864, %bb.bm ], [ %.pre3860, %._crit_edge3107 ], [ %.pre3884, %._crit_edge3189 ], [ %.ph4084.sink, %.loopexit2884.sink.split ], [ %.pre3888, %middle.block ], [ %.pre3864, %middle.block4242 ], [ %.pre3888, %scalar.ph ], [ %.pre3864, %scalar.ph4233 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3198 ], [ %.025322918, %bb.di ], [ %.025322917, %._crit_edge3116 ], [ %.025322917, %bb.bm ], [ %.025322917, %._crit_edge3107 ], [ %.025322918, %._crit_edge3189 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4242 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4233 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3198 ], [ %.1253927832803, %bb.di ], [ %.1253927812790, %._crit_edge3116 ], [ %.1253927812790, %bb.bm ], [ %.1253927812790, %._crit_edge3107 ], [ %.1253927832803, %._crit_edge3189 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4242 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4233 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3198 ], [ %.1254327802805, %bb.di ], [ %.1254327782792, %._crit_edge3116 ], [ %.1254327782792, %bb.bm ], [ %.1254327782792, %._crit_edge3107 ], [ %.1254327802805, %._crit_edge3189 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4242 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4233 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3198 ], [ %.1254827772807, %bb.di ], [ %.1254827752794, %._crit_edge3116 ], [ %.1254827752794, %bb.bm ], [ %.1254827752794, %._crit_edge3107 ], [ %.1254827772807, %._crit_edge3189 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4242 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4233 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3198 ], [ %.1260627742809, %bb.di ], [ %.1260627722796, %._crit_edge3116 ], [ %.1260627722796, %bb.bm ], [ %.1260627722796, %._crit_edge3107 ], [ %.1260627742809, %._crit_edge3189 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4242 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4233 ]
  %.pre3782.pre = load i32, ptr %2, align 4, !tbaa !151
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bv, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.by, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3505 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bwd = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4131 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwd
  %invariant.gep4129 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwd ; 3 uses
  %.326083496 = add i32 %i.n, -1
  %.326083497 = add i32 %i.n, -1
  %invariant.op4772 = sub i32 1, %i.ay
  %invariant.op4773.a = sub i32 2, %i.ay
  %invariant.op4774 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3502 = add i32 %i.n, -1
  %i.bwe = add i32 %i.n, -1
  %scevgep4505.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4509.a = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4511.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4565.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4567.a = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4570 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4572 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4574.a = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4576 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4578 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4580 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bwf = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4582 = getelementptr i8, ptr %i.bwf, i64 16
  %invariant.op4793 = sub i32 1, %i.ay
  %invariant.op4794 = sub i32 2, %i.ay
  %invariant.op4795 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3814 = phi i32 [ %.pre3781, %.outer.us.preheader ], [ %.pre3814.be, %.outer.us.backedge ] ; 6 uses
  %i.bwg = phi i32 [ %i.bq, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983203.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983203.us, label %bb.dj, label %.lr.ph3206.us

bb.dj:                                            ; preds = %.lr.ph3206.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3206.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.czf, %.lr.ph3206.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.czi, %.lr.ph3206.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bwh = sub nsw i32 %.22607.ph.us, %.pre3814   ; 2 uses
  %i.bwi = icmp slt i32 %i.bwh, 2
  br i1 %i.bwi, label %.loopexit2877, label %bb.dk

bb.dk:                                            ; preds = %.loopexit2878.us, %bb.dj
  %.125332894.us = phi i32 [ 0, %bb.dj ], [ 1, %.loopexit2878.us ]
  %.not26982891.us = phi i1 [ true, %bb.dj ], [ false, %.loopexit2878.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bwh, %bb.dj ], [ %i.czb, %.loopexit2878.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dj ], [ %i.cza, %.loopexit2878.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dj ], [ %i.czf, %.loopexit2878.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dj ], [ %i.czi, %.loopexit2878.us ] ; 2 uses
  %i.bwj = load i32, ptr %i.l, align 4, !tbaa !151 ; 6 uses
  %i.bwk = sub nsw i32 %i.ay, %i.bwj
  %i.bwl = icmp slt i32 %.32608.us, %i.bwk
  br i1 %i.bwl, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bwm = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge.us = phi i32 [ %i.bwm, %bb.dl ], [ %i.ay, %bb.dk ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891.us, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bwn = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bwo = sext i32 %i.bwn to i64
  %i.bwp = getelementptr [8 x i8], ptr %i.s, i64 %i.bwo ; 2 uses
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 8
  %i.bwr = load double, ptr %i.bwq, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  %.not27023360.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023360.us, label %._crit_edge3364.us, label %.lr.ph3363.us

.lr.ph3363.us.new:                                ; preds = %.prol.loopexit4716, %.lr.ph3363.us.new
  %indvars.iv3714 = phi i64 [ %indvars.iv.next3715.3, %.lr.ph3363.us.new ], [ %indvars.iv3714.unr, %.prol.loopexit4716 ] ; 6 uses
  %i.bws = mul nsw i64 %indvars.iv3714, %i.bb
  %i.bwt = trunc nsw i64 %indvars.iv3714 to i32
  %i.bwu = sub i32 %i.czk, %i.bwt
  %i.bwv = sext i32 %i.bwu to i64
  %i.bww = getelementptr [8 x i8], ptr %i.p, i64 %i.bws
  %i.bwx = getelementptr [8 x i8], ptr %i.bww, i64 %i.bwv ; 2 uses
  %i.bwy = load double, ptr %i.bwx, align 8, !tbaa !153
  %i.bwz = fdiv double %i.bwy, %i.bwr
  store double %i.bwz, ptr %i.bwx, align 8, !tbaa !153
  %indvars.iv.next3715 = add nsw i64 %indvars.iv3714, 1 ; 2 uses
  %i.bxa = mul nsw i64 %indvars.iv.next3715, %i.bb
  %i.bxb = trunc nsw i64 %indvars.iv.next3715 to i32
  %i.bxc = sub i32 %i.czk, %i.bxb
  %i.bxd = sext i32 %i.bxc to i64
  %i.bxe = getelementptr [8 x i8], ptr %i.p, i64 %i.bxa
  %i.bxf = getelementptr [8 x i8], ptr %i.bxe, i64 %i.bxd ; 2 uses
  %i.bxg = load double, ptr %i.bxf, align 8, !tbaa !153
  %i.bxh = fdiv double %i.bxg, %i.bwr
  store double %i.bxh, ptr %i.bxf, align 8, !tbaa !153
  %indvars.iv.next3715.1 = add nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.bxi = mul nsw i64 %indvars.iv.next3715.1, %i.bb
  %i.bxj = trunc nsw i64 %indvars.iv.next3715.1 to i32
  %i.bxk = sub i32 %i.czk, %i.bxj
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr [8 x i8], ptr %i.p, i64 %i.bxi
  %i.bxn = getelementptr [8 x i8], ptr %i.bxm, i64 %i.bxl ; 2 uses
  %i.bxo = load double, ptr %i.bxn, align 8, !tbaa !153
  %i.bxp = fdiv double %i.bxo, %i.bwr
  store double %i.bxp, ptr %i.bxn, align 8, !tbaa !153
  %indvars.iv.next3715.2 = add nsw i64 %indvars.iv3714, 3 ; 2 uses
  %i.bxq = mul nsw i64 %indvars.iv.next3715.2, %i.bb
  %i.bxr = trunc nsw i64 %indvars.iv.next3715.2 to i32
  %i.bxs = sub i32 %i.czk, %i.bxr
  %i.bxt = sext i32 %i.bxs to i64
  %i.bxu = getelementptr [8 x i8], ptr %i.p, i64 %i.bxq
  %i.bxv = getelementptr [8 x i8], ptr %i.bxu, i64 %i.bxt ; 2 uses
  %i.bxw = load double, ptr %i.bxv, align 8, !tbaa !153
  %i.bxx = fdiv double %i.bxw, %i.bwr
  store double %i.bxx, ptr %i.bxv, align 8, !tbaa !153
  %indvars.iv.next3715.3 = add nsw i64 %indvars.iv3714, 4 ; 2 uses
  %lftr.wideiv3717.3 = trunc i64 %indvars.iv.next3715.3 to i32
  %exitcond3718.not.3 = icmp eq i32 %i.czk, %lftr.wideiv3717.3
  br i1 %exitcond3718.not.3, label %._crit_edge3364.us, label %.lr.ph3363.us.new, !llvm.loop !78

._crit_edge3364.us:                               ; preds = %.prol.loopexit4716, %.lr.ph3363.us.new, %bb.dn
  %i.bxy = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.bxy, ptr %i.c, align 4, !tbaa !151
  %i.bxz = add nsw i32 %.pre3814, %.32608.us      ; 4 uses
  store i32 %i.bxz, ptr %i.a, align 4, !tbaa !151
  %i.bya = call i32 @llvm.smin.i32(i32 %i.bxy, i32 %i.bxz) ; 9 uses
  %.not27043365.us = icmp sgt i32 %.32608.us, %i.bya
  br i1 %.not27043365.us, label %._crit_edge3369.us, label %iter.check4642

vec.epilog.scalar.ph4643:                         ; preds = %vec.epilog.scalar.ph4643, %vec.epilog.scalar.ph4643.preheader.new
  %indvars.iv3719 = phi i64 [ %indvars.iv3719.unr, %vec.epilog.scalar.ph4643.preheader.new ], [ %indvars.iv.next3720.3, %vec.epilog.scalar.ph4643 ] ; 5 uses
  %i.byb = trunc nsw i64 %indvars.iv3719 to i32
  %i.byc = add i32 %i.czy, %i.byb
  %i.byd = sext i32 %i.byc to i64
  %i.bye = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byd ; 2 uses
  %i.byf = load double, ptr %i.bye, align 8, !tbaa !153
  %i.byg = fdiv double %i.byf, %i.bwr
  store double %i.byg, ptr %i.bye, align 8, !tbaa !153
  %i.byh = trunc i64 %indvars.iv3719 to i32
  %.reass4780 = add i32 %i.byh, %invariant.op4779.a
  %i.byi = sext i32 %.reass4780 to i64
  %i.byj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byi ; 2 uses
  %i.byk = load double, ptr %i.byj, align 8, !tbaa !153
  %i.byl = fdiv double %i.byk, %i.bwr
  store double %i.byl, ptr %i.byj, align 8, !tbaa !153
  %i.bym = trunc i64 %indvars.iv3719 to i32
  %.reass4782 = add i32 %i.bym, %invariant.op4781
  %i.byn = sext i32 %.reass4782 to i64
  %i.byo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byn ; 2 uses
  %i.byp = load double, ptr %i.byo, align 8, !tbaa !153
  %i.byq = fdiv double %i.byp, %i.bwr
  store double %i.byq, ptr %i.byo, align 8, !tbaa !153
  %i.byr = trunc i64 %indvars.iv3719 to i32
  %.reass4784 = add i32 %i.byr, %invariant.op4783
  %i.bys = sext i32 %.reass4784 to i64
  %i.byt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bys ; 2 uses
  %i.byu = load double, ptr %i.byt, align 8, !tbaa !153
  %i.byv = fdiv double %i.byu, %i.bwr
  store double %i.byv, ptr %i.byt, align 8, !tbaa !153
  %indvars.iv.next3720.3 = add nuw nsw i64 %indvars.iv3719, 4 ; 2 uses
  %lftr.wideiv3722.3 = trunc i64 %indvars.iv.next3720.3 to i32
  %exitcond3723.not.3 = icmp eq i32 %i.daa, %lftr.wideiv3722.3
  br i1 %exitcond3723.not.3, label %._crit_edge3369.us, label %vec.epilog.scalar.ph4643, !llvm.loop !79

._crit_edge3369.us:                               ; preds = %vec.epilog.scalar.ph4643.prol.loopexit, %vec.epilog.scalar.ph4643, %middle.block4638, %vec.epilog.middle.block4654, %._crit_edge3364.us
  %i.byw = add i32 %i.bwj, %.32608.us             ; 7 uses
  %i.byx = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053383.us = icmp slt i32 %i.bwj, 1
  br i1 %.not27053383.us, label %bb.dp, label %.lr.ph3387.us

bb.do:                                            ; preds = %.lr.ph3387.us, %._crit_edge3379.us
  %indvar4562 = phi i64 [ 0, %.lr.ph3387.us ], [ %indvar.next4563, %._crit_edge3379.us ] ; 8 uses
  %indvar4502 = phi i32 [ 0, %.lr.ph3387.us ], [ %indvar.next4503, %._crit_edge3379.us ] ; 4 uses
  %indvars.iv3724 = phi i64 [ %i.ddt, %.lr.ph3387.us ], [ %indvars.iv.next3725, %._crit_edge3379.us ] ; 12 uses
  %.182575.neg3385.us.in = phi i32 [ %.32608.us, %.lr.ph3387.us ], [ %i.cae, %._crit_edge3379.us ]
  %i.byy = add i64 %indvar4562, %i.ddt
  %i.byz = trunc i64 %indvar4562 to i32
  %i.bza = mul i32 %i.n, %i.byz
  %i.bzb = add i32 %i.bza, %i.deq
  %i.bzc = sext i32 %i.bzb to i64
  %i.bzd = shl nsw i64 %i.bzc, 3                  ; 2 uses
  %scevgep4566 = getelementptr i8, ptr %scevgep4565.a, i64 %i.bzd ; 5 uses
  %smax4568 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %i.bze = add i64 %indvar4562, %i.ddt
  %i.bzf = sub i64 %smax4568, %i.bze
  %i.bzg = shl nsw i64 %i.bzf, 3                  ; 3 uses
  %i.bzh = getelementptr i8, ptr %scevgep4567.a, i64 %i.bzg
  %scevgep4569.a = getelementptr i8, ptr %i.bzh, i64 %i.bzd ; 5 uses
  %i.bzi = trunc i64 %indvar4562 to i32
  %i.bzj = add i32 %i.der, %i.bzi
  %i.bzk = sext i32 %i.bzj to i64
  %17 = shl nsw i64 %i.bzk, 3                     ; 3 uses
  %scevgep4571 = getelementptr i8, ptr %scevgep4570, i64 %17 ; 2 uses
  %scevgep4573 = getelementptr i8, ptr %scevgep4572, i64 %17
  %18 = getelementptr i8, ptr %scevgep4574.a, i64 %i.bzg
  %scevgep4575.a = getelementptr i8, ptr %18, i64 %17
  %i.bzl = trunc i64 %indvar4562 to i32
  %i.bzm = add i32 %i.des, %i.bzl
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = shl nsw i64 %i.bzn, 3                  ; 3 uses
  %scevgep4577 = getelementptr i8, ptr %scevgep4576, i64 %i.bzo ; 2 uses
  %scevgep4579 = getelementptr i8, ptr %scevgep4578, i64 %i.bzo
  %i.bzp = getelementptr i8, ptr %scevgep4580, i64 %i.bzg
  %scevgep4581 = getelementptr i8, ptr %i.bzp, i64 %i.bzo
  %i.bzq = mul i32 %.0255729743492, %indvar4502
  %i.bzr = add i32 %i.ddz, %i.bzq
  %i.bzs = sext i32 %i.bzr to i64                 ; 2 uses
  %i.bzt = shl nsw i64 %i.bzs, 3
  %scevgep4506.a = getelementptr i8, ptr %scevgep4505.a, i64 %i.bzt ; 2 uses
  %i.bzu = add nsw i64 %i.dee, %i.bzs
  %i.bzv = shl nsw i64 %i.bzu, 3
  %scevgep4508.a = getelementptr i8, ptr %scevgep4507, i64 %i.bzv ; 2 uses
  %i.bzw = add i32 %i.def, %indvar4502
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = shl nsw i64 %i.bzx, 3
  %scevgep4510.a = getelementptr i8, ptr %scevgep4509.a, i64 %i.bzy
  %i.bzz = mul i32 %.0255729743492, %indvar4502
  %i.caa = add i32 %i.ddz, %i.bzz                 ; 2 uses
  %i.cab = trunc i64 %indvars.iv3724 to i32
  %i.cac = mul i32 %i.n, %i.cab
  %i.cad = sub i32 %i.cac, %.182575.neg3385.us.in ; 9 uses
  %i.cae = trunc nsw i64 %indvars.iv3724 to i32   ; 3 uses
  %.reass3381.us.reass.reass = add i32 %i.cae, %invariant.op4792 ; 2 uses
  %i.caf = add nsw i32 %.reass3381.us.reass.reass, %i.ddo ; 3 uses
  %i.cag = sext i32 %i.caf to i64
  %i.cah = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cag ; 2 uses
  %i.cai = add nsw i32 %.reass3381.us.reass.reass, %i.bwn ; 3 uses
  %i.caj = sext i32 %i.cai to i64
  %i.cak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.caj ; 2 uses
  %i.cal = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %reass.sub4657 = sub i64 %i.cal, %i.byy
  %i.cam = add i64 %reass.sub4657, 1              ; 3 uses
  %min.iters.check4604 = icmp ult i64 %i.cam, 12
  br i1 %min.iters.check4604, label %scalar.ph4603.preheader, label %vector.scevcheck4560

vector.scevcheck4560:                             ; preds = %bb.do
  %i.can = trunc i64 %indvar4562 to i32
  %i.cao = mul i32 %i.n, %i.can
  %i.cap = add i32 %i.cao, %i.deq                 ; 2 uses
  %smax4561 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %i.caq = add i64 %indvar4562, %i.ddt
  %i.car = sub i64 %smax4561, %i.caq              ; 2 uses
  %i.cas = trunc i64 %i.car to i32                ; 3 uses
  %i.cat = add i32 %i.cap, %i.cas
  %i.cau = icmp slt i32 %i.cat, %i.cap
  %i.cav = add i32 %i.cai, %i.cas
  %i.caw = icmp slt i32 %i.cav, %i.cai
  %i.cax = icmp ugt i64 %i.car, 4294967295
  %i.cay = or i1 %i.caw, %i.cax
  %i.caz = add i32 %i.caf, %i.cas
  %i.cba = icmp slt i32 %i.caz, %i.caf
  %i.cbb = or i1 %i.cau, %i.cay
  %i.cbc = or i1 %i.cba, %i.cbb
  br i1 %i.cbc, label %scalar.ph4603.preheader, label %vector.memcheck4564

vector.memcheck4564:                              ; preds = %vector.scevcheck4560
  %bound04584 = icmp ult ptr %scevgep4566, %scevgep4573
  %bound14585 = icmp ult ptr %scevgep4571, %scevgep4569.a
  %found.conflict4586 = and i1 %bound04584, %bound14585
  %bound04587.a = icmp ult ptr %scevgep4566, %scevgep4575.a
  %bound14588.a = icmp ult ptr %scevgep4571, %scevgep4569.a
  %found.conflict4589.a = and i1 %bound04587.a, %bound14588.a
  %conflict.rdx4590.a = or i1 %found.conflict4586, %found.conflict4589.a
  %bound04591.a = icmp ult ptr %scevgep4566, %scevgep4579
  %bound14592.a = icmp ult ptr %scevgep4577, %scevgep4569.a
  %found.conflict4593.a = and i1 %bound04591.a, %bound14592.a
  %conflict.rdx4594.a = or i1 %conflict.rdx4590.a, %found.conflict4593.a
  %bound04595 = icmp ult ptr %scevgep4566, %scevgep4581
  %bound14596 = icmp ult ptr %scevgep4577, %scevgep4569.a
  %found.conflict4597 = and i1 %bound04595, %bound14596
  %conflict.rdx4598 = or i1 %conflict.rdx4594.a, %found.conflict4597
  %bound04599 = icmp ult ptr %scevgep4566, %scevgep4583
  %bound14600 = icmp ult ptr %i.ddr, %scevgep4569.a
  %found.conflict4601 = and i1 %bound04599, %bound14600
  %conflict.rdx4602 = or i1 %conflict.rdx4598, %found.conflict4601
  br i1 %conflict.rdx4602, label %scalar.ph4603.preheader, label %vector.ph4605

vector.ph4605:                                    ; preds = %vector.memcheck4564
  %n.vec4606 = and i64 %i.cam, -4                 ; 3 uses
  %i.cbd = add i64 %indvars.iv3724, %n.vec4606
  %i.cbe = load double, ptr %i.cah, align 8, !tbaa !153, !alias.scope !170
  %broadcast.splatinsert4613 = insertelement <4 x double> poison, double %i.cbe, i64 0
  %broadcast.splat4614 = shufflevector <4 x double> %broadcast.splatinsert4613, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cbf = load double, ptr %i.cak, align 8, !tbaa !153, !alias.scope !171
  %broadcast.splatinsert4607 = insertelement <4 x double> poison, double %i.cbf, i64 0
  %broadcast.splat4608 = shufflevector <4 x double> %broadcast.splatinsert4607, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbg = fneg <4 x double> %broadcast.splat4608
  %i.cbh = load double, ptr %i.ddr, align 8, !tbaa !153, !alias.scope !172
  %broadcast.splatinsert4616 = insertelement <4 x double> poison, double %i.cbh, i64 0
  %broadcast.splat4617 = shufflevector <4 x double> %broadcast.splatinsert4616, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4609

vector.body4609:                                  ; preds = %vector.body4609, %vector.ph4605
  %index4610 = phi i64 [ 0, %vector.ph4605 ], [ %index.next4618, %vector.body4609 ] ; 2 uses
  %i.cbi = add i64 %indvars.iv3724, %index4610
  %i.cbj = trunc nsw i64 %i.cbi to i32            ; 2 uses
  %i.cbk = add i32 %i.cad, %i.cbj
  %i.cbl = sext i32 %i.cbk to i64
  %i.cbm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbl ; 2 uses
  %wide.load4611 = load <4 x double>, ptr %i.cbm, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %.reass4786 = add i32 %i.cbj, %invariant.op4785 ; 2 uses
  %i.cbn = add nsw i32 %.reass4786, %i.bwn
  %i.cbo = sext i32 %i.cbn to i64
  %i.cbp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbo
  %wide.load4612 = load <4 x double>, ptr %i.cbp, align 8, !tbaa !153, !alias.scope !175 ; 2 uses
  %i.cbq = fneg <4 x double> %wide.load4612
  %i.cbr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbq, <4 x double> %broadcast.splat4614, <4 x double> %wide.load4611)
  %i.cbs = add nsw i32 %.reass4786, %i.ddo
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbt
  %wide.load4615 = load <4 x double>, ptr %i.cbu, align 8, !tbaa !153, !alias.scope !176
  %i.cbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbg, <4 x double> %wide.load4615, <4 x double> %i.cbr)
  %i.cbw = fmul <4 x double> %wide.load4612, %broadcast.splat4617
  %i.cbx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbw, <4 x double> %broadcast.splat4608, <4 x double> %i.cbv)
  store <4 x double> %i.cbx, ptr %i.cbm, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %index.next4618 = add nuw i64 %index4610, 4     ; 2 uses
  %i.cby = icmp eq i64 %index.next4618, %n.vec4606
  br i1 %i.cby, label %middle.block4619, label %vector.body4609, !llvm.loop !87

middle.block4619:                                 ; preds = %vector.body4609
  %cmp.n4620 = icmp eq i64 %i.cam, %n.vec4606
  br i1 %cmp.n4620, label %.loopexit, label %scalar.ph4603.preheader

scalar.ph4603.preheader:                          ; preds = %vector.memcheck4564, %vector.scevcheck4560, %bb.do, %middle.block4619
  %indvars.iv3726.ph = phi i64 [ %indvars.iv3724, %vector.memcheck4564 ], [ %indvars.iv3724, %vector.scevcheck4560 ], [ %indvars.iv3724, %bb.do ], [ %i.cbd, %middle.block4619 ]
  br label %scalar.ph4603

scalar.ph4603:                                    ; preds = %scalar.ph4603.preheader, %scalar.ph4603
  %indvars.iv3726 = phi i64 [ %indvars.iv.next3727, %scalar.ph4603 ], [ %indvars.iv3726.ph, %scalar.ph4603.preheader ] ; 3 uses
  %i.cbz = trunc nsw i64 %indvars.iv3726 to i32   ; 2 uses
  %i.cca = add i32 %i.cad, %i.cbz
  %i.ccb = sext i32 %i.cca to i64
  %i.ccc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccb ; 2 uses
  %i.ccd = load double, ptr %i.ccc, align 8, !tbaa !153
  %.reass3371.us.reass.reass = add i32 %i.cbz, %invariant.op4787 ; 2 uses
  %i.cce = add nsw i32 %.reass3371.us.reass.reass, %i.bwn
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccf
  %i.cch = load double, ptr %i.ccg, align 8, !tbaa !153 ; 2 uses
  %i.cci = load double, ptr %i.cah, align 8, !tbaa !153
  %i.ccj = fneg double %i.cch
  %i.cck = call double @llvm.fmuladd.f64(double %i.ccj, double %i.cci, double %i.ccd)
  %i.ccl = load double, ptr %i.cak, align 8, !tbaa !153 ; 2 uses
  %i.ccm = add nsw i32 %.reass3371.us.reass.reass, %i.ddo
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccn
  %i.ccp = load double, ptr %i.cco, align 8, !tbaa !153
  %i.ccq = fneg double %i.ccl
  %i.ccr = call double @llvm.fmuladd.f64(double %i.ccq, double %i.ccp, double %i.cck)
  %i.ccs = load double, ptr %i.ddr, align 8, !tbaa !153
  %i.cct = fmul double %i.cch, %i.ccs
  %i.ccu = call double @llvm.fmuladd.f64(double %i.cct, double %i.ccl, double %i.ccr)
  store double %i.ccu, ptr %i.ccc, align 8, !tbaa !153
  %indvars.iv.next3727 = add nsw i64 %indvars.iv3726, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3726, %i.ddu
  br i1 %.not2726.us.not, label %scalar.ph4603, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph4603, %middle.block4619
  br i1 %.not2728.not3375.us, label %iter.check4544, label %._crit_edge3379.us

vec.epilog.scalar.ph4545:                         ; preds = %vec.epilog.scalar.ph4545.prol.loopexit, %vec.epilog.scalar.ph4545
  %indvars.iv3729 = phi i64 [ %indvars.iv.next3730.3, %vec.epilog.scalar.ph4545 ], [ %indvars.iv3729.unr, %vec.epilog.scalar.ph4545.prol.loopexit ] ; 4 uses
  %i.ccv = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.ccw = trunc i64 %indvars.iv3729 to i32
  %i.ccx = add i32 %i.ccw, 1                      ; 2 uses
  %i.ccy = add i32 %i.dds, %i.ccx
  %i.ccz = sext i32 %i.ccy to i64
  %i.cda = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccz
  %i.cdb = load double, ptr %i.cda, align 8, !tbaa !153
  %i.cdc = add i32 %i.cad, %i.ccx
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdd ; 2 uses
  %i.cdf = load double, ptr %i.cde, align 8, !tbaa !153
  %i.cdg = fneg double %i.ccv
  %i.cdh = call double @llvm.fmuladd.f64(double %i.cdg, double %i.cdb, double %i.cdf)
  store double %i.cdh, ptr %i.cde, align 8, !tbaa !153
  %i.cdi = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cdj = trunc i64 %indvars.iv3729 to i32
  %i.cdk = add i32 %i.cdj, 2                      ; 2 uses
  %i.cdl = add i32 %i.dds, %i.cdk
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdm
  %i.cdo = load double, ptr %i.cdn, align 8, !tbaa !153
  %i.cdp = add i32 %i.cad, %i.cdk
  %i.cdq = sext i32 %i.cdp to i64
  %i.cdr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdq ; 2 uses
  %i.cds = load double, ptr %i.cdr, align 8, !tbaa !153
  %i.cdt = fneg double %i.cdi
  %i.cdu = call double @llvm.fmuladd.f64(double %i.cdt, double %i.cdo, double %i.cds)
  store double %i.cdu, ptr %i.cdr, align 8, !tbaa !153
  %i.cdv = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cdw = trunc i64 %indvars.iv3729 to i32
  %i.cdx = add i32 %i.cdw, 3                      ; 2 uses
  %i.cdy = add i32 %i.dds, %i.cdx
  %i.cdz = sext i32 %i.cdy to i64
  %i.cea = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdz
  %i.ceb = load double, ptr %i.cea, align 8, !tbaa !153
  %i.cec = add i32 %i.cad, %i.cdx
  %i.ced = sext i32 %i.cec to i64
  %i.cee = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ced ; 2 uses
  %i.cef = load double, ptr %i.cee, align 8, !tbaa !153
  %i.ceg = fneg double %i.cdv
  %i.ceh = call double @llvm.fmuladd.f64(double %i.ceg, double %i.ceb, double %i.cef)
  store double %i.ceh, ptr %i.cee, align 8, !tbaa !153
  %indvars.iv.next3730.3 = add nsw i64 %indvars.iv3729, 4 ; 3 uses
  %i.cei = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cej = trunc nsw i64 %indvars.iv.next3730.3 to i32 ; 2 uses
  %i.cek = add i32 %i.dds, %i.cej
  %i.cel = sext i32 %i.cek to i64
  %i.cem = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cel
  %i.cen = load double, ptr %i.cem, align 8, !tbaa !153
  %i.ceo = add i32 %i.cad, %i.cej
  %i.cep = sext i32 %i.ceo to i64
  %i.ceq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cep ; 2 uses
  %i.cer = load double, ptr %i.ceq, align 8, !tbaa !153
  %i.ces = fneg double %i.cei
  %i.cet = call double @llvm.fmuladd.f64(double %i.ces, double %i.cen, double %i.cer)
  store double %i.cet, ptr %i.ceq, align 8, !tbaa !153
  %exitcond3733.not.3 = icmp eq i64 %indvars.iv.next3730.3, %wide.trip.count3732
  br i1 %exitcond3733.not.3, label %._crit_edge3379.us, label %vec.epilog.scalar.ph4545, !llvm.loop !89

._crit_edge3379.us:                               ; preds = %vec.epilog.scalar.ph4545.prol.loopexit, %vec.epilog.scalar.ph4545, %middle.block4540, %vec.epilog.middle.block4557, %.loopexit
  %indvars.iv.next3725 = add nsw i64 %indvars.iv3724, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3724, %i.ddu
  %indvar.next4503 = add i32 %indvar4502, 1
  %indvar.next4563 = add i64 %indvar4562, 1
  br i1 %.not2705.us.not, label %bb.do, label %._crit_edge3388.us, !llvm.loop !90

bb.dp:                                            ; preds = %._crit_edge3388.us, %._crit_edge3369.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  br i1 %.not27023360.us, label %bb.ds, label %.lr.ph3400.us

bb.dq:                                            ; preds = %.lr.ph3400.us, %._crit_edge3394.us
  %indvars.iv3738 = phi i64 [ %i.dfl, %.lr.ph3400.us ], [ %indvars.iv.next3739, %._crit_edge3394.us ] ; 4 uses
  %i.ceu = trunc i64 %indvars.iv3738 to i32
  %i.cev = add i32 %.pre3814, %i.ceu
  %i.cew = call i32 @llvm.smin.i32(i32 %i.cev, i32 %i.byw) ; 2 uses
  %.not27253390.us.not = icmp slt i32 %.32608.us, %i.cew
  br i1 %.not27253390.us.not, label %.lr.ph3393.us, label %._crit_edge3394.us

bb.dr:                                            ; preds = %.lr.ph3393.us, %bb.dr
  %indvars.iv3735.in = phi i64 [ %i.dfk, %.lr.ph3393.us ], [ %indvars.iv3735, %bb.dr ]
  %indvars.iv3735 = add nuw nsw i64 %indvars.iv3735.in, 1 ; 3 uses
  %i.cex = trunc nsw i64 %indvars.iv3735 to i32   ; 2 uses
  %i.cey = add i32 %i.dfj, %i.cex
  %i.cez = sext i32 %i.cey to i64
  %i.cfa = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cez
  %i.cfb = load double, ptr %i.cfa, align 8, !tbaa !153
  %i.cfc = load double, ptr %i.dfg, align 8, !tbaa !153
  %i.cfd = add i32 %i.dfh, %i.cex
  %i.cfe = sext i32 %i.cfd to i64
  %i.cff = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfe ; 2 uses
  %i.cfg = load double, ptr %i.cff, align 8, !tbaa !153
  %i.cfh = fneg double %i.cfb
  %i.cfi = call double @llvm.fmuladd.f64(double %i.cfh, double %i.cfc, double %i.cfg)
  store double %i.cfi, ptr %i.cff, align 8, !tbaa !153
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3735, %i.dfi
  br i1 %.not2725.us.not, label %bb.dr, label %._crit_edge3394.us, !llvm.loop !91

._crit_edge3394.us:                               ; preds = %bb.dr, %bb.dq
  %indvars.iv.next3739 = add nsw i64 %indvars.iv3738, 1 ; 2 uses
  %lftr.wideiv3742 = trunc i64 %indvars.iv.next3739 to i32
  %exitcond3743.not = icmp eq i32 %i.byx, %lftr.wideiv3742
  br i1 %exitcond3743.not, label %._crit_edge3401.us, label %bb.dq, !llvm.loop !92

bb.ds:                                            ; preds = %._crit_edge3401.us, %bb.dp
  br i1 %.not, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
end_hunk_1
