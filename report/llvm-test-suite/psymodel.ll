Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/psymodel?download=true
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@L3psycho_anal:bb.a
  %i.jp = sub nuw nsw i64 251, %index1685         ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 1024), i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -12 ; 2 uses
  %wide.load1686.1 = load <4 x float>, ptr %i.jr, align 16, !tbaa !82 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 4096), i64 %i.jp
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -12 ; 2 uses
  %wide.load1688.1 = load <4 x float>, ptr %i.jt, align 16, !tbaa !82 ; 2 uses
  %i.ju = fadd <4 x float> %wide.load1686.1, %wide.load1688.1
  %reverse1690.1.a = fmul <4 x float> %i.ju, splat (float f0x3F3504F3)
  store <4 x float> %reverse1690.1.a, ptr %i.jr, align 16, !tbaa !82
  %i.jv = fsub <4 x float> %wide.load1686.1, %wide.load1688.1
  %reverse1691.1 = fmul <4 x float> %i.jv, splat (float f0x3F3504F3)
  store <4 x float> %reverse1691.1, ptr %i.jt, align 16, !tbaa !82
  %index.next1692.1 = add nuw nsw i64 %index1685, 8 ; 2 uses
  %i.jw = icmp eq i64 %index.next1692.1, 256
  br i1 %i.jw, label %vector.body1672, label %vector.body1684, !llvm.loop !36

vector.body1672:                                  ; preds = %vector.body1684, %vector.body1672
  %index1673 = phi i64 [ %index.next1680.1, %vector.body1672 ], [ 0, %vector.body1684 ] ; 3 uses
  %i.jx = sub nuw nsw i64 255, %index1673         ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.wsamp_S, i64 %i.jx
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -12 ; 2 uses
  %wide.load1674 = load <4 x float>, ptr %i.jz, align 16, !tbaa !82 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 3072), i64 %i.jx
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -12 ; 2 uses
  %wide.load1676 = load <4 x float>, ptr %i.kb, align 16, !tbaa !82 ; 2 uses
  %i.kc = fadd <4 x float> %wide.load1674, %wide.load1676
  %reverse1678.a = fmul <4 x float> %i.kc, splat (float f0x3F3504F3)
  store <4 x float> %reverse1678.a, ptr %i.jz, align 16, !tbaa !82
  %i.kd = fsub <4 x float> %wide.load1674, %wide.load1676
  %reverse1679 = fmul <4 x float> %i.kd, splat (float f0x3F3504F3)
  store <4 x float> %reverse1679, ptr %i.kb, align 16, !tbaa !82
  %i.ke = sub nuw nsw i64 251, %index1673         ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.wsamp_S, i64 %i.ke
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -12 ; 2 uses
  %wide.load1674.1 = load <4 x float>, ptr %i.kg, align 16, !tbaa !82 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 3072), i64 %i.ke
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -12 ; 2 uses
  %wide.load1676.1 = load <4 x float>, ptr %i.ki, align 16, !tbaa !82 ; 2 uses
  %i.kj = fadd <4 x float> %wide.load1674.1, %wide.load1676.1
  %reverse1678.1.a = fmul <4 x float> %i.kj, splat (float f0x3F3504F3)
  store <4 x float> %reverse1678.1.a, ptr %i.kg, align 16, !tbaa !82
  %i.kk = fsub <4 x float> %wide.load1674.1, %wide.load1676.1
  %reverse1679.1 = fmul <4 x float> %i.kk, splat (float f0x3F3504F3)
  store <4 x float> %reverse1679.1, ptr %i.ki, align 16, !tbaa !82
  %index.next1680.1 = add nuw nsw i64 %index1673, 8 ; 2 uses
  %i.kl = icmp eq i64 %index.next1680.1, 256
  br i1 %i.kl, label %.loopexit960, label %vector.body1672, !llvm.loop !37

.loopexit960:                                     ; preds = %vector.body1672, %bb.q, %bb.p
  %i.km = load float, ptr %i.hl, align 16, !tbaa !82 ; 8 uses
  %i.kn = fmul float %i.km, %i.km                 ; 2 uses
  store float %i.kn, ptr @L3psycho_anal.energy, align 16, !tbaa !82
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1398
  br label %bb.r

.preheader958:                                    ; preds = %bb.r
  store float %i.mg, ptr %i.ko, align 4, !tbaa !82
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hk, i64 2048 ; 5 uses
  %i.kq = load float, ptr %i.kp, align 16, !tbaa !82 ; 2 uses
  %i.kr = fmul float %i.kq, %i.kq
  store float %i.kr, ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), align 8, !tbaa !82
  br label %vector.body1660

vector.body1660:                                  ; preds = %vector.body1660, %.preheader958
  %index1661 = phi i64 [ 0, %.preheader958 ], [ %index.next1668, %vector.body1660 ] ; 3 uses
  %i.ks = sub i64 127, %index1661
  %i.kt = or disjoint i64 %index1661, 1           ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load1662.a = load <4 x float>, ptr %i.ku, align 4, !tbaa !82 ; 2 uses
  %wide.load1663.a = load <4 x float>, ptr %i.kv, align 4, !tbaa !82 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ks ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 500
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 484
  %wide.load1664.a = load <4 x float>, ptr %i.kx, align 16, !tbaa !82 ; 2 uses
  %wide.load1665 = load <4 x float>, ptr %i.ky, align 16, !tbaa !82 ; 2 uses
  %i.kz = fmul <4 x float> %wide.load1664.a, %wide.load1664.a
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lb = fmul <4 x float> %wide.load1665, %wide.load1665
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1662.a, <4 x float> %wide.load1662.a, <4 x float> %i.la)
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1663.a, <4 x float> %wide.load1663.a, <4 x float> %i.lc)
  %i.lf = fmul <4 x float> %i.ld, splat (float 5.000000e-01)
  %i.lg = fmul <4 x float> %i.le, splat (float 5.000000e-01)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), i64 %i.kt ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x float> %i.lf, ptr %i.lh, align 4, !tbaa !82
  store <4 x float> %i.lg, ptr %i.li, align 4, !tbaa !82
  %index.next1668 = add nuw i64 %index1661, 8     ; 2 uses
  %i.lj = icmp eq i64 %index.next1668, 128
  br i1 %i.lj, label %middle.block1669, label %vector.body1660, !llvm.loop !38

