Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJ_VF?download=true
inline.NumInlined: 1490
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput1EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3937.preheader
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hc ; 6 uses
  %i.he = getelementptr [4 x i8], ptr %i.h, i64 %i.ge
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !111
  %i.hh = mul i32 %i.gs, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hi ; 4 uses
  %i.hk = getelementptr [4 x i8], ptr %i.h, i64 %i.ge
  %i.hl = getelementptr i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !111
  %i.hn = mul i32 %i.gs, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ho ; 4 uses
  %i.hq = icmp slt i32 %i.cb, %i.cd               ; 3 uses
  br i1 %i.dg, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit3936._crit_edge
  br i1 %i.hq, label %.lr.ph4045, label %.critedge

.lr.ph4045:                                       ; preds = %.preheader
  %i.hr = sext i32 %i.cb to i64
  %wide.trip.count4168 = sext i32 %i.cd to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4045, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558
  %indvars.iv4165 = phi i64 [ %i.hr, %.lr.ph4045 ], [ %indvars.iv.next4166, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 4 uses
  %.sroa.03349.04043 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.nr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %.sroa.16.04042 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.ns, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %.sroa.03366.04041 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.np, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %.sroa.163373.04040 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.nq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %.sroa.03384.04039 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.nn, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %.sroa.163391.04038 = phi <16 x float> [ zeroinitializer, %.lr.ph4045 ], [ %i.no, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558 ] ; 2 uses
  %i.hs = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv4165
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !111
  %.not549 = icmp eq i32 %i.hv, -1
  br i1 %.not549, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557.a

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557.a: ; preds = %bb.d
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4165 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !83 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !112
  %i.ia = insertelement <16 x i32> poison, i32 %i.hz, i64 0
  %i.ib = shufflevector <16 x i32> %i.ia, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ic = and <16 x i32> %.sroa.04212.0.copyload, %i.ib
  %i.id = icmp ne <16 x i32> %i.ic, zeroinitializer ; 4 uses
  %i.ie = and <16 x i32> %.sroa.6.0.copyload, %i.ib
  %.not4276 = icmp eq <16 x i32> %i.ie, zeroinitializer ; 2 uses
  %i.if = shl nsw i32 %i.hx, 3
  %i.ig = mul nsw i32 %i.hx, 24
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %i.bh, i64 %i.ih ; 3 uses
  %.val6724437 = load <8 x float>, ptr %i.ii, align 32, !tbaa !32
  %i.ij = shufflevector <8 x float> %.val6724437, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ii, i64 32
  %.val6734438 = load <8 x float>, ptr %i.ik, align 32, !tbaa !32
  %i.il = shufflevector <8 x float> %.val6734438, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.im = getelementptr i8, ptr %i.ii, i64 64
  %.val6744439 = load <8 x float>, ptr %i.im, align 32, !tbaa !32
  %i.in = shufflevector <8 x float> %.val6744439, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.io = fsub <16 x float> %i.ex, %i.ij          ; 3 uses
  %i.ip = fsub <16 x float> %i.fd, %i.ij          ; 3 uses
  %i.iq = fsub <16 x float> %i.fk, %i.il          ; 3 uses
  %i.ir = fsub <16 x float> %i.fq, %i.il          ; 3 uses
  %i.is = fsub <16 x float> %i.fx, %i.in          ; 3 uses
  %i.it = fsub <16 x float> %i.gd, %i.in          ; 3 uses
  %i.iu = fmul <16 x float> %i.io, %i.io
  %i.iv = fmul <16 x float> %i.iq, %i.iq
  %i.iw = fadd <16 x float> %i.iu, %i.iv
  %i.ix = fmul <16 x float> %i.is, %i.is
  %i.iy = fadd <16 x float> %i.iw, %i.ix          ; 2 uses
  %i.iz = fmul <16 x float> %i.ip, %i.ip
  %i.ja = fmul <16 x float> %i.ir, %i.ir
  %i.jb = fadd <16 x float> %i.iz, %i.ja
  %i.jc = fmul <16 x float> %i.it, %i.it
  %i.jd = fadd <16 x float> %i.jb, %i.jc          ; 2 uses
  %i.je = fcmp olt <16 x float> %i.iy, %i.ay
  %i.jf = bitcast <16 x i1> %i.je to i16          ; 3 uses
  %i.jg = fcmp olt <16 x float> %i.jd, %i.ay
  %i.jh = bitcast <16 x i1> %i.jg to i16          ; 3 uses
  %i.ji = shl nsw i32 %i.hx, 1                    ; 2 uses
  %i.jj = icmp eq i32 %i.ji, %i.cg
  br i1 %i.jj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557.a
  %i.jk = and i16 %i.jf, %i.t
  %i.jl = and i16 %i.jh, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557.a
  %i.jm = or disjoint i32 %i.ji, 1
  %i.jn = icmp eq i32 %i.jm, %i.cg
  br i1 %i.jn, label %bb.g, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558

bb.g:                                             ; preds = %bb.f
  %i.jo = and i16 %i.jf, %i.v
  %i.jp = and i16 %i.jh, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit558: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.93698.0 = phi i16 [ %i.jl, %bb.e ], [ %i.jp, %bb.g ], [ %i.jh, %bb.f ]
  %.sroa.03695.0 = phi i16 [ %i.jk, %bb.e ], [ %i.jo, %bb.g ], [ %i.jf, %bb.f ]
  %i.jq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.iy, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.jr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.jd, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.js = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.jq, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.jt = fmul <16 x float> %i.jq, %i.js
  %i.ju = fmul <16 x float> %i.js, splat (float -5.000000e-01)
  %i.jv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jt, <16 x float> %i.js, <16 x float> splat (float -3.000000e+00))
  %i.jw = fmul <16 x float> %i.ju, %i.jv
  %i.jx = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.jr, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.jy = fmul <16 x float> %i.jr, %i.jx
  %i.jz = fmul <16 x float> %i.jx, splat (float -5.000000e-01)
  %i.ka = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.jy, <16 x float> %i.jx, <16 x float> splat (float -3.000000e+00))
  %i.kb = fmul <16 x float> %i.jz, %i.ka
  %i.kc = sext i32 %i.if to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.kc
  %.val6754440 = load <8 x float>, ptr %i.kd, align 32, !tbaa !32
  %i.ke = bitcast i16 %.sroa.03695.0 to <16 x i1> ; 2 uses
  %i.kf = select <16 x i1> %i.ke, <16 x float> %i.jw, <16 x float> zeroinitializer ; 4 uses
  %i.kg = bitcast i16 %.sroa.93698.0 to <16 x i1> ; 2 uses
  %i.kh = select <16 x i1> %i.kg, <16 x float> %i.kb, <16 x float> zeroinitializer ; 4 uses
  %i.ki = fmul <16 x float> %i.jq, %i.kf          ; 2 uses
  %i.kj = fmul <16 x float> %i.jr, %i.kh          ; 2 uses
  %i.kk = fmul <16 x float> %i.ab, %i.ki          ; 2 uses
  %i.kl = fmul <16 x float> %i.ab, %i.kj          ; 2 uses
  %i.km = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.kk, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.kn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.kl, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ko = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.km, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.kp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.km, <16 x i1> splat (i1 true), i32 4)
  %i.kq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.km, <16 x i1> splat (i1 true), i32 4)
  %i.kr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.kn, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ks = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.kn, <16 x i1> splat (i1 true), i32 4)
  %i.kt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.kn, <16 x i1> splat (i1 true), i32 4)
  %i.ku = shufflevector <8 x float> %.val6754440, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.kv = fmul <16 x float> %.sroa.03532.0, %i.ku ; 2 uses
  %i.kw = fmul <16 x float> %.sroa.73536.0, %i.ku ; 2 uses
  %i.kx = fmul <16 x float> %i.kf, %i.kf          ; 4 uses
  %i.ky = fmul <16 x float> %i.kh, %i.kh
  %i.kz = select <16 x i1> %i.id, <16 x float> %i.kf, <16 x float> zeroinitializer ; 2 uses
  %i.la = select <16 x i1> %.not4276, <16 x float> zeroinitializer, <16 x float> %i.kh ; 2 uses
  %i.lb = sitofp <16 x i32> %i.km to <16 x float>
  %i.lc = sitofp <16 x i32> %i.kn to <16 x float>
  %i.ld = fsub <16 x float> %i.kk, %i.lb          ; 2 uses
  %i.le = fsub <16 x float> %i.kl, %i.lc          ; 2 uses
  %i.lf = fsub <16 x float> %i.kp, %i.ko
  %i.lg = fsub <16 x float> %i.ks, %i.kr
  %i.lh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ld, <16 x float> %i.lf, <16 x float> %i.ko) ; 2 uses
  %i.li = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.le, <16 x float> %i.lg, <16 x float> %i.kr) ; 2 uses
  %i.lj = fneg <16 x float> %i.lh
  %i.lk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lj, <16 x float> %i.ki, <16 x float> %i.kz)
  %i.ll = fneg <16 x float> %i.li
  %i.lm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ll, <16 x float> %i.kj, <16 x float> %i.la)
  %i.ln = fmul <16 x float> %i.ae, %i.ld
  %i.lo = fadd <16 x float> %i.ko, %i.lh
  %i.lp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ln, <16 x float> %i.lo, <16 x float> %i.kq)
  %i.lq = fmul <16 x float> %i.ae, %i.le
  %i.lr = fadd <16 x float> %i.kr, %i.li
  %i.ls = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.lq, <16 x float> %i.lr, <16 x float> %i.kt)
  %i.lt = fmul <16 x float> %i.kv, %i.lk
  %i.lu = fmul <16 x float> %i.kw, %i.lm
  %i.lv = select <16 x i1> %i.id, <16 x float> %i.an, <16 x float> zeroinitializer
  %i.lw = fadd <16 x float> %i.lv, %i.lp
  %i.lx = select <16 x i1> %.not4276, <16 x float> zeroinitializer, <16 x float> %i.an
  %i.ly = fadd <16 x float> %i.lx, %i.ls
  %i.lz = fsub <16 x float> %i.kz, %i.lw
  %i.ma = fmul <16 x float> %i.kv, %i.lz
  %i.mb = fsub <16 x float> %i.la, %i.ly
  %i.mc = fmul <16 x float> %i.kw, %i.mb
  %i.md = select <16 x i1> %i.ke, <16 x float> %i.ma, <16 x float> zeroinitializer
  %i.me = select <16 x i1> %i.kg, <16 x float> %i.mc, <16 x float> zeroinitializer
  %i.mf = fcmp olt <16 x float> %i.jq, %i.bd      ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.kc
  %.val6993926.le = load <8 x i32>, ptr %i.mg, align 32, !tbaa !32 ; 2 uses
  %i.mh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.gx, <8 x i32> %.val6993926.le, <8 x i1> splat (i1 true), i32 8)
  %i.mi = bitcast <8 x double> %i.mh to <16 x float> ; 2 uses
  %i.mj = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.hd, <8 x i32> %.val6993926.le, <8 x i1> splat (i1 true), i32 8)
  %i.mk = bitcast <8 x double> %i.mj to <16 x float> ; 2 uses
  %i.ml = shufflevector <16 x float> %i.mi, <16 x float> %i.mk, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.mm = shufflevector <16 x float> %i.mi, <16 x float> %i.mk, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.mn = fmul <16 x float> %i.kx, %i.kx
  %i.mo = fmul <16 x float> %i.kx, %i.mn
  %i.mp = select <16 x i1> %i.id, <16 x float> %i.mo, <16 x float> zeroinitializer ; 3 uses
  %i.mq = fmul <16 x float> %i.mp, %i.mp
  %i.mr = fmul <16 x float> %i.mp, %i.ml          ; 2 uses
  %i.ms = fmul <16 x float> %i.mq, %i.mm          ; 2 uses
  %i.mt = fsub <16 x float> %i.ms, %i.mr
  %i.mu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ml, <16 x float> %i.aq, <16 x float> %i.mr)
  %i.mv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mm, <16 x float> %i.at, <16 x float> %i.ms)
  %i.mw = fmul <16 x float> %i.mu, splat (float f0xBE2AAAAB)
  %i.mx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mv, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.mw)
  %i.my = select <16 x i1> %i.mf, <16 x float> %i.mt, <16 x float> zeroinitializer
  %i.mz = select <16 x i1> %i.mf, <16 x i1> %i.id, <16 x i1> zeroinitializer
  %i.na = select <16 x i1> %i.mz, <16 x float> %i.mx, <16 x float> zeroinitializer
  %.promoted.i = load <16 x float>, ptr %.val.val, align 64, !tbaa !32
  %i.nb = fadd <16 x float> %i.md, %.promoted.i
  %i.nc = fadd <16 x float> %i.me, %i.nb
  store <16 x float> %i.nc, ptr %.val.val, align 64, !tbaa !32
  %.sroa.01.0.copyload.i852 = load <16 x float>, ptr %i.bt, align 64, !tbaa !32
  %i.nd = fadd <16 x float> %.sroa.01.0.copyload.i852, %i.na
  store <16 x float> %i.nd, ptr %i.bt, align 64, !tbaa !32
  %i.ne = fadd <16 x float> %i.lt, %i.my
  %i.nf = fmul <16 x float> %i.kx, %i.ne          ; 3 uses
  %i.ng = fmul <16 x float> %i.ky, %i.lu          ; 3 uses
  %i.nh = fmul <16 x float> %i.io, %i.nf          ; 2 uses
  %i.ni = fmul <16 x float> %i.ip, %i.ng          ; 2 uses
  %i.nj = fmul <16 x float> %i.iq, %i.nf          ; 2 uses
  %i.nk = fmul <16 x float> %i.ir, %i.ng          ; 2 uses
  %i.nl = fmul <16 x float> %i.is, %i.nf          ; 2 uses
  %i.nm = fmul <16 x float> %i.it, %i.ng          ; 2 uses
  %i.nn = fadd <16 x float> %.sroa.03384.04039, %i.nh ; 2 uses
  %i.no = fadd <16 x float> %.sroa.163391.04038, %i.ni ; 2 uses
  %i.np = fadd <16 x float> %.sroa.03366.04041, %i.nj ; 2 uses
  %i.nq = fadd <16 x float> %.sroa.163373.04040, %i.nk ; 2 uses
  %i.nr = fadd <16 x float> %.sroa.03349.04043, %i.nl ; 2 uses
  %i.ns = fadd <16 x float> %.sroa.16.04042, %i.nm ; 2 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ih ; 4 uses
  %i.nu = fadd <16 x float> %i.ni, %i.nh          ; 2 uses
  %i.nv = fadd <16 x float> %i.nk, %i.nj          ; 2 uses
  %i.nw = fadd <16 x float> %i.nm, %i.nl          ; 2 uses
  %i.nx = load <8 x float>, ptr %i.nt, align 32, !tbaa !32
  %i.ny = shufflevector <16 x float> %i.nu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nz = shufflevector <16 x float> %i.nu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oa = fadd <8 x float> %i.ny, %i.nz
  %i.ob = fsub <8 x float> %i.nx, %i.oa
  store <8 x float> %i.ob, ptr %i.nt, align 32, !tbaa !32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nt, i64 32 ; 2 uses
  %i.od = load <8 x float>, ptr %i.oc, align 32, !tbaa !32
  %i.oe = shufflevector <16 x float> %i.nv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.of = shufflevector <16 x float> %i.nv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.og = fadd <8 x float> %i.oe, %i.of
  %i.oh = fsub <8 x float> %i.od, %i.og
  store <8 x float> %i.oh, ptr %i.oc, align 32, !tbaa !32
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nt, i64 64 ; 2 uses
  %i.oj = load <8 x float>, ptr %i.oi, align 32, !tbaa !32
  %i.ok = shufflevector <16 x float> %i.nw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ol = shufflevector <16 x float> %i.nw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.om = fadd <8 x float> %i.ok, %i.ol
  %i.on = fsub <8 x float> %i.oj, %i.om
  store <8 x float> %i.on, ptr %i.oi, align 32, !tbaa !32
  %indvars.iv.next4166 = add nsw i64 %indvars.iv4165, 1 ; 2 uses
  %exitcond4169.not = icmp eq i64 %indvars.iv.next4166, %wide.trip.count4168
  br i1 %exitcond4169.not, label %.loopexit, label %bb.d, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.d
  %i.oo = trunc nsw i64 %indvars.iv4165 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.sroa.163391.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163391.04038, %.critedge.loopexit ] ; 2 uses
  %.sroa.03384.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03384.04039, %.critedge.loopexit ] ; 2 uses
  %.sroa.163373.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163373.04040, %.critedge.loopexit ] ; 2 uses
  %.sroa.03366.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03366.04041, %.critedge.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.16.04042, %.critedge.loopexit ] ; 2 uses
  %.sroa.03349.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03349.04043, %.critedge.loopexit ] ; 2 uses
  %.0540.lcssa = phi i32 [ %i.cb, %.preheader ], [ %i.oo, %.critedge.loopexit ] ; 2 uses
  %i.op = icmp slt i32 %.0540.lcssa, %i.cd
  br i1 %i.op, label %.lr.ph4082, label %.loopexit

