Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTab_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1593
inline.NumDeleted: 341
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4122.preheader
  %i.gs = ashr i32 %i.do, %i.gr
  %i.gt = and i32 %i.gs, %i.dq
  %i.gu = mul nsw i32 %i.fm, %i.gt
  %i.gv = load ptr, ptr %i.es, align 8, !tbaa !93
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !41
  %i.gz = fadd float %i.gq, %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !41
  %i.ha = getelementptr [4 x i8], ptr %i.ay, i64 %i.fn
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !41 ; 2 uses
  %i.hd = fmul float %i.hc, %i.bs
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = fmul float %i.ai, %i.he
  %i.hg = mul i32 %i.dp, 3
  %i.hh = ashr i32 %i.do, %i.hg
  %i.hi = and i32 %i.hh, %i.dq
  %i.hj = mul nsw i32 %i.fm, %i.hi
  %i.hk = load ptr, ptr %i.fd, align 8, !tbaa !93
  %i.hl = sext i32 %i.hj to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !41
  %i.ho = fadd float %i.hf, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !41
  br label %.loopexit4121

.loopexit4121:                                    ; preds = %.preheader4120, %bb.b, %bb.a
  %i.hp = add nsw i32 %i.de, 8
  %i.hq = add nsw i32 %i.de, 16
  %i.hr = sext i32 %i.de to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.hr ; 4 uses
  %.val.i = load float, ptr %i.hs, align 1, !tbaa !29, !noalias !97
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %.val3.i = load float, ptr %i.ht, align 1, !tbaa !29, !noalias !97
  %i.hu = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.hv = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.hw = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hx = fadd <16 x float> %i.cn, %i.hw          ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.val.i676 = load float, ptr %i.hy, align 1, !tbaa !29, !noalias !97
  %i.hz = getelementptr i8, ptr %i.hs, i64 12
  %.val3.i677 = load float, ptr %i.hz, align 1, !tbaa !29, !noalias !97
  %i.ia = insertelement <4 x float> poison, float %.val.i676, i64 0
  %i.ib = insertelement <4 x float> poison, float %.val3.i677, i64 0
  %i.ic = shufflevector <4 x float> %i.ia, <4 x float> %i.ib, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.id = fadd <16 x float> %i.cn, %i.ic          ; 6 uses
  %i.ie = sext i32 %i.hp to i64                   ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ie ; 4 uses
  %.val.i679 = load float, ptr %i.if, align 1, !tbaa !29, !noalias !98
  %i.ig = getelementptr i8, ptr %i.if, i64 4
  %.val3.i680 = load float, ptr %i.ig, align 1, !tbaa !29, !noalias !98
  %i.ih = insertelement <4 x float> poison, float %.val.i679, i64 0
  %i.ii = insertelement <4 x float> poison, float %.val3.i680, i64 0
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> %i.ii, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ik = fadd <16 x float> %i.ct, %i.ij          ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.val.i682 = load float, ptr %i.il, align 1, !tbaa !29, !noalias !98
  %i.im = getelementptr i8, ptr %i.if, i64 12
  %.val3.i683 = load float, ptr %i.im, align 1, !tbaa !29, !noalias !98
  %i.in = insertelement <4 x float> poison, float %.val.i682, i64 0
  %i.io = insertelement <4 x float> poison, float %.val3.i683, i64 0
  %i.ip = shufflevector <4 x float> %i.in, <4 x float> %i.io, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iq = fadd <16 x float> %i.ct, %i.ip          ; 6 uses
  %i.ir = sext i32 %i.hq to i64                   ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ir ; 4 uses
  %.val.i685 = load float, ptr %i.is, align 1, !tbaa !29, !noalias !99
  %i.it = getelementptr i8, ptr %i.is, i64 4
  %.val3.i686 = load float, ptr %i.it, align 1, !tbaa !29, !noalias !99
  %i.iu = insertelement <4 x float> poison, float %.val.i685, i64 0
  %i.iv = insertelement <4 x float> poison, float %.val3.i686, i64 0
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ix = fadd <16 x float> %i.cz, %i.iw          ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.val.i688 = load float, ptr %i.iy, align 1, !tbaa !29, !noalias !99
  %i.iz = getelementptr i8, ptr %i.is, i64 12
  %.val3.i689 = load float, ptr %i.iz, align 1, !tbaa !29, !noalias !99
  %i.ja = insertelement <4 x float> poison, float %.val.i688, i64 0
  %i.jb = insertelement <4 x float> poison, float %.val3.i689, i64 0
  %i.jc = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jd = fadd <16 x float> %i.cz, %i.jc          ; 6 uses
  br i1 %i.di, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit4121
  %i.je = sext i32 %i.da to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.je ; 4 uses
  %.val.i691 = load float, ptr %i.jf, align 1, !tbaa !29, !noalias !100
  %i.jg = getelementptr i8, ptr %i.jf, i64 4
  %.val2.i = load float, ptr %i.jg, align 1, !tbaa !29, !noalias !100
  %i.jh = insertelement <4 x float> poison, float %.val.i691, i64 0
  %i.ji = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.jj = shufflevector <4 x float> %i.jh, <4 x float> %i.ji, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jk = fmul <16 x float> %i.bu, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.val.i692 = load float, ptr %i.jl, align 1, !tbaa !29, !noalias !100
  %i.jm = getelementptr i8, ptr %i.jf, i64 12
  %.val2.i693 = load float, ptr %i.jm, align 1, !tbaa !29, !noalias !100
  %i.jn = insertelement <4 x float> poison, float %.val.i692, i64 0
  %i.jo = insertelement <4 x float> poison, float %.val2.i693, i64 0
  %i.jp = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jq = fmul <16 x float> %i.bu, %i.jp
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit4121
  %.sroa.03742.0 = phi <16 x float> [ %i.jk, %bb.c ], [ undef, %.loopexit4121 ] ; 4 uses
  %.sroa.73746.0 = phi <16 x float> [ %i.jq, %bb.c ], [ undef, %.loopexit4121 ] ; 4 uses
  %i.jr = sext i32 %i.dg to i64
  %i.js = getelementptr [4 x i8], ptr %i.f, i64 %i.jr ; 8 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 32
  %.val637 = load float, ptr %i.js, align 1, !tbaa !29
  %i.ju = getelementptr i8, ptr %i.js, i64 4
  %.val638 = load float, ptr %i.ju, align 1, !tbaa !29
  %i.jv = insertelement <4 x float> poison, float %.val637, i64 0
  %i.jw = insertelement <4 x float> poison, float %.val638, i64 0
  %i.jx = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val639 = load float, ptr %i.jt, align 1, !tbaa !29
  %i.jy = getelementptr i8, ptr %i.js, i64 36
  %.val640 = load float, ptr %i.jy, align 1, !tbaa !29
  %i.jz = insertelement <4 x float> poison, float %.val639, i64 0
  %i.ka = insertelement <4 x float> poison, float %.val640, i64 0
  %i.kb = shufflevector <4 x float> %i.jz, <4 x float> %i.ka, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %.val637.1 = load float, ptr %i.kc, align 1, !tbaa !29
  %i.kd = getelementptr i8, ptr %i.js, i64 12
  %.val638.1 = load float, ptr %i.kd, align 1, !tbaa !29
  %i.ke = insertelement <4 x float> poison, float %.val637.1, i64 0
  %i.kf = insertelement <4 x float> poison, float %.val638.1, i64 0
  %i.kg = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kh = getelementptr i8, ptr %i.js, i64 40
  %.val639.1 = load float, ptr %i.kh, align 1, !tbaa !29
  %i.ki = getelementptr i8, ptr %i.js, i64 44
  %.val640.1 = load float, ptr %i.ki, align 1, !tbaa !29
  %i.kj = insertelement <4 x float> poison, float %.val639.1, i64 0
  %i.kk = insertelement <4 x float> poison, float %.val640.1, i64 0
  %i.kl = shufflevector <4 x float> %i.kj, <4 x float> %i.kk, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.km = icmp slt i32 %i.cd, %i.cf               ; 3 uses
  br i1 %i.dk, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.d
  br i1 %i.km, label %.lr.ph4214, label %.critedge

