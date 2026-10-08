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
  %scevgep4339 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4341 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4344 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bl = getelementptr i8, ptr %5, i64 %i.bf
  %i.bm = getelementptr i8, ptr %7, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = getelementptr i8, ptr %5, i64 %i.be
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3782 = phi i32 [ %.pre3782.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bq = phi i32 [ %i.bwg, %.loopexit2884 ], [ %i.av, %bb.q ] ; 5 uses
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
  %min.iters.check4389 = icmp ult i64 %i.ep, 4
  br i1 %min.iters.check4389, label %vec.epilog.scalar.ph4408.preheader, label %vector.scevcheck4387

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

end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %i.bsy = add nsw i32 %.113190, -1
  %i.bsz = icmp sgt i32 %.113190, 1
  br i1 %i.bsz, label %bb.df, label %._crit_edge3193.loopexit, !llvm.loop !74

._crit_edge3193.loopexit:                         ; preds = %bb.dh
  %.pre3887 = load i32, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3193

._crit_edge3193:                                  ; preds = %._crit_edge3193.loopexit, %.lr.ph3197
  %i.bta = phi i32 [ %.pre3887, %._crit_edge3193.loopexit ], [ %i.brn, %.lr.ph3197 ] ; 2 uses
  %i.btb = add nuw nsw i32 %.1125683195, 1
  %.not2658.not = icmp slt i32 %.1125683195, %i.bta
  br i1 %.not2658.not, label %.lr.ph3197, label %._crit_edge3198, !llvm.loop !75

._crit_edge3198:                                  ; preds = %._crit_edge3193
  %.pre3888 = load i32, ptr %4, align 4, !tbaa !151 ; 6 uses
  %i.btc = icmp sgt i32 %.pre3888, 1
  br i1 %i.btc, label %bb.di, label %.loopexit2884

bb.di:                                            ; preds = %._crit_edge3198
  %i.btd = load i32, ptr %3, align 4, !tbaa !151  ; 2 uses
  %i.bte = shl i32 %i.btd, 1
  %i.btf = add i32 %.1260627742809, 1
  %i.btg = sub i32 %i.btf, %.pre3888
  %i.bth = add i32 %i.btg, %i.bte                 ; 3 uses
  store i32 %i.bth, ptr %i.c, align 4, !tbaa !151
  %i.bti = load i32, ptr %2, align 4, !tbaa !151  ; 6 uses
  %.not2659.not3199 = icmp sgt i32 %i.bti, %i.bth
  br i1 %.not2659.not3199, label %.lr.ph3202, label %.loopexit2884

.lr.ph3202:                                       ; preds = %bb.di
  %i.btj = add i32 %i.btd, %i.ay                  ; 8 uses
  %i.btk = sext i32 %i.bti to i64                 ; 11 uses
  %i.btl = sext i32 %i.bth to i64                 ; 3 uses
  %i.btm = sub nsw i64 %i.btk, %i.btl             ; 3 uses
  %min.iters.check = icmp ult i64 %i.btm, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3202
  %i.btn = xor i64 %i.btl, -1
  %i.bto = add nsw i64 %i.btn, %i.btk             ; 2 uses
  %i.btp = shl i32 %i.bti, 1
  %i.btq = xor i32 %i.btj, -1
  %i.btr = add i32 %i.btp, %i.btq                 ; 2 uses
  %i.bts = trunc i64 %i.bto to i32                ; 2 uses
  %i.btt = sub i32 %i.btr, %i.bts
  %i.btu = icmp sgt i32 %i.btt, %i.btr
  %i.btv = xor i32 %i.btj, -1
  %i.btw = add i32 %i.bti, %i.btv                 ; 2 uses
  %i.btx = sub i32 %i.btw, %i.bts
  %i.bty = icmp sgt i32 %i.btx, %i.btw
  %i.btz = icmp ugt i64 %i.bto, 4294967295
  %i.bua = or i1 %i.bty, %i.btz
  %i.bub = or i1 %i.btu, %i.bua
  br i1 %i.bub, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.buc = shl nsw i64 %i.btk, 3                  ; 3 uses
  %i.bud = add nsw i64 %i.buc, -1
  %diff.check = icmp ult i64 %i.bud, 31
  %i.bue = shl i32 %i.bti, 1
  %i.buf = xor i32 %i.btj, -1
  %i.bug = add i32 %i.bue, %i.buf
  %i.buh = sext i32 %i.bug to i64
  %i.bui = add nsw i64 %i.bd, %i.buh
  %i.buj = shl nsw i64 %i.bui, 3                  ; 2 uses
  %i.buk = shl nsw i64 %i.btk, 4                  ; 2 uses
  %i.bul = sub nsw i64 %i.buj, %i.buk
  %diff.check4214 = icmp ult i64 %i.bul, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4214
  %i.bum = xor i32 %i.btj, -1
  %i.bun = add i32 %i.bti, %i.bum
  %i.buo = sext i32 %i.bun to i64
  %i.bup = add nsw i64 %i.bd, %i.buo
  %i.buq = shl nsw i64 %i.bup, 3                  ; 2 uses
  %i.bur = sub nsw i64 %i.buk, %i.buq
  %i.bus = add nsw i64 %i.bur, -9
  %diff.check4215 = icmp ult i64 %i.bus, 31
  %conflict.rdx4216 = or i1 %conflict.rdx, %diff.check4215
  %i.but = sub nsw i64 %i.buj, %i.buc
  %diff.check4217 = icmp ult i64 %i.but, 24
  %conflict.rdx4218 = or i1 %conflict.rdx4216, %diff.check4217
  %i.buu = sub nsw i64 %i.buq, %i.buc
  %diff.check4219 = icmp ult i64 %i.buu, 24
  %conflict.rdx4220 = or i1 %conflict.rdx4218, %diff.check4219
  br i1 %conflict.rdx4220, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.btm, -4                     ; 3 uses
  %i.buv = sub nsw i64 %i.btk, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.buw = xor i64 %index, -1
  %i.bux = add i64 %i.buw, %i.btk                 ; 3 uses
  %i.buy = add nsw i64 %i.bux, %i.btk             ; 2 uses
  %i.buz = trunc nsw i64 %i.buy to i32
  %i.bva = sub i32 %i.buz, %i.btj
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvb
  %i.bvd = getelementptr inbounds i8, ptr %i.bvc, i64 -24
  %wide.load = load <4 x double>, ptr %i.bvd, align 8, !tbaa !153
  %i.bve = sub nsw i64 %i.buy, %i.bd
  %i.bvf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bve
  %i.bvg = getelementptr inbounds i8, ptr %i.bvf, i64 -24
  store <4 x double> %wide.load, ptr %i.bvg, align 8, !tbaa !153
  %i.bvh = trunc nsw i64 %i.bux to i32
  %i.bvi = sub i32 %i.bvh, %i.btj
  %i.bvj = sext i32 %i.bvi to i64
  %i.bvk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvj
  %i.bvl = getelementptr inbounds i8, ptr %i.bvk, i64 -24
  %wide.load4221 = load <4 x double>, ptr %i.bvl, align 8, !tbaa !153
  %i.bvm = sub nsw i64 %i.bux, %i.bd
  %i.bvn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvm
  %i.bvo = getelementptr inbounds i8, ptr %i.bvn, i64 -24
  store <4 x double> %wide.load4221, ptr %i.bvo, align 8, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bvp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvp, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.btm, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3202, %middle.block
  %indvars.iv3648.ph = phi i64 [ %i.btk, %vector.memcheck ], [ %i.btk, %vector.scevcheck ], [ %i.btk, %.lr.ph3202 ], [ %i.buv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3648 = phi i64 [ %indvars.iv.next3649, %scalar.ph ], [ %indvars.iv3648.ph, %scalar.ph.preheader ]
  %indvars.iv.next3649 = add nsw i64 %indvars.iv3648, -1 ; 5 uses
  %i.bvq = add nsw i64 %indvars.iv.next3649, %i.btk ; 2 uses
  %i.bvr = trunc nsw i64 %i.bvq to i32
  %i.bvs = sub i32 %i.bvr, %i.btj
  %i.bvt = sext i32 %i.bvs to i64
  %i.bvu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvt
  %i.bvv = load double, ptr %i.bvu, align 8, !tbaa !153
  %i.bvw = sub nsw i64 %i.bvq, %i.bd
  %i.bvx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvw
  store double %i.bvv, ptr %i.bvx, align 8, !tbaa !153
  %i.bvy = trunc nsw i64 %indvars.iv.next3649 to i32
  %i.bvz = sub i32 %i.bvy, %i.btj
  %i.bwa = sext i32 %i.bvz to i64
  %i.bwb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwa
  %i.bwc = load double, ptr %i.bwb, align 8, !tbaa !153
  %i.bwd = sub nsw i64 %indvars.iv.next3649, %i.bd
  %i.bwe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwd
  store double %i.bwc, ptr %i.bwe, align 8, !tbaa !153
  %.not2659.not = icmp sgt i64 %indvars.iv.next3649, %i.btl
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !77

.loopexit2884.sink.split:                         ; preds = %bb.cp, %._crit_edge3168, %bb.at, %._crit_edge3084
  %.ph4084.sink = phi i32 [ %i.aci, %bb.at ], [ %.pre3854, %._crit_edge3084 ], [ %.pre3879, %._crit_edge3168 ], [ %i.bjg, %bb.cp ] ; 2 uses
  %.sink4175 = phi ptr [ %i.b, %bb.at ], [ %i.b, %._crit_edge3084 ], [ %i.c, %._crit_edge3168 ], [ %i.c, %bb.cp ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.at ], [ %.025322917, %._crit_edge3084 ], [ %.025322918, %._crit_edge3168 ], [ %.025322918, %bb.cp ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.at ], [ %.1253927812790, %._crit_edge3084 ], [ %.1253927832803, %._crit_edge3168 ], [ %.1253927832803, %bb.cp ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.at ], [ %.1254327782792, %._crit_edge3084 ], [ %.1254327802805, %._crit_edge3168 ], [ %.1254327802805, %bb.cp ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.at ], [ %.1254827752794, %._crit_edge3084 ], [ %.1254827772807, %._crit_edge3168 ], [ %.1254827772807, %bb.cp ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.at ], [ %.1260627722796, %._crit_edge3084 ], [ %.1260627742809, %._crit_edge3168 ], [ %.1260627742809, %bb.cp ]
  %i.bwf = add nsw i32 %.ph4084.sink, -1
  store i32 %i.bwf, ptr %.sink4175, align 4, !tbaa !151
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4233, %scalar.ph, %middle.block4242, %middle.block, %.loopexit2884.sink.split, %._crit_edge3189, %._crit_edge3107, %bb.bm, %bb.di, %._crit_edge3198, %._crit_edge3116
  %i.bwg = phi i32 [ %.pre3888, %._crit_edge3198 ], [ %.pre3888, %bb.di ], [ %.pre3864, %._crit_edge3116 ], [ %.pre3864, %bb.bm ], [ %.pre3860, %._crit_edge3107 ], [ %.pre3884, %._crit_edge3189 ], [ %.ph4084.sink, %.loopexit2884.sink.split ], [ %.pre3888, %middle.block ], [ %.pre3864, %middle.block4242 ], [ %.pre3888, %scalar.ph ], [ %.pre3864, %scalar.ph4233 ]
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
  %i.bwh = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4131 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwh
  %invariant.gep4129 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwh ; 3 uses
  %.326083496 = add i32 %i.n, -1
  %.326083497 = add i32 %i.n, -1
  %invariant.op4772 = sub i32 1, %i.ay
  %invariant.op4773.a = sub i32 2, %i.ay
  %invariant.op4774 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3502 = add i32 %i.n, -1
  %i.bwi = add i32 %i.n, -1
  %scevgep4505 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4509 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4511 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4565 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4567 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4570 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4572 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4574.a = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4576 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4578 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4580 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bwj = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4582 = getelementptr i8, ptr %i.bwj, i64 16
  %invariant.op4793 = sub i32 1, %i.ay
  %invariant.op4794 = sub i32 2, %i.ay
  %invariant.op4795 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3814 = phi i32 [ %.pre3781, %.outer.us.preheader ], [ %.pre3814.be, %.outer.us.backedge ] ; 6 uses
  %i.bwk = phi i32 [ %i.bq, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983203.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983203.us, label %bb.dj, label %.lr.ph3206.us

bb.dj:                                            ; preds = %.lr.ph3206.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3206.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.czj, %.lr.ph3206.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.czm, %.lr.ph3206.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bwl = sub nsw i32 %.22607.ph.us, %.pre3814   ; 2 uses
  %i.bwm = icmp slt i32 %i.bwl, 2
  br i1 %i.bwm, label %.loopexit2877, label %bb.dk

bb.dk:                                            ; preds = %.loopexit2878.us, %bb.dj
  %.125332894.us = phi i32 [ 0, %bb.dj ], [ 1, %.loopexit2878.us ]
  %.not26982891.us = phi i1 [ true, %bb.dj ], [ false, %.loopexit2878.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bwl, %bb.dj ], [ %i.czf, %.loopexit2878.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dj ], [ %i.cze, %.loopexit2878.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dj ], [ %i.czj, %.loopexit2878.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dj ], [ %i.czm, %.loopexit2878.us ] ; 2 uses
  %i.bwn = load i32, ptr %i.l, align 4, !tbaa !151 ; 6 uses
  %i.bwo = sub nsw i32 %i.ay, %i.bwn
  %i.bwp = icmp slt i32 %.32608.us, %i.bwo
  br i1 %i.bwp, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bwq = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge.us = phi i32 [ %i.bwq, %bb.dl ], [ %i.ay, %bb.dk ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891.us, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bwr = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bws = sext i32 %i.bwr to i64
  %i.bwt = getelementptr [8 x i8], ptr %i.s, i64 %i.bws ; 2 uses
  %i.bwu = getelementptr i8, ptr %i.bwt, i64 8
  %i.bwv = load double, ptr %i.bwu, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  %.not27023360.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023360.us, label %._crit_edge3364.us, label %.lr.ph3363.us

.lr.ph3363.us.new:                                ; preds = %.prol.loopexit4716, %.lr.ph3363.us.new
  %indvars.iv3714 = phi i64 [ %indvars.iv.next3715.3, %.lr.ph3363.us.new ], [ %indvars.iv3714.unr, %.prol.loopexit4716 ] ; 6 uses
  %i.bww = mul nsw i64 %indvars.iv3714, %i.bb
  %i.bwx = trunc nsw i64 %indvars.iv3714 to i32
  %i.bwy = sub i32 %i.czo, %i.bwx
  %i.bwz = sext i32 %i.bwy to i64
  %i.bxa = getelementptr [8 x i8], ptr %i.p, i64 %i.bww
  %i.bxb = getelementptr [8 x i8], ptr %i.bxa, i64 %i.bwz ; 2 uses
  %i.bxc = load double, ptr %i.bxb, align 8, !tbaa !153
  %i.bxd = fdiv double %i.bxc, %i.bwv
  store double %i.bxd, ptr %i.bxb, align 8, !tbaa !153
  %indvars.iv.next3715 = add nsw i64 %indvars.iv3714, 1 ; 2 uses
  %i.bxe = mul nsw i64 %indvars.iv.next3715, %i.bb
  %i.bxf = trunc nsw i64 %indvars.iv.next3715 to i32
  %i.bxg = sub i32 %i.czo, %i.bxf
  %i.bxh = sext i32 %i.bxg to i64
  %i.bxi = getelementptr [8 x i8], ptr %i.p, i64 %i.bxe
  %i.bxj = getelementptr [8 x i8], ptr %i.bxi, i64 %i.bxh ; 2 uses
  %i.bxk = load double, ptr %i.bxj, align 8, !tbaa !153
  %i.bxl = fdiv double %i.bxk, %i.bwv
  store double %i.bxl, ptr %i.bxj, align 8, !tbaa !153
  %indvars.iv.next3715.1 = add nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.bxm = mul nsw i64 %indvars.iv.next3715.1, %i.bb
  %i.bxn = trunc nsw i64 %indvars.iv.next3715.1 to i32
  %i.bxo = sub i32 %i.czo, %i.bxn
  %i.bxp = sext i32 %i.bxo to i64
  %i.bxq = getelementptr [8 x i8], ptr %i.p, i64 %i.bxm
  %i.bxr = getelementptr [8 x i8], ptr %i.bxq, i64 %i.bxp ; 2 uses
  %i.bxs = load double, ptr %i.bxr, align 8, !tbaa !153
  %i.bxt = fdiv double %i.bxs, %i.bwv
  store double %i.bxt, ptr %i.bxr, align 8, !tbaa !153
  %indvars.iv.next3715.2 = add nsw i64 %indvars.iv3714, 3 ; 2 uses
  %i.bxu = mul nsw i64 %indvars.iv.next3715.2, %i.bb
  %i.bxv = trunc nsw i64 %indvars.iv.next3715.2 to i32
  %i.bxw = sub i32 %i.czo, %i.bxv
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = getelementptr [8 x i8], ptr %i.p, i64 %i.bxu
  %i.bxz = getelementptr [8 x i8], ptr %i.bxy, i64 %i.bxx ; 2 uses
  %i.bya = load double, ptr %i.bxz, align 8, !tbaa !153
  %i.byb = fdiv double %i.bya, %i.bwv
  store double %i.byb, ptr %i.bxz, align 8, !tbaa !153
  %indvars.iv.next3715.3 = add nsw i64 %indvars.iv3714, 4 ; 2 uses
  %lftr.wideiv3717.3 = trunc i64 %indvars.iv.next3715.3 to i32
  %exitcond3718.not.3 = icmp eq i32 %i.czo, %lftr.wideiv3717.3
  br i1 %exitcond3718.not.3, label %._crit_edge3364.us, label %.lr.ph3363.us.new, !llvm.loop !78

._crit_edge3364.us:                               ; preds = %.prol.loopexit4716, %.lr.ph3363.us.new, %bb.dn
  %i.byc = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.byc, ptr %i.c, align 4, !tbaa !151
  %i.byd = add nsw i32 %.pre3814, %.32608.us      ; 4 uses
  store i32 %i.byd, ptr %i.a, align 4, !tbaa !151
  %i.bye = call i32 @llvm.smin.i32(i32 %i.byc, i32 %i.byd) ; 9 uses
  %.not27043365.us = icmp sgt i32 %.32608.us, %i.bye
  br i1 %.not27043365.us, label %._crit_edge3369.us, label %iter.check4642

vec.epilog.scalar.ph4643:                         ; preds = %vec.epilog.scalar.ph4643, %vec.epilog.scalar.ph4643.preheader.new
  %indvars.iv3719 = phi i64 [ %indvars.iv3719.unr, %vec.epilog.scalar.ph4643.preheader.new ], [ %indvars.iv.next3720.3, %vec.epilog.scalar.ph4643 ] ; 5 uses
  %i.byf = trunc nsw i64 %indvars.iv3719 to i32
  %i.byg = add i32 %i.dac, %i.byf
  %i.byh = sext i32 %i.byg to i64
  %i.byi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byh ; 2 uses
  %i.byj = load double, ptr %i.byi, align 8, !tbaa !153
  %i.byk = fdiv double %i.byj, %i.bwv
  store double %i.byk, ptr %i.byi, align 8, !tbaa !153
  %i.byl = trunc i64 %indvars.iv3719 to i32
  %.reass4780.a = add i32 %i.byl, %invariant.op4779.a
  %i.bym = sext i32 %.reass4780.a to i64
  %i.byn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bym ; 2 uses
  %i.byo = load double, ptr %i.byn, align 8, !tbaa !153
  %i.byp = fdiv double %i.byo, %i.bwv
  store double %i.byp, ptr %i.byn, align 8, !tbaa !153
  %i.byq = trunc i64 %indvars.iv3719 to i32
  %.reass4782 = add i32 %i.byq, %invariant.op4781.a
  %i.byr = sext i32 %.reass4782 to i64
  %i.bys = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byr ; 2 uses
  %i.byt = load double, ptr %i.bys, align 8, !tbaa !153
  %i.byu = fdiv double %i.byt, %i.bwv
  store double %i.byu, ptr %i.bys, align 8, !tbaa !153
  %i.byv = trunc i64 %indvars.iv3719 to i32
  %.reass4784 = add i32 %i.byv, %invariant.op4783
  %i.byw = sext i32 %.reass4784 to i64
  %i.byx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byw ; 2 uses
  %i.byy = load double, ptr %i.byx, align 8, !tbaa !153
  %i.byz = fdiv double %i.byy, %i.bwv
  store double %i.byz, ptr %i.byx, align 8, !tbaa !153
  %indvars.iv.next3720.3 = add nuw nsw i64 %indvars.iv3719, 4 ; 2 uses
  %lftr.wideiv3722.3 = trunc i64 %indvars.iv.next3720.3 to i32
  %exitcond3723.not.3 = icmp eq i32 %i.dae, %lftr.wideiv3722.3
  br i1 %exitcond3723.not.3, label %._crit_edge3369.us, label %vec.epilog.scalar.ph4643, !llvm.loop !79

._crit_edge3369.us:                               ; preds = %vec.epilog.scalar.ph4643.prol.loopexit, %vec.epilog.scalar.ph4643, %middle.block4638, %vec.epilog.middle.block4654, %._crit_edge3364.us
  %i.bza = add i32 %i.bwn, %.32608.us             ; 7 uses
  %i.bzb = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053383.us = icmp slt i32 %i.bwn, 1
  br i1 %.not27053383.us, label %bb.dp, label %.lr.ph3387.us

bb.do:                                            ; preds = %.lr.ph3387.us, %._crit_edge3379.us
  %indvar4562 = phi i64 [ 0, %.lr.ph3387.us ], [ %indvar.next4563, %._crit_edge3379.us ] ; 8 uses
  %indvar4502 = phi i32 [ 0, %.lr.ph3387.us ], [ %indvar.next4503, %._crit_edge3379.us ] ; 4 uses
  %indvars.iv3724 = phi i64 [ %i.ddx, %.lr.ph3387.us ], [ %indvars.iv.next3725, %._crit_edge3379.us ] ; 12 uses
  %.182575.neg3385.us.in = phi i32 [ %.32608.us, %.lr.ph3387.us ], [ %i.cai, %._crit_edge3379.us ]
  %i.bzc = add i64 %indvar4562, %i.ddx
  %i.bzd = trunc i64 %indvar4562 to i32
  %i.bze = mul i32 %i.n, %i.bzd
  %i.bzf = add i32 %i.bze, %i.deu
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = shl nsw i64 %i.bzg, 3                  ; 2 uses
  %scevgep4566 = getelementptr i8, ptr %scevgep4565, i64 %i.bzh ; 5 uses
  %smax4568 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddy)
  %i.bzi = add i64 %indvar4562, %i.ddx
  %i.bzj = sub i64 %smax4568, %i.bzi
  %i.bzk = shl nsw i64 %i.bzj, 3                  ; 3 uses
  %i.bzl = getelementptr i8, ptr %scevgep4567, i64 %i.bzk
  %scevgep4569 = getelementptr i8, ptr %i.bzl, i64 %i.bzh ; 5 uses
  %i.bzm = trunc i64 %indvar4562 to i32
  %i.bzn = add i32 %i.dev, %i.bzm
  %i.bzo = sext i32 %i.bzn to i64
  %13 = shl nsw i64 %i.bzo, 3                     ; 3 uses
  %scevgep4571 = getelementptr i8, ptr %scevgep4570, i64 %13 ; 2 uses
  %scevgep4573 = getelementptr i8, ptr %scevgep4572, i64 %13
  %14 = getelementptr i8, ptr %scevgep4574.a, i64 %i.bzk
  %scevgep4575.a = getelementptr i8, ptr %14, i64 %13
  %i.bzp = trunc i64 %indvar4562 to i32
  %i.bzq = add i32 %i.dew, %i.bzp
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = shl nsw i64 %i.bzr, 3                  ; 3 uses
  %scevgep4577 = getelementptr i8, ptr %scevgep4576, i64 %i.bzs ; 2 uses
  %scevgep4579 = getelementptr i8, ptr %scevgep4578, i64 %i.bzs
  %i.bzt = getelementptr i8, ptr %scevgep4580, i64 %i.bzk
  %scevgep4581 = getelementptr i8, ptr %i.bzt, i64 %i.bzs
  %i.bzu = mul i32 %.0255729743492, %indvar4502
  %i.bzv = add i32 %i.ded, %i.bzu
  %i.bzw = sext i32 %i.bzv to i64                 ; 2 uses
  %i.bzx = shl nsw i64 %i.bzw, 3
  %scevgep4506 = getelementptr i8, ptr %scevgep4505, i64 %i.bzx ; 2 uses
  %i.bzy = add nsw i64 %i.dei, %i.bzw
  %i.bzz = shl nsw i64 %i.bzy, 3
  %scevgep4508 = getelementptr i8, ptr %scevgep4507, i64 %i.bzz ; 2 uses
  %i.caa = add i32 %i.dej, %indvar4502
  %i.cab = sext i32 %i.caa to i64
  %i.cac = shl nsw i64 %i.cab, 3
  %scevgep4510 = getelementptr i8, ptr %scevgep4509, i64 %i.cac
  %i.cad = mul i32 %.0255729743492, %indvar4502
  %i.cae = add i32 %i.ded, %i.cad                 ; 2 uses
  %i.caf = trunc i64 %indvars.iv3724 to i32
  %i.cag = mul i32 %i.n, %i.caf
  %i.cah = sub i32 %i.cag, %.182575.neg3385.us.in ; 9 uses
  %i.cai = trunc nsw i64 %indvars.iv3724 to i32   ; 3 uses
  %.reass3381.us.reass.reass = add i32 %i.cai, %invariant.op4792 ; 2 uses
  %i.caj = add nsw i32 %.reass3381.us.reass.reass, %i.dds ; 3 uses
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cak ; 2 uses
  %i.cam = add nsw i32 %.reass3381.us.reass.reass, %i.bwr ; 3 uses
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.can ; 2 uses
  %i.cap = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddy)
  %reass.sub4657 = sub i64 %i.cap, %i.bzc
  %i.caq = add i64 %reass.sub4657, 1              ; 3 uses
  %min.iters.check4604 = icmp ult i64 %i.caq, 12
  br i1 %min.iters.check4604, label %scalar.ph4603.preheader, label %vector.scevcheck4560

vector.scevcheck4560:                             ; preds = %bb.do
  %i.car = trunc i64 %indvar4562 to i32
  %i.cas = mul i32 %i.n, %i.car
  %i.cat = add i32 %i.cas, %i.deu                 ; 2 uses
  %smax4561 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddy)
  %i.cau = add i64 %indvar4562, %i.ddx
  %i.cav = sub i64 %smax4561, %i.cau              ; 2 uses
  %i.caw = trunc i64 %i.cav to i32                ; 3 uses
  %i.cax = add i32 %i.cat, %i.caw
  %i.cay = icmp slt i32 %i.cax, %i.cat
  %i.caz = add i32 %i.cam, %i.caw
  %i.cba = icmp slt i32 %i.caz, %i.cam
  %i.cbb = icmp ugt i64 %i.cav, 4294967295
  %i.cbc = or i1 %i.cba, %i.cbb
  %i.cbd = add i32 %i.caj, %i.caw
  %i.cbe = icmp slt i32 %i.cbd, %i.caj
  %i.cbf = or i1 %i.cay, %i.cbc
  %i.cbg = or i1 %i.cbe, %i.cbf
  br i1 %i.cbg, label %scalar.ph4603.preheader, label %vector.memcheck4564

vector.memcheck4564:                              ; preds = %vector.scevcheck4560
  %bound04584 = icmp ult ptr %scevgep4566, %scevgep4573
  %bound14585 = icmp ult ptr %scevgep4571, %scevgep4569
  %found.conflict4586 = and i1 %bound04584, %bound14585
  %bound04587 = icmp ult ptr %scevgep4566, %scevgep4575.a
  %bound14588 = icmp ult ptr %scevgep4571, %scevgep4569
  %found.conflict4589 = and i1 %bound04587, %bound14588
  %conflict.rdx4590 = or i1 %found.conflict4586, %found.conflict4589
  %bound04591 = icmp ult ptr %scevgep4566, %scevgep4579
  %bound14592 = icmp ult ptr %scevgep4577, %scevgep4569
  %found.conflict4593 = and i1 %bound04591, %bound14592
  %conflict.rdx4594 = or i1 %conflict.rdx4590, %found.conflict4593
  %bound04595 = icmp ult ptr %scevgep4566, %scevgep4581
  %bound14596 = icmp ult ptr %scevgep4577, %scevgep4569
  %found.conflict4597 = and i1 %bound04595, %bound14596
  %conflict.rdx4598 = or i1 %conflict.rdx4594, %found.conflict4597
  %bound04599 = icmp ult ptr %scevgep4566, %scevgep4583
  %bound14600 = icmp ult ptr %i.ddv, %scevgep4569
  %found.conflict4601 = and i1 %bound04599, %bound14600
  %conflict.rdx4602 = or i1 %conflict.rdx4598, %found.conflict4601
  br i1 %conflict.rdx4602, label %scalar.ph4603.preheader, label %vector.ph4605

vector.ph4605:                                    ; preds = %vector.memcheck4564
  %n.vec4606 = and i64 %i.caq, -4                 ; 3 uses
  %i.cbh = add i64 %indvars.iv3724, %n.vec4606
  %i.cbi = load double, ptr %i.cal, align 8, !tbaa !153, !alias.scope !170
  %broadcast.splatinsert4613 = insertelement <4 x double> poison, double %i.cbi, i64 0
  %broadcast.splat4614 = shufflevector <4 x double> %broadcast.splatinsert4613, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cbj = load double, ptr %i.cao, align 8, !tbaa !153, !alias.scope !171
  %broadcast.splatinsert4607 = insertelement <4 x double> poison, double %i.cbj, i64 0
  %broadcast.splat4608 = shufflevector <4 x double> %broadcast.splatinsert4607, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbk = fneg <4 x double> %broadcast.splat4608
  %i.cbl = load double, ptr %i.ddv, align 8, !tbaa !153, !alias.scope !172
  %broadcast.splatinsert4616 = insertelement <4 x double> poison, double %i.cbl, i64 0
  %broadcast.splat4617 = shufflevector <4 x double> %broadcast.splatinsert4616, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4609

vector.body4609:                                  ; preds = %vector.body4609, %vector.ph4605
  %index4610 = phi i64 [ 0, %vector.ph4605 ], [ %index.next4618, %vector.body4609 ] ; 2 uses
  %i.cbm = add i64 %indvars.iv3724, %index4610
  %i.cbn = trunc nsw i64 %i.cbm to i32            ; 2 uses
  %i.cbo = add i32 %i.cah, %i.cbn
  %i.cbp = sext i32 %i.cbo to i64
  %i.cbq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbp ; 2 uses
  %wide.load4611 = load <4 x double>, ptr %i.cbq, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %.reass4786 = add i32 %i.cbn, %invariant.op4785 ; 2 uses
  %i.cbr = add nsw i32 %.reass4786, %i.bwr
  %i.cbs = sext i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbs
  %wide.load4612 = load <4 x double>, ptr %i.cbt, align 8, !tbaa !153, !alias.scope !175 ; 2 uses
  %i.cbu = fneg <4 x double> %wide.load4612
  %i.cbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbu, <4 x double> %broadcast.splat4614, <4 x double> %wide.load4611)
  %i.cbw = add nsw i32 %.reass4786, %i.dds
  %i.cbx = sext i32 %i.cbw to i64
  %i.cby = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbx
  %wide.load4615 = load <4 x double>, ptr %i.cby, align 8, !tbaa !153, !alias.scope !176
  %i.cbz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbk, <4 x double> %wide.load4615, <4 x double> %i.cbv)
  %i.cca = fmul <4 x double> %wide.load4612, %broadcast.splat4617
  %i.ccb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cca, <4 x double> %broadcast.splat4608, <4 x double> %i.cbz)
  store <4 x double> %i.ccb, ptr %i.cbq, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %index.next4618 = add nuw i64 %index4610, 4     ; 2 uses
  %i.ccc = icmp eq i64 %index.next4618, %n.vec4606
  br i1 %i.ccc, label %middle.block4619, label %vector.body4609, !llvm.loop !87

