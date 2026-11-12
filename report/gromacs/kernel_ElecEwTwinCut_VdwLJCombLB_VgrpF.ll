Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEwTwinCut_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1599
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4116.preheader
  %i.gq = shl i32 %i.do, 1
  %i.gr = ashr i32 %i.dn, %i.gq
  %i.gs = and i32 %i.gr, %i.dp
  %i.gt = mul nsw i32 %i.fl, %i.gs
  %i.gu = load ptr, ptr %i.er, align 8, !tbaa !91
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !73
  %i.gy = fadd float %i.gp, %i.gx
  store float %i.gy, ptr %i.gw, align 4, !tbaa !73
  %i.gz = getelementptr [4 x i8], ptr %i.ay, i64 %i.fm
  %i.ha = getelementptr i8, ptr %i.gz, i64 12
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !73 ; 2 uses
  %i.hc = fmul float %i.hb, %i.bs
  %i.hd = fmul float %i.hb, %i.hc
  %i.he = fmul float %i.hd, %i.ad
  %i.hf = mul i32 %i.do, 3
  %i.hg = ashr i32 %i.dn, %i.hf
  %i.hh = and i32 %i.hg, %i.dp
  %i.hi = mul nsw i32 %i.fl, %i.hh
  %i.hj = load ptr, ptr %i.fc, align 8, !tbaa !91
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hk ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !73
  %i.hn = fadd float %i.he, %i.hm
  store float %i.hn, ptr %i.hl, align 4, !tbaa !73
  br label %.loopexit4115

.loopexit4115:                                    ; preds = %.preheader4114, %bb.b, %bb.a
  %i.ho = add nsw i32 %i.dd, 8
  %i.hp = add nsw i32 %i.dd, 16
  %i.hq = sext i32 %i.dd to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.hq ; 4 uses
  %.val.i = load float, ptr %i.hr, align 1, !tbaa !29, !noalias !95
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %.val3.i = load float, ptr %i.hs, align 1, !tbaa !29, !noalias !95
  %i.ht = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.hu = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hw = fadd <16 x float> %i.cm, %i.hv          ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.val.i704 = load float, ptr %i.hx, align 1, !tbaa !29, !noalias !95
  %i.hy = getelementptr i8, ptr %i.hr, i64 12
  %.val3.i705 = load float, ptr %i.hy, align 1, !tbaa !29, !noalias !95
  %i.hz = insertelement <4 x float> poison, float %.val.i704, i64 0
  %i.ia = insertelement <4 x float> poison, float %.val3.i705, i64 0
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> %i.ia, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ic = fadd <16 x float> %i.cm, %i.ib          ; 6 uses
  %i.id = sext i32 %i.ho to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.id ; 4 uses
  %.val.i707 = load float, ptr %i.ie, align 1, !tbaa !29, !noalias !96
  %i.if = getelementptr i8, ptr %i.ie, i64 4
  %.val3.i708 = load float, ptr %i.if, align 1, !tbaa !29, !noalias !96
  %i.ig = insertelement <4 x float> poison, float %.val.i707, i64 0
  %i.ih = insertelement <4 x float> poison, float %.val3.i708, i64 0
  %i.ii = shufflevector <4 x float> %i.ig, <4 x float> %i.ih, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ij = fadd <16 x float> %i.cs, %i.ii          ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.val.i710 = load float, ptr %i.ik, align 1, !tbaa !29, !noalias !96
  %i.il = getelementptr i8, ptr %i.ie, i64 12
  %.val3.i711 = load float, ptr %i.il, align 1, !tbaa !29, !noalias !96
  %i.im = insertelement <4 x float> poison, float %.val.i710, i64 0
  %i.in = insertelement <4 x float> poison, float %.val3.i711, i64 0
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ip = fadd <16 x float> %i.cs, %i.io          ; 6 uses
  %i.iq = sext i32 %i.hp to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.iq ; 4 uses
  %.val.i713 = load float, ptr %i.ir, align 1, !tbaa !29, !noalias !97
  %i.is = getelementptr i8, ptr %i.ir, i64 4
  %.val3.i714 = load float, ptr %i.is, align 1, !tbaa !29, !noalias !97
  %i.it = insertelement <4 x float> poison, float %.val.i713, i64 0
  %i.iu = insertelement <4 x float> poison, float %.val3.i714, i64 0
  %i.iv = shufflevector <4 x float> %i.it, <4 x float> %i.iu, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iw = fadd <16 x float> %i.cy, %i.iv          ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.val.i716 = load float, ptr %i.ix, align 1, !tbaa !29, !noalias !97
  %i.iy = getelementptr i8, ptr %i.ir, i64 12
  %.val3.i717 = load float, ptr %i.iy, align 1, !tbaa !29, !noalias !97
  %i.iz = insertelement <4 x float> poison, float %.val.i716, i64 0
  %i.ja = insertelement <4 x float> poison, float %.val3.i717, i64 0
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jc = fadd <16 x float> %i.cy, %i.jb          ; 6 uses
  br i1 %i.dh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit4115
  %i.jd = sext i32 %i.cz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.jd ; 4 uses
  %.val.i719 = load float, ptr %i.je, align 1, !tbaa !29, !noalias !98
  %i.jf = getelementptr i8, ptr %i.je, i64 4
  %.val2.i = load float, ptr %i.jf, align 1, !tbaa !29, !noalias !98
  %i.jg = insertelement <4 x float> poison, float %.val.i719, i64 0
  %i.jh = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.ji = shufflevector <4 x float> %i.jg, <4 x float> %i.jh, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jj = fmul <16 x float> %i.bu, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.val.i720 = load float, ptr %i.jk, align 1, !tbaa !29, !noalias !98
  %i.jl = getelementptr i8, ptr %i.je, i64 12
  %.val2.i721 = load float, ptr %i.jl, align 1, !tbaa !29, !noalias !98
  %i.jm = insertelement <4 x float> poison, float %.val.i720, i64 0
  %i.jn = insertelement <4 x float> poison, float %.val2.i721, i64 0
  %i.jo = shufflevector <4 x float> %i.jm, <4 x float> %i.jn, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jp = fmul <16 x float> %i.bu, %i.jo
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit4115
  %.sroa.03730.0 = phi <16 x float> [ %i.jj, %bb.c ], [ undef, %.loopexit4115 ] ; 4 uses
  %.sroa.73734.0 = phi <16 x float> [ %i.jp, %bb.c ], [ undef, %.loopexit4115 ] ; 4 uses
  %i.jq = sext i32 %i.df to i64
  %i.jr = getelementptr [4 x i8], ptr %i.f, i64 %i.jq ; 8 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 32
  %.val665 = load float, ptr %i.jr, align 1, !tbaa !29
  %i.jt = getelementptr i8, ptr %i.jr, i64 4
  %.val666 = load float, ptr %i.jt, align 1, !tbaa !29
  %i.ju = insertelement <4 x float> poison, float %.val665, i64 0
  %i.jv = insertelement <4 x float> poison, float %.val666, i64 0
  %i.jw = shufflevector <4 x float> %i.ju, <4 x float> %i.jv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val667 = load float, ptr %i.js, align 1, !tbaa !29
  %i.jx = getelementptr i8, ptr %i.jr, i64 36
  %.val668 = load float, ptr %i.jx, align 1, !tbaa !29
  %i.jy = insertelement <4 x float> poison, float %.val667, i64 0
  %i.jz = insertelement <4 x float> poison, float %.val668, i64 0
  %i.ka = shufflevector <4 x float> %i.jy, <4 x float> %i.jz, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.val665.1 = load float, ptr %i.kb, align 1, !tbaa !29
  %i.kc = getelementptr i8, ptr %i.jr, i64 12
  %.val666.1 = load float, ptr %i.kc, align 1, !tbaa !29
  %i.kd = insertelement <4 x float> poison, float %.val665.1, i64 0
  %i.ke = insertelement <4 x float> poison, float %.val666.1, i64 0
  %i.kf = shufflevector <4 x float> %i.kd, <4 x float> %i.ke, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kg = getelementptr i8, ptr %i.jr, i64 40
  %.val667.1 = load float, ptr %i.kg, align 1, !tbaa !29
  %i.kh = getelementptr i8, ptr %i.jr, i64 44
  %.val668.1 = load float, ptr %i.kh, align 1, !tbaa !29
  %i.ki = insertelement <4 x float> poison, float %.val667.1, i64 0
  %i.kj = insertelement <4 x float> poison, float %.val668.1, i64 0
  %i.kk = shufflevector <4 x float> %i.ki, <4 x float> %i.kj, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kl = icmp slt i32 %i.cc, %i.ce               ; 3 uses
  br i1 %i.dj, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  br i1 %i.kl, label %.lr.ph4202, label %.critedge

