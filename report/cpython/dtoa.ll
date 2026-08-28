Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dtoa?download=true
inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_dtoa:bb.a
  %.329.i.i = select i1 %.not36.i.i, i32 %i.dd, i32 %.228.i.i ; 3 uses
  %.3.i.i = select i1 %.not36.i.i, i32 %i.de, i32 %.2.i.i ; 5 uses
  %i.df = and i32 %.3.i.i, 1
  %.not37.i.i = icmp eq i32 %i.df, 0
  br i1 %.not37.i.i, label %bb.al, label %lo0bits.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dg = add nuw nsw i32 %.329.i.i, 1
  %i.dh = lshr exact i32 %.3.i.i, 1
  %.not38.i.i = icmp eq i32 %.3.i.i, 0            ; 2 uses
  %spec.select89.i = select i1 %.not38.i.i, i32 32, i32 %i.dg
  %spec.select90.i = select i1 %.not38.i.i, i32 %.sroa.0.0.extract.trunc762, i32 %i.dh
  br label %lo0bits.exit.thread.i

lo0bits.exit.i:                                   ; preds = %bb.ak
  %.not35.i = icmp eq i32 %.329.i.i, 0
  br i1 %.not35.i, label %lo0bits.exit.thread83.i, label %lo0bits.exit.thread.i

lo0bits.exit.thread.i:                            ; preds = %lo0bits.exit.i, %bb.al, %bb.aj, %bb.ai
  %.031.i81.i = phi i32 [ %.329.i.i, %lo0bits.exit.i ], [ %spec.select89.i, %bb.al ], [ 2, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %.07580.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %spec.select90.i, %bb.al ], [ %i.ct, %bb.aj ], [ %i.cs, %bb.ai ]
  %i.di = sub nuw nsw i32 32, %.031.i81.i
  %i.dj = shl i32 %spec.select.i, %i.di
  %i.dk = or i32 %i.dj, %.07580.i
  store i32 %i.dk, ptr %i.ck, align 8, !tbaa !7
  %i.dl = lshr i32 %spec.select.i, %.031.i81.i
  br label %bb.am

