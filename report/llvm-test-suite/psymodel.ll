loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@L3psycho_anal:bb.a
  %i.is = icmp eq i64 %index.next1718.1, 1024
  br i1 %i.is, label %vector.body1698, label %vector.body1710, !llvm.loop !49

vector.body1698:                                  ; preds = %vector.body1710, %vector.body1698
  %index1699 = phi i64 [ %index.next1706.1, %vector.body1698 ], [ 0, %vector.body1710 ] ; 3 uses
  %i.it = sub nuw nsw i64 255, %index1699         ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 2048), i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -12 ; 2 uses
  %wide.load1700 = load <4 x float>, ptr %i.iv, align 16, !tbaa !18 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 5120), i64 %i.it
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -12 ; 2 uses
  %wide.load1702 = load <4 x float>, ptr %i.ix, align 16, !tbaa !18 ; 2 uses
  %i.iy = fadd <4 x float> %wide.load1700, %wide.load1702
  %reverse1704 = fmul <4 x float> %i.iy, splat (float f0x3F3504F3)
  store <4 x float> %reverse1704, ptr %i.iv, align 16, !tbaa !18
  %i.iz = fsub <4 x float> %wide.load1700, %wide.load1702
  %reverse1705 = fmul <4 x float> %i.iz, splat (float f0x3F3504F3)
  store <4 x float> %reverse1705, ptr %i.ix, align 16, !tbaa !18
  %i.ja = sub nuw nsw i64 251, %index1699         ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 2048), i64 %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -12 ; 2 uses
  %wide.load1700.1 = load <4 x float>, ptr %i.jc, align 16, !tbaa !18 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 5120), i64 %i.ja
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -12 ; 2 uses
  %wide.load1702.1 = load <4 x float>, ptr %i.je, align 16, !tbaa !18 ; 2 uses
  %i.jf = fadd <4 x float> %wide.load1700.1, %wide.load1702.1
  %reverse1704.1 = fmul <4 x float> %i.jf, splat (float f0x3F3504F3)
  store <4 x float> %reverse1704.1, ptr %i.jc, align 16, !tbaa !18
  %i.jg = fsub <4 x float> %wide.load1700.1, %wide.load1702.1
  %reverse1705.1 = fmul <4 x float> %i.jg, splat (float f0x3F3504F3)
  store <4 x float> %reverse1705.1, ptr %i.je, align 16, !tbaa !18
  %index.next1706.1 = add nuw nsw i64 %index1699, 8 ; 2 uses
  %i.jh = icmp eq i64 %index.next1706.1, 256
  br i1 %i.jh, label %vector.body1686, label %vector.body1698, !llvm.loop !50

vector.body1686:                                  ; preds = %vector.body1698, %vector.body1686
  %index1687 = phi i64 [ %index.next1694.1, %vector.body1686 ], [ 0, %vector.body1698 ] ; 3 uses
  %i.ji = sub nuw nsw i64 255, %index1687         ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 1024), i64 %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -12 ; 2 uses
  %wide.load1688 = load <4 x float>, ptr %i.jk, align 16, !tbaa !18 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 4096), i64 %i.ji
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -12 ; 2 uses
  %wide.load1690 = load <4 x float>, ptr %i.jm, align 16, !tbaa !18 ; 2 uses
  %i.jn = fadd <4 x float> %wide.load1688, %wide.load1690
  %reverse1692 = fmul <4 x float> %i.jn, splat (float f0x3F3504F3)
  store <4 x float> %reverse1692, ptr %i.jk, align 16, !tbaa !18
  %i.jo = fsub <4 x float> %wide.load1688, %wide.load1690
  %reverse1693 = fmul <4 x float> %i.jo, splat (float f0x3F3504F3)
  store <4 x float> %reverse1693, ptr %i.jm, align 16, !tbaa !18
  %i.jp = sub nuw nsw i64 251, %index1687         ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 1024), i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -12 ; 2 uses
  %wide.load1688.1 = load <4 x float>, ptr %i.jr, align 16, !tbaa !18 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 4096), i64 %i.jp
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -12 ; 2 uses
  %wide.load1690.1 = load <4 x float>, ptr %i.jt, align 16, !tbaa !18 ; 2 uses
  %i.ju = fadd <4 x float> %wide.load1688.1, %wide.load1690.1
  %reverse1692.1 = fmul <4 x float> %i.ju, splat (float f0x3F3504F3)
  store <4 x float> %reverse1692.1, ptr %i.jr, align 16, !tbaa !18
  %i.jv = fsub <4 x float> %wide.load1688.1, %wide.load1690.1
  %reverse1693.1 = fmul <4 x float> %i.jv, splat (float f0x3F3504F3)
  store <4 x float> %reverse1693.1, ptr %i.jt, align 16, !tbaa !18
  %index.next1694.1 = add nuw nsw i64 %index1687, 8 ; 2 uses
  %i.jw = icmp eq i64 %index.next1694.1, 256
  br i1 %i.jw, label %vector.body1674, label %vector.body1686, !llvm.loop !51

vector.body1674:                                  ; preds = %vector.body1686, %vector.body1674
  %index1675 = phi i64 [ %index.next1682.1, %vector.body1674 ], [ 0, %vector.body1686 ] ; 3 uses
  %i.jx = sub nuw nsw i64 255, %index1675         ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.wsamp_S, i64 %i.jx
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -12 ; 2 uses
  %wide.load1676 = load <4 x float>, ptr %i.jz, align 16, !tbaa !18 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 3072), i64 %i.jx
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -12 ; 2 uses
  %wide.load1678 = load <4 x float>, ptr %i.kb, align 16, !tbaa !18 ; 2 uses
  %i.kc = fadd <4 x float> %wide.load1676, %wide.load1678
  %reverse1680 = fmul <4 x float> %i.kc, splat (float f0x3F3504F3)
  store <4 x float> %reverse1680, ptr %i.jz, align 16, !tbaa !18
  %i.kd = fsub <4 x float> %wide.load1676, %wide.load1678
  %reverse1681 = fmul <4 x float> %i.kd, splat (float f0x3F3504F3)
  store <4 x float> %reverse1681, ptr %i.kb, align 16, !tbaa !18
  %i.ke = sub nuw nsw i64 251, %index1675         ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.wsamp_S, i64 %i.ke
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -12 ; 2 uses
  %wide.load1676.1 = load <4 x float>, ptr %i.kg, align 16, !tbaa !18 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.wsamp_S, i64 3072), i64 %i.ke
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -12 ; 2 uses
  %wide.load1678.1 = load <4 x float>, ptr %i.ki, align 16, !tbaa !18 ; 2 uses
  %i.kj = fadd <4 x float> %wide.load1676.1, %wide.load1678.1
  %reverse1680.1 = fmul <4 x float> %i.kj, splat (float f0x3F3504F3)
  store <4 x float> %reverse1680.1, ptr %i.kg, align 16, !tbaa !18
  %i.kk = fsub <4 x float> %wide.load1676.1, %wide.load1678.1
  %reverse1681.1 = fmul <4 x float> %i.kk, splat (float f0x3F3504F3)
  store <4 x float> %reverse1681.1, ptr %i.ki, align 16, !tbaa !18
  %index.next1682.1 = add nuw nsw i64 %index1675, 8 ; 2 uses
  %i.kl = icmp eq i64 %index.next1682.1, 256
  br i1 %i.kl, label %.loopexit960, label %vector.body1674, !llvm.loop !52