.lr.ph4202:                                       ; preds = %.preheader
  %i.km = sext i32 %i.cc to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph4202, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561
  %indvars.iv4279 = phi i64 [ %i.km, %.lr.ph4202 ], [ %indvars.iv.next4280, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 4 uses
  %.sroa.163608.04200 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03601.04199 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xe, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.163590.04198 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03583.04197 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.16.04196 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03566.04195 = phi <16 x float> [ zeroinitializer, %.lr.ph4202 ], [ %i.xi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %i.kn = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv4279
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !85
  %.not552 = icmp eq i32 %i.kq, -1
  br i1 %.not552, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560: ; preds = %bb.e
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv4279 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !93 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !99
  %i.kv = insertelement <16 x i32> poison, i32 %i.ku, i64 0
  %i.kw = shufflevector <16 x i32> %i.kv, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.kx = and <16 x i32> %.sroa.04307.0.copyload, %i.kw
  %i.ky = icmp ne <16 x i32> %i.kx, zeroinitializer ; 3 uses
  %i.kz = and <16 x i32> %.sroa.6.0.copyload, %i.kw
  %.not4331 = icmp eq <16 x i32> %i.kz, zeroinitializer ; 2 uses
  %i.la = shl nsw i32 %i.ks, 3
  %i.lb = mul nsw i32 %i.ks, 24
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %i.ba, i64 %i.lc ; 3 uses
  %.val6694501 = load <8 x float>, ptr %i.ld, align 32, !tbaa !29
  %i.le = shufflevector <8 x float> %.val6694501, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lf = getelementptr i8, ptr %i.ld, i64 32
  %.val6704502 = load <8 x float>, ptr %i.lf, align 32, !tbaa !29
  %i.lg = shufflevector <8 x float> %.val6704502, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lh = getelementptr i8, ptr %i.ld, i64 64
  %.val6714503 = load <8 x float>, ptr %i.lh, align 32, !tbaa !29
  %i.li = shufflevector <8 x float> %.val6714503, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lj = fsub <16 x float> %i.hw, %i.le          ; 3 uses
  %i.lk = fsub <16 x float> %i.ic, %i.le          ; 3 uses
  %i.ll = fsub <16 x float> %i.ij, %i.lg          ; 3 uses
  %i.lm = fsub <16 x float> %i.ip, %i.lg          ; 3 uses
  %i.ln = fsub <16 x float> %i.iw, %i.li          ; 3 uses
  %i.lo = fsub <16 x float> %i.jc, %i.li          ; 3 uses
  %i.lp = fmul <16 x float> %i.lj, %i.lj
  %i.lq = fmul <16 x float> %i.ll, %i.ll
  %i.lr = fadd <16 x float> %i.lp, %i.lq
  %i.ls = fmul <16 x float> %i.ln, %i.ln
  %i.lt = fadd <16 x float> %i.lr, %i.ls          ; 2 uses
  %i.lu = fmul <16 x float> %i.lk, %i.lk
  %i.lv = fmul <16 x float> %i.lm, %i.lm
  %i.lw = fadd <16 x float> %i.lu, %i.lv
  %i.lx = fmul <16 x float> %i.lo, %i.lo
  %i.ly = fadd <16 x float> %i.lw, %i.lx          ; 2 uses
  %i.lz = fcmp olt <16 x float> %i.lt, %i.ar
  %i.ma = bitcast <16 x i1> %i.lz to i16          ; 3 uses
  %i.mb = fcmp olt <16 x float> %i.ly, %i.ar
  %i.mc = bitcast <16 x i1> %i.mb to i16          ; 3 uses
  %i.md = shl nsw i32 %i.ks, 1                    ; 3 uses
  %i.me = icmp eq i32 %i.md, %i.ch
  br i1 %i.me, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.mf = and i16 %i.ma, %i.r
  %i.mg = and i16 %i.mc, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.mh = or disjoint i32 %i.md, 1
  %i.mi = icmp eq i32 %i.mh, %i.ch
  br i1 %i.mi, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.h:                                             ; preds = %bb.g
  %i.mj = and i16 %i.ma, %i.t
  %i.mk = and i16 %i.mc, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03893.0 = phi i16 [ %i.mf, %bb.f ], [ %i.mj, %bb.h ], [ %i.ma, %bb.g ]
  %.sroa.10.0 = phi i16 [ %i.mg, %bb.f ], [ %i.mk, %bb.h ], [ %i.mc, %bb.g ]
  %i.ml = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lt, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.mm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ly, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ml, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mo = fmul <16 x float> %i.ml, %i.mn
  %i.mp = fmul <16 x float> %i.mn, splat (float -5.000000e-01)
  %i.mq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mo, <16 x float> %i.mn, <16 x float> splat (float -3.000000e+00))
  %i.mr = fmul <16 x float> %i.mp, %i.mq
  %i.ms = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mt = fmul <16 x float> %i.mm, %i.ms
  %i.mu = fmul <16 x float> %i.ms, splat (float -5.000000e-01)
  %i.mv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mt, <16 x float> %i.ms, <16 x float> splat (float -3.000000e+00))
  %i.mw = fmul <16 x float> %i.mu, %i.mv
  %i.mx = sext i32 %i.la to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.mx
  %.val6724504 = load <8 x float>, ptr %i.my, align 32, !tbaa !29
  %i.mz = shufflevector <8 x float> %.val6724504, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.na = fmul <16 x float> %.sroa.03730.0, %i.mz ; 2 uses
  %i.nb = fmul <16 x float> %.sroa.73734.0, %i.mz ; 2 uses
  %5 = bitcast i16 %.sroa.03893.0 to <16 x i1>    ; 3 uses
  %i.nc = select <16 x i1> %5, <16 x float> %i.mr, <16 x float> zeroinitializer ; 4 uses
  %6 = bitcast i16 %.sroa.10.0 to <16 x i1>       ; 3 uses
  %i.nd = select <16 x i1> %6, <16 x float> %i.mw, <16 x float> zeroinitializer ; 3 uses
  %i.ne = fmul <16 x float> %i.nc, %i.nc
  %i.nf = fmul <16 x float> %i.nd, %i.nd
  %i.ng = select <16 x i1> %i.ky, <16 x float> %i.nc, <16 x float> zeroinitializer ; 2 uses
  %i.nh = select <16 x i1> %.not4331, <16 x float> zeroinitializer, <16 x float> %i.nd ; 2 uses
  %i.ni = select <16 x i1> %5, <16 x float> %i.ml, <16 x float> zeroinitializer
  %i.nj = fmul <16 x float> %i.z, %i.ni           ; 7 uses
  %i.nk = select <16 x i1> %6, <16 x float> %i.mm, <16 x float> zeroinitializer
  %i.nl = fmul <16 x float> %i.z, %i.nk           ; 7 uses
  %i.nm = fmul <16 x float> %i.nj, %i.nj          ; 15 uses
  %i.nn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.no = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.np = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nn, <16 x float> %i.nm, <16 x float> splat (float 1.000000e+00))
  %i.nq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.no, <16 x float> %i.nj, <16 x float> %i.np) ; 2 uses
  %i.nr = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.nq, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ns = fneg <16 x float> %i.nr
  %i.nt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ns, <16 x float> %i.nq, <16 x float> splat (float 2.000000e+00))
  %i.nu = fmul <16 x float> %i.nr, %i.nt
  %i.nv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.nw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.nx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nv, <16 x float> %i.nm, <16 x float> splat (float f0xBC9DED90))
  %i.ny = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nw, <16 x float> %i.nm, <16 x float> splat (float f0x3D8EAF3B))
  %i.nz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nx, <16 x float> %i.nm, <16 x float> splat (float f0xBF409397))
  %i.oa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> %i.nj, <16 x float> %i.nz)
  %i.ob = fmul <16 x float> %i.oa, %i.nu
  %i.oc = fmul <16 x float> %i.x, %i.ob
  %i.od = fmul <16 x float> %i.nl, %i.nl          ; 15 uses
  %i.oe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.of = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.og = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oe, <16 x float> %i.od, <16 x float> splat (float 1.000000e+00))
  %i.oh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.of, <16 x float> %i.nl, <16 x float> %i.og) ; 2 uses
  %i.oi = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.oh, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.oj = fneg <16 x float> %i.oi
  %i.ok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oj, <16 x float> %i.oh, <16 x float> splat (float 2.000000e+00))
  %i.ol = fmul <16 x float> %i.oi, %i.ok
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.on = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.oo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.om, <16 x float> %i.od, <16 x float> splat (float f0xBC9DED90))
  %i.op = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.on, <16 x float> %i.od, <16 x float> splat (float f0x3D8EAF3B))
  %i.oq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oo, <16 x float> %i.od, <16 x float> splat (float f0xBF409397))
  %i.or = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.op, <16 x float> %i.nl, <16 x float> %i.oq)
  %i.os = fmul <16 x float> %i.or, %i.ol
  %i.ot = fmul <16 x float> %i.x, %i.os
  %i.ou = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oc, <16 x float> %i.nj, <16 x float> %i.ng)
  %i.ov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ot, <16 x float> %i.nl, <16 x float> %i.nh)
  %i.ow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ox = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.oy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ow, <16 x float> %i.nj, <16 x float> %i.ox) ; 2 uses
  %i.oz = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.oy, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.pa = fneg <16 x float> %i.oz
  %i.pb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pa, <16 x float> %i.oy, <16 x float> splat (float 2.000000e+00))
  %i.pc = fmul <16 x float> %i.oz, %i.pb
  %i.pd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.pe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nm, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pd, <16 x float> %i.nm, <16 x float> splat (float f0x3D1E57D6))
  %i.pg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pe, <16 x float> %i.nm, <16 x float> splat (float f0x3DE71E23))
  %i.ph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pf, <16 x float> %i.nm, <16 x float> splat (float f0x3F906EC3))
  %i.pi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pg, <16 x float> %i.nj, <16 x float> %i.ph)
  %i.pj = fmul <16 x float> %i.pi, %i.pc
  %i.pk = fmul <16 x float> %i.x, %i.pj
  %i.pl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.pm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.pn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pl, <16 x float> %i.nl, <16 x float> %i.pm) ; 2 uses
  %i.po = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.pn, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.pp = fneg <16 x float> %i.po
  %i.pq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> %i.pn, <16 x float> splat (float 2.000000e+00))
  %i.pr = fmul <16 x float> %i.po, %i.pq
  %i.ps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.pt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ps, <16 x float> %i.od, <16 x float> splat (float f0x3D1E57D6))
  %i.pv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pt, <16 x float> %i.od, <16 x float> splat (float f0x3DE71E23))
  %i.pw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pu, <16 x float> %i.od, <16 x float> splat (float f0x3F906EC3))
  %i.px = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pv, <16 x float> %i.nl, <16 x float> %i.pw)
  %i.py = fmul <16 x float> %i.px, %i.pr
  %i.pz = fmul <16 x float> %i.x, %i.py
  %i.qa = fmul <16 x float> %i.na, %i.ou
  %i.qb = fmul <16 x float> %i.nb, %i.ov
  %i.qc = select <16 x i1> %i.ky, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.qd = fadd <16 x float> %i.qc, %i.pk
  %i.qe = select <16 x i1> %.not4331, <16 x float> zeroinitializer, <16 x float> %i.ag
  %i.qf = fadd <16 x float> %i.qe, %i.pz
  %i.qg = fsub <16 x float> %i.ng, %i.qd
  %i.qh = fmul <16 x float> %i.na, %i.qg
  %i.qi = fsub <16 x float> %i.nh, %i.qf
  %i.qj = fmul <16 x float> %i.nb, %i.qi
  %i.qk = select <16 x i1> %5, <16 x float> %i.qh, <16 x float> zeroinitializer ; 2 uses
  %i.ql = select <16 x i1> %6, <16 x float> %i.qj, <16 x float> zeroinitializer ; 2 uses
  %i.qm = fcmp olt <16 x float> %i.ml, %i.aw      ; 2 uses
  %i.qn = shl nsw i32 %i.ks, 4
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [4 x i8], ptr %i.f, i64 %i.qo ; 2 uses
  %.val6734505 = load <8 x float>, ptr %i.qp, align 32, !tbaa !29
  %i.qq = shufflevector <8 x float> %.val6734505, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qr = getelementptr i8, ptr %i.qp, i64 32
  %.val6744506 = load <8 x float>, ptr %i.qr, align 32, !tbaa !29
  %i.qs = shufflevector <8 x float> %.val6744506, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qt = fadd <16 x float> %i.jw, %i.qq          ; 3 uses
  %i.qu = fmul <16 x float> %i.ka, %i.qs          ; 2 uses
  %i.qv = fmul <16 x float> %i.nc, %i.qt          ; 2 uses
  %i.qw = fmul <16 x float> %i.qv, %i.qv          ; 3 uses
  %i.qx = fmul <16 x float> %i.qw, %i.qw
  %i.qy = fmul <16 x float> %i.qw, %i.qx
  %i.qz = select <16 x i1> %i.qm, <16 x i1> %i.ky, <16 x i1> zeroinitializer ; 2 uses
  %i.ra = select <16 x i1> %i.qz, <16 x float> %i.qy, <16 x float> zeroinitializer ; 2 uses
  %i.rb = fmul <16 x float> %i.qu, %i.ra          ; 3 uses
  %i.rc = fmul <16 x float> %i.ra, %i.rb          ; 2 uses
  %i.rd = fsub <16 x float> %i.rc, %i.rb
  %i.re = fmul <16 x float> %i.qt, %i.qt          ; 3 uses
  %i.rf = fmul <16 x float> %i.re, %i.re
  %i.rg = fmul <16 x float> %i.re, %i.rf          ; 2 uses
  %i.rh = fmul <16 x float> %i.qu, %i.rg          ; 2 uses
  %i.ri = fmul <16 x float> %i.rg, %i.rh
  %i.rj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rh, <16 x float> %i.aj, <16 x float> %i.rb)
  %i.rk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ri, <16 x float> %i.am, <16 x float> %i.rc)
  %i.rl = fmul <16 x float> %i.rj, splat (float f0xBE2AAAAB)
  %i.rm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rk, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.rl)
  %i.rn = select <16 x i1> %i.qm, <16 x float> %i.rd, <16 x float> zeroinitializer
  %i.ro = select <16 x i1> %i.qz, <16 x float> %i.rm, <16 x float> zeroinitializer ; 2 uses
  %i.rp = load ptr, ptr %i.bj, align 8, !tbaa !84
  %i.rq = load i32, ptr %i.bv, align 8, !tbaa !100
  %i.rr = sext i32 %i.md to i64
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.rr
  %i.rt = load i32, ptr %i.bw, align 4, !tbaa !101
  %i.ru = load i32, ptr %i.bt, align 8, !tbaa !94
  %i.rv = load <2 x i32>, ptr %i.rs, align 4, !tbaa !85 ; 2 uses
  %i.rw = insertelement <2 x i32> poison, i32 %i.rq, i64 0
  %i.rx = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ry = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rz = shufflevector <2 x i32> %i.rw, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.sa = ashr <4 x i32> %i.ry, %i.rz
  %i.sb = shufflevector <4 x i32> %i.sa, <4 x i32> %i.rx, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.sc = insertelement <4 x i32> poison, i32 %i.rt, i64 0
  %i.sd = shufflevector <4 x i32> %i.sc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.se = and <4 x i32> %i.sb, %i.sd
  %i.sf = insertelement <4 x i32> poison, i32 %i.ru, i64 0
  %i.sg = shufflevector <4 x i32> %i.sf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sh = mul nsw <4 x i32> %i.se, %i.sg          ; 4 uses
  %i.si = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !91 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !91 ; 4 uses
  %i.sm = shufflevector <16 x float> %i.qk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sn = shufflevector <16 x float> %i.qk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.so = extractelement <4 x i32> %i.sh, i64 0
  %i.sp = sext i32 %i.so to i64                   ; 6 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.sp ; 2 uses
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.sp ; 2 uses
  %i.ss = load <8 x float>, ptr %i.sq, align 32, !tbaa !29
  %i.st = fadd <8 x float> %i.sm, %i.ss
  store <8 x float> %i.st, ptr %i.sq, align 32, !tbaa !29
  %i.su = load <8 x float>, ptr %i.sr, align 32, !tbaa !29
  %i.sv = fadd <8 x float> %i.su, %i.sn
  store <8 x float> %i.sv, ptr %i.sr, align 32, !tbaa !29
  %i.sw = extractelement <4 x i32> %i.sh, i64 1
  %i.sx = sext i32 %i.sw to i64                   ; 6 uses
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32 ; 2 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.sx
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32 ; 2 uses
  %i.tc = load <8 x float>, ptr %i.sz, align 32, !tbaa !29
  %i.td = fadd <8 x float> %i.sm, %i.tc
  store <8 x float> %i.td, ptr %i.sz, align 32, !tbaa !29
  %i.te = load <8 x float>, ptr %i.tb, align 32, !tbaa !29
  %i.tf = fadd <8 x float> %i.te, %i.sn
  store <8 x float> %i.tf, ptr %i.tb, align 32, !tbaa !29
  %i.tg = extractelement <4 x i32> %i.sh, i64 2
  %i.th = sext i32 %i.tg to i64                   ; 6 uses
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64 ; 2 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.th
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 64 ; 2 uses
  %i.tm = load <8 x float>, ptr %i.tj, align 32, !tbaa !29
  %i.tn = fadd <8 x float> %i.sm, %i.tm
  store <8 x float> %i.tn, ptr %i.tj, align 32, !tbaa !29
  %i.to = load <8 x float>, ptr %i.tl, align 32, !tbaa !29
  %i.tp = fadd <8 x float> %i.to, %i.sn
  store <8 x float> %i.tp, ptr %i.tl, align 32, !tbaa !29
  %i.tq = extractelement <4 x i32> %i.sh, i64 3
  %i.tr = sext i32 %i.tq to i64                   ; 6 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 96 ; 2 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tr
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 96 ; 2 uses
  %i.tw = load <8 x float>, ptr %i.tt, align 32, !tbaa !29
  %i.tx = fadd <8 x float> %i.sm, %i.tw
  store <8 x float> %i.tx, ptr %i.tt, align 32, !tbaa !29
  %i.ty = load <8 x float>, ptr %i.tv, align 32, !tbaa !29
  %i.tz = fadd <8 x float> %i.ty, %i.sn
  store <8 x float> %i.tz, ptr %i.tv, align 32, !tbaa !29
  %i.ua = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !91 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !91 ; 4 uses
  %i.uf = shufflevector <16 x float> %i.ql, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ug = shufflevector <16 x float> %i.ql, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.sp ; 2 uses
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.sp ; 2 uses
  %i.uj = load <8 x float>, ptr %i.uh, align 32, !tbaa !29
  %i.uk = fadd <8 x float> %i.uf, %i.uj
  store <8 x float> %i.uk, ptr %i.uh, align 32, !tbaa !29
  %i.ul = load <8 x float>, ptr %i.ui, align 32, !tbaa !29
  %i.um = fadd <8 x float> %i.ul, %i.ug
  store <8 x float> %i.um, ptr %i.ui, align 32, !tbaa !29
  %i.un = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.sx
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32 ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.sx
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 32 ; 2 uses
  %i.ur = load <8 x float>, ptr %i.uo, align 32, !tbaa !29
  %i.us = fadd <8 x float> %i.uf, %i.ur
  store <8 x float> %i.us, ptr %i.uo, align 32, !tbaa !29
  %i.ut = load <8 x float>, ptr %i.uq, align 32, !tbaa !29
  %i.uu = fadd <8 x float> %i.ut, %i.ug
  store <8 x float> %i.uu, ptr %i.uq, align 32, !tbaa !29
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.th
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 64 ; 2 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.th
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 64 ; 2 uses
  %i.uz = load <8 x float>, ptr %i.uw, align 32, !tbaa !29
  %i.va = fadd <8 x float> %i.uf, %i.uz
  store <8 x float> %i.va, ptr %i.uw, align 32, !tbaa !29
  %i.vb = load <8 x float>, ptr %i.uy, align 32, !tbaa !29
  %i.vc = fadd <8 x float> %i.vb, %i.ug
  store <8 x float> %i.vc, ptr %i.uy, align 32, !tbaa !29
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.tr
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 96 ; 2 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.tr
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 96 ; 2 uses
  %i.vh = load <8 x float>, ptr %i.ve, align 32, !tbaa !29
  %i.vi = fadd <8 x float> %i.uf, %i.vh
  store <8 x float> %i.vi, ptr %i.ve, align 32, !tbaa !29
  %i.vj = load <8 x float>, ptr %i.vg, align 32, !tbaa !29
  %i.vk = fadd <8 x float> %i.vj, %i.ug
  store <8 x float> %i.vk, ptr %i.vg, align 32, !tbaa !29
  %i.vl = load ptr, ptr %i.br, align 8, !tbaa !90 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !91 ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !91 ; 4 uses
  %i.vp = shufflevector <16 x float> %i.ro, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vq = shufflevector <16 x float> %i.ro, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.sp ; 2 uses
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.sp ; 2 uses
  %i.vt = load <8 x float>, ptr %i.vr, align 32, !tbaa !29
  %i.vu = fadd <8 x float> %i.vp, %i.vt
  store <8 x float> %i.vu, ptr %i.vr, align 32, !tbaa !29
  %i.vv = load <8 x float>, ptr %i.vs, align 32, !tbaa !29
  %i.vw = fadd <8 x float> %i.vv, %i.vq
  store <8 x float> %i.vw, ptr %i.vs, align 32, !tbaa !29
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.sx
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 32 ; 2 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.sx
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 32 ; 2 uses
  %i.wb = load <8 x float>, ptr %i.vy, align 32, !tbaa !29
  %i.wc = fadd <8 x float> %i.vp, %i.wb
  store <8 x float> %i.wc, ptr %i.vy, align 32, !tbaa !29
  %i.wd = load <8 x float>, ptr %i.wa, align 32, !tbaa !29
  %i.we = fadd <8 x float> %i.wd, %i.vq
  store <8 x float> %i.we, ptr %i.wa, align 32, !tbaa !29
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.th
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 64 ; 2 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.th
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 64 ; 2 uses
  %i.wj = load <8 x float>, ptr %i.wg, align 32, !tbaa !29
  %i.wk = fadd <8 x float> %i.vp, %i.wj
  store <8 x float> %i.wk, ptr %i.wg, align 32, !tbaa !29
  %i.wl = load <8 x float>, ptr %i.wi, align 32, !tbaa !29
  %i.wm = fadd <8 x float> %i.wl, %i.vq
  store <8 x float> %i.wm, ptr %i.wi, align 32, !tbaa !29
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.tr
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 96 ; 2 uses
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.tr
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 96 ; 2 uses
  %i.wr = load <8 x float>, ptr %i.wo, align 32, !tbaa !29
  %i.ws = fadd <8 x float> %i.vp, %i.wr
  store <8 x float> %i.ws, ptr %i.wo, align 32, !tbaa !29
  %i.wt = load <8 x float>, ptr %i.wq, align 32, !tbaa !29
  %i.wu = fadd <8 x float> %i.wt, %i.vq
  store <8 x float> %i.wu, ptr %i.wq, align 32, !tbaa !29
  %i.wv = fadd <16 x float> %i.qa, %i.rn
  %i.ww = fmul <16 x float> %i.ne, %i.wv          ; 3 uses
  %i.wx = fmul <16 x float> %i.nf, %i.qb          ; 3 uses
  %i.wy = fmul <16 x float> %i.lj, %i.ww          ; 2 uses
  %i.wz = fmul <16 x float> %i.lk, %i.wx          ; 2 uses
  %i.xa = fmul <16 x float> %i.ll, %i.ww          ; 2 uses
  %i.xb = fmul <16 x float> %i.lm, %i.wx          ; 2 uses
  %i.xc = fmul <16 x float> %i.ln, %i.ww          ; 2 uses
  %i.xd = fmul <16 x float> %i.lo, %i.wx          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4116.preheader
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !91 ; 4 uses
  %i.ahb = shufflevector <16 x float> %i.adh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ahc = shufflevector <16 x float> %i.adh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ahd = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.afl ; 2 uses
  %i.ahe = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.afl ; 2 uses
  %i.ahf = load <8 x float>, ptr %i.ahd, align 32, !tbaa !29
  %i.ahg = fadd <8 x float> %i.ahb, %i.ahf
  store <8 x float> %i.ahg, ptr %i.ahd, align 32, !tbaa !29
  %i.ahh = load <8 x float>, ptr %i.ahe, align 32, !tbaa !29
  %i.ahi = fadd <8 x float> %i.ahh, %i.ahc
  store <8 x float> %i.ahi, ptr %i.ahe, align 32, !tbaa !29
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.aft
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 32 ; 2 uses
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.aft
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32 ; 2 uses
  %i.ahn = load <8 x float>, ptr %i.ahk, align 32, !tbaa !29
  %i.aho = fadd <8 x float> %i.ahb, %i.ahn
  store <8 x float> %i.aho, ptr %i.ahk, align 32, !tbaa !29
  %i.ahp = load <8 x float>, ptr %i.ahm, align 32, !tbaa !29
  %i.ahq = fadd <8 x float> %i.ahp, %i.ahc
  store <8 x float> %i.ahq, ptr %i.ahm, align 32, !tbaa !29
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.agd
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 64 ; 2 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.agd
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 64 ; 2 uses
  %i.ahv = load <8 x float>, ptr %i.ahs, align 32, !tbaa !29
  %i.ahw = fadd <8 x float> %i.ahb, %i.ahv
  store <8 x float> %i.ahw, ptr %i.ahs, align 32, !tbaa !29
  %i.ahx = load <8 x float>, ptr %i.ahu, align 32, !tbaa !29
  %i.ahy = fadd <8 x float> %i.ahx, %i.ahc
  store <8 x float> %i.ahy, ptr %i.ahu, align 32, !tbaa !29
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.agn
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 96 ; 2 uses
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.aha, i64 %i.agn
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 96 ; 2 uses
  %i.aid = load <8 x float>, ptr %i.aia, align 32, !tbaa !29
  %i.aie = fadd <8 x float> %i.ahb, %i.aid
  store <8 x float> %i.aie, ptr %i.aia, align 32, !tbaa !29
  %i.aif = load <8 x float>, ptr %i.aic, align 32, !tbaa !29
  %i.aig = fadd <8 x float> %i.aif, %i.ahc
  store <8 x float> %i.aig, ptr %i.aic, align 32, !tbaa !29
  %i.aih = load ptr, ptr %i.br, align 8, !tbaa !90 ; 2 uses
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !91 ; 4 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !91 ; 4 uses
  %i.ail = shufflevector <16 x float> %i.aej, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aim = shufflevector <16 x float> %i.aej, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ain = getelementptr inbounds [4 x i8], ptr %i.aii, i64 %i.afl ; 2 uses
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.afl ; 2 uses
  %i.aip = load <8 x float>, ptr %i.ain, align 32, !tbaa !29
  %i.aiq = fadd <8 x float> %i.ail, %i.aip
  store <8 x float> %i.aiq, ptr %i.ain, align 32, !tbaa !29
  %i.air = load <8 x float>, ptr %i.aio, align 32, !tbaa !29
  %i.ais = fadd <8 x float> %i.air, %i.aim
  store <8 x float> %i.ais, ptr %i.aio, align 32, !tbaa !29
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aii, i64 %i.aft
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32 ; 2 uses
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.aft
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32 ; 2 uses
  %i.aix = load <8 x float>, ptr %i.aiu, align 32, !tbaa !29
  %i.aiy = fadd <8 x float> %i.ail, %i.aix
  store <8 x float> %i.aiy, ptr %i.aiu, align 32, !tbaa !29
  %i.aiz = load <8 x float>, ptr %i.aiw, align 32, !tbaa !29
  %i.aja = fadd <8 x float> %i.aiz, %i.aim
  store <8 x float> %i.aja, ptr %i.aiw, align 32, !tbaa !29
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aii, i64 %i.agd
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 64 ; 2 uses
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.agd
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 64 ; 2 uses
  %i.ajf = load <8 x float>, ptr %i.ajc, align 32, !tbaa !29
  %i.ajg = fadd <8 x float> %i.ail, %i.ajf
  store <8 x float> %i.ajg, ptr %i.ajc, align 32, !tbaa !29
  %i.ajh = load <8 x float>, ptr %i.aje, align 32, !tbaa !29
  %i.aji = fadd <8 x float> %i.ajh, %i.aim
  store <8 x float> %i.aji, ptr %i.aje, align 32, !tbaa !29
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.aii, i64 %i.agn
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 96 ; 2 uses
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.agn
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 96 ; 2 uses
  %i.ajn = load <8 x float>, ptr %i.ajk, align 32, !tbaa !29
  %i.ajo = fadd <8 x float> %i.ail, %i.ajn
  store <8 x float> %i.ajo, ptr %i.ajk, align 32, !tbaa !29
  %i.ajp = load <8 x float>, ptr %i.ajm, align 32, !tbaa !29
  %i.ajq = fadd <8 x float> %i.ajp, %i.aim
  store <8 x float> %i.ajq, ptr %i.ajm, align 32, !tbaa !29
  %i.ajr = fadd <16 x float> %i.acy, %i.aei
  %i.ajs = fmul <16 x float> %i.aae, %i.ajr       ; 3 uses
  %i.ajt = fmul <16 x float> %i.aaf, %i.acz       ; 3 uses
  %i.aju = fmul <16 x float> %i.yt, %i.ajs        ; 2 uses
  %i.ajv = fmul <16 x float> %i.yu, %i.ajt        ; 2 uses
  %i.ajw = fmul <16 x float> %i.yv, %i.ajs        ; 2 uses
  %i.ajx = fmul <16 x float> %i.yw, %i.ajt        ; 2 uses
  %i.ajy = fmul <16 x float> %i.yx, %i.ajs        ; 2 uses
  %i.ajz = fmul <16 x float> %i.yy, %i.ajt        ; 2 uses
  %i.aka = fadd <16 x float> %.sroa.03601.14222, %i.aju ; 2 uses
  %i.akb = fadd <16 x float> %.sroa.163608.14223, %i.ajv ; 2 uses
  %i.akc = fadd <16 x float> %.sroa.03583.14220, %i.ajw ; 2 uses
  %i.akd = fadd <16 x float> %.sroa.163590.14221, %i.ajx ; 2 uses
  %i.ake = fadd <16 x float> %.sroa.03566.14218, %i.ajy ; 2 uses
  %i.akf = fadd <16 x float> %.sroa.16.14219, %i.ajz ; 2 uses
  %i.akg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ym ; 4 uses
  %i.akh = fadd <16 x float> %i.ajv, %i.aju       ; 2 uses
  %i.aki = fadd <16 x float> %i.ajx, %i.ajw       ; 2 uses
  %i.akj = fadd <16 x float> %i.ajz, %i.ajy       ; 2 uses
  %i.akk = load <8 x float>, ptr %i.akg, align 32, !tbaa !29
  %i.akl = shufflevector <16 x float> %i.akh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akm = shufflevector <16 x float> %i.akh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akn = fadd <8 x float> %i.akl, %i.akm
  %i.ako = fsub <8 x float> %i.akk, %i.akn
  store <8 x float> %i.ako, ptr %i.akg, align 32, !tbaa !29
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akg, i64 32 ; 2 uses
  %i.akq = load <8 x float>, ptr %i.akp, align 32, !tbaa !29
  %i.akr = shufflevector <16 x float> %i.aki, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aks = shufflevector <16 x float> %i.aki, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akt = fadd <8 x float> %i.akr, %i.aks
  %i.aku = fsub <8 x float> %i.akq, %i.akt
  store <8 x float> %i.aku, ptr %i.akp, align 32, !tbaa !29
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akg, i64 64 ; 2 uses
  %i.akw = load <8 x float>, ptr %i.akv, align 32, !tbaa !29
  %i.akx = shufflevector <16 x float> %i.akj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aky = shufflevector <16 x float> %i.akj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akz = fadd <8 x float> %i.akx, %i.aky
  %i.ala = fsub <8 x float> %i.akw, %i.akz
  store <8 x float> %i.ala, ptr %i.akv, align 32, !tbaa !29
  %indvars.iv.next4285 = add nsw i64 %indvars.iv4284, 1 ; 2 uses
  %exitcond4288.not = icmp eq i64 %indvars.iv.next4285, %wide.trip.count4287
  br i1 %exitcond4288.not, label %.loopexit, label %bb.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  br i1 %i.dh, label %.preheader4111, label %.preheader4113