lo0bits.exit.thread83.i:                          ; preds = %lo0bits.exit.i, %bb.ag
  %.07587.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %.sroa.0.0.extract.trunc762, %bb.ag ]
  store i32 %.07587.i, ptr %i.ck, align 8, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %lo0bits.exit.thread83.i, %lo0bits.exit.thread.i
  %.031.i82.i = phi i32 [ 0, %lo0bits.exit.thread83.i ], [ %.031.i81.i, %lo0bits.exit.thread.i ]
  %.1.i = phi i32 [ %spec.select.i, %lo0bits.exit.thread83.i ], [ %i.dl, %lo0bits.exit.thread.i ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.1.i.i, i64 28
  store i32 %.1.i, ptr %i.dm, align 4, !tbaa !7
  %.not36.i = icmp eq i32 %.1.i, 0
  %i.dn = select i1 %.not36.i, i32 1, i32 2       ; 2 uses
  store i32 %i.dn, ptr %i.ci, align 4, !tbaa !137
  br label %bb.au

bb.an:                                            ; preds = %bb.ae
  %i.do = and i32 %spec.select.i, 7
  %.not.i39.i = icmp eq i32 %i.do, 0
  br i1 %.not.i39.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = and i32 %spec.select.i, 1
  %.not39.i40.i = icmp eq i32 %i.dp, 0
  br i1 %.not39.i40.i, label %bb.ap, label %lo0bits.exit60.i

bb.ap:                                            ; preds = %bb.ao
  %i.dq = and i32 %spec.select.i, 2
  %.not40.i42.i = icmp eq i32 %i.dq, 0
  br i1 %.not40.i42.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = lshr exact i32 %spec.select.i, 1
  br label %lo0bits.exit60.i

bb.ar:                                            ; preds = %bb.ap
  %i.ds = lshr exact i32 %spec.select.i, 2
  br label %lo0bits.exit60.i

bb.as:                                            ; preds = %bb.an
  %i.dt = and i32 %spec.select.i, 65528
  %.not33.i46.i = icmp eq i32 %i.dt, 0            ; 2 uses
  %i.du = lshr exact i32 %spec.select.i, 16
  %spec.select.i47.i = select i1 %.not33.i46.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i48.i = select i1 %.not33.i46.i, i32 %i.du, i32 %spec.select.i ; 3 uses
  %i.dv = and i32 %spec.select41.i48.i, 255
  %.not34.i49.i = icmp eq i32 %i.dv, 0            ; 2 uses
  %i.dw = or disjoint i32 %spec.select.i47.i, 8
  %i.dx = lshr exact i32 %spec.select41.i48.i, 8
  %.127.i50.i = select i1 %.not34.i49.i, i32 %i.dw, i32 %spec.select.i47.i ; 2 uses
  %.1.i51.i = select i1 %.not34.i49.i, i32 %i.dx, i32 %spec.select41.i48.i ; 3 uses
  %i.dy = and i32 %.1.i51.i, 15
  %.not35.i52.i = icmp eq i32 %i.dy, 0            ; 2 uses
  %i.dz = or disjoint i32 %.127.i50.i, 4
  %i.ea = lshr exact i32 %.1.i51.i, 4
  %.228.i53.i = select i1 %.not35.i52.i, i32 %i.dz, i32 %.127.i50.i ; 2 uses
  %.2.i54.i = select i1 %.not35.i52.i, i32 %i.ea, i32 %.1.i51.i ; 3 uses
  %i.eb = and i32 %.2.i54.i, 3
  %.not36.i55.i = icmp eq i32 %i.eb, 0            ; 2 uses
  %i.ec = or disjoint i32 %.228.i53.i, 2
  %i.ed = lshr exact i32 %.2.i54.i, 2
  %.329.i56.i = select i1 %.not36.i55.i, i32 %i.ec, i32 %.228.i53.i ; 2 uses
  %.3.i57.i = select i1 %.not36.i55.i, i32 %i.ed, i32 %.2.i54.i ; 4 uses
  %i.ee = and i32 %.3.i57.i, 1
  %.not37.i58.i = icmp eq i32 %i.ee, 0
  br i1 %.not37.i58.i, label %bb.at, label %lo0bits.exit60.i

bb.at:                                            ; preds = %bb.as
  %i.ef = add nuw nsw i32 %.329.i56.i, 1
  %i.eg = lshr exact i32 %.3.i57.i, 1
  %.not38.i59.i = icmp eq i32 %.3.i57.i, 0        ; 2 uses
  %spec.select91.i = select i1 %.not38.i59.i, i32 %spec.select.i, i32 %i.eg
  %spec.select92.i = select i1 %.not38.i59.i, i32 32, i32 %i.ef
  br label %lo0bits.exit60.i

lo0bits.exit60.i:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.2.i = phi i32 [ %spec.select91.i, %bb.at ], [ %spec.select.i, %bb.ao ], [ %i.dr, %bb.aq ], [ %i.ds, %bb.ar ], [ %.3.i57.i, %bb.as ]
  %.031.i41.i = phi i32 [ %spec.select92.i, %bb.at ], [ 0, %bb.ao ], [ 1, %bb.aq ], [ 2, %bb.ar ], [ %.329.i56.i, %bb.as ]
  store i32 %.2.i, ptr %i.ck, align 8, !tbaa !7
  store i32 1, ptr %i.ci, align 4, !tbaa !137
  %i.eh = add nuw nsw i32 %.031.i41.i, 32
  br label %bb.au

bb.au:                                            ; preds = %lo0bits.exit60.i, %bb.am
  %.029.i = phi i32 [ %.031.i82.i, %bb.am ], [ %i.eh, %lo0bits.exit60.i ] ; 3 uses
  %.0.i = phi i32 [ %i.dn, %bb.am ], [ 1, %lo0bits.exit60.i ] ; 2 uses
  br i1 %.not.i663, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ei = add nsw i32 %i.cn, -1075
  %i.ej = add nsw i32 %i.ei, %.029.i
  %i.ek = sub nsw i32 53, %.029.i
  %i.el = and i64 %.pre-phi, 4503599627370495
  %.sroa.086.4.insert.insert95 = or disjoint i64 %i.el, 4607182418800017408
  %i.em = add nsw i32 %i.cn, -1023
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.en = add nuw nsw i32 %.029.i, -1074          ; 2 uses
  %i.eo = shl nuw nsw i32 %.0.i, 5
  %i.ep = zext nneg i32 %.0.i to i64
  %i.eq = getelementptr [4 x i8], ptr %i.ck, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7  ; 3 uses
  %.not.i61.i = icmp ult i32 %i.es, 65536         ; 2 uses
  %i.et = shl nuw i32 %i.es, 16
  %spec.select.i62.i = select i1 %.not.i61.i, i32 %i.et, i32 %i.es ; 3 uses
  %spec.select26.i.i = select i1 %.not.i61.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i62.i, 16777216 ; 2 uses
  %i.eu = or disjoint i32 %spec.select26.i.i, 8
  %i.ev = shl nuw i32 %spec.select.i62.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.ev, i32 %spec.select.i62.i ; 3 uses
  %.1.i63.i = select i1 %.not21.i.i, i32 %i.eu, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.ew = or disjoint i32 %.1.i63.i, 4
  %i.ex = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.ex, i32 %.117.i.i ; 3 uses
  %.2.i64.i = select i1 %.not22.i.i, i32 %i.ew, i32 %.1.i63.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.ey = or disjoint i32 %.2.i64.i, 2
  %i.ez = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.ez, i32 %.218.i.i ; 2 uses
  %.3.i65.i = select i1 %.not23.i.i, i32 %i.ey, i32 %.2.i64.i ; 2 uses
  %i.fa = add nuw nsw i32 %.3.i65.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 32, i32 %i.fa
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
  %.020.i.i = select i1 %.not2428.i.i, i32 %.3.i65.i, i32 %spec.select27.i.i
  %i.fb = sub nuw nsw i32 %i.eo, %.020.i.i        ; 2 uses
  %i.fc = add nuw nsw i32 %i.en, %i.fb            ; 5 uses
  %i.fd = icmp samesign ugt i32 %i.fc, -1042
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fe = sub nsw i32 -1010, %i.fc
  %i.ff = shl i32 %.sroa.0.4.extract.trunc772, %i.fe
  %i.fg = add nsw i32 %i.fc, 1042
  %i.fh = lshr i32 %.sroa.0.0.extract.trunc762, %i.fg
  %i.fi = or i32 %i.ff, %i.fh
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fj = sub nuw nsw i32 -1042, %i.fc
  %i.fk = shl i32 %.sroa.0.0.extract.trunc762, %i.fj
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fl = phi i32 [ %i.fi, %bb.ax ], [ %i.fk, %bb.ay ]
  %i.fm = uitofp i32 %i.fl to double
  %i.fn = bitcast double %i.fm to i64             ; 2 uses
  %i.fo = and i64 %i.fn, 9223372032559808512
  %.sroa.086.4.insert.ext100 = add nsw i64 %i.fo, -139611588448485376
  %.sroa.086.4.insert.mask102 = and i64 %i.fn, 4294967295
  %.sroa.086.4.insert.insert103 = or disjoint i64 %.sroa.086.4.insert.ext100, %.sroa.086.4.insert.mask102
  %i.fp = add nsw i32 %i.fc, -1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.1796.ph1342 = phi i32 [ %i.ej, %bb.av ], [ %i.en, %bb.az ] ; 3 uses
  %.0797.ph1340 = phi i32 [ %i.ek, %bb.av ], [ %i.fb, %bb.az ] ; 2 uses
  %.0491 = phi i32 [ %i.em, %bb.av ], [ %i.fp, %bb.az ] ; 2 uses
  %.sroa.086.0.in = phi i64 [ %.sroa.086.4.insert.insert95, %bb.av ], [ %.sroa.086.4.insert.insert103, %bb.az ]
  %.sroa.086.0 = bitcast i64 %.sroa.086.0.in to double
  %i.fq = fadd double %.sroa.086.0, -1.500000e+00
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.fs = sitofp i32 %.0491 to double
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fs, double f0x3FD34413509F79FB, double %i.fr) ; 3 uses
  %i.fu = fptosi double %i.ft to i32              ; 2 uses
  %i.fv = fcmp olt double %i.ft, 0.000000e+00
  %i.fw = sitofp i32 %i.fu to double
  %i.fx = fcmp une double %i.ft, %i.fw
  %or.cond629 = and i1 %i.fv, %i.fx
  %i.fy = sext i1 %or.cond629 to i32
  %.0463 = add i32 %i.fy, %i.fu                   ; 5 uses
  %or.cond = icmp ugt i32 %.0463, 22              ; 3 uses
  br i1 %or.cond, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = zext nneg i32 %.0463 to i64
  %i.ga = getelementptr [8 x i8], ptr @tens, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !26
  %i.gc = fcmp olt double %.sroa.0.0794, %i.gb
  br i1 %i.gc, label %select.unfold, label %bb.bc

