Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_strtod?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zend_dtoa:bb.a
  %i.w = or i32 %i.v, %i.q
  %or.cond716 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), align 8, !tbaa !12 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.x, null            ; 2 uses
  br i1 %or.cond716, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), align 8, !tbaa !12
  br label %rv_alloc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15 ; 4 uses
  %.not16.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not16.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !73
  br label %rv_alloc.exit.i

rv_alloc.exit.i:                                  ; preds = %bb.k, %bb.h
  %.0.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.z, %bb.k ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !74
  store i32 0, ptr %.0.i.i.i, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 4 uses
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  store <8 x i8> <i8 73, i8 110, i8 102, i8 105, i8 110, i8 105, i8 116, i8 121>, ptr %i.ae, align 4, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12 ; 2 uses
  store i8 0, ptr %i.af, align 4, !tbaa !54
  %.not9.i = icmp eq ptr %5, null
  br i1 %.not9.i, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.l:                                             ; preds = %bb.f
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !15
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), align 8, !tbaa !12
  br label %rv_alloc.exit.i558

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15 ; 4 uses
  %.not16.i.i.i566 = icmp eq ptr %i.ah, null
  br i1 %.not16.i.i.i566, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 0, ptr %i.ai, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 1, ptr %i.aj, align 4, !tbaa !73
  br label %rv_alloc.exit.i558

rv_alloc.exit.i558:                               ; preds = %bb.p, %bb.m
  %.0.i.i.i559 = phi ptr [ %i.x, %bb.m ], [ %i.ah, %bb.p ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i559, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i559, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !74
  store i32 0, ptr %.0.i.i.i559, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i559, i64 4 ; 4 uses
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i559, i64 7
  store <4 x i8> <i8 78, i8 97, i8 78, i8 0>, ptr %i.am, align 4, !tbaa !54
  %.not9.i565 = icmp eq ptr %5, null
  br i1 %.not9.i565, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.q:                                             ; preds = %bb.e
  %i.ao = load double, ptr %6, align 8, !tbaa !54
  %i.ap = fcmp une double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %3, align 4, !tbaa !75
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i568 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i568, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), align 8, !tbaa !12
  br label %rv_alloc.exit.i569

bb.t:                                             ; preds = %bb.r
  %i.as = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15 ; 4 uses
  %.not16.i.i.i577 = icmp eq ptr %i.as, null
  br i1 %.not16.i.i.i577, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1, ptr %i.au, align 4, !tbaa !73
  br label %rv_alloc.exit.i569

