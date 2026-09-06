Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wireless_timeline?download=true
inline.NumInlined: 817
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16WirelessTimeline10paintEventEP11QPaintEvent:bb.a
  %.lhs.trunc = add nsw i16 %i.lq, 100
  %i.lr = sdiv i16 %.lhs.trunc, 2
  %i.ls = call i16 @llvm.umax.i16(i16 %i.lr, i16 2)
  %i.lt = call i16 @llvm.umin.i16(i16 %i.ls, i16 26)
  %spec.store.select4 = zext nneg i16 %i.lt to i32 ; 5 uses
  %i.lu = getelementptr i8, ptr %i.lh, i64 16     ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8            ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lx = getelementptr i8, ptr %i.lh, i64 24     ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ma = load i64, ptr %i.bk, align 8
  %i.mb = sub i64 %i.lv, %i.ma
  %i.mc = sitofp i64 %i.mb to double
  %i.md = fmul double %i.bq, %i.mc
  %i.me = fptrunc double %i.md to float           ; 5 uses
  %i.mf = icmp slt i32 %.0142285, 0
  %i.mg = fptosi float %i.me to i32               ; 6 uses
  %.not184 = icmp eq i32 %.0142285, %i.mg
  %or.cond203 = select i1 %i.mf, i1 true, i1 %.not184
  br i1 %or.cond203, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_ZL13render_pixelsR8QPainteriiPA3_ff(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %.0142285, ptr noundef nonnull %i.a, float noundef %i.as)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.1143 = phi i32 [ %.0142285, %bb.ax ], [ -1, %bb.ay ] ; 2 uses
  %i.mi = fcmp ult float %i.me, %i.kj
  br i1 %i.mi, label %bb.bb, label %_ZL14accumulate_rgbPA3_fiiffff.exit

