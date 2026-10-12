Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dtoa?download=true
inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_dtoa:bb.a
  store i32 0, ptr %i.v, align 8, !tbaa !119
  %i.w = getelementptr i8, ptr %.0.i.i.i, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !120
  br label %rv_alloc.exit.i

rv_alloc.exit.i:                                  ; preds = %bb.h, %bb.d
  %.1.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.0.i.i.i, %bb.h ] ; 5 uses
  %i.x = getelementptr i8, ptr %.1.i.i.i, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !122
  %i.y = getelementptr i8, ptr %.1.i.i.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !121
  store i32 0, ptr %.1.i.i.i, align 8, !tbaa !10
  %i.z = getelementptr i8, ptr %.1.i.i.i, i64 4   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %rv_alloc.exit.i
  store <8 x i8> <i8 73, i8 110, i8 102, i8 105, i8 110, i8 105, i8 116, i8 121>, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr i8, ptr %.1.i.i.i, i64 12 ; 2 uses
  store i8 0, ptr %i.ab, align 4, !tbaa !11
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  store ptr %i.ab, ptr %5, align 8, !tbaa !15
  br label %nrv_alloc.exit

bb.j:                                             ; preds = %bb.b
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !29
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !27
  br label %rv_alloc.exit.i640

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %i.h, i64 14328   ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118 ; 3 uses
  %i.af = getelementptr i8, ptr %i.h, i64 12024
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp slt i64 %i.ai, 2280
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.ae, i64 32
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !118
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = tail call ptr @PyMem_Malloc(i64 noundef 32) #11 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %nrv_alloc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i650 = phi ptr [ %i.ae, %bb.m ], [ %i.al, %bb.n ] ; 3 uses
  %i.an = getelementptr i8, ptr %.0.i.i.i650, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !119
  %i.ao = getelementptr i8, ptr %.0.i.i.i650, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !120
  br label %rv_alloc.exit.i640

rv_alloc.exit.i640:                               ; preds = %bb.o, %bb.k
  %.1.i.i.i641 = phi ptr [ %i.j, %bb.k ], [ %.0.i.i.i650, %bb.o ] ; 5 uses
  %i.ap = getelementptr i8, ptr %.1.i.i.i641, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !122
  %i.aq = getelementptr i8, ptr %.1.i.i.i641, i64 16
  store i32 0, ptr %i.aq, align 8, !tbaa !121
  store i32 0, ptr %.1.i.i.i641, align 8, !tbaa !10
  %i.ar = getelementptr i8, ptr %.1.i.i.i641, i64 4 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %nrv_alloc.exit, label %.preheader.i642

.preheader.i642:                                  ; preds = %rv_alloc.exit.i640
  store <4 x i8> <i8 78, i8 97, i8 78, i8 0>, ptr %i.ar, align 4, !tbaa !11
  %.not14.i648 = icmp eq ptr %5, null
  br i1 %.not14.i648, label %nrv_alloc.exit, label %bb.p

bb.p:                                             ; preds = %.preheader.i642
  %i.at = getelementptr i8, ptr %.1.i.i.i641, i64 7
  store ptr %i.at, ptr %5, align 8, !tbaa !15
  br label %nrv_alloc.exit

bb.q:                                             ; preds = %bb.a
  %i.au = fcmp une double %.sroa.0.0796, 0.000000e+00
  br i1 %i.au, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %3, align 4, !tbaa !10
  %i.av = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 11960  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 3 uses
  %.not.i.i.i652 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i652, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !27
  br label %rv_alloc.exit.i653

bb.t:                                             ; preds = %bb.r
  %i.ba = getelementptr i8, ptr %i.aw, i64 14328  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !118 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.aw, i64 12024
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp slt i64 %i.bf, 2280
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr i8, ptr %i.bb, i64 32
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !118
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bi = tail call ptr @PyMem_Malloc(i64 noundef 32) #11 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %nrv_alloc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i.i663 = phi ptr [ %i.bb, %bb.u ], [ %i.bi, %bb.v ] ; 3 uses
  %i.bk = getelementptr i8, ptr %.0.i.i.i663, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !119
  %i.bl = getelementptr i8, ptr %.0.i.i.i663, i64 12
  store i32 1, ptr %i.bl, align 4, !tbaa !120
  br label %rv_alloc.exit.i653

