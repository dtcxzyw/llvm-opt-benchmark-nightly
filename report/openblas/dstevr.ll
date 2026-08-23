Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dstevr?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dstevr_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %2, align 4, !tbaa !8     ; 6 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread320.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not300 = icmp eq i32 %i.aj, 0
  br i1 %.not300, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load double, ptr %6, align 8, !tbaa !9
  %i.am = load double, ptr %5, align 8, !tbaa !9
  %i.an = fcmp ugt double %i.al, %i.am
  br i1 %i.an, label %bb.m, label %.thread320.sink.split

bb.j:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %7, align 4, !tbaa !8     ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 1
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 1)
  %i.aq = icmp samesign ugt i32 %i.ao, %spec.select
  %or.cond328 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond328, label %.thread320.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %8, align 4, !tbaa !8     ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ao)
  %i.as = icmp slt i32 %i.ar, %.
  %i.at = icmp samesign ugt i32 %i.ar, %i.aj
  %or.cond327 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond327, label %.thread320.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.j
  %.pr = load i32, ptr %19, align 4, !tbaa !8     ; 2 uses
  %i.au = icmp eq i32 %.pr, 0
  br i1 %i.au, label %bb.n, label %.thread320

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr %13, align 4, !tbaa !8    ; 2 uses
  %i.aw = icmp slt i32 %i.av, 1
  %i.ax = icmp samesign ult i32 %i.av, %i.aj
  %or.cond353 = select i1 %.not, i1 %i.ax, i1 false
  %or.cond355 = select i1 %i.aw, i1 true, i1 %or.cond353
  br i1 %or.cond355, label %.thread320.sink.split, label %.thread

.thread:                                          ; preds = %bb.n
  %i.ay = sitofp i32 %i.ac to double              ; 2 uses
  store double %i.ay, ptr %15, align 8, !tbaa !9
  store i32 %i.ae, ptr %17, align 4, !tbaa !8
  %i.az = load i32, ptr %16, align 4, !tbaa !8
  %i.ba = icmp sge i32 %i.az, %i.ac
  %or.cond5 = select i1 %i.ba, i1 true, i1 %i.y
  br i1 %or.cond5, label %bb.o, label %.thread320.sink.split

bb.o:                                             ; preds = %.thread
  %i.bb = load i32, ptr %18, align 4, !tbaa !8
  %i.bc = icmp sge i32 %i.bb, %i.ae
  %or.cond7 = select i1 %i.bc, i1 true, i1 %i.y
  br i1 %or.cond7, label %.thread316, label %.thread320.sink.split

.thread316:                                       ; preds = %bb.o
  %.pr318.pr = load i32, ptr %19, align 4, !tbaa !8 ; 2 uses
  %.not301 = icmp eq i32 %.pr318.pr, 0
  br i1 %.not301, label %bb.p, label %.thread320

