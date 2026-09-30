Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wireless_timeline?download=true
inline.NumInlined: 817
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16WirelessTimeline10paintEventEP11QPaintEvent:bb.a

bb.av:                                            ; preds = %_ZN16WirelessTimeline14get_wlan_radioEj.exit221
  %i.lm = load ptr, ptr %i.lh, align 8            ; 2 uses
  %.not183 = icmp eq ptr %i.lm, null
  %i.ln = getelementptr i8, ptr %i.lm, i64 24
  %i.lo = getelementptr i8, ptr %i.lh, i64 42
  %.in = select i1 %.not183, ptr %i.lo, ptr %i.ln
  %i.lp = load i8, ptr %.in, align 2
  %i.lq = sext i8 %i.lp to i16
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
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pd = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  %i.pe = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.pf = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next331, %vector.body329 ] ; 2 uses
  %i.pg = add nuw i64 %index330, %i.oz            ; 4 uses
  %i.ph = getelementptr [12 x i8], ptr %i.a, i64 %i.pg ; 4 uses
  %i.pi = getelementptr [12 x i8], ptr %i.a, i64 %i.pg ; 3 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 12
  %i.pk = getelementptr [12 x i8], ptr %i.a, i64 %i.pg ; 3 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 24
  %i.pm = getelementptr [12 x i8], ptr %i.a, i64 %i.pg ; 3 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 36
  %i.po = load float, ptr %i.ph, align 4
  %i.pp = load float, ptr %i.pj, align 4
  %i.pq = load float, ptr %i.pl, align 4
  %i.pr = load float, ptr %i.pn, align 4
  %i.ps = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 1
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 2
  %i.pv = insertelement <4 x float> %i.pu, float %i.pr, i64 3
  %i.pw = getelementptr i8, ptr %i.ph, i64 4
  %i.px = getelementptr i8, ptr %i.pi, i64 16
  %i.py = getelementptr i8, ptr %i.pk, i64 28
  %i.pz = getelementptr i8, ptr %i.pm, i64 40
  %i.qa = load float, ptr %i.pw, align 4
  %i.qb = load float, ptr %i.px, align 4
  %i.qc = load float, ptr %i.py, align 4
  %i.qd = load float, ptr %i.pz, align 4
  %i.qe = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qf = insertelement <4 x float> %i.qe, float %i.qb, i64 1
  %i.qg = insertelement <4 x float> %i.qf, float %i.qc, i64 2
  %i.qh = insertelement <4 x float> %i.qg, float %i.qd, i64 3
  %i.qi = getelementptr i8, ptr %i.ph, i64 8
  %i.qj = getelementptr i8, ptr %i.pi, i64 20
  %i.qk = getelementptr i8, ptr %i.pk, i64 32
  %i.ql = getelementptr i8, ptr %i.pm, i64 44
  %i.qm = load float, ptr %i.qi, align 4
  %i.qn = load float, ptr %i.qj, align 4
  %i.qo = load float, ptr %i.qk, align 4
  %i.qp = load float, ptr %i.ql, align 4
  %i.qq = insertelement <4 x float> poison, float %i.qm, i64 0
  %i.qr = insertelement <4 x float> %i.qq, float %i.qn, i64 1
  %i.qs = insertelement <4 x float> %i.qr, float %i.qo, i64 2
  %i.qt = insertelement <4 x float> %i.qs, float %i.qp, i64 3
  %i.qu = fsub <4 x float> %i.qt, %broadcast.splat
  %i.qv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %broadcast.splat328, <4 x float> %i.qu)
  %i.qw = shufflevector <4 x float> %i.pv, <4 x float> %i.qh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qx = fsub <8 x float> %i.qw, %i.pf
  %i.qy = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.pd, <8 x float> %i.pe, <8 x float> %i.qx)
  %i.qz = shufflevector <4 x float> %i.qv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.qy, <8 x float> %i.qz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.ph, align 4
  %index.next331 = add nuw i64 %index330, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next331, %n.vec
  br i1 %i.ra, label %middle.block332, label %vector.body329, !llvm.loop !21

middle.block332:                                  ; preds = %vector.body329
  %cmp.n = icmp eq i64 %i.pb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i223.preheader

