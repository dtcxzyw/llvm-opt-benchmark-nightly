Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnnL23deformableconv2d_packedERKSt6vectorINS_3MatESaIS1_EERS1_RKS1_S8_iiiiiiiiiS8_RKNS_6OptionE.omp_outlined:bb.a
  %i.li = phi float [ %i.lh, %bb.v ], [ 0.000000e+00, %.lr.ph643.split.us.us ] ; 2 uses
  br i1 %.0235.us, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv706
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !38
  %i.ll = fmul fast float %i.lk, %.0239.us
  %i.lm = fadd fast float %i.ll, %i.li
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ln = phi float [ %i.lm, %bb.x ], [ %i.li, %bb.w ] ; 2 uses
  br i1 %.0234.us, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv706
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !38
  %i.lq = fmul fast float %i.lp, %.0238.us
  %i.lr = fadd fast float %i.lq, %i.ln
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ls = phi float [ %i.lr, %bb.z ], [ %i.ln, %bb.y ] ; 2 uses
  br i1 %.0233.us, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv706
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !38
  %i.lv = fmul fast float %i.lu, %.0237.us
  %i.lw = fadd fast float %i.lv, %i.ls
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.us.us = phi nsz float [ %i.ls, %bb.aa ], [ %i.lw, %bb.ab ] ; 2 uses
  %i.lx = fmul fast float %.0.us.us, %.1242.us
  %.1.us.us = select nsz i1 %i.bw, float %i.lx, float %.0.us.us
  %i.ly = load float, ptr %.5254640.us.us, align 4, !tbaa !38
  %i.lz = fmul fast float %.1.us.us, %i.ly
  %i.ma = fadd fast float %i.lz, %.4641.us.us     ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.5254640.us.us, i64 4
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next707, %wide.trip.count711
  br i1 %exitcond712.not, label %.loopexit.us.loopexit, label %.lr.ph643.split.us.us, !llvm.loop !140

.loopexit.us.loopexit:                            ; preds = %bb.ac
  %scevgep708 = getelementptr i8, ptr %.4253.us, i64 4
  %i.mc = add nsw i32 %i.ko, -1
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl nuw nsw i64 %i.md, 2
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.me
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.m, %.lr.ph.split.us670.preheader, %.lr.ph643.split.us675.preheader, %.loopexit.us.loopexit, %.preheader.us, %.loopexit632.us
  %.6624.us763 = phi <4 x float> [ %.6624.us, %.loopexit632.us ], [ %.6624.us, %.preheader.us ], [ %.6624.us, %.loopexit.us.loopexit ], [ %.6624.us, %.lr.ph643.split.us675.preheader ], [ %.4622648.us, %.lr.ph.split.us670.preheader ], [ %.4622648.us, %bb.m ] ; 2 uses
  %.6.us = phi ptr [ %.4253.us, %.loopexit632.us ], [ %.4253.us, %.preheader.us ], [ %scevgep709, %.loopexit.us.loopexit ], [ %scevgep705, %.lr.ph643.split.us675.preheader ], [ %scevgep700, %.lr.ph.split.us670.preheader ], [ %.2251649.us, %bb.m ] ; 2 uses
  %.5.us = phi nsz float [ %.3650.us, %.loopexit632.us ], [ %.3650.us, %.preheader.us ], [ %i.ma, %.loopexit.us.loopexit ], [ %.3650.us, %.lr.ph643.split.us675.preheader ], [ %.3650.us, %.lr.ph.split.us670.preheader ], [ %.3650.us, %bb.m ] ; 2 uses
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %._crit_edge.us, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !141

