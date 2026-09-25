Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.10?download=true
inline.NumInlined: 60
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtest:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.as, %bb.j ] ; 9 uses
  %.sroa.02.0.i.i = phi double [ -0.000000e+00, %.new ], [ %i.ar, %bb.j ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.j ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %.val.i.i = load double, ptr %i.v, align 8, !alias.scope !50, !noundef !4
  %i.w = fadd double %.sroa.02.0.i.i, %.val.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i.i.1 = load double, ptr %i.y, align 8, !alias.scope !50, !noundef !4
  %i.z = fadd double %i.w, %.val.i.i.1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val.i.i.2 = load double, ptr %i.ab, align 8, !alias.scope !50, !noundef !4
  %i.ac = fadd double %i.z, %.val.i.i.2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.val.i.i.3 = load double, ptr %i.ae, align 8, !alias.scope !50, !noundef !4
  %i.af = fadd double %i.ac, %.val.i.i.3
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.val.i.i.4 = load double, ptr %i.ah, align 8, !alias.scope !50, !noundef !4
  %i.ai = fadd double %i.af, %.val.i.i.4
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.val.i.i.5 = load double, ptr %i.ak, align 8, !alias.scope !50, !noundef !4
  %i.al = fadd double %i.ai, %.val.i.i.5
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.val.i.i.6 = load double, ptr %i.an, align 8, !alias.scope !50, !noundef !4
  %i.ao = fadd double %i.al, %.val.i.i.6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.val.i.i.7 = load double, ptr %i.aq, align 8, !alias.scope !50, !noundef !4
  %i.ar = fadd double %i.ao, %.val.i.i.7          ; 3 uses
  %i.as = add nuw nsw i64 %.sroa.04.0.i.i, 8      ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.j

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod30)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.as, %.epil.preheader ], [ %i.av, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi double [ %i.ar, %.epil.preheader ], [ %i.au, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load double, ptr %i.at, align 8, !alias.scope !50, !noundef !4
  %i.au = fadd double %.sroa.02.0.i.i.epil, %.val.i.i.epil ; 2 uses
  %i.av = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !42

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %.lcssa28 = phi double [ %i.ar, %.unr-lcssa ], [ %i.au, %bb.k ]
  %i.aw = uitofp nneg i64 %i.l to double          ; 12 uses
  %i.ax = fdiv double %.lcssa28, %i.aw            ; 10 uses
  %xtraiter33 = and i64 %i.l, 3                   ; 3 uses
  %unroll_iter38 = and i64 %i.l, 1152921504606846972
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epilog-lcssa
  %.sroa.04.0.i1.i = phi i64 [ 0, %.epilog-lcssa ], [ %i.br, %bb.l ] ; 5 uses
  %.sroa.02.0.i2.i = phi double [ -0.000000e+00, %.epilog-lcssa ], [ %i.bq, %bb.l ]
  %niter39 = phi i64 [ 0, %.epilog-lcssa ], [ %niter39.next.3, %bb.l ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i
  %.val11.i.i = load double, ptr %i.ay, align 8, !alias.scope !50, !noalias !51, !noundef !4
  %i.az = fsub double %.val11.i.i, %i.ax
  %i.ba = call noundef double @llvm.powi.f64.i32(double %i.az, i32 3)
  %i.bb = fadd double %.sroa.02.0.i2.i, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val11.i.i.1 = load double, ptr %i.bd, align 8, !alias.scope !50, !noalias !51, !noundef !4
  %i.be = fsub double %.val11.i.i.1, %i.ax
  %i.bf = call noundef double @llvm.powi.f64.i32(double %i.be, i32 3)
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.val11.i.i.2 = load double, ptr %i.bi, align 8, !alias.scope !50, !noalias !51, !noundef !4
  %i.bj = fsub double %.val11.i.i.2, %i.ax
  %i.bk = call noundef double @llvm.powi.f64.i32(double %i.bj, i32 3)
  %i.bl = fadd double %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.val11.i.i.3 = load double, ptr %i.bn, align 8, !alias.scope !50, !noalias !51, !noundef !4
  %i.bo = fsub double %.val11.i.i.3, %i.ax
  %i.bp = call noundef double @llvm.powi.f64.i32(double %i.bo, i32 3)
  %i.bq = fadd double %i.bl, %i.bp                ; 3 uses
  %i.br = add nuw nsw i64 %.sroa.04.0.i1.i, 4     ; 2 uses
  %niter39.next.3 = add i64 %niter39, 4           ; 2 uses
  %niter39.ncmp.3 = icmp eq i64 %niter39.next.3, %unroll_iter38
  br i1 %niter39.ncmp.3, label %.preheader.preheader.unr-lcssa, label %bb.l

.preheader.preheader.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod35.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod35.not, label %.preheader.preheader, label %.epil.preheader32

.epil.preheader32:                                ; preds = %.preheader.preheader.unr-lcssa
  %lcmp.mod37 = icmp ne i64 %xtraiter33, 0
  call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader32
  %.sroa.04.0.i1.i.epil = phi i64 [ %i.br, %.epil.preheader32 ], [ %i.bw, %bb.m ] ; 2 uses
  %.sroa.02.0.i2.i.epil = phi double [ %i.bq, %.epil.preheader32 ], [ %i.bv, %bb.m ]
  %epil.iter34 = phi i64 [ 0, %.epil.preheader32 ], [ %epil.iter34.next, %bb.m ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i1.i.epil
  %.val11.i.i.epil = load double, ptr %i.bs, align 8, !alias.scope !50, !noalias !51, !noundef !4
  %i.bt = fsub double %.val11.i.i.epil, %i.ax
  %i.bu = call noundef double @llvm.powi.f64.i32(double %i.bt, i32 3)
  %i.bv = fadd double %.sroa.02.0.i2.i.epil, %i.bu ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.04.0.i1.i.epil, 1
  %epil.iter34.next = add i64 %epil.iter34, 1     ; 2 uses
  %epil.iter34.cmp.not = icmp eq i64 %epil.iter34.next, %xtraiter33
  br i1 %epil.iter34.cmp.not, label %.preheader.preheader, label %bb.m, !llvm.loop !45

.preheader.preheader:                             ; preds = %bb.m, %.preheader.preheader.unr-lcssa
  %.lcssa27 = phi double [ %i.bq, %.preheader.preheader.unr-lcssa ], [ %i.bv, %bb.m ]
  %xtraiter41 = and i64 %i.l, 3                   ; 3 uses
  %unroll_iter47 = and i64 %i.l, 1152921504606846972
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.sroa.04.0.i4.i = phi i64 [ 0, %.preheader.preheader ], [ %i.cq, %.preheader ] ; 5 uses
  %.sroa.02.0.i5.i = phi double [ -0.000000e+00, %.preheader.preheader ], [ %i.cp, %.preheader ]
  %niter48 = phi i64 [ 0, %.preheader.preheader ], [ %niter48.next.3, %.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i4.i
  %.val11.i6.i = load double, ptr %i.bx, align 8, !alias.scope !50, !noalias !52, !noundef !4
  %i.by = fsub double %.val11.i6.i, %i.ax         ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = fadd double %.sroa.02.0.i5.i, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i4.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.val11.i6.i.1 = load double, ptr %i.cc, align 8, !alias.scope !50, !noalias !52, !noundef !4
  %i.cd = fsub double %.val11.i6.i.1, %i.ax       ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = fadd double %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i4.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val11.i6.i.2 = load double, ptr %i.ch, align 8, !alias.scope !50, !noalias !52, !noundef !4
  %i.ci = fsub double %.val11.i6.i.2, %i.ax       ; 2 uses
  %i.cj = fmul double %i.ci, %i.ci
  %i.ck = fadd double %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i4.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.val11.i6.i.3 = load double, ptr %i.cm, align 8, !alias.scope !50, !noalias !52, !noundef !4
  %i.cn = fsub double %.val11.i6.i.3, %i.ax       ; 2 uses
  %i.co = fmul double %i.cn, %i.cn
  %i.cp = fadd double %i.ck, %i.co                ; 3 uses
  %i.cq = add nuw nsw i64 %.sroa.04.0.i4.i, 4     ; 2 uses
  %niter48.next.3 = add i64 %niter48, 4           ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %.unr-lcssa40, label %.preheader

bb.n:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtest8skewtest0EB1J_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cr, align 1
  br label %bb.g

.unr-lcssa40:                                     ; preds = %.preheader
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %.epilog-lcssa44, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa40
  %lcmp.mod46 = icmp ne i64 %xtraiter41, 0
  call void @llvm.assume(i1 %lcmp.mod46)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i4.i.epil = phi i64 [ %i.cw, %.preheader.epil ], [ %i.cq, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i5.i.epil = phi double [ %i.cv, %.preheader.epil ], [ %i.cp, %.preheader.epil.preheader ]
  %epil.iter42 = phi i64 [ %epil.iter42.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.04.0.i4.i.epil
  %.val11.i6.i.epil = load double, ptr %i.cs, align 8, !alias.scope !50, !noalias !52, !noundef !4
  %i.ct = fsub double %.val11.i6.i.epil, %i.ax    ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = fadd double %.sroa.02.0.i5.i.epil, %i.cu ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.04.0.i4.i.epil, 1
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %.epilog-lcssa44, label %.preheader.epil, !llvm.loop !48

.epilog-lcssa44:                                  ; preds = %.preheader.epil, %.unr-lcssa40
  %.lcssa = phi double [ %i.cp, %.unr-lcssa40 ], [ %i.cv, %.preheader.epil ]
  %i.cx = fdiv double %.lcssa, %i.aw
  %i.cy = call double @llvm.pow.f64(double %i.cx, double 1.500000e+00)
  %i.cz = fadd double %i.aw, 1.000000e+00         ; 2 uses
  %i.da = fadd double %i.aw, 3.000000e+00         ; 2 uses
  %i.db = fadd double %i.aw, -2.000000e+00        ; 2 uses
  %i.dc = fmul nnan double %i.db, 6.000000e+00
  %4 = fmul nnan double %i.cz, %i.da
  %5 = fdiv double %.lcssa27, %i.aw
  %i.dd = insertelement <2 x double> poison, double %5, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %4, i64 1
  %i.df = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.dc, i64 1
  %i.dh = fdiv <2 x double> %i.de, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  %i.dj = call double @llvm.sqrt.f64(double %i.di)
  %i.dk = extractelement <2 x double> %i.dh, i64 0
  %i.dl = fmul double %i.dj, %i.dk                ; 2 uses
  %i.dm = fmul nnan double %i.aw, %i.aw
  %i.dn = fmul nnan double %i.aw, 2.700000e+01
  %i.do = fadd nnan double %i.dm, %i.dn
  %i.dp = fadd nnan double %i.do, -7.000000e+01
  %i.dq = fmul nnan double %i.dp, 3.000000e+00
  %i.dr = fmul double %i.cz, %i.dq
  %i.ds = fmul double %i.da, %i.dr
  %i.dt = fadd nnan double %i.aw, 5.000000e+00
  %i.du = fmul double %i.db, %i.dt
  %i.dv = fadd nnan double %i.aw, 7.000000e+00
  %i.dw = fmul double %i.dv, %i.du
  %i.dx = fadd nnan double %i.aw, 9.000000e+00
  %i.dy = fmul double %i.dx, %i.dw
  %i.dz = fdiv double %i.ds, %i.dy
  %i.ea = fadd double %i.dz, -1.000000e+00
  %i.eb = fmul double %i.ea, 2.000000e+00
  %i.ec = call double @llvm.sqrt.f64(double %i.eb)
  %i.ed = fadd double %i.ec, -1.000000e+00        ; 2 uses
  %i.ee = call double @llvm.log.f64(double %i.ed)
  %i.ef = fadd double %i.ed, -1.000000e+00
  %6 = fdiv double 2.000000e+00, %i.ef
  %7 = fmul double %i.ee, 5.000000e-01
  %i.eg = insertelement <2 x double> poison, double %7, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %6, i64 1
  %i.ei = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fdiv double 1.000000e+00, %i.ej
  %i.el = fcmp oeq double %i.dl, 0.000000e+00
  %spec.store.select = select i1 %i.el, double 1.000000e+00, double %i.dl
  %i.em = extractelement <2 x double> %i.ei, i64 1
  %i.en = fdiv double %spec.store.select, %i.em   ; 3 uses
  %i.eo = fmul double %i.en, %i.en
  %i.ep = fadd double %i.eo, 1.000000e+00
  %i.eq = call double @llvm.sqrt.f64(double %i.ep)
  %i.er = fadd double %i.en, %i.eq
  %i.es = call double @llvm.log.f64(double %i.er)
  %i.et = fmul double %i.ek, %i.es                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.a, align 16
  switch i8 %2, label %default.unreachable21 [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.o:                                             ; preds = %.epilog-lcssa44
  %i.eu = call double @llvm.fabs.f64(double %i.et)
  %i.ev = invoke noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.eu)
          to label %bb.r unwind label %bb.w

bb.p:                                             ; preds = %.epilog-lcssa44
  %i.ew = invoke noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.et)
          to label %bb.s unwind label %bb.w

bb.q:                                             ; preds = %.epilog-lcssa44
  %i.ex = invoke noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution6normalNtB5_6NormalINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, double noundef %i.et)
          to label %bb.v unwind label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ey = fsub double 1.000000e+00, %i.ev
  %i.ez = fmul double %i.ey, 2.000000e+00
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.v, %bb.r
  %.sroa.04.0 = phi double [ %i.ez, %bb.r ], [ %i.fe, %bb.v ], [ %i.ew, %bb.p ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.et, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.04.0, ptr %i.fb, align 8
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.fe = fsub double 1.000000e+00, %i.ex
  br label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs.exit: ; preds = %bb.s, %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.w:                                             ; preds = %bb.o, %bb.p, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #18
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, double } @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8logistic13checked_logit(double noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %0, 0.000000e+00
  %i.b = fcmp ole double %0, 1.000000e+00
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivedEINtB6_11RangeBoundsdE8containsdECs8lmMd0ZksV9_6statrs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = fsub double 1.000000e+00, %0
  %i.d = fdiv double %0, %i.c
  %i.e = tail call double @llvm.log.f64(double %i.d)
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivedEINtB6_11RangeBoundsdE8containsdECs8lmMd0ZksV9_6statrs.exit.thread

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivedEINtB6_11RangeBoundsdE8containsdECs8lmMd0ZksV9_6statrs.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi double [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, double } %i.f, double %.sroa.3.0, 1
  ret { i64, double } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8logistic5logit(double noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = fcmp oge double %0, 0.000000e+00
  %i.b = fcmp ole double %0, 1.000000e+00
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fsub double 1.000000e+00, %0
  %i.d = fdiv double %0, %i.c
  %i.e = tail call double @llvm.log.f64(double %i.d)
  ret double %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests15ttest_onesampleNtB2_19TTestOneSampleErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !10, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 22) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 70) #21
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs11stats_tests8skewtestNtB2_13SkewTestErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !10, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 70) #21
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution10log_normalNtB2_14LogNormalErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !10, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 15) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 36) #21
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