.lr.ph4082:                                       ; preds = %.critedge
  %i.oq = sext i32 %.0540.lcssa to i64
  %wide.trip.count4179 = sext i32 %i.cd to i64
  br label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572

_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572: ; preds = %.lr.ph4082, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572
  %indvars.iv4176 = phi i64 [ %i.oq, %.lr.ph4082 ], [ %indvars.iv.next4177, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ] ; 2 uses
  %.sroa.03349.14080 = phi <16 x float> [ %.sroa.03349.0.lcssa, %.lr.ph4082 ], [ %i.tn, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %.sroa.16.14079 = phi <16 x float> [ %.sroa.16.0.lcssa, %.lr.ph4082 ], [ %i.to, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %.sroa.03366.14078 = phi <16 x float> [ %.sroa.03366.0.lcssa, %.lr.ph4082 ], [ %i.tl, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %.sroa.163373.14077 = phi <16 x float> [ %.sroa.163373.0.lcssa, %.lr.ph4082 ], [ %i.tm, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %.sroa.03384.14076 = phi <16 x float> [ %.sroa.03384.0.lcssa, %.lr.ph4082 ], [ %i.tj, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %.sroa.163391.14075 = phi <16 x float> [ %.sroa.163391.0.lcssa, %.lr.ph4082 ], [ %i.tk, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572 ]
  %i.or = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4176
  %i.os = load i32, ptr %i.or, align 4, !tbaa !83 ; 2 uses
  %i.ot = shl nsw i32 %i.os, 3
  %i.ou = mul nsw i32 %i.os, 24
  %i.ov = sext i32 %i.ou to i64                   ; 2 uses
  %i.ow = getelementptr [4 x i8], ptr %i.bh, i64 %i.ov ; 3 uses
  %.val6764441 = load <8 x float>, ptr %i.ow, align 32, !tbaa !32
  %i.ox = shufflevector <8 x float> %.val6764441, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ow, i64 32
  %.val6774442 = load <8 x float>, ptr %i.oy, align 32, !tbaa !32
  %i.oz = shufflevector <8 x float> %.val6774442, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pa = getelementptr i8, ptr %i.ow, i64 64
  %.val6784443 = load <8 x float>, ptr %i.pa, align 32, !tbaa !32
  %i.pb = shufflevector <8 x float> %.val6784443, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pc = fsub <16 x float> %i.ex, %i.ox          ; 3 uses
  %i.pd = fsub <16 x float> %i.fd, %i.ox          ; 3 uses
  %i.pe = fsub <16 x float> %i.fk, %i.oz          ; 3 uses
  %i.pf = fsub <16 x float> %i.fq, %i.oz          ; 3 uses
  %i.pg = fsub <16 x float> %i.fx, %i.pb          ; 3 uses
  %i.ph = fsub <16 x float> %i.gd, %i.pb          ; 3 uses
  %i.pi = fmul <16 x float> %i.pc, %i.pc
  %i.pj = fmul <16 x float> %i.pe, %i.pe
  %i.pk = fadd <16 x float> %i.pi, %i.pj
  %i.pl = fmul <16 x float> %i.pg, %i.pg
  %i.pm = fadd <16 x float> %i.pk, %i.pl          ; 2 uses
  %i.pn = fmul <16 x float> %i.pd, %i.pd
  %i.po = fmul <16 x float> %i.pf, %i.pf
  %i.pp = fadd <16 x float> %i.pn, %i.po
  %i.pq = fmul <16 x float> %i.ph, %i.ph
  %i.pr = fadd <16 x float> %i.pp, %i.pq          ; 2 uses
  %i.ps = fcmp olt <16 x float> %i.pm, %i.ay      ; 2 uses
  %i.pt = fcmp olt <16 x float> %i.pr, %i.ay      ; 2 uses
  %i.pu = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pm, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.pv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pr, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.pw = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pu, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.px = fmul <16 x float> %i.pu, %i.pw
  %i.py = fmul <16 x float> %i.pw, splat (float -5.000000e-01)
  %i.pz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.px, <16 x float> %i.pw, <16 x float> splat (float -3.000000e+00))
  %i.qa = fmul <16 x float> %i.py, %i.pz
  %i.qb = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pv, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.qc = fmul <16 x float> %i.pv, %i.qb
  %i.qd = fmul <16 x float> %i.qb, splat (float -5.000000e-01)
  %i.qe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qc, <16 x float> %i.qb, <16 x float> splat (float -3.000000e+00))
  %i.qf = fmul <16 x float> %i.qd, %i.qe
  %i.qg = sext i32 %i.ot to i64                   ; 2 uses
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.qg
  %.val6794444 = load <8 x float>, ptr %i.qh, align 32, !tbaa !32
  %i.qi = select <16 x i1> %i.ps, <16 x float> %i.qa, <16 x float> zeroinitializer ; 5 uses
  %i.qj = select <16 x i1> %i.pt, <16 x float> %i.qf, <16 x float> zeroinitializer ; 5 uses
  %i.qk = fmul <16 x float> %i.pu, %i.qi          ; 2 uses
  %i.ql = fmul <16 x float> %i.pv, %i.qj          ; 2 uses
  %i.qm = fmul <16 x float> %i.ab, %i.qk          ; 2 uses
  %i.qn = fmul <16 x float> %i.ab, %i.ql          ; 2 uses
  %i.qo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qm, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qn, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4)
  %i.qs = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4)
  %i.qt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4)
  %i.qv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4)
  %i.qw = shufflevector <8 x float> %.val6794444, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qx = fmul <16 x float> %.sroa.03532.0, %i.qw ; 2 uses
  %i.qy = fmul <16 x float> %.sroa.73536.0, %i.qw ; 2 uses
  %i.qz = fmul <16 x float> %i.qi, %i.qi          ; 4 uses
  %i.ra = fmul <16 x float> %i.qj, %i.qj
  %i.rb = sitofp <16 x i32> %i.qo to <16 x float>
  %i.rc = sitofp <16 x i32> %i.qp to <16 x float>
  %i.rd = fsub <16 x float> %i.qm, %i.rb          ; 2 uses
  %i.re = fsub <16 x float> %i.qn, %i.rc          ; 2 uses
  %i.rf = fsub <16 x float> %i.qr, %i.qq
  %i.rg = fsub <16 x float> %i.qu, %i.qt
  %i.rh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rd, <16 x float> %i.rf, <16 x float> %i.qq) ; 2 uses
  %i.ri = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.re, <16 x float> %i.rg, <16 x float> %i.qt) ; 2 uses
  %i.rj = fneg <16 x float> %i.rh
  %i.rk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rj, <16 x float> %i.qk, <16 x float> %i.qi)
  %i.rl = fneg <16 x float> %i.ri
  %i.rm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> %i.ql, <16 x float> %i.qj)
  %i.rn = fmul <16 x float> %i.ae, %i.rd
  %i.ro = fadd <16 x float> %i.qq, %i.rh
  %i.rp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rn, <16 x float> %i.ro, <16 x float> %i.qs)
  %i.rq = fmul <16 x float> %i.ae, %i.re
  %i.rr = fadd <16 x float> %i.qt, %i.ri
  %i.rs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rq, <16 x float> %i.rr, <16 x float> %i.qv)
  %i.rt = fmul <16 x float> %i.qx, %i.rk
  %i.ru = fmul <16 x float> %i.qy, %i.rm
  %i.rv = fadd <16 x float> %i.an, %i.rp
  %i.rw = fadd <16 x float> %i.an, %i.rs
  %i.rx = fsub <16 x float> %i.qi, %i.rv
  %i.ry = fmul <16 x float> %i.qx, %i.rx
  %i.rz = fsub <16 x float> %i.qj, %i.rw
  %i.sa = fmul <16 x float> %i.qy, %i.rz
  %i.sb = select <16 x i1> %i.ps, <16 x float> %i.ry, <16 x float> zeroinitializer
  %i.sc = select <16 x i1> %i.pt, <16 x float> %i.sa, <16 x float> zeroinitializer
  %i.sd = fcmp olt <16 x float> %i.pu, %i.bd      ; 2 uses
  %i.se = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.qg
  %.val6983929.le = load <8 x i32>, ptr %i.se, align 32, !tbaa !32 ; 2 uses
  %i.sf = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.gx, <8 x i32> %.val6983929.le, <8 x i1> splat (i1 true), i32 8)
  %i.sg = bitcast <8 x double> %i.sf to <16 x float> ; 2 uses
  %i.sh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.hd, <8 x i32> %.val6983929.le, <8 x i1> splat (i1 true), i32 8)
  %i.si = bitcast <8 x double> %i.sh to <16 x float> ; 2 uses
  %i.sj = shufflevector <16 x float> %i.sg, <16 x float> %i.si, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.sk = shufflevector <16 x float> %i.sg, <16 x float> %i.si, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.sl = fmul <16 x float> %i.qz, %i.qz
  %i.sm = fmul <16 x float> %i.qz, %i.sl          ; 3 uses
  %i.sn = fmul <16 x float> %i.sm, %i.sm
  %i.so = fmul <16 x float> %i.sm, %i.sj          ; 2 uses
  %i.sp = fmul <16 x float> %i.sn, %i.sk          ; 2 uses
  %i.sq = fsub <16 x float> %i.sp, %i.so
  %i.sr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sj, <16 x float> %i.aq, <16 x float> %i.so)
  %i.ss = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sk, <16 x float> %i.at, <16 x float> %i.sp)
  %i.st = fmul <16 x float> %i.sr, splat (float f0xBE2AAAAB)
  %i.su = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ss, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.st)
  %i.sv = select <16 x i1> %i.sd, <16 x float> %i.sq, <16 x float> zeroinitializer
  %i.sw = select <16 x i1> %i.sd, <16 x float> %i.su, <16 x float> zeroinitializer
  %.promoted.i1002 = load <16 x float>, ptr %.val.val, align 64, !tbaa !32
  %i.sx = fadd <16 x float> %i.sb, %.promoted.i1002
  %i.sy = fadd <16 x float> %i.sc, %i.sx
  store <16 x float> %i.sy, ptr %.val.val, align 64, !tbaa !32
  %.sroa.01.0.copyload.i1005 = load <16 x float>, ptr %i.bt, align 64, !tbaa !32
  %i.sz = fadd <16 x float> %.sroa.01.0.copyload.i1005, %i.sw
  store <16 x float> %i.sz, ptr %i.bt, align 64, !tbaa !32
  %i.ta = fadd <16 x float> %i.rt, %i.sv
  %i.tb = fmul <16 x float> %i.qz, %i.ta          ; 3 uses
  %i.tc = fmul <16 x float> %i.ra, %i.ru          ; 3 uses
  %i.td = fmul <16 x float> %i.pc, %i.tb          ; 2 uses
  %i.te = fmul <16 x float> %i.pd, %i.tc          ; 2 uses
  %i.tf = fmul <16 x float> %i.pe, %i.tb          ; 2 uses
  %i.tg = fmul <16 x float> %i.pf, %i.tc          ; 2 uses
  %i.th = fmul <16 x float> %i.pg, %i.tb          ; 2 uses
  %i.ti = fmul <16 x float> %i.ph, %i.tc          ; 2 uses
  %i.tj = fadd <16 x float> %.sroa.03384.14076, %i.td ; 2 uses
  %i.tk = fadd <16 x float> %.sroa.163391.14075, %i.te ; 2 uses
  %i.tl = fadd <16 x float> %.sroa.03366.14078, %i.tf ; 2 uses
  %i.tm = fadd <16 x float> %.sroa.163373.14077, %i.tg ; 2 uses
  %i.tn = fadd <16 x float> %.sroa.03349.14080, %i.th ; 2 uses
  %i.to = fadd <16 x float> %.sroa.16.14079, %i.ti ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ov ; 4 uses
  %i.tq = fadd <16 x float> %i.te, %i.td          ; 2 uses
  %i.tr = fadd <16 x float> %i.tg, %i.tf          ; 2 uses
  %i.ts = fadd <16 x float> %i.ti, %i.th          ; 2 uses
  %i.tt = load <8 x float>, ptr %i.tp, align 32, !tbaa !32
  %i.tu = shufflevector <16 x float> %i.tq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tv = shufflevector <16 x float> %i.tq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tw = fadd <8 x float> %i.tu, %i.tv
  %i.tx = fsub <8 x float> %i.tt, %i.tw
  store <8 x float> %i.tx, ptr %i.tp, align 32, !tbaa !32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 32 ; 2 uses
  %i.tz = load <8 x float>, ptr %i.ty, align 32, !tbaa !32
  %i.ua = shufflevector <16 x float> %i.tr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ub = shufflevector <16 x float> %i.tr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uc = fadd <8 x float> %i.ua, %i.ub
  %i.ud = fsub <8 x float> %i.tz, %i.uc
  store <8 x float> %i.ud, ptr %i.ty, align 32, !tbaa !32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tp, i64 64 ; 2 uses
  %i.uf = load <8 x float>, ptr %i.ue, align 32, !tbaa !32
  %i.ug = shufflevector <16 x float> %i.ts, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uh = shufflevector <16 x float> %i.ts, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ui = fadd <8 x float> %i.ug, %i.uh
  %i.uj = fsub <8 x float> %i.uf, %i.ui
  store <8 x float> %i.uj, ptr %i.ue, align 32, !tbaa !32
  %indvars.iv.next4177 = add nsw i64 %indvars.iv4176, 1 ; 2 uses
  %exitcond4180.not = icmp eq i64 %indvars.iv.next4177, %wide.trip.count4179
  br i1 %exitcond4180.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit572, !llvm.loop !18