rv_alloc.exit.i653:                               ; preds = %bb.w, %bb.s
  %.1.i.i.i654 = phi ptr [ %i.ay, %bb.s ], [ %.0.i.i.i663, %bb.w ] ; 5 uses
  %i.bm = getelementptr i8, ptr %.1.i.i.i654, i64 20
  store i32 0, ptr %i.bm, align 4, !tbaa !122
  %i.bn = getelementptr i8, ptr %.1.i.i.i654, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !121
  store i32 0, ptr %.1.i.i.i654, align 8, !tbaa !10
  %i.bo = getelementptr i8, ptr %.1.i.i.i654, i64 4 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %nrv_alloc.exit, label %.preheader.i655

.preheader.i655:                                  ; preds = %rv_alloc.exit.i653
  store i8 48, ptr %i.bo, align 4, !tbaa !11
  %i.bq = getelementptr i8, ptr %.1.i.i.i654, i64 5 ; 2 uses
  store i8 0, ptr %i.bq, align 1, !tbaa !11
  %.not14.i661 = icmp eq ptr %5, null
  br i1 %.not14.i661, label %nrv_alloc.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.i655
  store ptr %i.bq, ptr %5, align 8, !tbaa !15
  br label %nrv_alloc.exit

bb.y:                                             ; preds = %bb.q
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 15 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 11968  ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !27
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bw = getelementptr i8, ptr %i.bs, i64 14328  ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118 ; 3 uses
  %i.by = getelementptr i8, ptr %i.bs, i64 12024
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp slt i64 %i.cb, 2272
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr i8, ptr %i.bx, i64 40
  store ptr %i.cd, ptr %i.bw, align 8, !tbaa !118
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ce = tail call ptr @PyMem_Malloc(i64 noundef 40) #11 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %nrv_alloc.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi ptr [ %i.bx, %bb.ab ], [ %i.ce, %bb.ac ] ; 3 uses
  %i.cg = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 1, ptr %i.cg, align 8, !tbaa !119
  %i.ch = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 2, ptr %i.ch, align 4, !tbaa !120
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %.1.i.i = phi ptr [ %i.bu, %bb.z ], [ %.0.i.i, %bb.ad ] ; 28 uses
  %i.ci = getelementptr i8, ptr %.1.i.i, i64 20   ; 2 uses
  %i.cj = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.cj, align 8, !tbaa !121
  %i.ck = getelementptr i8, ptr %.1.i.i, i64 24   ; 4 uses
  %i.cl = and i32 %.sroa.0.4.extract.trunc774, 1048575 ; 3 uses
  %i.cm = lshr i32 %.sroa.0.4.extract.trunc774, 20
  %6 = and i32 %i.cm, 2047                        ; 3 uses
  %.not.i665 = icmp eq i32 %6, 0                  ; 3 uses
  %i.cn = or disjoint i32 %i.cl, 1048576
  %spec.select.i = select i1 %.not.i665, i32 %i.cl, i32 %i.cn ; 13 uses
  %.sroa.0.0.extract.trunc764 = trunc i64 %.pre-phi to i32 ; 14 uses
  %.not34.i = icmp ne i32 %.sroa.0.0.extract.trunc764, 0 ; 2 uses
  br i1 %.not34.i, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.co = and i32 %.sroa.0.0.extract.trunc764, 7
  %.not.i37.i = icmp eq i32 %i.co, 0
  br i1 %.not.i37.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = and i32 %.sroa.0.0.extract.trunc764, 1
  %.not39.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not39.i.i, label %bb.ah, label %lo0bits.exit.thread83.i

bb.ah:                                            ; preds = %bb.ag
  %i.cq = and i32 %.sroa.0.0.extract.trunc764, 2
  %.not40.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not40.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = lshr exact i32 %.sroa.0.0.extract.trunc764, 1
  br label %lo0bits.exit.thread.i

bb.aj:                                            ; preds = %bb.ah
  %i.cs = lshr exact i32 %.sroa.0.0.extract.trunc764, 2
  br label %lo0bits.exit.thread.i