bb.r:                                             ; preds = %bb.r, %.loopexit960
  %indvars.iv1295 = phi i64 [ 511, %.loopexit960 ], [ %indvars.iv.next1296.1, %bb.r ] ; 5 uses
  %i.lk = phi float [ %i.kn, %.loopexit960 ], [ %i.mg, %bb.r ]
  %i.ll = sub nuw nsw i64 512, %indvars.iv1295    ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !82 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv1295
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2048
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !82 ; 2 uses
  %i.lr = fmul float %i.lq, %i.lq
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lr)
  %i.lt = fmul float %i.ls, 5.000000e-01          ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %i.ll
  store float %i.lt, ptr %i.lu, align 4, !tbaa !82
  %i.lv = fadd float %i.lk, %i.lt
  %indvars.iv.next1296 = add nsw i64 %indvars.iv1295, -1 ; 2 uses
  %i.lw = sub nsw i64 513, %indvars.iv1295        ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.lw
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !82 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next1296
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2048
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !82 ; 2 uses
  %i.mc = fmul float %i.mb, %i.mb
  %i.md = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.mc)
  %i.me = fmul float %i.md, 5.000000e-01          ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %i.lw
  store float %i.me, ptr %i.mf, align 4, !tbaa !82
  %i.mg = fadd float %i.lv, %i.me                 ; 2 uses
  %indvars.iv.next1296.1 = add nsw i64 %indvars.iv1295, -2
  %.not1517.1 = icmp eq i64 %indvars.iv.next1296, 0
  br i1 %.not1517.1, label %.preheader958, label %bb.r, !llvm.loop !39

.lr.ph1038:                                       ; preds = %.preheader957
  %i.mh = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.ax_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2052 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.bx_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2052 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.rx_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2052 ; 3 uses
  %i.mn = load float, ptr %i.mi, align 4, !tbaa !82 ; 2 uses
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !82 ; 2 uses
  %i.mp = load float, ptr %i.mm, align 4, !tbaa !82 ; 3 uses
  %i.mq = load float, ptr %i.mh, align 8, !tbaa !82 ; 4 uses
  store float %i.mq, ptr %i.mi, align 4, !tbaa !82
  %i.mr = load float, ptr %i.mj, align 8, !tbaa !82 ; 4 uses
  store float %i.mr, ptr %i.mk, align 4, !tbaa !82
  %i.ms = load float, ptr %i.ml, align 8, !tbaa !82 ; 5 uses
  store float %i.ms, ptr %i.mm, align 4, !tbaa !82
  store float %i.km, ptr %i.mh, align 8, !tbaa !82
  store float %i.km, ptr %i.mj, align 8, !tbaa !82
  %i.mt = load float, ptr @L3psycho_anal.energy, align 16, !tbaa !82
  %sqrtf921.peel = tail call float @sqrtf(float noundef %i.mt) #11 ; 2 uses
  store float %sqrtf921.peel, ptr %i.ml, align 8, !tbaa !82
  %i.mu = fcmp une float %i.ms, 0.000000e+00
  br i1 %i.mu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph1038
  %i.mv = fmul float %i.mq, %i.mr
  %i.mw = fneg float %i.mr
  %i.mx = fmul float %i.mr, %i.mw
  %i.my = tail call float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mx)
  %i.mz = fmul float %i.my, 5.000000e-01
  %i.na = fmul float %i.ms, %i.ms
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph1038
  %.0851.peel = phi float [ %i.mv, %bb.s ], [ 1.000000e+00, %.lr.ph1038 ] ; 3 uses
  %.0849.peel = phi float [ %i.mz, %bb.s ], [ 0.000000e+00, %.lr.ph1038 ] ; 3 uses
  %.0846.peel = phi float [ %i.na, %bb.s ], [ 1.000000e+00, %.lr.ph1038 ] ; 2 uses
  %i.nb = fcmp une float %i.mp, 0.000000e+00
  br i1 %i.nb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nc = fadd float %.0851.peel, %.0849.peel
  %i.nd = fadd float %i.mn, %i.mo
  %i.ne = fmul float %i.nd, %i.nc
  %i.nf = fmul float %i.ne, 5.000000e-01          ; 2 uses
  %i.ng = fneg float %i.mn
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.ng, float %.0851.peel, float %i.nf)
  %i.ni = fneg float %i.mo
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ni, float %.0849.peel, float %i.nf)
  %i.nk = fmul float %i.mp, %.0846.peel
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1852.peel = phi float [ %i.nj, %bb.u ], [ %.0851.peel, %bb.t ]
  %.1850.peel = phi float [ %i.nh, %bb.u ], [ %.0849.peel, %bb.t ]
  %.1847.peel = phi float [ %i.nk, %bb.u ], [ %.0846.peel, %bb.t ]
  %i.nl = fneg float %i.mp
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.ms, float 2.000000e+00, float %i.nl) ; 2 uses
  %i.nn = tail call float @llvm.fabs.f32(float %i.nm)
  %i.no = fadd float %i.nn, %sqrtf921.peel        ; 3 uses
  %i.np = fcmp une float %i.no, 0.000000e+00
  br i1 %i.np, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nq = fadd float %i.km, %i.km
  %i.nr = fneg float %i.nm
  %i.ns = fdiv float %i.nr, %.1847.peel           ; 2 uses
  %i.nt = fmul float %.1852.peel, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nq, float 5.000000e-01, float %i.nt) ; 2 uses
  %i.nv = fsub float %i.km, %i.km
  %i.nw = fmul float %.1850.peel, %i.ns
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nv, float 5.000000e-01, float %i.nw) ; 2 uses
  %i.ny = fmul float %i.nx, %i.nx
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.nu, float %i.ny)
  %i.oa = fpext float %i.nz to double
  %sqrt.peel = tail call double @sqrt(double noundef %i.oa) #11, !tbaa !7
  %i.ob = fpext float %i.no to double
  %i.oc = fdiv double %sqrt.peel, %i.ob
  %i.od = fptrunc double %i.oc to float
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2848.peel = phi float [ %i.od, %bb.w ], [ %i.no, %bb.v ]
  store float %.2848.peel, ptr @L3psycho_anal.cw, align 16, !tbaa !82
  %.b.peel = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  br i1 %.b.peel, label %.peel.next, label %.preheader956

middle.block1669:                                 ; preds = %vector.body1660
  %i.oe = getelementptr inbounds nuw i8, ptr %i.hk, i64 1024 ; 5 uses
  %i.of = load float, ptr %i.oe, align 16, !tbaa !82 ; 2 uses
  %i.og = fmul float %i.of, %i.of
  store float %i.og, ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), align 4, !tbaa !82
  br label %vector.body1648

