Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.lc = trunc i64 %indvars.iv826 to i32
  %i.ld = mul i32 %i.mj, %i.lc
  %.reass.us779 = add i32 %i.ld, %invariant.op.us781 ; 3 uses
  %i.le = icmp slt i32 %.reass.us779, 0
  br i1 %i.le, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lf = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.lg = srem i32 %.reass.us779, %i.lf
  %i.lh = sdiv i32 %.reass.us779, %i.lf           ; 2 uses
  %.not225.us = icmp eq i32 %i.lg, 0
  %.not226.us = icmp slt i32 %i.lh, %i.ad
  %or.cond876 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond876, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.li = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !467
  %i.lj = load ptr, ptr %4, align 8, !tbaa !18, !noalias !467
  %i.lk = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !467
  %i.ll = mul i64 %i.lk, %indvars.iv832
  %i.lm = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !467 ; 2 uses
  %i.ln = mul i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ln
  %i.lp = sext i32 %i.li to i64
  %i.lq = trunc i64 %indvars.iv826 to i32
  %i.lr = add i32 %i.ml, %i.lq
  %i.ls = shl nsw i32 %i.lr, 2
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.2196775.us, i64 %i.lt
  %i.lv = mul nsw i64 %i.lp, %i.mm
  %i.lw = mul i64 %i.lv, %i.lm
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lw
  %i.ly = sext i32 %i.lh to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !39
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = load <4 x float>, ptr %i.lu, align 16, !tbaa !245
  %i.me = fmul fast <4 x float> %i.mc, %i.md
  %i.mf = fadd fast <4 x float> %i.me, %.14766.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14766.us, %bb.s ], [ %i.mf, %bb.u ], [ %.14766.us, %bb.t ] ; 2 uses
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1 ; 2 uses
  %exitcond830.not = icmp eq i64 %indvars.iv.next827, %wide.trip.count829
  br i1 %exitcond830.not, label %.loopexit.us, label %bb.s, !llvm.loop !470

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13768.us, %bb.q ], [ %.13768.us, %bb.r ], [ %.13768.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.mg = add nuw nsw i32 %.0188769.us, 1         ; 2 uses
  %exitcond831.not = icmp eq i32 %i.mg, %i.kp
  br i1 %exitcond831.not, label %._crit_edge.us783, label %bb.q, !llvm.loop !471

.preheader.us:                                    ; preds = %bb.r
  %i.mh = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.us780, label %.loopexit.us

.lr.ph.us780:                                     ; preds = %.preheader.us
  %i.mj = load i32, ptr %13, align 4, !tbaa !68
  %i.mk = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us781 = sub i32 %.neg652, %i.mk
  %i.ml = mul nuw nsw i32 %i.mh, %.0188769.us
  %i.mm = sext i32 %i.lb to i64
  %wide.trip.count829 = zext nneg i32 %i.mh to i64
  br label %bb.s

._crit_edge.us783:                                ; preds = %.loopexit.us
  %i.mn = getelementptr inbounds [4 x i8], ptr %.2196775.us, i64 %i.kt
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1 ; 2 uses
  %i.mo = trunc nuw i64 %indvars.iv.next833 to i32
  %i.mp = icmp sgt i32 %i.ac, %i.mo
  br i1 %i.mp, label %.preheader665.us, label %._crit_edge777, !llvm.loop !472

._crit_edge777:                                   ; preds = %._crit_edge.us783, %.preheader665.lr.ph, %.preheader668
  %.12.lcssa = phi <4 x float> [ %.7643.lcssa, %.preheader668 ], [ %.7643.lcssa, %.preheader665.lr.ph ], [ %.16.us, %._crit_edge.us783 ]
  %i.mq = fadd fast <4 x float> %.0620.lcssa, %.6.lcssa
  %i.mr = fadd fast <4 x float> %i.mq, %.12.lcssa ; 10 uses
  %i.ms = load i32, ptr %17, align 4, !tbaa !68
  switch i32 %i.ms, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge777
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge777
  %i.mu = load ptr, ptr %18, align 8, !tbaa !18
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !39
  %i.mw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.mx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mr)
  %i.my = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer
  %i.na = fmul fast <4 x float> %i.mz, %i.mx
  %i.nb = fadd fast <4 x float> %i.na, %i.mw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge777
  %i.nc = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !39
  %i.ne = insertelement <4 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !39
  %i.ni = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> nofpclass(nan inf) %i.nf)
  %i.nl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> nofpclass(nan inf) %i.nj)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge777
  %i.nm = fneg fast <4 x float> %i.mr
  %i.nn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nm, <4 x float> splat (float f0x42B0C0A5))
  %i.no = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.np = fmul fast <4 x float> %i.no, splat (float f0x3FB8AA3B)
  %i.nq = fadd fast <4 x float> %i.np, splat (float 5.000000e-01) ; 2 uses
  %i.nr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nq)
  %i.ns = sitofp fast <4 x i32> %i.nr to <4 x float> ; 2 uses
  %i.nt = fcmp fast olt <4 x float> %i.nq, %i.ns
  %i.nu = select <4 x i1> %i.nt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nv = fsub fast <4 x float> %i.ns, %i.nu      ; 2 uses
  %i.nw = fmul fast <4 x float> %i.nv, splat (float f0x3F317218)
  %i.nx = fsub fast <4 x float> %i.no, %i.nw      ; 8 uses
  %i.ny = fmul fast <4 x float> %i.nx, %i.nx
  %i.nz = fmul fast <4 x float> %i.nx, splat (float f0x39506967)
  %i.oa = fadd fast <4 x float> %i.nz, splat (float f0x3AB743CE)
  %i.ob = fmul fast <4 x float> %i.oa, %i.nx
  %i.oc = fadd fast <4 x float> %i.ob, splat (float f0x3C088908)
  %i.od = fmul fast <4 x float> %i.oc, %i.nx
  %i.oe = fadd fast <4 x float> %i.od, splat (float f0x3D2AA9C1)
  %i.of = fmul fast <4 x float> %i.oe, %i.nx
  %i.og = fadd fast <4 x float> %i.of, splat (float f0x3E2AAAAA)
  %i.oh = fmul fast <4 x float> %i.og, %i.nx
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 5.000000e-01)
  %i.oj = fmul fast <4 x float> %i.ny, %i.oi
  %i.ok = fadd fast <4 x float> %i.nx, %i.oj
  %i.ol = fadd fast <4 x float> %i.ok, splat (float 1.000000e+00)
  %i.om = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv)
  %i.on = shl <4 x i32> %i.om, splat (i32 23)
  %i.oo = add <4 x i32> %i.on, splat (i32 1065353216)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>
  %i.oq = fmul fast <4 x float> %i.ol, %i.op
  %i.or = fadd fast <4 x float> %i.oq, splat (float 1.000000e+00)
  %i.os = fdiv fast <4 x float> splat (float 1.000000e+00), %i.or
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge777
  %i.ot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> splat (float f0x42B0C0A5))
  %i.ou = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ot, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ov = fmul fast <4 x float> %i.ou, splat (float f0x3FB8AA3B)
  %i.ow = fadd fast <4 x float> %i.ov, splat (float 5.000000e-01) ; 2 uses
  %i.ox = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ow)
  %i.oy = sitofp fast <4 x i32> %i.ox to <4 x float> ; 2 uses
  %i.oz = fcmp fast olt <4 x float> %i.ow, %i.oy
  %i.pa = select <4 x i1> %i.oz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pb = fsub fast <4 x float> %i.oy, %i.pa      ; 2 uses
  %i.pc = fmul fast <4 x float> %i.pb, splat (float f0x3F317218)
  %i.pd = fsub fast <4 x float> %i.ou, %i.pc      ; 8 uses
  %i.pe = fmul fast <4 x float> %i.pd, %i.pd
  %i.pf = fmul fast <4 x float> %i.pd, splat (float f0x39506967)
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3AB743CE)
  %i.ph = fmul fast <4 x float> %i.pg, %i.pd
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0x3C088908)
  %i.pj = fmul fast <4 x float> %i.pi, %i.pd
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3D2AA9C1)
  %i.pl = fmul fast <4 x float> %i.pk, %i.pd
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3E2AAAAA)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pd
  %i.po = fadd fast <4 x float> %i.pn, splat (float 5.000000e-01)
  %i.pp = fmul fast <4 x float> %i.pe, %i.po
  %i.pq = fadd fast <4 x float> %i.pd, %i.pp
  %i.pr = fadd fast <4 x float> %i.pq, splat (float 1.000000e+00)
  %i.ps = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pt = shl <4 x i32> %i.ps, splat (i32 23)
  %i.pu = add <4 x i32> %i.pt, splat (i32 1065353216)
  %i.pv = bitcast <4 x i32> %i.pu to <4 x float>
  %i.pw = fmul fast <4 x float> %i.pr, %i.pv
  %i.px = fadd fast <4 x float> %i.pw, splat (float 1.000000e+00) ; 2 uses
  %i.py = fcmp fast ole <4 x float> %i.px, zeroinitializer
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.px, <4 x float> splat (float f0x00800000))
  %i.qa = bitcast <4 x float> %i.pz to <4 x i32>  ; 2 uses
  %i.qb = lshr <4 x i32> %i.qa, splat (i32 23)
  %i.qc = and <4 x i32> %i.qa, splat (i32 -2139095041)
  %i.qd = or disjoint <4 x i32> %i.qc, splat (i32 1056964608)
  %i.qe = bitcast <4 x i32> %i.qd to <4 x float>  ; 3 uses
  %i.qf = add nsw <4 x i32> %i.qb, splat (i32 -127)
  %i.qg = sitofp fast <4 x i32> %i.qf to <4 x float> ; 2 uses
  %i.qh = fadd fast <4 x float> %i.qg, splat (float 1.000000e+00)
  %i.qi = fcmp fast olt <4 x float> %i.qe, splat (float f0x3F3504F3) ; 2 uses
  %i.qj = select <4 x i1> %i.qi, <4 x float> %i.qe, <4 x float> zeroinitializer
  %i.qk = fadd fast <4 x float> %i.qe, splat (float -1.000000e+00)
  %i.ql = select fast <4 x i1> %i.qi, <4 x float> %i.qg, <4 x float> %i.qh
  %i.qm = fadd fast <4 x float> %i.qk, %i.qj      ; 12 uses
  %i.qn = fmul fast <4 x float> %i.qm, %i.qm      ; 2 uses
  %i.qo = fmul fast <4 x float> %i.qm, splat (float f0x3D9021BB)
  %i.qp = fadd fast <4 x float> %i.qo, splat (float f0xBDEBD1B8)
  %i.qq = fmul fast <4 x float> %i.qp, %i.qm
  %i.qr = fadd fast <4 x float> %i.qq, splat (float f0x3DEF251A)
  %i.qs = fmul fast <4 x float> %i.qr, %i.qm
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0xBDFE5D4F)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qm
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3E11E9BF)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qm
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0xBE2AAE50)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qm
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E4CCEAC)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qm
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0xBE7FFFFC)
  %i.rc = fmul fast <4 x float> %i.rb, %i.qm
  %i.rd = fadd fast <4 x float> %i.rc, splat (float f0x3EAAAAAA)
  %i.re = fmul fast <4 x float> %i.qn, %i.qm
  %i.rf = fmul fast <4 x float> %i.re, %i.rd
  %.neg648 = fmul fast <4 x float> %i.qn, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.ql, splat (float f0x3F317218)
  %20 = fadd fast <4 x float> %i.qm, %.neg648
  %i.rg = fadd fast <4 x float> %i.rf, %20
  %i.rh = fadd fast <4 x float> %i.rg, %reass.mul
  %.neg = fmul fast <4 x float> %i.rh, splat (float -2.000000e+00)
  %i.ri = select fast <4 x i1> %i.py, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.rj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ri, <4 x float> splat (float f0x42B0C0A5))
  %i.rk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rl = fmul fast <4 x float> %i.rk, splat (float f0x3FB8AA3B)
  %i.rm = fadd fast <4 x float> %i.rl, splat (float 5.000000e-01) ; 2 uses
  %i.rn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rm)
  %i.ro = sitofp fast <4 x i32> %i.rn to <4 x float> ; 2 uses
  %i.rp = fcmp fast olt <4 x float> %i.rm, %i.ro
  %i.rq = select <4 x i1> %i.rp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rr = fsub fast <4 x float> %i.ro, %i.rq      ; 2 uses
  %i.rs = fmul fast <4 x float> %i.rr, splat (float f0x3F317218)
  %i.rt = fsub fast <4 x float> %i.rk, %i.rs      ; 8 uses
  %i.ru = fmul fast <4 x float> %i.rt, %i.rt
  %i.rv = fmul fast <4 x float> %i.rt, splat (float f0x39506967)
  %i.rw = fadd fast <4 x float> %i.rv, splat (float f0x3AB743CE)
  %i.rx = fmul fast <4 x float> %i.rw, %i.rt
  %i.ry = fadd fast <4 x float> %i.rx, splat (float f0x3C088908)
  %i.rz = fmul fast <4 x float> %i.ry, %i.rt
  %i.sa = fadd fast <4 x float> %i.rz, splat (float f0x3D2AA9C1)
  %i.sb = fmul fast <4 x float> %i.sa, %i.rt
  %i.sc = fadd fast <4 x float> %i.sb, splat (float f0x3E2AAAAA)
  %i.sd = fmul fast <4 x float> %i.sc, %i.rt
  %i.se = fadd fast <4 x float> %i.sd, splat (float 5.000000e-01)
  %i.sf = fmul fast <4 x float> %i.ru, %i.se
  %i.sg = fadd fast <4 x float> %i.rt, %i.sf
  %i.sh = fadd fast <4 x float> %i.sg, splat (float 1.000000e+00)
  %i.si = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rr)
  %i.sj = shl <4 x i32> %i.si, splat (i32 23)
  %i.sk = add <4 x i32> %i.sj, splat (i32 1065353216)
  %i.sl = bitcast <4 x i32> %i.sk to <4 x float>
  %i.sm = fmul fast <4 x float> %i.sh, %i.sl
  %i.sn = fadd fast <4 x float> %i.sm, splat (float 1.000000e+00)
  %i.so = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sn
  %i.sp = fadd fast <4 x float> %i.so, splat (float -1.000000e+00)
  %i.sq = fmul fast <4 x float> %i.sp, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge777
  %i.sr = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !39
  %i.st = insertelement <4 x float> poison, float %i.ss, i64 0
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !39
  %i.sx = insertelement <4 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sz = fmul fast <4 x float> %i.su, %i.mr
  %i.ta = fadd fast <4 x float> %i.sz, %i.sy
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> zeroinitializer)
  %i.tc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.tb, <4 x float> splat (float 1.000000e+00))
  %i.td = fmul fast <4 x float> %i.tc, %i.mr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge777
  %.0.i = phi nsz <4 x float> [ %i.td, %bb.y ], [ %i.mt, %bb.w ], [ %i.nb, %.noexc308 ], [ %i.nl, %bb.x ], [ %i.os, %.noexc309 ], [ %i.sq, %.noexc310 ], [ %i.mr, %._crit_edge777 ] ; 5 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1200785, align 1, !tbaa !245
  %i.te = getelementptr inbounds nuw i8, ptr %.1200785, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1200785, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.tf = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.1200785, i64 %i.tf
  store float %.sroa.0.4.vec.extract, ptr %i.tg, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.tf, 3
  %i.th = getelementptr inbounds nuw i8, ptr %.1200785, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.th, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx222 = mul i64 %i.tf, 12
  %i.ti = getelementptr inbounds nuw i8, ptr %.1200785, i64 %.idx222
  store float %.sroa.0.12.vec.extract, ptr %i.ti, align 4, !tbaa !39
  %i.tj = getelementptr inbounds nuw i8, ptr %.1200785, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.tj, %bb.z ], [ %.1200785, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.te, %.thread ] ; 2 uses
  %i.tk = add nuw nsw i32 %.0197786, 1            ; 2 uses
  %exitcond835.not = icmp eq i32 %i.tk, %i.af
  br i1 %exitcond835.not, label %._crit_edge, label %bb.c, !llvm.loop !473