.lr.ph.i223.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block332
  %indvars.iv.i224.ph = phi i64 [ %i.oz, %.lr.ph.preheader.i ], [ %i.pc, %middle.block332 ]
  %i.rb = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %.lr.ph.i223.preheader, %.lr.ph.i223
  %indvars.iv.i224 = phi i64 [ %indvars.iv.next.i225, %.lr.ph.i223 ], [ %indvars.iv.i224.ph, %.lr.ph.i223.preheader ] ; 2 uses
  %i.rd = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i224 ; 3 uses
  %i.re = load <2 x float>, ptr %i.rd, align 4
  %i.rf = fsub <2 x float> %i.re, %i.rc
  %i.rg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.ne, <2 x float> %i.rf)
  store <2 x float> %i.rg, ptr %i.rd, align 4
  %i.rh = getelementptr i8, ptr %i.rd, i64 8      ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4
  %i.rj = fsub float %i.ri, %i.mo
  %i.rk = call float @llvm.fmuladd.f32(float %i.mo, float %.0, float %i.rj)
  store float %i.rk, ptr %i.rh, align 4
  %indvars.iv.next.i225 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %exitcond.not.i226 = icmp eq i64 %indvars.iv.next.i225, %wide.trip.count.i
  br i1 %exitcond.not.i226, label %.loopexit, label %.lr.ph.i223, !llvm.loop !22

.lr.ph.preheader.i228:                            ; preds = %bb.bp
  %i.rl = add i32 %i.mg, 1
  %i.rm = sitofp i32 %i.rl to float
  %i.rn = fsub float %i.rm, %i.me                 ; 6 uses
  %i.ro = getelementptr i8, ptr %i.lc, i64 53     ; 3 uses
  %i.rp = load i16, ptr %i.ro, align 1
  %i.rq = and i16 %i.rp, 1
  %.not.i227 = icmp eq i16 %i.rq, 0
  %i.rr = or disjoint i32 %spec.store.select4, 32
  %narrow = sub nuw nsw i32 32, %spec.store.select4 ; 2 uses
  %i.rs = zext nneg i32 %narrow to i64            ; 8 uses
  %i.rt = zext nneg i32 %i.rr to i64              ; 2 uses
  %wide.trip.count.i229 = select i1 %.not.i227, i64 32, i64 %i.rt ; 2 uses
  %i.ru = sub nsw i64 %wide.trip.count.i229, %i.rs ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.ru, 4
  br i1 %min.iters.check353, label %.lr.ph.i230.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %.lr.ph.preheader.i228
  %n.vec355 = and i64 %i.ru, -4                   ; 3 uses
  %i.rv = add nsw i64 %n.vec355, %i.rs
  %broadcast.splatinsert356 = insertelement <4 x float> poison, float %i.rn, i64 0 ; 3 uses
  %broadcast.splat357 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rw = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <8 x i32> zeroinitializer
  %i.rx = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ry = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph354
  %index365 = phi i64 [ 0, %vector.ph354 ], [ %index.next367, %vector.body364 ] ; 2 uses
  %i.rz = add nuw i64 %index365, %i.rs            ; 4 uses
  %i.sa = getelementptr [12 x i8], ptr %i.a, i64 %i.rz ; 4 uses
  %i.sb = getelementptr [12 x i8], ptr %i.a, i64 %i.rz ; 3 uses
  %i.sc = getelementptr i8, ptr %i.sb, i64 12
  %i.sd = getelementptr [12 x i8], ptr %i.a, i64 %i.rz ; 3 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 24
  %i.sf = getelementptr [12 x i8], ptr %i.a, i64 %i.rz ; 3 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 36
  %i.sh = load float, ptr %i.sa, align 4
  %i.si = load float, ptr %i.sc, align 4
  %i.sj = load float, ptr %i.se, align 4
  %i.sk = load float, ptr %i.sg, align 4
  %i.sl = insertelement <4 x float> poison, float %i.sh, i64 0
  %i.sm = insertelement <4 x float> %i.sl, float %i.si, i64 1
  %i.sn = insertelement <4 x float> %i.sm, float %i.sj, i64 2
  %i.so = insertelement <4 x float> %i.sn, float %i.sk, i64 3
  %i.sp = getelementptr i8, ptr %i.sa, i64 4
  %i.sq = getelementptr i8, ptr %i.sb, i64 16
  %i.sr = getelementptr i8, ptr %i.sd, i64 28
  %i.ss = getelementptr i8, ptr %i.sf, i64 40
  %i.st = load float, ptr %i.sp, align 4
  %i.su = load float, ptr %i.sq, align 4
  %i.sv = load float, ptr %i.sr, align 4
  %i.sw = load float, ptr %i.ss, align 4
  %i.sx = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sy = insertelement <4 x float> %i.sx, float %i.su, i64 1
  %i.sz = insertelement <4 x float> %i.sy, float %i.sv, i64 2
  %i.ta = insertelement <4 x float> %i.sz, float %i.sw, i64 3
  %i.tb = getelementptr i8, ptr %i.sa, i64 8
  %i.tc = getelementptr i8, ptr %i.sb, i64 20
  %i.td = getelementptr i8, ptr %i.sd, i64 32
  %i.te = getelementptr i8, ptr %i.sf, i64 44
  %i.tf = load float, ptr %i.tb, align 4
  %i.tg = load float, ptr %i.tc, align 4
  %i.th = load float, ptr %i.td, align 4
  %i.ti = load float, ptr %i.te, align 4
  %i.tj = insertelement <4 x float> poison, float %i.tf, i64 0
  %i.tk = insertelement <4 x float> %i.tj, float %i.tg, i64 1
  %i.tl = insertelement <4 x float> %i.tk, float %i.th, i64 2
  %i.tm = insertelement <4 x float> %i.tl, float %i.ti, i64 3
  %i.tn = fsub <4 x float> %i.tm, %broadcast.splat357
  %i.to = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat357, <4 x float> %broadcast.splat363, <4 x float> %i.tn)
  %i.tp = shufflevector <4 x float> %i.so, <4 x float> %i.ta, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tq = fsub <8 x float> %i.tp, %i.ry
  %i.tr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.rw, <8 x float> %i.rx, <8 x float> %i.tq)
  %i.ts = shufflevector <4 x float> %i.to, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec366 = shufflevector <8 x float> %i.tr, <8 x float> %i.ts, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec366, ptr %i.sa, align 4
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.tt = icmp eq i64 %index.next367, %n.vec355
  br i1 %i.tt, label %middle.block368, label %vector.body364, !llvm.loop !23