bb.bb:                                            ; preds = %bb.ba
  %i.mj = load i64, ptr %i.lx, align 8
  %i.mk = load i64, ptr %i.lu, align 8
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = uitofp i64 %i.ml to double
  %i.mn = fmul double %i.bq, %i.mm                ; 2 uses
  %i.mo = fptrunc double %i.mn to float           ; 6 uses
  %i.mp = fcmp olt double %i.mn, f0xB690000000000000
  br i1 %i.mp, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mq = fadd float %i.me, %i.mo                 ; 4 uses
  %i.mr = fcmp olt float %i.mq, %i.kk
  br i1 %i.mr, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ms = load i32, ptr %i.kl, align 8
  %i.mt = icmp slt i32 %i.ms, 0
  br i1 %i.mt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 %.0144283, ptr %i.kl, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.mu = getelementptr i8, ptr %i.lc, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8            ; 3 uses
  %.not185 = icmp eq ptr %i.mv, null
  br i1 %.not185, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mw = getelementptr i8, ptr %i.mv, i64 22
  %i.mx = load <2 x i16>, ptr %i.mw, align 2
  %i.my = uitofp <2 x i16> %i.mx to <2 x float>
  %i.mz = fdiv <2 x float> %i.my, splat (float 6.553500e+04)
  %i.na = getelementptr i8, ptr %i.mv, i64 26
  %i.nb = load i16, ptr %i.na, align 2
  %i.nc = uitofp i16 %i.nb to float
  %i.nd = fdiv float %i.nc, 6.553500e+04
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.0 = phi float [ %i.nd, %bb.bg ], [ 0.000000e+00, %bb.bf ] ; 8 uses
  %i.ne = phi <2 x float> [ %i.mz, %bb.bg ], [ zeroinitializer, %bb.bf ] ; 8 uses
  %i.nf = fpext float %i.mq to double
  %i.ng = getelementptr i8, ptr %i.lh, i64 40
  %i.nh = load i16, ptr %i.ng, align 8            ; 2 uses
  %i.ni = uitofp i16 %i.nh to double
  %i.nj = call double @llvm.fmuladd.f64(double %i.ni, double %i.bq, double %i.nf)
  %i.nk = fptosi double %i.nj to i32              ; 2 uses
  br i1 %i.km, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nl = icmp ne i16 %i.nh, 0
  %i.nm = icmp sgt i32 %i.nk, 0
  %or.cond3 = select i1 %i.nl, i1 %i.nm, i1 false
  br i1 %or.cond3, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.nn = shl i32 %.0144283, 1
  %i.no = and i32 %i.nn, 62
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.np = uitofp nneg i32 %i.no to double         ; 2 uses
  %i.nq = uitofp nneg i32 %i.nk to float
  %i.nr = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.nq, i64 1
  %i.nt = fdiv <2 x float> %i.ns, %i.fz
  %i.nu = fpext <2 x float> %i.nt to <2 x double> ; 2 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  store double %i.nv, ptr %13, align 8
  store double %i.np, ptr %i.kn, align 8
  %i.nw = extractelement <2 x double> %i.nu, i64 1
  store double %i.nw, ptr %i.ko, align 8
  store double %i.np, ptr %i.kp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.nx = call nnan float @llvm.fmuladd.f32(float %.0, float 8.000000e-01, float 1.000000e-01)
  %i.ny = fmul nnan float %i.nx, 2.550000e+02
  %i.nz = fptosi float %i.ny to i32               ; 2 uses
  %i.oa = trunc i32 %i.nz to i16
  %i.ob = mul i16 %i.oa, 257
  %i.oc = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> splat (float 8.000000e-01), <2 x float> splat (float 1.000000e-01))
  %i.od = fmul nnan <2 x float> %i.oc, splat (float 2.550000e+02)
  %i.oe = fptosi <2 x float> %i.od to <2 x i32>   ; 3 uses
  %shift = shufflevector <2 x i32> %i.oe, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %shift, %i.oe
  %i.of = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.og = or i32 %i.of, %i.nz
  %i.oh = icmp ult i32 %i.og, 256                 ; 4 uses
  %i.oi = zext i1 %i.oh to i32
  store i32 %i.oi, ptr %15, align 4
  %i.oj = sext i1 %i.oh to i16
  %i.ok = trunc <2 x i32> %i.oe to <2 x i16>
  %i.ol = mul <2 x i16> %i.ok, splat (i16 257)
  %i.om = insertelement <2 x i1> poison, i1 %i.oh, i64 0
  %i.on = shufflevector <2 x i1> %i.om, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.oo = select <2 x i1> %i.on, <2 x i16> %i.ol, <2 x i16> zeroinitializer
  %i.op = select i1 %i.oh, i16 %i.ob, i16 0
  store i16 %i.oj, ptr %i.kq, align 4
  store <2 x i16> %i.oo, ptr %i.kr, align 2
  store i16 %i.op, ptr %i.ks, align 2
  store i16 0, ptr %i.kt, align 4
  invoke void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %14, ptr noundef nonnull align 4 dereferenceable(14) %15)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.oq = invoke noundef ptr @_ZN14QGraphicsScene7addLineERK6QLineFRK4QPen(ptr noundef nonnull align 8 dereferenceable_or_null(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bl unwind label %bb.bn     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #18
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn186 = phi { ptr, i32 } [ %i.os, %bb.bn ], [ %i.or, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.by

bb.bp:                                            ; preds = %bb.bl, %bb.bi, %bb.bh
  %i.ot = fptosi float %i.mq to i32
  %i.ou = icmp eq i32 %i.mg, %i.ot
  br i1 %i.ou, label %.lr.ph.preheader.i, label %.lr.ph.preheader.i228

.lr.ph.preheader.i:                               ; preds = %bb.bp
  %i.ov = getelementptr i8, ptr %i.lc, i64 53
  %i.ow = load i16, ptr %i.ov, align 1
  %i.ox = and i16 %i.ow, 1
  %.not.i222 = icmp eq i16 %i.ox, 0
  %i.oy = or disjoint i32 %spec.store.select4, 32
  %narrow265 = sub nuw nsw i32 32, %spec.store.select4
  %i.oz = zext nneg i32 %narrow265 to i64         ; 4 uses
  %i.pa = zext nneg i32 %i.oy to i64
  %wide.trip.count.i = select i1 %.not.i222, i64 32, i64 %i.pa ; 2 uses
  %i.pb = sub nsw i64 %wide.trip.count.i, %i.oz   ; 3 uses
  %min.iters.check = icmp ult i64 %i.pb, 4
  br i1 %min.iters.check, label %.lr.ph.i223.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.pb, -4                      ; 3 uses
  %i.pc = add nsw i64 %n.vec, %i.oz
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mo, i64 0 ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %18 = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %19 = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next331, %vector.body329 ] ; 2 uses
  %i.pe = add nuw i64 %index330, %i.oz            ; 4 uses
  %i.pf = getelementptr [12 x i8], ptr %i.a, i64 %i.pe ; 4 uses
  %i.pg = getelementptr [12 x i8], ptr %i.a, i64 %i.pe ; 3 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 12
  %i.pi = getelementptr [12 x i8], ptr %i.a, i64 %i.pe ; 3 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 24
  %i.pk = getelementptr [12 x i8], ptr %i.a, i64 %i.pe ; 3 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 36
  %i.pm = load float, ptr %i.pf, align 4
  %i.pn = load float, ptr %i.ph, align 4
  %i.po = load float, ptr %i.pj, align 4
  %i.pp = load float, ptr %i.pl, align 4
  %i.pq = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 1
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 2
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 3
  %i.pu = getelementptr i8, ptr %i.pf, i64 4
  %i.pv = getelementptr i8, ptr %i.pg, i64 16
  %i.pw = getelementptr i8, ptr %i.pi, i64 28
  %i.px = getelementptr i8, ptr %i.pk, i64 40
  %i.py = load float, ptr %i.pu, align 4
  %i.pz = load float, ptr %i.pv, align 4
  %i.qa = load float, ptr %i.pw, align 4
  %i.qb = load float, ptr %i.px, align 4
  %i.qc = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qd = insertelement <4 x float> %i.qc, float %i.pz, i64 1
  %i.qe = insertelement <4 x float> %i.qd, float %i.qa, i64 2
  %i.qf = insertelement <4 x float> %i.qe, float %i.qb, i64 3
  %20 = shufflevector <4 x float> %i.pt, <4 x float> %i.qf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %21 = fsub <8 x float> %20, %i.pd
  %i.qg = getelementptr i8, ptr %i.pf, i64 8
  %i.qh = getelementptr i8, ptr %i.pg, i64 20
  %i.qi = getelementptr i8, ptr %i.pi, i64 32
  %i.qj = getelementptr i8, ptr %i.pk, i64 44
  %i.qk = load float, ptr %i.qg, align 4
  %i.ql = load float, ptr %i.qh, align 4
  %i.qm = load float, ptr %i.qi, align 4
  %i.qn = load float, ptr %i.qj, align 4
  %i.qo = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.qp = insertelement <4 x float> %i.qo, float %i.ql, i64 1
  %i.qq = insertelement <4 x float> %i.qp, float %i.qm, i64 2
  %i.qr = insertelement <4 x float> %i.qq, float %i.qn, i64 3
  %i.qs = fsub <4 x float> %i.qr, %broadcast.splat
  %i.qt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %broadcast.splat328, <4 x float> %i.qs)
  %i.qu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %18, <8 x float> %19, <8 x float> %21)
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.qu, <8 x float> %i.qv, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.pf, align 4
  %index.next331 = add nuw i64 %index330, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next331, %n.vec
  br i1 %i.qw, label %middle.block332, label %vector.body329, !llvm.loop !21

