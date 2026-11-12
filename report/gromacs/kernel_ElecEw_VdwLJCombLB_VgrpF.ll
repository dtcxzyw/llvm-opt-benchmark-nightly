Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1527
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3878.preheader
  %i.gl = shl i32 %i.dj, 1
  %i.gm = ashr i32 %i.di, %i.gl
  %i.gn = and i32 %i.gm, %i.dk
  %i.go = mul nsw i32 %i.fg, %i.gn
  %i.gp = load ptr, ptr %i.em, align 8, !tbaa !90
  %i.gq = sext i32 %i.go to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !72
  %i.gt = fadd float %i.gk, %i.gs
  store float %i.gt, ptr %i.gr, align 4, !tbaa !72
  %i.gu = getelementptr [4 x i8], ptr %i.at, i64 %i.fh
  %i.gv = getelementptr i8, ptr %i.gu, i64 12
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !72 ; 2 uses
  %i.gx = fmul float %i.gw, %i.bn
  %i.gy = fmul float %i.gw, %i.gx
  %i.gz = fmul float %i.gy, %i.ad
  %i.ha = mul i32 %i.dj, 3
  %i.hb = ashr i32 %i.di, %i.ha
  %i.hc = and i32 %i.hb, %i.dk
  %i.hd = mul nsw i32 %i.fg, %i.hc
  %i.he = load ptr, ptr %i.ex, align 8, !tbaa !90
  %i.hf = sext i32 %i.hd to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hf ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !72
  %i.hi = fadd float %i.gz, %i.hh
  store float %i.hi, ptr %i.hg, align 4, !tbaa !72
  br label %.loopexit3877

.loopexit3877:                                    ; preds = %.preheader3876, %bb.b, %bb.a
  %i.hj = add nsw i32 %i.cy, 8
  %i.hk = add nsw i32 %i.cy, 16
  %i.hl = sext i32 %i.cy to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hl ; 4 uses
  %.val.i = load float, ptr %i.hm, align 1, !tbaa !29, !noalias !94
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %.val3.i = load float, ptr %i.hn, align 1, !tbaa !29, !noalias !94
  %i.ho = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.hp = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hr = fadd <16 x float> %i.ch, %i.hq          ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.val.i655 = load float, ptr %i.hs, align 1, !tbaa !29, !noalias !94
  %i.ht = getelementptr i8, ptr %i.hm, i64 12
  %.val3.i656 = load float, ptr %i.ht, align 1, !tbaa !29, !noalias !94
  %i.hu = insertelement <4 x float> poison, float %.val.i655, i64 0
  %i.hv = insertelement <4 x float> poison, float %.val3.i656, i64 0
  %i.hw = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hx = fadd <16 x float> %i.ch, %i.hw          ; 6 uses
  %i.hy = sext i32 %i.hj to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hy ; 4 uses
  %.val.i658 = load float, ptr %i.hz, align 1, !tbaa !29, !noalias !95
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  %.val3.i659 = load float, ptr %i.ia, align 1, !tbaa !29, !noalias !95
  %i.ib = insertelement <4 x float> poison, float %.val.i658, i64 0
  %i.ic = insertelement <4 x float> poison, float %.val3.i659, i64 0
  %i.id = shufflevector <4 x float> %i.ib, <4 x float> %i.ic, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ie = fadd <16 x float> %i.cn, %i.id          ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.val.i661 = load float, ptr %i.if, align 1, !tbaa !29, !noalias !95
  %i.ig = getelementptr i8, ptr %i.hz, i64 12
  %.val3.i662 = load float, ptr %i.ig, align 1, !tbaa !29, !noalias !95
  %i.ih = insertelement <4 x float> poison, float %.val.i661, i64 0
  %i.ii = insertelement <4 x float> poison, float %.val3.i662, i64 0
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> %i.ii, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ik = fadd <16 x float> %i.cn, %i.ij          ; 6 uses
  %i.il = sext i32 %i.hk to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.il ; 4 uses
  %.val.i664 = load float, ptr %i.im, align 1, !tbaa !29, !noalias !96
  %i.in = getelementptr i8, ptr %i.im, i64 4
  %.val3.i665 = load float, ptr %i.in, align 1, !tbaa !29, !noalias !96
  %i.io = insertelement <4 x float> poison, float %.val.i664, i64 0
  %i.ip = insertelement <4 x float> poison, float %.val3.i665, i64 0
  %i.iq = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ir = fadd <16 x float> %i.ct, %i.iq          ; 6 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.val.i667 = load float, ptr %i.is, align 1, !tbaa !29, !noalias !96
  %i.it = getelementptr i8, ptr %i.im, i64 12
  %.val3.i668 = load float, ptr %i.it, align 1, !tbaa !29, !noalias !96
  %i.iu = insertelement <4 x float> poison, float %.val.i667, i64 0
  %i.iv = insertelement <4 x float> poison, float %.val3.i668, i64 0
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ix = fadd <16 x float> %i.ct, %i.iw          ; 6 uses
  br i1 %i.dc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit3877
  %i.iy = sext i32 %i.cu to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.iy ; 4 uses
  %.val.i670 = load float, ptr %i.iz, align 1, !tbaa !29, !noalias !97
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %.val2.i = load float, ptr %i.ja, align 1, !tbaa !29, !noalias !97
  %i.jb = insertelement <4 x float> poison, float %.val.i670, i64 0
  %i.jc = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.jd = shufflevector <4 x float> %i.jb, <4 x float> %i.jc, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.je = fmul <16 x float> %i.bp, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.val.i671 = load float, ptr %i.jf, align 1, !tbaa !29, !noalias !97
  %i.jg = getelementptr i8, ptr %i.iz, i64 12
  %.val2.i672 = load float, ptr %i.jg, align 1, !tbaa !29, !noalias !97
  %i.jh = insertelement <4 x float> poison, float %.val.i671, i64 0
  %i.ji = insertelement <4 x float> poison, float %.val2.i672, i64 0
  %i.jj = shufflevector <4 x float> %i.jh, <4 x float> %i.ji, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jk = fmul <16 x float> %i.bp, %i.jj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit3877
  %.sroa.03503.0 = phi <16 x float> [ %i.je, %bb.c ], [ undef, %.loopexit3877 ] ; 4 uses
  %.sroa.73507.0 = phi <16 x float> [ %i.jk, %bb.c ], [ undef, %.loopexit3877 ] ; 4 uses
  %i.jl = sext i32 %i.da to i64
  %i.jm = getelementptr [4 x i8], ptr %i.f, i64 %i.jl ; 8 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 32
  %.val616 = load float, ptr %i.jm, align 1, !tbaa !29
  %i.jo = getelementptr i8, ptr %i.jm, i64 4
  %.val617 = load float, ptr %i.jo, align 1, !tbaa !29
  %i.jp = insertelement <4 x float> poison, float %.val616, i64 0
  %i.jq = insertelement <4 x float> poison, float %.val617, i64 0
  %i.jr = shufflevector <4 x float> %i.jp, <4 x float> %i.jq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val618 = load float, ptr %i.jn, align 1, !tbaa !29
  %i.js = getelementptr i8, ptr %i.jm, i64 36
  %.val619 = load float, ptr %i.js, align 1, !tbaa !29
  %i.jt = insertelement <4 x float> poison, float %.val618, i64 0
  %i.ju = insertelement <4 x float> poison, float %.val619, i64 0
  %i.jv = shufflevector <4 x float> %i.jt, <4 x float> %i.ju, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.val616.1 = load float, ptr %i.jw, align 1, !tbaa !29
  %i.jx = getelementptr i8, ptr %i.jm, i64 12
  %.val617.1 = load float, ptr %i.jx, align 1, !tbaa !29
  %i.jy = insertelement <4 x float> poison, float %.val616.1, i64 0
  %i.jz = insertelement <4 x float> poison, float %.val617.1, i64 0
  %i.ka = shufflevector <4 x float> %i.jy, <4 x float> %i.jz, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kb = getelementptr i8, ptr %i.jm, i64 40
  %.val618.1 = load float, ptr %i.kb, align 1, !tbaa !29
  %i.kc = getelementptr i8, ptr %i.jm, i64 44
  %.val619.1 = load float, ptr %i.kc, align 1, !tbaa !29
  %i.kd = insertelement <4 x float> poison, float %.val618.1, i64 0
  %i.ke = insertelement <4 x float> poison, float %.val619.1, i64 0
  %i.kf = shufflevector <4 x float> %i.kd, <4 x float> %i.ke, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kg = icmp slt i32 %i.bx, %i.bz               ; 3 uses
  br i1 %i.de, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  br i1 %i.kg, label %.lr.ph3964, label %.critedge