._crit_edge792:                                   ; preds = %._crit_edge789.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge792, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not802 = icmp sgt i32 %i.k, %i.j
  br i1 %.not802, label %._crit_edge804, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge804

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge801.split
  %.0202803 = phi i32 [ %i.bi, %._crit_edge801.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader682.lr.ph, label %._crit_edge801.split

.preheader682.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0202803, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.nr = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.ns = srem i32 %.reass.us791, %i.nr
  %i.nt = sdiv i32 %.reass.us791, %i.nr           ; 2 uses
  %.not225.us = icmp eq i32 %i.ns, 0
  %.not226.us = icmp slt i32 %i.nt, %i.ad
  %or.cond888 = select i1 %.not225.us, i1 %.not226.us, i1 false
  br i1 %or.cond888, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nu = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !497
  %i.nv = load ptr, ptr %4, align 8, !tbaa !18, !noalias !497
  %i.nw = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !497
  %i.nx = mul i64 %i.nw, %indvars.iv844
  %i.ny = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !497 ; 2 uses
  %i.nz = mul i64 %i.nx, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nz
  %i.ob = sext i32 %i.nu to i64
  %i.oc = trunc i64 %indvars.iv838 to i32
  %i.od = add i32 %i.pe, %i.oc
  %i.oe = shl nsw i32 %i.od, 2
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.2196787.us, i64 %i.of
  %i.oh = mul nsw i64 %i.ob, %i.pf
  %i.oi = mul i64 %i.oh, %i.ny
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oi
  %i.ok = sext i32 %i.nt to i64
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !328
  %i.on = zext i16 %i.om to i32
  %i.oo = shl nuw i32 %i.on, 16
  %i.op = insertelement <4 x i32> poison, i32 %i.oo, i64 0
  %i.oq = bitcast <4 x i32> %i.op to <4 x float>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = load i64, ptr %i.og, align 1, !tbaa !245
  %i.ot = insertelement <2 x i64> poison, i64 %i.os, i64 0
  %i.ou = bitcast <2 x i64> %i.ot to <8 x i16>
  %i.ov = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ou, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ow = bitcast <8 x i16> %i.ov to <4 x float>
  %i.ox = fmul fast <4 x float> %i.or, %i.ow
  %i.oy = fadd fast <4 x float> %i.ox, %.14778.us
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.15.us = phi nsz <4 x float> [ %.14778.us, %bb.s ], [ %i.oy, %bb.u ], [ %.14778.us, %bb.t ] ; 2 uses
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %.loopexit.us, label %bb.s, !llvm.loop !500

.loopexit.us:                                     ; preds = %bb.v, %.preheader.us, %bb.r, %bb.q
  %.16.us = phi nsz <4 x float> [ %.13780.us, %bb.q ], [ %.13780.us, %bb.r ], [ %.13780.us, %.preheader.us ], [ %.15.us, %bb.v ] ; 3 uses
  %i.oz = add nuw nsw i32 %.0188781.us, 1         ; 2 uses
  %exitcond843.not = icmp eq i32 %i.oz, %i.nb
  br i1 %exitcond843.not, label %._crit_edge.us795, label %bb.q, !llvm.loop !501

.preheader.us:                                    ; preds = %bb.r
  %i.pa = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.us792, label %.loopexit.us

.lr.ph.us792:                                     ; preds = %.preheader.us
  %i.pc = load i32, ptr %13, align 4, !tbaa !68
  %i.pd = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us793 = sub i32 %.neg664, %i.pd
  %i.pe = mul nuw nsw i32 %i.pa, %.0188781.us
  %i.pf = sext i32 %i.nn to i64
  %wide.trip.count841 = zext nneg i32 %i.pa to i64
  br label %bb.s

._crit_edge.us795:                                ; preds = %.loopexit.us
  %i.pg = getelementptr inbounds [2 x i8], ptr %.2196787.us, i64 %i.nf
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 1 ; 2 uses
  %i.ph = trunc nuw i64 %indvars.iv.next845 to i32
  %i.pi = icmp sgt i32 %i.ac, %i.ph
  br i1 %i.pi, label %.preheader677.us, label %._crit_edge789, !llvm.loop !502

._crit_edge789:                                   ; preds = %._crit_edge.us795, %.preheader677.lr.ph, %.preheader680
  %.12.lcssa = phi <4 x float> [ %.7655.lcssa, %.preheader680 ], [ %.7655.lcssa, %.preheader677.lr.ph ], [ %.16.us, %._crit_edge.us795 ]
  %i.pj = fadd fast <4 x float> %.0632.lcssa, %.6.lcssa
  %i.pk = fadd fast <4 x float> %i.pj, %.12.lcssa ; 10 uses
  %i.pl = load i32, ptr %17, align 4, !tbaa !68
  switch i32 %i.pl, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.w
    i32 2, label %.noexc308
    i32 3, label %bb.x
    i32 4, label %.noexc309
    i32 5, label %.noexc310
    i32 6, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge789
  %i.pm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc308:                                        ; preds = %._crit_edge789
  %i.pn = load ptr, ptr %18, align 8, !tbaa !18
  %i.po = load float, ptr %i.pn, align 4, !tbaa !39
  %i.pp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.pk)
  %i.pr = insertelement <4 x float> poison, float %i.po, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul fast <4 x float> %i.ps, %i.pq
  %i.pu = fadd fast <4 x float> %i.pt, %i.pp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.x:                                             ; preds = %._crit_edge789
  %i.pv = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !39
  %i.px = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !39
  %i.qb = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> nofpclass(nan inf) %i.py)
  %i.qe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qd, <4 x float> nofpclass(nan inf) %i.qc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc309:                                        ; preds = %._crit_edge789
  %i.qf = fneg fast <4 x float> %i.pk
  %i.qg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qf, <4 x float> splat (float f0x42B0C0A5))
  %i.qh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.qi = fmul fast <4 x float> %i.qh, splat (float f0x3FB8AA3B)
  %i.qj = fadd fast <4 x float> %i.qi, splat (float 5.000000e-01) ; 2 uses
  %i.qk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qj)
  %i.ql = sitofp fast <4 x i32> %i.qk to <4 x float> ; 2 uses
  %i.qm = fcmp fast olt <4 x float> %i.qj, %i.ql
  %i.qn = select <4 x i1> %i.qm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qo = fsub fast <4 x float> %i.ql, %i.qn      ; 2 uses
  %i.qp = fmul fast <4 x float> %i.qo, splat (float f0x3F317218)
  %i.qq = fsub fast <4 x float> %i.qh, %i.qp      ; 8 uses
  %i.qr = fmul fast <4 x float> %i.qq, %i.qq
  %i.qs = fmul fast <4 x float> %i.qq, splat (float f0x39506967)
  %i.qt = fadd fast <4 x float> %i.qs, splat (float f0x3AB743CE)
  %i.qu = fmul fast <4 x float> %i.qt, %i.qq
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0x3C088908)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qq
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3D2AA9C1)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qq
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0x3E2AAAAA)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qq
  %i.rb = fadd fast <4 x float> %i.ra, splat (float 5.000000e-01)
  %i.rc = fmul fast <4 x float> %i.qr, %i.rb
  %i.rd = fadd fast <4 x float> %i.qq, %i.rc
  %i.re = fadd fast <4 x float> %i.rd, splat (float 1.000000e+00)
  %i.rf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.rg = shl <4 x i32> %i.rf, splat (i32 23)
  %i.rh = add <4 x i32> %i.rg, splat (i32 1065353216)
  %i.ri = bitcast <4 x i32> %i.rh to <4 x float>
  %i.rj = fmul fast <4 x float> %i.re, %i.ri
  %i.rk = fadd fast <4 x float> %i.rj, splat (float 1.000000e+00)
  %i.rl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge789
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pk, <4 x float> splat (float f0x42B0C0A5))
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rn, splat (float f0x3FB8AA3B)
  %i.rp = fadd fast <4 x float> %i.ro, splat (float 5.000000e-01) ; 2 uses
  %i.rq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rp)
  %i.rr = sitofp fast <4 x i32> %i.rq to <4 x float> ; 2 uses
  %i.rs = fcmp fast olt <4 x float> %i.rp, %i.rr
  %i.rt = select <4 x i1> %i.rs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ru = fsub fast <4 x float> %i.rr, %i.rt      ; 2 uses
  %i.rv = fmul fast <4 x float> %i.ru, splat (float f0x3F317218)
  %i.rw = fsub fast <4 x float> %i.rn, %i.rv      ; 8 uses
  %i.rx = fmul fast <4 x float> %i.rw, %i.rw
  %i.ry = fmul fast <4 x float> %i.rw, splat (float f0x39506967)
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3AB743CE)
  %i.sa = fmul fast <4 x float> %i.rz, %i.rw
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3C088908)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rw
  %i.sd = fadd fast <4 x float> %i.sc, splat (float f0x3D2AA9C1)
  %i.se = fmul fast <4 x float> %i.sd, %i.rw
  %i.sf = fadd fast <4 x float> %i.se, splat (float f0x3E2AAAAA)
  %i.sg = fmul fast <4 x float> %i.sf, %i.rw
  %i.sh = fadd fast <4 x float> %i.sg, splat (float 5.000000e-01)
  %i.si = fmul fast <4 x float> %i.rx, %i.sh
  %i.sj = fadd fast <4 x float> %i.rw, %i.si
  %i.sk = fadd fast <4 x float> %i.sj, splat (float 1.000000e+00)
  %i.sl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru)
  %i.sm = shl <4 x i32> %i.sl, splat (i32 23)
  %i.sn = add <4 x i32> %i.sm, splat (i32 1065353216)
  %i.so = bitcast <4 x i32> %i.sn to <4 x float>
  %i.sp = fmul fast <4 x float> %i.sk, %i.so
  %i.sq = fadd fast <4 x float> %i.sp, splat (float 1.000000e+00) ; 2 uses
  %i.sr = fcmp fast ole <4 x float> %i.sq, zeroinitializer
  %i.ss = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sq, <4 x float> splat (float f0x00800000))
  %i.st = bitcast <4 x float> %i.ss to <4 x i32>  ; 2 uses
  %i.su = lshr <4 x i32> %i.st, splat (i32 23)
  %i.sv = and <4 x i32> %i.st, splat (i32 -2139095041)
  %i.sw = or disjoint <4 x i32> %i.sv, splat (i32 1056964608)
  %i.sx = bitcast <4 x i32> %i.sw to <4 x float>  ; 3 uses
  %i.sy = add nsw <4 x i32> %i.su, splat (i32 -127)
  %i.sz = sitofp fast <4 x i32> %i.sy to <4 x float> ; 2 uses
  %i.ta = fadd fast <4 x float> %i.sz, splat (float 1.000000e+00)
  %i.tb = fcmp fast olt <4 x float> %i.sx, splat (float f0x3F3504F3) ; 2 uses
  %i.tc = select <4 x i1> %i.tb, <4 x float> %i.sx, <4 x float> zeroinitializer
  %i.td = fadd fast <4 x float> %i.sx, splat (float -1.000000e+00)
  %i.te = select fast <4 x i1> %i.tb, <4 x float> %i.sz, <4 x float> %i.ta
  %i.tf = fadd fast <4 x float> %i.td, %i.tc      ; 12 uses
  %i.tg = fmul fast <4 x float> %i.tf, %i.tf      ; 2 uses
  %i.th = fmul fast <4 x float> %i.tf, splat (float f0x3D9021BB)
  %i.ti = fadd fast <4 x float> %i.th, splat (float f0xBDEBD1B8)
  %i.tj = fmul fast <4 x float> %i.ti, %i.tf
  %i.tk = fadd fast <4 x float> %i.tj, splat (float f0x3DEF251A)
  %i.tl = fmul fast <4 x float> %i.tk, %i.tf
  %i.tm = fadd fast <4 x float> %i.tl, splat (float f0xBDFE5D4F)
  %i.tn = fmul fast <4 x float> %i.tm, %i.tf
  %i.to = fadd fast <4 x float> %i.tn, splat (float f0x3E11E9BF)
  %i.tp = fmul fast <4 x float> %i.to, %i.tf
  %i.tq = fadd fast <4 x float> %i.tp, splat (float f0xBE2AAE50)
  %i.tr = fmul fast <4 x float> %i.tq, %i.tf
  %i.ts = fadd fast <4 x float> %i.tr, splat (float f0x3E4CCEAC)
  %i.tt = fmul fast <4 x float> %i.ts, %i.tf
  %i.tu = fadd fast <4 x float> %i.tt, splat (float f0xBE7FFFFC)
  %i.tv = fmul fast <4 x float> %i.tu, %i.tf
  %i.tw = fadd fast <4 x float> %i.tv, splat (float f0x3EAAAAAA)
  %i.tx = fmul fast <4 x float> %i.tg, %i.tf
  %i.ty = fmul fast <4 x float> %i.tx, %i.tw
  %.neg660 = fmul fast <4 x float> %i.tg, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.te, splat (float f0x3F317218)
  %20 = fadd fast <4 x float> %i.tf, %.neg660
  %i.tz = fadd fast <4 x float> %i.ty, %20
  %i.ua = fadd fast <4 x float> %i.tz, %reass.mul
  %.neg = fmul fast <4 x float> %i.ua, splat (float -2.000000e+00)
  %i.ub = select fast <4 x i1> %i.sr, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.uc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ub, <4 x float> splat (float f0x42B0C0A5))
  %i.ud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.uc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ue = fmul fast <4 x float> %i.ud, splat (float f0x3FB8AA3B)
  %i.uf = fadd fast <4 x float> %i.ue, splat (float 5.000000e-01) ; 2 uses
  %i.ug = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uf)
  %i.uh = sitofp fast <4 x i32> %i.ug to <4 x float> ; 2 uses
  %i.ui = fcmp fast olt <4 x float> %i.uf, %i.uh
  %i.uj = select <4 x i1> %i.ui, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uk = fsub fast <4 x float> %i.uh, %i.uj      ; 2 uses
  %i.ul = fmul fast <4 x float> %i.uk, splat (float f0x3F317218)
  %i.um = fsub fast <4 x float> %i.ud, %i.ul      ; 8 uses
  %i.un = fmul fast <4 x float> %i.um, %i.um
  %i.uo = fmul fast <4 x float> %i.um, splat (float f0x39506967)
  %i.up = fadd fast <4 x float> %i.uo, splat (float f0x3AB743CE)
  %i.uq = fmul fast <4 x float> %i.up, %i.um
  %i.ur = fadd fast <4 x float> %i.uq, splat (float f0x3C088908)
  %i.us = fmul fast <4 x float> %i.ur, %i.um
  %i.ut = fadd fast <4 x float> %i.us, splat (float f0x3D2AA9C1)
  %i.uu = fmul fast <4 x float> %i.ut, %i.um
  %i.uv = fadd fast <4 x float> %i.uu, splat (float f0x3E2AAAAA)
  %i.uw = fmul fast <4 x float> %i.uv, %i.um
  %i.ux = fadd fast <4 x float> %i.uw, splat (float 5.000000e-01)
  %i.uy = fmul fast <4 x float> %i.un, %i.ux
  %i.uz = fadd fast <4 x float> %i.um, %i.uy
  %i.va = fadd fast <4 x float> %i.uz, splat (float 1.000000e+00)
  %i.vb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uk)
  %i.vc = shl <4 x i32> %i.vb, splat (i32 23)
  %i.vd = add <4 x i32> %i.vc, splat (i32 1065353216)
  %i.ve = bitcast <4 x i32> %i.vd to <4 x float>
  %i.vf = fmul fast <4 x float> %i.va, %i.ve
  %i.vg = fadd fast <4 x float> %i.vf, splat (float 1.000000e+00)
  %i.vh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.vg
  %i.vi = fadd fast <4 x float> %i.vh, splat (float -1.000000e+00)
  %i.vj = fmul fast <4 x float> %i.vi, %i.pk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge789
  %i.vk = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !39
  %i.vm = insertelement <4 x float> poison, float %i.vl, i64 0
  %i.vn = shufflevector <4 x float> %i.vm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !39
  %i.vq = insertelement <4 x float> poison, float %i.vp, i64 0
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = fmul fast <4 x float> %i.vn, %i.pk
  %i.vt = fadd fast <4 x float> %i.vs, %i.vr
  %i.vu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vt, <4 x float> zeroinitializer)
  %i.vv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.vu, <4 x float> splat (float 1.000000e+00))
  %i.vw = fmul fast <4 x float> %i.vv, %i.pk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge789
  %.0.i = phi nsz <4 x float> [ %i.vw, %bb.y ], [ %i.pm, %bb.w ], [ %i.pu, %.noexc308 ], [ %i.qe, %bb.x ], [ %i.rl, %.noexc309 ], [ %i.vj, %.noexc310 ], [ %i.pk, %._crit_edge789 ] ; 2 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.vx = bitcast <4 x float> %.0.i to <8 x i16>
  %i.vy = shufflevector <8 x i16> %i.vx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vz = bitcast <8 x i16> %i.vy to <4 x float>
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.wb = bitcast <4 x float> %i.wa to <2 x i64>
  %i.wc = extractelement <2 x i64> %i.wb, i64 0
  store i64 %i.wc, ptr %.1200797, align 1, !tbaa !245
  %i.wd = getelementptr inbounds nuw i8, ptr %.1200797, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.we = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.wf = extractelement <8 x i16> %i.we, i64 1
  store i16 %i.wf, ptr %.1200797, align 2, !tbaa !328
  %i.wg = extractelement <8 x i16> %i.we, i64 3
  %i.wh = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %.1200797, i64 %i.wh
  store i16 %i.wg, ptr %i.wi, align 2, !tbaa !328
  %i.wj = extractelement <8 x i16> %i.we, i64 5
  %.idx = shl i64 %i.wh, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %.1200797, i64 %.idx
  store i16 %i.wj, ptr %i.wk, align 2, !tbaa !328
  %i.wl = extractelement <8 x i16> %i.we, i64 7
  %.idx222 = mul i64 %i.wh, 6
  %i.wm = getelementptr inbounds nuw i8, ptr %.1200797, i64 %.idx222
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !328
  %i.wn = getelementptr inbounds nuw i8, ptr %.1200797, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.wn, %bb.z ], [ %.1200797, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.wd, %.thread ] ; 2 uses
  %i.wo = add nuw nsw i32 %.0197798, 1            ; 2 uses
  %exitcond847.not = icmp eq i32 %i.wo, %i.af
  br i1 %exitcond847.not, label %._crit_edge, label %bb.c, !llvm.loop !503

._crit_edge804:                                   ; preds = %._crit_edge801.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge804, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn17Deconvolution_x86D2Ev}
!22 = !{!23, !6, i64 352}
!23 = !{!"_ZTSN4ncnn13DeconvolutionE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !12, i64 280, !6, i64 352, !12, i64 360, !12, i64 432}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
end_hunk_1