bb.ak:                                            ; preds = %bb.af
  %i.ct = and i32 %.sroa.0.0.extract.trunc764, 65528
  %.not33.i.i = icmp eq i32 %i.ct, 0              ; 2 uses
  %i.cu = lshr exact i32 %.sroa.0.0.extract.trunc764, 16
  %spec.select.i.i = select i1 %.not33.i.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i.i = select i1 %.not33.i.i, i32 %i.cu, i32 %.sroa.0.0.extract.trunc764 ; 3 uses
  %i.cv = and i32 %spec.select41.i.i, 255
  %.not34.i.i = icmp eq i32 %i.cv, 0              ; 2 uses
  %i.cw = or disjoint i32 %spec.select.i.i, 8
  %i.cx = lshr exact i32 %spec.select41.i.i, 8
  %.127.i.i = select i1 %.not34.i.i, i32 %i.cw, i32 %spec.select.i.i ; 2 uses
  %.1.i38.i = select i1 %.not34.i.i, i32 %i.cx, i32 %spec.select41.i.i ; 3 uses
  %i.cy = and i32 %.1.i38.i, 15
  %.not35.i.i = icmp eq i32 %i.cy, 0              ; 2 uses
  %i.cz = or disjoint i32 %.127.i.i, 4
  %i.da = lshr exact i32 %.1.i38.i, 4
  %.228.i.i = select i1 %.not35.i.i, i32 %i.cz, i32 %.127.i.i ; 2 uses
  %.2.i.i = select i1 %.not35.i.i, i32 %i.da, i32 %.1.i38.i ; 3 uses
  %i.db = and i32 %.2.i.i, 3
  %.not36.i.i = icmp eq i32 %i.db, 0              ; 2 uses
  %i.dc = or disjoint i32 %.228.i.i, 2
  %i.dd = lshr exact i32 %.2.i.i, 2
  %.329.i.i = select i1 %.not36.i.i, i32 %i.dc, i32 %.228.i.i ; 3 uses
  %.3.i.i = select i1 %.not36.i.i, i32 %i.dd, i32 %.2.i.i ; 5 uses
  %i.de = and i32 %.3.i.i, 1
  %.not37.i.i = icmp eq i32 %i.de, 0
  br i1 %.not37.i.i, label %bb.al, label %lo0bits.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.df = add nuw nsw i32 %.329.i.i, 1
  %i.dg = lshr exact i32 %.3.i.i, 1
  %.not38.i.i = icmp eq i32 %.3.i.i, 0            ; 2 uses
  %spec.select89.i = select i1 %.not38.i.i, i32 32, i32 %i.df
  %spec.select90.i = select i1 %.not38.i.i, i32 %.sroa.0.0.extract.trunc764, i32 %i.dg
  br label %lo0bits.exit.thread.i

lo0bits.exit.i:                                   ; preds = %bb.ak
  %.not35.i = icmp eq i32 %.329.i.i, 0
  br i1 %.not35.i, label %lo0bits.exit.thread83.i, label %lo0bits.exit.thread.i

lo0bits.exit.thread.i:                            ; preds = %lo0bits.exit.i, %bb.al, %bb.aj, %bb.ai
  %.031.i81.i = phi i32 [ %.329.i.i, %lo0bits.exit.i ], [ %spec.select89.i, %bb.al ], [ 2, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %.07580.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %spec.select90.i, %bb.al ], [ %i.cs, %bb.aj ], [ %i.cr, %bb.ai ]
  %i.dh = sub nuw nsw i32 32, %.031.i81.i
  %i.di = shl i32 %spec.select.i, %i.dh
  %i.dj = or i32 %i.di, %.07580.i
  store i32 %i.dj, ptr %i.ck, align 8, !tbaa !10
  %i.dk = lshr i32 %spec.select.i, %.031.i81.i
  br label %bb.am

lo0bits.exit.thread83.i:                          ; preds = %lo0bits.exit.i, %bb.ag
  %.07587.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %.sroa.0.0.extract.trunc764, %bb.ag ]
  store i32 %.07587.i, ptr %i.ck, align 8, !tbaa !10
  br label %bb.am