rv_alloc.exit.i569:                               ; preds = %bb.v, %bb.s
  %.0.i.i.i570 = phi ptr [ %i.aq, %bb.s ], [ %i.as, %bb.v ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i570, i64 20
  store i32 0, ptr %i.av, align 4, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i570, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !74
  store i32 0, ptr %.0.i.i.i570, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i570, i64 4 ; 4 uses
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  store i8 48, ptr %i.ax, align 4, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i570, i64 5 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !54
  %.not9.i576 = icmp eq ptr %5, null
  br i1 %.not9.i576, label %nrv_alloc.exit, label %nrv_alloc.exit.sink.split

bb.w:                                             ; preds = %bb.q
  %i.az = call fastcc ptr @d2b(ptr noundef %6, ptr noundef %i.b, ptr noundef %i.a) ; 17 uses
  %i.ba = load i32, ptr %i.m, align 4, !tbaa !54  ; 3 uses
  %i.bb = lshr i32 %i.ba, 20
  %i.bc = and i32 %i.bb, 2047                     ; 2 uses
  %.not514.not = icmp eq i32 %i.bc, 0             ; 2 uses
  br i1 %.not514.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = load i64, ptr %6, align 8               ; 3 uses
  %i.be = and i64 %i.bd, 4503599627370495
  %.sroa.085.4.insert.insert94 = or disjoint i64 %i.be, 4607182418800017408
  %i.bf = add nsw i32 %i.bc, -1023
  %i.bg = trunc i64 %i.bd to i32
  %i.bh = lshr i64 %i.bd, 32
  %i.bi = trunc nuw i64 %i.bh to i32
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !75
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bl = add nsw i32 %i.bk, %i.bj                ; 5 uses
  %i.bm = icmp sgt i32 %i.bl, -1042
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bn = sub nsw i32 -1010, %i.bl
  %i.bo = shl i32 %i.ba, %i.bn
  %i.bp = load i32, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bq = add nsw i32 %i.bl, 1042
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = or i32 %i.br, %i.bo
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bt = load i32, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.bu = sub nuw nsw i32 -1042, %i.bl
  %i.bv = shl i32 %i.bt, %i.bu
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bw = phi i32 [ %i.bp, %bb.z ], [ %i.bt, %bb.aa ]
  %i.bx = phi i32 [ %i.bs, %bb.z ], [ %i.bv, %bb.aa ]
  %i.by = uitofp i32 %i.bx to double
  %i.bz = bitcast double %i.by to i64             ; 2 uses
  %i.ca = and i64 %i.bz, 9223372032559808512
  %.sroa.085.4.insert.ext99 = add nsw i64 %i.ca, -139611588448485376
  %.sroa.085.4.insert.mask101 = and i64 %i.bz, 4294967295
  %.sroa.085.4.insert.insert102 = or disjoint i64 %.sroa.085.4.insert.ext99, %.sroa.085.4.insert.mask101
  %i.cb = add nsw i32 %i.bl, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %i.cc = phi i32 [ %i.bg, %bb.x ], [ %i.bw, %bb.ab ]
  %i.cd = phi i32 [ %i.bi, %bb.x ], [ %i.ba, %bb.ab ]
  %.0459 = phi i32 [ %i.bf, %bb.x ], [ %i.cb, %bb.ab ] ; 2 uses
  %.sroa.085.0.in = phi i64 [ %.sroa.085.4.insert.insert94, %bb.x ], [ %.sroa.085.4.insert.insert102, %bb.ab ]
  %.sroa.085.0 = bitcast i64 %.sroa.085.0.in to double
  %i.ce = fadd double %.sroa.085.0, -1.500000e+00
  %i.cf = fmul double %i.ce, f0x3FD287A7636F4361
  %i.cg = fadd double %i.cf, f0x3FC68A288B60C8B3
  %i.ch = sitofp i32 %.0459 to double
  %i.ci = fmul nnan double %i.ch, f0x3FD34413509F79FB
  %i.cj = fadd double %i.ci, %i.cg                ; 3 uses
  %i.ck = fptosi double %i.cj to i32              ; 2 uses
  %i.cl = fcmp olt double %i.cj, 0.000000e+00
  %i.cm = sitofp i32 %i.ck to double
  %i.cn = fcmp une double %i.cj, %i.cm
  %or.cond550 = and i1 %i.cl, %i.cn
  %i.co = sext i1 %or.cond550 to i32
  %.0429 = add nsw i32 %i.co, %i.ck               ; 5 uses
  %or.cond = icmp ugt i32 %.0429, 22              ; 3 uses
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load double, ptr %6, align 8            ; 2 uses
  %i.cq = zext nneg i32 %.0429 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !62
  %i.ct = fcmp olt double %i.cp, %i.cs
  %i.cu = bitcast double %i.cp to i64             ; 2 uses
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = lshr i64 %i.cu, 32
  %i.cx = trunc nuw i64 %i.cw to i32              ; 2 uses
  br i1 %i.ct, label %select.unfold, label %bb.ae

select.unfold:                                    ; preds = %bb.ad
  %7 = add nsw i32 %.0429, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %select.unfold, %bb.ac
  %8 = phi i32 [ %i.cv, %bb.ad ], [ %i.cc, %bb.ac ], [ %i.cv, %select.unfold ]
  %9 = phi i32 [ %i.cx, %bb.ad ], [ %i.cd, %bb.ac ], [ %i.cx, %select.unfold ]
  %.2431 = phi i32 [ %.0429, %bb.ad ], [ %.0429, %bb.ac ], [ %7, %select.unfold ] ; 27 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !75  ; 2 uses
  %i.cz = xor i32 %.0459, -1
  %i.da = add i32 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp sgt i32 %i.da, -1                  ; 2 uses
  %i.dc = sub nsw i32 0, %i.da
  %.0473 = select i1 %i.db, i32 0, i32 %i.dc      ; 2 uses
  %.0419 = select i1 %i.db, i32 %i.da, i32 0      ; 2 uses
  %i.dd = icmp sgt i32 %.2431, -1
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = add nuw nsw i32 %.0419, %.2431
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.df = sub nsw i32 %.0473, %.2431
  %i.dg = sub nsw i32 0, %.2431
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1474 = phi i32 [ %.0473, %bb.af ], [ %i.df, %bb.ag ] ; 6 uses
  %.0472 = phi i32 [ 0, %bb.af ], [ %i.dg, %bb.ag ] ; 3 uses
  %.1420 = phi i32 [ %i.de, %bb.af ], [ %.0419, %bb.ag ] ; 2 uses
  %.0418 = phi i32 [ %.2431, %bb.af ], [ 0, %bb.ag ] ; 2 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select29 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.dh = icmp samesign ult i32 %spec.store.select29, 6 ; 2 uses
  %i.di = add nsw i32 %spec.store.select29, -4
  %spec.select.a = select i1 %i.dh, i32 %spec.store.select29, i32 %i.di ; 4 uses
  switch i32 %spec.select.a, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.ai
    i32 4, label %bb.aj
    i32 3, label %bb.ak
    i32 5, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0425 = phi i32 [ 0, %bb.ai ], [ 1, %bb.ah ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.1426 = phi i32 [ 0, %bb.ak ], [ 1, %bb.ah ]
  %i.dj = add nsw i32 %.2431, %2                  ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1                    ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 1)
  br label %bb.am

default.unreachable:                              ; preds = %bb.ah
  unreachable

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.0480 = phi i32 [ %spec.store.select, %bb.aj ], [ %2, %bb.al ] ; 3 uses
  %.1460 = phi i32 [ %spec.store.select, %bb.aj ], [ %spec.store.select4, %bb.al ] ; 2 uses
  %.0446 = phi i32 [ %spec.store.select, %bb.aj ], [ %i.dk, %bb.al ] ; 3 uses
  %.0445 = phi i32 [ %spec.store.select, %bb.aj ], [ %i.dj, %bb.al ] ; 3 uses
  %.2427 = phi i32 [ %.0425, %bb.aj ], [ %.1426, %bb.al ] ; 3 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.1460, i32 536870935)
  %i.dl = zext nneg i32 %spec.select.i to i64
  %.not13.i = icmp samesign ult i32 %.1460, 28
  br i1 %.not13.i, label %._crit_edge.thread.i, label %.lr.ph.i579