.loopexit960:                                     ; preds = %vector.body1674, %bb.q, %bb.p
  %i.km = load float, ptr %i.hl, align 16, !tbaa !18 ; 8 uses
  %i.kn = fmul float %i.km, %i.km                 ; 2 uses
  store float %i.kn, ptr @L3psycho_anal.energy, align 16, !tbaa !18
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1398
  br label %bb.r

.preheader958:                                    ; preds = %bb.r
  store float %i.mg, ptr %i.ko, align 4, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hk, i64 2048 ; 5 uses
  %i.kq = load float, ptr %i.kp, align 16, !tbaa !18 ; 2 uses
  %i.kr = fmul float %i.kq, %i.kq
  store float %i.kr, ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), align 8, !tbaa !18
  br label %vector.body1662

vector.body1662:                                  ; preds = %vector.body1662, %.preheader958
  %index1663 = phi i64 [ 0, %.preheader958 ], [ %index.next1670, %vector.body1662 ] ; 3 uses
  %i.ks = sub i64 127, %index1663
  %i.kt = or disjoint i64 %index1663, 1           ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load1664 = load <4 x float>, ptr %i.ku, align 4, !tbaa !18 ; 2 uses
  %wide.load1665 = load <4 x float>, ptr %i.kv, align 4, !tbaa !18 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ks ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 500
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 484
  %wide.load1666 = load <4 x float>, ptr %i.kx, align 16, !tbaa !18 ; 2 uses
  %wide.load1667 = load <4 x float>, ptr %i.ky, align 16, !tbaa !18 ; 2 uses
  %i.kz = fmul <4 x float> %wide.load1666, %wide.load1666
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lb = fmul <4 x float> %wide.load1667, %wide.load1667
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1664, <4 x float> %wide.load1664, <4 x float> %i.la)
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1665, <4 x float> %wide.load1665, <4 x float> %i.lc)
  %i.lf = fmul <4 x float> %i.ld, splat (float 5.000000e-01)
  %i.lg = fmul <4 x float> %i.le, splat (float 5.000000e-01)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), i64 %i.kt ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x float> %i.lf, ptr %i.lh, align 4, !tbaa !18
  store <4 x float> %i.lg, ptr %i.li, align 4, !tbaa !18
  %index.next1670 = add nuw i64 %index1663, 8     ; 2 uses
  %i.lj = icmp eq i64 %index.next1670, 128
  br i1 %i.lj, label %middle.block1671, label %vector.body1662, !llvm.loop !53

bb.r:                                             ; preds = %bb.r, %.loopexit960
  %indvars.iv1295 = phi i64 [ 511, %.loopexit960 ], [ %indvars.iv.next1296.1, %bb.r ] ; 5 uses
  %i.lk = phi float [ %i.kn, %.loopexit960 ], [ %i.mg, %bb.r ]
  %i.ll = sub nuw nsw i64 512, %indvars.iv1295    ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !18 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv1295
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2048
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !18 ; 2 uses
  %i.lr = fmul float %i.lq, %i.lq
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lr)
  %i.lt = fmul float %i.ls, 5.000000e-01          ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %i.ll
  store float %i.lt, ptr %i.lu, align 4, !tbaa !18
  %i.lv = fadd float %i.lk, %i.lt
  %indvars.iv.next1296 = add nsw i64 %indvars.iv1295, -1 ; 2 uses
  %i.lw = sub nsw i64 513, %indvars.iv1295        ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.lw
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !18 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next1296
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2048
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !18 ; 2 uses
  %i.mc = fmul float %i.mb, %i.mb
  %i.md = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.ly, float %i.mc)
  %i.me = fmul float %i.md, 5.000000e-01          ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %i.lw
  store float %i.me, ptr %i.mf, align 4, !tbaa !18
  %i.mg = fadd float %i.lv, %i.me                 ; 2 uses
  %indvars.iv.next1296.1 = add nsw i64 %indvars.iv1295, -2
  %.not1518.1 = icmp eq i64 %indvars.iv.next1296, 0
  br i1 %.not1518.1, label %.preheader958, label %bb.r, !llvm.loop !54