select.unfold:                                    ; preds = %bb.bb
  %6 = add nsw i32 %.0463, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %select.unfold, %bb.ba
  %.2465 = phi i32 [ %.0463, %bb.bb ], [ %.0463, %bb.ba ], [ %6, %select.unfold ] ; 30 uses
  %i.gd = xor i32 %.0491, -1
  %i.ge = add nsw i32 %.0797.ph1340, %i.gd        ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, -1                  ; 2 uses
  %i.gg = sub nsw i32 0, %i.ge
  %.0504 = select i1 %i.gf, i32 0, i32 %i.gg      ; 2 uses
  %.0453 = select i1 %i.gf, i32 %i.ge, i32 0      ; 2 uses
  %i.gh = icmp sgt i32 %.2465, -1
  br i1 %i.gh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gi = add nuw i32 %.2465, %.0453
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gj = sub i32 %.0504, %.2465
  %i.gk = sub i32 0, %.2465
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1505 = phi i32 [ %.0504, %bb.bd ], [ %i.gj, %bb.be ] ; 7 uses
  %.0503 = phi i32 [ 0, %bb.bd ], [ %i.gk, %bb.be ] ; 3 uses
  %.1454 = phi i32 [ %i.gi, %bb.bd ], [ %.0453, %bb.be ] ; 3 uses
  %.0452 = phi i32 [ %.2465, %bb.bd ], [ 0, %bb.be ] ; 2 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.gl = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.gm = add nsw i32 %spec.store.select27, -4
  %spec.select.a = select i1 %i.gl, i32 %spec.store.select27, i32 %i.gm ; 4 uses
  switch i32 %spec.select.a, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.bg
    i32 4, label %bb.bh
    i32 3, label %bb.bi
    i32 5, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0459 = phi i32 [ 0, %bb.bg ], [ 1, %bb.bf ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.1460 = phi i32 [ 0, %bb.bi ], [ 1, %bb.bf ]
  %i.gn = add i32 %.2465, %2                      ; 2 uses
  %i.go = add i32 %i.gn, 1                        ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.go, i32 1)
  br label %bb.bk

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.0511 = phi i32 [ %spec.store.select, %bb.bh ], [ %2, %bb.bj ] ; 3 uses
  %.1492 = phi i32 [ %spec.store.select, %bb.bh ], [ %spec.store.select4, %bb.bj ] ; 2 uses
  %.0478 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.go, %bb.bj ] ; 3 uses
  %.0477 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.gn, %bb.bj ] ; 3 uses
  %.2461 = phi i32 [ %.0459, %bb.bh ], [ %.1460, %bb.bj ] ; 3 uses
  %i.gp = zext nneg i32 %.1492 to i64
  %.not13.i = icmp samesign ult i32 %.1492, 28
  br i1 %.not13.i, label %._crit_edge.thread.i, label %.lr.ph.i664