middle.block332:                                  ; preds = %vector.body329
  %cmp.n = icmp eq i64 %i.pb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i223.preheader

.lr.ph.i223.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block332
  %indvars.iv.i224.ph = phi i64 [ %i.oz, %.lr.ph.preheader.i ], [ %i.pc, %middle.block332 ]
  %i.qx = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %.lr.ph.i223.preheader, %.lr.ph.i223
  %indvars.iv.i224 = phi i64 [ %indvars.iv.next.i225, %.lr.ph.i223 ], [ %indvars.iv.i224.ph, %.lr.ph.i223.preheader ] ; 2 uses
  %i.qz = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i224 ; 3 uses
  %i.ra = load <2 x float>, ptr %i.qz, align 4
  %i.rb = fsub <2 x float> %i.ra, %i.qy
  %i.rc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> %i.ne, <2 x float> %i.rb)
  store <2 x float> %i.rc, ptr %i.qz, align 4
  %i.rd = getelementptr i8, ptr %i.qz, i64 8      ; 2 uses
  %i.re = load float, ptr %i.rd, align 4
  %i.rf = fsub float %i.re, %i.mo
  %i.rg = call float @llvm.fmuladd.f32(float %i.mo, float %.0, float %i.rf)
  store float %i.rg, ptr %i.rd, align 4
  %indvars.iv.next.i225 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %exitcond.not.i226 = icmp eq i64 %indvars.iv.next.i225, %wide.trip.count.i
  br i1 %exitcond.not.i226, label %.loopexit, label %.lr.ph.i223, !llvm.loop !22