.lr.ph1038:                                       ; preds = %.preheader957
  %i.mh = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.ax_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2052 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.bx_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2052 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4104 x i8], ptr @L3psycho_anal.rx_sav, i64 %indvars.iv1398 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2052 ; 3 uses
  %i.mn = load float, ptr %i.mi, align 4, !tbaa !18 ; 2 uses
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !18 ; 2 uses
  %i.mp = load float, ptr %i.mm, align 4, !tbaa !18 ; 3 uses
  %i.mq = load float, ptr %i.mh, align 8, !tbaa !18 ; 4 uses
  store float %i.mq, ptr %i.mi, align 4, !tbaa !18
  %i.mr = load float, ptr %i.mj, align 8, !tbaa !18 ; 4 uses
  store float %i.mr, ptr %i.mk, align 4, !tbaa !18
  %i.ms = load float, ptr %i.ml, align 8, !tbaa !18 ; 5 uses
  store float %i.ms, ptr %i.mm, align 4, !tbaa !18
  store float %i.km, ptr %i.mh, align 8, !tbaa !18
  store float %i.km, ptr %i.mj, align 8, !tbaa !18
  %i.mt = load float, ptr @L3psycho_anal.energy, align 16, !tbaa !18
  %sqrtf921.peel = tail call float @sqrtf(float noundef %i.mt) #11 ; 2 uses
  store float %sqrtf921.peel, ptr %i.ml, align 8, !tbaa !18
  %i.mu = fcmp une float %i.ms, 0.000000e+00
  br i1 %i.mu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph1038
  %11 = fmul float %i.mq, %i.mr
  %i.mv = fneg float %i.mr
  %i.mw = fmul float %i.mr, %i.mv
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mq, float %i.mq, float %i.mw)
  %12 = fmul float %i.mx, 5.000000e-01
  %i.my = fmul float %i.ms, %i.ms
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph1038
  %.0853.peel = phi float [ %i.my, %bb.s ], [ 1.000000e+00, %.lr.ph1038 ] ; 2 uses
  %.0851.peel = phi float [ %12, %bb.s ], [ 0.000000e+00, %.lr.ph1038 ] ; 3 uses
  %.0840.peel = phi float [ %11, %bb.s ], [ 1.000000e+00, %.lr.ph1038 ] ; 3 uses
  %13 = fcmp une float %i.mp, 0.000000e+00
  br i1 %13, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mz = fadd float %.0851.peel, %.0840.peel
  %i.na = fadd float %i.mn, %i.mo
  %i.nb = fmul float %i.na, %i.mz
  %i.nc = fmul float %i.nb, 5.000000e-01          ; 2 uses
  %14 = fneg float %i.mn
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %.0840.peel, float %i.nc)
  %16 = fneg float %i.mo
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %.0851.peel, float %i.nc)
  %i.nd = fmul float %i.mp, %.0853.peel
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1854.peel = phi float [ %i.nd, %bb.u ], [ %.0853.peel, %bb.t ]
  %.1852.peel = phi float [ %15, %bb.u ], [ %.0851.peel, %bb.t ]
  %.1841.peel = phi float [ %17, %bb.u ], [ %.0840.peel, %bb.t ]
  %i.ne = fneg float %i.mp
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.ms, float 2.000000e+00, float %i.ne) ; 2 uses
  %i.ng = tail call float @llvm.fabs.f32(float %i.nf)
  %i.nh = fadd float %i.ng, %sqrtf921.peel        ; 3 uses
  %i.ni = fcmp une float %i.nh, 0.000000e+00
  br i1 %i.ni, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.nj = fadd float %i.km, %i.km
  %i.nk = fneg float %i.nf
  %i.nl = fdiv float %i.nk, %.1854.peel           ; 2 uses
  %i.nm = fmul float %i.nl, %.1841.peel
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nj, float 5.000000e-01, float %i.nm) ; 2 uses
  %i.no = fsub float %i.km, %i.km
  %i.np = fmul float %.1852.peel, %i.nl
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.no, float 5.000000e-01, float %i.np) ; 2 uses
  %i.nr = fmul float %i.nq, %i.nq
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.nn, float %i.nr)
  %i.nt = fpext float %i.ns to double
  %sqrt.peel = tail call double @llvm.sqrt.f64(double %i.nt)
  %i.nu = fpext float %i.nh to double
  %i.nv = fdiv double %sqrt.peel, %i.nu
  %i.nw = fptrunc double %i.nv to float
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2855.peel = phi float [ %i.nw, %bb.w ], [ %i.nh, %bb.v ]
  store float %.2855.peel, ptr @L3psycho_anal.cw, align 16, !tbaa !18
  %.b.peel = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  br i1 %.b.peel, label %.peel.next, label %.preheader956

middle.block1671:                                 ; preds = %vector.body1662
  %i.nx = getelementptr inbounds nuw i8, ptr %i.hk, i64 1024 ; 5 uses
  %i.ny = load float, ptr %i.nx, align 16, !tbaa !18 ; 2 uses
  %i.nz = fmul float %i.ny, %i.ny
  store float %i.nz, ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), align 4, !tbaa !18
  br label %vector.body1650

vector.body1650:                                  ; preds = %vector.body1650, %middle.block1671
  %index1651 = phi i64 [ 0, %middle.block1671 ], [ %index.next1658, %vector.body1650 ] ; 3 uses
  %i.oa = sub i64 127, %index1651
  %i.ob = or disjoint i64 %index1651, 1           ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.ob ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %wide.load1652 = load <4 x float>, ptr %i.oc, align 4, !tbaa !18 ; 2 uses
  %wide.load1653 = load <4 x float>, ptr %i.od, align 4, !tbaa !18 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 500
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 484
  %wide.load1654 = load <4 x float>, ptr %i.of, align 16, !tbaa !18 ; 2 uses
  %wide.load1655 = load <4 x float>, ptr %i.og, align 16, !tbaa !18 ; 2 uses
  %i.oh = fmul <4 x float> %wide.load1654, %wide.load1654
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.oj = fmul <4 x float> %wide.load1655, %wide.load1655
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ol = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1652, <4 x float> %wide.load1652, <4 x float> %i.oi)
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1653, <4 x float> %wide.load1653, <4 x float> %i.ok)
  %i.on = fmul <4 x float> %i.ol, splat (float 5.000000e-01)
  %i.oo = fmul <4 x float> %i.om, splat (float 5.000000e-01)
  %i.op = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), i64 %i.ob ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store <4 x float> %i.on, ptr %i.op, align 8, !tbaa !18
  store <4 x float> %i.oo, ptr %i.oq, align 8, !tbaa !18
  %index.next1658 = add nuw i64 %index1651, 8     ; 2 uses
  %i.or = icmp eq i64 %index.next1658, 128
  br i1 %i.or, label %middle.block1659, label %vector.body1650, !llvm.loop !55

middle.block1659:                                 ; preds = %vector.body1650
  %i.os = load float, ptr %i.hk, align 16, !tbaa !18 ; 2 uses
  %i.ot = fmul float %i.os, %i.os
  store float %i.ot, ptr @L3psycho_anal.energy_s, align 16, !tbaa !18
  br label %vector.body1639

