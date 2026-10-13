Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvargrid_integrate?download=true
inline.NumInlined: 1192
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN20colvargrid_integrate6atimesERKSt6vectorIdSaIdEERS2_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23   ; 21 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !23   ; 8 uses
  %i.o = sub nsw i32 0, %i.m                      ; 2 uses
  %i.p = sext i32 %i.m to i64                     ; 31 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = load i64, ptr %i.r, align 8, !tbaa !105  ; 2 uses
  %i.t = and i64 %i.s, 2
  %.not1286 = icmp eq i64 %i.t, 0                 ; 2 uses
  %i.u = select i1 %.not1286, double 5.000000e-01, double 1.000000e+00 ; 3 uses
  %i.v = add i32 %i.n, -1                         ; 6 uses
  %i.w = icmp sgt i32 %i.n, 2                     ; 3 uses
  br i1 %i.w, label %.lr.ph1561, label %._crit_edge1562

.lr.ph1561:                                       ; preds = %bb.b
  %i.x = fmul double %i.i, %i.u                   ; 2 uses
  %i.y = sext i32 %i.o to i64
  %i.z = load ptr, ptr %1, align 8, !tbaa !108    ; 9 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %invariant.gep1564 = getelementptr [8 x i8], ptr %i.z, i64 %i.y ; 6 uses
  %invariant.gep1566 = getelementptr [8 x i8], ptr %i.z, i64 %i.p ; 6 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !108   ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.ad = icmp sgt i32 %i.m, 2
  %i.ae = add i32 %i.m, -2                        ; 2 uses
  %i.af = sub i64 %i.ac, %i.aa                    ; 2 uses
  %i.ag = shl nsw i64 %i.p, 3                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.ac
  %i.ai = add i32 %i.m, -2
  %i.aj = zext i32 %i.ae to i64                   ; 2 uses
  %min.iters.check2377 = icmp ult i32 %i.ae, 4
  %i.ak = add i64 %i.af, -1
  %diff.check2371 = icmp ult i64 %i.ak, 31
  %i.al = sub i64 %i.ag, %i.af
  %diff.check2372 = icmp ugt i64 %i.al, -32
  %conflict.rdx2373 = or i1 %diff.check2371, %diff.check2372
  %i.am = sub i64 %i.aa, %i.ah
  %diff.check2374 = icmp ugt i64 %i.am, -32
  %conflict.rdx2375 = or i1 %conflict.rdx2373, %diff.check2374
  %n.vec2379 = and i64 %i.aj, 4294967292          ; 5 uses
  %i.an = trunc nuw i64 %n.vec2379 to i32
  %i.ao = or disjoint i32 %i.an, 1
  %broadcast.splat2381 = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n2393 = icmp eq i64 %n.vec2379, %i.aj
  %xtraiter2636 = and i32 %i.m, 1
  %lcmp.mod2637.not = icmp eq i32 %xtraiter2636, 0
  %i.ap = add nsw i32 %i.m, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1561, %._crit_edge1555
  %.012031559 = phi i32 [ 1, %.lr.ph1561 ], [ %i.cz, %._crit_edge1555 ]
  %.012111558 = phi i64 [ %i.p, %.lr.ph1561 ], [ %i.cy, %._crit_edge1555 ] ; 7 uses
  %gep1565 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %.012111558
  %i.aq = load double, ptr %gep1565, align 8, !tbaa !116
  %gep1567 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %.012111558
  %i.ar = load double, ptr %gep1567, align 8, !tbaa !116
  %i.as = fadd double %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.012111558
  %i.au = load double, ptr %i.at, align 8, !tbaa !116
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double -2.000000e+00, double %i.as)
  %i.aw = fmul double %i.x, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.012111558
  store double %i.aw, ptr %i.ax, align 8, !tbaa !116
  %.112121550 = add i64 %.012111558, 1            ; 4 uses
  br i1 %i.ad, label %.lr.ph1554.preheader, label %._crit_edge1555

.lr.ph1554.preheader:                             ; preds = %bb.c
  %brmerge = select i1 %min.iters.check2377, i1 true, i1 %conflict.rdx2375
  br i1 %brmerge, label %.lr.ph1554.preheader2586, label %vector.ph2378

vector.ph2378:                                    ; preds = %.lr.ph1554.preheader
  %i.ay = add i64 %.112121550, %n.vec2379         ; 2 uses
  br label %vector.body2382