bb.h:                                             ; preds = %.loopexit3936._crit_edge
  br i1 %i.de, label %.preheader3932, label %.preheader3934

.preheader3934:                                   ; preds = %bb.h
  br i1 %i.hq, label %.lr.ph.preheader, label %.critedge5

.lr.ph.preheader:                                 ; preds = %.preheader3934
  %i.uk = sext i32 %i.cb to i64
  %wide.trip.count = sext i32 %i.cd to i64
  br label %.lr.ph

.preheader3932:                                   ; preds = %bb.h
  br i1 %i.hq, label %.lr.ph3990.preheader, label %.critedge3

.lr.ph3990.preheader:                             ; preds = %.preheader3932
  %i.ul = sext i32 %i.cb to i64
  %wide.trip.count4140 = sext i32 %i.cd to i64
  br label %.lr.ph3990

.lr.ph3990:                                       ; preds = %.lr.ph3990.preheader, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4137 = phi i64 [ %i.ul, %.lr.ph3990.preheader ], [ %indvars.iv.next4138, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.03349.23988 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.23987 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03366.23986 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163373.23985 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03384.23984 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163391.23983 = phi <16 x float> [ zeroinitializer, %.lr.ph3990.preheader ], [ %i.abg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.um = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv4137
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !111
  %.not548 = icmp eq i32 %i.up, -1
  br i1 %.not548, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit553

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit553: ; preds = %.lr.ph3990
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4137 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !83 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !112
  %i.uu = insertelement <16 x i32> poison, i32 %i.ut, i64 0
  %i.uv = shufflevector <16 x i32> %i.uu, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.uw = and <16 x i32> %.sroa.04212.0.copyload, %i.uv
  %i.ux = icmp ne <16 x i32> %i.uw, zeroinitializer ; 4 uses
  %i.uy = and <16 x i32> %.sroa.6.0.copyload, %i.uv
  %i.uz = icmp ne <16 x i32> %i.uy, zeroinitializer ; 4 uses
  %i.va = shl nsw i32 %i.ur, 3
  %i.vb = mul nsw i32 %i.ur, 24
  %i.vc = sext i32 %i.vb to i64                   ; 2 uses
  %i.vd = getelementptr [4 x i8], ptr %i.bh, i64 %i.vc ; 3 uses
  %.val6804429 = load <8 x float>, ptr %i.vd, align 32, !tbaa !32
  %i.ve = shufflevector <8 x float> %.val6804429, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vf = getelementptr i8, ptr %i.vd, i64 32
  %.val6814430 = load <8 x float>, ptr %i.vf, align 32, !tbaa !32
  %i.vg = shufflevector <8 x float> %.val6814430, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vh = getelementptr i8, ptr %i.vd, i64 64
  %.val6824431 = load <8 x float>, ptr %i.vh, align 32, !tbaa !32
  %i.vi = shufflevector <8 x float> %.val6824431, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.vj = fsub <16 x float> %i.ex, %i.ve          ; 3 uses
  %i.vk = fsub <16 x float> %i.fd, %i.ve          ; 3 uses
  %i.vl = fsub <16 x float> %i.fk, %i.vg          ; 3 uses
  %i.vm = fsub <16 x float> %i.fq, %i.vg          ; 3 uses
  %i.vn = fsub <16 x float> %i.fx, %i.vi          ; 3 uses
  %i.vo = fsub <16 x float> %i.gd, %i.vi          ; 3 uses
  %i.vp = fmul <16 x float> %i.vj, %i.vj
  %i.vq = fmul <16 x float> %i.vl, %i.vl
  %i.vr = fadd <16 x float> %i.vp, %i.vq
  %i.vs = fmul <16 x float> %i.vn, %i.vn
  %i.vt = fadd <16 x float> %i.vr, %i.vs          ; 2 uses
  %i.vu = fmul <16 x float> %i.vk, %i.vk
  %i.vv = fmul <16 x float> %i.vm, %i.vm
  %i.vw = fadd <16 x float> %i.vu, %i.vv
  %i.vx = fmul <16 x float> %i.vo, %i.vo
  %i.vy = fadd <16 x float> %i.vw, %i.vx          ; 2 uses
  %i.vz = fcmp olt <16 x float> %i.vt, %i.ay
  %i.wa = bitcast <16 x i1> %i.vz to i16          ; 3 uses
  %i.wb = fcmp olt <16 x float> %i.vy, %i.ay
  %i.wc = bitcast <16 x i1> %i.wb to i16          ; 3 uses
  %i.wd = shl nsw i32 %i.ur, 1                    ; 2 uses
  %i.we = icmp eq i32 %i.wd, %i.cg
  br i1 %i.we, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit553
  %i.wf = and i16 %i.wa, %i.t
  %i.wg = and i16 %i.wc, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit553
  %i.wh = or disjoint i32 %i.wd, 1
  %i.wi = icmp eq i32 %i.wh, %i.cg
  br i1 %i.wi, label %bb.k, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.k:                                             ; preds = %bb.j
  %i.wj = and i16 %i.wa, %i.v
  %i.wk = and i16 %i.wc, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.03792.0 = phi i16 [ %i.wf, %bb.i ], [ %i.wj, %bb.k ], [ %i.wa, %bb.j ]
  %.sroa.93795.0 = phi i16 [ %i.wg, %bb.i ], [ %i.wk, %bb.k ], [ %i.wc, %bb.j ]
  %i.wl = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.vt, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.wm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.vy, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.wn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.wl, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.wo = fmul <16 x float> %i.wl, %i.wn
  %i.wp = fmul <16 x float> %i.wn, splat (float -5.000000e-01)
  %i.wq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.wo, <16 x float> %i.wn, <16 x float> splat (float -3.000000e+00))
  %i.wr = fmul <16 x float> %i.wp, %i.wq
  %i.ws = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.wm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.wt = fmul <16 x float> %i.wm, %i.ws
  %i.wu = fmul <16 x float> %i.ws, splat (float -5.000000e-01)
  %i.wv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.wt, <16 x float> %i.ws, <16 x float> splat (float -3.000000e+00))
  %i.ww = fmul <16 x float> %i.wu, %i.wv
  %i.wx = sext i32 %i.va to i64                   ; 2 uses
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.wx
  %.val6834432 = load <8 x float>, ptr %i.wy, align 32, !tbaa !32
  %i.wz = bitcast i16 %.sroa.03792.0 to <16 x i1> ; 2 uses
  %i.xa = select <16 x i1> %i.wz, <16 x float> %i.wr, <16 x float> zeroinitializer ; 4 uses
  %i.xb = bitcast i16 %.sroa.93795.0 to <16 x i1> ; 2 uses
  %i.xc = select <16 x i1> %i.xb, <16 x float> %i.ww, <16 x float> zeroinitializer ; 4 uses
  %i.xd = fmul <16 x float> %i.wl, %i.xa          ; 2 uses
  %i.xe = fmul <16 x float> %i.wm, %i.xc          ; 2 uses
  %i.xf = fmul <16 x float> %i.ab, %i.xd          ; 2 uses
  %i.xg = fmul <16 x float> %i.ab, %i.xe          ; 2 uses
  %i.xh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.xf, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.xi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.xg, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.xj = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.xh, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.xk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.xh, <16 x i1> splat (i1 true), i32 4)
  %i.xl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.xh, <16 x i1> splat (i1 true), i32 4)
  %i.xm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.xi, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.xn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bu, <16 x i32> %i.xi, <16 x i1> splat (i1 true), i32 4)
  %i.xo = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.xi, <16 x i1> splat (i1 true), i32 4)
  %i.xp = fsub <16 x float> %i.xk, %i.xj
  %i.xq = fsub <16 x float> %i.xn, %i.xm
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.wx
  %.val6973921 = load <8 x i32>, ptr %i.xr, align 32, !tbaa !32 ; 4 uses
  %i.xs = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.gx, <8 x i32> %.val6973921, <8 x i1> splat (i1 true), i32 8)
  %i.xt = bitcast <8 x double> %i.xs to <16 x float> ; 2 uses
  %i.xu = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.hd, <8 x i32> %.val6973921, <8 x i1> splat (i1 true), i32 8)
  %i.xv = bitcast <8 x double> %i.xu to <16 x float> ; 2 uses
  %i.xw = shufflevector <16 x float> %i.xt, <16 x float> %i.xv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.xx = shufflevector <16 x float> %i.xt, <16 x float> %i.xv, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.xy = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.hj, <8 x i32> %.val6973921, <8 x i1> splat (i1 true), i32 8)
  %i.xz = bitcast <8 x double> %i.xy to <16 x float> ; 2 uses
  %i.ya = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.hp, <8 x i32> %.val6973921, <8 x i1> splat (i1 true), i32 8)
  %i.yb = bitcast <8 x double> %i.ya to <16 x float> ; 2 uses
  %i.yc = shufflevector <16 x float> %i.xz, <16 x float> %i.yb, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.yd = shufflevector <16 x float> %i.xz, <16 x float> %i.yb, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.ye = shufflevector <8 x float> %.val6834432, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.yf = fmul <16 x float> %.sroa.03532.0, %i.ye ; 2 uses
  %i.yg = fmul <16 x float> %.sroa.73536.0, %i.ye ; 2 uses
  %i.yh = fmul <16 x float> %i.xa, %i.xa          ; 4 uses
  %i.yi = fmul <16 x float> %i.xc, %i.xc          ; 4 uses
  %i.yj = select <16 x i1> %i.ux, <16 x float> %i.xa, <16 x float> zeroinitializer ; 2 uses
  %i.yk = select <16 x i1> %i.uz, <16 x float> %i.xc, <16 x float> zeroinitializer ; 2 uses
  %i.yl = sitofp <16 x i32> %i.xh to <16 x float>
  %i.ym = sitofp <16 x i32> %i.xi to <16 x float>
  %i.yn = fsub <16 x float> %i.xf, %i.yl          ; 2 uses
end_hunk_0