.lr.ph3964:                                       ; preds = %.preheader
  %i.kh = sext i32 %i.bx to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph3964, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528
  %indvars.iv4041 = phi i64 [ %i.kh, %.lr.ph3964 ], [ %indvars.iv.next4042, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 4 uses
  %.sroa.163396.03962 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03389.03961 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.163378.03960 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03371.03959 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.16.03958 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03354.03957 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %i.ki = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv4041
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !84
  %.not519 = icmp eq i32 %i.kl, -1
  br i1 %.not519, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527: ; preds = %bb.e
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv4041 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !92 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !98
  %i.kq = insertelement <16 x i32> poison, i32 %i.kp, i64 0
  %i.kr = shufflevector <16 x i32> %i.kq, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ks = and <16 x i32> %.sroa.04069.0.copyload, %i.kr
  %i.kt = icmp ne <16 x i32> %i.ks, zeroinitializer ; 4 uses
  %i.ku = and <16 x i32> %.sroa.6.0.copyload, %i.kr
  %.not4093 = icmp eq <16 x i32> %i.ku, zeroinitializer ; 2 uses
  %i.kv = shl nsw i32 %i.kn, 3
  %i.kw = mul nsw i32 %i.kn, 24
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr [4 x i8], ptr %i.av, i64 %i.kx ; 3 uses
  %.val6204263 = load <8 x float>, ptr %i.ky, align 32, !tbaa !29
  %i.kz = shufflevector <8 x float> %.val6204263, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.la = getelementptr i8, ptr %i.ky, i64 32
  %.val6214264 = load <8 x float>, ptr %i.la, align 32, !tbaa !29
  %i.lb = shufflevector <8 x float> %.val6214264, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lc = getelementptr i8, ptr %i.ky, i64 64
  %.val6224265 = load <8 x float>, ptr %i.lc, align 32, !tbaa !29
  %i.ld = shufflevector <8 x float> %.val6224265, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.le = fsub <16 x float> %i.hr, %i.kz          ; 3 uses
  %i.lf = fsub <16 x float> %i.hx, %i.kz          ; 3 uses
  %i.lg = fsub <16 x float> %i.ie, %i.lb          ; 3 uses
  %i.lh = fsub <16 x float> %i.ik, %i.lb          ; 3 uses
  %i.li = fsub <16 x float> %i.ir, %i.ld          ; 3 uses
  %i.lj = fsub <16 x float> %i.ix, %i.ld          ; 3 uses
  %i.lk = fmul <16 x float> %i.le, %i.le
  %i.ll = fmul <16 x float> %i.lg, %i.lg
  %i.lm = fadd <16 x float> %i.lk, %i.ll
  %i.ln = fmul <16 x float> %i.li, %i.li
  %i.lo = fadd <16 x float> %i.lm, %i.ln          ; 2 uses
  %i.lp = fmul <16 x float> %i.lf, %i.lf
  %i.lq = fmul <16 x float> %i.lh, %i.lh
  %i.lr = fadd <16 x float> %i.lp, %i.lq
  %i.ls = fmul <16 x float> %i.lj, %i.lj
  %i.lt = fadd <16 x float> %i.lr, %i.ls          ; 2 uses
  %i.lu = fcmp olt <16 x float> %i.lo, %i.ar      ; 2 uses
  %i.lv = bitcast <16 x i1> %i.lu to i16          ; 2 uses
  %i.lw = fcmp olt <16 x float> %i.lt, %i.ar      ; 2 uses
  %i.lx = bitcast <16 x i1> %i.lw to i16          ; 2 uses
  %i.ly = shl nsw i32 %i.kn, 1                    ; 3 uses
  %i.lz = icmp eq i32 %i.ly, %i.cc
  br i1 %i.lz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.ma = and i16 %i.lv, %i.r
  %i.mb = and i16 %i.lx, %i.s
  %5 = bitcast i16 %i.ma to <16 x i1>
  %6 = bitcast i16 %i.mb to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.mc = or disjoint i32 %i.ly, 1
  %i.md = icmp eq i32 %i.mc, %i.cc
  br i1 %i.md, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.h:                                             ; preds = %bb.g
  %i.me = and i16 %i.lv, %i.t
  %i.mf = and i16 %i.lx, %i.u
  %7 = bitcast i16 %i.me to <16 x i1>
  %8 = bitcast i16 %i.mf to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03664.0 = phi <16 x i1> [ %5, %bb.f ], [ %7, %bb.h ], [ %i.lu, %bb.g ] ; 4 uses
  %.sroa.11.0 = phi <16 x i1> [ %6, %bb.f ], [ %8, %bb.h ], [ %i.lw, %bb.g ] ; 3 uses
  %i.mg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lo, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lt, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mi = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mj = fmul <16 x float> %i.mg, %i.mi
  %i.mk = fmul <16 x float> %i.mi, splat (float -5.000000e-01)
  %i.ml = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mj, <16 x float> %i.mi, <16 x float> splat (float -3.000000e+00))
  %i.mm = fmul <16 x float> %i.mk, %i.ml
  %i.mn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mo = fmul <16 x float> %i.mh, %i.mn
  %i.mp = fmul <16 x float> %i.mn, splat (float -5.000000e-01)
  %i.mq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mo, <16 x float> %i.mn, <16 x float> splat (float -3.000000e+00))
  %i.mr = fmul <16 x float> %i.mp, %i.mq
  %i.ms = sext i32 %i.kv to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ms
  %.val6234266 = load <8 x float>, ptr %i.mt, align 32, !tbaa !29
  %i.mu = shufflevector <8 x float> %.val6234266, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mv = fmul <16 x float> %.sroa.03503.0, %i.mu ; 2 uses
  %i.mw = fmul <16 x float> %.sroa.73507.0, %i.mu ; 2 uses
  %i.mx = select <16 x i1> %.sroa.03664.0, <16 x float> %i.mm, <16 x float> zeroinitializer ; 4 uses
  %i.my = select <16 x i1> %.sroa.11.0, <16 x float> %i.mr, <16 x float> zeroinitializer ; 3 uses
  %i.mz = fmul <16 x float> %i.mx, %i.mx
  %i.na = fmul <16 x float> %i.my, %i.my
  %i.nb = select <16 x i1> %i.kt, <16 x float> %i.mx, <16 x float> zeroinitializer ; 2 uses
  %i.nc = select <16 x i1> %.not4093, <16 x float> zeroinitializer, <16 x float> %i.my ; 2 uses
  %i.nd = select <16 x i1> %.sroa.03664.0, <16 x float> %i.mg, <16 x float> zeroinitializer
  %i.ne = fmul <16 x float> %i.z, %i.nd           ; 7 uses
  %i.nf = select <16 x i1> %.sroa.11.0, <16 x float> %i.mh, <16 x float> zeroinitializer
  %i.ng = fmul <16 x float> %i.z, %i.nf           ; 7 uses
  %i.nh = fmul <16 x float> %i.ne, %i.ne          ; 15 uses
  %i.ni = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.nj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.nk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ni, <16 x float> %i.nh, <16 x float> splat (float 1.000000e+00))
  %i.nl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> %i.ne, <16 x float> %i.nk) ; 2 uses
  %i.nm = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.nl, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.nn = fneg <16 x float> %i.nm
  %i.no = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nn, <16 x float> %i.nl, <16 x float> splat (float 2.000000e+00))
  %i.np = fmul <16 x float> %i.nm, %i.no
  %i.nq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.nr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ns = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nq, <16 x float> %i.nh, <16 x float> splat (float f0xBC9DED90))
  %i.nt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nr, <16 x float> %i.nh, <16 x float> splat (float f0x3D8EAF3B))
  %i.nu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ns, <16 x float> %i.nh, <16 x float> splat (float f0xBF409397))
  %i.nv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nt, <16 x float> %i.ne, <16 x float> %i.nu)
  %i.nw = fmul <16 x float> %i.nv, %i.np
  %i.nx = fmul <16 x float> %i.x, %i.nw
  %i.ny = fmul <16 x float> %i.ng, %i.ng          ; 15 uses
  %i.nz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.oa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.ob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nz, <16 x float> %i.ny, <16 x float> splat (float 1.000000e+00))
  %i.oc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> %i.ng, <16 x float> %i.ob) ; 2 uses
  %i.od = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.oc, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.oe = fneg <16 x float> %i.od
  %i.of = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oe, <16 x float> %i.oc, <16 x float> splat (float 2.000000e+00))
  %i.og = fmul <16 x float> %i.od, %i.of
  %i.oh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.oi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.oj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oh, <16 x float> %i.ny, <16 x float> splat (float f0xBC9DED90))
  %i.ok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oi, <16 x float> %i.ny, <16 x float> splat (float f0x3D8EAF3B))
  %i.ol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oj, <16 x float> %i.ny, <16 x float> splat (float f0xBF409397))
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ok, <16 x float> %i.ng, <16 x float> %i.ol)
  %i.on = fmul <16 x float> %i.om, %i.og
  %i.oo = fmul <16 x float> %i.x, %i.on
  %i.op = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nx, <16 x float> %i.ne, <16 x float> %i.nb)
  %i.oq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oo, <16 x float> %i.ng, <16 x float> %i.nc)
  %i.or = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.os = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.ot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.or, <16 x float> %i.ne, <16 x float> %i.os) ; 2 uses
  %i.ou = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.ot, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ov = fneg <16 x float> %i.ou
  %i.ow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ov, <16 x float> %i.ot, <16 x float> splat (float 2.000000e+00))
  %i.ox = fmul <16 x float> %i.ou, %i.ow
  %i.oy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.oz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oy, <16 x float> %i.nh, <16 x float> splat (float f0x3D1E57D6))
  %i.pb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oz, <16 x float> %i.nh, <16 x float> splat (float f0x3DE71E23))
  %i.pc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pa, <16 x float> %i.nh, <16 x float> splat (float f0x3F906EC3))
  %i.pd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pb, <16 x float> %i.ne, <16 x float> %i.pc)
  %i.pe = fmul <16 x float> %i.pd, %i.ox
  %i.pf = fmul <16 x float> %i.x, %i.pe
  %i.pg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.pi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pg, <16 x float> %i.ng, <16 x float> %i.ph) ; 2 uses
  %i.pj = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.pi, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.pk = fneg <16 x float> %i.pj
  %i.pl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pk, <16 x float> %i.pi, <16 x float> splat (float 2.000000e+00))
  %i.pm = fmul <16 x float> %i.pj, %i.pl
  %i.pn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.po = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pn, <16 x float> %i.ny, <16 x float> splat (float f0x3D1E57D6))
  %i.pq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.po, <16 x float> %i.ny, <16 x float> splat (float f0x3DE71E23))
  %i.pr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> %i.ny, <16 x float> splat (float f0x3F906EC3))
  %i.ps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pq, <16 x float> %i.ng, <16 x float> %i.pr)
  %i.pt = fmul <16 x float> %i.ps, %i.pm
  %i.pu = fmul <16 x float> %i.x, %i.pt
  %i.pv = fmul <16 x float> %i.mv, %i.op
  %i.pw = fmul <16 x float> %i.mw, %i.oq
  %i.px = select <16 x i1> %i.kt, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.py = fadd <16 x float> %i.px, %i.pf
  %i.pz = select <16 x i1> %.not4093, <16 x float> zeroinitializer, <16 x float> %i.ag
  %i.qa = fadd <16 x float> %i.pz, %i.pu
  %i.qb = fsub <16 x float> %i.nb, %i.py
  %i.qc = fmul <16 x float> %i.mv, %i.qb
  %i.qd = fsub <16 x float> %i.nc, %i.qa
  %i.qe = fmul <16 x float> %i.mw, %i.qd
  %i.qf = select <16 x i1> %.sroa.03664.0, <16 x float> %i.qc, <16 x float> zeroinitializer ; 2 uses
  %i.qg = select <16 x i1> %.sroa.11.0, <16 x float> %i.qe, <16 x float> zeroinitializer ; 2 uses
  %i.qh = shl nsw i32 %i.kn, 4
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [4 x i8], ptr %i.f, i64 %i.qi ; 2 uses
  %.val6244267 = load <8 x float>, ptr %i.qj, align 32, !tbaa !29
  %i.qk = shufflevector <8 x float> %.val6244267, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ql = getelementptr i8, ptr %i.qj, i64 32
  %.val6254268 = load <8 x float>, ptr %i.ql, align 32, !tbaa !29
  %i.qm = shufflevector <8 x float> %.val6254268, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qn = fadd <16 x float> %i.jr, %i.qk          ; 3 uses
  %i.qo = fmul <16 x float> %i.jv, %i.qm          ; 2 uses
  %i.qp = fmul <16 x float> %i.mx, %i.qn          ; 2 uses
  %i.qq = fmul <16 x float> %i.qp, %i.qp          ; 3 uses
  %i.qr = fmul <16 x float> %i.qq, %i.qq
  %i.qs = fmul <16 x float> %i.qq, %i.qr
  %i.qt = select <16 x i1> %i.kt, <16 x float> %i.qs, <16 x float> zeroinitializer ; 2 uses
  %i.qu = fmul <16 x float> %i.qo, %i.qt          ; 3 uses
  %i.qv = fmul <16 x float> %i.qt, %i.qu          ; 2 uses
  %i.qw = fsub <16 x float> %i.qv, %i.qu
  %i.qx = fmul <16 x float> %i.qn, %i.qn          ; 3 uses
  %i.qy = fmul <16 x float> %i.qx, %i.qx
  %i.qz = fmul <16 x float> %i.qx, %i.qy          ; 2 uses
  %i.ra = fmul <16 x float> %i.qo, %i.qz          ; 2 uses
  %i.rb = fmul <16 x float> %i.qz, %i.ra
  %i.rc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ra, <16 x float> %i.aj, <16 x float> %i.qu)
  %i.rd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rb, <16 x float> %i.am, <16 x float> %i.qv)
  %i.re = fmul <16 x float> %i.rc, splat (float f0xBE2AAAAB)
  %i.rf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rd, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.re)
  %i.rg = select <16 x i1> %.sroa.03664.0, <16 x i1> %i.kt, <16 x i1> zeroinitializer
  %i.rh = select <16 x i1> %i.rg, <16 x float> %i.rf, <16 x float> zeroinitializer ; 2 uses
  %i.ri = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.rj = load i32, ptr %i.bq, align 8, !tbaa !99
  %i.rk = sext i32 %i.ly to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rk
  %i.rm = load i32, ptr %i.br, align 4, !tbaa !100
  %i.rn = load i32, ptr %i.bo, align 8, !tbaa !93
  %i.ro = load <2 x i32>, ptr %i.rl, align 4, !tbaa !84 ; 2 uses
  %i.rp = insertelement <2 x i32> poison, i32 %i.rj, i64 0
  %i.rq = shufflevector <2 x i32> %i.ro, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.rr = shufflevector <2 x i32> %i.ro, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rs = shufflevector <2 x i32> %i.rp, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.rt = ashr <4 x i32> %i.rr, %i.rs
  %i.ru = shufflevector <4 x i32> %i.rt, <4 x i32> %i.rq, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.rv = insertelement <4 x i32> poison, i32 %i.rm, i64 0
  %i.rw = shufflevector <4 x i32> %i.rv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rx = and <4 x i32> %i.ru, %i.rw
  %i.ry = insertelement <4 x i32> poison, i32 %i.rn, i64 0
  %i.rz = shufflevector <4 x i32> %i.ry, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sa = mul nsw <4 x i32> %i.rx, %i.rz          ; 4 uses
  %i.sb = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !90 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !90 ; 4 uses
  %i.sf = shufflevector <16 x float> %i.qf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sg = shufflevector <16 x float> %i.qf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.sh = extractelement <4 x i32> %i.sa, i64 0
  %i.si = sext i32 %i.sh to i64                   ; 6 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.si ; 2 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.si ; 2 uses
  %i.sl = load <8 x float>, ptr %i.sj, align 32, !tbaa !29
  %i.sm = fadd <8 x float> %i.sf, %i.sl
  store <8 x float> %i.sm, ptr %i.sj, align 32, !tbaa !29
  %i.sn = load <8 x float>, ptr %i.sk, align 32, !tbaa !29
  %i.so = fadd <8 x float> %i.sn, %i.sg
  store <8 x float> %i.so, ptr %i.sk, align 32, !tbaa !29
  %i.sp = extractelement <4 x i32> %i.sa, i64 1
  %i.sq = sext i32 %i.sp to i64                   ; 6 uses
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 32 ; 2 uses
  %i.st = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.sq
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 32 ; 2 uses
  %i.sv = load <8 x float>, ptr %i.ss, align 32, !tbaa !29
  %i.sw = fadd <8 x float> %i.sf, %i.sv
  store <8 x float> %i.sw, ptr %i.ss, align 32, !tbaa !29
  %i.sx = load <8 x float>, ptr %i.su, align 32, !tbaa !29
  %i.sy = fadd <8 x float> %i.sx, %i.sg
  store <8 x float> %i.sy, ptr %i.su, align 32, !tbaa !29
  %i.sz = extractelement <4 x i32> %i.sa, i64 2
  %i.ta = sext i32 %i.sz to i64                   ; 6 uses
  %i.tb = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64 ; 2 uses
  %i.td = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.ta
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 64 ; 2 uses
  %i.tf = load <8 x float>, ptr %i.tc, align 32, !tbaa !29
  %i.tg = fadd <8 x float> %i.sf, %i.tf
  store <8 x float> %i.tg, ptr %i.tc, align 32, !tbaa !29
  %i.th = load <8 x float>, ptr %i.te, align 32, !tbaa !29
  %i.ti = fadd <8 x float> %i.th, %i.sg
  store <8 x float> %i.ti, ptr %i.te, align 32, !tbaa !29
  %i.tj = extractelement <4 x i32> %i.sa, i64 3
  %i.tk = sext i32 %i.tj to i64                   ; 6 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 96 ; 2 uses
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.se, i64 %i.tk
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 96 ; 2 uses
  %i.tp = load <8 x float>, ptr %i.tm, align 32, !tbaa !29
  %i.tq = fadd <8 x float> %i.sf, %i.tp
  store <8 x float> %i.tq, ptr %i.tm, align 32, !tbaa !29
  %i.tr = load <8 x float>, ptr %i.to, align 32, !tbaa !29
  %i.ts = fadd <8 x float> %i.tr, %i.sg
  store <8 x float> %i.ts, ptr %i.to, align 32, !tbaa !29
  %i.tt = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !90 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !90 ; 4 uses
  %i.ty = shufflevector <16 x float> %i.qg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.tz = shufflevector <16 x float> %i.qg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.si ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.si ; 2 uses
  %i.uc = load <8 x float>, ptr %i.ua, align 32, !tbaa !29
  %i.ud = fadd <8 x float> %i.ty, %i.uc
  store <8 x float> %i.ud, ptr %i.ua, align 32, !tbaa !29
  %i.ue = load <8 x float>, ptr %i.ub, align 32, !tbaa !29
  %i.uf = fadd <8 x float> %i.ue, %i.tz
  store <8 x float> %i.uf, ptr %i.ub, align 32, !tbaa !29
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.sq
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 32 ; 2 uses
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.sq
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32 ; 2 uses
  %i.uk = load <8 x float>, ptr %i.uh, align 32, !tbaa !29
  %i.ul = fadd <8 x float> %i.ty, %i.uk
  store <8 x float> %i.ul, ptr %i.uh, align 32, !tbaa !29
  %i.um = load <8 x float>, ptr %i.uj, align 32, !tbaa !29
  %i.un = fadd <8 x float> %i.um, %i.tz
  store <8 x float> %i.un, ptr %i.uj, align 32, !tbaa !29
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.ta
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 64 ; 2 uses
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ta
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 64 ; 2 uses
  %i.us = load <8 x float>, ptr %i.up, align 32, !tbaa !29
  %i.ut = fadd <8 x float> %i.ty, %i.us
  store <8 x float> %i.ut, ptr %i.up, align 32, !tbaa !29
  %i.uu = load <8 x float>, ptr %i.ur, align 32, !tbaa !29
  %i.uv = fadd <8 x float> %i.uu, %i.tz
  store <8 x float> %i.uv, ptr %i.ur, align 32, !tbaa !29
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.tk
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 96 ; 2 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.tk
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 96 ; 2 uses
  %i.va = load <8 x float>, ptr %i.ux, align 32, !tbaa !29
  %i.vb = fadd <8 x float> %i.ty, %i.va
  store <8 x float> %i.vb, ptr %i.ux, align 32, !tbaa !29
  %i.vc = load <8 x float>, ptr %i.uz, align 32, !tbaa !29
  %i.vd = fadd <8 x float> %i.vc, %i.tz
  store <8 x float> %i.vd, ptr %i.uz, align 32, !tbaa !29
  %i.ve = load ptr, ptr %i.bm, align 8, !tbaa !89 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !90 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !90 ; 4 uses
  %i.vi = shufflevector <16 x float> %i.rh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vj = shufflevector <16 x float> %i.rh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.si ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.si ; 2 uses
  %i.vm = load <8 x float>, ptr %i.vk, align 32, !tbaa !29
  %i.vn = fadd <8 x float> %i.vi, %i.vm
  store <8 x float> %i.vn, ptr %i.vk, align 32, !tbaa !29
  %i.vo = load <8 x float>, ptr %i.vl, align 32, !tbaa !29
  %i.vp = fadd <8 x float> %i.vo, %i.vj
  store <8 x float> %i.vp, ptr %i.vl, align 32, !tbaa !29
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.sq
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 32 ; 2 uses
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.sq
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 32 ; 2 uses
  %i.vu = load <8 x float>, ptr %i.vr, align 32, !tbaa !29
  %i.vv = fadd <8 x float> %i.vi, %i.vu
  store <8 x float> %i.vv, ptr %i.vr, align 32, !tbaa !29
  %i.vw = load <8 x float>, ptr %i.vt, align 32, !tbaa !29
  %i.vx = fadd <8 x float> %i.vw, %i.vj
  store <8 x float> %i.vx, ptr %i.vt, align 32, !tbaa !29
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.ta
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 64 ; 2 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.ta
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 64 ; 2 uses
  %i.wc = load <8 x float>, ptr %i.vz, align 32, !tbaa !29
  %i.wd = fadd <8 x float> %i.vi, %i.wc
  store <8 x float> %i.wd, ptr %i.vz, align 32, !tbaa !29
  %i.we = load <8 x float>, ptr %i.wb, align 32, !tbaa !29
  %i.wf = fadd <8 x float> %i.we, %i.vj
  store <8 x float> %i.wf, ptr %i.wb, align 32, !tbaa !29
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.tk
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 96 ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.tk
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 96 ; 2 uses
  %i.wk = load <8 x float>, ptr %i.wh, align 32, !tbaa !29
  %i.wl = fadd <8 x float> %i.vi, %i.wk
  store <8 x float> %i.wl, ptr %i.wh, align 32, !tbaa !29
  %i.wm = load <8 x float>, ptr %i.wj, align 32, !tbaa !29
  %i.wn = fadd <8 x float> %i.wm, %i.vj
  store <8 x float> %i.wn, ptr %i.wj, align 32, !tbaa !29
  %i.wo = fadd <16 x float> %i.pv, %i.qw
  %i.wp = fmul <16 x float> %i.mz, %i.wo          ; 3 uses
  %i.wq = fmul <16 x float> %i.na, %i.pw          ; 3 uses
  %i.wr = fmul <16 x float> %i.le, %i.wp          ; 2 uses
  %i.ws = fmul <16 x float> %i.lf, %i.wq          ; 2 uses
  %i.wt = fmul <16 x float> %i.lg, %i.wp          ; 2 uses
  %i.wu = fmul <16 x float> %i.lh, %i.wq          ; 2 uses
  %i.wv = fmul <16 x float> %i.li, %i.wp          ; 2 uses
  %i.ww = fmul <16 x float> %i.lj, %i.wq          ; 2 uses
  %i.wx = fadd <16 x float> %.sroa.03389.03961, %i.wr ; 2 uses
  %i.wy = fadd <16 x float> %.sroa.163396.03962, %i.ws ; 2 uses
  %i.wz = fadd <16 x float> %.sroa.03371.03959, %i.wt ; 2 uses
  %i.xa = fadd <16 x float> %.sroa.163378.03960, %i.wu ; 2 uses
  %i.xb = fadd <16 x float> %.sroa.03354.03957, %i.wv ; 2 uses
  %i.xc = fadd <16 x float> %.sroa.16.03958, %i.ww ; 2 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kx ; 4 uses
  %i.xe = fadd <16 x float> %i.ws, %i.wr          ; 2 uses
  %i.xf = fadd <16 x float> %i.wu, %i.wt          ; 2 uses
  %i.xg = fadd <16 x float> %i.ww, %i.wv          ; 2 uses
  %i.xh = load <8 x float>, ptr %i.xd, align 32, !tbaa !29
  %i.xi = shufflevector <16 x float> %i.xe, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xj = shufflevector <16 x float> %i.xe, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xk = fadd <8 x float> %i.xi, %i.xj
  %i.xl = fsub <8 x float> %i.xh, %i.xk
  store <8 x float> %i.xl, ptr %i.xd, align 32, !tbaa !29
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 32 ; 2 uses
  %i.xn = load <8 x float>, ptr %i.xm, align 32, !tbaa !29
  %i.xo = shufflevector <16 x float> %i.xf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <16 x float> %i.xf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xq = fadd <8 x float> %i.xo, %i.xp
  %i.xr = fsub <8 x float> %i.xn, %i.xq
  store <8 x float> %i.xr, ptr %i.xm, align 32, !tbaa !29
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xd, i64 64 ; 2 uses
  %i.xt = load <8 x float>, ptr %i.xs, align 32, !tbaa !29
  %i.xu = shufflevector <16 x float> %i.xg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xv = shufflevector <16 x float> %i.xg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xw = fadd <8 x float> %i.xu, %i.xv
  %i.xx = fsub <8 x float> %i.xt, %i.xw
  store <8 x float> %i.xx, ptr %i.xs, align 32, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3878.preheader
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !90 ; 4 uses
  %i.agr = shufflevector <16 x float> %i.ada, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ags = shufflevector <16 x float> %i.ada, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.afb ; 2 uses
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.afb ; 2 uses
  %i.agv = load <8 x float>, ptr %i.agt, align 32, !tbaa !29
  %i.agw = fadd <8 x float> %i.agr, %i.agv
  store <8 x float> %i.agw, ptr %i.agt, align 32, !tbaa !29
  %i.agx = load <8 x float>, ptr %i.agu, align 32, !tbaa !29
  %i.agy = fadd <8 x float> %i.agx, %i.ags
  store <8 x float> %i.agy, ptr %i.agu, align 32, !tbaa !29
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.afj
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 32 ; 2 uses
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.afj
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32 ; 2 uses
  %i.ahd = load <8 x float>, ptr %i.aha, align 32, !tbaa !29
  %i.ahe = fadd <8 x float> %i.agr, %i.ahd
  store <8 x float> %i.ahe, ptr %i.aha, align 32, !tbaa !29
  %i.ahf = load <8 x float>, ptr %i.ahc, align 32, !tbaa !29
  %i.ahg = fadd <8 x float> %i.ahf, %i.ags
  store <8 x float> %i.ahg, ptr %i.ahc, align 32, !tbaa !29
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.aft
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64 ; 2 uses
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.aft
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 64 ; 2 uses
  %i.ahl = load <8 x float>, ptr %i.ahi, align 32, !tbaa !29
  %i.ahm = fadd <8 x float> %i.agr, %i.ahl
  store <8 x float> %i.ahm, ptr %i.ahi, align 32, !tbaa !29
  %i.ahn = load <8 x float>, ptr %i.ahk, align 32, !tbaa !29
  %i.aho = fadd <8 x float> %i.ahn, %i.ags
  store <8 x float> %i.aho, ptr %i.ahk, align 32, !tbaa !29
  %i.ahp = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.agd
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 96 ; 2 uses
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.agd
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 96 ; 2 uses
  %i.aht = load <8 x float>, ptr %i.ahq, align 32, !tbaa !29
  %i.ahu = fadd <8 x float> %i.agr, %i.aht
  store <8 x float> %i.ahu, ptr %i.ahq, align 32, !tbaa !29
  %i.ahv = load <8 x float>, ptr %i.ahs, align 32, !tbaa !29
  %i.ahw = fadd <8 x float> %i.ahv, %i.ags
  store <8 x float> %i.ahw, ptr %i.ahs, align 32, !tbaa !29
  %i.ahx = load ptr, ptr %i.bm, align 8, !tbaa !89 ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !90 ; 4 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !90 ; 4 uses
  %i.aib = shufflevector <16 x float> %i.adz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aic = shufflevector <16 x float> %i.adz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.afb ; 2 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.afb ; 2 uses
  %i.aif = load <8 x float>, ptr %i.aid, align 32, !tbaa !29
  %i.aig = fadd <8 x float> %i.aib, %i.aif
  store <8 x float> %i.aig, ptr %i.aid, align 32, !tbaa !29
  %i.aih = load <8 x float>, ptr %i.aie, align 32, !tbaa !29
  %i.aii = fadd <8 x float> %i.aih, %i.aic
  store <8 x float> %i.aii, ptr %i.aie, align 32, !tbaa !29
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.afj
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 32 ; 2 uses
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.afj
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 32 ; 2 uses
  %i.ain = load <8 x float>, ptr %i.aik, align 32, !tbaa !29
  %i.aio = fadd <8 x float> %i.aib, %i.ain
  store <8 x float> %i.aio, ptr %i.aik, align 32, !tbaa !29
  %i.aip = load <8 x float>, ptr %i.aim, align 32, !tbaa !29
  %i.aiq = fadd <8 x float> %i.aip, %i.aic
  store <8 x float> %i.aiq, ptr %i.aim, align 32, !tbaa !29
  %i.air = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.aft
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 64 ; 2 uses
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.aft
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 64 ; 2 uses
  %i.aiv = load <8 x float>, ptr %i.ais, align 32, !tbaa !29
  %i.aiw = fadd <8 x float> %i.aib, %i.aiv
  store <8 x float> %i.aiw, ptr %i.ais, align 32, !tbaa !29
  %i.aix = load <8 x float>, ptr %i.aiu, align 32, !tbaa !29
  %i.aiy = fadd <8 x float> %i.aix, %i.aic
  store <8 x float> %i.aiy, ptr %i.aiu, align 32, !tbaa !29
  %i.aiz = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.agd
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 96 ; 2 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.agd
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 96 ; 2 uses
  %i.ajd = load <8 x float>, ptr %i.aja, align 32, !tbaa !29
  %i.aje = fadd <8 x float> %i.aib, %i.ajd
  store <8 x float> %i.aje, ptr %i.aja, align 32, !tbaa !29
  %i.ajf = load <8 x float>, ptr %i.ajc, align 32, !tbaa !29
  %i.ajg = fadd <8 x float> %i.ajf, %i.aic
  store <8 x float> %i.ajg, ptr %i.ajc, align 32, !tbaa !29
  %i.ajh = fadd <16 x float> %i.acr, %i.adp
  %i.aji = fmul <16 x float> %i.zx, %i.ajh        ; 3 uses
  %i.ajj = fmul <16 x float> %i.zy, %i.acs        ; 3 uses
  %i.ajk = fmul <16 x float> %i.ym, %i.aji        ; 2 uses
  %i.ajl = fmul <16 x float> %i.yn, %i.ajj        ; 2 uses
  %i.ajm = fmul <16 x float> %i.yo, %i.aji        ; 2 uses
  %i.ajn = fmul <16 x float> %i.yp, %i.ajj        ; 2 uses
  %i.ajo = fmul <16 x float> %i.yq, %i.aji        ; 2 uses
  %i.ajp = fmul <16 x float> %i.yr, %i.ajj        ; 2 uses
  %i.ajq = fadd <16 x float> %.sroa.03389.13984, %i.ajk ; 2 uses
  %i.ajr = fadd <16 x float> %.sroa.163396.13985, %i.ajl ; 2 uses
  %i.ajs = fadd <16 x float> %.sroa.03371.13982, %i.ajm ; 2 uses
  %i.ajt = fadd <16 x float> %.sroa.163378.13983, %i.ajn ; 2 uses
  %i.aju = fadd <16 x float> %.sroa.03354.13980, %i.ajo ; 2 uses
  %i.ajv = fadd <16 x float> %.sroa.16.13981, %i.ajp ; 2 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yf ; 4 uses
  %i.ajx = fadd <16 x float> %i.ajl, %i.ajk       ; 2 uses
  %i.ajy = fadd <16 x float> %i.ajn, %i.ajm       ; 2 uses
  %i.ajz = fadd <16 x float> %i.ajp, %i.ajo       ; 2 uses
  %i.aka = load <8 x float>, ptr %i.ajw, align 32, !tbaa !29
  %i.akb = shufflevector <16 x float> %i.ajx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akc = shufflevector <16 x float> %i.ajx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akd = fadd <8 x float> %i.akb, %i.akc
  %i.ake = fsub <8 x float> %i.aka, %i.akd
  store <8 x float> %i.ake, ptr %i.ajw, align 32, !tbaa !29
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajw, i64 32 ; 2 uses
  %i.akg = load <8 x float>, ptr %i.akf, align 32, !tbaa !29
  %i.akh = shufflevector <16 x float> %i.ajy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aki = shufflevector <16 x float> %i.ajy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akj = fadd <8 x float> %i.akh, %i.aki
  %i.akk = fsub <8 x float> %i.akg, %i.akj
  store <8 x float> %i.akk, ptr %i.akf, align 32, !tbaa !29
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajw, i64 64 ; 2 uses
  %i.akm = load <8 x float>, ptr %i.akl, align 32, !tbaa !29
  %i.akn = shufflevector <16 x float> %i.ajz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ako = shufflevector <16 x float> %i.ajz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akp = fadd <8 x float> %i.akn, %i.ako
  %i.akq = fsub <8 x float> %i.akm, %i.akp
  store <8 x float> %i.akq, ptr %i.akl, align 32, !tbaa !29
  %indvars.iv.next4047 = add nsw i64 %indvars.iv4046, 1 ; 2 uses
  %exitcond4050.not = icmp eq i64 %indvars.iv.next4047, %wide.trip.count4049
  br i1 %exitcond4050.not, label %.loopexit, label %bb.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  br i1 %i.dc, label %.preheader3873, label %.preheader3875