bb.am:                                            ; preds = %lo0bits.exit.thread83.i, %lo0bits.exit.thread.i
  %.031.i82.i = phi i32 [ 0, %lo0bits.exit.thread83.i ], [ %.031.i81.i, %lo0bits.exit.thread.i ]
  %.1.i = phi i32 [ %spec.select.i, %lo0bits.exit.thread83.i ], [ %i.dk, %lo0bits.exit.thread.i ] ; 2 uses
  %i.dl = getelementptr i8, ptr %.1.i.i, i64 28
  store i32 %.1.i, ptr %i.dl, align 4, !tbaa !10
  %.not36.i = icmp eq i32 %.1.i, 0
  %i.dm = select i1 %.not36.i, i32 1, i32 2       ; 2 uses
  store i32 %i.dm, ptr %i.ci, align 4, !tbaa !122
  br label %bb.au

bb.an:                                            ; preds = %bb.ae
  %i.dn = and i32 %spec.select.i, 7
  %.not.i39.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i39.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = and i32 %spec.select.i, 1
  %.not39.i40.i = icmp eq i32 %i.do, 0
  br i1 %.not39.i40.i, label %bb.ap, label %lo0bits.exit60.i

bb.ap:                                            ; preds = %bb.ao
  %i.dp = and i32 %spec.select.i, 2
  %.not40.i42.i = icmp eq i32 %i.dp, 0
  br i1 %.not40.i42.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = lshr exact i32 %spec.select.i, 1
  br label %lo0bits.exit60.i

bb.ar:                                            ; preds = %bb.ap
  %i.dr = lshr exact i32 %spec.select.i, 2
  br label %lo0bits.exit60.i

bb.as:                                            ; preds = %bb.an
  %i.ds = and i32 %spec.select.i, 65528
  %.not33.i46.i = icmp eq i32 %i.ds, 0            ; 2 uses
  %i.dt = lshr exact i32 %spec.select.i, 16
  %spec.select.i47.i = select i1 %.not33.i46.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i48.i = select i1 %.not33.i46.i, i32 %i.dt, i32 %spec.select.i ; 3 uses
  %i.du = and i32 %spec.select41.i48.i, 255
  %.not34.i49.i = icmp eq i32 %i.du, 0            ; 2 uses
  %i.dv = or disjoint i32 %spec.select.i47.i, 8
  %i.dw = lshr exact i32 %spec.select41.i48.i, 8
  %.127.i50.i = select i1 %.not34.i49.i, i32 %i.dv, i32 %spec.select.i47.i ; 2 uses
  %.1.i51.i = select i1 %.not34.i49.i, i32 %i.dw, i32 %spec.select41.i48.i ; 3 uses
  %i.dx = and i32 %.1.i51.i, 15
  %.not35.i52.i = icmp eq i32 %i.dx, 0            ; 2 uses
  %i.dy = or disjoint i32 %.127.i50.i, 4
  %i.dz = lshr exact i32 %.1.i51.i, 4
  %.228.i53.i = select i1 %.not35.i52.i, i32 %i.dy, i32 %.127.i50.i ; 2 uses
  %.2.i54.i = select i1 %.not35.i52.i, i32 %i.dz, i32 %.1.i51.i ; 3 uses
  %i.ea = and i32 %.2.i54.i, 3
  %.not36.i55.i = icmp eq i32 %i.ea, 0            ; 2 uses
  %i.eb = or disjoint i32 %.228.i53.i, 2
  %i.ec = lshr exact i32 %.2.i54.i, 2
  %.329.i56.i = select i1 %.not36.i55.i, i32 %i.eb, i32 %.228.i53.i ; 2 uses
  %.3.i57.i = select i1 %.not36.i55.i, i32 %i.ec, i32 %.2.i54.i ; 4 uses
  %i.ed = and i32 %.3.i57.i, 1
  %.not37.i58.i = icmp eq i32 %i.ed, 0
  br i1 %.not37.i58.i, label %bb.at, label %lo0bits.exit60.i