.lr.ph4214:                                       ; preds = %.preheader
  %i.kn = sext i32 %i.cd to i64
  %wide.trip.count4315 = sext i32 %i.cf to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph4214, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528
  %indvars.iv4312 = phi i64 [ %i.kn, %.lr.ph4214 ], [ %indvars.iv.next4313, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 4 uses
  %.sroa.163643.04212 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03636.04211 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vp, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.163625.04210 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03618.04209 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.16.04208 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03601.04207 = phi <16 x float> [ zeroinitializer, %.lr.ph4214 ], [ %i.vt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %i.ko = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv4312
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !87
  %.not519 = icmp eq i32 %i.kr, -1
  br i1 %.not519, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527: ; preds = %bb.e
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv4312 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !95 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !101
  %i.kw = insertelement <16 x i32> poison, i32 %i.kv, i64 0
  %i.kx = shufflevector <16 x i32> %i.kw, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ky = and <16 x i32> %.sroa.04346.0.copyload, %i.kx
  %i.kz = icmp ne <16 x i32> %i.ky, zeroinitializer ; 4 uses
  %i.la = and <16 x i32> %.sroa.6.0.copyload, %i.kx
  %.not4409 = icmp eq <16 x i32> %i.la, zeroinitializer ; 2 uses
  %i.lb = shl nsw i32 %i.kt, 3
  %i.lc = mul nsw i32 %i.kt, 24
  %i.ld = sext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.ba, i64 %i.ld ; 3 uses
  %.val6414578 = load <8 x float>, ptr %i.le, align 32, !tbaa !29
  %i.lf = shufflevector <8 x float> %.val6414578, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 32
  %.val6424579 = load <8 x float>, ptr %i.lg, align 32, !tbaa !29
  %i.lh = shufflevector <8 x float> %.val6424579, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.li = getelementptr i8, ptr %i.le, i64 64
  %.val6434580 = load <8 x float>, ptr %i.li, align 32, !tbaa !29
  %i.lj = shufflevector <8 x float> %.val6434580, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lk = fsub <16 x float> %i.hx, %i.lf          ; 3 uses
  %i.ll = fsub <16 x float> %i.id, %i.lf          ; 3 uses
  %i.lm = fsub <16 x float> %i.ik, %i.lh          ; 3 uses
  %i.ln = fsub <16 x float> %i.iq, %i.lh          ; 3 uses
  %i.lo = fsub <16 x float> %i.ix, %i.lj          ; 3 uses
  %i.lp = fsub <16 x float> %i.jd, %i.lj          ; 3 uses
  %i.lq = fmul <16 x float> %i.lk, %i.lk
  %i.lr = fmul <16 x float> %i.lm, %i.lm
  %i.ls = fadd <16 x float> %i.lq, %i.lr
  %i.lt = fmul <16 x float> %i.lo, %i.lo
  %i.lu = fadd <16 x float> %i.ls, %i.lt          ; 2 uses
  %i.lv = fmul <16 x float> %i.ll, %i.ll
  %i.lw = fmul <16 x float> %i.ln, %i.ln
  %i.lx = fadd <16 x float> %i.lv, %i.lw
  %i.ly = fmul <16 x float> %i.lp, %i.lp
  %i.lz = fadd <16 x float> %i.lx, %i.ly          ; 2 uses
  %i.ma = fcmp olt <16 x float> %i.lu, %i.aw
  %i.mb = bitcast <16 x i1> %i.ma to i16          ; 3 uses
  %i.mc = fcmp olt <16 x float> %i.lz, %i.aw
  %i.md = bitcast <16 x i1> %i.mc to i16          ; 3 uses
  %i.me = shl nsw i32 %i.kt, 1                    ; 3 uses
  %i.mf = icmp eq i32 %i.me, %i.ci
  br i1 %i.mf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.mg = and i16 %i.mb, %i.r
  %i.mh = and i16 %i.md, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.mi = or disjoint i32 %i.me, 1
  %i.mj = icmp eq i32 %i.mi, %i.ci
  br i1 %i.mj, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.h:                                             ; preds = %bb.g
  %i.mk = and i16 %i.mb, %i.t
  %i.ml = and i16 %i.md, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03903.0 = phi i16 [ %i.mg, %bb.f ], [ %i.mk, %bb.h ], [ %i.mb, %bb.g ]
  %.sroa.10.0 = phi i16 [ %i.mh, %bb.f ], [ %i.ml, %bb.h ], [ %i.md, %bb.g ]
  %i.mm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lu, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mn = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lz, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mo = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mp = fmul <16 x float> %i.mm, %i.mo
  %i.mq = fmul <16 x float> %i.mo, splat (float -5.000000e-01)
  %i.mr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mp, <16 x float> %i.mo, <16 x float> splat (float -3.000000e+00))
  %i.ms = fmul <16 x float> %i.mq, %i.mr
  %i.mt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mn, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mu = fmul <16 x float> %i.mn, %i.mt
  %i.mv = fmul <16 x float> %i.mt, splat (float -5.000000e-01)
  %i.mw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mu, <16 x float> %i.mt, <16 x float> splat (float -3.000000e+00))
  %i.mx = fmul <16 x float> %i.mv, %i.mw
  %i.my = sext i32 %i.lb to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.my
  %.val6444581 = load <8 x float>, ptr %i.mz, align 32, !tbaa !29
  %5 = bitcast i16 %.sroa.03903.0 to <16 x i1>    ; 3 uses
  %i.na = select <16 x i1> %5, <16 x float> %i.ms, <16 x float> zeroinitializer ; 5 uses
  %6 = bitcast i16 %.sroa.10.0 to <16 x i1>       ; 2 uses
  %i.nb = select <16 x i1> %6, <16 x float> %i.mx, <16 x float> zeroinitializer ; 4 uses
  %i.nc = fmul <16 x float> %i.mm, %i.na          ; 2 uses
  %i.nd = fmul <16 x float> %i.mn, %i.nb          ; 2 uses
  %i.ne = fmul <16 x float> %i.z, %i.nc           ; 2 uses
  %i.nf = fmul <16 x float> %i.z, %i.nd           ; 2 uses
  %i.ng = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ne, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.nh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.nf, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ni = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.ng, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.nj = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.ng, <16 x i1> splat (i1 true), i32 4)
  %i.nk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.ng, <16 x i1> splat (i1 true), i32 4)
  %i.nl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.nh, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.nm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.nh, <16 x i1> splat (i1 true), i32 4)
  %i.nn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.nh, <16 x i1> splat (i1 true), i32 4)
  %i.no = shufflevector <8 x float> %.val6444581, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.np = fmul <16 x float> %.sroa.03742.0, %i.no ; 2 uses
  %i.nq = fmul <16 x float> %.sroa.73746.0, %i.no ; 2 uses
  %i.nr = fmul <16 x float> %i.na, %i.na
  %i.ns = fmul <16 x float> %i.nb, %i.nb
  %i.nt = select <16 x i1> %i.kz, <16 x float> %i.na, <16 x float> zeroinitializer ; 2 uses
  %i.nu = select <16 x i1> %.not4409, <16 x float> zeroinitializer, <16 x float> %i.nb ; 2 uses
  %i.nv = sitofp <16 x i32> %i.ng to <16 x float>
  %i.nw = sitofp <16 x i32> %i.nh to <16 x float>
  %i.nx = fsub <16 x float> %i.ne, %i.nv          ; 2 uses
  %i.ny = fsub <16 x float> %i.nf, %i.nw          ; 2 uses
  %i.nz = fsub <16 x float> %i.nj, %i.ni
  %i.oa = fsub <16 x float> %i.nm, %i.nl
  %i.ob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nx, <16 x float> %i.nz, <16 x float> %i.ni) ; 2 uses
  %i.oc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> %i.oa, <16 x float> %i.nl) ; 2 uses
  %i.od = fneg <16 x float> %i.ob
  %i.oe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> %i.nc, <16 x float> %i.nt)
  %i.of = fneg <16 x float> %i.oc
  %i.og = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.of, <16 x float> %i.nd, <16 x float> %i.nu)
  %i.oh = fmul <16 x float> %i.ac, %i.nx
  %i.oi = fadd <16 x float> %i.ni, %i.ob
  %i.oj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oh, <16 x float> %i.oi, <16 x float> %i.nk)
  %i.ok = fmul <16 x float> %i.ac, %i.ny
  %i.ol = fadd <16 x float> %i.nl, %i.oc
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ok, <16 x float> %i.ol, <16 x float> %i.nn)
  %i.on = fmul <16 x float> %i.np, %i.oe
  %i.oo = fmul <16 x float> %i.nq, %i.og
  %i.op = select <16 x i1> %i.kz, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.oq = fadd <16 x float> %i.op, %i.oj
  %i.or = select <16 x i1> %.not4409, <16 x float> zeroinitializer, <16 x float> %i.al
  %i.os = fadd <16 x float> %i.or, %i.om
  %i.ot = fsub <16 x float> %i.nt, %i.oq
  %i.ou = fmul <16 x float> %i.np, %i.ot
  %i.ov = fsub <16 x float> %i.nu, %i.os
  %i.ow = fmul <16 x float> %i.nq, %i.ov
  %i.ox = select <16 x i1> %5, <16 x float> %i.ou, <16 x float> zeroinitializer ; 2 uses
  %i.oy = select <16 x i1> %6, <16 x float> %i.ow, <16 x float> zeroinitializer ; 2 uses
  %i.oz = shl nsw i32 %i.kt, 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr [4 x i8], ptr %i.f, i64 %i.pa ; 2 uses
  %.val6454582 = load <8 x float>, ptr %i.pb, align 32, !tbaa !29
  %i.pc = shufflevector <8 x float> %.val6454582, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pd = getelementptr i8, ptr %i.pb, i64 32
  %.val6464583 = load <8 x float>, ptr %i.pd, align 32, !tbaa !29
  %i.pe = shufflevector <8 x float> %.val6464583, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pf = fadd <16 x float> %i.jx, %i.pc          ; 3 uses
  %i.pg = fmul <16 x float> %i.kb, %i.pe          ; 2 uses
  %i.ph = fmul <16 x float> %i.na, %i.pf          ; 2 uses
  %i.pi = fmul <16 x float> %i.ph, %i.ph          ; 3 uses
  %i.pj = fmul <16 x float> %i.pi, %i.pi
  %i.pk = fmul <16 x float> %i.pi, %i.pj
  %i.pl = select <16 x i1> %i.kz, <16 x float> %i.pk, <16 x float> zeroinitializer ; 2 uses
  %i.pm = fmul <16 x float> %i.pg, %i.pl          ; 3 uses
  %i.pn = fmul <16 x float> %i.pl, %i.pm          ; 2 uses
  %i.po = fsub <16 x float> %i.pn, %i.pm
  %i.pp = fmul <16 x float> %i.pf, %i.pf          ; 3 uses
  %i.pq = fmul <16 x float> %i.pp, %i.pp
  %i.pr = fmul <16 x float> %i.pp, %i.pq          ; 2 uses
  %i.ps = fmul <16 x float> %i.pg, %i.pr          ; 2 uses
  %i.pt = fmul <16 x float> %i.pr, %i.ps
  %i.pu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ps, <16 x float> %i.ao, <16 x float> %i.pm)
  %i.pv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pt, <16 x float> %i.ar, <16 x float> %i.pn)
  %i.pw = fmul <16 x float> %i.pu, splat (float f0xBE2AAAAB)
  %i.px = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pv, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.pw)
  %i.py = select <16 x i1> %5, <16 x i1> %i.kz, <16 x i1> zeroinitializer
  %i.pz = select <16 x i1> %i.py, <16 x float> %i.px, <16 x float> zeroinitializer ; 2 uses
  %i.qa = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.qb = load i32, ptr %i.bv, align 8, !tbaa !102
  %i.qc = sext i32 %i.me to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qc
  %i.qe = load i32, ptr %i.bw, align 4, !tbaa !103
  %i.qf = load i32, ptr %i.bt, align 8, !tbaa !96
  %i.qg = load <2 x i32>, ptr %i.qd, align 4, !tbaa !87 ; 2 uses
  %i.qh = insertelement <2 x i32> poison, i32 %i.qb, i64 0
  %i.qi = shufflevector <2 x i32> %i.qg, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.qj = shufflevector <2 x i32> %i.qg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qk = shufflevector <2 x i32> %i.qh, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ql = ashr <4 x i32> %i.qj, %i.qk
  %i.qm = shufflevector <4 x i32> %i.ql, <4 x i32> %i.qi, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.qn = insertelement <4 x i32> poison, i32 %i.qe, i64 0
  %i.qo = shufflevector <4 x i32> %i.qn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qp = and <4 x i32> %i.qm, %i.qo
  %i.qq = insertelement <4 x i32> poison, i32 %i.qf, i64 0
  %i.qr = shufflevector <4 x i32> %i.qq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qs = mul nsw <4 x i32> %i.qp, %i.qr          ; 4 uses
  %i.qt = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !93 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !93 ; 4 uses
  %i.qx = shufflevector <16 x float> %i.ox, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.qy = shufflevector <16 x float> %i.ox, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.qz = extractelement <4 x i32> %i.qs, i64 0
  %i.ra = sext i32 %i.qz to i64                   ; 6 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.ra ; 2 uses
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.ra ; 2 uses
  %i.rd = load <8 x float>, ptr %i.rb, align 32, !tbaa !29
  %i.re = fadd <8 x float> %i.qx, %i.rd
  store <8 x float> %i.re, ptr %i.rb, align 32, !tbaa !29
  %i.rf = load <8 x float>, ptr %i.rc, align 32, !tbaa !29
  %i.rg = fadd <8 x float> %i.rf, %i.qy
  store <8 x float> %i.rg, ptr %i.rc, align 32, !tbaa !29
  %i.rh = extractelement <4 x i32> %i.qs, i64 1
  %i.ri = sext i32 %i.rh to i64                   ; 6 uses
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32 ; 2 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.ri
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32 ; 2 uses
  %i.rn = load <8 x float>, ptr %i.rk, align 32, !tbaa !29
  %i.ro = fadd <8 x float> %i.qx, %i.rn
  store <8 x float> %i.ro, ptr %i.rk, align 32, !tbaa !29
  %i.rp = load <8 x float>, ptr %i.rm, align 32, !tbaa !29
  %i.rq = fadd <8 x float> %i.rp, %i.qy
  store <8 x float> %i.rq, ptr %i.rm, align 32, !tbaa !29
  %i.rr = extractelement <4 x i32> %i.qs, i64 2
  %i.rs = sext i32 %i.rr to i64                   ; 6 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 64 ; 2 uses
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.rs
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  %i.rx = load <8 x float>, ptr %i.ru, align 32, !tbaa !29
  %i.ry = fadd <8 x float> %i.qx, %i.rx
  store <8 x float> %i.ry, ptr %i.ru, align 32, !tbaa !29
  %i.rz = load <8 x float>, ptr %i.rw, align 32, !tbaa !29
  %i.sa = fadd <8 x float> %i.rz, %i.qy
  store <8 x float> %i.sa, ptr %i.rw, align 32, !tbaa !29
  %i.sb = extractelement <4 x i32> %i.qs, i64 3
  %i.sc = sext i32 %i.sb to i64                   ; 6 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 96 ; 2 uses
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.sc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 96 ; 2 uses
  %i.sh = load <8 x float>, ptr %i.se, align 32, !tbaa !29
  %i.si = fadd <8 x float> %i.qx, %i.sh
  store <8 x float> %i.si, ptr %i.se, align 32, !tbaa !29
  %i.sj = load <8 x float>, ptr %i.sg, align 32, !tbaa !29
  %i.sk = fadd <8 x float> %i.sj, %i.qy
  store <8 x float> %i.sk, ptr %i.sg, align 32, !tbaa !29
  %i.sl = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !93 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !93 ; 4 uses
  %i.sq = shufflevector <16 x float> %i.oy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sr = shufflevector <16 x float> %i.oy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.ra ; 2 uses
  %i.st = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.ra ; 2 uses
  %i.su = load <8 x float>, ptr %i.ss, align 32, !tbaa !29
  %i.sv = fadd <8 x float> %i.sq, %i.su
  store <8 x float> %i.sv, ptr %i.ss, align 32, !tbaa !29
  %i.sw = load <8 x float>, ptr %i.st, align 32, !tbaa !29
  %i.sx = fadd <8 x float> %i.sw, %i.sr
  store <8 x float> %i.sx, ptr %i.st, align 32, !tbaa !29
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.ri
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32 ; 2 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.ri
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32 ; 2 uses
  %i.tc = load <8 x float>, ptr %i.sz, align 32, !tbaa !29
  %i.td = fadd <8 x float> %i.sq, %i.tc
  store <8 x float> %i.td, ptr %i.sz, align 32, !tbaa !29
  %i.te = load <8 x float>, ptr %i.tb, align 32, !tbaa !29
  %i.tf = fadd <8 x float> %i.te, %i.sr
  store <8 x float> %i.tf, ptr %i.tb, align 32, !tbaa !29
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.rs
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 64 ; 2 uses
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.rs
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64 ; 2 uses
  %i.tk = load <8 x float>, ptr %i.th, align 32, !tbaa !29
  %i.tl = fadd <8 x float> %i.sq, %i.tk
  store <8 x float> %i.tl, ptr %i.th, align 32, !tbaa !29
  %i.tm = load <8 x float>, ptr %i.tj, align 32, !tbaa !29
  %i.tn = fadd <8 x float> %i.tm, %i.sr
  store <8 x float> %i.tn, ptr %i.tj, align 32, !tbaa !29
  %i.to = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sc
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 96 ; 2 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.sp, i64 %i.sc
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 96 ; 2 uses
  %i.ts = load <8 x float>, ptr %i.tp, align 32, !tbaa !29
  %i.tt = fadd <8 x float> %i.sq, %i.ts
  store <8 x float> %i.tt, ptr %i.tp, align 32, !tbaa !29
  %i.tu = load <8 x float>, ptr %i.tr, align 32, !tbaa !29
  %i.tv = fadd <8 x float> %i.tu, %i.sr
  store <8 x float> %i.tv, ptr %i.tr, align 32, !tbaa !29
  %i.tw = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !93 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !93 ; 4 uses
  %i.ua = shufflevector <16 x float> %i.pz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ub = shufflevector <16 x float> %i.pz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ra ; 2 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ra ; 2 uses
  %i.ue = load <8 x float>, ptr %i.uc, align 32, !tbaa !29
  %i.uf = fadd <8 x float> %i.ua, %i.ue
  store <8 x float> %i.uf, ptr %i.uc, align 32, !tbaa !29
  %i.ug = load <8 x float>, ptr %i.ud, align 32, !tbaa !29
  %i.uh = fadd <8 x float> %i.ug, %i.ub
  store <8 x float> %i.uh, ptr %i.ud, align 32, !tbaa !29
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ri
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32 ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ri
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 32 ; 2 uses
  %i.um = load <8 x float>, ptr %i.uj, align 32, !tbaa !29
  %i.un = fadd <8 x float> %i.ua, %i.um
  store <8 x float> %i.un, ptr %i.uj, align 32, !tbaa !29
  %i.uo = load <8 x float>, ptr %i.ul, align 32, !tbaa !29
  %i.up = fadd <8 x float> %i.uo, %i.ub
  store <8 x float> %i.up, ptr %i.ul, align 32, !tbaa !29
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.rs
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 64 ; 2 uses
  %i.us = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.rs
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 64 ; 2 uses
  %i.uu = load <8 x float>, ptr %i.ur, align 32, !tbaa !29
  %i.uv = fadd <8 x float> %i.ua, %i.uu
  store <8 x float> %i.uv, ptr %i.ur, align 32, !tbaa !29
  %i.uw = load <8 x float>, ptr %i.ut, align 32, !tbaa !29
  %i.ux = fadd <8 x float> %i.uw, %i.ub
  store <8 x float> %i.ux, ptr %i.ut, align 32, !tbaa !29
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.sc
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 96 ; 2 uses
  %i.va = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.sc
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 96 ; 2 uses
  %i.vc = load <8 x float>, ptr %i.uz, align 32, !tbaa !29
  %i.vd = fadd <8 x float> %i.ua, %i.vc
  store <8 x float> %i.vd, ptr %i.uz, align 32, !tbaa !29
  %i.ve = load <8 x float>, ptr %i.vb, align 32, !tbaa !29
  %i.vf = fadd <8 x float> %i.ve, %i.ub
  store <8 x float> %i.vf, ptr %i.vb, align 32, !tbaa !29
  %i.vg = fadd <16 x float> %i.on, %i.po
  %i.vh = fmul <16 x float> %i.nr, %i.vg          ; 3 uses
  %i.vi = fmul <16 x float> %i.ns, %i.oo          ; 3 uses
  %i.vj = fmul <16 x float> %i.lk, %i.vh          ; 2 uses
  %i.vk = fmul <16 x float> %i.ll, %i.vi          ; 2 uses
  %i.vl = fmul <16 x float> %i.lm, %i.vh          ; 2 uses
  %i.vm = fmul <16 x float> %i.ln, %i.vi          ; 2 uses
  %i.vn = fmul <16 x float> %i.lo, %i.vh          ; 2 uses
  %i.vo = fmul <16 x float> %i.lp, %i.vi          ; 2 uses
  %i.vp = fadd <16 x float> %.sroa.03636.04211, %i.vj ; 2 uses
  %i.vq = fadd <16 x float> %.sroa.163643.04212, %i.vk ; 2 uses
  %i.vr = fadd <16 x float> %.sroa.03618.04209, %i.vl ; 2 uses
  %i.vs = fadd <16 x float> %.sroa.163625.04210, %i.vm ; 2 uses
  %i.vt = fadd <16 x float> %.sroa.03601.04207, %i.vn ; 2 uses
  %i.vu = fadd <16 x float> %.sroa.16.04208, %i.vo ; 2 uses
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ld ; 4 uses
  %i.vw = fadd <16 x float> %i.vk, %i.vj          ; 2 uses
  %i.vx = fadd <16 x float> %i.vm, %i.vl          ; 2 uses
  %i.vy = fadd <16 x float> %i.vo, %i.vn          ; 2 uses
  %i.vz = load <8 x float>, ptr %i.vv, align 32, !tbaa !29
  %i.wa = shufflevector <16 x float> %i.vw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wb = shufflevector <16 x float> %i.vw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wc = fadd <8 x float> %i.wa, %i.wb
  %i.wd = fsub <8 x float> %i.vz, %i.wc
  store <8 x float> %i.wd, ptr %i.vv, align 32, !tbaa !29
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 32 ; 2 uses
  %i.wf = load <8 x float>, ptr %i.we, align 32, !tbaa !29
  %i.wg = shufflevector <16 x float> %i.vx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wh = shufflevector <16 x float> %i.vx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wi = fadd <8 x float> %i.wg, %i.wh
  %i.wj = fsub <8 x float> %i.wf, %i.wi
  store <8 x float> %i.wj, ptr %i.we, align 32, !tbaa !29
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vv, i64 64 ; 2 uses
  %i.wl = load <8 x float>, ptr %i.wk, align 32, !tbaa !29
  %i.wm = shufflevector <16 x float> %i.vy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wn = shufflevector <16 x float> %i.vy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wo = fadd <8 x float> %i.wm, %i.wn
  %i.wp = fsub <8 x float> %i.wl, %i.wo
  store <8 x float> %i.wp, ptr %i.wk, align 32, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4122.preheader
  %i.adv = shufflevector <16 x float> %i.aae, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.adw = shufflevector <16 x float> %i.aae, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.acf ; 2 uses
  %i.ady = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.acf ; 2 uses
  %i.adz = load <8 x float>, ptr %i.adx, align 32, !tbaa !29
  %i.aea = fadd <8 x float> %i.adv, %i.adz
  store <8 x float> %i.aea, ptr %i.adx, align 32, !tbaa !29
  %i.aeb = load <8 x float>, ptr %i.ady, align 32, !tbaa !29
  %i.aec = fadd <8 x float> %i.aeb, %i.adw
  store <8 x float> %i.aec, ptr %i.ady, align 32, !tbaa !29
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.acn
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 32 ; 2 uses
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.acn
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 32 ; 2 uses
  %i.aeh = load <8 x float>, ptr %i.aee, align 32, !tbaa !29
  %i.aei = fadd <8 x float> %i.adv, %i.aeh
  store <8 x float> %i.aei, ptr %i.aee, align 32, !tbaa !29
  %i.aej = load <8 x float>, ptr %i.aeg, align 32, !tbaa !29
  %i.aek = fadd <8 x float> %i.aej, %i.adw
  store <8 x float> %i.aek, ptr %i.aeg, align 32, !tbaa !29
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.acx
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 64 ; 2 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.acx
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 64 ; 2 uses
  %i.aep = load <8 x float>, ptr %i.aem, align 32, !tbaa !29
  %i.aeq = fadd <8 x float> %i.adv, %i.aep
  store <8 x float> %i.aeq, ptr %i.aem, align 32, !tbaa !29
  %i.aer = load <8 x float>, ptr %i.aeo, align 32, !tbaa !29
  %i.aes = fadd <8 x float> %i.aer, %i.adw
  store <8 x float> %i.aes, ptr %i.aeo, align 32, !tbaa !29
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.adh
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 96 ; 2 uses
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.adu, i64 %i.adh
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 96 ; 2 uses
  %i.aex = load <8 x float>, ptr %i.aeu, align 32, !tbaa !29
  %i.aey = fadd <8 x float> %i.adv, %i.aex
  store <8 x float> %i.aey, ptr %i.aeu, align 32, !tbaa !29
  %i.aez = load <8 x float>, ptr %i.aew, align 32, !tbaa !29
  %i.afa = fadd <8 x float> %i.aez, %i.adw
  store <8 x float> %i.afa, ptr %i.aew, align 32, !tbaa !29
  %i.afb = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !93 ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !93 ; 4 uses
  %i.aff = shufflevector <16 x float> %i.abd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afg = shufflevector <16 x float> %i.abd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.acf ; 2 uses
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.acf ; 2 uses
  %i.afj = load <8 x float>, ptr %i.afh, align 32, !tbaa !29
  %i.afk = fadd <8 x float> %i.aff, %i.afj
  store <8 x float> %i.afk, ptr %i.afh, align 32, !tbaa !29
  %i.afl = load <8 x float>, ptr %i.afi, align 32, !tbaa !29
  %i.afm = fadd <8 x float> %i.afl, %i.afg
  store <8 x float> %i.afm, ptr %i.afi, align 32, !tbaa !29
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.acn
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 32 ; 2 uses
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.acn
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 32 ; 2 uses
  %i.afr = load <8 x float>, ptr %i.afo, align 32, !tbaa !29
  %i.afs = fadd <8 x float> %i.aff, %i.afr
  store <8 x float> %i.afs, ptr %i.afo, align 32, !tbaa !29
  %i.aft = load <8 x float>, ptr %i.afq, align 32, !tbaa !29
  %i.afu = fadd <8 x float> %i.aft, %i.afg
  store <8 x float> %i.afu, ptr %i.afq, align 32, !tbaa !29
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.acx
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 64 ; 2 uses
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.acx
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 64 ; 2 uses
  %i.afz = load <8 x float>, ptr %i.afw, align 32, !tbaa !29
  %i.aga = fadd <8 x float> %i.aff, %i.afz
  store <8 x float> %i.aga, ptr %i.afw, align 32, !tbaa !29
  %i.agb = load <8 x float>, ptr %i.afy, align 32, !tbaa !29
  %i.agc = fadd <8 x float> %i.agb, %i.afg
  store <8 x float> %i.agc, ptr %i.afy, align 32, !tbaa !29
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.adh
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 96 ; 2 uses
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.afe, i64 %i.adh
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 96 ; 2 uses
  %i.agh = load <8 x float>, ptr %i.age, align 32, !tbaa !29
  %i.agi = fadd <8 x float> %i.aff, %i.agh
  store <8 x float> %i.agi, ptr %i.age, align 32, !tbaa !29
  %i.agj = load <8 x float>, ptr %i.agg, align 32, !tbaa !29
  %i.agk = fadd <8 x float> %i.agj, %i.afg
  store <8 x float> %i.agk, ptr %i.agg, align 32, !tbaa !29
  %i.agl = fadd <16 x float> %i.zv, %i.aat
  %i.agm = fmul <16 x float> %i.zb, %i.agl        ; 3 uses
  %i.agn = fmul <16 x float> %i.zc, %i.zw         ; 3 uses
  %i.ago = fmul <16 x float> %i.xe, %i.agm        ; 2 uses
  %i.agp = fmul <16 x float> %i.xf, %i.agn        ; 2 uses
  %i.agq = fmul <16 x float> %i.xg, %i.agm        ; 2 uses
  %i.agr = fmul <16 x float> %i.xh, %i.agn        ; 2 uses
  %i.ags = fmul <16 x float> %i.xi, %i.agm        ; 2 uses
  %i.agt = fmul <16 x float> %i.xj, %i.agn        ; 2 uses
  %i.agu = fadd <16 x float> %.sroa.03636.14236, %i.ago ; 2 uses
  %i.agv = fadd <16 x float> %.sroa.163643.14237, %i.agp ; 2 uses
  %i.agw = fadd <16 x float> %.sroa.03618.14234, %i.agq ; 2 uses
  %i.agx = fadd <16 x float> %.sroa.163625.14235, %i.agr ; 2 uses
  %i.agy = fadd <16 x float> %.sroa.03601.14232, %i.ags ; 2 uses
  %i.agz = fadd <16 x float> %.sroa.16.14233, %i.agt ; 2 uses
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wx ; 4 uses
  %i.ahb = fadd <16 x float> %i.agp, %i.ago       ; 2 uses
  %i.ahc = fadd <16 x float> %i.agr, %i.agq       ; 2 uses
  %i.ahd = fadd <16 x float> %i.agt, %i.ags       ; 2 uses
  %i.ahe = load <8 x float>, ptr %i.aha, align 32, !tbaa !29
  %i.ahf = shufflevector <16 x float> %i.ahb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahg = shufflevector <16 x float> %i.ahb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahh = fadd <8 x float> %i.ahf, %i.ahg
  %i.ahi = fsub <8 x float> %i.ahe, %i.ahh
  store <8 x float> %i.ahi, ptr %i.aha, align 32, !tbaa !29
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aha, i64 32 ; 2 uses
  %i.ahk = load <8 x float>, ptr %i.ahj, align 32, !tbaa !29
  %i.ahl = shufflevector <16 x float> %i.ahc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahm = shufflevector <16 x float> %i.ahc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahn = fadd <8 x float> %i.ahl, %i.ahm
  %i.aho = fsub <8 x float> %i.ahk, %i.ahn
  store <8 x float> %i.aho, ptr %i.ahj, align 32, !tbaa !29
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aha, i64 64 ; 2 uses
  %i.ahq = load <8 x float>, ptr %i.ahp, align 32, !tbaa !29
  %i.ahr = shufflevector <16 x float> %i.ahd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahs = shufflevector <16 x float> %i.ahd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aht = fadd <8 x float> %i.ahr, %i.ahs
  %i.ahu = fsub <8 x float> %i.ahq, %i.aht
  store <8 x float> %i.ahu, ptr %i.ahp, align 32, !tbaa !29
  %indvars.iv.next4324 = add nsw i64 %indvars.iv4323, 1 ; 2 uses
  %exitcond4327.not = icmp eq i64 %indvars.iv.next4324, %wide.trip.count4326
  br i1 %exitcond4327.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit542, !llvm.loop !18