.lr.ph.i579:                                      ; preds = %bb.am, %.lr.ph.i579
  %.015.i = phi i32 [ %i.dm, %.lr.ph.i579 ], [ 0, %bb.am ] ; 2 uses
  %.01114.i = phi i32 [ %i.dn, %.lr.ph.i579 ], [ 4, %bb.am ]
  %i.dm = add nuw nsw i32 %.015.i, 1              ; 3 uses
  %i.dn = shl i32 %.01114.i, 1                    ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = add nsw i64 %i.do, 24
  %.not.i580 = icmp ugt i64 %i.dp, %i.dl
  br i1 %.not.i580, label %._crit_edge.i581, label %.lr.ph.i579, !llvm.loop !96

._crit_edge.i581:                                 ; preds = %.lr.ph.i579
  %i.dq = icmp samesign ult i32 %.015.i, 7
  br i1 %i.dq, label %._crit_edge.thread.i, label %bb.ao

._crit_edge.thread.i:                             ; preds = %bb.ah, %bb.ah, %._crit_edge.i581, %bb.am
  %.2427680.a = phi i32 [ %.2427, %._crit_edge.i581 ], [ %.2427, %bb.am ], [ 1, %bb.ah ], [ 1, %bb.ah ] ; 2 uses
  %.0445675.a = phi i32 [ %.0445, %._crit_edge.i581 ], [ %.0445, %bb.am ], [ -1, %bb.ah ], [ -1, %bb.ah ] ; 2 uses
  %.0446672.a = phi i32 [ %.0446, %._crit_edge.i581 ], [ %.0446, %bb.am ], [ -1, %bb.ah ], [ -1, %bb.ah ] ; 2 uses
  %.0480669.a = phi i32 [ %.0480, %._crit_edge.i581 ], [ %.0480, %bb.am ], [ 0, %bb.ah ], [ 0, %bb.ah ] ; 2 uses
  %.0.lcssa19.i = phi i32 [ %i.dm, %._crit_edge.i581 ], [ 0, %bb.am ], [ 0, %bb.ah ], [ 0, %bb.ah ] ; 3 uses
  %i.dr = zext nneg i32 %.0.lcssa19.i to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.dr ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge.thread.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !15
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !12
  br label %rv_alloc.exit