.lr.ph.preheader.i228:                            ; preds = %bb.bp
  %i.rh = add i32 %i.mg, 1
  %i.ri = sitofp i32 %i.rh to float
  %i.rj = fsub float %i.ri, %i.me                 ; 6 uses
  %i.rk = getelementptr i8, ptr %i.lc, i64 53     ; 3 uses
  %i.rl = load i16, ptr %i.rk, align 1
  %i.rm = and i16 %i.rl, 1
  %.not.i227 = icmp eq i16 %i.rm, 0
  %i.rn = or disjoint i32 %spec.store.select4, 32
  %narrow = sub nuw nsw i32 32, %spec.store.select4 ; 2 uses
  %i.ro = zext nneg i32 %narrow to i64            ; 8 uses
  %i.rp = zext nneg i32 %i.rn to i64              ; 2 uses
  %wide.trip.count.i229 = select i1 %.not.i227, i64 32, i64 %i.rp ; 2 uses
  %i.rq = sub nsw i64 %wide.trip.count.i229, %i.ro ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.rq, 4
  br i1 %min.iters.check353, label %.lr.ph.i230.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %.lr.ph.preheader.i228
  %n.vec355 = and i64 %i.rq, -4                   ; 3 uses
  %i.rr = add nsw i64 %n.vec355, %i.ro
  %broadcast.splatinsert356 = insertelement <4 x float> poison, float %i.rj, i64 0 ; 3 uses
  %broadcast.splat357 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %22 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <8 x i32> zeroinitializer
  %23 = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph354
  %index365 = phi i64 [ 0, %vector.ph354 ], [ %index.next367, %vector.body364 ] ; 2 uses
  %i.rt = add nuw i64 %index365, %i.ro            ; 4 uses
  %i.ru = getelementptr [12 x i8], ptr %i.a, i64 %i.rt ; 4 uses
  %i.rv = getelementptr [12 x i8], ptr %i.a, i64 %i.rt ; 3 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 12
  %i.rx = getelementptr [12 x i8], ptr %i.a, i64 %i.rt ; 3 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 24
  %i.rz = getelementptr [12 x i8], ptr %i.a, i64 %i.rt ; 3 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 36
  %i.sb = load float, ptr %i.ru, align 4
  %i.sc = load float, ptr %i.rw, align 4
  %i.sd = load float, ptr %i.ry, align 4
  %i.se = load float, ptr %i.sa, align 4
  %i.sf = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.sg = insertelement <4 x float> %i.sf, float %i.sc, i64 1
  %i.sh = insertelement <4 x float> %i.sg, float %i.sd, i64 2
  %i.si = insertelement <4 x float> %i.sh, float %i.se, i64 3
  %i.sj = getelementptr i8, ptr %i.ru, i64 4
  %i.sk = getelementptr i8, ptr %i.rv, i64 16
  %i.sl = getelementptr i8, ptr %i.rx, i64 28
  %i.sm = getelementptr i8, ptr %i.rz, i64 40
  %i.sn = load float, ptr %i.sj, align 4
  %i.so = load float, ptr %i.sk, align 4
  %i.sp = load float, ptr %i.sl, align 4
  %i.sq = load float, ptr %i.sm, align 4
  %i.sr = insertelement <4 x float> poison, float %i.sn, i64 0
  %i.ss = insertelement <4 x float> %i.sr, float %i.so, i64 1
  %i.st = insertelement <4 x float> %i.ss, float %i.sp, i64 2
  %i.su = insertelement <4 x float> %i.st, float %i.sq, i64 3
  %24 = shufflevector <4 x float> %i.si, <4 x float> %i.su, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %25 = fsub <8 x float> %24, %i.rs
  %i.sv = getelementptr i8, ptr %i.ru, i64 8
  %i.sw = getelementptr i8, ptr %i.rv, i64 20
  %i.sx = getelementptr i8, ptr %i.rx, i64 32
  %i.sy = getelementptr i8, ptr %i.rz, i64 44
  %i.sz = load float, ptr %i.sv, align 4
  %i.ta = load float, ptr %i.sw, align 4
  %i.tb = load float, ptr %i.sx, align 4
  %i.tc = load float, ptr %i.sy, align 4
  %i.td = insertelement <4 x float> poison, float %i.sz, i64 0
  %i.te = insertelement <4 x float> %i.td, float %i.ta, i64 1
  %i.tf = insertelement <4 x float> %i.te, float %i.tb, i64 2
  %i.tg = insertelement <4 x float> %i.tf, float %i.tc, i64 3
  %i.th = fsub <4 x float> %i.tg, %broadcast.splat357
  %i.ti = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat357, <4 x float> %broadcast.splat363, <4 x float> %i.th)
  %i.tj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %22, <8 x float> %23, <8 x float> %25)
  %i.tk = shufflevector <4 x float> %i.ti, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec366 = shufflevector <8 x float> %i.tj, <8 x float> %i.tk, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec366, ptr %i.ru, align 4
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.tl = icmp eq i64 %index.next367, %n.vec355
  br i1 %i.tl, label %middle.block368, label %vector.body364, !llvm.loop !23