vector.body2382:                                  ; preds = %vector.body2382, %vector.ph2378
  %index2383 = phi i64 [ 0, %vector.ph2378 ], [ %index.next2390, %vector.body2382 ] ; 2 uses
  %i.az = add i64 %.112121550, %index2383         ; 4 uses
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %wide.load2384 = load <2 x double>, ptr %i.ba, align 8, !tbaa !116
  %wide.load2385 = load <2 x double>, ptr %i.bb, align 8, !tbaa !116
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %i.az ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load2386 = load <2 x double>, ptr %i.bc, align 8, !tbaa !116
  %wide.load2387 = load <2 x double>, ptr %i.bd, align 8, !tbaa !116
  %i.be = fadd <2 x double> %wide.load2384, %wide.load2386
  %i.bf = fadd <2 x double> %wide.load2385, %wide.load2387
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.az ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load2388 = load <2 x double>, ptr %i.bg, align 8, !tbaa !116
  %wide.load2389 = load <2 x double>, ptr %i.bh, align 8, !tbaa !116
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load2388, <2 x double> splat (double -2.000000e+00), <2 x double> %i.be)
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load2389, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bf)
  %i.bk = fmul <2 x double> %broadcast.splat2381, %i.bi
  %i.bl = fmul <2 x double> %broadcast.splat2381, %i.bj
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.az ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x double> %i.bk, ptr %i.bm, align 8, !tbaa !116
  store <2 x double> %i.bl, ptr %i.bn, align 8, !tbaa !116
  %index.next2390 = add nuw i64 %index2383, 4     ; 2 uses
  %i.bo = icmp eq i64 %index.next2390, %n.vec2379
  br i1 %i.bo, label %middle.block2391, label %vector.body2382, !llvm.loop !258

middle.block2391:                                 ; preds = %vector.body2382
  %ind.escape2392 = add i64 %.012111558, %n.vec2379
  br i1 %cmp.n2393, label %._crit_edge1555, label %.lr.ph1554.preheader2586

.lr.ph1554.preheader2586:                         ; preds = %.lr.ph1554.preheader, %middle.block2391
  %.112121552.ph = phi i64 [ %i.ay, %middle.block2391 ], [ %.112121550, %.lr.ph1554.preheader ] ; 7 uses
  %.011991551.ph = phi i32 [ %i.ao, %middle.block2391 ], [ 1, %.lr.ph1554.preheader ] ; 3 uses
  br i1 %lcmp.mod2637.not, label %.lr.ph1554.prol.loopexit, label %.lr.ph1554.prol

.lr.ph1554.prol:                                  ; preds = %.lr.ph1554.preheader2586
  %gep1547.prol = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %.112121552.ph
  %i.bp = load double, ptr %gep1547.prol, align 8, !tbaa !116
  %gep1549.prol = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %.112121552.ph
  %i.bq = load double, ptr %gep1549.prol, align 8, !tbaa !116
  %i.br = fadd double %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.112121552.ph
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !116
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double -2.000000e+00, double %i.br)
  %i.bv = fmul double %i.i, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.112121552.ph
  store double %i.bv, ptr %i.bw, align 8, !tbaa !116
  %i.bx = add nuw nsw i32 %.011991551.ph, 1
  %.11212.prol = add i64 %.112121552.ph, 1        ; 2 uses
  br label %.lr.ph1554.prol.loopexit

.lr.ph1554.prol.loopexit:                         ; preds = %.lr.ph1554.prol, %.lr.ph1554.preheader2586
  %.11212.lcssa2587.unr = phi i64 [ poison, %.lr.ph1554.preheader2586 ], [ %.11212.prol, %.lr.ph1554.prol ]
  %.112121552.unr = phi i64 [ %.112121552.ph, %.lr.ph1554.preheader2586 ], [ %.11212.prol, %.lr.ph1554.prol ]
  %.011991551.unr = phi i32 [ %.011991551.ph, %.lr.ph1554.preheader2586 ], [ %i.bx, %.lr.ph1554.prol ]
  %i.by = icmp eq i32 %i.ai, %.011991551.ph
  br i1 %i.by, label %._crit_edge1555, label %.lr.ph1554