.preheader3875:                                   ; preds = %bb.j
  br i1 %i.kg, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader3875
  %i.akr = sext i32 %i.bx to i64
  %wide.trip.count = sext i32 %i.bz to i64
  br label %bb.p

.preheader3873:                                   ; preds = %bb.j
  br i1 %i.kg, label %.lr.ph3926, label %.critedge3

.lr.ph3926:                                       ; preds = %.preheader3873
  %i.aks = sext i32 %i.bx to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3926, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4029 = phi i64 [ %i.aks, %.lr.ph3926 ], [ %indvars.iv.next4030, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163396.23924 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03389.23923 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163378.23922 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03371.23921 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.23920 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03354.23919 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.akt = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv4029
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !84
  %.not518 = icmp eq i32 %i.akw, -1
  br i1 %.not518, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523: ; preds = %bb.k
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv4029 ; 2 uses
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !92 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !98
  %i.alb = insertelement <16 x i32> poison, i32 %i.ala, i64 0
  %i.alc = shufflevector <16 x i32> %i.alb, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ald = and <16 x i32> %.sroa.04069.0.copyload, %i.alc
  %i.ale = icmp ne <16 x i32> %i.ald, zeroinitializer ; 4 uses
  %i.alf = and <16 x i32> %.sroa.6.0.copyload, %i.alc
  %i.alg = icmp ne <16 x i32> %i.alf, zeroinitializer ; 4 uses
  %i.alh = shl nsw i32 %i.aky, 3
  %i.ali = mul nsw i32 %i.aky, 24
  %i.alj = sext i32 %i.ali to i64                 ; 2 uses
  %i.alk = getelementptr [4 x i8], ptr %i.av, i64 %i.alj ; 3 uses
  %.val6324251 = load <8 x float>, ptr %i.alk, align 32, !tbaa !29
  %i.all = shufflevector <8 x float> %.val6324251, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alm = getelementptr i8, ptr %i.alk, i64 32
  %.val6334252 = load <8 x float>, ptr %i.alm, align 32, !tbaa !29
  %i.aln = shufflevector <8 x float> %.val6334252, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alo = getelementptr i8, ptr %i.alk, i64 64
  %.val6344253 = load <8 x float>, ptr %i.alo, align 32, !tbaa !29
  %i.alp = shufflevector <8 x float> %.val6344253, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alq = fsub <16 x float> %i.hr, %i.all        ; 3 uses
  %i.alr = fsub <16 x float> %i.hx, %i.all        ; 3 uses
  %i.als = fsub <16 x float> %i.ie, %i.aln        ; 3 uses
  %i.alt = fsub <16 x float> %i.ik, %i.aln        ; 3 uses
  %i.alu = fsub <16 x float> %i.ir, %i.alp        ; 3 uses
  %i.alv = fsub <16 x float> %i.ix, %i.alp        ; 3 uses
  %i.alw = fmul <16 x float> %i.alq, %i.alq
  %i.alx = fmul <16 x float> %i.als, %i.als
  %i.aly = fadd <16 x float> %i.alw, %i.alx
  %i.alz = fmul <16 x float> %i.alu, %i.alu
  %i.ama = fadd <16 x float> %i.aly, %i.alz       ; 2 uses
  %i.amb = fmul <16 x float> %i.alr, %i.alr
  %i.amc = fmul <16 x float> %i.alt, %i.alt
  %i.amd = fadd <16 x float> %i.amb, %i.amc
  %i.ame = fmul <16 x float> %i.alv, %i.alv
  %i.amf = fadd <16 x float> %i.amd, %i.ame       ; 2 uses
  %i.amg = fcmp olt <16 x float> %i.ama, %i.ar    ; 2 uses
  %i.amh = bitcast <16 x i1> %i.amg to i16        ; 2 uses
  %i.ami = fcmp olt <16 x float> %i.amf, %i.ar    ; 2 uses
  %i.amj = bitcast <16 x i1> %i.ami to i16        ; 2 uses
  %i.amk = shl nsw i32 %i.aky, 1                  ; 3 uses
  %i.aml = icmp eq i32 %i.amk, %i.cc
  br i1 %i.aml, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.amm = and i16 %i.amh, %i.r
  %i.amn = and i16 %i.amj, %i.s
  %9 = bitcast i16 %i.amm to <16 x i1>
  %10 = bitcast i16 %i.amn to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.amo = or disjoint i32 %i.amk, 1
  %i.amp = icmp eq i32 %i.amo, %i.cc
  br i1 %i.amp, label %bb.n, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.n:                                             ; preds = %bb.m
  %i.amq = and i16 %i.amh, %i.t
  %i.amr = and i16 %i.amj, %i.u
  %11 = bitcast i16 %i.amq to <16 x i1>
  %12 = bitcast i16 %i.amr to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.03776.0 = phi <16 x i1> [ %9, %bb.l ], [ %11, %bb.n ], [ %i.amg, %bb.m ] ; 4 uses
  %.sroa.113787.0 = phi <16 x i1> [ %10, %bb.l ], [ %12, %bb.n ], [ %i.ami, %bb.m ] ; 4 uses
  %i.ams = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ama, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.amf, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amu = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ams, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amv = fmul <16 x float> %i.ams, %i.amu
  %i.amw = fmul <16 x float> %i.amu, splat (float -5.000000e-01)
  %i.amx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amv, <16 x float> %i.amu, <16 x float> splat (float -3.000000e+00))
  %i.amy = fmul <16 x float> %i.amw, %i.amx
  %i.amz = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amt, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ana = fmul <16 x float> %i.amt, %i.amz
  %i.anb = fmul <16 x float> %i.amz, splat (float -5.000000e-01)
  %i.anc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ana, <16 x float> %i.amz, <16 x float> splat (float -3.000000e+00))
  %i.and = fmul <16 x float> %i.anb, %i.anc
  %i.ane = sext i32 %i.alh to i64
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ane
  %.val6354254 = load <8 x float>, ptr %i.anf, align 32, !tbaa !29
  %i.ang = shufflevector <8 x float> %.val6354254, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anh = fmul <16 x float> %.sroa.03503.0, %i.ang ; 2 uses
  %i.ani = fmul <16 x float> %.sroa.73507.0, %i.ang ; 2 uses
  %i.anj = select <16 x i1> %.sroa.03776.0, <16 x float> %i.amy, <16 x float> zeroinitializer ; 4 uses
  %i.ank = select <16 x i1> %.sroa.113787.0, <16 x float> %i.and, <16 x float> zeroinitializer ; 4 uses
  %i.anl = fmul <16 x float> %i.anj, %i.anj
  %i.anm = fmul <16 x float> %i.ank, %i.ank
  %i.ann = select <16 x i1> %i.ale, <16 x float> %i.anj, <16 x float> zeroinitializer ; 2 uses
  %i.ano = select <16 x i1> %i.alg, <16 x float> %i.ank, <16 x float> zeroinitializer ; 2 uses
  %i.anp = select <16 x i1> %.sroa.03776.0, <16 x float> %i.ams, <16 x float> zeroinitializer
  %i.anq = fmul <16 x float> %i.z, %i.anp         ; 7 uses
  %i.anr = select <16 x i1> %.sroa.113787.0, <16 x float> %i.amt, <16 x float> zeroinitializer
  %i.ans = fmul <16 x float> %i.z, %i.anr         ; 7 uses
  %i.ant = fmul <16 x float> %i.anq, %i.anq       ; 15 uses
  %i.anu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.anv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.anw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anu, <16 x float> %i.ant, <16 x float> splat (float 1.000000e+00))
  %i.anx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> %i.anq, <16 x float> %i.anw) ; 2 uses
  %i.any = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.anx, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.anz = fneg <16 x float> %i.any
  %i.aoa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anz, <16 x float> %i.anx, <16 x float> splat (float 2.000000e+00))
  %i.aob = fmul <16 x float> %i.any, %i.aoa
  %i.aoc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aod = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aoe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoc, <16 x float> %i.ant, <16 x float> splat (float f0xBC9DED90))
  %i.aof = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> %i.ant, <16 x float> splat (float f0x3D8EAF3B))
  %i.aog = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> %i.ant, <16 x float> splat (float f0xBF409397))
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aof, <16 x float> %i.anq, <16 x float> %i.aog)
  %i.aoi = fmul <16 x float> %i.aoh, %i.aob
  %i.aoj = fmul <16 x float> %i.x, %i.aoi
  %i.aok = fmul <16 x float> %i.ans, %i.ans       ; 15 uses
  %i.aol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aom = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aon = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aol, <16 x float> %i.aok, <16 x float> splat (float 1.000000e+00))
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> %i.ans, <16 x float> %i.aon) ; 2 uses
  %i.aop = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoo, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aoq = fneg <16 x float> %i.aop
  %i.aor = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoq, <16 x float> %i.aoo, <16 x float> splat (float 2.000000e+00))
  %i.aos = fmul <16 x float> %i.aop, %i.aor
  %i.aot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aou = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aot, <16 x float> %i.aok, <16 x float> splat (float f0xBC9DED90))
  %i.aow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> %i.aok, <16 x float> splat (float f0x3D8EAF3B))
  %i.aox = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aov, <16 x float> %i.aok, <16 x float> splat (float f0xBF409397))
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aow, <16 x float> %i.ans, <16 x float> %i.aox)
  %i.aoz = fmul <16 x float> %i.aoy, %i.aos
  %i.apa = fmul <16 x float> %i.x, %i.aoz
  %i.apb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> %i.anq, <16 x float> %i.ann)
  %i.apc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apa, <16 x float> %i.ans, <16 x float> %i.ano)
  %i.apd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ape = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apd, <16 x float> %i.anq, <16 x float> %i.ape) ; 2 uses
  %i.apg = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.apf, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aph = fneg <16 x float> %i.apg
  %i.api = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aph, <16 x float> %i.apf, <16 x float> splat (float 2.000000e+00))
  %i.apj = fmul <16 x float> %i.apg, %i.api
  %i.apk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apk, <16 x float> %i.ant, <16 x float> splat (float f0x3D1E57D6))
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apl, <16 x float> %i.ant, <16 x float> splat (float f0x3DE71E23))
  %i.apo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apm, <16 x float> %i.ant, <16 x float> splat (float f0x3F906EC3))
  %i.app = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apn, <16 x float> %i.anq, <16 x float> %i.apo)
  %i.apq = fmul <16 x float> %i.app, %i.apj
  %i.apr = fmul <16 x float> %i.x, %i.apq
  %i.aps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.apu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aps, <16 x float> %i.ans, <16 x float> %i.apt) ; 2 uses
  %i.apv = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.apu, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apw = fneg <16 x float> %i.apv
  %i.apx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apw, <16 x float> %i.apu, <16 x float> splat (float 2.000000e+00))
  %i.apy = fmul <16 x float> %i.apv, %i.apx
  %i.apz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.aqa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.aqb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.aok, <16 x float> splat (float f0x3D1E57D6))
  %i.aqc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqa, <16 x float> %i.aok, <16 x float> splat (float f0x3DE71E23))
  %i.aqd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqb, <16 x float> %i.aok, <16 x float> splat (float f0x3F906EC3))
  %i.aqe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqc, <16 x float> %i.ans, <16 x float> %i.aqd)
  %i.aqf = fmul <16 x float> %i.aqe, %i.apy
  %i.aqg = fmul <16 x float> %i.x, %i.aqf
  %i.aqh = fmul <16 x float> %i.anh, %i.apb
  %i.aqi = fmul <16 x float> %i.ani, %i.apc
  %i.aqj = select <16 x i1> %i.ale, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.aqk = fadd <16 x float> %i.aqj, %i.apr
  %i.aql = select <16 x i1> %i.alg, <16 x float> %i.ag, <16 x float> zeroinitializer
  %i.aqm = fadd <16 x float> %i.aql, %i.aqg
  %i.aqn = fsub <16 x float> %i.ann, %i.aqk
  %i.aqo = fmul <16 x float> %i.anh, %i.aqn
  %i.aqp = fsub <16 x float> %i.ano, %i.aqm
  %i.aqq = fmul <16 x float> %i.ani, %i.aqp
  %i.aqr = select <16 x i1> %.sroa.03776.0, <16 x float> %i.aqo, <16 x float> zeroinitializer ; 2 uses
  %i.aqs = select <16 x i1> %.sroa.113787.0, <16 x float> %i.aqq, <16 x float> zeroinitializer ; 2 uses
  %i.aqt = shl nsw i32 %i.aky, 4
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr [4 x i8], ptr %i.f, i64 %i.aqu ; 2 uses
  %.val6364255 = load <8 x float>, ptr %i.aqv, align 32, !tbaa !29
  %i.aqw = shufflevector <8 x float> %.val6364255, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqx = getelementptr i8, ptr %i.aqv, i64 32
  %.val6374256 = load <8 x float>, ptr %i.aqx, align 32, !tbaa !29
  %i.aqy = shufflevector <8 x float> %.val6374256, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqz = fadd <16 x float> %i.jr, %i.aqw        ; 3 uses
  %i.ara = fadd <16 x float> %i.ka, %i.aqw        ; 3 uses
  %i.arb = fmul <16 x float> %i.jv, %i.aqy        ; 2 uses
  %i.arc = fmul <16 x float> %i.kf, %i.aqy        ; 2 uses
  %i.ard = fmul <16 x float> %i.anj, %i.aqz       ; 2 uses
  %i.are = fmul <16 x float> %i.ank, %i.ara       ; 2 uses
  %i.arf = fmul <16 x float> %i.ard, %i.ard       ; 3 uses
  %i.arg = fmul <16 x float> %i.are, %i.are       ; 3 uses
  %i.arh = fmul <16 x float> %i.arf, %i.arf
  %i.ari = fmul <16 x float> %i.arf, %i.arh
  %i.arj = fmul <16 x float> %i.arg, %i.arg
  %i.ark = fmul <16 x float> %i.arg, %i.arj
  %i.arl = select <16 x i1> %i.ale, <16 x float> %i.ari, <16 x float> zeroinitializer ; 2 uses
  %i.arm = select <16 x i1> %i.alg, <16 x float> %i.ark, <16 x float> zeroinitializer ; 2 uses
  %i.arn = fmul <16 x float> %i.arb, %i.arl       ; 3 uses
  %i.aro = fmul <16 x float> %i.arc, %i.arm       ; 3 uses
  %i.arp = fmul <16 x float> %i.arl, %i.arn       ; 2 uses
  %i.arq = fmul <16 x float> %i.arm, %i.aro       ; 2 uses
  %i.arr = fsub <16 x float> %i.arp, %i.arn
  %i.ars = fsub <16 x float> %i.arq, %i.aro
  %i.art = fmul <16 x float> %i.aqz, %i.aqz       ; 3 uses
  %i.aru = fmul <16 x float> %i.ara, %i.ara       ; 3 uses
  %i.arv = fmul <16 x float> %i.art, %i.art
  %i.arw = fmul <16 x float> %i.art, %i.arv       ; 2 uses
  %i.arx = fmul <16 x float> %i.aru, %i.aru
  %i.ary = fmul <16 x float> %i.aru, %i.arx       ; 2 uses
  %i.arz = fmul <16 x float> %i.arb, %i.arw       ; 2 uses
  %i.asa = fmul <16 x float> %i.arc, %i.ary       ; 2 uses
  %i.asb = fmul <16 x float> %i.arw, %i.arz
  %i.asc = fmul <16 x float> %i.ary, %i.asa
  %i.asd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arz, <16 x float> %i.aj, <16 x float> %i.arn)
  %i.ase = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asa, <16 x float> %i.aj, <16 x float> %i.aro)
  %i.asf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asb, <16 x float> %i.am, <16 x float> %i.arp)
  %i.asg = fmul <16 x float> %i.asd, splat (float f0xBE2AAAAB)
  %i.ash = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asf, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.asg)
  %i.asi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asc, <16 x float> %i.am, <16 x float> %i.arq)
  %i.asj = fmul <16 x float> %i.ase, splat (float f0xBE2AAAAB)
  %i.ask = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asi, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.asj)
  %i.asl = select <16 x i1> %.sroa.03776.0, <16 x i1> %i.ale, <16 x i1> zeroinitializer
  %i.asm = select <16 x i1> %i.asl, <16 x float> %i.ash, <16 x float> zeroinitializer ; 2 uses
  %i.asn = select <16 x i1> %.sroa.113787.0, <16 x i1> %i.alg, <16 x i1> zeroinitializer
  %i.aso = select <16 x i1> %i.asn, <16 x float> %i.ask, <16 x float> zeroinitializer ; 2 uses
  %i.asp = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.asq = load i32, ptr %i.bq, align 8, !tbaa !99
  %i.asr = sext i32 %i.amk to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %i.asp, i64 %i.asr
  %i.ast = load i32, ptr %i.br, align 4, !tbaa !100
  %i.asu = load i32, ptr %i.bo, align 8, !tbaa !93
  %i.asv = load <2 x i32>, ptr %i.ass, align 4, !tbaa !84 ; 2 uses
  %i.asw = insertelement <2 x i32> poison, i32 %i.asq, i64 0
  %i.asx = shufflevector <2 x i32> %i.asv, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.asy = shufflevector <2 x i32> %i.asv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.asz = shufflevector <2 x i32> %i.asw, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ata = ashr <4 x i32> %i.asy, %i.asz
  %i.atb = shufflevector <4 x i32> %i.ata, <4 x i32> %i.asx, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.atc = insertelement <4 x i32> poison, i32 %i.ast, i64 0
  %i.atd = shufflevector <4 x i32> %i.atc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ate = and <4 x i32> %i.atb, %i.atd
  %i.atf = insertelement <4 x i32> poison, i32 %i.asu, i64 0
  %i.atg = shufflevector <4 x i32> %i.atf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ath = mul nsw <4 x i32> %i.ate, %i.atg       ; 4 uses
  %i.ati = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !90 ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !90 ; 4 uses
  %i.atm = shufflevector <16 x float> %i.aqr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.atn = shufflevector <16 x float> %i.aqr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ato = extractelement <4 x i32> %i.ath, i64 0
  %i.atp = sext i32 %i.ato to i64                 ; 8 uses
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.atp ; 2 uses
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.atp ; 2 uses
  %i.ats = load <8 x float>, ptr %i.atq, align 32, !tbaa !29
  %i.att = fadd <8 x float> %i.atm, %i.ats
  store <8 x float> %i.att, ptr %i.atq, align 32, !tbaa !29
  %i.atu = load <8 x float>, ptr %i.atr, align 32, !tbaa !29
  %i.atv = fadd <8 x float> %i.atu, %i.atn
  store <8 x float> %i.atv, ptr %i.atr, align 32, !tbaa !29
  %i.atw = extractelement <4 x i32> %i.ath, i64 1
  %i.atx = sext i32 %i.atw to i64                 ; 8 uses
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.atx
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 32 ; 2 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.atx
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 32 ; 2 uses
  %i.auc = load <8 x float>, ptr %i.atz, align 32, !tbaa !29
  %i.aud = fadd <8 x float> %i.atm, %i.auc
  store <8 x float> %i.aud, ptr %i.atz, align 32, !tbaa !29
  %i.aue = load <8 x float>, ptr %i.aub, align 32, !tbaa !29
  %i.auf = fadd <8 x float> %i.aue, %i.atn
  store <8 x float> %i.auf, ptr %i.aub, align 32, !tbaa !29
  %i.aug = extractelement <4 x i32> %i.ath, i64 2
  %i.auh = sext i32 %i.aug to i64                 ; 8 uses
  %i.aui = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.auh
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 64 ; 2 uses
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.auh
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 64 ; 2 uses
  %i.aum = load <8 x float>, ptr %i.auj, align 32, !tbaa !29
  %i.aun = fadd <8 x float> %i.atm, %i.aum
  store <8 x float> %i.aun, ptr %i.auj, align 32, !tbaa !29
  %i.auo = load <8 x float>, ptr %i.aul, align 32, !tbaa !29
  %i.aup = fadd <8 x float> %i.auo, %i.atn
  store <8 x float> %i.aup, ptr %i.aul, align 32, !tbaa !29
  %i.auq = extractelement <4 x i32> %i.ath, i64 3
  %i.aur = sext i32 %i.auq to i64                 ; 8 uses
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.aur
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 96 ; 2 uses
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.aur
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 96 ; 2 uses
  %i.auw = load <8 x float>, ptr %i.aut, align 32, !tbaa !29
  %i.aux = fadd <8 x float> %i.atm, %i.auw
  store <8 x float> %i.aux, ptr %i.aut, align 32, !tbaa !29
  %i.auy = load <8 x float>, ptr %i.auv, align 32, !tbaa !29
  %i.auz = fadd <8 x float> %i.auy, %i.atn
  store <8 x float> %i.auz, ptr %i.auv, align 32, !tbaa !29
  %i.ava = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !90 ; 4 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ava, i64 24
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !90 ; 4 uses
  %i.avf = shufflevector <16 x float> %i.aqs, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.avg = shufflevector <16 x float> %i.aqs, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.avc, i64 %i.atp ; 2 uses
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.atp ; 2 uses
  %i.avj = load <8 x float>, ptr %i.avh, align 32, !tbaa !29
  %i.avk = fadd <8 x float> %i.avf, %i.avj
  store <8 x float> %i.avk, ptr %i.avh, align 32, !tbaa !29
  %i.avl = load <8 x float>, ptr %i.avi, align 32, !tbaa !29
  %i.avm = fadd <8 x float> %i.avl, %i.avg
  store <8 x float> %i.avm, ptr %i.avi, align 32, !tbaa !29
  %i.avn = getelementptr inbounds [4 x i8], ptr %i.avc, i64 %i.atx
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 32 ; 2 uses
  %i.avp = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.atx
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 32 ; 2 uses
  %i.avr = load <8 x float>, ptr %i.avo, align 32, !tbaa !29
  %i.avs = fadd <8 x float> %i.avf, %i.avr
  store <8 x float> %i.avs, ptr %i.avo, align 32, !tbaa !29
  %i.avt = load <8 x float>, ptr %i.avq, align 32, !tbaa !29
  %i.avu = fadd <8 x float> %i.avt, %i.avg
  store <8 x float> %i.avu, ptr %i.avq, align 32, !tbaa !29
  %i.avv = getelementptr inbounds [4 x i8], ptr %i.avc, i64 %i.auh
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 64 ; 2 uses
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.auh
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 64 ; 2 uses
  %i.avz = load <8 x float>, ptr %i.avw, align 32, !tbaa !29
  %i.awa = fadd <8 x float> %i.avf, %i.avz
  store <8 x float> %i.awa, ptr %i.avw, align 32, !tbaa !29
  %i.awb = load <8 x float>, ptr %i.avy, align 32, !tbaa !29
  %i.awc = fadd <8 x float> %i.awb, %i.avg
  store <8 x float> %i.awc, ptr %i.avy, align 32, !tbaa !29
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.avc, i64 %i.aur
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 96 ; 2 uses
  %i.awf = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.aur
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 96 ; 2 uses
  %i.awh = load <8 x float>, ptr %i.awe, align 32, !tbaa !29
  %i.awi = fadd <8 x float> %i.avf, %i.awh
  store <8 x float> %i.awi, ptr %i.awe, align 32, !tbaa !29
  %i.awj = load <8 x float>, ptr %i.awg, align 32, !tbaa !29
  %i.awk = fadd <8 x float> %i.awj, %i.avg
  store <8 x float> %i.awk, ptr %i.awg, align 32, !tbaa !29
  %i.awl = load ptr, ptr %i.bm, align 8, !tbaa !89 ; 2 uses
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !90 ; 4 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !90 ; 4 uses
  %i.awp = shufflevector <16 x float> %i.asm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.awq = shufflevector <16 x float> %i.asm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.awr = getelementptr inbounds [4 x i8], ptr %i.awm, i64 %i.atp ; 2 uses
  %i.aws = getelementptr inbounds [4 x i8], ptr %i.awo, i64 %i.atp ; 2 uses
  %i.awt = load <8 x float>, ptr %i.awr, align 32, !tbaa !29
  %i.awu = fadd <8 x float> %i.awp, %i.awt
  store <8 x float> %i.awu, ptr %i.awr, align 32, !tbaa !29
  %i.awv = load <8 x float>, ptr %i.aws, align 32, !tbaa !29
  %i.aww = fadd <8 x float> %i.awv, %i.awq
  store <8 x float> %i.aww, ptr %i.aws, align 32, !tbaa !29
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.awm, i64 %i.atx
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 32 ; 2 uses
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.awo, i64 %i.atx
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 32 ; 2 uses
  %i.axb = load <8 x float>, ptr %i.awy, align 32, !tbaa !29
  %i.axc = fadd <8 x float> %i.awp, %i.axb
  store <8 x float> %i.axc, ptr %i.awy, align 32, !tbaa !29
  %i.axd = load <8 x float>, ptr %i.axa, align 32, !tbaa !29
  %i.axe = fadd <8 x float> %i.axd, %i.awq
  store <8 x float> %i.axe, ptr %i.axa, align 32, !tbaa !29
  %i.axf = getelementptr inbounds [4 x i8], ptr %i.awm, i64 %i.auh
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 64 ; 2 uses
  %i.axh = getelementptr inbounds [4 x i8], ptr %i.awo, i64 %i.auh
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 64 ; 2 uses
  %i.axj = load <8 x float>, ptr %i.axg, align 32, !tbaa !29
  %i.axk = fadd <8 x float> %i.awp, %i.axj
  store <8 x float> %i.axk, ptr %i.axg, align 32, !tbaa !29
  %i.axl = load <8 x float>, ptr %i.axi, align 32, !tbaa !29
  %i.axm = fadd <8 x float> %i.axl, %i.awq
  store <8 x float> %i.axm, ptr %i.axi, align 32, !tbaa !29
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.awm, i64 %i.aur
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 96 ; 2 uses
  %i.axp = getelementptr inbounds [4 x i8], ptr %i.awo, i64 %i.aur
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 96 ; 2 uses
  %i.axr = load <8 x float>, ptr %i.axo, align 32, !tbaa !29
  %i.axs = fadd <8 x float> %i.awp, %i.axr
  store <8 x float> %i.axs, ptr %i.axo, align 32, !tbaa !29
  %i.axt = load <8 x float>, ptr %i.axq, align 32, !tbaa !29
  %i.axu = fadd <8 x float> %i.axt, %i.awq
  store <8 x float> %i.axu, ptr %i.axq, align 32, !tbaa !29
  %i.axv = load ptr, ptr %i.bm, align 8, !tbaa !89 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !90 ; 4 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 24
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !90 ; 4 uses
  %i.aya = shufflevector <16 x float> %i.aso, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ayb = shufflevector <16 x float> %i.aso, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ayc = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.atp ; 2 uses
  %i.ayd = getelementptr inbounds [4 x i8], ptr %i.axz, i64 %i.atp ; 2 uses
  %i.aye = load <8 x float>, ptr %i.ayc, align 32, !tbaa !29
  %i.ayf = fadd <8 x float> %i.aya, %i.aye
  store <8 x float> %i.ayf, ptr %i.ayc, align 32, !tbaa !29
  %i.ayg = load <8 x float>, ptr %i.ayd, align 32, !tbaa !29
  %i.ayh = fadd <8 x float> %i.ayg, %i.ayb
  store <8 x float> %i.ayh, ptr %i.ayd, align 32, !tbaa !29
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.atx
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 32 ; 2 uses
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.axz, i64 %i.atx
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 32 ; 2 uses
  %i.aym = load <8 x float>, ptr %i.ayj, align 32, !tbaa !29
  %i.ayn = fadd <8 x float> %i.aya, %i.aym
  store <8 x float> %i.ayn, ptr %i.ayj, align 32, !tbaa !29
  %i.ayo = load <8 x float>, ptr %i.ayl, align 32, !tbaa !29
  %i.ayp = fadd <8 x float> %i.ayo, %i.ayb
  store <8 x float> %i.ayp, ptr %i.ayl, align 32, !tbaa !29
  %i.ayq = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.auh
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 64 ; 2 uses
  %i.ays = getelementptr inbounds [4 x i8], ptr %i.axz, i64 %i.auh
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 64 ; 2 uses
  %i.ayu = load <8 x float>, ptr %i.ayr, align 32, !tbaa !29
  %i.ayv = fadd <8 x float> %i.aya, %i.ayu
  store <8 x float> %i.ayv, ptr %i.ayr, align 32, !tbaa !29
  %i.ayw = load <8 x float>, ptr %i.ayt, align 32, !tbaa !29
  %i.ayx = fadd <8 x float> %i.ayw, %i.ayb
  store <8 x float> %i.ayx, ptr %i.ayt, align 32, !tbaa !29
  %i.ayy = getelementptr inbounds [4 x i8], ptr %i.axx, i64 %i.aur
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 96 ; 2 uses
  %i.aza = getelementptr inbounds [4 x i8], ptr %i.axz, i64 %i.aur
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 96 ; 2 uses
end_hunk_1
