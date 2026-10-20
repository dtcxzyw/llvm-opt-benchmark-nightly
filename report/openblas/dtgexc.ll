Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgexc?download=true
begin_hunk_0_@dtgexc_:bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !8      ; 13 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f ; 12 uses
  store i32 0, ptr %15, align 4, !tbaa !8
  %i.h = load i32, ptr %14, align 4, !tbaa !8     ; 2 uses
  %i.i = icmp eq i32 %i.h, -1                     ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !8      ; 12 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread415, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %4, align 4, !tbaa !8
  %i.m = icmp samesign ugt i32 %i.j, 1            ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1) ; 2 uses
  %i.n = icmp slt i32 %i.l, %spec.select
  br i1 %i.n, label %.thread415, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %6, align 4, !tbaa !8
  %i.p = icmp slt i32 %i.o, %spec.select
  br i1 %i.p, label %.thread415, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %8, align 4, !tbaa !8      ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.thread415, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %0, align 4, !tbaa !8
  %.not = icmp ne i32 %i.s, 0
  %i.t = icmp samesign ult i32 %i.q, %i.j
  %i.u = select i1 %.not, i1 %i.m, i1 false
  %or.cond429 = select i1 %i.u, i1 %i.t, i1 false
  br i1 %or.cond429, label %.thread415, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %10, align 4, !tbaa !8     ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.thread415, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %1, align 4, !tbaa !8
  %.not389 = icmp ne i32 %i.x, 0
  %i.y = icmp samesign ult i32 %i.v, %i.j
  %i.z = select i1 %.not389, i1 %i.m, i1 false
  %or.cond430 = select i1 %i.z, i1 %i.y, i1 false
  br i1 %or.cond430, label %.thread415, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %11, align 4, !tbaa !8    ; 6 uses
  %i.ab = icmp slt i32 %i.aa, 1
  %i.ac = icmp samesign ugt i32 %i.aa, %i.j
  %or.cond431 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond431, label %.thread415, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %12, align 4, !tbaa !8    ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  %i.af = icmp sgt i32 %i.ad, %i.j
  %or.cond408 = or i1 %i.ae, %i.af
  br i1 %or.cond408, label %.thread415, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = shl i32 %i.j, 2
  %i.ah = add nsw i32 %i.ag, 16
  %.inv = icmp samesign ugt i32 %i.j, 1
  %.0367 = select i1 %.inv, i32 %i.ah, i32 1      ; 2 uses
  %i.ai = sitofp i32 %.0367 to double             ; 2 uses
  store double %i.ai, ptr %13, align 8, !tbaa !10
  %i.aj = icmp sge i32 %i.h, %.0367
  %or.cond = or i1 %i.aj, %i.i
  br i1 %or.cond, label %.thread, label %.thread415

.thread415:                                       ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -3, %bb.a ], [ -7, %bb.c ], [ -11, %bb.f ], [ -12, %bb.h ], [ -9, %bb.d ], [ -5, %bb.b ], [ -13, %bb.i ], [ -9, %bb.e ], [ -11, %bb.g ], [ -15, %bb.j ]
  %.neg454 = phi i32 [ 3, %bb.a ], [ 7, %bb.c ], [ 11, %bb.f ], [ 12, %bb.h ], [ 9, %bb.d ], [ 5, %bb.b ], [ 13, %bb.i ], [ 9, %bb.e ], [ 11, %bb.g ], [ 15, %bb.j ]
  store i32 %.sink, ptr %15, align 4, !tbaa !8
  store i32 %.neg454, ptr %i.a, align 4, !tbaa !8
  %i.ak = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %bb.cg