bb.ao:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i581
  %.2427679 = phi i32 [ %.2427680.a, %._crit_edge.thread.i ], [ %.2427, %._crit_edge.i581 ]
  %.0445674 = phi i32 [ %.0445675.a, %._crit_edge.thread.i ], [ %.0445, %._crit_edge.i581 ]
  %.0446671 = phi i32 [ %.0446672.a, %._crit_edge.thread.i ], [ %.0446, %._crit_edge.i581 ]
  %.0480668 = phi i32 [ %.0480669.a, %._crit_edge.thread.i ], [ %.0480, %._crit_edge.i581 ]
  %.0.lcssa18.i = phi i32 [ %.0.lcssa19.i, %._crit_edge.thread.i ], [ %i.dm, %._crit_edge.i581 ] ; 3 uses
  %i.dv = shl nuw i32 1, %.0.lcssa18.i            ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 32
  %i.ea = tail call noalias ptr @malloc(i64 noundef %i.dz) #15 ; 4 uses
  %.not16.i.i = icmp eq ptr %i.ea, null
  br i1 %.not16.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %.0.lcssa18.i, ptr %i.eb, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 %i.dv, ptr %i.ec, align 4, !tbaa !73
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.an, %bb.aq
  %.2427678 = phi i32 [ %.2427680.a, %bb.an ], [ %.2427679, %bb.aq ] ; 2 uses
  %.0445673 = phi i32 [ %.0445675.a, %bb.an ], [ %.0445674, %bb.aq ] ; 4 uses
  %.0446670 = phi i32 [ %.0446672.a, %bb.an ], [ %.0446671, %bb.aq ] ; 11 uses
  %.0480667 = phi i32 [ %.0480669.a, %bb.an ], [ %.0480668, %bb.aq ] ; 2 uses
  %.0.lcssa20.i = phi i32 [ %.0.lcssa19.i, %bb.an ], [ %.0.lcssa18.i, %bb.aq ]
  %.0.i.i = phi ptr [ %i.dt, %bb.an ], [ %i.ea, %bb.aq ] ; 23 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 0, ptr %i.ed, align 4, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.ee, align 8, !tbaa !74
  store i32 %.0.lcssa20.i, ptr %.0.i.i, align 8, !tbaa !75
  %.ptr721.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 11 uses
  store ptr %.ptr721.ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1928), align 8, !tbaa !94
  %or.cond6 = icmp ult i32 %.0446670, 15
  %or.cond8 = and i1 %i.dh, %or.cond6
  br i1 %or.cond8, label %bb.ar, label %bb.bo

bb.ar:                                            ; preds = %rv_alloc.exit
  %i.ef = load double, ptr %6, align 8, !tbaa !54 ; 6 uses
  %i.eg = icmp sgt i32 %.2431, 0
  br i1 %i.eg, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.eh = and i32 %.2431, 15
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !62 ; 2 uses
  %i.el = lshr i32 %.2431, 4                      ; 2 uses
  %i.em = and i32 %.2431, 256
  %.not518 = icmp eq i32 %i.em, 0                 ; 3 uses
  %i.en = and i32 %i.el, 15
  %i.eo = fdiv double %i.ef, 1.000000e+256
  %i.ep = select i1 %.not518, double %i.ef, double %i.eo
  %.0452 = select i1 %.not518, i32 2, i32 3       ; 2 uses
  %.0441 = select i1 %.not518, i32 %i.el, i32 %i.en ; 2 uses
  %.not519832 = icmp eq i32 %.0441, 0
  br i1 %.not519832, label %._crit_edge, label %.lr.ph837

.lr.ph837:                                        ; preds = %bb.as, %bb.au
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %bb.au ], [ 0, %bb.as ] ; 2 uses
  %.0373836 = phi double [ %.1374, %bb.au ], [ %i.ek, %bb.as ] ; 2 uses
  %.1442835 = phi i32 [ %i.ev, %bb.au ], [ %.0441, %bb.as ] ; 2 uses
  %.1453834 = phi i32 [ %.2454, %bb.au ], [ %.0452, %bb.as ] ; 2 uses
  %i.eq = and i32 %.1442835, 1
  %.not546 = icmp eq i32 %i.eq, 0
  br i1 %.not546, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph837
  %i.er = add nsw i32 %.1453834, 1
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv990
  %i.et = load double, ptr %i.es, align 8, !tbaa !62
  %i.eu = fmul double %.0373836, %i.et
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph837, %bb.at
  %.2454 = phi i32 [ %i.er, %bb.at ], [ %.1453834, %.lr.ph837 ] ; 2 uses
  %.1374 = phi double [ %i.eu, %bb.at ], [ %.0373836, %.lr.ph837 ] ; 2 uses
  %i.ev = lshr i32 %.1442835, 1                   ; 2 uses
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1
  %.not519 = icmp eq i32 %i.ev, 0
  br i1 %.not519, label %._crit_edge, label %.lr.ph837, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.au, %bb.as
  %.1453.lcssa = phi i32 [ %.0452, %bb.as ], [ %.2454, %bb.au ]
  %.0373.lcssa = phi double [ %i.ek, %bb.as ], [ %.1374, %bb.au ]
  %i.ew = fdiv double %i.ep, %.0373.lcssa
  br label %.loopexit738