vector.body1639:                                  ; preds = %vector.body1639, %middle.block1659
  %index1640 = phi i64 [ 0, %middle.block1659 ], [ %index.next1646, %vector.body1639 ] ; 3 uses
  %i.ou = sub i64 127, %index1640
  %i.ov = or disjoint i64 %index1640, 1           ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load1641 = load <4 x float>, ptr %i.ow, align 4, !tbaa !18 ; 2 uses
  %wide.load1642 = load <4 x float>, ptr %i.ox, align 4, !tbaa !18 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ou ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 500
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 484
  %wide.load1643 = load <4 x float>, ptr %i.oz, align 16, !tbaa !18 ; 2 uses
  %wide.load1644 = load <4 x float>, ptr %i.pa, align 16, !tbaa !18 ; 2 uses
  %i.pb = fmul <4 x float> %wide.load1643, %wide.load1643
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pd = fmul <4 x float> %wide.load1644, %wide.load1644
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1641, <4 x float> %wide.load1641, <4 x float> %i.pc)
  %i.pg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1642, <4 x float> %wide.load1642, <4 x float> %i.pe)
  %i.ph = fmul <4 x float> %i.pf, splat (float 5.000000e-01)
  %i.pi = fmul <4 x float> %i.pg, splat (float 5.000000e-01)
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy_s, i64 %i.ov ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store <4 x float> %i.ph, ptr %i.pj, align 4, !tbaa !18
  store <4 x float> %i.pi, ptr %i.pk, align 4, !tbaa !18
  %index.next1646 = add nuw i64 %index1640, 8     ; 2 uses
  %i.pl = icmp eq i64 %index.next1646, 128
  br i1 %i.pl, label %.preheader957, label %vector.body1639, !llvm.loop !56

.preheader957:                                    ; preds = %vector.body1639
  %.b1036 = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  br i1 %.b1036, label %.lr.ph1038, label %.preheader956

.preheader956:                                    ; preds = %bb.ad, %bb.x, %.preheader957
  %.lcssa973 = phi i32 [ 0, %.preheader957 ], [ 0, %bb.x ], [ %i.rl, %bb.ad ] ; 2 uses
  %i.pm = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !4 ; 2 uses
  %i.pn = icmp slt i32 %.lcssa973, %i.pm
  br i1 %i.pn, label %.lr.ph1041, label %.preheader955

.lr.ph1041:                                       ; preds = %.preheader956
  %i.po = zext nneg i32 %.lcssa973 to i64
  br label %bb.ae

.peel.next:                                       ; preds = %bb.x, %bb.ad
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %bb.ad ], [ 1, %bb.x ] ; 11 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv1307 ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !18 ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv1307 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !18 ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv1307 ; 2 uses
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !18 ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv1307 ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !18 ; 4 uses
  store float %i.pw, ptr %i.pp, align 4, !tbaa !18
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv1307 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !18 ; 4 uses
  store float %i.py, ptr %i.pr, align 4, !tbaa !18
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv1307 ; 2 uses
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !18 ; 5 uses
  store float %i.qa, ptr %i.pt, align 4, !tbaa !18
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv1307
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !18 ; 3 uses
  store float %i.qc, ptr %i.pv, align 4, !tbaa !18
  %i.qd = sub nuw nsw i64 1024, %indvars.iv1307
  %.in = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.qd
  %i.qe = load float, ptr %.in, align 4, !tbaa !18 ; 3 uses
  store float %i.qe, ptr %i.px, align 4, !tbaa !18
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1307
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !18
  %sqrtf921 = tail call float @sqrtf(float noundef %i.qg) #11 ; 2 uses
  store float %sqrtf921, ptr %i.pz, align 4, !tbaa !18
  %i.qh = fcmp une float %i.qa, 0.000000e+00
  br i1 %i.qh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next
  %18 = fmul float %i.pw, %i.py
  %i.qi = fneg float %i.py
  %i.qj = fmul float %i.py, %i.qi
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.pw, float %i.qj)
  %19 = fmul float %i.qk, 5.000000e-01
  %i.ql = fmul float %i.qa, %i.qa
  br label %bb.z

bb.z:                                             ; preds = %.peel.next, %bb.y
  %.0853 = phi float [ %i.ql, %bb.y ], [ 1.000000e+00, %.peel.next ] ; 2 uses
  %.0851 = phi float [ %19, %bb.y ], [ 0.000000e+00, %.peel.next ] ; 3 uses
  %.0840 = phi float [ %18, %bb.y ], [ 1.000000e+00, %.peel.next ] ; 3 uses
  %20 = fcmp une float %i.pu, 0.000000e+00
  br i1 %20, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.qm = fadd float %.0851, %.0840
  %i.qn = fadd float %i.pq, %i.ps
  %i.qo = fmul float %i.qn, %i.qm
  %i.qp = fmul float %i.qo, 5.000000e-01          ; 2 uses
  %21 = fneg float %i.pq
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %.0840, float %i.qp)
  %23 = fneg float %i.ps
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %.0851, float %i.qp)
  %i.qq = fmul float %i.pu, %.0853
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1854 = phi float [ %i.qq, %bb.aa ], [ %.0853, %bb.z ]
  %.1852 = phi float [ %22, %bb.aa ], [ %.0851, %bb.z ]
  %.1841 = phi float [ %24, %bb.aa ], [ %.0840, %bb.z ]
  %i.qr = fneg float %i.pu
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qa, float 2.000000e+00, float %i.qr) ; 2 uses
  %i.qt = tail call float @llvm.fabs.f32(float %i.qs)
  %i.qu = fadd float %i.qt, %sqrtf921             ; 3 uses
  %i.qv = fcmp une float %i.qu, 0.000000e+00
  br i1 %i.qv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.qw = fadd float %i.qc, %i.qe
  %i.qx = fneg float %i.qs
  %i.qy = fdiv float %i.qx, %.1854                ; 2 uses
  %i.qz = fmul float %i.qy, %.1841
  %i.ra = tail call float @llvm.fmuladd.f32(float %i.qw, float 5.000000e-01, float %i.qz) ; 2 uses
  %i.rb = fsub float %i.qc, %i.qe
  %i.rc = fmul float %.1852, %i.qy
  %i.rd = tail call float @llvm.fmuladd.f32(float %i.rb, float 5.000000e-01, float %i.rc) ; 2 uses
  %i.re = fmul float %i.rd, %i.rd
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.ra, float %i.ra, float %i.re)
  %i.rg = fpext float %i.rf to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.rg)
  %i.rh = fpext float %i.qu to double
  %i.ri = fdiv double %sqrt, %i.rh
  %i.rj = fptrunc double %i.ri to float
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2855 = phi float [ %i.rj, %bb.ac ], [ %i.qu, %bb.ab ]
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1307
  store float %.2855, ptr %i.rk, align 4, !tbaa !18
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 1 ; 2 uses
  %.b = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %i.rl = select i1 %.b, i32 6, i32 0             ; 2 uses
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = icmp samesign ult i64 %indvars.iv.next1308, %i.rm
  br i1 %i.rn, label %.peel.next, label %.preheader956, !llvm.loop !57