middle.block368:                                  ; preds = %vector.body364
  %cmp.n369 = icmp eq i64 %i.ru, %n.vec355
  br i1 %cmp.n369, label %_ZL14accumulate_rgbPA3_fiiffff.exit234, label %.lr.ph.i230.preheader

.lr.ph.i230.preheader:                            ; preds = %.lr.ph.preheader.i228, %middle.block368
  %indvars.iv.i231.ph = phi i64 [ %i.rs, %.lr.ph.preheader.i228 ], [ %i.rv, %middle.block368 ]
  %i.tu = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.tv = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.preheader, %.lr.ph.i230
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i232, %.lr.ph.i230 ], [ %indvars.iv.i231.ph, %.lr.ph.i230.preheader ] ; 2 uses
  %i.tw = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i231 ; 3 uses
  %i.tx = load <2 x float>, ptr %i.tw, align 4
  %i.ty = fsub <2 x float> %i.tx, %i.tv
  %i.tz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.ne, <2 x float> %i.ty)
  store <2 x float> %i.tz, ptr %i.tw, align 4
  %i.ua = getelementptr i8, ptr %i.tw, i64 8      ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4
  %i.uc = fsub float %i.ub, %i.rn
  %i.ud = call float @llvm.fmuladd.f32(float %i.rn, float %.0, float %i.uc)
  store float %i.ud, ptr %i.ua, align 4
  %indvars.iv.next.i232 = add nuw nsw i64 %indvars.iv.i231, 1 ; 2 uses
  %exitcond.not.i233 = icmp eq i64 %indvars.iv.next.i232, %wide.trip.count.i229
  br i1 %exitcond.not.i233, label %_ZL14accumulate_rgbPA3_fiiffff.exit234, label %.lr.ph.i230, !llvm.loop !24