vector.body1648:                                  ; preds = %vector.body1648, %middle.block1669
  %index1649 = phi i64 [ 0, %middle.block1669 ], [ %index.next1656, %vector.body1648 ] ; 3 uses
  %i.oh = sub i64 127, %index1649
  %i.oi = or disjoint i64 %index1649, 1           ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load1650.a = load <4 x float>, ptr %i.oj, align 4, !tbaa !82 ; 2 uses
  %wide.load1651.a = load <4 x float>, ptr %i.ok, align 4, !tbaa !82 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.oh ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 500
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 484
  %wide.load1652.a = load <4 x float>, ptr %i.om, align 16, !tbaa !82 ; 2 uses
  %wide.load1653 = load <4 x float>, ptr %i.on, align 16, !tbaa !82 ; 2 uses
  %i.oo = fmul <4 x float> %wide.load1652.a, %wide.load1652.a
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.oq = fmul <4 x float> %wide.load1653, %wide.load1653
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1650.a, <4 x float> %wide.load1650.a, <4 x float> %i.op)
  %i.ot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1651.a, <4 x float> %wide.load1651.a, <4 x float> %i.or)
  %i.ou = fmul <4 x float> %i.os, splat (float 5.000000e-01)
  %i.ov = fmul <4 x float> %i.ot, splat (float 5.000000e-01)
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), i64 %i.oi ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <4 x float> %i.ou, ptr %i.ow, align 8, !tbaa !82
  store <4 x float> %i.ov, ptr %i.ox, align 8, !tbaa !82
  %index.next1656 = add nuw i64 %index1649, 8     ; 2 uses
  %i.oy = icmp eq i64 %index.next1656, 128
  br i1 %i.oy, label %middle.block1657, label %vector.body1648, !llvm.loop !40

middle.block1657:                                 ; preds = %vector.body1648
  %i.oz = load float, ptr %i.hk, align 16, !tbaa !82 ; 2 uses
  %i.pa = fmul float %i.oz, %i.oz
  store float %i.pa, ptr @L3psycho_anal.energy_s, align 16, !tbaa !82
  br label %vector.body1637

vector.body1637:                                  ; preds = %vector.body1637, %middle.block1657
  %index1638 = phi i64 [ 0, %middle.block1657 ], [ %index.next1644, %vector.body1637 ] ; 3 uses
  %i.pb = sub i64 127, %index1638
  %i.pc = or disjoint i64 %index1638, 1           ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %wide.load1639.a = load <4 x float>, ptr %i.pd, align 4, !tbaa !82 ; 2 uses
  %wide.load1640.a = load <4 x float>, ptr %i.pe, align 4, !tbaa !82 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.pb ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 500
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 484
  %wide.load1641.a = load <4 x float>, ptr %i.pg, align 16, !tbaa !82 ; 2 uses
  %wide.load1642 = load <4 x float>, ptr %i.ph, align 16, !tbaa !82 ; 2 uses
  %i.pi = fmul <4 x float> %wide.load1641.a, %wide.load1641.a
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pk = fmul <4 x float> %wide.load1642, %wide.load1642
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1639.a, <4 x float> %wide.load1639.a, <4 x float> %i.pj)
  %i.pn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1640.a, <4 x float> %wide.load1640.a, <4 x float> %i.pl)
  %i.po = fmul <4 x float> %i.pm, splat (float 5.000000e-01)
  %i.pp = fmul <4 x float> %i.pn, splat (float 5.000000e-01)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy_s, i64 %i.pc ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store <4 x float> %i.po, ptr %i.pq, align 4, !tbaa !82
  store <4 x float> %i.pp, ptr %i.pr, align 4, !tbaa !82
  %index.next1644 = add nuw i64 %index1638, 8     ; 2 uses
  %i.ps = icmp eq i64 %index.next1644, 128
  br i1 %i.ps, label %.preheader957, label %vector.body1637, !llvm.loop !41

.preheader957:                                    ; preds = %vector.body1637
  %.b1036 = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  br i1 %.b1036, label %.lr.ph1038, label %.preheader956

.preheader956:                                    ; preds = %bb.ad, %bb.x, %.preheader957
  %.lcssa973.a = phi i32 [ 0, %.preheader957 ], [ 0, %bb.x ], [ %i.rz, %bb.ad ] ; 2 uses
  %i.pt = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !7 ; 2 uses
  %i.pu = icmp slt i32 %.lcssa973.a, %i.pt
  br i1 %i.pu, label %.lr.ph1041, label %.preheader955

.lr.ph1041:                                       ; preds = %.preheader956
  %i.pv = zext nneg i32 %.lcssa973.a to i64
  br label %bb.ae

.peel.next:                                       ; preds = %bb.x, %bb.ad
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %bb.ad ], [ 1, %bb.x ] ; 11 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv1307 ; 2 uses
  %i.px = load float, ptr %i.pw, align 4, !tbaa !82 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv1307 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !82 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv1307 ; 2 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !82 ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv1307 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !82 ; 4 uses
  store float %i.qd, ptr %i.pw, align 4, !tbaa !82
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv1307 ; 2 uses
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !82 ; 4 uses
  store float %i.qf, ptr %i.py, align 4, !tbaa !82
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv1307 ; 2 uses
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !82 ; 5 uses
  store float %i.qh, ptr %i.qa, align 4, !tbaa !82
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv1307
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !82 ; 3 uses
  store float %i.qj, ptr %i.qc, align 4, !tbaa !82
  %i.qk = sub nuw nsw i64 1024, %indvars.iv1307
  %.in = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.qk
  %i.ql = load float, ptr %.in, align 4, !tbaa !82 ; 3 uses
  store float %i.ql, ptr %i.qe, align 4, !tbaa !82
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1307
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !82
  %sqrtf921 = tail call float @sqrtf(float noundef %i.qn) #11 ; 2 uses
  store float %sqrtf921, ptr %i.qg, align 4, !tbaa !82
  %i.qo = fcmp une float %i.qh, 0.000000e+00
  br i1 %i.qo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %i.qp = fmul float %i.qd, %i.qf
  %i.qq = fneg float %i.qf
  %i.qr = fmul float %i.qf, %i.qq
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.qd, float %i.qr)
  %i.qt = fmul float %i.qs, 5.000000e-01
  %i.qu = fmul float %i.qh, %i.qh
  br label %bb.z

