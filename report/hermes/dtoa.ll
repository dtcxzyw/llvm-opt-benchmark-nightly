Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/dtoa?download=true
inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@g_dtoa:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !38
  br label %rv_alloc.exit.i

rv_alloc.exit.i:                                  ; preds = %bb.j, %bb.f
  %.1.i.i.i = phi ptr [ %i.o, %bb.f ], [ %.0.i.i.i, %bb.j ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i, align 8, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4 ; 3 uses
  store <8 x i8> <i8 73, i8 110, i8 102, i8 105, i8 110, i8 105, i8 116, i8 121>, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 12 ; 2 uses
  store i8 0, ptr %i.ai, align 4, !tbaa !19
  %.not10.i = icmp eq ptr %6, null
  br i1 %.not10.i, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.k:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !15
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !13
  br label %rv_alloc.exit.i590

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, 4
  %i.as = load i32, ptr %0, align 8, !tbaa !7
  %i.at = sext i32 %i.as to i64
  %.not26.i.i.i598 = icmp sgt i64 %i.ar, %i.at
  br i1 %.not26.i.i.i598, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i.i599 = phi ptr [ %i.al, %bb.n ], [ %i.av, %bb.o ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i599, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i599, i64 12
  store i32 1, ptr %i.ay, align 4, !tbaa !38
  br label %rv_alloc.exit.i590

rv_alloc.exit.i590:                               ; preds = %bb.p, %bb.l
  %.1.i.i.i591 = phi ptr [ %i.o, %bb.l ], [ %.0.i.i.i599, %bb.p ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.i.i591, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i.i.i591, i64 16
  store i32 0, ptr %i.ba, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i591, align 8, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i591, i64 4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i591, i64 7
  store <4 x i8> <i8 78, i8 97, i8 78, i8 0>, ptr %i.bb, align 4, !tbaa !19
  %.not10.i597 = icmp eq ptr %6, null
  br i1 %.not10.i597, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.q:                                             ; preds = %bb.c
  %i.bd = load double, ptr %7, align 8, !tbaa !19
  %i.be = fcmp une double %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %4, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i601 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i601, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !13
  br label %rv_alloc.exit.i602

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = add nsw i64 %i.bo, 4
  %i.bq = load i32, ptr %0, align 8, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  %.not26.i.i.i610 = icmp sgt i64 %i.bp, %i.br
  br i1 %.not26.i.i.i610, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !11
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bt = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i.i611 = phi ptr [ %i.bj, %bb.u ], [ %i.bt, %bb.v ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i611, i64 8
  store i32 0, ptr %i.bv, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i611, i64 12
  store i32 1, ptr %i.bw, align 4, !tbaa !38
  br label %rv_alloc.exit.i602

rv_alloc.exit.i602:                               ; preds = %bb.w, %bb.s
  %.1.i.i.i603 = phi ptr [ %i.bg, %bb.s ], [ %.0.i.i.i611, %bb.w ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i603, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i.i.i603, i64 16
  store i32 0, ptr %i.by, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i603, align 8, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i.i603, i64 4 ; 3 uses
  store i8 48, ptr %i.bz, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i.i603, i64 5 ; 2 uses
  store i8 0, ptr %i.ca, align 1, !tbaa !19
  %.not10.i609 = icmp eq ptr %6, null
  br i1 %.not10.i609, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.x:                                             ; preds = %bb.q
  %i.cb = call fastcc ptr @d2b(ptr noundef %0, ptr noundef %7, ptr noundef %i.b, ptr noundef %i.a) ; 18 uses
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !19  ; 2 uses
  %i.cd = lshr i32 %i.cc, 20
  %i.ce = and i32 %i.cd, 2047                     ; 2 uses
  %.not546.not = icmp eq i32 %i.ce, 0             ; 2 uses
  br i1 %.not546.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = load i64, ptr %7, align 8, !tbaa !19
  %i.cg = and i64 %i.cf, 4503599627370495
  %.sroa.085.4.insert.insert94 = or disjoint i64 %i.cg, 4607182418800017408
  %i.ch = add nsw i32 %i.ce, -1023
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ci                ; 5 uses
  %i.cl = icmp sgt i32 %i.ck, -1042
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = sub nsw i32 -1010, %i.ck
  %i.cn = shl i32 %i.cc, %i.cm
  %i.co = load i32, ptr %7, align 8, !tbaa !19
  %i.cp = add nsw i32 %i.ck, 1042
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = or i32 %i.cq, %i.cn
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %7, align 8, !tbaa !19
  %i.ct = sub nuw nsw i32 -1042, %i.ck
  %i.cu = shl i32 %i.cs, %i.ct
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = phi i32 [ %i.cr, %bb.aa ], [ %i.cu, %bb.ab ]
  %i.cw = uitofp i32 %i.cv to double
  %i.cx = bitcast double %i.cw to i64             ; 2 uses
  %i.cy = and i64 %i.cx, 9223372032559808512
  %.sroa.085.4.insert.ext99 = add nsw i64 %i.cy, -139611588448485376
  %.sroa.085.4.insert.mask101 = and i64 %i.cx, 4294967295
  %.sroa.085.4.insert.insert102 = or disjoint i64 %.sroa.085.4.insert.ext99, %.sroa.085.4.insert.mask101
  %i.cz = add nsw i32 %i.ck, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.0493 = phi i32 [ %i.ch, %bb.y ], [ %i.cz, %bb.ac ] ; 2 uses
  %.sroa.085.0.in = phi i64 [ %.sroa.085.4.insert.insert94, %bb.y ], [ %.sroa.085.4.insert.insert102, %bb.ac ]
  %.sroa.085.0 = bitcast i64 %.sroa.085.0.in to double
  %i.da = fadd double %.sroa.085.0, -1.500000e+00
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.dc = sitofp i32 %.0493 to double
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double f0x3FD34413509F79FB, double %i.db) ; 3 uses
  %i.de = fptosi double %i.dd to i32              ; 2 uses
  %i.df = fcmp olt double %i.dd, 0.000000e+00
  %i.dg = sitofp i32 %i.de to double
  %i.dh = fcmp une double %i.dd, %i.dg
  %or.cond582 = and i1 %i.df, %i.dh
  %i.di = sext i1 %or.cond582 to i32
  %.0463 = add nsw i32 %i.di, %i.de               ; 4 uses
  %or.cond = icmp ugt i32 %.0463, 22              ; 3 uses
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load double, ptr %7, align 8, !tbaa !19
  %i.dk = zext nneg i32 %.0463 to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !27
  %i.dn = fcmp olt double %i.dj, %i.dm
  %8 = sext i1 %i.dn to i32
  %spec.select = add nsw i32 %.0463, %8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2465 = phi i32 [ %spec.select, %bb.ae ], [ %.0463, %bb.ad ] ; 27 uses
  %i.do = load i32, ptr %i.a, align 4, !tbaa !3
  %i.dp = xor i32 %.0493, -1
  %i.dq = add i32 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, -1                  ; 2 uses
  %i.ds = sub nsw i32 0, %i.dq
  %.0507 = select i1 %i.dr, i32 0, i32 %i.ds      ; 2 uses
  %.0453 = select i1 %i.dr, i32 %i.dq, i32 0      ; 2 uses
  %i.dt = icmp sgt i32 %.2465, -1
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = add nuw nsw i32 %.0453, %.2465
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dv = sub nsw i32 %.0507, %.2465
  %i.dw = sub nsw i32 0, %.2465
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1508 = phi i32 [ %.0507, %bb.ag ], [ %i.dv, %bb.ah ] ; 6 uses
  %.0506 = phi i32 [ 0, %bb.ag ], [ %i.dw, %bb.ah ] ; 3 uses
  %.1454 = phi i32 [ %i.du, %bb.ag ], [ %.0453, %bb.ah ] ; 2 uses
  %.0452 = phi i32 [ %.2465, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %or.cond3 = icmp ugt i32 %2, 9
  %spec.store.select29 = select i1 %or.cond3, i32 0, i32 %2 ; 3 uses
  %i.dx = icmp samesign ult i32 %spec.store.select29, 6 ; 2 uses
  %i.dy = add nsw i32 %spec.store.select29, -4
  %spec.select.a = select i1 %i.dx, i32 %spec.store.select29, i32 %i.dy ; 4 uses
  switch i32 %spec.select.a, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.aj
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 5, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0459 = phi i32 [ 0, %bb.aj ], [ 1, %bb.ai ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 4 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.1460 = phi i32 [ 0, %bb.al ], [ 1, %bb.ai ]
  %i.dz = add nsw i32 %.2465, %3                  ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 1)
  br label %bb.an

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0514 = phi i32 [ %spec.store.select, %bb.ak ], [ %3, %bb.am ] ; 3 uses
  %.1494 = phi i32 [ %spec.store.select, %bb.ak ], [ %spec.store.select4, %bb.am ] ; 2 uses
  %.0480 = phi i32 [ %spec.store.select, %bb.ak ], [ %i.ea, %bb.am ] ; 3 uses
  %.0479 = phi i32 [ %spec.store.select, %bb.ak ], [ %i.dz, %bb.am ] ; 3 uses
  %.2461 = phi i32 [ %.0459, %bb.ak ], [ %.1460, %bb.am ] ; 3 uses
  %i.eb = zext nneg i32 %.1494 to i64
  %.not9.i = icmp samesign ult i32 %.1494, 28
  br i1 %.not9.i, label %._crit_edge.thread.i, label %.lr.ph.i613

.lr.ph.i613:                                      ; preds = %bb.an, %.lr.ph.i613
  %.011.i = phi i32 [ %i.ec, %.lr.ph.i613 ], [ 0, %bb.an ] ; 3 uses
  %.0810.i = phi i32 [ %i.ed, %.lr.ph.i613 ], [ 4, %bb.an ]
  %i.ec = add nuw nsw i32 %.011.i, 1              ; 3 uses
  %i.ed = shl i32 %.0810.i, 1                     ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 24
  %.not.i614 = icmp ugt i64 %i.ef, %i.eb
  br i1 %.not.i614, label %._crit_edge.i615, label %.lr.ph.i613, !llvm.loop !47

._crit_edge.i615:                                 ; preds = %.lr.ph.i613
  %i.eg = icmp samesign ult i32 %.011.i, 7
  br i1 %i.eg, label %._crit_edge.thread.i, label %bb.ap

._crit_edge.thread.i:                             ; preds = %bb.ai, %bb.ai, %._crit_edge.i615, %bb.an
  %.2461719.a = phi i32 [ %.2461, %._crit_edge.i615 ], [ %.2461, %bb.an ], [ 1, %bb.ai ], [ 1, %bb.ai ] ; 3 uses
  %.0479713.a = phi i32 [ %.0479, %._crit_edge.i615 ], [ %.0479, %bb.an ], [ -1, %bb.ai ], [ -1, %bb.ai ] ; 3 uses
  %.0480709.a = phi i32 [ %.0480, %._crit_edge.i615 ], [ %.0480, %bb.an ], [ -1, %bb.ai ], [ -1, %bb.ai ] ; 3 uses
  %.0514705.a = phi i32 [ %.0514, %._crit_edge.i615 ], [ %.0514, %bb.an ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 3 uses
  %.0.lcssa15.i = phi i32 [ %i.ec, %._crit_edge.i615 ], [ 0, %bb.an ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = zext nneg i32 %.0.lcssa15.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !15
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !13
  br label %rv_alloc.exit

bb.ap:                                            ; preds = %._crit_edge.i615
  %i.em = shl nuw i32 2, %.011.i                  ; 2 uses
  %i.en = add nsw i32 %i.em, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 36
  br label %bb.as

bb.aq:                                            ; preds = %._crit_edge.thread.i
  %i.er = shl nuw nsw i32 1, %.0.lcssa15.i        ; 3 uses
  %i.es = add nsw i32 %i.er, -1
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 36               ; 2 uses
  %i.ew = lshr i64 %i.ev, 3                       ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !11 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 3
  %i.fe = add nsw i64 %i.fd, %i.ew
  %i.ff = load i32, ptr %0, align 8, !tbaa !7
  %i.fg = sext i32 %i.ff to i64
  %.not26.i.i = icmp sgt i64 %i.fe, %i.fg
  br i1 %.not26.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fh, ptr %i.ex, align 8, !tbaa !11
  br label %bb.at

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.2461718.a = phi i32 [ %.2461719.a, %bb.aq ], [ %.2461, %bb.ap ]
  %.0479712.a = phi i32 [ %.0479713.a, %bb.aq ], [ %.0479, %bb.ap ]
  %.0480708.a = phi i32 [ %.0480709.a, %bb.aq ], [ %.0480, %bb.ap ]
  %.0514704.a = phi i32 [ %.0514705.a, %bb.aq ], [ %.0514, %bb.ap ]
  %.0.lcssa14.i = phi i32 [ %.0.lcssa15.i, %bb.aq ], [ %i.ec, %bb.ap ]
  %i.fi = phi i64 [ %i.ev, %bb.aq ], [ %i.eq, %bb.ap ]
  %i.fj = phi i32 [ %i.er, %bb.aq ], [ %i.em, %bb.ap ]
  %i.fk = and i64 %i.fi, 34359738360
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #19
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fm, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.2461717 = phi i32 [ %.2461719.a, %bb.ar ], [ %.2461718.a, %bb.as ]
  %.0479711 = phi i32 [ %.0479713.a, %bb.ar ], [ %.0479712.a, %bb.as ]
  %.0480707 = phi i32 [ %.0480709.a, %bb.ar ], [ %.0480708.a, %bb.as ]
  %.0514703 = phi i32 [ %.0514705.a, %bb.ar ], [ %.0514704.a, %bb.as ]
  %.0.lcssa13.i = phi i32 [ %.0.lcssa15.i, %bb.ar ], [ %.0.lcssa14.i, %bb.as ] ; 2 uses
  %i.fn = phi i32 [ %i.er, %bb.ar ], [ %i.fj, %bb.as ]
  %.0.i.i = phi ptr [ %i.ey, %bb.ar ], [ %i.fl, %bb.as ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %.0.lcssa13.i, ptr %i.fo, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !38
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.ao, %bb.at
  %.2461716 = phi i32 [ %.2461719.a, %bb.ao ], [ %.2461717, %bb.at ] ; 2 uses
  %.0479710 = phi i32 [ %.0479713.a, %bb.ao ], [ %.0479711, %bb.at ] ; 4 uses
  %.0480706 = phi i32 [ %.0480709.a, %bb.ao ], [ %.0480707, %bb.at ] ; 11 uses
  %.0514702 = phi i32 [ %.0514705.a, %bb.ao ], [ %.0514703, %bb.at ] ; 2 uses
  %.0.lcssa16.i = phi i32 [ %.0.lcssa15.i, %bb.ao ], [ %.0.lcssa13.i, %bb.at ]
  %.1.i.i = phi ptr [ %i.ek, %bb.ao ], [ %.0.i.i, %bb.at ] ; 23 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 20
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.fr, align 8, !tbaa !39
  store i32 %.0.lcssa16.i, ptr %.1.i.i, align 8, !tbaa !3
  %.ptr752.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 10 uses
  %or.cond6 = icmp ult i32 %.0480706, 15
  %or.cond8 = and i1 %i.dx, %or.cond6
  br i1 %or.cond8, label %bb.au, label %bb.br

bb.au:                                            ; preds = %rv_alloc.exit
  %i.fs = load double, ptr %7, align 8, !tbaa !19 ; 5 uses
  %i.ft = icmp sgt i32 %.2465, 0
  br i1 %i.ft, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fu = and i32 %.2465, 15
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !27 ; 2 uses
  %i.fy = lshr i32 %.2465, 4                      ; 2 uses
  %i.fz = and i32 %.2465, 256
  %.not550 = icmp eq i32 %i.fz, 0                 ; 3 uses
  %i.ga = and i32 %i.fy, 15
  %i.gb = fdiv double %i.fs, 1.000000e+256
  %i.gc = select i1 %.not550, double %i.fs, double %i.gb
  %.0486 = select i1 %.not550, i32 2, i32 3       ; 2 uses
  %.0475 = select i1 %.not550, i32 %i.fy, i32 %i.ga ; 2 uses
  %.not551862 = icmp eq i32 %.0475, 0
  br i1 %.not551862, label %._crit_edge, label %.lr.ph867

end_hunk_0
begin_hunk_1_@dtoa_fixedpoint:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 1, ptr %i.ae, align 4, !tbaa !38
  br label %rv_alloc.exit.i

rv_alloc.exit.i:                                  ; preds = %bb.j, %bb.f
  %.1.i.i.i = phi ptr [ %i.o, %bb.f ], [ %.0.i.i.i, %bb.j ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i, align 8, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4 ; 3 uses
  store <8 x i8> <i8 73, i8 110, i8 102, i8 105, i8 110, i8 105, i8 116, i8 121>, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 12 ; 2 uses
  store i8 0, ptr %i.ai, align 4, !tbaa !19
  %.not10.i = icmp eq ptr %6, null
  br i1 %.not10.i, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.k:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !15
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !13
  br label %rv_alloc.exit.i559

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, 4
  %i.as = load i32, ptr %0, align 8, !tbaa !7
  %i.at = sext i32 %i.as to i64
  %.not26.i.i.i567 = icmp sgt i64 %i.ar, %i.at
  br i1 %.not26.i.i.i567, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i.i568 = phi ptr [ %i.al, %bb.n ], [ %i.av, %bb.o ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i568, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i568, i64 12
  store i32 1, ptr %i.ay, align 4, !tbaa !38
  br label %rv_alloc.exit.i559

rv_alloc.exit.i559:                               ; preds = %bb.p, %bb.l
  %.1.i.i.i560 = phi ptr [ %i.o, %bb.l ], [ %.0.i.i.i568, %bb.p ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.i.i560, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i.i.i560, i64 16
  store i32 0, ptr %i.ba, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i560, align 8, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i560, i64 4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i560, i64 7
  store <4 x i8> <i8 78, i8 97, i8 78, i8 0>, ptr %i.bb, align 4, !tbaa !19
  %.not10.i566 = icmp eq ptr %6, null
  br i1 %.not10.i566, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.q:                                             ; preds = %bb.c
  %i.bd = load double, ptr %7, align 8, !tbaa !19
  %i.be = fcmp une double %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %4, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i570 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i570, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !13
  br label %rv_alloc.exit.i571

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = add nsw i64 %i.bo, 4
  %i.bq = load i32, ptr %0, align 8, !tbaa !7
  %i.br = sext i32 %i.bq to i64
  %.not26.i.i.i579 = icmp sgt i64 %i.bp, %i.br
  br i1 %.not26.i.i.i579, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !11
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bt = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i.i580 = phi ptr [ %i.bj, %bb.u ], [ %i.bt, %bb.v ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i580, i64 8
  store i32 0, ptr %i.bv, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i580, i64 12
  store i32 1, ptr %i.bw, align 4, !tbaa !38
  br label %rv_alloc.exit.i571

rv_alloc.exit.i571:                               ; preds = %bb.w, %bb.s
  %.1.i.i.i572 = phi ptr [ %i.bg, %bb.s ], [ %.0.i.i.i580, %bb.w ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i572, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i.i.i572, i64 16
  store i32 0, ptr %i.by, align 8, !tbaa !39
  store i32 0, ptr %.1.i.i.i572, align 8, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i.i572, i64 4 ; 3 uses
  store i8 48, ptr %i.bz, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i.i572, i64 5 ; 2 uses
  store i8 0, ptr %i.ca, align 1, !tbaa !19
  %.not10.i578 = icmp eq ptr %6, null
  br i1 %.not10.i578, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.x:                                             ; preds = %bb.q
  %i.cb = call fastcc ptr @d2b(ptr noundef %0, ptr noundef %7, ptr noundef %i.b, ptr noundef %i.a) ; 18 uses
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !19  ; 2 uses
  %i.cd = lshr i32 %i.cc, 20
  %i.ce = and i32 %i.cd, 2047                     ; 2 uses
  %.not524.not = icmp eq i32 %i.ce, 0             ; 2 uses
  br i1 %.not524.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = load i64, ptr %7, align 8, !tbaa !19
  %i.cg = and i64 %i.cf, 4503599627370495
  %.sroa.081.4.insert.insert90 = or disjoint i64 %i.cg, 4607182418800017408
  %i.ch = add nsw i32 %i.ce, -1023
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ci                ; 5 uses
  %i.cl = icmp sgt i32 %i.ck, -1042
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = sub nsw i32 -1010, %i.ck
  %i.cn = shl i32 %i.cc, %i.cm
  %i.co = load i32, ptr %7, align 8, !tbaa !19
  %i.cp = add nsw i32 %i.ck, 1042
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = or i32 %i.cq, %i.cn
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %7, align 8, !tbaa !19
  %i.ct = sub nuw nsw i32 -1042, %i.ck
  %i.cu = shl i32 %i.cs, %i.ct
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = phi i32 [ %i.cr, %bb.aa ], [ %i.cu, %bb.ab ]
  %i.cw = uitofp i32 %i.cv to double
  %i.cx = bitcast double %i.cw to i64             ; 2 uses
  %i.cy = and i64 %i.cx, 9223372032559808512
  %.sroa.081.4.insert.ext95 = add nsw i64 %i.cy, -139611588448485376
  %.sroa.081.4.insert.mask97 = and i64 %i.cx, 4294967295
  %.sroa.081.4.insert.insert98 = or disjoint i64 %.sroa.081.4.insert.ext95, %.sroa.081.4.insert.mask97
  %i.cz = add nsw i32 %i.ck, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.0478 = phi i32 [ %i.ch, %bb.y ], [ %i.cz, %bb.ac ] ; 2 uses
  %.sroa.081.0.in = phi i64 [ %.sroa.081.4.insert.insert90, %bb.y ], [ %.sroa.081.4.insert.insert98, %bb.ac ]
  %.sroa.081.0 = bitcast i64 %.sroa.081.0.in to double
  %i.da = fadd double %.sroa.081.0, -1.500000e+00
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.dc = sitofp i32 %.0478 to double
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double f0x3FD34413509F79FB, double %i.db) ; 3 uses
  %i.de = fptosi double %i.dd to i32              ; 2 uses
  %i.df = fcmp olt double %i.dd, 0.000000e+00
  %i.dg = sitofp i32 %i.de to double
  %i.dh = fcmp une double %i.dd, %i.dg
  %or.cond555 = and i1 %i.df, %i.dh
  %i.di = sext i1 %or.cond555 to i32
  %.0448 = add nsw i32 %i.di, %i.de               ; 4 uses
  %or.cond = icmp ugt i32 %.0448, 22              ; 3 uses
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load double, ptr %7, align 8, !tbaa !19
  %i.dk = zext nneg i32 %.0448 to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !27
  %i.dn = fcmp olt double %i.dj, %i.dm
  %8 = sext i1 %i.dn to i32
  %spec.select = add nsw i32 %.0448, %8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2450 = phi i32 [ %spec.select, %bb.ae ], [ %.0448, %bb.ad ] ; 26 uses
  %i.do = load i32, ptr %i.a, align 4, !tbaa !3
  %i.dp = xor i32 %.0478, -1
  %i.dq = add i32 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, -1                  ; 2 uses
  %i.ds = sub nsw i32 0, %i.dq
  %.0490 = select i1 %i.dr, i32 0, i32 %i.ds      ; 2 uses
  %.0438 = select i1 %i.dr, i32 %i.dq, i32 0      ; 2 uses
  %i.dt = icmp sgt i32 %.2450, -1
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = add nuw nsw i32 %.0438, %.2450
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dv = sub nsw i32 %.0490, %.2450
  %i.dw = sub nsw i32 0, %.2450
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1491 = phi i32 [ %.0490, %bb.ag ], [ %i.dv, %bb.ah ] ; 6 uses
  %.0489 = phi i32 [ 0, %bb.ag ], [ %i.dw, %bb.ah ] ; 3 uses
  %.1439 = phi i32 [ %i.du, %bb.ag ], [ %.0438, %bb.ah ] ; 2 uses
  %.0437 = phi i32 [ %.2450, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %or.cond3 = icmp ugt i32 %2, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %2 ; 3 uses
  %i.dx = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.dy = add nsw i32 %spec.store.select27, -4
  %spec.select.a = select i1 %i.dx, i32 %spec.store.select27, i32 %i.dy ; 4 uses
  switch i32 %spec.select.a, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.aj
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 5, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0444 = phi i32 [ 0, %bb.aj ], [ 1, %bb.ai ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %3, i32 1) ; 4 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.1445 = phi i32 [ 0, %bb.al ], [ 1, %bb.ai ]
  %i.dz = add nsw i32 %.2450, %3                  ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 1)
  br label %bb.an

default.unreachable:                              ; preds = %bb.ai
  unreachable

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.0497 = phi i32 [ %spec.store.select, %bb.ak ], [ %3, %bb.am ] ; 3 uses
  %.1479 = phi i32 [ %spec.store.select, %bb.ak ], [ %spec.store.select4, %bb.am ] ; 2 uses
  %.0465 = phi i32 [ %spec.store.select, %bb.ak ], [ %i.ea, %bb.am ] ; 3 uses
  %.0464 = phi i32 [ %spec.store.select, %bb.ak ], [ %i.dz, %bb.am ] ; 3 uses
  %.2446 = phi i32 [ %.0444, %bb.ak ], [ %.1445, %bb.am ] ; 3 uses
  %i.eb = zext nneg i32 %.1479 to i64
  %.not9.i = icmp samesign ult i32 %.1479, 28
  br i1 %.not9.i, label %._crit_edge.thread.i, label %.lr.ph.i582

.lr.ph.i582:                                      ; preds = %bb.an, %.lr.ph.i582
  %.011.i = phi i32 [ %i.ec, %.lr.ph.i582 ], [ 0, %bb.an ] ; 3 uses
  %.0810.i = phi i32 [ %i.ed, %.lr.ph.i582 ], [ 4, %bb.an ]
  %i.ec = add nuw nsw i32 %.011.i, 1              ; 3 uses
  %i.ed = shl i32 %.0810.i, 1                     ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, 24
  %.not.i583 = icmp ugt i64 %i.ef, %i.eb
  br i1 %.not.i583, label %._crit_edge.i584, label %.lr.ph.i582, !llvm.loop !47

._crit_edge.i584:                                 ; preds = %.lr.ph.i582
  %i.eg = icmp samesign ult i32 %.011.i, 7
  br i1 %i.eg, label %._crit_edge.thread.i, label %bb.ap

._crit_edge.thread.i:                             ; preds = %bb.ai, %bb.ai, %._crit_edge.i584, %bb.an
  %.2446688.a = phi i32 [ %.2446, %._crit_edge.i584 ], [ %.2446, %bb.an ], [ 1, %bb.ai ], [ 1, %bb.ai ] ; 3 uses
  %.0464682.a = phi i32 [ %.0464, %._crit_edge.i584 ], [ %.0464, %bb.an ], [ -1, %bb.ai ], [ -1, %bb.ai ] ; 3 uses
  %.0465678.a = phi i32 [ %.0465, %._crit_edge.i584 ], [ %.0465, %bb.an ], [ -1, %bb.ai ], [ -1, %bb.ai ] ; 3 uses
  %.0497674.a = phi i32 [ %.0497, %._crit_edge.i584 ], [ %.0497, %bb.an ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 3 uses
  %.0.lcssa15.i = phi i32 [ %i.ec, %._crit_edge.i584 ], [ 0, %bb.an ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = zext nneg i32 %.0.lcssa15.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !15
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !13
  br label %rv_alloc.exit

bb.ap:                                            ; preds = %._crit_edge.i584
  %i.em = shl nuw i32 2, %.011.i                  ; 2 uses
  %i.en = add nsw i32 %i.em, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 36
  br label %bb.as

bb.aq:                                            ; preds = %._crit_edge.thread.i
  %i.er = shl nuw nsw i32 1, %.0.lcssa15.i        ; 3 uses
  %i.es = add nsw i32 %i.er, -1
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 36               ; 2 uses
  %i.ew = lshr i64 %i.ev, 3                       ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !11 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 3
  %i.fe = add nsw i64 %i.fd, %i.ew
  %i.ff = load i32, ptr %0, align 8, !tbaa !7
  %i.fg = sext i32 %i.ff to i64
  %.not26.i.i = icmp sgt i64 %i.fe, %i.fg
  br i1 %.not26.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fh, ptr %i.ex, align 8, !tbaa !11
  br label %bb.at

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.2446687.a = phi i32 [ %.2446688.a, %bb.aq ], [ %.2446, %bb.ap ]
  %.0464681.a = phi i32 [ %.0464682.a, %bb.aq ], [ %.0464, %bb.ap ]
  %.0465677.a = phi i32 [ %.0465678.a, %bb.aq ], [ %.0465, %bb.ap ]
  %.0497673.a = phi i32 [ %.0497674.a, %bb.aq ], [ %.0497, %bb.ap ]
  %.0.lcssa14.i = phi i32 [ %.0.lcssa15.i, %bb.aq ], [ %i.ec, %bb.ap ]
  %i.fi = phi i64 [ %i.ev, %bb.aq ], [ %i.eq, %bb.ap ]
  %i.fj = phi i32 [ %i.er, %bb.aq ], [ %i.em, %bb.ap ]
  %i.fk = and i64 %i.fi, 34359738360
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #19
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.fm, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.2446686 = phi i32 [ %.2446688.a, %bb.ar ], [ %.2446687.a, %bb.as ]
  %.0464680 = phi i32 [ %.0464682.a, %bb.ar ], [ %.0464681.a, %bb.as ]
  %.0465676 = phi i32 [ %.0465678.a, %bb.ar ], [ %.0465677.a, %bb.as ]
  %.0497672 = phi i32 [ %.0497674.a, %bb.ar ], [ %.0497673.a, %bb.as ]
  %.0.lcssa13.i = phi i32 [ %.0.lcssa15.i, %bb.ar ], [ %.0.lcssa14.i, %bb.as ] ; 2 uses
  %i.fn = phi i32 [ %i.er, %bb.ar ], [ %i.fj, %bb.as ]
  %.0.i.i = phi ptr [ %i.ey, %bb.ar ], [ %i.fl, %bb.as ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %.0.lcssa13.i, ptr %i.fo, align 8, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !38
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.ao, %bb.at
  %.2446685 = phi i32 [ %.2446688.a, %bb.ao ], [ %.2446686, %bb.at ] ; 2 uses
  %.0464679 = phi i32 [ %.0464682.a, %bb.ao ], [ %.0464680, %bb.at ] ; 4 uses
  %.0465675 = phi i32 [ %.0465678.a, %bb.ao ], [ %.0465676, %bb.at ] ; 11 uses
  %.0497671 = phi i32 [ %.0497674.a, %bb.ao ], [ %.0497672, %bb.at ] ; 2 uses
  %.0.lcssa16.i = phi i32 [ %.0.lcssa15.i, %bb.ao ], [ %.0.lcssa13.i, %bb.at ]
  %.1.i.i = phi ptr [ %i.ek, %bb.ao ], [ %.0.i.i, %bb.at ] ; 23 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 20
  store i32 0, ptr %i.fq, align 4, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.fr, align 8, !tbaa !39
  store i32 %.0.lcssa16.i, ptr %.1.i.i, align 8, !tbaa !3
  %.ptr713.ptr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 10 uses
  %or.cond6 = icmp ult i32 %.0465675, 15
  %or.cond8 = and i1 %i.dx, %or.cond6
  br i1 %or.cond8, label %bb.au, label %bb.br

bb.au:                                            ; preds = %rv_alloc.exit
  %i.fs = load double, ptr %7, align 8, !tbaa !19 ; 5 uses
  %i.ft = icmp sgt i32 %.2450, 0
  br i1 %i.ft, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fu = and i32 %.2450, 15
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !27 ; 2 uses
  %i.fy = lshr i32 %.2450, 4                      ; 2 uses
  %i.fz = and i32 %.2450, 256
  %.not528 = icmp eq i32 %i.fz, 0                 ; 3 uses
  %i.ga = and i32 %i.fy, 15
  %i.gb = fdiv double %i.fs, 1.000000e+256
  %i.gc = select i1 %.not528, double %i.fs, double %i.gb
  %.0471 = select i1 %.not528, i32 2, i32 3       ; 2 uses
  %.0460 = select i1 %.not528, i32 %i.fy, i32 %i.ga ; 2 uses
  %.not529808 = icmp eq i32 %.0460, 0
  br i1 %.not529808, label %._crit_edge, label %.lr.ph813

end_hunk_1