middle.block4619:                                 ; preds = %vector.body4609
  %cmp.n4620 = icmp eq i64 %i.caq, %n.vec4606
  br i1 %cmp.n4620, label %.loopexit, label %scalar.ph4603.preheader

scalar.ph4603.preheader:                          ; preds = %vector.memcheck4564, %vector.scevcheck4560, %bb.do, %middle.block4619
  %indvars.iv3726.ph = phi i64 [ %indvars.iv3724, %vector.memcheck4564 ], [ %indvars.iv3724, %vector.scevcheck4560 ], [ %indvars.iv3724, %bb.do ], [ %i.cbh, %middle.block4619 ]
  br label %scalar.ph4603

scalar.ph4603:                                    ; preds = %scalar.ph4603.preheader, %scalar.ph4603
  %indvars.iv3726 = phi i64 [ %indvars.iv.next3727, %scalar.ph4603 ], [ %indvars.iv3726.ph, %scalar.ph4603.preheader ] ; 3 uses
  %i.ccd = trunc nsw i64 %indvars.iv3726 to i32   ; 2 uses
  %i.cce = add i32 %i.cah, %i.ccd
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccf ; 2 uses
  %i.cch = load double, ptr %i.ccg, align 8, !tbaa !153
  %.reass3371.us.reass.reass = add i32 %i.ccd, %invariant.op4787 ; 2 uses
  %i.cci = add nsw i32 %.reass3371.us.reass.reass, %i.bwr
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccj
  %i.ccl = load double, ptr %i.cck, align 8, !tbaa !153 ; 2 uses
  %i.ccm = load double, ptr %i.cal, align 8, !tbaa !153
  %i.ccn = fneg double %i.ccl
  %i.cco = call double @llvm.fmuladd.f64(double %i.ccn, double %i.ccm, double %i.cch)
  %i.ccp = load double, ptr %i.cao, align 8, !tbaa !153 ; 2 uses
  %i.ccq = add nsw i32 %.reass3371.us.reass.reass, %i.dds
  %i.ccr = sext i32 %i.ccq to i64
  %i.ccs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccr
  %i.cct = load double, ptr %i.ccs, align 8, !tbaa !153
  %i.ccu = fneg double %i.ccp
  %i.ccv = call double @llvm.fmuladd.f64(double %i.ccu, double %i.cct, double %i.cco)
  %i.ccw = load double, ptr %i.ddv, align 8, !tbaa !153
  %i.ccx = fmul double %i.ccl, %i.ccw
  %i.ccy = call double @llvm.fmuladd.f64(double %i.ccx, double %i.ccp, double %i.ccv)
  store double %i.ccy, ptr %i.ccg, align 8, !tbaa !153
  %indvars.iv.next3727 = add nsw i64 %indvars.iv3726, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3726, %i.ddy
  br i1 %.not2726.us.not, label %scalar.ph4603, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph4603, %middle.block4619
  br i1 %.not2728.not3375.us, label %iter.check4544, label %._crit_edge3379.us