middle.block368:                                  ; preds = %vector.body364
  %cmp.n369 = icmp eq i64 %i.rq, %n.vec355
  br i1 %cmp.n369, label %_ZL14accumulate_rgbPA3_fiiffff.exit234, label %.lr.ph.i230.preheader

.lr.ph.i230.preheader:                            ; preds = %.lr.ph.preheader.i228, %middle.block368
  %indvars.iv.i231.ph = phi i64 [ %i.ro, %.lr.ph.preheader.i228 ], [ %i.rr, %middle.block368 ]
  %i.tm = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.tn = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.preheader, %.lr.ph.i230
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i232, %.lr.ph.i230 ], [ %indvars.iv.i231.ph, %.lr.ph.i230.preheader ] ; 2 uses
  %i.to = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i231 ; 3 uses
  %i.tp = load <2 x float>, ptr %i.to, align 4
  %i.tq = fsub <2 x float> %i.tp, %i.tn
  %i.tr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tn, <2 x float> %i.ne, <2 x float> %i.tq)
  store <2 x float> %i.tr, ptr %i.to, align 4
  %i.ts = getelementptr i8, ptr %i.to, i64 8      ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4
  %i.tu = fsub float %i.tt, %i.rj
  %i.tv = call float @llvm.fmuladd.f32(float %i.rj, float %.0, float %i.tu)
  store float %i.tv, ptr %i.ts, align 4
  %indvars.iv.next.i232 = add nuw nsw i64 %indvars.iv.i231, 1 ; 2 uses
  %exitcond.not.i233 = icmp eq i64 %indvars.iv.next.i232, %wide.trip.count.i229
  br i1 %exitcond.not.i233, label %_ZL14accumulate_rgbPA3_fiiffff.exit234, label %.lr.ph.i230, !llvm.loop !24