.preheader955:                                    ; preds = %bb.ak, %.preheader956
  %.lcssa974 = phi i32 [ %i.pm, %.preheader956 ], [ %i.tv, %bb.ak ] ; 2 uses
  %i.ro = icmp sgt i32 %.lcssa974, 0
  br i1 %i.ro, label %.lr.ph1056, label %.preheader954

bb.ae:                                            ; preds = %.lr.ph1041, %bb.ak
  %indvars.iv1312 = phi i64 [ %i.po, %.lr.ph1041 ], [ %indvars.iv.next1313, %bb.ak ] ; 3 uses
  %i.rp = trunc i64 %indvars.iv1312 to i32
  %i.rq = add i32 %i.rp, 2
  %i.rr = lshr i32 %i.rq, 2                       ; 4 uses
  %i.rs = zext nneg i32 %i.rr to i64              ; 6 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy_s, i64 %i.rs
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !18 ; 4 uses
  %i.rv = fcmp une float %i.ru, 0.000000e+00
  br i1 %i.rv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.rs
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !18 ; 3 uses
  %i.ry = sub nsw i32 256, %i.rr
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !18 ; 3 uses
  %i.sc = fmul float %i.rx, %i.sb
  %25 = fneg float %i.sb
  %26 = fmul float %i.sb, %25
  %27 = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.rx, float %26)
  %28 = fmul float %27, 5.000000e-01
  %sqrtf = tail call float @sqrtf(float noundef %i.ru) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0850 = phi float [ %sqrtf, %bb.af ], [ %i.ru, %bb.ae ]
  %.0847 = phi float [ %i.sc, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 3 uses
  %.0842.a = phi float [ %28, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 3 uses
  %.0842 = phi float [ %i.ru, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), i64 %i.rs
  %i.se = load float, ptr %i.sd, align 4, !tbaa !18 ; 3 uses
  %i.sf = fcmp une float %i.se, 0.000000e+00
  br i1 %i.sf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.rs
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !18 ; 2 uses
  %i.si = sub nsw i32 256, %i.rr
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.sj
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !18 ; 2 uses
  %i.sm = fadd float %.0847, %.0842.a
  %i.sn = fadd float %i.sh, %i.sl
  %i.so = fmul float %i.sm, %i.sn
  %i.sp = fmul float %i.so, 5.000000e-01          ; 2 uses
  %29 = fneg float %i.sh
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %.0847, float %i.sp)
  %31 = fneg float %i.sl
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %.0842.a, float %i.sp)
  %sqrtf919 = tail call float @sqrtf(float noundef %i.se) #11 ; 2 uses
  %i.sq = fmul float %.0842, %sqrtf919
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0849 = phi float [ %sqrtf919, %bb.ah ], [ %i.se, %bb.ag ]
  %.1848 = phi float [ %32, %bb.ah ], [ %.0847, %bb.ag ]
  %.1846 = phi float [ %30, %bb.ah ], [ %.0842.a, %bb.ag ]
  %.1843 = phi float [ %i.sq, %bb.ah ], [ %.0842, %bb.ag ]
  %i.sr = fneg float %.0849
  %i.ss = tail call float @llvm.fmuladd.f32(float %.0850, float 2.000000e+00, float %i.sr) ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), i64 %i.rs
  %i.su = load float, ptr %i.st, align 4, !tbaa !18
  %sqrtf920 = tail call float @sqrtf(float noundef %i.su) #11
  %i.sv = tail call float @llvm.fabs.f32(float %i.ss)
  %i.sw = fadd float %i.sv, %sqrtf920             ; 3 uses
  %i.sx = fcmp une float %i.sw, 0.000000e+00
  br i1 %i.sx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.rs
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !18 ; 2 uses
  %i.ta = sub nsw i32 256, %i.rr
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.tb
  %i.td = load float, ptr %i.tc, align 4, !tbaa !18 ; 2 uses
  %i.te = fadd float %i.sz, %i.td
  %i.tf = fneg float %i.ss
  %i.tg = fdiv float %i.tf, %.1843                ; 2 uses
  %i.th = fmul float %.1848, %i.tg
  %i.ti = tail call float @llvm.fmuladd.f32(float %i.te, float 5.000000e-01, float %i.th) ; 2 uses
  %i.tj = fsub float %i.sz, %i.td
  %i.tk = fmul float %.1846, %i.tg
  %i.tl = tail call float @llvm.fmuladd.f32(float %i.tj, float 5.000000e-01, float %i.tk) ; 2 uses
  %i.tm = fmul float %i.tl, %i.tl
  %i.tn = tail call float @llvm.fmuladd.f32(float %i.ti, float %i.ti, float %i.tm)
  %i.to = fpext float %i.tn to double
  %sqrt943 = tail call double @llvm.sqrt.f64(double %i.to)
  %i.tp = fpext float %i.sw to double
  %i.tq = fdiv double %sqrt943, %i.tp
  %i.tr = fptrunc double %i.tq to float
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2844 = phi float [ %i.tr, %bb.aj ], [ %i.sw, %bb.ai ]
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1312
  %i.tt = insertelement <4 x float> poison, float %.2844, i64 0
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.tu, ptr %i.ts, align 4, !tbaa !18
  %indvars.iv.next1313 = add nuw nsw i64 %indvars.iv1312, 4 ; 2 uses
  %i.tv = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !4 ; 2 uses
  %i.tw = sext i32 %i.tv to i64
  %i.tx = icmp slt i64 %indvars.iv.next1313, %i.tw
  br i1 %i.tx, label %bb.ae, label %.preheader955, !llvm.loop !59