vec.epilog.scalar.ph4545:                         ; preds = %vec.epilog.scalar.ph4545.prol.loopexit, %vec.epilog.scalar.ph4545
  %indvars.iv3729 = phi i64 [ %indvars.iv.next3730.3, %vec.epilog.scalar.ph4545 ], [ %indvars.iv3729.unr, %vec.epilog.scalar.ph4545.prol.loopexit ] ; 4 uses
  %i.ccz = load double, ptr %i.dbs, align 8, !tbaa !153
  %i.cda = trunc i64 %indvars.iv3729 to i32
  %i.cdb = add i32 %i.cda, 1                      ; 2 uses
  %i.cdc = add i32 %i.ddw, %i.cdb
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdd
  %i.cdf = load double, ptr %i.cde, align 8, !tbaa !153
  %i.cdg = add i32 %i.cah, %i.cdb
  %i.cdh = sext i32 %i.cdg to i64
  %i.cdi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdh ; 2 uses
  %i.cdj = load double, ptr %i.cdi, align 8, !tbaa !153
  %i.cdk = fneg double %i.ccz
  %i.cdl = call double @llvm.fmuladd.f64(double %i.cdk, double %i.cdf, double %i.cdj)
  store double %i.cdl, ptr %i.cdi, align 8, !tbaa !153
  %i.cdm = load double, ptr %i.dbs, align 8, !tbaa !153
  %i.cdn = trunc i64 %indvars.iv3729 to i32
  %i.cdo = add i32 %i.cdn, 2                      ; 2 uses
  %i.cdp = add i32 %i.ddw, %i.cdo
  %i.cdq = sext i32 %i.cdp to i64
  %i.cdr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdq
  %i.cds = load double, ptr %i.cdr, align 8, !tbaa !153
  %i.cdt = add i32 %i.cah, %i.cdo
  %i.cdu = sext i32 %i.cdt to i64
  %i.cdv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdu ; 2 uses
  %i.cdw = load double, ptr %i.cdv, align 8, !tbaa !153
  %i.cdx = fneg double %i.cdm
  %i.cdy = call double @llvm.fmuladd.f64(double %i.cdx, double %i.cds, double %i.cdw)
  store double %i.cdy, ptr %i.cdv, align 8, !tbaa !153
  %i.cdz = load double, ptr %i.dbs, align 8, !tbaa !153
  %i.cea = trunc i64 %indvars.iv3729 to i32
  %i.ceb = add i32 %i.cea, 3                      ; 2 uses
  %i.cec = add i32 %i.ddw, %i.ceb
  %i.ced = sext i32 %i.cec to i64
  %i.cee = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ced
  %i.cef = load double, ptr %i.cee, align 8, !tbaa !153
  %i.ceg = add i32 %i.cah, %i.ceb
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ceh ; 2 uses
  %i.cej = load double, ptr %i.cei, align 8, !tbaa !153
  %i.cek = fneg double %i.cdz
  %i.cel = call double @llvm.fmuladd.f64(double %i.cek, double %i.cef, double %i.cej)
  store double %i.cel, ptr %i.cei, align 8, !tbaa !153
  %indvars.iv.next3730.3 = add nsw i64 %indvars.iv3729, 4 ; 3 uses
  %i.cem = load double, ptr %i.dbs, align 8, !tbaa !153
  %i.cen = trunc nsw i64 %indvars.iv.next3730.3 to i32 ; 2 uses
  %i.ceo = add i32 %i.ddw, %i.cen
  %i.cep = sext i32 %i.ceo to i64
  %i.ceq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cep
  %i.cer = load double, ptr %i.ceq, align 8, !tbaa !153
  %i.ces = add i32 %i.cah, %i.cen
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cet ; 2 uses
  %i.cev = load double, ptr %i.ceu, align 8, !tbaa !153
  %i.cew = fneg double %i.cem
  %i.cex = call double @llvm.fmuladd.f64(double %i.cew, double %i.cer, double %i.cev)
  store double %i.cex, ptr %i.ceu, align 8, !tbaa !153
  %exitcond3733.not.3 = icmp eq i64 %indvars.iv.next3730.3, %wide.trip.count3732
  br i1 %exitcond3733.not.3, label %._crit_edge3379.us, label %vec.epilog.scalar.ph4545, !llvm.loop !89