_ZL14accumulate_rgbPA3_fiiffff.exit234:           ; preds = %.lr.ph.i230, %middle.block368
  invoke fastcc void @_ZL13render_pixelsR8QPainteriiPA3_ff(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.mg, ptr noundef nonnull %i.a, float noundef %i.as)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit234
  %i.tw = fadd float %i.rj, %i.me                 ; 3 uses
  %i.tx = fsub float %i.mo, %i.rj                 ; 4 uses
  %i.ty = fcmp ogt float %i.tx, 1.000000e+00
  br i1 %i.ty, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.tz = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.ua = insertelement <2 x float> %i.tz, float %i.tx, i64 1
  %i.ub = fptosi <2 x float> %i.ua to <2 x i32>
  %i.uc = load i16, ptr %i.rk, align 1
  %i.ud = and i16 %i.uc, 1
  %i.ue = zext nneg i16 %i.ud to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.uf = uitofp nneg i32 %narrow to double
  %i.ug = sitofp <2 x i32> %i.ub to <2 x float>   ; 2 uses
  %i.uh = fdiv <2 x float> %i.ug, %i.fz
  %i.ui = fpext <2 x float> %i.uh to <2 x double> ; 2 uses
  %i.uj = shl nuw nsw i32 %spec.store.select4, %i.ue
  %i.uk = uitofp nneg i32 %i.uj to double
  %i.ul = extractelement <2 x double> %i.ui, i64 0
  store double %i.ul, ptr %2, align 8
  store double %i.uf, ptr %i.ku, align 8
  %i.um = extractelement <2 x double> %i.ui, i64 1
  store double %i.um, ptr %i.kv, align 8
  store double %i.uk, ptr %i.kw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.un = call nnan float @llvm.fmuladd.f32(float %.0, float 8.000000e-01, float 1.000000e-01)
  %i.uo = fmul nnan float %i.un, 2.550000e+02
  %i.up = fptosi float %i.uo to i32               ; 2 uses
  %i.uq = trunc i32 %i.up to i16
  %i.ur = mul i16 %i.uq, 257
  %i.us = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> splat (float 8.000000e-01), <2 x float> splat (float 1.000000e-01))
  %i.ut = fmul nnan <2 x float> %i.us, splat (float 2.550000e+02)
  %i.uu = fptosi <2 x float> %i.ut to <2 x i32>   ; 3 uses
  %shift372 = shufflevector <2 x i32> %i.uu, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = or <2 x i32> %shift372, %i.uu
  %i.uv = extractelement <2 x i32> %foldExtExtBinop373, i64 0
  %i.uw = or i32 %i.uv, %i.up
  %i.ux = icmp ult i32 %i.uw, 256                 ; 4 uses
  %i.uy = zext i1 %i.ux to i32
  store i32 %i.uy, ptr %3, align 4
  %i.uz = sext i1 %i.ux to i16
  %i.va = trunc <2 x i32> %i.uu to <2 x i16>
  %i.vb = mul <2 x i16> %i.va, splat (i16 257)
  %i.vc = insertelement <2 x i1> poison, i1 %i.ux, i64 0
  %i.vd = shufflevector <2 x i1> %i.vc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ve = select <2 x i1> %i.vd, <2 x i16> %i.vb, <2 x i16> zeroinitializer
  %i.vf = select i1 %i.ux, i16 %i.ur, i16 0
  store i16 %i.uz, ptr %i.kx, align 4
  store <2 x i16> %i.ve, ptr %i.ky, align 2
  store i16 %i.vf, ptr %i.kz, align 2
  store i16 0, ptr %i.la, align 4
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef nonnull align 8 dereferenceable(8) dereferenceable_or_null(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(14) %3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.vg = extractelement <2 x float> %i.ug, i64 1 ; 2 uses
  %i.vh = fadd float %i.tw, %i.vg
  %i.vi = fsub float %i.tx, %i.vg
  br label %bb.bu

bb.bt:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit234, %bb.br
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %.0140 = phi float [ %i.vh, %bb.bs ], [ %i.tw, %bb.bq ]
  %.0139 = phi float [ %i.vi, %bb.bs ], [ %i.tx, %bb.bq ] ; 5 uses
  %i.vk = fcmp ogt float %.0139, 0.000000e+00
  br i1 %i.vk, label %.lr.ph.preheader.i237, label %.loopexit

.lr.ph.preheader.i237:                            ; preds = %bb.bu
  %i.vl = load i16, ptr %i.rk, align 1
  %i.vm = and i16 %i.vl, 1
  %.not.i236 = icmp eq i16 %i.vm, 0
  %wide.trip.count.i238 = select i1 %.not.i236, i64 32, i64 %i.rp ; 2 uses
  %i.vn = sub nsw i64 %wide.trip.count.i238, %i.ro ; 3 uses
  %min.iters.check334 = icmp ult i64 %i.vn, 4
  br i1 %min.iters.check334, label %.lr.ph.i239.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph.preheader.i237
  %n.vec336 = and i64 %i.vn, -4                   ; 3 uses
  %i.vo = add nsw i64 %n.vec336, %i.ro
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %.0139, i64 0 ; 3 uses
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %26 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <8 x i32> zeroinitializer
  %27 = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert343 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat344 = shufflevector <4 x float> %broadcast.splatinsert343, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vp = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph335
  %index346 = phi i64 [ 0, %vector.ph335 ], [ %index.next348, %vector.body345 ] ; 2 uses
  %i.vq = add nuw i64 %index346, %i.ro            ; 4 uses
  %i.vr = getelementptr [12 x i8], ptr %i.a, i64 %i.vq ; 4 uses
  %i.vs = getelementptr [12 x i8], ptr %i.a, i64 %i.vq ; 3 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 12
  %i.vu = getelementptr [12 x i8], ptr %i.a, i64 %i.vq ; 3 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 24
  %i.vw = getelementptr [12 x i8], ptr %i.a, i64 %i.vq ; 3 uses
  %i.vx = getelementptr i8, ptr %i.vw, i64 36
  %i.vy = load float, ptr %i.vr, align 4
  %i.vz = load float, ptr %i.vt, align 4
  %i.wa = load float, ptr %i.vv, align 4
  %i.wb = load float, ptr %i.vx, align 4
  %i.wc = insertelement <4 x float> poison, float %i.vy, i64 0
  %i.wd = insertelement <4 x float> %i.wc, float %i.vz, i64 1
  %i.we = insertelement <4 x float> %i.wd, float %i.wa, i64 2
  %i.wf = insertelement <4 x float> %i.we, float %i.wb, i64 3
  %i.wg = getelementptr i8, ptr %i.vr, i64 4
  %i.wh = getelementptr i8, ptr %i.vs, i64 16
  %i.wi = getelementptr i8, ptr %i.vu, i64 28
  %i.wj = getelementptr i8, ptr %i.vw, i64 40
  %i.wk = load float, ptr %i.wg, align 4
  %i.wl = load float, ptr %i.wh, align 4
  %i.wm = load float, ptr %i.wi, align 4
  %i.wn = load float, ptr %i.wj, align 4
  %i.wo = insertelement <4 x float> poison, float %i.wk, i64 0
  %i.wp = insertelement <4 x float> %i.wo, float %i.wl, i64 1
  %i.wq = insertelement <4 x float> %i.wp, float %i.wm, i64 2
  %i.wr = insertelement <4 x float> %i.wq, float %i.wn, i64 3
  %28 = shufflevector <4 x float> %i.wf, <4 x float> %i.wr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %29 = fsub <8 x float> %28, %i.vp
  %i.ws = getelementptr i8, ptr %i.vr, i64 8
  %i.wt = getelementptr i8, ptr %i.vs, i64 20
  %i.wu = getelementptr i8, ptr %i.vu, i64 32
  %i.wv = getelementptr i8, ptr %i.vw, i64 44
  %i.ww = load float, ptr %i.ws, align 4
  %i.wx = load float, ptr %i.wt, align 4
  %i.wy = load float, ptr %i.wu, align 4
  %i.wz = load float, ptr %i.wv, align 4
  %i.xa = insertelement <4 x float> poison, float %i.ww, i64 0
  %i.xb = insertelement <4 x float> %i.xa, float %i.wx, i64 1
  %i.xc = insertelement <4 x float> %i.xb, float %i.wy, i64 2
  %i.xd = insertelement <4 x float> %i.xc, float %i.wz, i64 3
  %i.xe = fsub <4 x float> %i.xd, %broadcast.splat338
  %i.xf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat338, <4 x float> %broadcast.splat344, <4 x float> %i.xe)
  %i.xg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %26, <8 x float> %27, <8 x float> %29)
  %i.xh = shufflevector <4 x float> %i.xf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec347 = shufflevector <8 x float> %i.xg, <8 x float> %i.xh, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec347, ptr %i.vr, align 4
  %index.next348 = add nuw i64 %index346, 4       ; 2 uses
  %i.xi = icmp eq i64 %index.next348, %n.vec336
  br i1 %i.xi, label %middle.block349, label %vector.body345, !llvm.loop !25