bb.at:                                            ; preds = %bb.as
  %i.ee = add nuw nsw i32 %.329.i56.i, 1
  %i.ef = lshr exact i32 %.3.i57.i, 1
  %.not38.i59.i = icmp eq i32 %.3.i57.i, 0        ; 2 uses
  %spec.select91.i = select i1 %.not38.i59.i, i32 %spec.select.i, i32 %i.ef
  %spec.select92.i = select i1 %.not38.i59.i, i32 32, i32 %i.ee
  br label %lo0bits.exit60.i

lo0bits.exit60.i:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.2.i = phi i32 [ %spec.select91.i, %bb.at ], [ %spec.select.i, %bb.ao ], [ %i.dq, %bb.aq ], [ %i.dr, %bb.ar ], [ %.3.i57.i, %bb.as ]
  %.031.i41.i = phi i32 [ %spec.select92.i, %bb.at ], [ 0, %bb.ao ], [ 1, %bb.aq ], [ 2, %bb.ar ], [ %.329.i56.i, %bb.as ]
  store i32 %.2.i, ptr %i.ck, align 8, !tbaa !10
  store i32 1, ptr %i.ci, align 4, !tbaa !122
  %i.eg = add nuw nsw i32 %.031.i41.i, 32
  br label %bb.au

bb.au:                                            ; preds = %lo0bits.exit60.i, %bb.am
  %.029.i = phi i32 [ %.031.i82.i, %bb.am ], [ %i.eg, %lo0bits.exit60.i ] ; 3 uses
  %.0.i = phi i32 [ %i.dm, %bb.am ], [ 1, %lo0bits.exit60.i ] ; 2 uses
  br i1 %.not.i665, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eh = add nsw i32 %6, -1075
  %i.ei = add nsw i32 %i.eh, %.029.i
  %i.ej = sub nsw i32 53, %.029.i
  %i.ek = and i64 %.pre-phi, 4503599627370495
  %.sroa.086.4.insert.insert95 = or disjoint i64 %i.ek, 4607182418800017408
  %i.el = add nsw i32 %6, -1023
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.em = add nuw nsw i32 %.029.i, -1074          ; 2 uses
  %i.en = shl nuw nsw i32 %.0.i, 5
  %i.eo = zext nneg i32 %.0.i to i64
  %i.ep = getelementptr [4 x i8], ptr %i.ck, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !10 ; 3 uses
  %.not.i61.i = icmp ult i32 %i.er, 65536         ; 2 uses
  %i.es = shl nuw i32 %i.er, 16
  %spec.select.i62.i = select i1 %.not.i61.i, i32 %i.es, i32 %i.er ; 3 uses
  %spec.select26.i.i = select i1 %.not.i61.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i62.i, 16777216 ; 2 uses
  %i.et = or disjoint i32 %spec.select26.i.i, 8
  %i.eu = shl nuw i32 %spec.select.i62.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.eu, i32 %spec.select.i62.i ; 3 uses
  %.1.i63.i = select i1 %.not21.i.i, i32 %i.et, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.ev = or disjoint i32 %.1.i63.i, 4
  %i.ew = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.ew, i32 %.117.i.i ; 3 uses
  %.2.i64.i = select i1 %.not22.i.i, i32 %i.ev, i32 %.1.i63.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.ex = or disjoint i32 %.2.i64.i, 2
  %i.ey = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.ey, i32 %.218.i.i ; 2 uses
  %.3.i65.i = select i1 %.not23.i.i, i32 %i.ex, i32 %.2.i64.i ; 2 uses
  %i.ez = add nuw nsw i32 %.3.i65.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 32, i32 %i.ez
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
  %.020.i.i = select i1 %.not2428.i.i, i32 %.3.i65.i, i32 %spec.select27.i.i
  %i.fa = sub nuw nsw i32 %i.en, %.020.i.i        ; 2 uses
  %i.fb = add nuw nsw i32 %i.em, %i.fa            ; 5 uses
  %i.fc = icmp samesign ugt i32 %i.fb, -1042
  br i1 %i.fc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fd = sub nsw i32 -1010, %i.fb
  %i.fe = shl i32 %.sroa.0.4.extract.trunc774, %i.fd
  %i.ff = add nsw i32 %i.fb, 1042
  %i.fg = lshr i32 %.sroa.0.0.extract.trunc764, %i.ff
  %i.fh = or i32 %i.fe, %i.fg
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fi = sub nuw nsw i32 -1042, %i.fb
  %i.fj = shl i32 %.sroa.0.0.extract.trunc764, %i.fi
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fk = phi i32 [ %i.fh, %bb.ax ], [ %i.fj, %bb.ay ]
  %i.fl = uitofp i32 %i.fk to double
  %i.fm = bitcast double %i.fl to i64             ; 2 uses
  %i.fn = and i64 %i.fm, 9223372032559808512
  %.sroa.086.4.insert.ext100 = add nsw i64 %i.fn, -139611588448485376
  %.sroa.086.4.insert.mask102 = and i64 %i.fm, 4294967295
  %.sroa.086.4.insert.insert103 = or disjoint i64 %.sroa.086.4.insert.ext100, %.sroa.086.4.insert.mask102
  %i.fo = add nsw i32 %i.fb, -1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.1798.ph1344 = phi i32 [ %i.ei, %bb.av ], [ %i.em, %bb.az ] ; 3 uses
  %.0799.ph1342 = phi i32 [ %i.ej, %bb.av ], [ %i.fa, %bb.az ] ; 2 uses
  %.0491 = phi i32 [ %i.el, %bb.av ], [ %i.fo, %bb.az ] ; 2 uses
  %.sroa.086.0.in = phi i64 [ %.sroa.086.4.insert.insert95, %bb.av ], [ %.sroa.086.4.insert.insert103, %bb.az ]
  %.sroa.086.0 = bitcast i64 %.sroa.086.0.in to double
  %i.fp = fadd double %.sroa.086.0, -1.500000e+00
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.fr = sitofp i32 %.0491 to double
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fr, double f0x3FD34413509F79FB, double %i.fq) ; 3 uses
  %i.ft = fptosi double %i.fs to i32              ; 2 uses
  %i.fu = fcmp olt double %i.fs, 0.000000e+00
  %i.fv = sitofp i32 %i.ft to double
  %i.fw = fcmp une double %i.fs, %i.fv
  %or.cond629 = and i1 %i.fu, %i.fw
  %i.fx = sext i1 %or.cond629 to i32
  %.0463 = add i32 %i.fx, %i.ft                   ; 4 uses
  %or.cond = icmp ugt i32 %.0463, 22              ; 3 uses
  br i1 %or.cond, label %select.unfold, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fy = zext nneg i32 %.0463 to i64
  %i.fz = getelementptr [8 x i8], ptr @tens, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !19
  %i.gb = fcmp olt double %.sroa.0.0796, %i.ga
  %i.gc = sext i1 %i.gb to i32
  %spec.select = add nsw i32 %.0463, %i.gc
  br label %select.unfold