._crit_edge.us:                                   ; preds = %.loopexit.us, %.thread626.us
  %.4622.lcssa.us = phi <4 x float> [ %.3621654.us, %.thread626.us ], [ %.6624.us763, %.loopexit.us ] ; 3 uses
  %.2251.lcssa.us = phi ptr [ %.1250655.us, %.thread626.us ], [ %.6.us, %.loopexit.us ] ; 2 uses
  %.3.lcssa.us = phi float [ %.2656.us, %.thread626.us ], [ %.5.us, %.loopexit.us ] ; 3 uses
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next719, %i.cb
  br i1 %exitcond722.not, label %._crit_edge659.us, label %bb.f, !llvm.loop !142

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %.thread626.us
  %i.mf = load ptr, ptr %25, align 8, !tbaa !19, !noalias !153
  %i.mg = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !153
  %i.mh = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !153
  %factor.op.mul.us = mul i64 %i.mg, %i.mh
  %i.mi = load i32, ptr %12, align 4, !tbaa !55   ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 4
  %i.mk = insertelement <4 x float> poison, float %.1242.us, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = icmp eq i32 %i.mi, 1
  br label %_ZN4ncnn3MatD2Ev.exit.us

._crit_edge659.us:                                ; preds = %._crit_edge.us
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge667, label %.preheader633.us, !llvm.loop !145