middle.block349:                                  ; preds = %vector.body345
  %cmp.n350 = icmp eq i64 %i.vn, %n.vec336
  br i1 %cmp.n350, label %.loopexit.loopexit288, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %.lr.ph.preheader.i237, %middle.block349
  %indvars.iv.i240.ph = phi i64 [ %i.ro, %.lr.ph.preheader.i237 ], [ %i.vo, %middle.block349 ]
  %i.xj = insertelement <2 x float> poison, float %.0139, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %.lr.ph.i239
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i241, %.lr.ph.i239 ], [ %indvars.iv.i240.ph, %.lr.ph.i239.preheader ] ; 2 uses
  %i.xl = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i240 ; 3 uses
  %i.xm = load <2 x float>, ptr %i.xl, align 4
  %i.xn = fsub <2 x float> %i.xm, %i.xk
  %i.xo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.ne, <2 x float> %i.xn)
  store <2 x float> %i.xo, ptr %i.xl, align 4
  %i.xp = getelementptr i8, ptr %i.xl, i64 8      ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4
  %i.xr = fsub float %i.xq, %.0139
  %i.xs = call float @llvm.fmuladd.f32(float %.0139, float %.0, float %i.xr)
  store float %i.xs, ptr %i.xp, align 4
  %indvars.iv.next.i241 = add nuw nsw i64 %indvars.iv.i240, 1 ; 2 uses
  %exitcond.not.i242 = icmp eq i64 %indvars.iv.next.i241, %wide.trip.count.i238
  br i1 %exitcond.not.i242, label %.loopexit.loopexit288, label %.lr.ph.i239, !llvm.loop !26

.loopexit.loopexit288:                            ; preds = %.lr.ph.i239, %middle.block349
  %i.xt = fptosi float %.0140 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i223, %middle.block332, %.loopexit.loopexit288, %_ZN16WirelessTimeline14get_wlan_radioEj.exit221, %bb.bc, %bb.av, %bb.bb, %bb.aw, %bb.bu
  %.5.ph = phi i32 [ %i.xt, %.loopexit.loopexit288 ], [ %.0142285, %_ZN16WirelessTimeline14get_wlan_radioEj.exit221 ], [ %.1143, %bb.bc ], [ %.0142285, %bb.av ], [ -1, %bb.bu ], [ %.0142285, %bb.aw ], [ %.1143, %bb.bb ], [ %i.mg, %middle.block332 ], [ %i.mg, %.lr.ph.i223 ]
  %i.xu = add i32 %.0144283, 1                    ; 2 uses
  %i.xv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8
  %.not182 = icmp ugt i32 %i.xu, %i.xv
  br i1 %.not182, label %_ZL14accumulate_rgbPA3_fiiffff.exit, label %bb.aq, !llvm.loop !27

