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
  %i.s = getelementptr [8 x i8], ptr %7, i64 %i.r ; 37 uses
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
  %i.be = shl nsw i64 %i.o, 3                     ; 10 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.be
  %i.bf = add nsw i64 %i.be, 8                    ; 8 uses
  %scevgep4272 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = shl nsw i64 %i.r, 3                     ; 3 uses
  %i.bh = add nsw i64 %i.bg, 8                    ; 3 uses
  %scevgep4276 = getelementptr i8, ptr %7, i64 %i.bh
  %i.bi = add i32 %i.ab, 1
  %scevgep4278 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4280 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bj = add i32 %i.ab, 1
  %scevgep4328 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4334 = getelementptr i8, ptr %7, i64 %i.bg
  %i.bk = add i32 %i.ab, 1
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
  %invariant.op4732.a = add i32 %i.el, %invariant.op
  br label %vector.body4396

vector.body4396:                                  ; preds = %vector.ph4392, %vector.body4396
  %index4397 = phi i64 [ 0, %vector.ph4392 ], [ %index.next4402, %vector.body4396 ] ; 2 uses
  %i.fd = trunc i64 %index4397 to i32
  %.reass4733.a = add i32 %i.fd, %invariant.op4732.a
  %i.fe = sext i32 %.reass4733.a to i64
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
  %invariant.op4734.a = add i32 %i.el, %invariant.op
  br label %vec.epilog.vector.body4415

vec.epilog.vector.body4415:                       ; preds = %vec.epilog.vector.body4415, %vec.epilog.ph4411
  %index4416 = phi i64 [ %vec.epilog.resume.val4405, %vec.epilog.ph4411 ], [ %index.next4418, %vec.epilog.vector.body4415 ] ; 2 uses
  %i.fp = trunc i64 %index4416 to i32
  %.reass4735 = add i32 %i.fp, %invariant.op4734.a
  %i.fq = sext i32 %.reass4735 to i64
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
  %xtraiter4667 = and i64 %i.fu, 3                ; 2 uses
  %lcmp.mod4668.not = icmp eq i64 %xtraiter4667, 0
  br i1 %lcmp.mod4668.not, label %vec.epilog.scalar.ph4408.prol.loopexit, label %vec.epilog.scalar.ph4408.prol

vec.epilog.scalar.ph4408.prol:                    ; preds = %vec.epilog.scalar.ph4408.preheader, %vec.epilog.scalar.ph4408.prol
  %indvars.iv3541.prol = phi i64 [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4408.prol ], [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4408.preheader ] ; 2 uses
  %prol.iter4669 = phi i64 [ %prol.iter4669.next, %vec.epilog.scalar.ph4408.prol ], [ 0, %vec.epilog.scalar.ph4408.preheader ]
  %i.fv = trunc nuw nsw i64 %indvars.iv3541.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fv
  %i.fw = sext i32 %.reass.prol to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !153
  %i.fz = fdiv double %i.fy, %i.cf
  store double %i.fz, ptr %i.fx, align 8, !tbaa !153
  %indvars.iv.next3542.prol = add nuw nsw i64 %indvars.iv3541.prol, 1 ; 2 uses
  %prol.iter4669.next = add i64 %prol.iter4669, 1 ; 2 uses
  %prol.iter4669.cmp.not = icmp eq i64 %prol.iter4669.next, %xtraiter4667
  br i1 %prol.iter4669.cmp.not, label %vec.epilog.scalar.ph4408.prol.loopexit, label %vec.epilog.scalar.ph4408.prol, !llvm.loop !12

vec.epilog.scalar.ph4408.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4408.prol, %vec.epilog.scalar.ph4408.preheader
  %indvars.iv3541.unr = phi i64 [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4408.preheader ], [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4408.prol ]
  %i.ga = sub nsw i64 %indvars.iv3541.ph, %wide.trip.count
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge2953, label %vec.epilog.scalar.ph4408.preheader.new

vec.epilog.scalar.ph4408.preheader.new:           ; preds = %vec.epilog.scalar.ph4408.prol.loopexit
  %invariant.op4736.a = add i32 1, %invariant.op
  %invariant.op4737.a = add i32 2, %invariant.op
  %invariant.op4738 = add i32 3, %invariant.op
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
  %.reass.1.reass = add i32 %i.gh, %invariant.op4736.a
  %i.gi = sext i32 %.reass.1.reass to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !153
  %i.gl = fdiv double %i.gk, %i.cf
  store double %i.gl, ptr %i.gj, align 8, !tbaa !153
  %i.gm = trunc i64 %indvars.iv3541 to i32
  %.reass.2.reass = add i32 %i.gm, %invariant.op4737.a
  %i.gn = sext i32 %.reass.2.reass to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !153
  %i.gq = fdiv double %i.gp, %i.cf
  store double %i.gq, ptr %i.go, align 8, !tbaa !153
  %i.gr = trunc i64 %indvars.iv3541 to i32
  %.reass.3.reass = add i32 %i.gr, %invariant.op4738
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
  %i.iv = sub i32 %i.iu, %i.bt
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep4337 = getelementptr i8, ptr %scevgep4334, i64 %i.ix
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
  %indvar4330 = phi i64 [ %indvar.next4331, %._crit_edge2967 ], [ 0, %.lr.ph2977 ] ; 5 uses
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
  %scevgep4333.a = getelementptr i8, ptr %i.bl, i64 %i.js
  %scevgep4335 = getelementptr i8, ptr %scevgep4333.a, i64 %i.jr ; 5 uses
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
  %scevgep4277 = getelementptr i8, ptr %scevgep4276, i64 %i.kd ; 2 uses
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
  %bound04346 = icmp ult ptr %scevgep4329, %scevgep4277
  %bound14347 = icmp ult ptr %i.kp, %scevgep4335
  %found.conflict4348 = and i1 %bound04346, %bound14347
  %bound04349 = icmp ult ptr %scevgep4329, %scevgep4338.a
  %bound14350 = icmp ult ptr %scevgep4337, %scevgep4335
  %found.conflict4351 = and i1 %bound04349, %bound14350
  %conflict.rdx4352 = or i1 %found.conflict4348, %found.conflict4351
  %bound04353 = icmp ult ptr %scevgep4329, %scevgep4340
  %bound14354 = icmp ult ptr %i.km, %scevgep4335
  %found.conflict4355 = and i1 %bound04353, %bound14354
  %conflict.rdx4356 = or i1 %conflict.rdx4352, %found.conflict4355
  %bound04357 = icmp ult ptr %scevgep4329, %scevgep4343
  %bound14358 = icmp ult ptr %scevgep4342, %scevgep4335
  %found.conflict4359 = and i1 %bound04357, %bound14358
  %conflict.rdx4360 = or i1 %conflict.rdx4356, %found.conflict4359
  %bound04361 = icmp ult ptr %scevgep4329, %scevgep4345
  %bound14362 = icmp ult ptr %i.gz, %scevgep4335
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
  %xtraiter4670 = and i32 %i.mg, 1
  %lcmp.mod4671.not = icmp eq i32 %xtraiter4670, 0
  br i1 %lcmp.mod4671.not, label %scalar.ph4365.prol.loopexit, label %scalar.ph4365.prol

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