.lr.ph1554:                                       ; preds = %.lr.ph1554.prol.loopexit, %.lr.ph1554
  %.112121552 = phi i64 [ %.11212.1, %.lr.ph1554 ], [ %.112121552.unr, %.lr.ph1554.prol.loopexit ] ; 6 uses
  %.011991551 = phi i32 [ %i.cp, %.lr.ph1554 ], [ %.011991551.unr, %.lr.ph1554.prol.loopexit ] ; 2 uses
  %gep1547 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %.112121552
  %i.bz = load double, ptr %gep1547, align 8, !tbaa !116
  %gep1549 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %.112121552
  %i.ca = load double, ptr %gep1549, align 8, !tbaa !116
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.112121552
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !116
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double -2.000000e+00, double %i.cb)
  %i.cf = fmul double %i.i, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.112121552
  store double %i.cf, ptr %i.cg, align 8, !tbaa !116
  %.11212 = add i64 %.112121552, 1                ; 5 uses
  %gep1547.1 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %.11212
  %i.ch = load double, ptr %gep1547.1, align 8, !tbaa !116
  %gep1549.1 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %.11212
  %i.ci = load double, ptr %gep1549.1, align 8, !tbaa !116
  %i.cj = fadd double %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.11212
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !116
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double -2.000000e+00, double %i.cj)
  %i.cn = fmul double %i.i, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.11212
  store double %i.cn, ptr %i.co, align 8, !tbaa !116
  %i.cp = add nuw nsw i32 %.011991551, 2
  %.11212.1 = add i64 %.112121552, 2              ; 2 uses
  %exitcond1703.not.1 = icmp eq i32 %.011991551, %i.ap
  br i1 %exitcond1703.not.1, label %._crit_edge1555, label %.lr.ph1554, !llvm.loop !259

._crit_edge1555:                                  ; preds = %.lr.ph1554.prol.loopexit, %.lr.ph1554, %middle.block2391, %bb.c
  %.11212.in.lcssa = phi i64 [ %.012111558, %bb.c ], [ %ind.escape2392, %middle.block2391 ], [ %.112121552.ph, %.lr.ph1554.prol.loopexit ], [ %.11212, %.lr.ph1554 ]
  %.11212.lcssa = phi i64 [ %.112121550, %bb.c ], [ %i.ay, %middle.block2391 ], [ %.11212.lcssa2587.unr, %.lr.ph1554.prol.loopexit ], [ %.11212.1, %.lr.ph1554 ] ; 4 uses
  %gep1569 = getelementptr [8 x i8], ptr %invariant.gep1564, i64 %.11212.lcssa
  %i.cq = load double, ptr %gep1569, align 8, !tbaa !116
  %gep1571 = getelementptr [8 x i8], ptr %invariant.gep1566, i64 %.11212.lcssa
  %i.cr = load double, ptr %gep1571, align 8, !tbaa !116
  %i.cs = fadd double %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.11212.lcssa
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !116
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double -2.000000e+00, double %i.cs)
  %i.cw = fmul double %i.x, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.11212.lcssa
  store double %i.cw, ptr %i.cx, align 8, !tbaa !116
  %i.cy = add i64 %.11212.in.lcssa, 2
  %i.cz = add nuw nsw i32 %.012031559, 1          ; 2 uses
  %exitcond1704.not = icmp eq i32 %i.cz, %i.v
  br i1 %exitcond1704.not, label %._crit_edge1562, label %bb.c, !llvm.loop !260

._crit_edge1562:                                  ; preds = %._crit_edge1555, %bb.b
  %i.da = sext i32 %i.v to i64                    ; 6 uses
  %i.db = mul nsw i64 %i.da, %i.p                 ; 8 uses
  %i.dc = and i64 %i.s, 1
  %.not1287 = icmp eq i64 %i.dc, 0
  br i1 %.not1287, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge1562
  %i.dd = mul nsw i32 %i.v, %i.m
  %i.de = fmul double %i.i, %i.u                  ; 4 uses
  %i.df = sext i32 %i.dd to i64                   ; 7 uses
  %i.dg = load ptr, ptr %1, align 8, !tbaa !108   ; 20 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64              ; 7 uses
  %i.di = getelementptr [8 x i8], ptr %i.dg, i64 %i.df ; 3 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !116
  %i.dk = getelementptr [8 x i8], ptr %i.dg, i64 %i.p ; 3 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !116
  %i.dm = fadd double %i.dj, %i.dl
  %i.dn = load double, ptr %i.dg, align 8, !tbaa !116
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double -2.000000e+00, double %i.dm)
  %i.dp = fmul double %i.de, %i.do
  %i.dq = load ptr, ptr %2, align 8, !tbaa !108   ; 10 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64              ; 7 uses
  store double %i.dp, ptr %i.dq, align 8, !tbaa !116
  %i.ds = sub nsw i64 %i.db, %i.p
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !116
  %i.dv = sub nsw i64 %i.db, %i.df
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !116
  %i.dy = fadd double %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.db
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !116
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double -2.000000e+00, double %i.dy)
  %i.ec = fmul double %i.de, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.db
  store double %i.ec, ptr %i.ed, align 8, !tbaa !116
  %.012071576 = add nsw i64 %i.db, 1              ; 5 uses
  %i.ee = icmp sgt i32 %i.m, 2
  br i1 %i.ee, label %.lr.ph1581.preheader, label %._crit_edge1582