_ZL14accumulate_rgbPA3_fiiffff.exit:              ; preds = %.loopexit, %bb.ba, %_ZN16WirelessTimeline15find_packet_tsfEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.xw = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.xx = getelementptr i8, ptr %i.xw, i64 20
  %i.xy = getelementptr i8, ptr %i.xw, i64 28
  %i.xz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ya = load <2 x i32>, ptr %i.xy, align 4
  %i.yb = load <2 x i32>, ptr %i.xx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.yc = add <2 x i32> %i.ya, splat (i32 1)
  %i.yd = sub <2 x i32> %i.yc, %i.yb
  %i.ye = sitofp <2 x i32> %i.yd to <2 x double>  ; 2 uses
  store <2 x double> %i.ye, ptr %i.xz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.yf = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store <2 x double> %i.ye, ptr %i.yf, align 8
  invoke void @_ZN14QGraphicsScene6renderEP8QPainterRK6QRectFS4_N2Qt15AspectRatioModeE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %12, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 1)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN14QGraphicsSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bw

bb.bw:                                            ; preds = %bb.j, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.bx:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit
  %i.yg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.by

bb.by:                                            ; preds = %.loopexit278, %.loopexit.split-lp, %bb.at, %bb.az, %bb.bo, %bb.bt, %bb.au, %bb.bx
  %.pn192 = phi { ptr, i32 } [ %i.yg, %bb.bx ], [ %i.mh, %bb.az ], [ %i.lk, %bb.at ], [ %i.ll, %bb.au ], [ %i.vj, %bb.bt ], [ %.pn186, %bb.bo ], [ %lpad.loopexit, %.loopexit278 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN14QGraphicsSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %12) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.as
  %.pn192.pn = phi { ptr, i32 } [ %.pn192, %bb.by ], [ %i.lj, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.m, %bb.o, %bb.ag, %bb.aj, %bb.ak, %bb.bz, %bb.ai, %bb.ah, %bb.p, %bb.n, %bb.l
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.l ], [ %i.dd, %bb.m ], [ %i.de, %bb.n ], [ %i.df, %bb.o ], [ %i.dg, %bb.p ], [ %i.ix, %bb.ag ], [ %.pn192.pn, %bb.bz ], [ %i.iy, %bb.ah ], [ %i.iz, %bb.ai ], [ %i.jb, %bb.ak ], [ %i.ja, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.k
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %i.db, %bb.k ]
  call void @_ZN8QPainterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainterC1EP12QPaintDevice(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK8QPainter6deviceEv(ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef align 8 dereferenceable(12) ptr @_ZNK7QWidget7paletteEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QAbstractScrollArea8viewportEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK10PacketList14getFDataForRowEi(ptr noundef align 8 dereferenceable_or_null(448), i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef align 8 dereferenceable(32), ptr noundef align 4 dereferenceable(14)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN14QGraphicsSceneC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @frame_data_sequence_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal fastcc void @_ZL13render_pixelsR8QPainteriiPA3_ff(ptr noundef align 8 dereferenceable(8) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %class.QRectF, align 8              ; 11 uses
  %5 = alloca %class.pcolor, align 4              ; 12 uses
  %i.a = sitofp i32 %1 to float
  %i.b = fdiv float %i.a, %3
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = fdiv float 1.000000e+00, %3
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.m = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.n = getelementptr [12 x i8], ptr %2, i64 %i.m ; 3 uses
  %i.o = load float, ptr %i.n, align 4            ; 3 uses
  %i.p = getelementptr [12 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.n, i64 4
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %i.p, i64 4
  %i.v = load float, ptr %i.u, align 4
  %i.w = fcmp oeq float %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.n, i64 8
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = getelementptr [12 x i8], ptr %2, i64 %i.m ; 3 uses
  %i.ad = fcmp une float %i.o, 1.000000e+00
  %.phi.trans.insert40 = getelementptr i8, ptr %i.ac, i64 4
  %.pre41 = load float, ptr %.phi.trans.insert40, align 4 ; 2 uses
  %i.ae = fcmp une float %.pre41, 1.000000e+00
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %._crit_edge39, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp une float %i.ag, 1.000000e+00
  br i1 %i.ah, label %._crit_edge39, label %bb.g

._crit_edge39:                                    ; preds = %bb.e, %bb.f
  %i.ai = phi float [ %.pre41, %bb.e ], [ 1.000000e+00, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.aj = trunc nuw nsw i64 %i.m to i32
  %i.ak = sitofp i32 %i.aj to double
  store double %i.c, ptr %4, align 8
  store double %i.ak, ptr %i.f, align 8
  store double %i.e, ptr %i.g, align 8
  store double 1.000000e+00, ptr %i.h, align 8
end_hunk_0