.thread320.sink.split:                            ; preds = %bb.o, %.thread, %bb.n, %bb.l, %bb.k, %bb.i, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ -9, %bb.l ], [ -1, %bb.d ], [ -3, %bb.f ], [ -7, %bb.i ], [ -8, %bb.k ], [ -2, %bb.e ], [ -14, %bb.n ], [ -17, %.thread ], [ -19, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %19, align 4, !tbaa !8
  br label %.thread320

.thread320:                                       ; preds = %.thread320.sink.split, %bb.m, %.thread316
  %i.bd = phi i32 [ %.pr318.pr, %.thread316 ], [ %.pr, %bb.m ], [ %.sink, %.thread320.sink.split ]
  %i.be = sub nsw i32 0, %i.bd
  store i32 %i.be, ptr %i.a, align 4, !tbaa !8
  %i.bf = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %bb.ay

bb.p:                                             ; preds = %.thread316
  br i1 %i.y, label %bb.ay, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %10, align 4, !tbaa !8
  %i.bg = load i32, ptr %2, align 4, !tbaa !8
  switch i32 %i.bg, label %bb.y [
    i32 0, label %bb.ay
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %or.cond9 = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond9, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %10, align 4, !tbaa !8
  %i.bh = load double, ptr %3, align 8, !tbaa !9
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.bi = load double, ptr %5, align 8, !tbaa !9
  %i.bj = load double, ptr %3, align 8, !tbaa !9  ; 3 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  br i1 %i.bk, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bl = load double, ptr %6, align 8, !tbaa !9
  %i.bm = fcmp ult double %i.bl, %i.bj
  br i1 %i.bm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 1, ptr %10, align 4, !tbaa !8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.v
  %.sink354 = phi double [ %i.bj, %bb.v ], [ %i.bh, %bb.s ]
  store double %.sink354, ptr %11, align 8, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.t, %bb.u
  br i1 %.not, label %bb.x, label %bb.ay

bb.x:                                             ; preds = %bb.w
  store double 1.000000e+00, ptr %12, align 8, !tbaa !9
  br label %bb.ay

bb.y:                                             ; preds = %bb.q
  %i.bn = tail call double @dlamch_(ptr noundef nonnull @.str.5) #6 ; 2 uses
  %i.bo = tail call double @dlamch_(ptr noundef nonnull @.str.6) #6 ; 2 uses
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fdiv double 1.000000e+00, %i.bp
  %i.br = tail call double @sqrt(double noundef %i.bp) #6 ; 2 uses
  %i.bs = tail call double @sqrt(double noundef %i.bq) #6 ; 3 uses
  store double %i.bs, ptr %i.b, align 8, !tbaa !9
  %i.bt = tail call double @sqrt(double noundef %i.bn) #6
  %i.bu = tail call double @sqrt(double noundef %i.bt) #6
  %i.bv = fdiv double 1.000000e+00, %i.bu         ; 2 uses
  %i.bw = fcmp ole double %i.bs, %i.bv
  %i.bx = select i1 %i.bw, double %i.bs, double %i.bv ; 2 uses
  %.not302 = icmp eq i32 %i.s, 0                  ; 2 uses
  br i1 %.not302, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = load double, ptr %5, align 8, !tbaa !9
  store double %i.by, ptr %i.h, align 8, !tbaa !9
  %i.bz = load double, ptr %6, align 8, !tbaa !9
  store double %i.bz, ptr %i.i, align 8, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ca = tail call double @dlanst_(ptr noundef nonnull @.str.7, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #6 ; 4 uses
  %i.cb = fcmp ogt double %i.ca, 0.000000e+00
  %i.cc = fcmp olt double %i.ca, %i.br
  %or.cond309 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond309, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = fcmp ogt double %i.ca, %i.bx
  br i1 %i.cd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi double [ %i.br, %bb.aa ], [ %i.bx, %bb.ab ]
  %storemerge = fdiv double %.pn, %i.ca
  store double %storemerge, ptr %i.d, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.d, ptr noundef %3, ptr noundef nonnull @c__1) #6
  %i.ce = load i32, ptr %2, align 4, !tbaa !8
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull @c__1) #6
  br i1 %.not302, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load double, ptr %5, align 8, !tbaa !9
  %i.ch = load double, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %i.ci = fmul double %i.cg, %i.ch
  store double %i.ci, ptr %i.h, align 8, !tbaa !9
  %i.cj = load double, ptr %6, align 8, !tbaa !9
  %i.ck = fmul double %i.ch, %i.cj
  store double %i.ck, ptr %i.i, align 8, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.cl = phi i1 [ true, %bb.ac ], [ true, %bb.ad ], [ false, %bb.ab ]
  %i.cm = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  %i.co = add nsw i32 %i.cn, %i.cm
  %.not303 = icmp eq i32 %i.t, 0
  br i1 %.not303, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = load i32, ptr %7, align 4, !tbaa !8
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = load i32, ptr %8, align 4, !tbaa !8
  %i.cs = icmp eq i32 %i.cr, %i.cm
  %20 = or i1 %i.ag, %i.cs
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %or.cond11 = phi i1 [ %i.ag, %bb.ae ], [ %20, %bb.ag ], [ %i.ag, %bb.af ]
  %i.ct = icmp eq i32 %i.p, 1
  %or.cond13 = select i1 %or.cond11, i1 %i.ct, i1 false
  br i1 %or.cond13, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.cu = add nsw i32 %i.cm, -1
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %15, ptr noundef nonnull @c__1) #6
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @dcopy_(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull @c__1, ptr noundef %11, ptr noundef nonnull @c__1) #6
  call void @dsterf_(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %15, ptr noundef nonnull %19) #6
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cv = load i32, ptr %2, align 4, !tbaa !8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.n, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  call void @dcopy_(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull @c__1, ptr noundef %i.cy, ptr noundef nonnull @c__1) #6
  %i.cz = load double, ptr %9, align 8, !tbaa !9
  %i.da = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.db = sitofp i32 %i.da to double
  %i.dc = fmul nnan double %i.db, 2.000000e+00
  %i.dd = fmul double %i.bo, %i.dc
  %i.de = fcmp ole double %i.cz, %i.dd
  %.311.a = zext i1 %i.de to i32
  store i32 %.311.a, ptr %i.f, align 4, !tbaa !8
  %i.df = load i32, ptr %16, align 4, !tbaa !8
  %i.dg = shl i32 %i.da, 1                        ; 2 uses
  %i.dh = sub nsw i32 %i.df, %i.dg
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !8
  %i.di = sext i32 %i.da to i64
  %i.dj = getelementptr [8 x i8], ptr %i.n, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr [8 x i8], ptr %i.n, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  call void @dstemr_(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, ptr noundef %i.dk, ptr noundef nonnull %15, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull %i.f, ptr noundef %i.dn, ptr noundef nonnull %i.a, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.do = load i32, ptr %19, align 4, !tbaa !8
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dq = load i32, ptr %2, align 4, !tbaa !8
  store i32 %i.dq, ptr %10, align 4, !tbaa !8
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %19, align 4, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.an
  %.312 = select i1 %.not, i8 66, i8 69
  store i8 %.312, ptr %i.e, align 1, !tbaa !11
  %i.dr = sext i32 %i.cn to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dr ; 2 uses
  %i.dt = sext i32 %i.co to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.dt ; 3 uses
  call void @dstebz_(ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %i.g, ptr noundef %11, ptr noundef nonnull %17, ptr noundef nonnull %i.ds, ptr noundef nonnull %15, ptr noundef nonnull %i.du, ptr noundef nonnull %19) #6
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @dstein_(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %17, ptr noundef nonnull %i.ds, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %19) #6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.am
  br i1 %i.cl, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.dv = load i32, ptr %19, align 4, !tbaa !8    ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dx = load i32, ptr %10, align 4, !tbaa !8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dy = add nsw i32 %i.dv, -1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge305 = phi i32 [ %i.dy, %bb.at ], [ %i.dx, %bb.as ]
  store i32 %storemerge305, ptr %i.c, align 4, !tbaa !8
  %i.dz = load double, ptr %i.d, align 8, !tbaa !9
  %i.ea = fdiv double 1.000000e+00, %i.dz
  store double %i.ea, ptr %i.b, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef nonnull @c__1) #6
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq
  br i1 %.not, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.eb = load i32, ptr %10, align 4, !tbaa !8    ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !8
  %.not306334 = icmp slt i32 %i.eb, 2
  br i1 %.not306334, label %.loopexit, label %.lr.ph337.preheader