._crit_edge667:                                   ; preds = %._crit_edge659.us, %.preheader633.lr.ph, %bb.e
  %.2620.lcssa = phi <4 x float> [ %.1619, %bb.e ], [ %.1619, %.preheader633.lr.ph ], [ %.4622.lcssa.us, %._crit_edge659.us ] ; 10 uses
  %.1248.lcssa = phi float [ %.0247, %bb.e ], [ %.0247, %.preheader633.lr.ph ], [ %.3.lcssa.us, %._crit_edge659.us ] ; 13 uses
  %i.mn = load i32, ptr %12, align 4, !tbaa !55   ; 2 uses
  %i.mo = icmp eq i32 %i.mn, 4
  br i1 %i.mo, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge667
  %i.mp = load i32, ptr %27, align 4, !tbaa !55
  switch i32 %i.mp, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ae
    i32 2, label %.noexc334
    i32 3, label %bb.af
    i32 4, label %.noexc335
    i32 5, label %.noexc336
    i32 6, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.mq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc334:                                        ; preds = %bb.ad
  %i.mr = load ptr, ptr %28, align 8, !tbaa !19
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !38
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2620.lcssa)
  %i.mu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.2620.lcssa)
  %i.mv = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mx = fmul fast <4 x float> %i.mw, %i.mu
  %i.my = fadd fast <4 x float> %i.mx, %i.mt
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %bb.ad
  %i.mz = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !38
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !38
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> nofpclass(nan inf) %i.nc)
  %i.ni = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nh, <4 x float> nofpclass(nan inf) %i.ng)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc335:                                        ; preds = %bb.ad
  %i.nj = fneg fast <4 x float> %.2620.lcssa
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nj, <4 x float> splat (float f0x42B0C0A5))
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nm = fmul fast <4 x float> %i.nl, splat (float f0x3FB8AA3B)
  %i.nn = fadd fast <4 x float> %i.nm, splat (float 5.000000e-01) ; 2 uses
  %i.no = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nn)
  %i.np = sitofp fast <4 x i32> %i.no to <4 x float> ; 2 uses
  %i.nq = fcmp fast olt <4 x float> %i.nn, %i.np
  %i.nr = select <4 x i1> %i.nq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ns = fsub fast <4 x float> %i.np, %i.nr      ; 2 uses
  %i.nt = fmul fast <4 x float> %i.ns, splat (float f0x3F317218)
  %i.nu = fsub fast <4 x float> %i.nl, %i.nt      ; 8 uses
  %i.nv = fmul fast <4 x float> %i.nu, %i.nu
  %i.nw = fmul fast <4 x float> %i.nu, splat (float f0x39506967)
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3AB743CE)
  %i.ny = fmul fast <4 x float> %i.nx, %i.nu
  %i.nz = fadd fast <4 x float> %i.ny, splat (float f0x3C088908)
  %i.oa = fmul fast <4 x float> %i.nz, %i.nu
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0x3D2AA9C1)
  %i.oc = fmul fast <4 x float> %i.ob, %i.nu
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3E2AAAAA)
  %i.oe = fmul fast <4 x float> %i.od, %i.nu
  %i.of = fadd fast <4 x float> %i.oe, splat (float 5.000000e-01)
  %i.og = fmul fast <4 x float> %i.nv, %i.of
  %i.oh = fadd fast <4 x float> %i.nu, splat (float 1.000000e+00)
  %i.oi = fadd fast <4 x float> %i.oh, %i.og
  %i.oj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ns)
  %i.ok = shl <4 x i32> %i.oj, splat (i32 23)
  %i.ol = add <4 x i32> %i.ok, splat (i32 1065353216)
  %i.om = bitcast <4 x i32> %i.ol to <4 x float>
  %i.on = fmul fast <4 x float> %i.oi, %i.om
  %i.oo = fadd fast <4 x float> %i.on, splat (float 1.000000e+00)
  %i.op = fdiv fast <4 x float> splat (float 1.000000e+00), %i.oo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc336:                                        ; preds = %bb.ad
  %i.oq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.2620.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.or = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.os = fmul fast <4 x float> %i.or, splat (float f0x3FB8AA3B)
  %i.ot = fadd fast <4 x float> %i.os, splat (float 5.000000e-01) ; 2 uses
  %i.ou = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ot)
  %i.ov = sitofp fast <4 x i32> %i.ou to <4 x float> ; 2 uses
  %i.ow = fcmp fast olt <4 x float> %i.ot, %i.ov
  %i.ox = select <4 x i1> %i.ow, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oy = fsub fast <4 x float> %i.ov, %i.ox      ; 2 uses
  %i.oz = fmul fast <4 x float> %i.oy, splat (float f0x3F317218)
  %i.pa = fsub fast <4 x float> %i.or, %i.oz      ; 8 uses
  %i.pb = fmul fast <4 x float> %i.pa, %i.pa
  %i.pc = fmul fast <4 x float> %i.pa, splat (float f0x39506967)
  %i.pd = fadd fast <4 x float> %i.pc, splat (float f0x3AB743CE)
  %i.pe = fmul fast <4 x float> %i.pd, %i.pa
  %i.pf = fadd fast <4 x float> %i.pe, splat (float f0x3C088908)
  %i.pg = fmul fast <4 x float> %i.pf, %i.pa
  %i.ph = fadd fast <4 x float> %i.pg, splat (float f0x3D2AA9C1)
  %i.pi = fmul fast <4 x float> %i.ph, %i.pa
  %i.pj = fadd fast <4 x float> %i.pi, splat (float f0x3E2AAAAA)
  %i.pk = fmul fast <4 x float> %i.pj, %i.pa
  %i.pl = fadd fast <4 x float> %i.pk, splat (float 5.000000e-01)
  %i.pm = fmul fast <4 x float> %i.pb, %i.pl
  %i.pn = fadd fast <4 x float> %i.pa, splat (float 1.000000e+00)
  %i.po = fadd fast <4 x float> %i.pn, %i.pm
  %i.pp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oy)
  %i.pq = shl <4 x i32> %i.pp, splat (i32 23)
  %i.pr = add <4 x i32> %i.pq, splat (i32 1065353216)
  %i.ps = bitcast <4 x i32> %i.pr to <4 x float>
  %i.pt = fmul fast <4 x float> %i.po, %i.ps
  %i.pu = fadd fast <4 x float> %i.pt, splat (float 1.000000e+00) ; 2 uses
  %i.pv = fcmp fast ole <4 x float> %i.pu, zeroinitializer
  %i.pw = call <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pu, <4 x float> splat (float f0x00800000))
  %i.px = bitcast <4 x float> %i.pw to <4 x i32>  ; 2 uses
  %i.py = lshr <4 x i32> %i.px, splat (i32 23)
  %i.pz = and <4 x i32> %i.px, splat (i32 8388607)
  %i.qa = or disjoint <4 x i32> %i.pz, splat (i32 1056964608)
  %i.qb = bitcast <4 x i32> %i.qa to <4 x float>  ; 3 uses
  %i.qc = add nsw <4 x i32> %i.py, splat (i32 -127)
  %i.qd = sitofp fast <4 x i32> %i.qc to <4 x float> ; 2 uses
  %i.qe = fadd fast <4 x float> %i.qd, splat (float 1.000000e+00)
  %i.qf = fcmp fast olt <4 x float> %i.qb, splat (float f0x3F3504F3) ; 2 uses
  %i.qg = select <4 x i1> %i.qf, <4 x float> %i.qb, <4 x float> zeroinitializer
  %i.qh = fadd fast <4 x float> %i.qb, splat (float -1.000000e+00)
  %i.qi = select fast <4 x i1> %i.qf, <4 x float> %i.qd, <4 x float> %i.qe
  %i.qj = fadd fast <4 x float> %i.qh, %i.qg      ; 12 uses
  %i.qk = fmul fast <4 x float> %i.qj, %i.qj
  %i.ql = fmul fast <4 x float> %i.qj, splat (float f0x3D9021BB)
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0xBDEBD1B8)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qj
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0x3DEF251A)
  %i.qp = fmul fast <4 x float> %i.qo, %i.qj
  %i.qq = fadd fast <4 x float> %i.qp, splat (float f0xBDFE5D4F)
  %i.qr = fmul fast <4 x float> %i.qq, %i.qj
  %i.qs = fadd fast <4 x float> %i.qr, splat (float f0x3E11E9BF)
  %i.qt = fmul fast <4 x float> %i.qs, %i.qj
  %i.qu = fadd fast <4 x float> %i.qt, splat (float f0xBE2AAE50)
  %i.qv = fmul fast <4 x float> %i.qu, %i.qj
  %i.qw = fadd fast <4 x float> %i.qv, splat (float f0x3E4CCEAC)
  %i.qx = fmul fast <4 x float> %i.qw, %i.qj
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0xBE7FFFFC)
  %i.qz = fmul fast <4 x float> %i.qy, %i.qj
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0x3EAAAAAA)
  %i.rb = fmul fast <4 x float> %i.ra, %i.qj
  %reass.mul = fmul fast <4 x float> %i.qi, splat (float f0x3F317218)
  %reass.add630 = fadd fast <4 x float> %i.rb, splat (float -5.000000e-01)
  %reass.mul631 = fmul fast <4 x float> %i.qk, %reass.add630
  %i.rc = fadd fast <4 x float> %reass.mul, %i.qj
  %i.rd = fadd fast <4 x float> %i.rc, %reass.mul631
  %.neg = fmul fast <4 x float> %i.rd, splat (float -2.000000e+00)
  %i.re = select fast <4 x i1> %i.pv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.rf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.re, <4 x float> splat (float f0x42B0C0A5))
  %i.rg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rh = fmul fast <4 x float> %i.rg, splat (float f0x3FB8AA3B)
  %i.ri = fadd fast <4 x float> %i.rh, splat (float 5.000000e-01) ; 2 uses
  %i.rj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ri)
  %i.rk = sitofp fast <4 x i32> %i.rj to <4 x float> ; 2 uses
  %i.rl = fcmp fast olt <4 x float> %i.ri, %i.rk
  %i.rm = select <4 x i1> %i.rl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rn = fsub fast <4 x float> %i.rk, %i.rm      ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rn, splat (float f0x3F317218)
  %i.rp = fsub fast <4 x float> %i.rg, %i.ro      ; 8 uses
  %i.rq = fmul fast <4 x float> %i.rp, %i.rp
  %i.rr = fmul fast <4 x float> %i.rp, splat (float f0x39506967)
  %i.rs = fadd fast <4 x float> %i.rr, splat (float f0x3AB743CE)
  %i.rt = fmul fast <4 x float> %i.rs, %i.rp
  %i.ru = fadd fast <4 x float> %i.rt, splat (float f0x3C088908)
  %i.rv = fmul fast <4 x float> %i.ru, %i.rp
  %i.rw = fadd fast <4 x float> %i.rv, splat (float f0x3D2AA9C1)
  %i.rx = fmul fast <4 x float> %i.rw, %i.rp
  %i.ry = fadd fast <4 x float> %i.rx, splat (float f0x3E2AAAAA)
  %i.rz = fmul fast <4 x float> %i.ry, %i.rp
  %i.sa = fadd fast <4 x float> %i.rz, splat (float 5.000000e-01)
  %i.sb = fmul fast <4 x float> %i.rq, %i.sa
  %i.sc = fadd fast <4 x float> %i.rp, splat (float 1.000000e+00)
  %i.sd = fadd fast <4 x float> %i.sc, %i.sb
  %i.se = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rn)
  %i.sf = shl <4 x i32> %i.se, splat (i32 23)
  %i.sg = add <4 x i32> %i.sf, splat (i32 1065353216)
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>
  %i.si = fmul fast <4 x float> %i.sd, %i.sh
  %i.sj = fadd fast <4 x float> %i.si, splat (float 1.000000e+00)
  %i.sk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sj
  %i.sl = fadd fast <4 x float> %i.sk, splat (float -1.000000e+00)
  %i.sm = fmul fast <4 x float> %i.sl, %.2620.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %bb.ad
  %i.sn = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !38
  %i.sp = insertelement <4 x float> poison, float %i.so, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !38
  %i.st = insertelement <4 x float> poison, float %i.ss, i64 0
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sv = fmul fast <4 x float> %i.sq, %.2620.lcssa
  %i.sw = fadd fast <4 x float> %i.sv, %i.su
  %i.sx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sw, <4 x float> zeroinitializer)
  %i.sy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.sx, <4 x float> splat (float 1.000000e+00))
  %i.sz = fmul fast <4 x float> %i.sy, %.2620.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.ag, %.noexc336, %.noexc335, %bb.af, %.noexc334, %bb.ae, %bb.ad
  %.0.i = phi nsz <4 x float> [ %i.sz, %bb.ag ], [ %i.mq, %bb.ae ], [ %i.my, %.noexc334 ], [ %i.ni, %bb.af ], [ %i.op, %.noexc335 ], [ %i.sm, %.noexc336 ], [ %.2620.lcssa, %bb.ad ]
  %i.ta = load i32, ptr %3, align 4, !tbaa !55
  %i.tb = mul nsw i32 %i.ta, %i.ae
  %i.tc = add nsw i32 %i.tb, %i.aj
  %i.td = shl nsw i32 %i.tc, 2
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.te
  store <4 x float> %.0.i, ptr %i.tf, align 16, !tbaa !66
  %.pr = load i32, ptr %12, align 4, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %._crit_edge667
  %i.tg = phi i32 [ %.pr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.mn, %._crit_edge667 ]
  %i.th = icmp eq i32 %i.tg, 1
  br i1 %i.th, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ti = load i32, ptr %27, align 4, !tbaa !55
  switch i32 %i.ti, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.an
    i32 5, label %bb.ao
    i32 6, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.tj = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.1248.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %bb.ai
  %i.tk = load ptr, ptr %28, align 8, !tbaa !19
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !38
  %i.tm = fcmp fast ogt float %.1248.lcssa, 0.000000e+00
  %i.tn = select fast i1 %i.tm, float 1.000000e+00, float %i.tl
  %i.to = fmul fast float %i.tn, %.1248.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.al:                                            ; preds = %bb.ai
  %i.tp = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !38
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !38 ; 2 uses
  %.0616 = call nnan ninf nsz float @llvm.maxnum.f32(float %.1248.lcssa, float %i.tq) ; 2 uses
  %i.tt = fcmp fast ogt float %.0616, %i.ts
  br i1 %i.tt, label %bb.am, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.am:                                            ; preds = %bb.al
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.an:                                            ; preds = %bb.ai
  %.sroa.speculated503 = call nnan ninf nsz float @llvm.minnum.f32(float %.1248.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated503, float f0xC2B0C0A5)
  %i.tu = fneg fast float %.sroa.speculated
  %i.tv = call fast float @llvm.exp.f32(float %i.tu)
  %i.tw = fadd fast float %i.tv, 1.000000e+00
  %i.tx = fdiv fast float 1.000000e+00, %i.tw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ao:                                            ; preds = %bb.ai
  %i.ty = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.1248.lcssa)
  %i.tz = fadd fast float %i.ty, 1.000000e+00
  %i.ua = call fast float @llvm.log.f32(float %i.tz)
  %i.ub = call fast float @llvm.tanh.f32(float %i.ua)
  %i.uc = fmul fast float %i.ub, %.1248.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %bb.ai
  %i.ud = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !38 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !38 ; 2 uses
  %i.uh = fneg fast float %i.ug
  %i.ui = fdiv fast float %i.uh, %i.ue            ; 2 uses
  %i.uj = fcmp fast olt float %.1248.lcssa, %i.ui
  br i1 %i.uj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.uk = fdiv fast float 1.000000e+00, %i.ue
  %i.ul = fadd fast float %i.ui, %i.uk
  %i.um = fcmp fast ogt float %.1248.lcssa, %i.ul
  br i1 %i.um, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.un = fmul fast float %i.ue, %.1248.lcssa
  %i.uo = fadd fast float %i.un, %i.ug
  %i.up = fmul fast float %i.uo, %.1248.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ap
  %.1617 = phi nsz float [ %.1248.lcssa, %bb.ai ], [ %i.tj, %bb.aj ], [ %i.to, %bb.ak ], [ %i.ts, %bb.am ], [ %.0616, %bb.al ], [ %i.tx, %bb.an ], [ %i.uc, %bb.ao ], [ %i.up, %bb.ar ], [ %.1248.lcssa, %bb.aq ], [ 0.000000e+00, %bb.ap ]
  %i.uq = load i32, ptr %3, align 4, !tbaa !55
  %i.ur = sext i32 %i.uq to i64
  %i.us = mul nsw i64 %indvars.iv734, %i.ur
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.us
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv731
  store float %.1617, ptr %i.uu, align 4, !tbaa !38
  br label %bb.as

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.ah
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %i.uv = load i32, ptr %8, align 4, !tbaa !55    ; 2 uses
  %i.uw = sext i32 %i.uv to i64
  %i.ux = icmp slt i64 %indvars.iv.next729, %i.uw
  br i1 %i.ux, label %.noexc326, label %._crit_edge.loopexit, !llvm.loop !146