.thread:                                          ; preds = %bb.j
  %i.al = icmp samesign ult i32 %i.j, 2
  %or.cond457 = select i1 %i.i, i1 true, i1 %i.al
  br i1 %or.cond457, label %bb.cg, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.am = icmp samesign ugt i32 %i.aa, 1
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ao = mul nsw i32 %i.an, %i.e
  %i.ap = add nsw i32 %i.ao, %i.aa
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = fcmp une double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.an, ptr %11, align 4, !tbaa !8
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.au = phi i32 [ %i.j, %bb.l ], [ %.pre, %bb.m ], [ %i.j, %bb.k ] ; 3 uses
  %i.av = phi i32 [ %i.aa, %bb.l ], [ %i.an, %bb.m ], [ 1, %bb.k ] ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !8
  %i.aw = icmp slt i32 %i.av, %i.au
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = add nuw nsw i32 %i.av, 1
  %i.ay = mul nsw i32 %i.av, %i.e
  %i.az = add nsw i32 %i.ax, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.d, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.be = phi i1 [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.n ] ; 2 uses
  %i.bf = phi i1 [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.n ]
  %i.bg = load i32, ptr %12, align 4, !tbaa !8    ; 5 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %i.bg, -1                   ; 3 uses
  %i.bj = mul nsw i32 %i.bi, %i.e
  %i.bk = add nsw i32 %i.bj, %i.bg
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fcmp une double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bi, ptr %12, align 4, !tbaa !8
  %.pre434 = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.bp = phi i32 [ %i.au, %bb.r ], [ %.pre434, %bb.s ], [ %i.au, %bb.q ]
  %i.bq = phi i32 [ %i.bg, %bb.r ], [ %i.bi, %bb.s ], [ %i.bg, %bb.q ] ; 6 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i32 %i.bq, 1
  %i.bt = mul nsw i32 %i.bq, %i.e
  %i.bu = add nsw i32 %i.bs, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = fcmp une double %i.bx, 0.000000e+00     ; 2 uses
  %not. = xor i1 %i.by, true
  %i.bz = and i1 %i.be, %not.
  %i.ca = and i1 %i.by, %i.bf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %or.cond3 = phi i1 [ %i.be, %bb.t ], [ %i.bz, %bb.u ] ; 2 uses
  %or.cond5 = phi i1 [ false, %bb.t ], [ %i.ca, %bb.u ]
  %i.cb = load i32, ptr %11, align 4, !tbaa !8    ; 4 uses
  %i.cc = icmp eq i32 %i.cb, %i.bq
  br i1 %i.cc, label %bb.cg, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = icmp slt i32 %i.cb, %i.bq
  br i1 %i.cd, label %bb.x, label %bb.bc

bb.x:                                             ; preds = %bb.w
  %brmerge = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %brmerge, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x
  %.mux = select i1 %or.cond3, i32 -1, i32 1
  %i.ce = add nsw i32 %i.bq, %.mux
  store i32 %i.ce, ptr %12, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.sink.split
  %i.cf = load i32, ptr %11, align 4, !tbaa !8    ; 2 uses
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.bb, %bb.y
  %i.cg = phi i32 [ %i.en, %bb.bb ], [ %i.cf, %bb.y ] ; 4 uses
  %i.ch = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.ci = add i32 %i.ch, -1
  %or.cond7 = icmp ult i32 %i.ci, 2
  store i32 1, ptr %i.c, align 4, !tbaa !8
  br i1 %or.cond7, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.cj = add nsw i32 %i.cg, %i.ch                ; 2 uses
  %16 = add nsw i32 %i.cj, 1                      ; 2 uses
  %17 = load i32, ptr %2, align 4, !tbaa !8
  %.not403 = icmp sgt i32 %16, %17
  br i1 %.not403, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = mul nsw i32 %i.cj, %i.e
  %i.cl = add nsw i32 %16, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  %i.cp = fcmp une double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 2, ptr %i.c, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.cq = load i32, ptr %15, align 4, !tbaa !8
  %.not404 = icmp eq i32 %i.cq, 0
  br i1 %.not404, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.cr, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.af:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !8
  %i.ct = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cu = add nsw i32 %i.ct, %i.cs                ; 6 uses
  store i32 %i.cu, ptr %i.b, align 4, !tbaa !8
  %i.cv = load i32, ptr %i.d, align 4, !tbaa !8
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.ag, label %bb.bb

bb.ag:                                            ; preds = %bb.af
  %i.cx = add nsw i32 %i.cu, 1
  %i.cy = mul nsw i32 %i.cu, %i.e
  %i.cz = add nsw i32 %i.cx, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !10
  %i.dd = fcmp oeq double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.ah, label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  store i32 3, ptr %i.d, align 4, !tbaa !8
  br label %bb.bb

bb.ai:                                            ; preds = %bb.z
  %i.de = add nsw i32 %i.cg, 3                    ; 2 uses
  %18 = load i32, ptr %2, align 4, !tbaa !8
  %.not397 = icmp sgt i32 %i.de, %18
  br i1 %.not397, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = add nsw i32 %i.cg, 2
  %i.dg = mul nsw i32 %i.df, %i.e
  %i.dh = add nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !10
  %i.dl = fcmp une double %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 2, ptr %i.c, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.dm = add nsw i32 %i.cg, 1
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !8
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.a, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.dn = load i32, ptr %15, align 4, !tbaa !8
  %.not398 = icmp eq i32 %i.dn, 0
  br i1 %.not398, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.do, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.an:                                            ; preds = %bb.al
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.dr = load i32, ptr %15, align 4, !tbaa !8
  %.not402 = icmp eq i32 %i.dr, 0
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  br i1 %.not402, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.ds, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.aq:                                            ; preds = %bb.ao
  %i.dt = add nsw i32 %i.ds, 1                    ; 2 uses
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !8
  br label %bb.bb