_ZL14accumulate_rgbPA3_fiiffff.exit234:           ; preds = %.lr.ph.i230, %middle.block368
  invoke fastcc void @_ZL13render_pixelsR8QPainteriiPA3_ff(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.mg, ptr noundef nonnull %i.a, float noundef %i.as)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit234
  %i.ue = fadd float %i.rn, %i.me                 ; 3 uses
  %i.uf = fsub float %i.mo, %i.rn                 ; 4 uses
  %i.ug = fcmp ogt float %i.uf, 1.000000e+00
  br i1 %i.ug, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.uh = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ui = insertelement <2 x float> %i.uh, float %i.uf, i64 1
  %i.uj = fptosi <2 x float> %i.ui to <2 x i32>
  %i.uk = load i16, ptr %i.ro, align 1
  %i.ul = and i16 %i.uk, 1
  %i.um = zext nneg i16 %i.ul to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.un = uitofp nneg i32 %narrow to double
  %i.uo = sitofp <2 x i32> %i.uj to <2 x float>   ; 2 uses
  %i.up = fdiv <2 x float> %i.uo, %i.fz
  %i.uq = fpext <2 x float> %i.up to <2 x double> ; 2 uses
  %i.ur = shl nuw nsw i32 %spec.store.select4, %i.um
  %i.us = uitofp nneg i32 %i.ur to double
  %i.ut = extractelement <2 x double> %i.uq, i64 0
  store double %i.ut, ptr %2, align 8
  store double %i.un, ptr %i.ku, align 8
  %i.uu = extractelement <2 x double> %i.uq, i64 1
  store double %i.uu, ptr %i.kv, align 8
  store double %i.us, ptr %i.kw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.uv = call nnan float @llvm.fmuladd.f32(float %.0, float 8.000000e-01, float 1.000000e-01)
  %i.uw = fmul nnan float %i.uv, 2.550000e+02
  %i.ux = fptosi float %i.uw to i32               ; 2 uses
  %i.uy = trunc i32 %i.ux to i16
  %i.uz = mul i16 %i.uy, 257
  %i.va = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> splat (float 8.000000e-01), <2 x float> splat (float 1.000000e-01))
  %i.vb = fmul nnan <2 x float> %i.va, splat (float 2.550000e+02)
  %i.vc = fptosi <2 x float> %i.vb to <2 x i32>   ; 3 uses
  %shift372 = shufflevector <2 x i32> %i.vc, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = or <2 x i32> %shift372, %i.vc
  %i.vd = extractelement <2 x i32> %foldExtExtBinop373, i64 0
  %i.ve = or i32 %i.vd, %i.ux
  %i.vf = icmp ult i32 %i.ve, 256                 ; 4 uses
  %i.vg = zext i1 %i.vf to i32
  store i32 %i.vg, ptr %3, align 4
  %i.vh = sext i1 %i.vf to i16
  %i.vi = trunc <2 x i32> %i.vc to <2 x i16>
  %i.vj = mul <2 x i16> %i.vi, splat (i16 257)
  %i.vk = insertelement <2 x i1> poison, i1 %i.vf, i64 0
  %i.vl = shufflevector <2 x i1> %i.vk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.vm = select <2 x i1> %i.vl, <2 x i16> %i.vj, <2 x i16> zeroinitializer
  %i.vn = select i1 %i.vf, i16 %i.uz, i16 0
  store i16 %i.vh, ptr %i.kx, align 4
  store <2 x i16> %i.vm, ptr %i.ky, align 2
  store i16 %i.vn, ptr %i.kz, align 2
  store i16 0, ptr %i.la, align 4
  invoke void @_ZN8QPainter8fillRectERK6QRectFRK6QColor(ptr noundef nonnull align 8 dereferenceable(8) dereferenceable_or_null(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(14) %3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.vo = extractelement <2 x float> %i.uo, i64 1 ; 2 uses
  %i.vp = fadd float %i.ue, %i.vo
  %i.vq = fsub float %i.uf, %i.vo
  br label %bb.bu

bb.bt:                                            ; preds = %_ZL14accumulate_rgbPA3_fiiffff.exit234, %bb.br
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs, %bb.bq
  %.0140 = phi float [ %i.vp, %bb.bs ], [ %i.ue, %bb.bq ]
  %.0139 = phi float [ %i.vq, %bb.bs ], [ %i.uf, %bb.bq ] ; 5 uses
  %i.vs = fcmp ogt float %.0139, 0.000000e+00
  br i1 %i.vs, label %.lr.ph.preheader.i237, label %.loopexit

.lr.ph.preheader.i237:                            ; preds = %bb.bu
  %i.vt = load i16, ptr %i.ro, align 1
  %i.vu = and i16 %i.vt, 1
  %.not.i236 = icmp eq i16 %i.vu, 0
  %wide.trip.count.i238 = select i1 %.not.i236, i64 32, i64 %i.rt ; 2 uses
  %i.vv = sub nsw i64 %wide.trip.count.i238, %i.rs ; 3 uses
  %min.iters.check334 = icmp ult i64 %i.vv, 4
  br i1 %min.iters.check334, label %.lr.ph.i239.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph.preheader.i237
  %n.vec336 = and i64 %i.vv, -4                   ; 3 uses
  %i.vw = add nsw i64 %n.vec336, %i.rs
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %.0139, i64 0 ; 3 uses
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert343 = insertelement <4 x float> poison, float %.0, i64 0
  %broadcast.splat344 = shufflevector <4 x float> %broadcast.splatinsert343, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <8 x i32> zeroinitializer
  %i.vy = shufflevector <2 x float> %i.ne, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.vz = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph335
  %index346 = phi i64 [ 0, %vector.ph335 ], [ %index.next348, %vector.body345 ] ; 2 uses
  %i.wa = add nuw i64 %index346, %i.rs            ; 4 uses
  %i.wb = getelementptr [12 x i8], ptr %i.a, i64 %i.wa ; 4 uses
  %i.wc = getelementptr [12 x i8], ptr %i.a, i64 %i.wa ; 3 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 12
  %i.we = getelementptr [12 x i8], ptr %i.a, i64 %i.wa ; 3 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 24
  %i.wg = getelementptr [12 x i8], ptr %i.a, i64 %i.wa ; 3 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 36
  %i.wi = load float, ptr %i.wb, align 4
  %i.wj = load float, ptr %i.wd, align 4
  %i.wk = load float, ptr %i.wf, align 4
  %i.wl = load float, ptr %i.wh, align 4
  %i.wm = insertelement <4 x float> poison, float %i.wi, i64 0
  %i.wn = insertelement <4 x float> %i.wm, float %i.wj, i64 1
  %i.wo = insertelement <4 x float> %i.wn, float %i.wk, i64 2
  %i.wp = insertelement <4 x float> %i.wo, float %i.wl, i64 3
  %i.wq = getelementptr i8, ptr %i.wb, i64 4
  %i.wr = getelementptr i8, ptr %i.wc, i64 16
  %i.ws = getelementptr i8, ptr %i.we, i64 28
  %i.wt = getelementptr i8, ptr %i.wg, i64 40
  %i.wu = load float, ptr %i.wq, align 4
  %i.wv = load float, ptr %i.wr, align 4
  %i.ww = load float, ptr %i.ws, align 4
  %i.wx = load float, ptr %i.wt, align 4
  %i.wy = insertelement <4 x float> poison, float %i.wu, i64 0
  %i.wz = insertelement <4 x float> %i.wy, float %i.wv, i64 1
  %i.xa = insertelement <4 x float> %i.wz, float %i.ww, i64 2
  %i.xb = insertelement <4 x float> %i.xa, float %i.wx, i64 3
  %i.xc = getelementptr i8, ptr %i.wb, i64 8
  %i.xd = getelementptr i8, ptr %i.wc, i64 20
  %i.xe = getelementptr i8, ptr %i.we, i64 32
  %i.xf = getelementptr i8, ptr %i.wg, i64 44
  %i.xg = load float, ptr %i.xc, align 4
  %i.xh = load float, ptr %i.xd, align 4
  %i.xi = load float, ptr %i.xe, align 4
  %i.xj = load float, ptr %i.xf, align 4
  %i.xk = insertelement <4 x float> poison, float %i.xg, i64 0
  %i.xl = insertelement <4 x float> %i.xk, float %i.xh, i64 1
  %i.xm = insertelement <4 x float> %i.xl, float %i.xi, i64 2
  %i.xn = insertelement <4 x float> %i.xm, float %i.xj, i64 3
  %i.xo = fsub <4 x float> %i.xn, %broadcast.splat338
  %i.xp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat338, <4 x float> %broadcast.splat344, <4 x float> %i.xo)
  %i.xq = shufflevector <4 x float> %i.wp, <4 x float> %i.xb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xr = fsub <8 x float> %i.xq, %i.vz
  %i.xs = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vx, <8 x float> %i.vy, <8 x float> %i.xr)
  %i.xt = shufflevector <4 x float> %i.xp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec347 = shufflevector <8 x float> %i.xs, <8 x float> %i.xt, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec347, ptr %i.wb, align 4
  %index.next348 = add nuw i64 %index346, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next348, %n.vec336
  br i1 %i.xu, label %middle.block349, label %vector.body345, !llvm.loop !25