select.unfold:                                    ; preds = %bb.bb, %bb.ba
  %.2465 = phi i32 [ %spec.select, %bb.bb ], [ %.0463, %bb.ba ] ; 30 uses
  %i.gd = xor i32 %.0491, -1
  %i.ge = add nsw i32 %.0799.ph1342, %i.gd        ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, -1                  ; 2 uses
  %i.gg = sub nsw i32 0, %i.ge
  %.0504 = select i1 %i.gf, i32 0, i32 %i.gg      ; 2 uses
  %.0453 = select i1 %i.gf, i32 %i.ge, i32 0      ; 2 uses
  %i.gh = icmp sgt i32 %.2465, -1
  br i1 %i.gh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %select.unfold
  %i.gi = add nuw i32 %.2465, %.0453
  br label %bb.be

bb.bd:                                            ; preds = %select.unfold
  %i.gj = sub i32 %.0504, %.2465
  %i.gk = sub i32 0, %.2465
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1505 = phi i32 [ %.0504, %bb.bc ], [ %i.gj, %bb.bd ] ; 7 uses
  %.0503 = phi i32 [ 0, %bb.bc ], [ %i.gk, %bb.bd ] ; 3 uses
  %.1454 = phi i32 [ %i.gi, %bb.bc ], [ %.0453, %bb.bd ] ; 3 uses
  %.0452 = phi i32 [ %.2465, %bb.bc ], [ 0, %bb.bd ] ; 2 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.gl = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.gm = add nsw i32 %spec.store.select27, -4
  %spec.select630 = select i1 %i.gl, i32 %spec.store.select27, i32 %i.gm ; 4 uses
  switch i32 %spec.select630, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.bf
    i32 4, label %bb.bg
    i32 3, label %bb.bh
    i32 5, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0459 = phi i32 [ 0, %bb.bf ], [ 1, %bb.be ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.1460 = phi i32 [ 0, %bb.bh ], [ 1, %bb.be ]
  %i.gn = add i32 %.2465, %2                      ; 2 uses
  %i.go = add i32 %i.gn, 1                        ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.go, i32 1)
  br label %bb.bj