bb.ar:                                            ; preds = %bb.an
  %i.du = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.dv = add nsw i32 %i.du, 2
  %i.dw = add nsw i32 %i.du, 1
  %i.dx = mul nsw i32 %i.dw, %i.e
  %i.dy = add nsw i32 %i.dv, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !10
  %i.ec = fcmp oeq double %i.eb, 0.000000e+00
  br i1 %i.ec, label %.thread422, label %bb.as

.thread422:                                       ; preds = %bb.ar
  store i32 1, ptr %i.c, align 4, !tbaa !8
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ed = icmp eq i32 %i.dp, 2
  br i1 %i.ed, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.ee = load i32, ptr %15, align 4, !tbaa !8
  %.not401 = icmp eq i32 %i.ee, 0
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  br i1 %.not401, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.ef, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.av:                                            ; preds = %bb.at
  %i.eg = add nsw i32 %i.ef, 2                    ; 2 uses
  store i32 %i.eg, ptr %i.b, align 4, !tbaa !8
  br label %bb.bb

bb.aw:                                            ; preds = %.thread422, %bb.as
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.eh = load i32, ptr %15, align 4, !tbaa !8
  %.not399 = icmp eq i32 %i.eh, 0
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  br i1 %.not399, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.ei, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.ay:                                            ; preds = %bb.aw
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !8
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.ek = load i32, ptr %15, align 4, !tbaa !8
  %.not400 = icmp eq i32 %i.ek, 0
  %i.el = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  br i1 %.not400, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.el, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.ba:                                            ; preds = %bb.ay
  %i.em = add nsw i32 %i.el, 1                    ; 2 uses
  store i32 %i.em, ptr %i.b, align 4, !tbaa !8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.aq, %bb.ba, %bb.av, %bb.af, %bb.ah, %bb.ag
  %i.en = phi i32 [ %i.dt, %bb.aq ], [ %i.em, %bb.ba ], [ %i.eg, %bb.av ], [ %i.cu, %bb.af ], [ %i.cu, %bb.ah ], [ %i.cu, %bb.ag ] ; 3 uses
  %i.eo = load i32, ptr %12, align 4, !tbaa !8
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.z, label %.loopexit

bb.bc:                                            ; preds = %bb.w
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.cf, %bb.bc
  %i.eq = phi i32 [ %i.gz, %bb.cf ], [ %i.cb, %bb.bc ] ; 7 uses
  %i.er = load i32, ptr %i.d, align 4, !tbaa !8
  %i.es = add i32 %i.er, -1
  %or.cond9 = icmp ult i32 %i.es, 2
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.et = icmp sgt i32 %i.eq, 2                   ; 2 uses
  br i1 %or.cond9, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  br i1 %i.et, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.eu = add nsw i32 %i.eq, -1
  %i.ev = add nsw i32 %i.eq, -2
  %i.ew = mul nsw i32 %i.ev, %i.e
  %i.ex = add nsw i32 %i.eu, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !10
  %i.fb = fcmp une double %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %i.c, align 4, !tbaa !8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.be
  %.neg453 = phi i32 [ -1, %bb.bf ], [ -2, %bb.bg ], [ -1, %bb.be ]
  %i.fc = add i32 %.neg453, %i.eq
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !8
  call void @dtgex2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #4
  %i.fd = load i32, ptr %15, align 4, !tbaa !8
  %.not396 = icmp eq i32 %i.fd, 0
  br i1 %.not396, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fe = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.fe, ptr %12, align 4, !tbaa !8
  br label %bb.cg

bb.bj:                                            ; preds = %bb.bh
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !8
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !8
  %i.fh = sub nsw i32 %i.fg, %i.ff                ; 6 uses
  store i32 %i.fh, ptr %i.b, align 4, !tbaa !8
  %i.fi = load i32, ptr %i.d, align 4, !tbaa !8
  %i.fj = icmp eq i32 %i.fi, 2
  br i1 %i.fj, label %bb.bk, label %bb.cf

bb.bk:                                            ; preds = %bb.bj
  %i.fk = add nsw i32 %i.fh, 1
  %i.fl = mul nsw i32 %i.fh, %i.e
  %i.fm = add nsw i32 %i.fk, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !10
  %i.fq = fcmp oeq double %i.fp, 0.000000e+00
  br i1 %i.fq, label %bb.bl, label %bb.cf

bb.bl:                                            ; preds = %bb.bk
  store i32 3, ptr %i.d, align 4, !tbaa !8
  br label %bb.cf

bb.bm:                                            ; preds = %bb.bd
  br i1 %i.et, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.fr = add nsw i32 %i.eq, -1
  %i.fs = add nsw i32 %i.eq, -2
  %i.ft = mul nsw i32 %i.fs, %i.e
  %i.fu = add nsw i32 %i.fr, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !10
end_hunk_0