middle.block349:                                  ; preds = %vector.body345
  %cmp.n350 = icmp eq i64 %i.vv, %n.vec336
  br i1 %cmp.n350, label %.loopexit.loopexit288, label %.lr.ph.i239.preheader

.lr.ph.i239.preheader:                            ; preds = %.lr.ph.preheader.i237, %middle.block349
  %indvars.iv.i240.ph = phi i64 [ %i.rs, %.lr.ph.preheader.i237 ], [ %i.vw, %middle.block349 ]
  %i.xv = insertelement <2 x float> poison, float %.0139, i64 0
  %i.xw = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %.lr.ph.i239.preheader, %.lr.ph.i239
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i241, %.lr.ph.i239 ], [ %indvars.iv.i240.ph, %.lr.ph.i239.preheader ] ; 2 uses
  %i.xx = getelementptr [12 x i8], ptr %i.a, i64 %indvars.iv.i240 ; 3 uses
  %i.xy = load <2 x float>, ptr %i.xx, align 4
  %i.xz = fsub <2 x float> %i.xy, %i.xw
  %i.ya = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xw, <2 x float> %i.ne, <2 x float> %i.xz)
  store <2 x float> %i.ya, ptr %i.xx, align 4
  %i.yb = getelementptr i8, ptr %i.xx, i64 8      ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4
  %i.yd = fsub float %i.yc, %.0139
  %i.ye = call float @llvm.fmuladd.f32(float %.0139, float %.0, float %i.yd)
  store float %i.ye, ptr %i.yb, align 4
  %indvars.iv.next.i241 = add nuw nsw i64 %indvars.iv.i240, 1 ; 2 uses
  %exitcond.not.i242 = icmp eq i64 %indvars.iv.next.i241, %wide.trip.count.i238
  br i1 %exitcond.not.i242, label %.loopexit.loopexit288, label %.lr.ph.i239, !llvm.loop !26