bb.z:                                             ; preds = %.peel.next, %bb.y
  %.0851 = phi float [ %i.qp, %bb.y ], [ 1.000000e+00, %.peel.next ] ; 3 uses
  %.0849 = phi float [ %i.qt, %bb.y ], [ 0.000000e+00, %.peel.next ] ; 3 uses
  %.0846 = phi float [ %i.qu, %bb.y ], [ 1.000000e+00, %.peel.next ] ; 2 uses
  %i.qv = fcmp une float %i.qb, 0.000000e+00
  br i1 %i.qv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.qw = fadd float %.0851, %.0849
  %i.qx = fadd float %i.px, %i.pz
  %i.qy = fmul float %i.qx, %i.qw
  %i.qz = fmul float %i.qy, 5.000000e-01          ; 2 uses
  %i.ra = fneg float %i.px
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.ra, float %.0851, float %i.qz)
  %i.rc = fneg float %i.pz
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.rc, float %.0849, float %i.qz)
  %i.re = fmul float %i.qb, %.0846
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1852 = phi float [ %i.rd, %bb.aa ], [ %.0851, %bb.z ]
  %.1850 = phi float [ %i.rb, %bb.aa ], [ %.0849, %bb.z ]
  %.1847 = phi float [ %i.re, %bb.aa ], [ %.0846, %bb.z ]
  %i.rf = fneg float %i.qb
  %i.rg = tail call float @llvm.fmuladd.f32(float %i.qh, float 2.000000e+00, float %i.rf) ; 2 uses
  %i.rh = tail call float @llvm.fabs.f32(float %i.rg)
  %i.ri = fadd float %i.rh, %sqrtf921             ; 3 uses
  %i.rj = fcmp une float %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.rk = fadd float %i.qj, %i.ql
  %i.rl = fneg float %i.rg
  %i.rm = fdiv float %i.rl, %.1847                ; 2 uses
  %i.rn = fmul float %.1852, %i.rm
  %i.ro = tail call float @llvm.fmuladd.f32(float %i.rk, float 5.000000e-01, float %i.rn) ; 2 uses
  %i.rp = fsub float %i.qj, %i.ql
  %i.rq = fmul float %.1850, %i.rm
  %i.rr = tail call float @llvm.fmuladd.f32(float %i.rp, float 5.000000e-01, float %i.rq) ; 2 uses
  %i.rs = fmul float %i.rr, %i.rr
  %i.rt = tail call float @llvm.fmuladd.f32(float %i.ro, float %i.ro, float %i.rs)
  %i.ru = fpext float %i.rt to double
  %sqrt = tail call double @sqrt(double noundef %i.ru) #11, !tbaa !7
  %i.rv = fpext float %i.ri to double
  %i.rw = fdiv double %sqrt, %i.rv
  %i.rx = fptrunc double %i.rw to float
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2848 = phi float [ %i.rx, %bb.ac ], [ %i.ri, %bb.ab ]
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1307
  store float %.2848, ptr %i.ry, align 4, !tbaa !82
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 1 ; 2 uses
  %.b = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %i.rz = select i1 %.b, i32 6, i32 0             ; 2 uses
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = icmp samesign ult i64 %indvars.iv.next1308, %i.sa
  br i1 %i.sb, label %.peel.next, label %.preheader956, !llvm.loop !42

.preheader955:                                    ; preds = %bb.ak, %.preheader956
  %.lcssa974 = phi i32 [ %i.pt, %.preheader956 ], [ %i.ur, %bb.ak ] ; 2 uses
  %i.sc = icmp sgt i32 %.lcssa974, 0
  br i1 %i.sc, label %.lr.ph1056, label %.preheader954