._crit_edge3379.us:                               ; preds = %vec.epilog.scalar.ph4545.prol.loopexit, %vec.epilog.scalar.ph4545, %middle.block4540, %vec.epilog.middle.block4557, %.loopexit
  %indvars.iv.next3725 = add nsw i64 %indvars.iv3724, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3724, %i.ddy
  %indvar.next4503 = add i32 %indvar4502, 1
  %indvar.next4563 = add i64 %indvar4562, 1
  br i1 %.not2705.us.not, label %bb.do, label %._crit_edge3388.us, !llvm.loop !90

bb.dp:                                            ; preds = %._crit_edge3388.us, %._crit_edge3369.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  br i1 %.not27023360.us, label %bb.ds, label %.lr.ph3400.us

bb.dq:                                            ; preds = %.lr.ph3400.us, %._crit_edge3394.us
  %indvars.iv3738 = phi i64 [ %i.dfp, %.lr.ph3400.us ], [ %indvars.iv.next3739, %._crit_edge3394.us ] ; 4 uses
  %i.cey = trunc i64 %indvars.iv3738 to i32
  %i.cez = add i32 %.pre3814, %i.cey
  %i.cfa = call i32 @llvm.smin.i32(i32 %i.cez, i32 %i.bza) ; 2 uses
  %.not27253390.us.not = icmp slt i32 %.32608.us, %i.cfa
  br i1 %.not27253390.us.not, label %.lr.ph3393.us, label %._crit_edge3394.us