.preheader4113:                                   ; preds = %bb.j
  br i1 %i.kl, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4113
  %i.alb = sext i32 %i.cc to i64
  %wide.trip.count = sext i32 %i.ce to i64
  br label %bb.p

.preheader4111:                                   ; preds = %bb.j
  br i1 %i.kl, label %.lr.ph4164, label %.critedge3

.lr.ph4164:                                       ; preds = %.preheader4111
  %i.alc = sext i32 %i.cc to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph4164, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4267 = phi i64 [ %i.alc, %.lr.ph4164 ], [ %indvars.iv.next4268, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163608.24162 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.baf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03601.24161 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.bae, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163590.24160 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.bah, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03583.24159 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.bag, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.24158 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.baj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03566.24157 = phi <16 x float> [ zeroinitializer, %.lr.ph4164 ], [ %i.bai, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.ald = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %indvars.iv4267
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !85
  %.not551 = icmp eq i32 %i.alg, -1
  br i1 %.not551, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556: ; preds = %bb.k
  %i.alh = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv4267 ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !93 ; 4 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !99
  %i.all = insertelement <16 x i32> poison, i32 %i.alk, i64 0
  %i.alm = shufflevector <16 x i32> %i.all, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aln = and <16 x i32> %.sroa.04307.0.copyload, %i.alm
  %i.alo = icmp ne <16 x i32> %i.aln, zeroinitializer ; 3 uses
  %i.alp = and <16 x i32> %.sroa.6.0.copyload, %i.alm
  %i.alq = icmp ne <16 x i32> %i.alp, zeroinitializer ; 3 uses
  %i.alr = shl nsw i32 %i.ali, 3
  %i.als = mul nsw i32 %i.ali, 24
  %i.alt = sext i32 %i.als to i64                 ; 2 uses
  %i.alu = getelementptr [4 x i8], ptr %i.ba, i64 %i.alt ; 3 uses
  %.val6814489 = load <8 x float>, ptr %i.alu, align 32, !tbaa !29
  %i.alv = shufflevector <8 x float> %.val6814489, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alw = getelementptr i8, ptr %i.alu, i64 32
  %.val6824490 = load <8 x float>, ptr %i.alw, align 32, !tbaa !29
  %i.alx = shufflevector <8 x float> %.val6824490, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alu, i64 64
  %.val6834491 = load <8 x float>, ptr %i.aly, align 32, !tbaa !29
  %i.alz = shufflevector <8 x float> %.val6834491, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ama = fsub <16 x float> %i.hw, %i.alv        ; 3 uses
  %i.amb = fsub <16 x float> %i.ic, %i.alv        ; 3 uses
  %i.amc = fsub <16 x float> %i.ij, %i.alx        ; 3 uses
  %i.amd = fsub <16 x float> %i.ip, %i.alx        ; 3 uses
  %i.ame = fsub <16 x float> %i.iw, %i.alz        ; 3 uses
  %i.amf = fsub <16 x float> %i.jc, %i.alz        ; 3 uses
  %i.amg = fmul <16 x float> %i.ama, %i.ama
  %i.amh = fmul <16 x float> %i.amc, %i.amc
  %i.ami = fadd <16 x float> %i.amg, %i.amh
  %i.amj = fmul <16 x float> %i.ame, %i.ame
  %i.amk = fadd <16 x float> %i.ami, %i.amj       ; 2 uses
  %i.aml = fmul <16 x float> %i.amb, %i.amb
  %i.amm = fmul <16 x float> %i.amd, %i.amd
  %i.amn = fadd <16 x float> %i.aml, %i.amm
  %i.amo = fmul <16 x float> %i.amf, %i.amf
  %i.amp = fadd <16 x float> %i.amn, %i.amo       ; 2 uses
  %i.amq = fcmp olt <16 x float> %i.amk, %i.ar
  %i.amr = bitcast <16 x i1> %i.amq to i16        ; 3 uses
  %i.ams = fcmp olt <16 x float> %i.amp, %i.ar
  %i.amt = bitcast <16 x i1> %i.ams to i16        ; 3 uses
  %i.amu = shl nsw i32 %i.ali, 1                  ; 3 uses
  %i.amv = icmp eq i32 %i.amu, %i.ch
  br i1 %i.amv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.amw = and i16 %i.amr, %i.r
  %i.amx = and i16 %i.amt, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.amy = or disjoint i32 %i.amu, 1
  %i.amz = icmp eq i32 %i.amy, %i.ch
  br i1 %i.amz, label %bb.n, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.n:                                             ; preds = %bb.m
  %i.ana = and i16 %i.amr, %i.t
  %i.anb = and i16 %i.amt, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.03985.0 = phi i16 [ %i.amw, %bb.l ], [ %i.ana, %bb.n ], [ %i.amr, %bb.m ]
  %.sroa.103988.0 = phi i16 [ %i.amx, %bb.l ], [ %i.anb, %bb.n ], [ %i.amt, %bb.m ]
  %i.anc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.amk, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.and = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.amp, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.ane = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.anc, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.anf = fmul <16 x float> %i.anc, %i.ane
  %i.ang = fmul <16 x float> %i.ane, splat (float -5.000000e-01)
  %i.anh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anf, <16 x float> %i.ane, <16 x float> splat (float -3.000000e+00))
  %i.ani = fmul <16 x float> %i.ang, %i.anh
  %i.anj = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.and, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ank = fmul <16 x float> %i.and, %i.anj
  %i.anl = fmul <16 x float> %i.anj, splat (float -5.000000e-01)
  %i.anm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ank, <16 x float> %i.anj, <16 x float> splat (float -3.000000e+00))
  %i.ann = fmul <16 x float> %i.anl, %i.anm
  %i.ano = sext i32 %i.alr to i64
  %i.anp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ano
  %.val6844492 = load <8 x float>, ptr %i.anp, align 32, !tbaa !29
  %i.anq = shufflevector <8 x float> %.val6844492, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anr = fmul <16 x float> %.sroa.03730.0, %i.anq ; 2 uses
  %i.ans = fmul <16 x float> %.sroa.73734.0, %i.anq ; 2 uses
  %7 = bitcast i16 %.sroa.03985.0 to <16 x i1>    ; 3 uses
  %i.ant = select <16 x i1> %7, <16 x float> %i.ani, <16 x float> zeroinitializer ; 4 uses
  %8 = bitcast i16 %.sroa.103988.0 to <16 x i1>   ; 3 uses
  %i.anu = select <16 x i1> %8, <16 x float> %i.ann, <16 x float> zeroinitializer ; 4 uses
  %i.anv = fmul <16 x float> %i.ant, %i.ant
  %i.anw = fmul <16 x float> %i.anu, %i.anu
  %i.anx = select <16 x i1> %i.alo, <16 x float> %i.ant, <16 x float> zeroinitializer ; 2 uses
  %i.any = select <16 x i1> %i.alq, <16 x float> %i.anu, <16 x float> zeroinitializer ; 2 uses
  %i.anz = select <16 x i1> %7, <16 x float> %i.anc, <16 x float> zeroinitializer
  %i.aoa = fmul <16 x float> %i.z, %i.anz         ; 7 uses
  %i.aob = select <16 x i1> %8, <16 x float> %i.and, <16 x float> zeroinitializer
  %i.aoc = fmul <16 x float> %i.z, %i.aob         ; 7 uses
  %i.aod = fmul <16 x float> %i.aoa, %i.aoa       ; 15 uses
  %i.aoe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aof = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aog = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> %i.aod, <16 x float> splat (float 1.000000e+00))
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aof, <16 x float> %i.aoa, <16 x float> %i.aog) ; 2 uses
  %i.aoi = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoh, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aoj = fneg <16 x float> %i.aoi
  %i.aok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> %i.aoh, <16 x float> splat (float 2.000000e+00))
  %i.aol = fmul <16 x float> %i.aoi, %i.aok
  %i.aom = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aon = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> %i.aod, <16 x float> splat (float f0xBC9DED90))
  %i.aop = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aon, <16 x float> %i.aod, <16 x float> splat (float f0x3D8EAF3B))
  %i.aoq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoo, <16 x float> %i.aod, <16 x float> splat (float f0xBF409397))
  %i.aor = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aop, <16 x float> %i.aoa, <16 x float> %i.aoq)
  %i.aos = fmul <16 x float> %i.aor, %i.aol
  %i.aot = fmul <16 x float> %i.x, %i.aos
  %i.aou = fmul <16 x float> %i.aoc, %i.aoc       ; 15 uses
  %i.aov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aox = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aov, <16 x float> %i.aou, <16 x float> splat (float 1.000000e+00))
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aow, <16 x float> %i.aoc, <16 x float> %i.aox) ; 2 uses
  %i.aoz = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoy, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apa = fneg <16 x float> %i.aoz
  %i.apb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apa, <16 x float> %i.aoy, <16 x float> splat (float 2.000000e+00))
  %i.apc = fmul <16 x float> %i.aoz, %i.apb
  %i.apd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.ape = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apd, <16 x float> %i.aou, <16 x float> splat (float f0xBC9DED90))
  %i.apg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ape, <16 x float> %i.aou, <16 x float> splat (float f0x3D8EAF3B))
  %i.aph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apf, <16 x float> %i.aou, <16 x float> splat (float f0xBF409397))
  %i.api = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apg, <16 x float> %i.aoc, <16 x float> %i.aph)
  %i.apj = fmul <16 x float> %i.api, %i.apc
  %i.apk = fmul <16 x float> %i.x, %i.apj
  %i.apl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aot, <16 x float> %i.aoa, <16 x float> %i.anx)
  %i.apm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apk, <16 x float> %i.aoc, <16 x float> %i.any)
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.app = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apn, <16 x float> %i.aoa, <16 x float> %i.apo) ; 2 uses
  %i.apq = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.app, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apr = fneg <16 x float> %i.apq
  %i.aps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apr, <16 x float> %i.app, <16 x float> splat (float 2.000000e+00))
  %i.apt = fmul <16 x float> %i.apq, %i.aps
  %i.apu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apu, <16 x float> %i.aod, <16 x float> splat (float f0x3D1E57D6))
  %i.apx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apv, <16 x float> %i.aod, <16 x float> splat (float f0x3DE71E23))
  %i.apy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apw, <16 x float> %i.aod, <16 x float> splat (float f0x3F906EC3))
  %i.apz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apx, <16 x float> %i.aoa, <16 x float> %i.apy)
  %i.aqa = fmul <16 x float> %i.apz, %i.apt
  %i.aqb = fmul <16 x float> %i.x, %i.aqa
  %i.aqc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.aqd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.aqe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqc, <16 x float> %i.aoc, <16 x float> %i.aqd) ; 2 uses
  %i.aqf = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aqe, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aqg = fneg <16 x float> %i.aqf
  %i.aqh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqg, <16 x float> %i.aqe, <16 x float> splat (float 2.000000e+00))
  %i.aqi = fmul <16 x float> %i.aqf, %i.aqh
  %i.aqj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.aqk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.aql = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqj, <16 x float> %i.aou, <16 x float> splat (float f0x3D1E57D6))
  %i.aqm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqk, <16 x float> %i.aou, <16 x float> splat (float f0x3DE71E23))
  %i.aqn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aql, <16 x float> %i.aou, <16 x float> splat (float f0x3F906EC3))
  %i.aqo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqm, <16 x float> %i.aoc, <16 x float> %i.aqn)
  %i.aqp = fmul <16 x float> %i.aqo, %i.aqi
  %i.aqq = fmul <16 x float> %i.x, %i.aqp
  %i.aqr = fmul <16 x float> %i.anr, %i.apl
  %i.aqs = fmul <16 x float> %i.ans, %i.apm
  %i.aqt = select <16 x i1> %i.alo, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.aqu = fadd <16 x float> %i.aqt, %i.aqb
  %i.aqv = select <16 x i1> %i.alq, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.aqw = fadd <16 x float> %i.aqv, %i.aqq
  %i.aqx = fsub <16 x float> %i.anx, %i.aqu
  %i.aqy = fmul <16 x float> %i.anr, %i.aqx
  %i.aqz = fsub <16 x float> %i.any, %i.aqw
  %i.ara = fmul <16 x float> %i.ans, %i.aqz
  %i.arb = select <16 x i1> %7, <16 x float> %i.aqy, <16 x float> zeroinitializer ; 2 uses
  %i.arc = select <16 x i1> %8, <16 x float> %i.ara, <16 x float> zeroinitializer ; 2 uses
  %i.ard = fcmp olt <16 x float> %i.anc, %i.aw    ; 2 uses
  %i.are = fcmp olt <16 x float> %i.and, %i.aw    ; 2 uses
  %i.arf = shl nsw i32 %i.ali, 4
  %i.arg = sext i32 %i.arf to i64
  %i.arh = getelementptr [4 x i8], ptr %i.f, i64 %i.arg ; 2 uses
  %.val6854493 = load <8 x float>, ptr %i.arh, align 32, !tbaa !29
  %i.ari = shufflevector <8 x float> %.val6854493, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arj = getelementptr i8, ptr %i.arh, i64 32
  %.val6864494 = load <8 x float>, ptr %i.arj, align 32, !tbaa !29
  %i.ark = shufflevector <8 x float> %.val6864494, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arl = fadd <16 x float> %i.jw, %i.ari        ; 3 uses
  %i.arm = fadd <16 x float> %i.kf, %i.ari        ; 3 uses
  %i.arn = fmul <16 x float> %i.ka, %i.ark        ; 2 uses
  %i.aro = fmul <16 x float> %i.kk, %i.ark        ; 2 uses
  %i.arp = fmul <16 x float> %i.ant, %i.arl       ; 2 uses
  %i.arq = fmul <16 x float> %i.anu, %i.arm       ; 2 uses
  %i.arr = fmul <16 x float> %i.arp, %i.arp       ; 3 uses
  %i.ars = fmul <16 x float> %i.arq, %i.arq       ; 3 uses
  %i.art = fmul <16 x float> %i.arr, %i.arr
  %i.aru = fmul <16 x float> %i.arr, %i.art
  %i.arv = fmul <16 x float> %i.ars, %i.ars
  %i.arw = fmul <16 x float> %i.ars, %i.arv
  %i.arx = select <16 x i1> %i.ard, <16 x i1> %i.alo, <16 x i1> zeroinitializer ; 2 uses
  %i.ary = select <16 x i1> %i.arx, <16 x float> %i.aru, <16 x float> zeroinitializer ; 2 uses
  %i.arz = select <16 x i1> %i.are, <16 x i1> %i.alq, <16 x i1> zeroinitializer ; 2 uses
  %i.asa = select <16 x i1> %i.arz, <16 x float> %i.arw, <16 x float> zeroinitializer ; 2 uses
  %i.asb = fmul <16 x float> %i.arn, %i.ary       ; 3 uses
  %i.asc = fmul <16 x float> %i.aro, %i.asa       ; 3 uses
  %i.asd = fmul <16 x float> %i.ary, %i.asb       ; 2 uses
  %i.ase = fmul <16 x float> %i.asa, %i.asc       ; 2 uses
  %i.asf = fsub <16 x float> %i.asd, %i.asb
  %i.asg = fsub <16 x float> %i.ase, %i.asc
  %i.ash = fmul <16 x float> %i.arl, %i.arl       ; 3 uses
  %i.asi = fmul <16 x float> %i.arm, %i.arm       ; 3 uses
  %i.asj = fmul <16 x float> %i.ash, %i.ash
  %i.ask = fmul <16 x float> %i.ash, %i.asj       ; 2 uses
  %i.asl = fmul <16 x float> %i.asi, %i.asi
  %i.asm = fmul <16 x float> %i.asi, %i.asl       ; 2 uses
  %i.asn = fmul <16 x float> %i.arn, %i.ask       ; 2 uses
  %i.aso = fmul <16 x float> %i.aro, %i.asm       ; 2 uses
  %i.asp = fmul <16 x float> %i.ask, %i.asn
  %i.asq = fmul <16 x float> %i.asm, %i.aso
  %i.asr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asn, <16 x float> %i.aj, <16 x float> %i.asb)
  %i.ass = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aso, <16 x float> %i.aj, <16 x float> %i.asc)
  %i.ast = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asp, <16 x float> %i.am, <16 x float> %i.asd)
  %i.asu = fmul <16 x float> %i.asr, splat (float f0xBE2AAAAB)
  %i.asv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ast, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.asu)
  %i.asw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asq, <16 x float> %i.am, <16 x float> %i.ase)
  %i.asx = fmul <16 x float> %i.ass, splat (float f0xBE2AAAAB)
  %i.asy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.asx)
  %i.asz = select <16 x i1> %i.ard, <16 x float> %i.asf, <16 x float> zeroinitializer
  %i.ata = select <16 x i1> %i.are, <16 x float> %i.asg, <16 x float> zeroinitializer
  %i.atb = select <16 x i1> %i.arx, <16 x float> %i.asv, <16 x float> zeroinitializer ; 2 uses
  %i.atc = select <16 x i1> %i.arz, <16 x float> %i.asy, <16 x float> zeroinitializer ; 2 uses
  %i.atd = load ptr, ptr %i.bj, align 8, !tbaa !84
  %i.ate = load i32, ptr %i.bv, align 8, !tbaa !100
  %i.atf = sext i32 %i.amu to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.atd, i64 %i.atf
  %i.ath = load i32, ptr %i.bw, align 4, !tbaa !101
  %i.ati = load i32, ptr %i.bt, align 8, !tbaa !94
  %i.atj = load <2 x i32>, ptr %i.atg, align 4, !tbaa !85 ; 2 uses
  %i.atk = insertelement <2 x i32> poison, i32 %i.ate, i64 0
  %i.atl = shufflevector <2 x i32> %i.atj, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.atm = shufflevector <2 x i32> %i.atj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.atn = shufflevector <2 x i32> %i.atk, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ato = ashr <4 x i32> %i.atm, %i.atn
  %i.atp = shufflevector <4 x i32> %i.ato, <4 x i32> %i.atl, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.atq = insertelement <4 x i32> poison, i32 %i.ath, i64 0
  %i.atr = shufflevector <4 x i32> %i.atq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ats = and <4 x i32> %i.atp, %i.atr
  %i.att = insertelement <4 x i32> poison, i32 %i.ati, i64 0
  %i.atu = shufflevector <4 x i32> %i.att, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atv = mul nsw <4 x i32> %i.ats, %i.atu       ; 4 uses
  %i.atw = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !91 ; 4 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !91 ; 4 uses
  %i.aua = shufflevector <16 x float> %i.arb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aub = shufflevector <16 x float> %i.arb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.auc = extractelement <4 x i32> %i.atv, i64 0
  %i.aud = sext i32 %i.auc to i64                 ; 8 uses
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %i.aud ; 2 uses
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.aud ; 2 uses
  %i.aug = load <8 x float>, ptr %i.aue, align 32, !tbaa !29
  %i.auh = fadd <8 x float> %i.aua, %i.aug
  store <8 x float> %i.auh, ptr %i.aue, align 32, !tbaa !29
  %i.aui = load <8 x float>, ptr %i.auf, align 32, !tbaa !29
  %i.auj = fadd <8 x float> %i.aui, %i.aub
  store <8 x float> %i.auj, ptr %i.auf, align 32, !tbaa !29
  %i.auk = extractelement <4 x i32> %i.atv, i64 1
  %i.aul = sext i32 %i.auk to i64                 ; 8 uses
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %i.aul
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 32 ; 2 uses
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.aul
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 32 ; 2 uses
  %i.auq = load <8 x float>, ptr %i.aun, align 32, !tbaa !29
  %i.aur = fadd <8 x float> %i.aua, %i.auq
  store <8 x float> %i.aur, ptr %i.aun, align 32, !tbaa !29
  %i.aus = load <8 x float>, ptr %i.aup, align 32, !tbaa !29
  %i.aut = fadd <8 x float> %i.aus, %i.aub
  store <8 x float> %i.aut, ptr %i.aup, align 32, !tbaa !29
  %i.auu = extractelement <4 x i32> %i.atv, i64 2
  %i.auv = sext i32 %i.auu to i64                 ; 8 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 64 ; 2 uses
  %i.auy = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.auv
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 64 ; 2 uses
  %i.ava = load <8 x float>, ptr %i.aux, align 32, !tbaa !29
  %i.avb = fadd <8 x float> %i.aua, %i.ava
  store <8 x float> %i.avb, ptr %i.aux, align 32, !tbaa !29
  %i.avc = load <8 x float>, ptr %i.auz, align 32, !tbaa !29
  %i.avd = fadd <8 x float> %i.avc, %i.aub
  store <8 x float> %i.avd, ptr %i.auz, align 32, !tbaa !29
  %i.ave = extractelement <4 x i32> %i.atv, i64 3
  %i.avf = sext i32 %i.ave to i64                 ; 8 uses
  %i.avg = getelementptr inbounds [4 x i8], ptr %i.atx, i64 %i.avf
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 96 ; 2 uses
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.atz, i64 %i.avf
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 96 ; 2 uses
  %i.avk = load <8 x float>, ptr %i.avh, align 32, !tbaa !29
  %i.avl = fadd <8 x float> %i.aua, %i.avk
  store <8 x float> %i.avl, ptr %i.avh, align 32, !tbaa !29
  %i.avm = load <8 x float>, ptr %i.avj, align 32, !tbaa !29
  %i.avn = fadd <8 x float> %i.avm, %i.aub
  store <8 x float> %i.avn, ptr %i.avj, align 32, !tbaa !29
  %i.avo = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !91 ; 4 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 24
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !91 ; 4 uses
  %i.avt = shufflevector <16 x float> %i.arc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.avu = shufflevector <16 x float> %i.arc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avv = getelementptr inbounds [4 x i8], ptr %i.avq, i64 %i.aud ; 2 uses
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.aud ; 2 uses
  %i.avx = load <8 x float>, ptr %i.avv, align 32, !tbaa !29
  %i.avy = fadd <8 x float> %i.avt, %i.avx
  store <8 x float> %i.avy, ptr %i.avv, align 32, !tbaa !29
  %i.avz = load <8 x float>, ptr %i.avw, align 32, !tbaa !29
  %i.awa = fadd <8 x float> %i.avz, %i.avu
  store <8 x float> %i.awa, ptr %i.avw, align 32, !tbaa !29
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.avq, i64 %i.aul
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 32 ; 2 uses
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.aul
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 32 ; 2 uses
  %i.awf = load <8 x float>, ptr %i.awc, align 32, !tbaa !29
  %i.awg = fadd <8 x float> %i.avt, %i.awf
  store <8 x float> %i.awg, ptr %i.awc, align 32, !tbaa !29
  %i.awh = load <8 x float>, ptr %i.awe, align 32, !tbaa !29
  %i.awi = fadd <8 x float> %i.awh, %i.avu
  store <8 x float> %i.awi, ptr %i.awe, align 32, !tbaa !29
  %i.awj = getelementptr inbounds [4 x i8], ptr %i.avq, i64 %i.auv
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 64 ; 2 uses
  %i.awl = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.auv
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 64 ; 2 uses
  %i.awn = load <8 x float>, ptr %i.awk, align 32, !tbaa !29
  %i.awo = fadd <8 x float> %i.avt, %i.awn
  store <8 x float> %i.awo, ptr %i.awk, align 32, !tbaa !29
  %i.awp = load <8 x float>, ptr %i.awm, align 32, !tbaa !29
  %i.awq = fadd <8 x float> %i.awp, %i.avu
  store <8 x float> %i.awq, ptr %i.awm, align 32, !tbaa !29
  %i.awr = getelementptr inbounds [4 x i8], ptr %i.avq, i64 %i.avf
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 96 ; 2 uses
  %i.awt = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.avf
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 96 ; 2 uses
  %i.awv = load <8 x float>, ptr %i.aws, align 32, !tbaa !29
  %i.aww = fadd <8 x float> %i.avt, %i.awv
  store <8 x float> %i.aww, ptr %i.aws, align 32, !tbaa !29
  %i.awx = load <8 x float>, ptr %i.awu, align 32, !tbaa !29
  %i.awy = fadd <8 x float> %i.awx, %i.avu
  store <8 x float> %i.awy, ptr %i.awu, align 32, !tbaa !29
  %i.awz = load ptr, ptr %i.br, align 8, !tbaa !90 ; 2 uses
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !91 ; 4 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !91 ; 4 uses
  %i.axd = shufflevector <16 x float> %i.atb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.axe = shufflevector <16 x float> %i.atb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.axf = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.aud ; 2 uses
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.aud ; 2 uses
  %i.axh = load <8 x float>, ptr %i.axf, align 32, !tbaa !29
  %i.axi = fadd <8 x float> %i.axd, %i.axh
  store <8 x float> %i.axi, ptr %i.axf, align 32, !tbaa !29
  %i.axj = load <8 x float>, ptr %i.axg, align 32, !tbaa !29
  %i.axk = fadd <8 x float> %i.axj, %i.axe
  store <8 x float> %i.axk, ptr %i.axg, align 32, !tbaa !29
  %i.axl = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.aul
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 32 ; 2 uses
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.aul
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 32 ; 2 uses
  %i.axp = load <8 x float>, ptr %i.axm, align 32, !tbaa !29
  %i.axq = fadd <8 x float> %i.axd, %i.axp
  store <8 x float> %i.axq, ptr %i.axm, align 32, !tbaa !29
  %i.axr = load <8 x float>, ptr %i.axo, align 32, !tbaa !29
  %i.axs = fadd <8 x float> %i.axr, %i.axe
  store <8 x float> %i.axs, ptr %i.axo, align 32, !tbaa !29
  %i.axt = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.auv
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 64 ; 2 uses
  %i.axv = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.auv
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 64 ; 2 uses
  %i.axx = load <8 x float>, ptr %i.axu, align 32, !tbaa !29
  %i.axy = fadd <8 x float> %i.axd, %i.axx
end_hunk_1