bb.ae:                                            ; preds = %.lr.ph1041, %bb.ak
  %indvars.iv1312 = phi i64 [ %i.pv, %.lr.ph1041 ], [ %indvars.iv.next1313, %bb.ak ] ; 3 uses
  %i.sd = trunc i64 %indvars.iv1312 to i32
  %i.se = add i32 %i.sd, 2
  %i.sf = lshr i32 %i.se, 2                       ; 4 uses
  %i.sg = zext nneg i32 %i.sf to i64              ; 6 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy_s, i64 %i.sg
  %i.si = load float, ptr %i.sh, align 4, !tbaa !82 ; 4 uses
  %i.sj = fcmp une float %i.si, 0.000000e+00
  br i1 %i.sj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.sg
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !82 ; 3 uses
  %i.sm = sub nsw i32 256, %i.sf
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !82 ; 3 uses
  %i.sq = fmul float %i.sl, %i.sp
  %i.sr = fneg float %i.sp
  %i.ss = fmul float %i.sp, %i.sr
  %i.st = tail call float @llvm.fmuladd.f32(float %i.sl, float %i.sl, float %i.ss)
  %i.su = fmul float %i.st, 5.000000e-01
  %sqrtf = tail call float @sqrtf(float noundef %i.si) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0828 = phi float [ %sqrtf, %bb.af ], [ %i.si, %bb.ae ]
  %.0825 = phi float [ %i.sq, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 3 uses
  %.0823 = phi float [ %i.su, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 3 uses
  %.0820 = phi float [ %i.si, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), i64 %i.sg
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !82 ; 3 uses
  %i.sx = fcmp une float %i.sw, 0.000000e+00
  br i1 %i.sx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.sg
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !82 ; 2 uses
  %i.ta = sub nsw i32 256, %i.sf
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.tb
  %i.td = load float, ptr %i.tc, align 4, !tbaa !82 ; 2 uses
  %i.te = fadd float %.0825, %.0823
  %i.tf = fadd float %i.sz, %i.td
  %i.tg = fmul float %i.te, %i.tf
  %i.th = fmul float %i.tg, 5.000000e-01          ; 2 uses
  %i.ti = fneg float %i.sz
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.ti, float %.0825, float %i.th)
  %i.tk = fneg float %i.td
  %i.tl = tail call float @llvm.fmuladd.f32(float %i.tk, float %.0823, float %i.th)
  %sqrtf919 = tail call float @sqrtf(float noundef %i.sw) #11 ; 2 uses
  %i.tm = fmul float %.0820, %sqrtf919
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0827 = phi float [ %sqrtf919, %bb.ah ], [ %i.sw, %bb.ag ]
  %.1826 = phi float [ %i.tl, %bb.ah ], [ %.0825, %bb.ag ]
  %.1824 = phi float [ %i.tj, %bb.ah ], [ %.0823, %bb.ag ]
  %.1821 = phi float [ %i.tm, %bb.ah ], [ %.0820, %bb.ag ]
  %i.tn = fneg float %.0827
  %i.to = tail call float @llvm.fmuladd.f32(float %.0828, float 2.000000e+00, float %i.tn) ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), i64 %i.sg
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !82
  %sqrtf920 = tail call float @sqrtf(float noundef %i.tq) #11
  %i.tr = tail call float @llvm.fabs.f32(float %i.to)
  %i.ts = fadd float %i.tr, %sqrtf920             ; 3 uses
  %i.tt = fcmp une float %i.ts, 0.000000e+00
  br i1 %i.tt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.sg
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !82 ; 2 uses
  %i.tw = sub nsw i32 256, %i.sf
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.tx
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !82 ; 2 uses
  %i.ua = fadd float %i.tv, %i.tz
  %i.ub = fneg float %i.to
  %i.uc = fdiv float %i.ub, %.1821                ; 2 uses
  %i.ud = fmul float %.1826, %i.uc
  %i.ue = tail call float @llvm.fmuladd.f32(float %i.ua, float 5.000000e-01, float %i.ud) ; 2 uses
  %i.uf = fsub float %i.tv, %i.tz
  %i.ug = fmul float %.1824, %i.uc
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.uf, float 5.000000e-01, float %i.ug) ; 2 uses
  %i.ui = fmul float %i.uh, %i.uh
  %i.uj = tail call float @llvm.fmuladd.f32(float %i.ue, float %i.ue, float %i.ui)
  %i.uk = fpext float %i.uj to double
  %sqrt943 = tail call double @sqrt(double noundef %i.uk) #11, !tbaa !7
  %i.ul = fpext float %i.ts to double
  %i.um = fdiv double %sqrt943, %i.ul
  %i.un = fptrunc double %i.um to float
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2822 = phi float [ %i.un, %bb.aj ], [ %i.ts, %bb.ai ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1312
  %i.up = insertelement <4 x float> poison, float %.2822, i64 0
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.uq, ptr %i.uo, align 4, !tbaa !82
  %indvars.iv.next1313 = add nuw nsw i64 %indvars.iv1312, 4 ; 2 uses
  %i.ur = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !7 ; 2 uses
  %i.us = sext i32 %i.ur to i64
  %i.ut = icmp slt i64 %indvars.iv.next1313, %i.us
  br i1 %i.ut, label %bb.ae, label %.preheader955, !llvm.loop !43

.preheader954.loopexit:                           ; preds = %._crit_edge1050
  %i.uu = trunc nuw i64 %indvars.iv.next1321 to i32
  br label %.preheader954

.preheader954:                                    ; preds = %.preheader954.loopexit, %.preheader955
  %.11819.lcssa = phi i32 [ 0, %.preheader955 ], [ %.12.lcssa, %.preheader954.loopexit ]
  %.5.lcssa = phi i32 [ 0, %.preheader955 ], [ %i.uu, %.preheader954.loopexit ] ; 2 uses
  %i.uv = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !7 ; 2 uses
  %i.uw = icmp slt i32 %.5.lcssa, %i.uv
  br i1 %i.uw, label %.lr.ph1070.preheader, label %._crit_edge1071

.lr.ph1070.preheader:                             ; preds = %.preheader954
  %i.ux = zext i32 %.5.lcssa to i64
  br label %.lr.ph1070

.lr.ph1056:                                       ; preds = %.preheader955, %._crit_edge1050
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 4 uses
  %.118191054 = phi i32 [ %.12.lcssa, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 3 uses
  %i.uy = sext i32 %.118191054 to i64             ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.uy
  %i.va = load float, ptr %i.uz, align 4, !tbaa !82 ; 2 uses
  %i.vb = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.uy
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !82
  %i.vd = fmul float %i.va, %i.vc
  %i.ve = insertelement <2 x float> poison, float %i.va, i64 0
  %i.vf = insertelement <2 x float> %i.ve, float %i.vd, i64 1
  %i.vg = fpext <2 x float> %i.vf to <2 x double> ; 3 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1320
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !7  ; 6 uses
  %.121043 = add nsw i32 %.118191054, 1           ; 2 uses
  %i.vj = icmp sgt i32 %i.vi, 1
  br i1 %i.vj, label %.lr.ph1049.preheader, label %._crit_edge1050

.lr.ph1049.preheader:                             ; preds = %.lr.ph1056
  %i.vk = sext i32 %.121043 to i64                ; 4 uses
  %i.vl = and i32 %i.vi, 1
  %lcmp.mod1753.not.not = icmp eq i32 %i.vl, 0
  br i1 %lcmp.mod1753.not.not, label %.lr.ph1049.prol, label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol:                                  ; preds = %.lr.ph1049.preheader
  %.0792.prol = add nsw i32 %i.vi, -1
  %i.vm = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.vk
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !82 ; 2 uses
  %i.vo = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.vk
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !82
  %i.vq = fmul float %i.vn, %i.vp
  %i.vr = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.vs = insertelement <2 x float> %i.vr, float %i.vq, i64 1
  %i.vt = fpext <2 x float> %i.vs to <2 x double>
  %i.vu = fadd <2 x double> %i.vg, %i.vt          ; 2 uses
  %indvars.iv.next1317.prol = add nsw i64 %i.vk, 1
  br label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol.loopexit:                         ; preds = %.lr.ph1049.prol, %.lr.ph1049.preheader
  %indvars.iv1316.unr = phi i64 [ %i.vk, %.lr.ph1049.preheader ], [ %indvars.iv.next1317.prol, %.lr.ph1049.prol ]
  %.0792.in1046.unr = phi i32 [ %i.vi, %.lr.ph1049.preheader ], [ %.0792.prol, %.lr.ph1049.prol ]
  %.unr = phi <2 x double> [ %i.vg, %.lr.ph1049.preheader ], [ %i.vu, %.lr.ph1049.prol ]
  %.lcssa1722.unr.a = phi <2 x double> [ poison, %.lr.ph1049.preheader ], [ %i.vu, %.lr.ph1049.prol ]
  %i.vv = icmp eq i32 %i.vi, 2
  br i1 %i.vv, label %._crit_edge1050.loopexit, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %.lr.ph1049.prol.loopexit, %.lr.ph1049
  %indvars.iv1316 = phi i64 [ %indvars.iv.next1317.1, %.lr.ph1049 ], [ %indvars.iv1316.unr, %.lr.ph1049.prol.loopexit ] ; 4 uses
  %.0792.in1046 = phi i32 [ %.0792.1, %.lr.ph1049 ], [ %.0792.in1046.unr, %.lr.ph1049.prol.loopexit ] ; 2 uses
  %i.vw = phi <2 x double> [ %i.wo, %.lr.ph1049 ], [ %.unr, %.lr.ph1049.prol.loopexit ]
  %i.vx = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1316
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !82 ; 2 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1316
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !82
  %i.wb = fmul float %i.vy, %i.wa
  %i.wc = insertelement <2 x float> poison, float %i.vy, i64 0
  %i.wd = insertelement <2 x float> %i.wc, float %i.wb, i64 1
  %i.we = fpext <2 x float> %i.wd to <2 x double>
  %i.wf = fadd <2 x double> %i.vw, %i.we
  %indvars.iv.next1317 = add nsw i64 %indvars.iv1316, 1 ; 2 uses
  %.0792.1 = add nsw i32 %.0792.in1046, -2
  %i.wg = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv.next1317
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !82 ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv.next1317
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !82
  %i.wk = fmul float %i.wh, %i.wj
  %i.wl = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wm = insertelement <2 x float> %i.wl, float %i.wk, i64 1
  %i.wn = fpext <2 x float> %i.wm to <2 x double>
  %i.wo = fadd <2 x double> %i.wf, %i.wn          ; 2 uses
  %indvars.iv.next1317.1 = add nsw i64 %indvars.iv1316, 2
  %i.wp = icmp sgt i32 %.0792.in1046, 3
  br i1 %i.wp, label %.lr.ph1049, label %._crit_edge1050.loopexit, !llvm.loop !44

._crit_edge1050.loopexit:                         ; preds = %.lr.ph1049, %.lr.ph1049.prol.loopexit
  %.lcssa1722.a = phi <2 x double> [ %.lcssa1722.unr.a, %.lr.ph1049.prol.loopexit ], [ %i.wo, %.lr.ph1049 ]
  %i.wq = add i32 %.118191054, %i.vi
  br label %._crit_edge1050

._crit_edge1050:                                  ; preds = %._crit_edge1050.loopexit, %.lr.ph1056
  %.12.lcssa = phi i32 [ %.121043, %.lr.ph1056 ], [ %i.wq, %._crit_edge1050.loopexit ] ; 3 uses
  %i.wr = phi <2 x double> [ %i.vg, %.lr.ph1056 ], [ %.lcssa1722.a, %._crit_edge1050.loopexit ] ; 2 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv1320
  %i.wt = extractelement <2 x double> %i.wr, i64 0
  store double %i.wt, ptr %i.ws, align 8, !tbaa !12
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv1320
  %i.wv = extractelement <2 x double> %i.wr, i64 1
  store double %i.wv, ptr %i.wu, align 8, !tbaa !12
  %indvars.iv.next1321 = add nuw nsw i64 %indvars.iv1320, 1 ; 2 uses
  %i.ww = icmp slt i32 %.12.lcssa, %.lcssa974
  br i1 %i.ww, label %.lr.ph1056, label %.preheader954.loopexit, !llvm.loop !45

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %._crit_edge1065
  %indvars.iv1328 = phi i64 [ %i.ux, %.lr.ph1070.preheader ], [ %indvars.iv.next1329, %._crit_edge1065 ] ; 4 uses
  %.131068 = phi i32 [ %.11819.lcssa, %.lr.ph1070.preheader ], [ %.14.lcssa, %._crit_edge1065 ] ; 3 uses
  %i.wx = sext i32 %.131068 to i64
  %i.wy = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.wx
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !82
  %i.xa = fpext float %i.wz to double             ; 3 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1328
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !7  ; 6 uses
  %.141059 = add i32 %.131068, 1                  ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 1
  br i1 %i.xd, label %.lr.ph1064.preheader, label %._crit_edge1065

.lr.ph1064.preheader:                             ; preds = %.lr.ph1070
  %i.xe = sext i32 %.141059 to i64                ; 2 uses
  %i.xf = add nuw i32 %i.xc, 3
  %i.xg = add nsw i32 %i.xc, -2
  %xtraiter1755 = and i32 %i.xf, 3                ; 2 uses
  %lcmp.mod1756.not = icmp eq i32 %xtraiter1755, 0
  br i1 %lcmp.mod1756.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol

.lr.ph1064.prol:                                  ; preds = %.lr.ph1064.preheader, %.lr.ph1064.prol
  %indvars.iv1324.prol = phi i64 [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ], [ %i.xe, %.lr.ph1064.preheader ] ; 2 uses
  %.07901061.prol = phi double [ %i.xk, %.lr.ph1064.prol ], [ %i.xa, %.lr.ph1064.preheader ]
  %.0791.in1060.prol = phi i32 [ %.0791.prol, %.lr.ph1064.prol ], [ %i.xc, %.lr.ph1064.preheader ]
  %prol.iter1757 = phi i32 [ %prol.iter1757.next, %.lr.ph1064.prol ], [ 0, %.lr.ph1064.preheader ]
  %.0791.prol = add nsw i32 %.0791.in1060.prol, -1 ; 2 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324.prol
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !82
  %i.xj = fpext float %i.xi to double
  %i.xk = fadd double %.07901061.prol, %i.xj      ; 3 uses
  %indvars.iv.next1325.prol = add nsw i64 %indvars.iv1324.prol, 1 ; 2 uses
  %prol.iter1757.next = add i32 %prol.iter1757, 1 ; 2 uses
  %prol.iter1757.cmp.not = icmp eq i32 %prol.iter1757.next, %xtraiter1755
  br i1 %prol.iter1757.cmp.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol, !llvm.loop !46

.lr.ph1064.prol.loopexit:                         ; preds = %.lr.ph1064.prol, %.lr.ph1064.preheader
  %indvars.iv1324.unr = phi i64 [ %i.xe, %.lr.ph1064.preheader ], [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ]
  %.07901061.unr = phi double [ %i.xa, %.lr.ph1064.preheader ], [ %i.xk, %.lr.ph1064.prol ]
  %.0791.in1060.unr = phi i32 [ %i.xc, %.lr.ph1064.preheader ], [ %.0791.prol, %.lr.ph1064.prol ]
  %.lcssa1723.unr.a = phi double [ poison, %.lr.ph1064.preheader ], [ %i.xk, %.lr.ph1064.prol ]
  %i.xl = icmp ult i32 %i.xg, 3
  br i1 %i.xl, label %._crit_edge1065.loopexit, label %.lr.ph1064

.lr.ph1064:                                       ; preds = %.lr.ph1064.prol.loopexit, %.lr.ph1064
  %indvars.iv1324 = phi i64 [ %indvars.iv.next1325.3, %.lr.ph1064 ], [ %indvars.iv1324.unr, %.lr.ph1064.prol.loopexit ] ; 5 uses
  %.07901061 = phi double [ %i.ye, %.lr.ph1064 ], [ %.07901061.unr, %.lr.ph1064.prol.loopexit ]
  %.0791.in1060 = phi i32 [ %.0791.3, %.lr.ph1064 ], [ %.0791.in1060.unr, %.lr.ph1064.prol.loopexit ] ; 2 uses
  %i.xm = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !82
  %i.xo = fpext float %i.xn to double
  %i.xp = fadd double %.07901061, %i.xo
  %i.xq = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xr = getelementptr i8, ptr %i.xq, i64 4
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !82
  %i.xt = fpext float %i.xs to double
  %i.xu = fadd double %i.xp, %i.xt
  %i.xv = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xw = getelementptr i8, ptr %i.xv, i64 8
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !82
  %i.xy = fpext float %i.xx to double
  %i.xz = fadd double %i.xu, %i.xy
  %.0791.3 = add nsw i32 %.0791.in1060, -4
  %i.ya = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.yb = getelementptr i8, ptr %i.ya, i64 12
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !82
  %i.yd = fpext float %i.yc to double
  %i.ye = fadd double %i.xz, %i.yd                ; 2 uses
  %indvars.iv.next1325.3 = add nsw i64 %indvars.iv1324, 4
  %i.yf = icmp sgt i32 %.0791.in1060, 5
  br i1 %i.yf, label %.lr.ph1064, label %._crit_edge1065.loopexit, !llvm.loop !47

._crit_edge1065.loopexit:                         ; preds = %.lr.ph1064, %.lr.ph1064.prol.loopexit
  %.lcssa1723.a = phi double [ %.lcssa1723.unr.a, %.lr.ph1064.prol.loopexit ], [ %i.ye, %.lr.ph1064 ]
  %i.yg = add i32 %.131068, %i.xc
  br label %._crit_edge1065
end_hunk_0
begin_hunk_1_@L3para_read:bb.a
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv402
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !7
  %i.kt = getelementptr inbounds nuw i8, ptr %.7329, i64 32
  %i.ku = load double, ptr %i.kp, align 8, !tbaa !12
  %i.kv = fptosi double %i.ku to i32
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv402
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !7
  %i.kx = getelementptr inbounds nuw i8, ptr %.7329, i64 40
  %i.ky = load double, ptr %i.kt, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv402 ; 3 uses
  store double %i.ky, ptr %i.kz, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %.7329, i64 48 ; 2 uses
  %i.lb = load double, ptr %i.kx, align 8, !tbaa !12
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv402 ; 3 uses
  store double %i.lb, ptr %i.lc, align 8, !tbaa !12
  %i.ld = zext i32 %i.kn to i64
  %.not254 = icmp eq i64 %indvars.iv402, %i.ld
  br i1 %.not254, label %bb.ag, label %.loopexit408

.loopexit408:                                     ; preds = %.lr.ph331.preheader, %.lr.ph331
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite257 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %i.le) #14 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.ag:                                            ; preds = %.lr.ph331
  %i.lf = load double, ptr %i.kz, align 8, !tbaa !12
  %i.lg = fsub double 1.000000e+00, %i.lf
  %i.lh = getelementptr i8, ptr %i.lc, i64 -8
  %i.li = load double, ptr %i.lh, align 8, !tbaa !12
  %i.lj = fsub double %i.lg, %i.li
  %i.lk = tail call double @llvm.fabs.f64(double %i.lj)
  %i.ll = fcmp ogt double %i.lk, 1.000000e-02
  br i1 %i.ll, label %.loopexit409, label %bb.ah

.loopexit409:                                     ; preds = %bb.ag
  %i.lm = getelementptr i8, ptr %i.lc, i64 -8
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite256 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr %i.ln) #14 ; 0 uses
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lp = load double, ptr %i.kz, align 8, !tbaa !12
  %i.lq = load double, ptr %i.lm, align 8, !tbaa !12
  %i.lr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.6, double noundef %i.lp, double noundef %i.lq) #12 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %.loopexit271, label %.lr.ph331, !llvm.loop !101