bb.av:                                            ; preds = %bb.ar
  %i.ex = sub nsw i32 0, %.2431                   ; 4 uses
  %.not515 = icmp eq i32 %.2431, 0
  br i1 %.not515, label %.loopexit738, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = and i32 %i.ex, 15
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !62
  %i.fc = fmul double %i.ef, %i.fb                ; 2 uses
  %i.fd = lshr i32 %i.ex, 4                       ; 2 uses
  %.not516827 = icmp eq i32 %i.fd, 0
  br i1 %.not516827, label %.loopexit738, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %.2443830 = phi i32 [ %i.fl, %bb.ay ], [ %i.fd, %bb.aw ] ; 2 uses
  %.3455829 = phi i32 [ %.4456, %bb.ay ], [ 2, %bb.aw ] ; 2 uses
  %i.fe = phi double [ %i.fk, %bb.ay ], [ %i.fc, %bb.aw ] ; 2 uses
  %i.ff = and i32 %.2443830, 1
  %.not517 = icmp eq i32 %i.ff, 0
  br i1 %.not517, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph
  %i.fg = add nsw i32 %.3455829, 1
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !62
  %i.fj = fmul double %i.fi, %i.fe
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.ax
  %i.fk = phi double [ %i.fj, %bb.ax ], [ %i.fe, %.lr.ph ] ; 2 uses
  %.4456 = phi i32 [ %i.fg, %bb.ax ], [ %.3455829, %.lr.ph ] ; 2 uses
  %i.fl = lshr i32 %.2443830, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not516 = icmp eq i32 %i.fl, 0
  br i1 %.not516, label %.loopexit738, label %.lr.ph, !llvm.loop !98

.loopexit738:                                     ; preds = %bb.ay, %bb.aw, %bb.av, %._crit_edge
  %i.fm = phi double [ %i.ew, %._crit_edge ], [ %i.ef, %bb.av ], [ %i.fc, %bb.aw ], [ %i.fk, %bb.ay ] ; 3 uses
  %.5457 = phi i32 [ %.1453.lcssa, %._crit_edge ], [ 2, %bb.av ], [ 2, %bb.aw ], [ %.4456, %bb.ay ] ; 2 uses
  %.0440 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.av ], [ %i.ex, %bb.aw ], [ %i.ex, %bb.ay ] ; 3 uses
  %i.fn = fcmp olt double %i.fm, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.fn, i1 false
  %i.fo = icmp sgt i32 %.0446670, 0
  %or.cond12 = and i1 %i.fo, %or.cond10
  br i1 %or.cond12, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.loopexit738
  %i.fp = icmp slt i32 %.0445673, 1
  br i1 %i.fp, label %.loopexit737.a, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = add nsw i32 %.2431, -1
  %i.fr = fmul nnan double %i.fm, 1.000000e+01
  %i.fs = add nsw i32 %.5457, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit738
  %.promoted862 = phi double [ %i.fr, %bb.ba ], [ %i.fm, %.loopexit738 ] ; 6 uses
  %.6458 = phi i32 [ %i.fs, %bb.ba ], [ %.5457, %.loopexit738 ]
  %.1447 = phi i32 [ %.0445673, %bb.ba ], [ %.0446670, %.loopexit738 ] ; 5 uses
  %.3432 = phi i32 [ %i.fq, %bb.ba ], [ %.2431, %.loopexit738 ] ; 6 uses
  %i.ft = sitofp i32 %.6458 to double
  %i.fu = fmul double %.promoted862, %i.ft
  %i.fv = fadd double %i.fu, 7.000000e+00
  %i.fw = bitcast double %i.fv to i64             ; 2 uses
  %i.fx = and i64 %i.fw, -4294967296
  %.sroa.075.4.insert.ext = add i64 %i.fx, -234187180623265792
  %.sroa.075.4.insert.mask = and i64 %i.fw, 4294967295
  %.sroa.075.4.insert.insert = or disjoint i64 %.sroa.075.4.insert.ext, %.sroa.075.4.insert.mask
  %i.fy = bitcast i64 %.sroa.075.4.insert.insert to double ; 4 uses
  %i.fz = icmp eq i32 %.1447, 0
  br i1 %i.fz, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ga = fadd double %.promoted862, -5.000000e+00 ; 2 uses
  %i.gb = fcmp ogt double %i.ga, %i.fy
end_hunk_0