.lr.ph1581.preheader:                             ; preds = %bb.d
  %i.ef = add nsw i32 %i.m, -1
  %wide.trip.count = zext nneg i32 %i.ef to i64   ; 4 uses
  %i.eg = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check2421 = icmp ult i64 %i.eg, 24
  br i1 %min.iters.check2421, label %.lr.ph1581.preheader2584, label %vector.memcheck2396

vector.memcheck2396:                              ; preds = %.lr.ph1581.preheader
  %i.eh = mul nsw i64 %i.p, %i.da
  %i.ei = shl i64 %i.eh, 3                        ; 3 uses
  %i.ej = add i64 %i.ei, -1
  %diff.check2397 = icmp ult i64 %i.ej, 15
  %i.ek = add i64 %i.ei, %i.dh
  %i.el = sub i64 %i.ek, %i.dr                    ; 2 uses
  %i.em = add i64 %i.el, -1
  %diff.check2398 = icmp ult i64 %i.em, 15
  %conflict.rdx2399 = or i1 %diff.check2397, %diff.check2398
  %i.en = shl nsw i64 %i.df, 3                    ; 4 uses
  %i.eo = sub i64 %i.en, %i.el
  %diff.check2400 = icmp ugt i64 %i.eo, -16
  %conflict.rdx2401 = or i1 %conflict.rdx2399, %diff.check2400
  %i.ep = add nsw i64 %i.da, 2305843009213693951
  %i.eq = mul i64 %i.ep, %i.p
  %i.er = shl i64 %i.eq, 3
  %i.es = add i64 %i.er, %i.dh
  %i.et = sub i64 %i.dr, %i.es
  %diff.check2402 = icmp ugt i64 %i.et, -16
  %conflict.rdx2403 = or i1 %conflict.rdx2401, %diff.check2402
  %i.eu = sub i64 %i.dr, %i.dh                    ; 3 uses
  %i.ev = add i64 %i.eu, -1
  %diff.check2404 = icmp ult i64 %i.ev, 15
  %conflict.rdx2405 = or i1 %conflict.rdx2403, %diff.check2404
  %i.ew = shl nuw nsw i64 %i.p, 3                 ; 2 uses
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check2406 = icmp ugt i64 %i.ex, -16
  %conflict.rdx2407 = or i1 %conflict.rdx2405, %diff.check2406
  %i.ey = sub i64 %i.en, %i.eu
  %diff.check2408 = icmp ugt i64 %i.ey, -16
  %conflict.rdx2409 = or i1 %conflict.rdx2407, %diff.check2408
  %i.ez = add i64 %i.en, %i.dr
  %i.fa = sub i64 %i.dh, %i.ez
  %diff.check2410 = icmp ugt i64 %i.fa, -16
  %conflict.rdx2411 = or i1 %conflict.rdx2409, %diff.check2410
  %i.fb = add i64 %i.ew, %i.dr
  %i.fc = sub i64 %i.dh, %i.fb
  %diff.check2412 = icmp ugt i64 %i.fc, -16
  %conflict.rdx2413 = or i1 %conflict.rdx2411, %diff.check2412
  %i.fd = add i64 %i.ei, %i.dr
  %i.fe = sub i64 %i.fd, %i.dh                    ; 2 uses
  %3 = add i64 %i.fe, -1
  %diff.check2440 = icmp ult i64 %3, 15
  %conflict.rdx2415 = or i1 %conflict.rdx2413, %diff.check2440
  %i.ff = shl nsw i64 %i.da, 3
  %i.fg = add nsw i64 %i.ff, -8
  %i.fh = mul i64 %i.fg, %i.p
  %i.fi = add i64 %i.fh, %i.dr
  %i.fj = sub i64 %i.dh, %i.fi
  %diff.check2416 = icmp ugt i64 %i.fj, -16
  %conflict.rdx2417 = or i1 %conflict.rdx2415, %diff.check2416
  %i.fk = sub i64 %i.en, %i.fe
  %diff.check2418 = icmp ugt i64 %i.fk, -16
  %conflict.rdx2419 = or i1 %conflict.rdx2417, %diff.check2418
  br i1 %conflict.rdx2419, label %.lr.ph1581.preheader2584, label %vector.ph2422