bb.ai:                                            ; preds = %.preheader272
  %i.ls = mul i32 %i.jw, 6
  %i.lt = add i32 %i.ls, 6
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.lu
  br label %.loopexit271

.loopexit271:                                     ; preds = %bb.ah, %bb.af, %.preheader270, %bb.ai
  %.8 = phi ptr [ %i.lv, %bb.ai ], [ %i.ju, %.preheader270 ], [ %i.kl, %bb.af ], [ %i.la, %bb.ah ] ; 2 uses
  %i.lw = add nuw nsw i32 %.2334, 1               ; 2 uses
  %exitcond414.not = icmp eq i32 %i.lw, 6
  br i1 %exitcond414.not, label %.preheader269, label %.preheader272, !llvm.loop !102

.preheader269:                                    ; preds = %.loopexit271, %.loopexit
  %.3342 = phi i32 [ %i.ob, %.loopexit ], [ 0, %.loopexit271 ]
  %.9341 = phi ptr [ %.11, %.loopexit ], [ %.8, %.loopexit271 ] ; 8 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.9341, i64 8
  %i.ly = load double, ptr %.9341, align 8, !tbaa !12
  %i.lz = getelementptr inbounds nuw i8, ptr %.9341, i64 16 ; 3 uses
  %i.ma = load double, ptr %i.lx, align 8, !tbaa !12
  %i.mb = fptosi double %i.ma to i32              ; 4 uses
  %i.mc = fcmp oeq double %0, %i.ly
  br i1 %i.mc, label %.preheader, label %bb.am