._crit_edge689:                                   ; preds = %._crit_edge685, %.preheader634.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge689, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn16DeformableConv2DE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !16, i64 264, !16, i64 336, !16, i64 408}
!36 = !{!35, !7, i64 260}
!37 = !{!"float", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN4ncnn5LayerE", !12, i64 0}
!40 = !{!"_ZTSN4ncnn20DeformableConv2D_x86E", !35, i64 0, !39, i64 480, !16, i64 488, !39, i64 560}
!41 = !{!40, !39, i64 480}
!42 = !{!35, !7, i64 212}
!43 = !{!35, !7, i64 216}
!44 = !{!35, !7, i64 208}
!45 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!46 = !{!45, !21, i64 39}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!45, !21, i64 29}
!50 = !{!40, !39, i64 560}
!51 = !{!16, !7, i64 44}
!52 = !{!16, !14, i64 16}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!16, !7, i64 24}
!55 = !{!7, !7, i64 0}
!56 = !{!16, !7, i64 56}
!57 = !{!30, !29, i64 0}
!58 = !{!21, !21, i64 0}
!59 = !{!16, !7, i64 48}
!60 = !{!35, !7, i64 220}
!61 = !{!35, !7, i64 224}
!62 = !{!35, !7, i64 236}
!63 = !{!35, !7, i64 228}
!64 = !{!35, !7, i64 244}
!65 = !{!35, !7, i64 232}
!66 = !{!6, !6, i64 0}
!67 = !{!"p1 float", !12, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"llvm.loop.unswitch.partial.disable"}
!70 = !{!16, !7, i64 52}
!71 = !{!16, !7, i64 40}
!72 = !{i64 2, i64 -1, i64 -1, i1 true}
!73 = !{!72}
!74 = !{ptr @_ZN4ncnn20DeformableConv2D_x86D2Ev}
!75 = distinct !{null}
!76 = distinct !{!76, !53}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !53}
!79 = distinct !{null, null}
!80 = distinct !{!80, !53}
!81 = distinct !{!81, !53}
!82 = distinct !{!82, !53}
!83 = distinct !{!83, !53}
!84 = !{!35, !7, i64 256}
!85 = !{!35, !7, i64 252}
!86 = !{!12, !12, i64 0}
!87 = !{!45, !21, i64 0}
!88 = !{!30, !29, i64 8}
!89 = !{!35, !7, i64 240}
!90 = !{!35, !7, i64 248}
!91 = !{!45, !15, i64 8}
!92 = !{!45, !15, i64 16}
!93 = !{!45, !7, i64 4}
!94 = !{!15, !15, i64 0}
!95 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58, i64 3, i64 1, !58, i64 4, i64 4, !55, i64 8, i64 8, !94, i64 16, i64 8, !94, i64 24, i64 4, !55, i64 28, i64 1, !58, i64 29, i64 1, !58, i64 30, i64 1, !58, i64 31, i64 1, !58, i64 32, i64 1, !58, i64 33, i64 1, !58, i64 34, i64 1, !58, i64 35, i64 1, !58, i64 36, i64 1, !58, i64 37, i64 1, !58, i64 38, i64 1, !58, i64 39, i64 1, !58, i64 40, i64 4, !55, i64 44, i64 1, !58, i64 45, i64 1, !58, i64 46, i64 1, !58, i64 47, i64 1, !58, i64 48, i64 1, !66, i64 49, i64 1, !58, i64 50, i64 1, !58, i64 51, i64 1, !58, i64 52, i64 1, !58, i64 53, i64 1, !58, i64 54, i64 1, !58, i64 55, i64 1, !58, i64 56, i64 1, !58, i64 57, i64 1, !58, i64 58, i64 1, !58, i64 59, i64 1, !58, i64 60, i64 1, !58, i64 61, i64 1, !58, i64 62, i64 1, !58, i64 63, i64 1, !58}
!96 = !{!34, !21, i64 11}
!97 = distinct !{!97, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!98 = distinct !{!98, !97, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !53, !69}
!101 = distinct !{!101, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!102 = distinct !{!102, !101, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!104 = distinct !{!104, !103, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53, !69}
!107 = distinct !{!107, !53}
!108 = !{!98}
!109 = !{!102}
!110 = !{!104}
!111 = distinct !{!111, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!112 = distinct !{!112, !111, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !69}
!114 = distinct !{!114, !53, !69}
!115 = distinct !{!115, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!116 = distinct !{!116, !115, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !117, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!119 = distinct !{!119, !53}
!120 = distinct !{!120, !53}
!121 = distinct !{!121, !53}
!122 = !{!112}
!123 = !{!116}
!124 = !{!118}
!125 = distinct !{!125, !69}
!126 = distinct !{!126, !53, !69}
!127 = distinct !{!127, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!128 = distinct !{!128, !127, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!130 = distinct !{!130, !129, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!132 = distinct !{!132, !131, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!134 = distinct !{!134, !133, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!136 = distinct !{!136, !135, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!138 = distinct !{!138, !137, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!139 = distinct !{!139, !53}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!144 = distinct !{!144, !143, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!145 = distinct !{!145, !53}
!146 = distinct !{!146, !53}
!147 = !{!128}
!148 = !{!130}
!149 = !{!132}
!150 = !{!134}
!151 = !{!136}
!152 = !{!138}
!153 = !{!144}
end_hunk_0