bb.i:                                             ; preds = %bb.d
  br i1 %i.di, label %.preheader4117, label %.preheader4119

.preheader4119:                                   ; preds = %bb.i
  br i1 %i.km, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4119
  %i.ahv = sext i32 %i.cd to i64
  %wide.trip.count = sext i32 %i.cf to i64
  br label %bb.n

.preheader4117:                                   ; preds = %bb.i
  br i1 %i.km, label %.lr.ph4172, label %.critedge3

.lr.ph4172:                                       ; preds = %.preheader4117
  %i.ahw = sext i32 %i.cd to i64
  %wide.trip.count4290 = sext i32 %i.cf to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph4172, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4287 = phi i64 [ %i.ahw, %.lr.ph4172 ], [ %indvars.iv.next4288, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163643.24170 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03636.24169 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163625.24168 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03618.24167 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.24166 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03601.24165 = phi <16 x float> [ zeroinitializer, %.lr.ph4172 ], [ %i.avk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.ahx = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahx, i64 %indvars.iv4287
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !87
  %.not518 = icmp eq i32 %i.aia, -1
  br i1 %.not518, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523: ; preds = %bb.j
  %i.aib = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv4287 ; 2 uses
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !95 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 4
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !101
  %i.aif = insertelement <16 x i32> poison, i32 %i.aie, i64 0
  %i.aig = shufflevector <16 x i32> %i.aif, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aih = and <16 x i32> %.sroa.04346.0.copyload, %i.aig
  %i.aii = icmp ne <16 x i32> %i.aih, zeroinitializer ; 4 uses
  %i.aij = and <16 x i32> %.sroa.6.0.copyload, %i.aig
  %i.aik = icmp ne <16 x i32> %i.aij, zeroinitializer ; 4 uses
  %i.ail = shl nsw i32 %i.aic, 3
  %i.aim = mul nsw i32 %i.aic, 24
  %i.ain = sext i32 %i.aim to i64                 ; 2 uses
  %i.aio = getelementptr [4 x i8], ptr %i.ba, i64 %i.ain ; 3 uses
  %.val6534566 = load <8 x float>, ptr %i.aio, align 32, !tbaa !29
  %i.aip = shufflevector <8 x float> %.val6534566, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aiq = getelementptr i8, ptr %i.aio, i64 32
  %.val6544567 = load <8 x float>, ptr %i.aiq, align 32, !tbaa !29
  %i.air = shufflevector <8 x float> %.val6544567, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ais = getelementptr i8, ptr %i.aio, i64 64
  %.val6554568 = load <8 x float>, ptr %i.ais, align 32, !tbaa !29
  %i.ait = shufflevector <8 x float> %.val6554568, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aiu = fsub <16 x float> %i.hx, %i.aip        ; 3 uses
  %i.aiv = fsub <16 x float> %i.id, %i.aip        ; 3 uses
  %i.aiw = fsub <16 x float> %i.ik, %i.air        ; 3 uses
  %i.aix = fsub <16 x float> %i.iq, %i.air        ; 3 uses
  %i.aiy = fsub <16 x float> %i.ix, %i.ait        ; 3 uses
  %i.aiz = fsub <16 x float> %i.jd, %i.ait        ; 3 uses
  %i.aja = fmul <16 x float> %i.aiu, %i.aiu
  %i.ajb = fmul <16 x float> %i.aiw, %i.aiw
  %i.ajc = fadd <16 x float> %i.aja, %i.ajb
  %i.ajd = fmul <16 x float> %i.aiy, %i.aiy
  %i.aje = fadd <16 x float> %i.ajc, %i.ajd       ; 2 uses
  %i.ajf = fmul <16 x float> %i.aiv, %i.aiv
  %i.ajg = fmul <16 x float> %i.aix, %i.aix
  %i.ajh = fadd <16 x float> %i.ajf, %i.ajg
  %i.aji = fmul <16 x float> %i.aiz, %i.aiz
  %i.ajj = fadd <16 x float> %i.ajh, %i.aji       ; 2 uses
  %i.ajk = fcmp olt <16 x float> %i.aje, %i.aw
  %i.ajl = bitcast <16 x i1> %i.ajk to i16        ; 3 uses
  %i.ajm = fcmp olt <16 x float> %i.ajj, %i.aw
  %i.ajn = bitcast <16 x i1> %i.ajm to i16        ; 3 uses
  %i.ajo = shl nsw i32 %i.aic, 1                  ; 3 uses
  %i.ajp = icmp eq i32 %i.ajo, %i.ci
  br i1 %i.ajp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.ajq = and i16 %i.ajl, %i.r
  %i.ajr = and i16 %i.ajn, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.ajs = or disjoint i32 %i.ajo, 1
  %i.ajt = icmp eq i32 %i.ajs, %i.ci
  br i1 %i.ajt, label %bb.m, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %bb.l
  %i.aju = and i16 %i.ajl, %i.t
  %i.ajv = and i16 %i.ajn, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.03995.0 = phi i16 [ %i.ajq, %bb.k ], [ %i.aju, %bb.m ], [ %i.ajl, %bb.l ]
  %.sroa.103998.0 = phi i16 [ %i.ajr, %bb.k ], [ %i.ajv, %bb.m ], [ %i.ajn, %bb.l ]
  %i.ajw = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aje, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.ajx = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ajj, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.ajy = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ajw, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ajz = fmul <16 x float> %i.ajw, %i.ajy
  %i.aka = fmul <16 x float> %i.ajy, splat (float -5.000000e-01)
  %i.akb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ajz, <16 x float> %i.ajy, <16 x float> splat (float -3.000000e+00))
  %i.akc = fmul <16 x float> %i.aka, %i.akb
  %i.akd = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ajx, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ake = fmul <16 x float> %i.ajx, %i.akd
  %i.akf = fmul <16 x float> %i.akd, splat (float -5.000000e-01)
  %i.akg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ake, <16 x float> %i.akd, <16 x float> splat (float -3.000000e+00))
  %i.akh = fmul <16 x float> %i.akf, %i.akg
  %i.aki = sext i32 %i.ail to i64
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.aki
  %.val6564569 = load <8 x float>, ptr %i.akj, align 32, !tbaa !29
  %7 = bitcast i16 %.sroa.03995.0 to <16 x i1>    ; 3 uses
  %i.akk = select <16 x i1> %7, <16 x float> %i.akc, <16 x float> zeroinitializer ; 5 uses
  %8 = bitcast i16 %.sroa.103998.0 to <16 x i1>   ; 3 uses
  %i.akl = select <16 x i1> %8, <16 x float> %i.akh, <16 x float> zeroinitializer ; 5 uses
  %i.akm = fmul <16 x float> %i.ajw, %i.akk       ; 2 uses
  %i.akn = fmul <16 x float> %i.ajx, %i.akl       ; 2 uses
  %i.ako = fmul <16 x float> %i.z, %i.akm         ; 2 uses
  %i.akp = fmul <16 x float> %i.z, %i.akn         ; 2 uses
  %i.akq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ako, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.akr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.akp, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aks = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.akq, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.akt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.akq, <16 x i1> splat (i1 true), i32 4)
  %i.aku = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.akq, <16 x i1> splat (i1 true), i32 4)
  %i.akv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.akr, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.akw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bx, <16 x i32> %i.akr, <16 x i1> splat (i1 true), i32 4)
  %i.akx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.akr, <16 x i1> splat (i1 true), i32 4)
  %i.aky = shufflevector <8 x float> %.val6564569, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.akz = fmul <16 x float> %.sroa.03742.0, %i.aky ; 2 uses
  %i.ala = fmul <16 x float> %.sroa.73746.0, %i.aky ; 2 uses
  %i.alb = fmul <16 x float> %i.akk, %i.akk
  %i.alc = fmul <16 x float> %i.akl, %i.akl
  %i.ald = select <16 x i1> %i.aii, <16 x float> %i.akk, <16 x float> zeroinitializer ; 2 uses
  %i.ale = select <16 x i1> %i.aik, <16 x float> %i.akl, <16 x float> zeroinitializer ; 2 uses
  %i.alf = sitofp <16 x i32> %i.akq to <16 x float>
  %i.alg = sitofp <16 x i32> %i.akr to <16 x float>
  %i.alh = fsub <16 x float> %i.ako, %i.alf       ; 2 uses
  %i.ali = fsub <16 x float> %i.akp, %i.alg       ; 2 uses
  %i.alj = fsub <16 x float> %i.akt, %i.aks
  %i.alk = fsub <16 x float> %i.akw, %i.akv
  %i.all = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alh, <16 x float> %i.alj, <16 x float> %i.aks) ; 2 uses
  %i.alm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ali, <16 x float> %i.alk, <16 x float> %i.akv) ; 2 uses
  %i.aln = fneg <16 x float> %i.all
  %i.alo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aln, <16 x float> %i.akm, <16 x float> %i.ald)
  %i.alp = fneg <16 x float> %i.alm
  %i.alq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alp, <16 x float> %i.akn, <16 x float> %i.ale)
  %i.alr = fmul <16 x float> %i.ac, %i.alh
  %i.als = fadd <16 x float> %i.aks, %i.all
  %i.alt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alr, <16 x float> %i.als, <16 x float> %i.aku)
  %i.alu = fmul <16 x float> %i.ac, %i.ali
  %i.alv = fadd <16 x float> %i.akv, %i.alm
  %i.alw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alu, <16 x float> %i.alv, <16 x float> %i.akx)
  %i.alx = fmul <16 x float> %i.akz, %i.alo
  %i.aly = fmul <16 x float> %i.ala, %i.alq
  %i.alz = select <16 x i1> %i.aii, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.ama = fadd <16 x float> %i.alz, %i.alt
  %i.amb = select <16 x i1> %i.aik, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.amc = fadd <16 x float> %i.amb, %i.alw
  %i.amd = fsub <16 x float> %i.ald, %i.ama
  %i.ame = fmul <16 x float> %i.akz, %i.amd
  %i.amf = fsub <16 x float> %i.ale, %i.amc
  %i.amg = fmul <16 x float> %i.ala, %i.amf
  %i.amh = select <16 x i1> %7, <16 x float> %i.ame, <16 x float> zeroinitializer ; 2 uses
  %i.ami = select <16 x i1> %8, <16 x float> %i.amg, <16 x float> zeroinitializer ; 2 uses
  %i.amj = shl nsw i32 %i.aic, 4
  %i.amk = sext i32 %i.amj to i64
  %i.aml = getelementptr [4 x i8], ptr %i.f, i64 %i.amk ; 2 uses
  %.val6574570 = load <8 x float>, ptr %i.aml, align 32, !tbaa !29
  %i.amm = shufflevector <8 x float> %.val6574570, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amn = getelementptr i8, ptr %i.aml, i64 32
  %.val6584571 = load <8 x float>, ptr %i.amn, align 32, !tbaa !29
  %i.amo = shufflevector <8 x float> %.val6584571, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amp = fadd <16 x float> %i.jx, %i.amm        ; 3 uses
  %i.amq = fadd <16 x float> %i.kg, %i.amm        ; 3 uses
  %i.amr = fmul <16 x float> %i.kb, %i.amo        ; 2 uses
  %i.ams = fmul <16 x float> %i.kl, %i.amo        ; 2 uses
  %i.amt = fmul <16 x float> %i.akk, %i.amp       ; 2 uses
  %i.amu = fmul <16 x float> %i.akl, %i.amq       ; 2 uses
  %i.amv = fmul <16 x float> %i.amt, %i.amt       ; 3 uses
  %i.amw = fmul <16 x float> %i.amu, %i.amu       ; 3 uses
  %i.amx = fmul <16 x float> %i.amv, %i.amv
  %i.amy = fmul <16 x float> %i.amv, %i.amx
  %i.amz = fmul <16 x float> %i.amw, %i.amw
  %i.ana = fmul <16 x float> %i.amw, %i.amz
  %i.anb = select <16 x i1> %i.aii, <16 x float> %i.amy, <16 x float> zeroinitializer ; 2 uses
  %i.anc = select <16 x i1> %i.aik, <16 x float> %i.ana, <16 x float> zeroinitializer ; 2 uses
  %i.and = fmul <16 x float> %i.amr, %i.anb       ; 3 uses
  %i.ane = fmul <16 x float> %i.ams, %i.anc       ; 3 uses
  %i.anf = fmul <16 x float> %i.anb, %i.and       ; 2 uses
  %i.ang = fmul <16 x float> %i.anc, %i.ane       ; 2 uses
  %i.anh = fsub <16 x float> %i.anf, %i.and
  %i.ani = fsub <16 x float> %i.ang, %i.ane
  %i.anj = fmul <16 x float> %i.amp, %i.amp       ; 3 uses
  %i.ank = fmul <16 x float> %i.amq, %i.amq       ; 3 uses
  %i.anl = fmul <16 x float> %i.anj, %i.anj
  %i.anm = fmul <16 x float> %i.anj, %i.anl       ; 2 uses
  %i.ann = fmul <16 x float> %i.ank, %i.ank
  %i.ano = fmul <16 x float> %i.ank, %i.ann       ; 2 uses
  %i.anp = fmul <16 x float> %i.amr, %i.anm       ; 2 uses
  %i.anq = fmul <16 x float> %i.ams, %i.ano       ; 2 uses
  %i.anr = fmul <16 x float> %i.anm, %i.anp
  %i.ans = fmul <16 x float> %i.ano, %i.anq
  %i.ant = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anp, <16 x float> %i.ao, <16 x float> %i.and)
  %i.anu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anq, <16 x float> %i.ao, <16 x float> %i.ane)
  %i.anv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anr, <16 x float> %i.ar, <16 x float> %i.anf)
  %i.anw = fmul <16 x float> %i.ant, splat (float f0xBE2AAAAB)
  %i.anx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.anw)
  %i.any = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ans, <16 x float> %i.ar, <16 x float> %i.ang)
  %i.anz = fmul <16 x float> %i.anu, splat (float f0xBE2AAAAB)
  %i.aoa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.any, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.anz)
  %i.aob = select <16 x i1> %7, <16 x i1> %i.aii, <16 x i1> zeroinitializer
  %i.aoc = select <16 x i1> %i.aob, <16 x float> %i.anx, <16 x float> zeroinitializer ; 2 uses
  %i.aod = select <16 x i1> %8, <16 x i1> %i.aik, <16 x i1> zeroinitializer
  %i.aoe = select <16 x i1> %i.aod, <16 x float> %i.aoa, <16 x float> zeroinitializer ; 2 uses
  %i.aof = load ptr, ptr %i.bj, align 8, !tbaa !86
  %i.aog = load i32, ptr %i.bv, align 8, !tbaa !102
  %i.aoh = sext i32 %i.ajo to i64
  %i.aoi = getelementptr inbounds [4 x i8], ptr %i.aof, i64 %i.aoh
  %i.aoj = load i32, ptr %i.bw, align 4, !tbaa !103
  %i.aok = load i32, ptr %i.bt, align 8, !tbaa !96
  %i.aol = load <2 x i32>, ptr %i.aoi, align 4, !tbaa !87 ; 2 uses
  %i.aom = insertelement <2 x i32> poison, i32 %i.aog, i64 0
  %i.aon = shufflevector <2 x i32> %i.aol, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aoo = shufflevector <2 x i32> %i.aol, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aop = shufflevector <2 x i32> %i.aom, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aoq = ashr <4 x i32> %i.aoo, %i.aop
  %i.aor = shufflevector <4 x i32> %i.aoq, <4 x i32> %i.aon, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.aos = insertelement <4 x i32> poison, i32 %i.aoj, i64 0
  %i.aot = shufflevector <4 x i32> %i.aos, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aou = and <4 x i32> %i.aor, %i.aot
  %i.aov = insertelement <4 x i32> poison, i32 %i.aok, i64 0
  %i.aow = shufflevector <4 x i32> %i.aov, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aox = mul nsw <4 x i32> %i.aou, %i.aow       ; 4 uses
  %i.aoy = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !93 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !93 ; 4 uses
  %i.apc = shufflevector <16 x float> %i.amh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.apd = shufflevector <16 x float> %i.amh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ape = extractelement <4 x i32> %i.aox, i64 0
  %i.apf = sext i32 %i.ape to i64                 ; 8 uses
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.apf ; 2 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %i.apb, i64 %i.apf ; 2 uses
  %i.api = load <8 x float>, ptr %i.apg, align 32, !tbaa !29
  %i.apj = fadd <8 x float> %i.apc, %i.api
  store <8 x float> %i.apj, ptr %i.apg, align 32, !tbaa !29
  %i.apk = load <8 x float>, ptr %i.aph, align 32, !tbaa !29
  %i.apl = fadd <8 x float> %i.apk, %i.apd
  store <8 x float> %i.apl, ptr %i.aph, align 32, !tbaa !29
  %i.apm = extractelement <4 x i32> %i.aox, i64 1
  %i.apn = sext i32 %i.apm to i64                 ; 8 uses
  %i.apo = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 32 ; 2 uses
  %i.apq = getelementptr inbounds [4 x i8], ptr %i.apb, i64 %i.apn
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 32 ; 2 uses
  %i.aps = load <8 x float>, ptr %i.app, align 32, !tbaa !29
  %i.apt = fadd <8 x float> %i.apc, %i.aps
  store <8 x float> %i.apt, ptr %i.app, align 32, !tbaa !29
  %i.apu = load <8 x float>, ptr %i.apr, align 32, !tbaa !29
  %i.apv = fadd <8 x float> %i.apu, %i.apd
  store <8 x float> %i.apv, ptr %i.apr, align 32, !tbaa !29
  %i.apw = extractelement <4 x i32> %i.aox, i64 2
  %i.apx = sext i32 %i.apw to i64                 ; 8 uses
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.apx
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 64 ; 2 uses
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.apb, i64 %i.apx
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 64 ; 2 uses
  %i.aqc = load <8 x float>, ptr %i.apz, align 32, !tbaa !29
  %i.aqd = fadd <8 x float> %i.apc, %i.aqc
  store <8 x float> %i.aqd, ptr %i.apz, align 32, !tbaa !29
  %i.aqe = load <8 x float>, ptr %i.aqb, align 32, !tbaa !29
  %i.aqf = fadd <8 x float> %i.aqe, %i.apd
  store <8 x float> %i.aqf, ptr %i.aqb, align 32, !tbaa !29
  %i.aqg = extractelement <4 x i32> %i.aox, i64 3
  %i.aqh = sext i32 %i.aqg to i64                 ; 8 uses
  %i.aqi = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 96 ; 2 uses
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.apb, i64 %i.aqh
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 96 ; 2 uses
  %i.aqm = load <8 x float>, ptr %i.aqj, align 32, !tbaa !29
  %i.aqn = fadd <8 x float> %i.apc, %i.aqm
  store <8 x float> %i.aqn, ptr %i.aqj, align 32, !tbaa !29
  %i.aqo = load <8 x float>, ptr %i.aql, align 32, !tbaa !29
  %i.aqp = fadd <8 x float> %i.aqo, %i.apd
  store <8 x float> %i.aqp, ptr %i.aql, align 32, !tbaa !29
  %i.aqq = load ptr, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !93 ; 4 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 24
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !93 ; 4 uses
  %i.aqv = shufflevector <16 x float> %i.ami, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aqw = shufflevector <16 x float> %i.ami, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aqx = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.apf ; 2 uses
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.apf ; 2 uses
  %i.aqz = load <8 x float>, ptr %i.aqx, align 32, !tbaa !29
  %i.ara = fadd <8 x float> %i.aqv, %i.aqz
  store <8 x float> %i.ara, ptr %i.aqx, align 32, !tbaa !29
  %i.arb = load <8 x float>, ptr %i.aqy, align 32, !tbaa !29
  %i.arc = fadd <8 x float> %i.arb, %i.aqw
  store <8 x float> %i.arc, ptr %i.aqy, align 32, !tbaa !29
  %i.ard = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.apn
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 32 ; 2 uses
  %i.arf = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.apn
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 32 ; 2 uses
  %i.arh = load <8 x float>, ptr %i.are, align 32, !tbaa !29
  %i.ari = fadd <8 x float> %i.aqv, %i.arh
  store <8 x float> %i.ari, ptr %i.are, align 32, !tbaa !29
  %i.arj = load <8 x float>, ptr %i.arg, align 32, !tbaa !29
  %i.ark = fadd <8 x float> %i.arj, %i.aqw
  store <8 x float> %i.ark, ptr %i.arg, align 32, !tbaa !29
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.apx
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 64 ; 2 uses
  %i.arn = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.apx
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 64 ; 2 uses
  %i.arp = load <8 x float>, ptr %i.arm, align 32, !tbaa !29
  %i.arq = fadd <8 x float> %i.aqv, %i.arp
  store <8 x float> %i.arq, ptr %i.arm, align 32, !tbaa !29
  %i.arr = load <8 x float>, ptr %i.aro, align 32, !tbaa !29
  %i.ars = fadd <8 x float> %i.arr, %i.aqw
  store <8 x float> %i.ars, ptr %i.aro, align 32, !tbaa !29
  %i.art = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.aqh
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 96 ; 2 uses
  %i.arv = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %i.aqh
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 96 ; 2 uses
  %i.arx = load <8 x float>, ptr %i.aru, align 32, !tbaa !29
  %i.ary = fadd <8 x float> %i.aqv, %i.arx
  store <8 x float> %i.ary, ptr %i.aru, align 32, !tbaa !29
  %i.arz = load <8 x float>, ptr %i.arw, align 32, !tbaa !29
  %i.asa = fadd <8 x float> %i.arz, %i.aqw
  store <8 x float> %i.asa, ptr %i.arw, align 32, !tbaa !29
  %i.asb = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !93 ; 4 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asb, i64 8
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !93 ; 4 uses
  %i.asf = shufflevector <16 x float> %i.aoc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.asg = shufflevector <16 x float> %i.aoc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.apf ; 2 uses
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.ase, i64 %i.apf ; 2 uses
  %i.asj = load <8 x float>, ptr %i.ash, align 32, !tbaa !29
  %i.ask = fadd <8 x float> %i.asf, %i.asj
  store <8 x float> %i.ask, ptr %i.ash, align 32, !tbaa !29
  %i.asl = load <8 x float>, ptr %i.asi, align 32, !tbaa !29
  %i.asm = fadd <8 x float> %i.asl, %i.asg
  store <8 x float> %i.asm, ptr %i.asi, align 32, !tbaa !29
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.apn
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 32 ; 2 uses
  %i.asp = getelementptr inbounds [4 x i8], ptr %i.ase, i64 %i.apn
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 32 ; 2 uses
  %i.asr = load <8 x float>, ptr %i.aso, align 32, !tbaa !29
  %i.ass = fadd <8 x float> %i.asf, %i.asr
  store <8 x float> %i.ass, ptr %i.aso, align 32, !tbaa !29
  %i.ast = load <8 x float>, ptr %i.asq, align 32, !tbaa !29
  %i.asu = fadd <8 x float> %i.ast, %i.asg
  store <8 x float> %i.asu, ptr %i.asq, align 32, !tbaa !29
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.apx
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 64 ; 2 uses
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.ase, i64 %i.apx
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 64 ; 2 uses
  %i.asz = load <8 x float>, ptr %i.asw, align 32, !tbaa !29
  %i.ata = fadd <8 x float> %i.asf, %i.asz
  store <8 x float> %i.ata, ptr %i.asw, align 32, !tbaa !29
  %i.atb = load <8 x float>, ptr %i.asy, align 32, !tbaa !29
  %i.atc = fadd <8 x float> %i.atb, %i.asg
  store <8 x float> %i.atc, ptr %i.asy, align 32, !tbaa !29
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.aqh
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 96 ; 2 uses
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.ase, i64 %i.aqh
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 96 ; 2 uses
  %i.ath = load <8 x float>, ptr %i.ate, align 32, !tbaa !29
  %i.ati = fadd <8 x float> %i.asf, %i.ath
  store <8 x float> %i.ati, ptr %i.ate, align 32, !tbaa !29
  %i.atj = load <8 x float>, ptr %i.atg, align 32, !tbaa !29
  %i.atk = fadd <8 x float> %i.atj, %i.asg
  store <8 x float> %i.atk, ptr %i.atg, align 32, !tbaa !29
  %i.atl = load ptr, ptr %i.br, align 8, !tbaa !92 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !93 ; 4 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atl, i64 24
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !93 ; 4 uses
  %i.atq = shufflevector <16 x float> %i.aoe, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.atr = shufflevector <16 x float> %i.aoe, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.apf ; 2 uses
  %i.att = getelementptr inbounds [4 x i8], ptr %i.atp, i64 %i.apf ; 2 uses
  %i.atu = load <8 x float>, ptr %i.ats, align 32, !tbaa !29
  %i.atv = fadd <8 x float> %i.atq, %i.atu
  store <8 x float> %i.atv, ptr %i.ats, align 32, !tbaa !29
  %i.atw = load <8 x float>, ptr %i.att, align 32, !tbaa !29
  %i.atx = fadd <8 x float> %i.atw, %i.atr
  store <8 x float> %i.atx, ptr %i.att, align 32, !tbaa !29
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.apn
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 32 ; 2 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.atp, i64 %i.apn
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 32 ; 2 uses
  %i.auc = load <8 x float>, ptr %i.atz, align 32, !tbaa !29
  %i.aud = fadd <8 x float> %i.atq, %i.auc
  store <8 x float> %i.aud, ptr %i.atz, align 32, !tbaa !29
  %i.aue = load <8 x float>, ptr %i.aub, align 32, !tbaa !29
  %i.auf = fadd <8 x float> %i.aue, %i.atr
  store <8 x float> %i.auf, ptr %i.aub, align 32, !tbaa !29
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.apx
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 64 ; 2 uses
  %i.aui = getelementptr inbounds [4 x i8], ptr %i.atp, i64 %i.apx
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 64 ; 2 uses
  %i.auk = load <8 x float>, ptr %i.auh, align 32, !tbaa !29
  %i.aul = fadd <8 x float> %i.atq, %i.auk
  store <8 x float> %i.aul, ptr %i.auh, align 32, !tbaa !29
  %i.aum = load <8 x float>, ptr %i.auj, align 32, !tbaa !29
  %i.aun = fadd <8 x float> %i.aum, %i.atr
  store <8 x float> %i.aun, ptr %i.auj, align 32, !tbaa !29
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.atn, i64 %i.aqh
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 96 ; 2 uses
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.atp, i64 %i.aqh
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 96 ; 2 uses
end_hunk_1