.loopexit.loopexit288:                            ; preds = %.lr.ph.i239, %middle.block349
  %i.yf = fptosi float %.0140 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i223, %middle.block332, %.loopexit.loopexit288, %_ZN16WirelessTimeline14get_wlan_radioEj.exit221, %bb.bc, %bb.av, %bb.bb, %bb.aw, %bb.bu
  %.5.ph = phi i32 [ %i.yf, %.loopexit.loopexit288 ], [ %.0142285, %_ZN16WirelessTimeline14get_wlan_radioEj.exit221 ], [ %.1143, %bb.bc ], [ %.0142285, %bb.av ], [ -1, %bb.bu ], [ %.0142285, %bb.aw ], [ %.1143, %bb.bb ], [ %i.mg, %middle.block332 ], [ %i.mg, %.lr.ph.i223 ]
  %i.yg = add i32 %.0144283, 1                    ; 2 uses
  %i.yh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 72), align 8
  %.not182 = icmp ugt i32 %i.yg, %i.yh
  br i1 %.not182, label %_ZL14accumulate_rgbPA3_fiiffff.exit, label %bb.aq, !llvm.loop !27

_ZL14accumulate_rgbPA3_fiiffff.exit:              ; preds = %.loopexit, %bb.ba, %_ZN16WirelessTimeline15find_packet_tsfEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.yi = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yi, i64 20
  %i.yk = getelementptr i8, ptr %i.yi, i64 28
  %i.yl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ym = load <2 x i32>, ptr %i.yk, align 4
  %i.yn = load <2 x i32>, ptr %i.yj, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.yo = add <2 x i32> %i.ym, splat (i32 1)
  %i.yp = sub <2 x i32> %i.yo, %i.yn
  %i.yq = sitofp <2 x i32> %i.yp to <2 x double>  ; 2 uses
  store <2 x double> %i.yq, ptr %i.yl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.yr = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store <2 x double> %i.yq, ptr %i.yr, align 8
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
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.by

bb.by:                                            ; preds = %.loopexit278, %.loopexit.split-lp, %bb.at, %bb.az, %bb.bo, %bb.bt, %bb.au, %bb.bx
  %.pn192 = phi { ptr, i32 } [ %i.ys, %bb.bx ], [ %i.mh, %bb.az ], [ %i.lk, %bb.at ], [ %i.ll, %bb.au ], [ %i.vr, %bb.bt ], [ %.pn186, %bb.bo ], [ %lpad.loopexit, %.loopexit278 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
end_hunk_0