.preheader:                                       ; preds = %.preheader269
  %.not336 = icmp slt i32 %i.mb, 0
  br i1 %.not336, label %.loopexit, label %.lr.ph339.preheader

.lr.ph339.preheader:                              ; preds = %.preheader
  %i.md = add nuw i32 %i.mb, 1
  %wide.trip.count418 = zext i32 %i.md to i64
  %i.me = load double, ptr %i.lz, align 8, !tbaa !12
  %i.mf = fptosi double %i.me to i32
  %i.mg = getelementptr inbounds nuw i8, ptr %.9341, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %.9341, i64 40
  %i.mi = load double, ptr %i.mg, align 8, !tbaa !12
  %i.mj = fptosi double %i.mi to i32
  store i32 %i.mj, ptr %14, align 4, !tbaa !7
  %i.mk = getelementptr inbounds nuw i8, ptr %.9341, i64 48
  %i.ml = load double, ptr %i.mh, align 8, !tbaa !12
  %i.mm = fptosi double %i.ml to i32
  store i32 %i.mm, ptr %15, align 4, !tbaa !7
  %i.mn = getelementptr inbounds nuw i8, ptr %.9341, i64 56
  %i.mo = load double, ptr %i.mk, align 8, !tbaa !12
  store double %i.mo, ptr %16, align 8, !tbaa !12
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !12
  store double %i.mp, ptr %17, align 8, !tbaa !12
  %.not250.peel = icmp eq i32 %i.mf, 0
  br i1 %.not250.peel, label %bb.aj, label %.loopexit421