.preheader954.loopexit:                           ; preds = %._crit_edge1050
  %i.ty = trunc nuw i64 %indvars.iv.next1321 to i32
  br label %.preheader954

.preheader954:                                    ; preds = %.preheader954.loopexit, %.preheader955
  %.11819.lcssa = phi i32 [ 0, %.preheader955 ], [ %.12.lcssa, %.preheader954.loopexit ]
  %.5.lcssa = phi i32 [ 0, %.preheader955 ], [ %i.ty, %.preheader954.loopexit ] ; 2 uses
  %i.tz = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !4 ; 2 uses
  %i.ua = icmp slt i32 %.5.lcssa, %i.tz
  br i1 %i.ua, label %.lr.ph1070.preheader, label %._crit_edge1071

.lr.ph1070.preheader:                             ; preds = %.preheader954
  %i.ub = zext i32 %.5.lcssa to i64
  br label %.lr.ph1070

.lr.ph1056:                                       ; preds = %.preheader955, %._crit_edge1050
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 4 uses
  %.118191054 = phi i32 [ %.12.lcssa, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 3 uses
  %i.uc = sext i32 %.118191054 to i64             ; 2 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.uc
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !18 ; 2 uses
  %i.uf = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.uc
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !18
  %i.uh = fmul float %i.ue, %i.ug
  %i.ui = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.uj = insertelement <2 x float> %i.ui, float %i.uh, i64 1
  %i.uk = fpext <2 x float> %i.uj to <2 x double> ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1320
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !4  ; 6 uses
  %.121043 = add nsw i32 %.118191054, 1           ; 2 uses
  %i.un = icmp sgt i32 %i.um, 1
  br i1 %i.un, label %.lr.ph1049.preheader, label %._crit_edge1050

.lr.ph1049.preheader:                             ; preds = %.lr.ph1056
  %i.uo = sext i32 %.121043 to i64                ; 4 uses
  %i.up = and i32 %i.um, 1
  %lcmp.mod1755.not.not = icmp eq i32 %i.up, 0
  br i1 %lcmp.mod1755.not.not, label %.lr.ph1049.prol, label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol:                                  ; preds = %.lr.ph1049.preheader
  %.0800.prol = add nsw i32 %i.um, -1
  %i.uq = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.uo
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !18 ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.uo
  %i.ut = load float, ptr %i.us, align 4, !tbaa !18
  %i.uu = fmul float %i.ur, %i.ut
  %i.uv = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uw = insertelement <2 x float> %i.uv, float %i.uu, i64 1
  %i.ux = fpext <2 x float> %i.uw to <2 x double>
  %i.uy = fadd <2 x double> %i.uk, %i.ux          ; 2 uses
  %indvars.iv.next1317.prol = add nsw i64 %i.uo, 1
  br label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol.loopexit:                         ; preds = %.lr.ph1049.prol, %.lr.ph1049.preheader
  %indvars.iv1316.unr = phi i64 [ %i.uo, %.lr.ph1049.preheader ], [ %indvars.iv.next1317.prol, %.lr.ph1049.prol ]
  %.0800.in1046.unr = phi i32 [ %i.um, %.lr.ph1049.preheader ], [ %.0800.prol, %.lr.ph1049.prol ]
  %.unr = phi <2 x double> [ %i.uk, %.lr.ph1049.preheader ], [ %i.uy, %.lr.ph1049.prol ]
  %.lcssa1724.unr = phi <2 x double> [ poison, %.lr.ph1049.preheader ], [ %i.uy, %.lr.ph1049.prol ]
  %i.uz = icmp eq i32 %i.um, 2
  br i1 %i.uz, label %._crit_edge1050.loopexit, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %.lr.ph1049.prol.loopexit, %.lr.ph1049
  %indvars.iv1316 = phi i64 [ %indvars.iv.next1317.1, %.lr.ph1049 ], [ %indvars.iv1316.unr, %.lr.ph1049.prol.loopexit ] ; 4 uses
  %.0800.in1046 = phi i32 [ %.0800.1, %.lr.ph1049 ], [ %.0800.in1046.unr, %.lr.ph1049.prol.loopexit ] ; 2 uses
  %i.va = phi <2 x double> [ %i.vs, %.lr.ph1049 ], [ %.unr, %.lr.ph1049.prol.loopexit ]
  %i.vb = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1316
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !18 ; 2 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1316
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !18
  %i.vf = fmul float %i.vc, %i.ve
  %i.vg = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vh = insertelement <2 x float> %i.vg, float %i.vf, i64 1
  %i.vi = fpext <2 x float> %i.vh to <2 x double>
  %i.vj = fadd <2 x double> %i.va, %i.vi
  %indvars.iv.next1317 = add nsw i64 %indvars.iv1316, 1 ; 2 uses
  %.0800.1 = add nsw i32 %.0800.in1046, -2
  %i.vk = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv.next1317
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !18 ; 2 uses
  %i.vm = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv.next1317
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !18
  %i.vo = fmul float %i.vl, %i.vn
  %i.vp = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.vo, i64 1
  %i.vr = fpext <2 x float> %i.vq to <2 x double>
  %i.vs = fadd <2 x double> %i.vj, %i.vr          ; 2 uses
  %indvars.iv.next1317.1 = add nsw i64 %indvars.iv1316, 2
  %i.vt = icmp sgt i32 %.0800.in1046, 3
  br i1 %i.vt, label %.lr.ph1049, label %._crit_edge1050.loopexit, !llvm.loop !60

._crit_edge1050.loopexit:                         ; preds = %.lr.ph1049, %.lr.ph1049.prol.loopexit
  %.lcssa1724 = phi <2 x double> [ %.lcssa1724.unr, %.lr.ph1049.prol.loopexit ], [ %i.vs, %.lr.ph1049 ]
  %i.vu = add i32 %.118191054, %i.um
  br label %._crit_edge1050

._crit_edge1050:                                  ; preds = %._crit_edge1050.loopexit, %.lr.ph1056
  %.12.lcssa = phi i32 [ %.121043, %.lr.ph1056 ], [ %i.vu, %._crit_edge1050.loopexit ] ; 3 uses
  %i.vv = phi <2 x double> [ %i.uk, %.lr.ph1056 ], [ %.lcssa1724, %._crit_edge1050.loopexit ] ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv1320
  %i.vx = extractelement <2 x double> %i.vv, i64 0
  store double %i.vx, ptr %i.vw, align 8, !tbaa !19
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv1320
  %i.vz = extractelement <2 x double> %i.vv, i64 1
  store double %i.vz, ptr %i.vy, align 8, !tbaa !19
  %indvars.iv.next1321 = add nuw nsw i64 %indvars.iv1320, 1 ; 2 uses
  %i.wa = icmp slt i32 %.12.lcssa, %.lcssa974
  br i1 %i.wa, label %.lr.ph1056, label %.preheader954.loopexit, !llvm.loop !61

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %._crit_edge1065
  %indvars.iv1328 = phi i64 [ %i.ub, %.lr.ph1070.preheader ], [ %indvars.iv.next1329, %._crit_edge1065 ] ; 4 uses
  %.131068 = phi i32 [ %.11819.lcssa, %.lr.ph1070.preheader ], [ %.14.lcssa, %._crit_edge1065 ] ; 3 uses
  %i.wb = sext i32 %.131068 to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.wb
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !18
  %i.we = fpext float %i.wd to double             ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1328
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !4  ; 6 uses
  %.141059 = add i32 %.131068, 1                  ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %.lr.ph1064.preheader, label %._crit_edge1065

.lr.ph1064.preheader:                             ; preds = %.lr.ph1070
  %i.wi = sext i32 %.141059 to i64                ; 2 uses
  %i.wj = add nuw i32 %i.wg, 3
  %i.wk = add nsw i32 %i.wg, -2
  %xtraiter1757 = and i32 %i.wj, 3                ; 2 uses
  %lcmp.mod1758.not = icmp eq i32 %xtraiter1757, 0
  br i1 %lcmp.mod1758.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol

.lr.ph1064.prol:                                  ; preds = %.lr.ph1064.preheader, %.lr.ph1064.prol
  %indvars.iv1324.prol = phi i64 [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ], [ %i.wi, %.lr.ph1064.preheader ] ; 2 uses
  %.07981061.prol = phi double [ %i.wo, %.lr.ph1064.prol ], [ %i.we, %.lr.ph1064.preheader ]
  %.0799.in1060.prol = phi i32 [ %.0799.prol, %.lr.ph1064.prol ], [ %i.wg, %.lr.ph1064.preheader ]
  %prol.iter1759 = phi i32 [ %prol.iter1759.next, %.lr.ph1064.prol ], [ 0, %.lr.ph1064.preheader ]
  %.0799.prol = add nsw i32 %.0799.in1060.prol, -1 ; 2 uses
  %i.wl = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324.prol
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !18
  %i.wn = fpext float %i.wm to double
  %i.wo = fadd double %.07981061.prol, %i.wn      ; 3 uses
  %indvars.iv.next1325.prol = add nsw i64 %indvars.iv1324.prol, 1 ; 2 uses
  %prol.iter1759.next = add i32 %prol.iter1759, 1 ; 2 uses
  %prol.iter1759.cmp.not = icmp eq i32 %prol.iter1759.next, %xtraiter1757
  br i1 %prol.iter1759.cmp.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol, !llvm.loop !62

.lr.ph1064.prol.loopexit:                         ; preds = %.lr.ph1064.prol, %.lr.ph1064.preheader
  %indvars.iv1324.unr = phi i64 [ %i.wi, %.lr.ph1064.preheader ], [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ]
  %.07981061.unr = phi double [ %i.we, %.lr.ph1064.preheader ], [ %i.wo, %.lr.ph1064.prol ]
  %.0799.in1060.unr = phi i32 [ %i.wg, %.lr.ph1064.preheader ], [ %.0799.prol, %.lr.ph1064.prol ]
  %.lcssa1725.unr = phi double [ poison, %.lr.ph1064.preheader ], [ %i.wo, %.lr.ph1064.prol ]
  %i.wp = icmp ult i32 %i.wk, 3
  br i1 %i.wp, label %._crit_edge1065.loopexit, label %.lr.ph1064

.lr.ph1064:                                       ; preds = %.lr.ph1064.prol.loopexit, %.lr.ph1064
  %indvars.iv1324 = phi i64 [ %indvars.iv.next1325.3, %.lr.ph1064 ], [ %indvars.iv1324.unr, %.lr.ph1064.prol.loopexit ] ; 5 uses
  %.07981061 = phi double [ %i.xi, %.lr.ph1064 ], [ %.07981061.unr, %.lr.ph1064.prol.loopexit ]
end_hunk_0
begin_hunk_1_@L3para_read:bb.a
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %.loopexit266, label %.lr.ph326, !llvm.loop !101

bb.ai:                                            ; preds = %.preheader267
  %i.lw = mul i32 %i.jy, 6
  %i.lx = add i32 %i.lw, 6
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.ly
  br label %.loopexit266

.loopexit266:                                     ; preds = %bb.ah, %bb.af, %.preheader265, %bb.ai
  %.8 = phi ptr [ %i.lz, %bb.ai ], [ %i.jw, %.preheader265 ], [ %i.kn, %bb.af ], [ %i.lc, %bb.ah ] ; 2 uses
  %i.ma = add nuw nsw i32 %.2233328, 1            ; 2 uses
  %exitcond409.not = icmp eq i32 %i.ma, 6
  br i1 %exitcond409.not, label %.preheader264, label %.preheader267, !llvm.loop !102

.preheader264:                                    ; preds = %.loopexit266, %.loopexit
  %.9337 = phi ptr [ %.11, %.loopexit ], [ %.8, %.loopexit266 ] ; 8 uses
  %.3234336 = phi i32 [ %i.oh, %.loopexit ], [ 0, %.loopexit266 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.9337, i64 8
  %i.mc = load double, ptr %.9337, align 8, !tbaa !19
  %i.md = getelementptr inbounds nuw i8, ptr %.9337, i64 16 ; 3 uses
  %i.me = load double, ptr %i.mb, align 8, !tbaa !19
  %i.mf = fptosi double %i.me to i32              ; 4 uses
  %i.mg = fcmp oeq double %0, %i.mc
  br i1 %i.mg, label %.preheader, label %bb.am

.preheader:                                       ; preds = %.preheader264
  %.not331 = icmp slt i32 %i.mf, 0
  br i1 %.not331, label %.loopexit, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %.preheader
  %i.mh = add nuw i32 %i.mf, 1
  %wide.trip.count413 = zext i32 %i.mh to i64
  %i.mi = load double, ptr %i.md, align 8, !tbaa !19
  %i.mj = fptosi double %i.mi to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %.9337, i64 32
  %i.ml = getelementptr inbounds nuw i8, ptr %.9337, i64 40
  %i.mm = load double, ptr %i.mk, align 8, !tbaa !19
  %i.mn = fptosi double %i.mm to i32
  store i32 %i.mn, ptr %14, align 4, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %.9337, i64 48
  %i.mp = load double, ptr %i.ml, align 8, !tbaa !19
  %i.mq = fptosi double %i.mp to i32
  store i32 %i.mq, ptr %15, align 4, !tbaa !4
  %i.mr = getelementptr inbounds nuw i8, ptr %.9337, i64 56
  %i.ms = load double, ptr %i.mo, align 8, !tbaa !19
  store double %i.ms, ptr %16, align 8, !tbaa !19
  %i.mt = load double, ptr %i.mr, align 8, !tbaa !19
  store double %i.mt, ptr %17, align 8, !tbaa !19
  %.not250.peel = icmp eq i32 %i.mj, 0
  br i1 %.not250.peel, label %bb.aj, label %.loopexit416

bb.aj:                                            ; preds = %.lr.ph334.preheader
  %i.mu = getelementptr inbounds nuw i8, ptr %.9337, i64 64 ; 2 uses
  %exitcond414.peel.not = icmp eq i32 %i.mf, 0
  br i1 %exitcond414.peel.not, label %.loopexit, label %.lr.ph334

.lr.ph334:                                        ; preds = %bb.aj, %bb.al
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %bb.al ], [ 1, %bb.aj ] ; 6 uses
  %.10333 = phi ptr [ %i.nj, %bb.al ], [ %i.mu, %bb.aj ] ; 6 uses
  %i.mv = load double, ptr %.10333, align 8, !tbaa !19
  %i.mw = fptosi double %i.mv to i32
  %i.mx = getelementptr inbounds nuw i8, ptr %.10333, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %.10333, i64 24
  %i.mz = load double, ptr %i.mx, align 8, !tbaa !19
  %i.na = fptosi double %i.mz to i32
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv410
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !4
  %i.nc = getelementptr inbounds nuw i8, ptr %.10333, i64 32
  %i.nd = load double, ptr %i.my, align 8, !tbaa !19
  %i.ne = fptosi double %i.nd to i32
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv410
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !4
  %i.ng = getelementptr inbounds nuw i8, ptr %.10333, i64 40
  %i.nh = load double, ptr %i.nc, align 8, !tbaa !19
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv410 ; 3 uses
  store double %i.nh, ptr %i.ni, align 8, !tbaa !19
  %i.nj = getelementptr inbounds nuw i8, ptr %.10333, i64 48 ; 2 uses
  %i.nk = load double, ptr %i.ng, align 8, !tbaa !19
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv410 ; 3 uses
  store double %i.nk, ptr %i.nl, align 8, !tbaa !19
  %i.nm = zext i32 %i.mw to i64
  %.not250 = icmp eq i64 %indvars.iv410, %i.nm
  br i1 %.not250, label %bb.ak, label %.loopexit416

.loopexit416:                                     ; preds = %.lr.ph334.preheader, %.lr.ph334
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.no = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %i.nn) #14 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.ak:                                            ; preds = %.lr.ph334
  %i.np = load double, ptr %i.ni, align 8, !tbaa !19
  %i.nq = fsub double 1.000000e+00, %i.np
  %i.nr = getelementptr i8, ptr %i.nl, i64 -8
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !19
  %i.nt = fsub double %i.nq, %i.ns
  %i.nu = tail call double @llvm.fabs.f64(double %i.nt)
  %i.nv = fcmp ogt double %i.nu, 1.000000e-02
  br i1 %i.nv, label %.loopexit417, label %bb.al