vector.ph2422:                                    ; preds = %vector.memcheck2396
  %n.vec2423 = and i64 %i.eg, -2                  ; 3 uses
  %i.fl = add i64 %.012071576, %n.vec2423         ; 2 uses
  %i.fm = or i64 %i.eg, 1
  %broadcast.splat2425 = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2426

vector.body2426:                                  ; preds = %vector.body2426, %vector.ph2422
  %index2427 = phi i64 [ 0, %vector.ph2422 ], [ %index.next2434, %vector.body2426 ] ; 3 uses
  %i.fn = add i64 %.012071576, %index2427         ; 4 uses
  %i.fo = or disjoint i64 %index2427, 1           ; 4 uses
  %i.fp = getelementptr [8 x i8], ptr %i.di, i64 %i.fo
  %wide.load2428 = load <2 x double>, ptr %i.fp, align 8, !tbaa !116
  %i.fq = getelementptr [8 x i8], ptr %i.dk, i64 %i.fo
  %wide.load2429 = load <2 x double>, ptr %i.fq, align 8, !tbaa !116
  %i.fr = fadd <2 x double> %wide.load2428, %wide.load2429
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fo
  %wide.load2430 = load <2 x double>, ptr %i.fs, align 8, !tbaa !116
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load2430, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fr)
  %i.fu = fmul <2 x double> %broadcast.splat2425, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.fo
  store <2 x double> %i.fu, ptr %i.fv, align 8, !tbaa !116
  %i.fw = sub i64 %i.fn, %i.p
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fw
  %wide.load2431 = load <2 x double>, ptr %i.fx, align 8, !tbaa !116
  %i.fy = sub i64 %i.fn, %i.df
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fy
  %wide.load2432 = load <2 x double>, ptr %i.fz, align 8, !tbaa !116
  %i.ga = fadd <2 x double> %wide.load2431, %wide.load2432
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fn
  %wide.load2433 = load <2 x double>, ptr %i.gb, align 8, !tbaa !116
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load2433, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ga)
  %i.gd = fmul <2 x double> %broadcast.splat2425, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.fn
  store <2 x double> %i.gd, ptr %i.ge, align 8, !tbaa !116
  %index.next2434 = add nuw i64 %index2427, 2     ; 2 uses
  %i.gf = icmp eq i64 %index.next2434, %n.vec2423
  br i1 %i.gf, label %middle.block2435, label %vector.body2426, !llvm.loop !261

middle.block2435:                                 ; preds = %vector.body2426
  %cmp.n2436 = icmp eq i64 %i.eg, %n.vec2423
  br i1 %cmp.n2436, label %._crit_edge1582, label %.lr.ph1581.preheader2584

.lr.ph1581.preheader2584:                         ; preds = %vector.memcheck2396, %.lr.ph1581.preheader, %middle.block2435
  %.012071579.ph = phi i64 [ %.012071576, %vector.memcheck2396 ], [ %.012071576, %.lr.ph1581.preheader ], [ %i.fl, %middle.block2435 ]
  %.212131577.ph = phi i64 [ 1, %vector.memcheck2396 ], [ 1, %.lr.ph1581.preheader ], [ %i.fm, %middle.block2435 ]
  br label %.lr.ph1581