.lr.ph337.preheader:                              ; preds = %bb.aw
  %i.ed = sext i32 %i.k to i64
  br label %.lr.ph337

.lr.ph337:                                        ; preds = %.lr.ph337.preheader, %._crit_edge.thread
  %indvar = phi i32 [ 0, %.lr.ph337.preheader ], [ %indvar.next, %._crit_edge.thread ] ; 3 uses
  %i.ee = phi i32 [ %i.ec, %.lr.ph337.preheader ], [ %i.gl, %._crit_edge.thread ] ; 2 uses
  %indvars.iv341 = phi i64 [ 1, %.lr.ph337.preheader ], [ %indvars.iv.next342, %._crit_edge.thread ] ; 6 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph337.preheader ], [ %indvars.iv.next, %._crit_edge.thread ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv341 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !9 ; 3 uses
  %i.eh = load i32, ptr %10, align 4, !tbaa !8    ; 3 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1
  %i.ei = sext i32 %i.eh to i64
  %.not307329.not = icmp slt i64 %indvars.iv341, %i.ei
  br i1 %.not307329.not, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph337
  %i.ej = xor i32 %indvar, -1
  %i.ek = add i32 %i.eh, %i.ej                    ; 2 uses
  %reass.sub = sub i32 %i.eh, %indvar
  %i.el = add i32 %reass.sub, -2
  %xtraiter = and i32 %i.ek, 7                    ; 3 uses
  %i.em = icmp ult i32 %i.el, 7
  br i1 %i.em, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ek, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv338 = phi i64 [ %indvars.iv, %.lr.ph.preheader.new ], [ %indvars.iv.next339.7, %.lr.ph ] ; 11 uses
  %.0332 = phi double [ %i.eg, %.lr.ph.preheader.new ], [ %.1.7, %.lr.ph ] ; 2 uses
  %.0282330 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1283.7, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv338
  %i.eo = load double, ptr %i.en, align 8, !tbaa !9 ; 2 uses
  %i.ep = fcmp olt double %i.eo, %.0332           ; 2 uses
  %i.eq = trunc nuw i64 %indvars.iv338 to i32
  %.1283 = select i1 %i.ep, i32 %i.eq, i32 %.0282330
  %.1 = select i1 %i.ep, double %i.eo, double %.0332 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %11, i64 %indvars.iv338
  %i.es = load double, ptr %i.er, align 8, !tbaa !9 ; 2 uses
  %i.et = fcmp olt double %i.es, %.1              ; 2 uses
  %i.eu = trunc i64 %indvars.iv338 to i32
  %i.ev = add i32 %i.eu, 1
  %.1283.1 = select i1 %i.et, i32 %i.ev, i32 %.1283
  %.1.1 = select i1 %i.et, double %i.es, double %.1 ; 2 uses
  %indvars.iv.next339.1 = add nuw nsw i64 %indvars.iv338, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.1
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !9 ; 2 uses
  %i.ey = fcmp olt double %i.ex, %.1.1            ; 2 uses
  %i.ez = trunc nuw i64 %indvars.iv.next339.1 to i32
  %.1283.2 = select i1 %i.ey, i32 %i.ez, i32 %.1283.1
  %.1.2 = select i1 %i.ey, double %i.ex, double %.1.1 ; 2 uses
  %indvars.iv.next339.2 = add nuw nsw i64 %indvars.iv338, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.2
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9 ; 2 uses
  %i.fc = fcmp olt double %i.fb, %.1.2            ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv.next339.2 to i32
  %.1283.3 = select i1 %i.fc, i32 %i.fd, i32 %.1283.2
  %.1.3 = select i1 %i.fc, double %i.fb, double %.1.2 ; 2 uses
  %indvars.iv.next339.3 = add nuw nsw i64 %indvars.iv338, 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.3
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !9 ; 2 uses
  %i.fg = fcmp olt double %i.ff, %.1.3            ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv.next339.3 to i32
  %.1283.4 = select i1 %i.fg, i32 %i.fh, i32 %.1283.3
  %.1.4 = select i1 %i.fg, double %i.ff, double %.1.3 ; 2 uses
  %indvars.iv.next339.4 = add nuw nsw i64 %indvars.iv338, 5 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.4
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9 ; 2 uses
  %i.fk = fcmp olt double %i.fj, %.1.4            ; 2 uses
  %i.fl = trunc nuw i64 %indvars.iv.next339.4 to i32
  %.1283.5 = select i1 %i.fk, i32 %i.fl, i32 %.1283.4
  %.1.5 = select i1 %i.fk, double %i.fj, double %.1.4 ; 2 uses
  %indvars.iv.next339.5 = add nuw nsw i64 %indvars.iv338, 6 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.5
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !9 ; 2 uses
  %i.fo = fcmp olt double %i.fn, %.1.5            ; 2 uses
  %i.fp = trunc nuw i64 %indvars.iv.next339.5 to i32
  %.1283.6 = select i1 %i.fo, i32 %i.fp, i32 %.1283.5
  %.1.6 = select i1 %i.fo, double %i.fn, double %.1.5 ; 2 uses
  %indvars.iv.next339.6 = add nuw nsw i64 %indvars.iv338, 7 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next339.6
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9 ; 2 uses
  %i.fs = fcmp olt double %i.fr, %.1.6            ; 2 uses
  %i.ft = trunc nuw i64 %indvars.iv.next339.6 to i32
  %.1283.7 = select i1 %i.fs, i32 %i.ft, i32 %.1283.6 ; 3 uses
  %.1.7 = select i1 %i.fs, double %i.fr, double %.1.6 ; 3 uses
  %indvars.iv.next339.7 = add nuw nsw i64 %indvars.iv338, 8 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !12

end_hunk_0