.loopexit417:                                     ; preds = %bb.ak
  %i.nw = getelementptr i8, ptr %i.nl, i64 -8
  %i.nx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ny = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %i.nx) #14 ; 0 uses
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.oa = load double, ptr %i.ni, align 8, !tbaa !19
  %i.ob = load double, ptr %i.nw, align 8, !tbaa !19
  %i.oc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.6, double noundef %i.oa, double noundef %i.ob) #12 ; 0 uses
  tail call void @exit(i32 noundef -1) #13
  unreachable

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next411, %wide.trip.count413
  br i1 %exitcond414.not, label %.loopexit, label %.lr.ph334, !llvm.loop !103

bb.am:                                            ; preds = %.preheader264
  %i.od = mul i32 %i.mf, 6
  %i.oe = add i32 %i.od, 6
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.of
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.aj, %.preheader, %bb.am
  %.11 = phi ptr [ %i.og, %bb.am ], [ %i.md, %.preheader ], [ %i.mu, %bb.aj ], [ %i.nj, %bb.al ]
  %i.oh = add nuw nsw i32 %.3234336, 1            ; 2 uses
  %exitcond422.not = icmp eq i32 %i.oh, 6
  br i1 %exitcond422.not, label %bb.an, label %.preheader264, !llvm.loop !104

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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 168}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !13, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !10, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !13, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!9, !5, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!17 = !{!9, !13, i64 152}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !22, !23, !24}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22, !24, !23}
!37 = distinct !{!37, !22}
!38 = !{!9, !5, i64 192}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !22, !23, !24}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22, !24, !23}
!44 = distinct !{!44, !22}
!45 = !{!9, !5, i64 204}
!46 = !{!9, !5, i64 36}
!47 = !{i64 0, i64 176, !48, i64 176, i64 312, !48}
!48 = !{!6, !6, i64 0}
!49 = distinct !{!49, !22, !23, !24}
!50 = distinct !{!50, !22, !23, !24}
!51 = distinct !{!51, !22, !23, !24}
!52 = distinct !{!52, !22, !23, !24}
!53 = distinct !{!53, !22, !23, !24}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22, !23, !24}
!56 = distinct !{!56, !22, !23, !24}
!57 = distinct !{!57, !22, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = !{!9, !5, i64 160}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = !{!9, !5, i64 156}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !22}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22, !58}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22, !58}
!104 = distinct !{!104, !22}
end_hunk_1