bb.aj:                                            ; preds = %.lr.ph339.preheader
  %i.mq = getelementptr inbounds nuw i8, ptr %.9341, i64 64 ; 2 uses
  %exitcond419.peel.not = icmp eq i32 %i.mb, 0
  br i1 %exitcond419.peel.not, label %.loopexit, label %.lr.ph339

.lr.ph339:                                        ; preds = %bb.aj, %bb.al
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %bb.al ], [ 1, %bb.aj ] ; 6 uses
  %.10337 = phi ptr [ %i.nf, %bb.al ], [ %i.mq, %bb.aj ] ; 6 uses
  %i.mr = load double, ptr %.10337, align 8, !tbaa !12
  %i.ms = fptosi double %i.mr to i32
  %i.mt = getelementptr inbounds nuw i8, ptr %.10337, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %.10337, i64 24
  %i.mv = load double, ptr %i.mt, align 8, !tbaa !12
  %i.mw = fptosi double %i.mv to i32
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv415
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !7
  %i.my = getelementptr inbounds nuw i8, ptr %.10337, i64 32
  %i.mz = load double, ptr %i.mu, align 8, !tbaa !12
  %i.na = fptosi double %i.mz to i32
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv415
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !7
  %i.nc = getelementptr inbounds nuw i8, ptr %.10337, i64 40
  %i.nd = load double, ptr %i.my, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv415 ; 3 uses
  store double %i.nd, ptr %i.ne, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %.10337, i64 48 ; 2 uses
  %i.ng = load double, ptr %i.nc, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv415 ; 3 uses
  store double %i.ng, ptr %i.nh, align 8, !tbaa !12
  %i.ni = zext i32 %i.ms to i64
  %.not250 = icmp eq i64 %indvars.iv415, %i.ni
  br i1 %.not250, label %bb.ak, label %.loopexit421

.loopexit421:                                     ; preds = %.lr.ph339.preheader, %.lr.ph339
  %i.nj = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite252 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %i.nj) #14 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.ak:                                            ; preds = %.lr.ph339
  %i.nk = load double, ptr %i.ne, align 8, !tbaa !12
  %i.nl = fsub double 1.000000e+00, %i.nk
  %i.nm = getelementptr i8, ptr %i.nh, i64 -8
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !12
  %i.no = fsub double %i.nl, %i.nn
  %i.np = tail call double @llvm.fabs.f64(double %i.no)
  %i.nq = fcmp ogt double %i.np, 1.000000e-02
  br i1 %i.nq, label %.loopexit422, label %bb.al

.loopexit422:                                     ; preds = %bb.ak
  %i.nr = getelementptr i8, ptr %i.nh, i64 -8
  %i.ns = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %i.ns) #14 ; 0 uses
  %i.nt = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.nu = load double, ptr %i.ne, align 8, !tbaa !12
  %i.nv = load double, ptr %i.nr, align 8, !tbaa !12
  %i.nw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nt, ptr noundef nonnull @.str.6, double noundef %i.nu, double noundef %i.nv) #12 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.loopexit, label %.lr.ph339, !llvm.loop !103

bb.am:                                            ; preds = %.preheader269
  %i.nx = mul i32 %i.mb, 6
  %i.ny = add i32 %i.nx, 6
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.nz
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.aj, %.preheader, %bb.am
  %.11 = phi ptr [ %i.oa, %bb.am ], [ %i.lz, %.preheader ], [ %i.mq, %bb.aj ], [ %i.nf, %bb.al ]
  %i.ob = add nuw nsw i32 %.3342, 1               ; 2 uses
  %exitcond427.not = icmp eq i32 %i.ob, 6
  br i1 %exitcond427.not, label %bb.an, label %.preheader269, !llvm.loop !104

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

declare void @init_fft() local_unnamed_addr #8

declare void @fft_long(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @fft_short(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = distinct !{!15, !13, !83, !84}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !85}
!24 = distinct !{!24, !13, !83, !84}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13, !84, !83}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !85}
!30 = distinct !{!30, !13, !83, !84}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !84, !83}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13, !83, !84}
!35 = distinct !{!35, !13, !83, !84}
!36 = distinct !{!36, !13, !83, !84}
!37 = distinct !{!37, !13, !83, !84}
!38 = distinct !{!38, !13, !83, !84}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13, !83, !84}
!41 = distinct !{!41, !13, !83, !84}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !85}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !85}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !85}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !85}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !85}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !85}
!64 = distinct !{!64, !85}
!65 = distinct !{!65, !85}
!66 = distinct !{!66, !85}
!67 = distinct !{!67, !85}
!68 = distinct !{!68, !85}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = !{!"long", !5, i64 0}
!76 = !{!"p1 omnipotent char", !8, i64 0}
!77 = !{!"float", !5, i64 0}
!78 = !{!"", !75, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !76, i64 128, !76, i64 136, !6, i64 144, !6, i64 148, !77, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !75, i64 168, !75, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !77, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !77, i64 232, !77, i64 236, !77, i64 240, !77, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!79 = !{!78, !75, i64 168}
!80 = !{!78, !6, i64 16}
!81 = !{!78, !77, i64 152}
!82 = !{!77, !77, i64 0}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!78, !6, i64 192}
!87 = !{!78, !6, i64 204}
!88 = !{!78, !6, i64 36}
!89 = !{!5, !5, i64 0}
!90 = !{i64 0, i64 176, !89, i64 176, i64 312, !89}
!91 = !{!78, !6, i64 160}
!92 = !{!78, !6, i64 156}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13, !14}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13, !14}
!104 = distinct !{!104, !13}
end_hunk_1