default.unreachable:                              ; preds = %bb.be
  unreachable

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.0511 = phi i32 [ %spec.store.select, %bb.bg ], [ %2, %bb.bi ] ; 3 uses
  %.1492 = phi i32 [ %spec.store.select, %bb.bg ], [ %spec.store.select4, %bb.bi ] ; 2 uses
  %.0478 = phi i32 [ %spec.store.select, %bb.bg ], [ %i.go, %bb.bi ] ; 3 uses
  %.0477 = phi i32 [ %spec.store.select, %bb.bg ], [ %i.gn, %bb.bi ] ; 3 uses
  %.2461 = phi i32 [ %.0459, %bb.bg ], [ %.1460, %bb.bi ] ; 3 uses
  %i.gp = zext nneg i32 %.1492 to i64
  %.not13.i = icmp samesign ult i32 %.1492, 28
  br i1 %.not13.i, label %._crit_edge.thread.i, label %.lr.ph.i666

.lr.ph.i666:                                      ; preds = %bb.bj, %.lr.ph.i666
  %.015.i = phi i32 [ %i.gq, %.lr.ph.i666 ], [ 0, %bb.bj ]
  %.0914.i = phi i32 [ %i.gr, %.lr.ph.i666 ], [ 4, %bb.bj ]
  %i.gq = add i32 %.015.i, 1                      ; 5 uses
  %i.gr = shl i32 %.0914.i, 1                     ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i64 %i.gs, 24
  %.not.i667 = icmp ugt i64 %i.gt, %i.gp
  br i1 %.not.i667, label %._crit_edge.i668, label %.lr.ph.i666, !llvm.loop !152

._crit_edge.i668:                                 ; preds = %.lr.ph.i666
  %i.gu = icmp slt i32 %i.gq, 8
  br i1 %i.gu, label %._crit_edge.thread.i, label %bb.bl

._crit_edge.thread.i:                             ; preds = %bb.be, %bb.be, %bb.bj, %._crit_edge.i668
  %.2461842 = phi i32 [ %.2461, %._crit_edge.i668 ], [ %.2461, %bb.bj ], [ 1, %bb.be ], [ 1, %bb.be ] ; 3 uses
  %.0477834 = phi i32 [ %.0477, %._crit_edge.i668 ], [ %.0477, %bb.bj ], [ -1, %bb.be ], [ -1, %bb.be ] ; 3 uses
  %.0478828 = phi i32 [ %.0478, %._crit_edge.i668 ], [ %.0478, %bb.bj ], [ -1, %bb.be ], [ -1, %bb.be ] ; 3 uses
  %.0511822 = phi i32 [ %.0511, %._crit_edge.i668 ], [ %.0511, %bb.bj ], [ 0, %bb.be ], [ 0, %bb.be ] ; 3 uses
  %.0.lcssa20.i = phi i32 [ %i.gq, %._crit_edge.i668 ], [ 0, %bb.bj ], [ 0, %bb.be ], [ 0, %bb.be ] ; 5 uses
  %i.gv = load ptr, ptr %i.br, align 8, !tbaa !25 ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 11960
  %i.gx = sext i32 %.0.lcssa20.i to i64
  %i.gy = getelementptr [8 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !27 ; 3 uses
  %.not.i.i672 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i672, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread.i
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !29
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !27
  br label %rv_alloc.exit

bb.bl:                                            ; preds = %._crit_edge.i668
  %i.hb = shl nuw i32 1, %i.gq                    ; 2 uses
  %i.hc = add i32 %i.hb, -1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 36
end_hunk_0