bb.dr:                                            ; preds = %.lr.ph3393.us, %bb.dr
  %indvars.iv3735.in = phi i64 [ %i.dfo, %.lr.ph3393.us ], [ %indvars.iv3735, %bb.dr ]
  %indvars.iv3735 = add nuw nsw i64 %indvars.iv3735.in, 1 ; 3 uses
  %i.cfb = trunc nsw i64 %indvars.iv3735 to i32   ; 2 uses
  %i.cfc = add i32 %i.dfn, %i.cfb
  %i.cfd = sext i32 %i.cfc to i64
  %i.cfe = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cfd
  %i.cff = load double, ptr %i.cfe, align 8, !tbaa !153
  %i.cfg = load double, ptr %i.dfk, align 8, !tbaa !153
  %i.cfh = add i32 %i.dfl, %i.cfb
  %i.cfi = sext i32 %i.cfh to i64
  %i.cfj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfi ; 2 uses
  %i.cfk = load double, ptr %i.cfj, align 8, !tbaa !153
  %i.cfl = fneg double %i.cff
  %i.cfm = call double @llvm.fmuladd.f64(double %i.cfl, double %i.cfg, double %i.cfk)
  store double %i.cfm, ptr %i.cfj, align 8, !tbaa !153
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3735, %i.dfm
  br i1 %.not2725.us.not, label %bb.dr, label %._crit_edge3394.us, !llvm.loop !91

._crit_edge3394.us:                               ; preds = %bb.dr, %bb.dq
  %indvars.iv.next3739 = add nsw i64 %indvars.iv3738, 1 ; 2 uses
  %lftr.wideiv3742 = trunc i64 %indvars.iv.next3739 to i32
  %exitcond3743.not = icmp eq i32 %i.bzb, %lftr.wideiv3742
  br i1 %exitcond3743.not, label %._crit_edge3401.us, label %bb.dq, !llvm.loop !92

bb.ds:                                            ; preds = %._crit_edge3401.us, %bb.dp
  br i1 %.not, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
end_hunk_1