.lr.ph.i664:                                      ; preds = %bb.bk, %.lr.ph.i664
  %.015.i = phi i32 [ %i.gq, %.lr.ph.i664 ], [ 0, %bb.bk ]
  %.0914.i = phi i32 [ %i.gr, %.lr.ph.i664 ], [ 4, %bb.bk ]
  %i.gq = add i32 %.015.i, 1                      ; 5 uses
  %i.gr = shl i32 %.0914.i, 1                     ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i64 %i.gs, 24
  %.not.i665 = icmp ugt i64 %i.gt, %i.gp
  br i1 %.not.i665, label %._crit_edge.i666, label %.lr.ph.i664, !llvm.loop !152

._crit_edge.i666:                                 ; preds = %.lr.ph.i664
  %i.gu = icmp slt i32 %i.gq, 8
  br i1 %i.gu, label %._crit_edge.thread.i, label %bb.bm

._crit_edge.thread.i:                             ; preds = %bb.bf, %bb.bf, %bb.bk, %._crit_edge.i666
  %.2461840 = phi i32 [ %.2461, %._crit_edge.i666 ], [ %.2461, %bb.bk ], [ 1, %bb.bf ], [ 1, %bb.bf ] ; 3 uses
  %.0477832 = phi i32 [ %.0477, %._crit_edge.i666 ], [ %.0477, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.0478826 = phi i32 [ %.0478, %._crit_edge.i666 ], [ %.0478, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.0511820 = phi i32 [ %.0511, %._crit_edge.i666 ], [ %.0511, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 3 uses
  %.0.lcssa20.i = phi i32 [ %i.gq, %._crit_edge.i666 ], [ 0, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 5 uses
  %i.gv = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 11960
  %i.gx = sext i32 %.0.lcssa20.i to i64
  %i.gy = getelementptr [8 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !41 ; 3 uses
  %.not.i.i670 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i670, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.thread.i
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !41
  br label %rv_alloc.exit

bb.bm:                                            ; preds = %._crit_edge.i666
  %i.hb = shl nuw i32 1, %i.gq                    ; 2 uses
  %i.hc = add i32 %i.hb, -1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = add nuw nsw i64 %i.he, 36
  br label %bb.bp

bb.bn:                                            ; preds = %._crit_edge.thread.i
  %i.hg = shl nuw nsw i32 1, %.0.lcssa20.i        ; 3 uses
  %i.hh = add nsw i32 %i.hg, -1
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2
  %i.hk = add nuw nsw i64 %i.hj, 36               ; 2 uses
  %i.hl = lshr i64 %i.hk, 3                       ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gv, i64 14328  ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !45 ; 3 uses
  %i.ho = getelementptr i8, ptr %i.gv, i64 12024
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3
  %i.ht = add nsw i64 %i.hs, %i.hl
  %i.hu = icmp slt i64 %i.ht, 289
  br i1 %i.hu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hv = getelementptr [8 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.hv, ptr %i.hm, align 8, !tbaa !45
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.2461839.a = phi i32 [ %.2461840, %bb.bn ], [ %.2461, %bb.bm ]
  %.0477831.a = phi i32 [ %.0477832, %bb.bn ], [ %.0477, %bb.bm ]
  %.0478825.a = phi i32 [ %.0478826, %bb.bn ], [ %.0478, %bb.bm ]
  %.0511819.a = phi i32 [ %.0511820, %bb.bn ], [ %.0511, %bb.bm ]
  %.0.lcssa19.i = phi i32 [ %.0.lcssa20.i, %bb.bn ], [ %i.gq, %bb.bm ]
  %i.hw = phi i64 [ %i.hk, %bb.bn ], [ %i.hf, %bb.bm ]
  %i.hx = phi i32 [ %i.hg, %bb.bn ], [ %i.hb, %bb.bm ]
  %i.hy = and i64 %i.hw, 34359738360
  %i.hz = tail call ptr @PyMem_Malloc(i64 noundef %i.hy) #11 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %Bfree.exit734.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.2461837 = phi i32 [ %.2461840, %bb.bo ], [ %.2461839.a, %bb.bp ]
  %.0477829 = phi i32 [ %.0477832, %bb.bo ], [ %.0477831.a, %bb.bp ]
  %.0478823 = phi i32 [ %.0478826, %bb.bo ], [ %.0478825.a, %bb.bp ]
  %.0511817 = phi i32 [ %.0511820, %bb.bo ], [ %.0511819.a, %bb.bp ]
  %.0.lcssa18.i = phi i32 [ %.0.lcssa20.i, %bb.bo ], [ %.0.lcssa19.i, %bb.bp ] ; 2 uses
  %i.ib = phi i32 [ %i.hg, %bb.bo ], [ %i.hx, %bb.bp ]
  %.0.i.i667 = phi ptr [ %i.hn, %bb.bo ], [ %i.hz, %bb.bp ] ; 3 uses
  %i.ic = getelementptr i8, ptr %.0.i.i667, i64 8
  store i32 %.0.lcssa18.i, ptr %i.ic, align 8, !tbaa !134
  %i.id = getelementptr i8, ptr %.0.i.i667, i64 12
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !135
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.bl, %bb.bq
  %.2461836 = phi i32 [ %.2461840, %bb.bl ], [ %.2461837, %bb.bq ] ; 2 uses
  %.0477828 = phi i32 [ %.0477832, %bb.bl ], [ %.0477829, %bb.bq ] ; 4 uses
  %.0478822 = phi i32 [ %.0478826, %bb.bl ], [ %.0478823, %bb.bq ] ; 11 uses
  %.0511816 = phi i32 [ %.0511820, %bb.bl ], [ %.0511817, %bb.bq ] ; 2 uses
  %.0.lcssa21.i = phi i32 [ %.0.lcssa20.i, %bb.bl ], [ %.0.lcssa18.i, %bb.bq ]
  %.1.i.i668 = phi ptr [ %i.gz, %bb.bl ], [ %.0.i.i667, %bb.bq ] ; 8 uses
  %.1.i.i6681218 = ptrtoaddr ptr %.1.i.i668 to i64 ; 4 uses
  %i.ie = getelementptr i8, ptr %.1.i.i668, i64 20
  store i32 0, ptr %i.ie, align 4, !tbaa !137
  %i.if = getelementptr i8, ptr %.1.i.i668, i64 16
  store i32 0, ptr %i.if, align 8, !tbaa !136
  store i32 %.0.lcssa21.i, ptr %.1.i.i668, align 8, !tbaa !7
  %i.ig = getelementptr i8, ptr %.1.i.i668, i64 4 ; 16 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %Bfree.exit734.thread, label %bb.br

bb.br:                                            ; preds = %rv_alloc.exit
  %or.cond6 = icmp ult i32 %.0478822, 15
  %or.cond8 = and i1 %i.gl, %or.cond6
  br i1 %or.cond8, label %bb.bs, label %.loopexit980

bb.bs:                                            ; preds = %bb.br
  %i.ii = icmp sgt i32 %.2465, 0
  br i1 %i.ii, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ij = and i32 %.2465, 15
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr [8 x i8], ptr @tens, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !26 ; 2 uses
  %i.in = lshr i32 %.2465, 4                      ; 2 uses
  %i.io = and i32 %.2465, 256
  %.not594 = icmp eq i32 %i.io, 0                 ; 3 uses
  %i.ip = and i32 %i.in, 15
  %i.iq = fdiv double %.sroa.0.0794, 1.000000e+256
  %.sroa.0.1 = select i1 %.not594, double %.sroa.0.0794, double %i.iq
  %.0484 = select i1 %.not594, i32 2, i32 3       ; 2 uses
  %.0474 = select i1 %.not594, i32 %i.in, i32 %i.ip ; 2 uses
  %.not5951086 = icmp eq i32 %.0474, 0
  br i1 %.not5951086, label %._crit_edge, label %.lr.ph1091
end_hunk_0