.lr.ph1581:                                       ; preds = %.lr.ph1581.preheader2584, %.lr.ph1581
  %.012071579 = phi i64 [ %.01207, %.lr.ph1581 ], [ %.012071579.ph, %.lr.ph1581.preheader2584 ] ; 5 uses
  %.212131577 = phi i64 [ %i.ha, %.lr.ph1581 ], [ %.212131577.ph, %.lr.ph1581.preheader2584 ] ; 5 uses
  %gep1573 = getelementptr [8 x i8], ptr %i.di, i64 %.212131577
  %i.gg = load double, ptr %gep1573, align 8, !tbaa !116
  %gep1575 = getelementptr [8 x i8], ptr %i.dk, i64 %.212131577
  %i.gh = load double, ptr %gep1575, align 8, !tbaa !116
  %i.gi = fadd double %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.212131577
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !116
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double -2.000000e+00, double %i.gi)
  %i.gm = fmul double %i.i, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.212131577
  store double %i.gm, ptr %i.gn, align 8, !tbaa !116
  %i.go = sub i64 %.012071579, %i.p
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !116
  %i.gr = sub i64 %.012071579, %i.df
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !116
  %i.gu = fadd double %i.gq, %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.012071579
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !116
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double -2.000000e+00, double %i.gu)
  %i.gy = fmul double %i.i, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.012071579
  store double %i.gy, ptr %i.gz, align 8, !tbaa !116
  %i.ha = add nuw nsw i64 %.212131577, 1          ; 2 uses
  %.01207 = add nsw i64 %.012071579, 1            ; 2 uses
  %exitcond1706.not = icmp eq i64 %i.ha, %wide.trip.count
  br i1 %exitcond1706.not, label %._crit_edge1582, label %.lr.ph1581, !llvm.loop !262

._crit_edge1582:                                  ; preds = %.lr.ph1581, %middle.block2435, %bb.d
  %.21213.lcssa = phi i64 [ 1, %bb.d ], [ %wide.trip.count, %middle.block2435 ], [ %wide.trip.count, %.lr.ph1581 ] ; 2 uses
  %.01207.lcssa = phi i64 [ %.012071576, %bb.d ], [ %i.fl, %middle.block2435 ], [ %.01207, %.lr.ph1581 ] ; 4 uses
  %i.hb = getelementptr [8 x i8], ptr %i.dg, i64 %.21213.lcssa ; 3 uses
  %i.hc = getelementptr [8 x i8], ptr %i.hb, i64 %i.df
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !116
  %i.he = getelementptr [8 x i8], ptr %i.hb, i64 %i.p
  %i.hf = load double, ptr %i.he, align 8, !tbaa !116
  %i.hg = fadd double %i.hd, %i.hf
  %i.hh = load double, ptr %i.hb, align 8, !tbaa !116
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hh, double -2.000000e+00, double %i.hg)
  %i.hj = fmul double %i.de, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.21213.lcssa
  store double %i.hj, ptr %i.hk, align 8, !tbaa !116
  %i.hl = sub i64 %.01207.lcssa, %i.p
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !116
  %i.ho = sub i64 %.01207.lcssa, %i.df
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !116
  %i.hr = fadd double %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.01207.lcssa
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !116
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double -2.000000e+00, double %i.hr)
  %i.hv = fmul double %i.de, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.01207.lcssa
  store double %i.hv, ptr %i.hw, align 8, !tbaa !116
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge1562
  %i.hx = fmul double %i.i, %i.u                  ; 4 uses
  %i.hy = load ptr, ptr %1, align 8, !tbaa !108   ; 12 uses
  %i.hz = ptrtoaddr ptr %i.hy to i64              ; 6 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hy, i64 %i.p ; 3 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !116
  %i.ic = load double, ptr %i.hy, align 8, !tbaa !116
  %i.id = fsub double %i.ib, %i.ic
  %i.ie = fmul double %i.hx, %i.id
  %i.if = load ptr, ptr %2, align 8, !tbaa !108   ; 10 uses
  %i.ig = ptrtoaddr ptr %i.if to i64              ; 6 uses
  store double %i.ie, ptr %i.if, align 8, !tbaa !116
  %i.ih = sext i32 %i.o to i64                    ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %i.hy, i64 %i.db ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !116
  %i.il = load double, ptr %i.ii, align 8, !tbaa !116
  %i.im = fsub double %i.ik, %i.il
  %i.in = fmul double %i.hx, %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.db
  store double %i.in, ptr %i.io, align 8, !tbaa !116
  %invariant.gep1587 = getelementptr [8 x i8], ptr %i.hy, i64 %i.ih ; 2 uses
  %.112081589 = add nsw i64 %i.db, 1              ; 5 uses
  %i.ip = icmp sgt i32 %i.m, 2
  br i1 %i.ip, label %.lr.ph1594.preheader, label %._crit_edge1595

.lr.ph1594.preheader:                             ; preds = %bb.e
  %i.iq = add nsw i32 %i.m, -1
  %wide.trip.count1708 = zext nneg i32 %i.iq to i64 ; 4 uses
  %i.ir = add nsw i64 %wide.trip.count1708, -1    ; 4 uses
  %min.iters.check2456 = icmp ult i64 %i.ir, 26
  br i1 %min.iters.check2456, label %.lr.ph1594.preheader2582, label %vector.memcheck2439

vector.memcheck2439:                              ; preds = %.lr.ph1594.preheader
  %i.is = mul nsw i64 %i.p, %i.da
  %i.it = shl i64 %i.is, 3                        ; 3 uses
  %i.iu = add i64 %i.it, -1
  %diff.check2440.a = icmp ult i64 %i.iu, 15
  %i.iv = add i64 %i.it, %i.hz
  %i.iw = sub i64 %i.ig, %i.iv
  %diff.check2441 = icmp ugt i64 %i.iw, -16
  %conflict.rdx2442 = or i1 %diff.check2440.a, %diff.check2441
  %i.ix = shl nsw i64 %i.da, 3
  %i.iy = add nsw i64 %i.ix, -8
  %i.iz = mul i64 %i.iy, %i.p                     ; 2 uses
  %i.ja = add i64 %i.iz, %i.hz
  %i.jb = sub i64 %i.ig, %i.ja
  %diff.check2443 = icmp ugt i64 %i.jb, -16
  %conflict.rdx2444 = or i1 %conflict.rdx2442, %diff.check2443
  %i.jc = sub i64 %i.ig, %i.hz                    ; 2 uses
  %i.jd = add i64 %i.jc, -1
  %diff.check2445 = icmp ult i64 %i.jd, 15
  %conflict.rdx2446 = or i1 %conflict.rdx2444, %diff.check2445
  %i.je = shl nuw nsw i64 %i.p, 3                 ; 2 uses
  %i.jf = sub i64 %i.je, %i.jc
  %diff.check2447 = icmp ugt i64 %i.jf, -16
  %conflict.rdx2448 = or i1 %conflict.rdx2446, %diff.check2447
  %i.jg = add i64 %i.je, %i.ig
  %i.jh = sub i64 %i.hz, %i.jg
  %diff.check2449 = icmp ugt i64 %i.jh, -16
  %conflict.rdx2450 = or i1 %conflict.rdx2448, %diff.check2449
  %i.ji = add i64 %i.it, %i.ig
  %i.jj = sub i64 %i.hz, %i.ji
  %diff.check2451 = icmp ugt i64 %i.jj, -16
  %conflict.rdx2452 = or i1 %conflict.rdx2450, %diff.check2451
  %i.jk = add i64 %i.iz, %i.ig
  %i.jl = sub i64 %i.hz, %i.jk
  %diff.check2453 = icmp ugt i64 %i.jl, -16
  %conflict.rdx2454 = or i1 %conflict.rdx2452, %diff.check2453
  br i1 %conflict.rdx2454, label %.lr.ph1594.preheader2582, label %vector.ph2457

vector.ph2457:                                    ; preds = %vector.memcheck2439
  %n.vec2458 = and i64 %i.ir, -2                  ; 3 uses
  %i.jm = add i64 %.112081589, %n.vec2458         ; 2 uses
  %i.jn = or i64 %i.ir, 1
  %broadcast.splat2460 = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body2461

vector.body2461:                                  ; preds = %vector.body2461, %vector.ph2457
  %index2462 = phi i64 [ 0, %vector.ph2457 ], [ %index.next2467, %vector.body2461 ] ; 3 uses
  %i.jo = add i64 %.112081589, %index2462         ; 3 uses
  %i.jp = or disjoint i64 %index2462, 1           ; 3 uses
  %i.jq = getelementptr [8 x i8], ptr %i.ia, i64 %i.jp
  %wide.load2463 = load <2 x double>, ptr %i.jq, align 8, !tbaa !116
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.jp
  %wide.load2464 = load <2 x double>, ptr %i.jr, align 8, !tbaa !116
  %i.js = fsub <2 x double> %wide.load2463, %wide.load2464
end_hunk_0
