Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1665
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4359.preheader
  %i.gx = ashr i32 %i.dt, %i.gw
  %i.gy = and i32 %i.gx, %i.dv
  %i.gz = mul nsw i32 %i.fr, %i.gy
  %i.ha = load ptr, ptr %i.ex, align 8, !tbaa !94
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !41
  %i.he = fadd float %i.gv, %i.hd
  store float %i.he, ptr %i.hc, align 4, !tbaa !41
  %i.hf = getelementptr [4 x i8], ptr %i.bd, i64 %i.fs
  %i.hg = getelementptr i8, ptr %i.hf, i64 12
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !41 ; 2 uses
  %i.hi = fmul float %i.hh, %i.bx
  %i.hj = fmul float %i.hh, %i.hi
  %i.hk = fmul float %i.ai, %i.hj
  %i.hl = mul i32 %i.du, 3
  %i.hm = ashr i32 %i.dt, %i.hl
  %i.hn = and i32 %i.hm, %i.dv
  %i.ho = mul nsw i32 %i.fr, %i.hn
  %i.hp = load ptr, ptr %i.fi, align 8, !tbaa !94
  %i.hq = sext i32 %i.ho to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !41
  %i.ht = fadd float %i.hk, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !41
  br label %.loopexit4358

.loopexit4358:                                    ; preds = %.preheader4357, %bb.b, %bb.a
  %i.hu = add nsw i32 %i.dj, 8
  %i.hv = add nsw i32 %i.dj, 16
  %i.hw = sext i32 %i.dj to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.hw ; 4 uses
  %.val.i = load float, ptr %i.hx, align 1, !tbaa !29, !noalias !98
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val3.i = load float, ptr %i.hy, align 1, !tbaa !29, !noalias !98
  %i.hz = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.ia = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> %i.ia, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ic = fadd <16 x float> %i.cs, %i.ib          ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.val.i725 = load float, ptr %i.id, align 1, !tbaa !29, !noalias !98
  %i.ie = getelementptr i8, ptr %i.hx, i64 12
  %.val3.i726 = load float, ptr %i.ie, align 1, !tbaa !29, !noalias !98
  %i.if = insertelement <4 x float> poison, float %.val.i725, i64 0
  %i.ig = insertelement <4 x float> poison, float %.val3.i726, i64 0
  %i.ih = shufflevector <4 x float> %i.if, <4 x float> %i.ig, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ii = fadd <16 x float> %i.cs, %i.ih          ; 6 uses
  %i.ij = sext i32 %i.hu to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.ij ; 4 uses
  %.val.i728 = load float, ptr %i.ik, align 1, !tbaa !29, !noalias !99
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %.val3.i729 = load float, ptr %i.il, align 1, !tbaa !29, !noalias !99
  %i.im = insertelement <4 x float> poison, float %.val.i728, i64 0
  %i.in = insertelement <4 x float> poison, float %.val3.i729, i64 0
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ip = fadd <16 x float> %i.cy, %i.io          ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.val.i731 = load float, ptr %i.iq, align 1, !tbaa !29, !noalias !99
  %i.ir = getelementptr i8, ptr %i.ik, i64 12
  %.val3.i732 = load float, ptr %i.ir, align 1, !tbaa !29, !noalias !99
  %i.is = insertelement <4 x float> poison, float %.val.i731, i64 0
  %i.it = insertelement <4 x float> poison, float %.val3.i732, i64 0
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %i.it, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iv = fadd <16 x float> %i.cy, %i.iu          ; 6 uses
  %i.iw = sext i32 %i.hv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.iw ; 4 uses
  %.val.i734 = load float, ptr %i.ix, align 1, !tbaa !29, !noalias !100
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %.val3.i735 = load float, ptr %i.iy, align 1, !tbaa !29, !noalias !100
  %i.iz = insertelement <4 x float> poison, float %.val.i734, i64 0
  %i.ja = insertelement <4 x float> poison, float %.val3.i735, i64 0
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jc = fadd <16 x float> %i.de, %i.jb          ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.val.i737 = load float, ptr %i.jd, align 1, !tbaa !29, !noalias !100
  %i.je = getelementptr i8, ptr %i.ix, i64 12
  %.val3.i738 = load float, ptr %i.je, align 1, !tbaa !29, !noalias !100
  %i.jf = insertelement <4 x float> poison, float %.val.i737, i64 0
  %i.jg = insertelement <4 x float> poison, float %.val3.i738, i64 0
  %i.jh = shufflevector <4 x float> %i.jf, <4 x float> %i.jg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ji = fadd <16 x float> %i.de, %i.jh          ; 6 uses
  br i1 %i.dn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit4358
  %i.jj = sext i32 %i.df to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.jj ; 4 uses
  %.val.i740 = load float, ptr %i.jk, align 1, !tbaa !29, !noalias !101
  %i.jl = getelementptr i8, ptr %i.jk, i64 4
  %.val2.i = load float, ptr %i.jl, align 1, !tbaa !29, !noalias !101
  %i.jm = insertelement <4 x float> poison, float %.val.i740, i64 0
  %i.jn = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.jo = shufflevector <4 x float> %i.jm, <4 x float> %i.jn, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jp = fmul <16 x float> %i.bz, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.val.i741 = load float, ptr %i.jq, align 1, !tbaa !29, !noalias !101
  %i.jr = getelementptr i8, ptr %i.jk, i64 12
  %.val2.i742 = load float, ptr %i.jr, align 1, !tbaa !29, !noalias !101
  %i.js = insertelement <4 x float> poison, float %.val.i741, i64 0
  %i.jt = insertelement <4 x float> poison, float %.val2.i742, i64 0
  %i.ju = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jv = fmul <16 x float> %i.bz, %i.ju
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit4358
  %.sroa.03969.0 = phi <16 x float> [ %i.jp, %bb.c ], [ undef, %.loopexit4358 ] ; 4 uses
  %.sroa.73973.0 = phi <16 x float> [ %i.jv, %bb.c ], [ undef, %.loopexit4358 ] ; 4 uses
  %i.jw = sext i32 %i.dl to i64
  %i.jx = getelementptr [4 x i8], ptr %i.f, i64 %i.jw ; 8 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 32
  %.val686 = load float, ptr %i.jx, align 1, !tbaa !29
  %i.jz = getelementptr i8, ptr %i.jx, i64 4
  %.val687 = load float, ptr %i.jz, align 1, !tbaa !29
  %i.ka = insertelement <4 x float> poison, float %.val686, i64 0
  %i.kb = insertelement <4 x float> poison, float %.val687, i64 0
  %i.kc = shufflevector <4 x float> %i.ka, <4 x float> %i.kb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val688 = load float, ptr %i.jy, align 1, !tbaa !29
  %i.kd = getelementptr i8, ptr %i.jx, i64 36
  %.val689 = load float, ptr %i.kd, align 1, !tbaa !29
  %i.ke = insertelement <4 x float> poison, float %.val688, i64 0
  %i.kf = insertelement <4 x float> poison, float %.val689, i64 0
  %i.kg = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %.val686.1 = load float, ptr %i.kh, align 1, !tbaa !29
  %i.ki = getelementptr i8, ptr %i.jx, i64 12
  %.val687.1 = load float, ptr %i.ki, align 1, !tbaa !29
  %i.kj = insertelement <4 x float> poison, float %.val686.1, i64 0
  %i.kk = insertelement <4 x float> poison, float %.val687.1, i64 0
  %i.kl = shufflevector <4 x float> %i.kj, <4 x float> %i.kk, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.km = getelementptr i8, ptr %i.jx, i64 40
  %.val688.1 = load float, ptr %i.km, align 1, !tbaa !29
  %i.kn = getelementptr i8, ptr %i.jx, i64 44
  %.val689.1 = load float, ptr %i.kn, align 1, !tbaa !29
  %i.ko = insertelement <4 x float> poison, float %.val688.1, i64 0
  %i.kp = insertelement <4 x float> poison, float %.val689.1, i64 0
  %i.kq = shufflevector <4 x float> %i.ko, <4 x float> %i.kp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kr = icmp slt i32 %i.ci, %i.ck               ; 3 uses
  br i1 %i.dp, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.d
  br i1 %i.kr, label %.lr.ph4451, label %.critedge

.lr.ph4451:                                       ; preds = %.preheader
  %i.ks = sext i32 %i.ci to i64
  %wide.trip.count4552 = sext i32 %i.ck to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph4451, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561
  %indvars.iv4549 = phi i64 [ %i.ks, %.lr.ph4451 ], [ %indvars.iv.next4550, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 4 uses
  %.sroa.163860.04449 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03853.04448 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.163842.04447 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03835.04446 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.16.04445 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.wb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03818.04444 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.wa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %i.kt = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv4549
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !88
  %.not552 = icmp eq i32 %i.kw, -1
  br i1 %.not552, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560: ; preds = %bb.e
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv4549 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !96 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !102
  %i.lb = insertelement <16 x i32> poison, i32 %i.la, i64 0
  %i.lc = shufflevector <16 x i32> %i.lb, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ld = and <16 x i32> %.sroa.04583.0.copyload, %i.lc
  %i.le = icmp ne <16 x i32> %i.ld, zeroinitializer ; 3 uses
  %i.lf = and <16 x i32> %.sroa.6.0.copyload, %i.lc
  %.not4646 = icmp eq <16 x i32> %i.lf, zeroinitializer ; 2 uses
  %i.lg = shl nsw i32 %i.ky, 3
  %i.lh = mul nsw i32 %i.ky, 24
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.bf, i64 %i.li ; 3 uses
  %.val6904815 = load <8 x float>, ptr %i.lj, align 32, !tbaa !29
  %i.lk = shufflevector <8 x float> %.val6904815, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lj, i64 32
  %.val6914816 = load <8 x float>, ptr %i.ll, align 32, !tbaa !29
  %i.lm = shufflevector <8 x float> %.val6914816, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lj, i64 64
  %.val6924817 = load <8 x float>, ptr %i.ln, align 32, !tbaa !29
  %i.lo = shufflevector <8 x float> %.val6924817, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lp = fsub <16 x float> %i.ic, %i.lk          ; 3 uses
  %i.lq = fsub <16 x float> %i.ii, %i.lk          ; 3 uses
  %i.lr = fsub <16 x float> %i.ip, %i.lm          ; 3 uses
  %i.ls = fsub <16 x float> %i.iv, %i.lm          ; 3 uses
  %i.lt = fsub <16 x float> %i.jc, %i.lo          ; 3 uses
  %i.lu = fsub <16 x float> %i.ji, %i.lo          ; 3 uses
  %i.lv = fmul <16 x float> %i.lp, %i.lp
  %i.lw = fmul <16 x float> %i.lr, %i.lr
  %i.lx = fadd <16 x float> %i.lv, %i.lw
  %i.ly = fmul <16 x float> %i.lt, %i.lt
  %i.lz = fadd <16 x float> %i.lx, %i.ly          ; 2 uses
  %i.ma = fmul <16 x float> %i.lq, %i.lq
  %i.mb = fmul <16 x float> %i.ls, %i.ls
  %i.mc = fadd <16 x float> %i.ma, %i.mb
  %i.md = fmul <16 x float> %i.lu, %i.lu
  %i.me = fadd <16 x float> %i.mc, %i.md          ; 2 uses
  %i.mf = fcmp olt <16 x float> %i.lz, %i.aw      ; 2 uses
  %i.mg = bitcast <16 x i1> %i.mf to i16          ; 2 uses
  %i.mh = fcmp olt <16 x float> %i.me, %i.aw      ; 2 uses
  %i.mi = bitcast <16 x i1> %i.mh to i16          ; 2 uses
  %i.mj = shl nsw i32 %i.ky, 1                    ; 3 uses
  %i.mk = icmp eq i32 %i.mj, %i.cn
  br i1 %i.mk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.ml = and i16 %i.mg, %i.r
  %i.mm = and i16 %i.mi, %i.s
  %5 = bitcast i16 %i.ml to <16 x i1>
  %6 = bitcast i16 %i.mm to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.mn = or disjoint i32 %i.mj, 1
  %i.mo = icmp eq i32 %i.mn, %i.cn
  br i1 %i.mo, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.h:                                             ; preds = %bb.g
  %i.mp = and i16 %i.mg, %i.t
  %i.mq = and i16 %i.mi, %i.u
  %7 = bitcast i16 %i.mp to <16 x i1>
  %8 = bitcast i16 %i.mq to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.04132.0 = phi <16 x i1> [ %5, %bb.f ], [ %7, %bb.h ], [ %i.mf, %bb.g ] ; 2 uses
  %.sroa.94141.0 = phi <16 x i1> [ %6, %bb.f ], [ %8, %bb.h ], [ %i.mh, %bb.g ] ; 2 uses
  %i.mr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lz, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.ms = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.me, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mr, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mu = fmul <16 x float> %i.mr, %i.mt
  %i.mv = fmul <16 x float> %i.mt, splat (float -5.000000e-01)
  %i.mw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mu, <16 x float> %i.mt, <16 x float> splat (float -3.000000e+00))
  %i.mx = fmul <16 x float> %i.mv, %i.mw
  %i.my = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ms, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mz = fmul <16 x float> %i.ms, %i.my
  %i.na = fmul <16 x float> %i.my, splat (float -5.000000e-01)
  %i.nb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mz, <16 x float> %i.my, <16 x float> splat (float -3.000000e+00))
  %i.nc = fmul <16 x float> %i.na, %i.nb
  %i.nd = sext i32 %i.lg to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.nd
  %.val6934818 = load <8 x float>, ptr %i.ne, align 32, !tbaa !29
  %i.nf = select <16 x i1> %.sroa.04132.0, <16 x float> %i.mx, <16 x float> zeroinitializer ; 5 uses
  %i.ng = select <16 x i1> %.sroa.94141.0, <16 x float> %i.nc, <16 x float> zeroinitializer ; 4 uses
  %i.nh = fmul <16 x float> %i.mr, %i.nf          ; 2 uses
  %i.ni = fmul <16 x float> %i.ms, %i.ng          ; 2 uses
  %i.nj = fmul <16 x float> %i.z, %i.nh           ; 2 uses
  %i.nk = fmul <16 x float> %i.z, %i.ni           ; 2 uses
  %i.nl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.nj, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.nm = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.nk, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.nn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.nl, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.no = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cc, <16 x i32> %i.nl, <16 x i1> splat (i1 true), i32 4)
  %i.np = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.nl, <16 x i1> splat (i1 true), i32 4)
  %i.nq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.nm, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.nr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cc, <16 x i32> %i.nm, <16 x i1> splat (i1 true), i32 4)
  %i.ns = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.nm, <16 x i1> splat (i1 true), i32 4)
  %i.nt = shufflevector <8 x float> %.val6934818, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.nu = fmul <16 x float> %.sroa.03969.0, %i.nt ; 2 uses
  %i.nv = fmul <16 x float> %.sroa.73973.0, %i.nt ; 2 uses
  %i.nw = fmul <16 x float> %i.nf, %i.nf
  %i.nx = fmul <16 x float> %i.ng, %i.ng
  %i.ny = select <16 x i1> %i.le, <16 x float> %i.nf, <16 x float> zeroinitializer ; 2 uses
  %i.nz = select <16 x i1> %.not4646, <16 x float> zeroinitializer, <16 x float> %i.ng ; 2 uses
  %i.oa = sitofp <16 x i32> %i.nl to <16 x float>
  %i.ob = sitofp <16 x i32> %i.nm to <16 x float>
  %i.oc = fsub <16 x float> %i.nj, %i.oa          ; 2 uses
  %i.od = fsub <16 x float> %i.nk, %i.ob          ; 2 uses
  %i.oe = fsub <16 x float> %i.no, %i.nn
  %i.of = fsub <16 x float> %i.nr, %i.nq
  %i.og = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oc, <16 x float> %i.oe, <16 x float> %i.nn) ; 2 uses
  %i.oh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.od, <16 x float> %i.of, <16 x float> %i.nq) ; 2 uses
  %i.oi = fneg <16 x float> %i.og
  %i.oj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oi, <16 x float> %i.nh, <16 x float> %i.ny)
  %i.ok = fneg <16 x float> %i.oh
  %i.ol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ok, <16 x float> %i.ni, <16 x float> %i.nz)
  %i.om = fmul <16 x float> %i.ac, %i.oc
  %i.on = fadd <16 x float> %i.nn, %i.og
  %i.oo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.om, <16 x float> %i.on, <16 x float> %i.np)
  %i.op = fmul <16 x float> %i.ac, %i.od
  %i.oq = fadd <16 x float> %i.nq, %i.oh
  %i.or = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.op, <16 x float> %i.oq, <16 x float> %i.ns)
  %i.os = fmul <16 x float> %i.nu, %i.oj
  %i.ot = fmul <16 x float> %i.nv, %i.ol
  %i.ou = select <16 x i1> %i.le, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.ov = fadd <16 x float> %i.ou, %i.oo
  %i.ow = select <16 x i1> %.not4646, <16 x float> zeroinitializer, <16 x float> %i.al
  %i.ox = fadd <16 x float> %i.ow, %i.or
  %i.oy = fsub <16 x float> %i.ny, %i.ov
  %i.oz = fmul <16 x float> %i.nu, %i.oy
  %i.pa = fsub <16 x float> %i.nz, %i.ox
  %i.pb = fmul <16 x float> %i.nv, %i.pa
  %i.pc = select <16 x i1> %.sroa.04132.0, <16 x float> %i.oz, <16 x float> zeroinitializer ; 2 uses
  %i.pd = select <16 x i1> %.sroa.94141.0, <16 x float> %i.pb, <16 x float> zeroinitializer ; 2 uses
  %i.pe = fcmp olt <16 x float> %i.mr, %i.bb      ; 2 uses
  %i.pf = shl nsw i32 %i.ky, 4
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr [4 x i8], ptr %i.f, i64 %i.pg ; 2 uses
  %.val6944819 = load <8 x float>, ptr %i.ph, align 32, !tbaa !29
  %i.pi = shufflevector <8 x float> %.val6944819, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pj = getelementptr i8, ptr %i.ph, i64 32
  %.val6954820 = load <8 x float>, ptr %i.pj, align 32, !tbaa !29
  %i.pk = shufflevector <8 x float> %.val6954820, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pl = fadd <16 x float> %i.kc, %i.pi          ; 3 uses
  %i.pm = fmul <16 x float> %i.kg, %i.pk          ; 2 uses
  %i.pn = fmul <16 x float> %i.nf, %i.pl          ; 2 uses
  %i.po = fmul <16 x float> %i.pn, %i.pn          ; 3 uses
  %i.pp = fmul <16 x float> %i.po, %i.po
  %i.pq = fmul <16 x float> %i.po, %i.pp
  %i.pr = select <16 x i1> %i.pe, <16 x i1> %i.le, <16 x i1> zeroinitializer ; 2 uses
  %i.ps = select <16 x i1> %i.pr, <16 x float> %i.pq, <16 x float> zeroinitializer ; 2 uses
  %i.pt = fmul <16 x float> %i.pm, %i.ps          ; 3 uses
  %i.pu = fmul <16 x float> %i.ps, %i.pt          ; 2 uses
  %i.pv = fsub <16 x float> %i.pu, %i.pt
  %i.pw = fmul <16 x float> %i.pl, %i.pl          ; 3 uses
  %i.px = fmul <16 x float> %i.pw, %i.pw
  %i.py = fmul <16 x float> %i.pw, %i.px          ; 2 uses
  %i.pz = fmul <16 x float> %i.pm, %i.py          ; 2 uses
  %i.qa = fmul <16 x float> %i.py, %i.pz
  %i.qb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pz, <16 x float> %i.ao, <16 x float> %i.pt)
  %i.qc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qa, <16 x float> %i.ar, <16 x float> %i.pu)
  %i.qd = fmul <16 x float> %i.qb, splat (float f0xBE2AAAAB)
  %i.qe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qc, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.qd)
  %i.qf = select <16 x i1> %i.pe, <16 x float> %i.pv, <16 x float> zeroinitializer
  %i.qg = select <16 x i1> %i.pr, <16 x float> %i.qe, <16 x float> zeroinitializer ; 2 uses
  %i.qh = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.qi = load i32, ptr %i.ca, align 8, !tbaa !103
  %i.qj = sext i32 %i.mj to i64
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qj
  %i.ql = load i32, ptr %i.cb, align 4, !tbaa !104
  %i.qm = load i32, ptr %i.by, align 8, !tbaa !97
  %i.qn = load <2 x i32>, ptr %i.qk, align 4, !tbaa !88 ; 2 uses
  %i.qo = insertelement <2 x i32> poison, i32 %i.qi, i64 0
  %i.qp = shufflevector <2 x i32> %i.qn, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.qq = shufflevector <2 x i32> %i.qn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qr = shufflevector <2 x i32> %i.qo, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.qs = ashr <4 x i32> %i.qq, %i.qr
  %i.qt = shufflevector <4 x i32> %i.qs, <4 x i32> %i.qp, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.qu = insertelement <4 x i32> poison, i32 %i.ql, i64 0
  %i.qv = shufflevector <4 x i32> %i.qu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qw = and <4 x i32> %i.qt, %i.qv
  %i.qx = insertelement <4 x i32> poison, i32 %i.qm, i64 0
  %i.qy = shufflevector <4 x i32> %i.qx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qz = mul nsw <4 x i32> %i.qw, %i.qy          ; 4 uses
  %i.ra = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !94 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !94 ; 4 uses
  %i.re = shufflevector <16 x float> %i.pc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.rf = shufflevector <16 x float> %i.pc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.rg = extractelement <4 x i32> %i.qz, i64 0
  %i.rh = sext i32 %i.rg to i64                   ; 6 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rh ; 2 uses
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rh ; 2 uses
  %i.rk = load <8 x float>, ptr %i.ri, align 32, !tbaa !29
  %i.rl = fadd <8 x float> %i.re, %i.rk
  store <8 x float> %i.rl, ptr %i.ri, align 32, !tbaa !29
  %i.rm = load <8 x float>, ptr %i.rj, align 32, !tbaa !29
  %i.rn = fadd <8 x float> %i.rm, %i.rf
  store <8 x float> %i.rn, ptr %i.rj, align 32, !tbaa !29
  %i.ro = extractelement <4 x i32> %i.qz, i64 1
  %i.rp = sext i32 %i.ro to i64                   ; 6 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32 ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rp
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 2 uses
  %i.ru = load <8 x float>, ptr %i.rr, align 32, !tbaa !29
  %i.rv = fadd <8 x float> %i.re, %i.ru
  store <8 x float> %i.rv, ptr %i.rr, align 32, !tbaa !29
  %i.rw = load <8 x float>, ptr %i.rt, align 32, !tbaa !29
  %i.rx = fadd <8 x float> %i.rw, %i.rf
  store <8 x float> %i.rx, ptr %i.rt, align 32, !tbaa !29
  %i.ry = extractelement <4 x i32> %i.qz, i64 2
  %i.rz = sext i32 %i.ry to i64                   ; 6 uses
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 64 ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rz
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 64 ; 2 uses
  %i.se = load <8 x float>, ptr %i.sb, align 32, !tbaa !29
  %i.sf = fadd <8 x float> %i.re, %i.se
  store <8 x float> %i.sf, ptr %i.sb, align 32, !tbaa !29
  %i.sg = load <8 x float>, ptr %i.sd, align 32, !tbaa !29
  %i.sh = fadd <8 x float> %i.sg, %i.rf
  store <8 x float> %i.sh, ptr %i.sd, align 32, !tbaa !29
  %i.si = extractelement <4 x i32> %i.qz, i64 3
  %i.sj = sext i32 %i.si to i64                   ; 6 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 96 ; 2 uses
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.sj
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 96 ; 2 uses
  %i.so = load <8 x float>, ptr %i.sl, align 32, !tbaa !29
  %i.sp = fadd <8 x float> %i.re, %i.so
  store <8 x float> %i.sp, ptr %i.sl, align 32, !tbaa !29
  %i.sq = load <8 x float>, ptr %i.sn, align 32, !tbaa !29
  %i.sr = fadd <8 x float> %i.sq, %i.rf
  store <8 x float> %i.sr, ptr %i.sn, align 32, !tbaa !29
  %i.ss = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !94 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !94 ; 4 uses
  %i.sx = shufflevector <16 x float> %i.pd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sy = shufflevector <16 x float> %i.pd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rh ; 2 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rh ; 2 uses
  %i.tb = load <8 x float>, ptr %i.sz, align 32, !tbaa !29
  %i.tc = fadd <8 x float> %i.sx, %i.tb
  store <8 x float> %i.tc, ptr %i.sz, align 32, !tbaa !29
  %i.td = load <8 x float>, ptr %i.ta, align 32, !tbaa !29
  %i.te = fadd <8 x float> %i.td, %i.sy
  store <8 x float> %i.te, ptr %i.ta, align 32, !tbaa !29
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rp
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32 ; 2 uses
  %i.th = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rp
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32 ; 2 uses
  %i.tj = load <8 x float>, ptr %i.tg, align 32, !tbaa !29
  %i.tk = fadd <8 x float> %i.sx, %i.tj
  store <8 x float> %i.tk, ptr %i.tg, align 32, !tbaa !29
  %i.tl = load <8 x float>, ptr %i.ti, align 32, !tbaa !29
  %i.tm = fadd <8 x float> %i.tl, %i.sy
  store <8 x float> %i.tm, ptr %i.ti, align 32, !tbaa !29
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rz
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 64 ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rz
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 64 ; 2 uses
  %i.tr = load <8 x float>, ptr %i.to, align 32, !tbaa !29
  %i.ts = fadd <8 x float> %i.sx, %i.tr
  store <8 x float> %i.ts, ptr %i.to, align 32, !tbaa !29
  %i.tt = load <8 x float>, ptr %i.tq, align 32, !tbaa !29
  %i.tu = fadd <8 x float> %i.tt, %i.sy
  store <8 x float> %i.tu, ptr %i.tq, align 32, !tbaa !29
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.sj
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 96 ; 2 uses
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.sj
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 96 ; 2 uses
  %i.tz = load <8 x float>, ptr %i.tw, align 32, !tbaa !29
  %i.ua = fadd <8 x float> %i.sx, %i.tz
  store <8 x float> %i.ua, ptr %i.tw, align 32, !tbaa !29
  %i.ub = load <8 x float>, ptr %i.ty, align 32, !tbaa !29
  %i.uc = fadd <8 x float> %i.ub, %i.sy
  store <8 x float> %i.uc, ptr %i.ty, align 32, !tbaa !29
  %i.ud = load ptr, ptr %i.bw, align 8, !tbaa !93 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !94 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !94 ; 4 uses
  %i.uh = shufflevector <16 x float> %i.qg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ui = shufflevector <16 x float> %i.qg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rh ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rh ; 2 uses
  %i.ul = load <8 x float>, ptr %i.uj, align 32, !tbaa !29
  %i.um = fadd <8 x float> %i.uh, %i.ul
  store <8 x float> %i.um, ptr %i.uj, align 32, !tbaa !29
  %i.un = load <8 x float>, ptr %i.uk, align 32, !tbaa !29
  %i.uo = fadd <8 x float> %i.un, %i.ui
  store <8 x float> %i.uo, ptr %i.uk, align 32, !tbaa !29
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rp
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 32 ; 2 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rp
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 32 ; 2 uses
  %i.ut = load <8 x float>, ptr %i.uq, align 32, !tbaa !29
  %i.uu = fadd <8 x float> %i.uh, %i.ut
  store <8 x float> %i.uu, ptr %i.uq, align 32, !tbaa !29
  %i.uv = load <8 x float>, ptr %i.us, align 32, !tbaa !29
  %i.uw = fadd <8 x float> %i.uv, %i.ui
  store <8 x float> %i.uw, ptr %i.us, align 32, !tbaa !29
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rz
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 64 ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rz
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 64 ; 2 uses
  %i.vb = load <8 x float>, ptr %i.uy, align 32, !tbaa !29
  %i.vc = fadd <8 x float> %i.uh, %i.vb
  store <8 x float> %i.vc, ptr %i.uy, align 32, !tbaa !29
  %i.vd = load <8 x float>, ptr %i.va, align 32, !tbaa !29
  %i.ve = fadd <8 x float> %i.vd, %i.ui
  store <8 x float> %i.ve, ptr %i.va, align 32, !tbaa !29
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.sj
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 96 ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.sj
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 96 ; 2 uses
  %i.vj = load <8 x float>, ptr %i.vg, align 32, !tbaa !29
  %i.vk = fadd <8 x float> %i.uh, %i.vj
  store <8 x float> %i.vk, ptr %i.vg, align 32, !tbaa !29
  %i.vl = load <8 x float>, ptr %i.vi, align 32, !tbaa !29
  %i.vm = fadd <8 x float> %i.vl, %i.ui
  store <8 x float> %i.vm, ptr %i.vi, align 32, !tbaa !29
  %i.vn = fadd <16 x float> %i.os, %i.qf
  %i.vo = fmul <16 x float> %i.nw, %i.vn          ; 3 uses
  %i.vp = fmul <16 x float> %i.nx, %i.ot          ; 3 uses
  %i.vq = fmul <16 x float> %i.lp, %i.vo          ; 2 uses
  %i.vr = fmul <16 x float> %i.lq, %i.vp          ; 2 uses
  %i.vs = fmul <16 x float> %i.lr, %i.vo          ; 2 uses
  %i.vt = fmul <16 x float> %i.ls, %i.vp          ; 2 uses
  %i.vu = fmul <16 x float> %i.lt, %i.vo          ; 2 uses
  %i.vv = fmul <16 x float> %i.lu, %i.vp          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4359.preheader
  %i.aef = shufflevector <16 x float> %i.aal, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aeg = shufflevector <16 x float> %i.aal, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %i.aec, i64 %i.acp ; 2 uses
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.acp ; 2 uses
  %i.aej = load <8 x float>, ptr %i.aeh, align 32, !tbaa !29
  %i.aek = fadd <8 x float> %i.aef, %i.aej
  store <8 x float> %i.aek, ptr %i.aeh, align 32, !tbaa !29
  %i.ael = load <8 x float>, ptr %i.aei, align 32, !tbaa !29
  %i.aem = fadd <8 x float> %i.ael, %i.aeg
  store <8 x float> %i.aem, ptr %i.aei, align 32, !tbaa !29
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.aec, i64 %i.acx
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 32 ; 2 uses
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.acx
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 32 ; 2 uses
  %i.aer = load <8 x float>, ptr %i.aeo, align 32, !tbaa !29
  %i.aes = fadd <8 x float> %i.aef, %i.aer
  store <8 x float> %i.aes, ptr %i.aeo, align 32, !tbaa !29
  %i.aet = load <8 x float>, ptr %i.aeq, align 32, !tbaa !29
  %i.aeu = fadd <8 x float> %i.aet, %i.aeg
  store <8 x float> %i.aeu, ptr %i.aeq, align 32, !tbaa !29
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aec, i64 %i.adh
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 64 ; 2 uses
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.adh
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 64 ; 2 uses
  %i.aez = load <8 x float>, ptr %i.aew, align 32, !tbaa !29
  %i.afa = fadd <8 x float> %i.aef, %i.aez
  store <8 x float> %i.afa, ptr %i.aew, align 32, !tbaa !29
  %i.afb = load <8 x float>, ptr %i.aey, align 32, !tbaa !29
  %i.afc = fadd <8 x float> %i.afb, %i.aeg
  store <8 x float> %i.afc, ptr %i.aey, align 32, !tbaa !29
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.aec, i64 %i.adr
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 96 ; 2 uses
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.aee, i64 %i.adr
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 96 ; 2 uses
  %i.afh = load <8 x float>, ptr %i.afe, align 32, !tbaa !29
  %i.afi = fadd <8 x float> %i.aef, %i.afh
  store <8 x float> %i.afi, ptr %i.afe, align 32, !tbaa !29
  %i.afj = load <8 x float>, ptr %i.afg, align 32, !tbaa !29
  %i.afk = fadd <8 x float> %i.afj, %i.aeg
  store <8 x float> %i.afk, ptr %i.afg, align 32, !tbaa !29
  %i.afl = load ptr, ptr %i.bw, align 8, !tbaa !93 ; 2 uses
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !94 ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !94 ; 4 uses
  %i.afp = shufflevector <16 x float> %i.abn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afq = shufflevector <16 x float> %i.abn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.acp ; 2 uses
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.acp ; 2 uses
  %i.aft = load <8 x float>, ptr %i.afr, align 32, !tbaa !29
  %i.afu = fadd <8 x float> %i.afp, %i.aft
  store <8 x float> %i.afu, ptr %i.afr, align 32, !tbaa !29
  %i.afv = load <8 x float>, ptr %i.afs, align 32, !tbaa !29
  %i.afw = fadd <8 x float> %i.afv, %i.afq
  store <8 x float> %i.afw, ptr %i.afs, align 32, !tbaa !29
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.acx
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 32 ; 2 uses
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.acx
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 32 ; 2 uses
  %i.agb = load <8 x float>, ptr %i.afy, align 32, !tbaa !29
  %i.agc = fadd <8 x float> %i.afp, %i.agb
  store <8 x float> %i.agc, ptr %i.afy, align 32, !tbaa !29
  %i.agd = load <8 x float>, ptr %i.aga, align 32, !tbaa !29
  %i.age = fadd <8 x float> %i.agd, %i.afq
  store <8 x float> %i.age, ptr %i.aga, align 32, !tbaa !29
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.adh
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 64 ; 2 uses
  %i.agh = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.adh
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 64 ; 2 uses
  %i.agj = load <8 x float>, ptr %i.agg, align 32, !tbaa !29
  %i.agk = fadd <8 x float> %i.afp, %i.agj
  store <8 x float> %i.agk, ptr %i.agg, align 32, !tbaa !29
  %i.agl = load <8 x float>, ptr %i.agi, align 32, !tbaa !29
  %i.agm = fadd <8 x float> %i.agl, %i.afq
  store <8 x float> %i.agm, ptr %i.agi, align 32, !tbaa !29
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.afm, i64 %i.adr
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 96 ; 2 uses
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.afo, i64 %i.adr
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 96 ; 2 uses
  %i.agr = load <8 x float>, ptr %i.ago, align 32, !tbaa !29
  %i.ags = fadd <8 x float> %i.afp, %i.agr
  store <8 x float> %i.ags, ptr %i.ago, align 32, !tbaa !29
  %i.agt = load <8 x float>, ptr %i.agq, align 32, !tbaa !29
  %i.agu = fadd <8 x float> %i.agt, %i.afq
  store <8 x float> %i.agu, ptr %i.agq, align 32, !tbaa !29
  %i.agv = fadd <16 x float> %i.aac, %i.abm
  %i.agw = fmul <16 x float> %i.zi, %i.agv        ; 3 uses
  %i.agx = fmul <16 x float> %i.zj, %i.aad        ; 3 uses
  %i.agy = fmul <16 x float> %i.xl, %i.agw        ; 2 uses
  %i.agz = fmul <16 x float> %i.xm, %i.agx        ; 2 uses
  %i.aha = fmul <16 x float> %i.xn, %i.agw        ; 2 uses
  %i.ahb = fmul <16 x float> %i.xo, %i.agx        ; 2 uses
  %i.ahc = fmul <16 x float> %i.xp, %i.agw        ; 2 uses
  %i.ahd = fmul <16 x float> %i.xq, %i.agx        ; 2 uses
  %i.ahe = fadd <16 x float> %.sroa.03853.14473, %i.agy ; 2 uses
  %i.ahf = fadd <16 x float> %.sroa.163860.14474, %i.agz ; 2 uses
  %i.ahg = fadd <16 x float> %.sroa.03835.14471, %i.aha ; 2 uses
  %i.ahh = fadd <16 x float> %.sroa.163842.14472, %i.ahb ; 2 uses
  %i.ahi = fadd <16 x float> %.sroa.03818.14469, %i.ahc ; 2 uses
  %i.ahj = fadd <16 x float> %.sroa.16.14470, %i.ahd ; 2 uses
  %i.ahk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xe ; 4 uses
  %i.ahl = fadd <16 x float> %i.agz, %i.agy       ; 2 uses
  %i.ahm = fadd <16 x float> %i.ahb, %i.aha       ; 2 uses
  %i.ahn = fadd <16 x float> %i.ahd, %i.ahc       ; 2 uses
  %i.aho = load <8 x float>, ptr %i.ahk, align 32, !tbaa !29
  %i.ahp = shufflevector <16 x float> %i.ahl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahq = shufflevector <16 x float> %i.ahl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahr = fadd <8 x float> %i.ahp, %i.ahq
  %i.ahs = fsub <8 x float> %i.aho, %i.ahr
  store <8 x float> %i.ahs, ptr %i.ahk, align 32, !tbaa !29
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32 ; 2 uses
  %i.ahu = load <8 x float>, ptr %i.aht, align 32, !tbaa !29
  %i.ahv = shufflevector <16 x float> %i.ahm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahw = shufflevector <16 x float> %i.ahm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahx = fadd <8 x float> %i.ahv, %i.ahw
  %i.ahy = fsub <8 x float> %i.ahu, %i.ahx
  store <8 x float> %i.ahy, ptr %i.aht, align 32, !tbaa !29
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64 ; 2 uses
  %i.aia = load <8 x float>, ptr %i.ahz, align 32, !tbaa !29
  %i.aib = shufflevector <16 x float> %i.ahn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aic = shufflevector <16 x float> %i.ahn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aid = fadd <8 x float> %i.aib, %i.aic
  %i.aie = fsub <8 x float> %i.aia, %i.aid
  store <8 x float> %i.aie, ptr %i.ahz, align 32, !tbaa !29
  %indvars.iv.next4561 = add nsw i64 %indvars.iv4560, 1 ; 2 uses
  %exitcond4564.not = icmp eq i64 %indvars.iv.next4561, %wide.trip.count4563
  br i1 %exitcond4564.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575, !llvm.loop !18

bb.i:                                             ; preds = %bb.d
  br i1 %i.dn, label %.preheader4354, label %.preheader4356

.preheader4356:                                   ; preds = %bb.i
  br i1 %i.kr, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4356
  %i.aif = sext i32 %i.ci to i64
  %wide.trip.count = sext i32 %i.ck to i64
  br label %bb.n

.preheader4354:                                   ; preds = %bb.i
  br i1 %i.kr, label %.lr.ph4409, label %.critedge3

.lr.ph4409:                                       ; preds = %.preheader4354
  %i.aig = sext i32 %i.ci to i64
  %wide.trip.count4527 = sext i32 %i.ck to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph4409, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4524 = phi i64 [ %i.aig, %.lr.ph4409 ], [ %indvars.iv.next4525, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163860.24407 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03853.24406 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163842.24405 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03835.24404 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.24403 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03818.24402 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.aih = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.aih, i64 %indvars.iv4524
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 4
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !88
  %.not551 = icmp eq i32 %i.aik, -1
  br i1 %.not551, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556: ; preds = %bb.j
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv4524 ; 2 uses
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !96 ; 4 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !102
  %i.aip = insertelement <16 x i32> poison, i32 %i.aio, i64 0
  %i.aiq = shufflevector <16 x i32> %i.aip, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.air = and <16 x i32> %.sroa.04583.0.copyload, %i.aiq
  %i.ais = icmp ne <16 x i32> %i.air, zeroinitializer ; 3 uses
  %i.ait = and <16 x i32> %.sroa.6.0.copyload, %i.aiq
  %i.aiu = icmp ne <16 x i32> %i.ait, zeroinitializer ; 3 uses
  %i.aiv = shl nsw i32 %i.aim, 3
  %i.aiw = mul nsw i32 %i.aim, 24
  %i.aix = sext i32 %i.aiw to i64                 ; 2 uses
  %i.aiy = getelementptr [4 x i8], ptr %i.bf, i64 %i.aix ; 3 uses
  %.val7024803 = load <8 x float>, ptr %i.aiy, align 32, !tbaa !29
  %i.aiz = shufflevector <8 x float> %.val7024803, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiy, i64 32
  %.val7034804 = load <8 x float>, ptr %i.aja, align 32, !tbaa !29
  %i.ajb = shufflevector <8 x float> %.val7034804, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.aiy, i64 64
  %.val7044805 = load <8 x float>, ptr %i.ajc, align 32, !tbaa !29
  %i.ajd = shufflevector <8 x float> %.val7044805, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aje = fsub <16 x float> %i.ic, %i.aiz        ; 3 uses
  %i.ajf = fsub <16 x float> %i.ii, %i.aiz        ; 3 uses
  %i.ajg = fsub <16 x float> %i.ip, %i.ajb        ; 3 uses
  %i.ajh = fsub <16 x float> %i.iv, %i.ajb        ; 3 uses
  %i.aji = fsub <16 x float> %i.jc, %i.ajd        ; 3 uses
  %i.ajj = fsub <16 x float> %i.ji, %i.ajd        ; 3 uses
  %i.ajk = fmul <16 x float> %i.aje, %i.aje
  %i.ajl = fmul <16 x float> %i.ajg, %i.ajg
  %i.ajm = fadd <16 x float> %i.ajk, %i.ajl
  %i.ajn = fmul <16 x float> %i.aji, %i.aji
  %i.ajo = fadd <16 x float> %i.ajm, %i.ajn       ; 2 uses
  %i.ajp = fmul <16 x float> %i.ajf, %i.ajf
  %i.ajq = fmul <16 x float> %i.ajh, %i.ajh
  %i.ajr = fadd <16 x float> %i.ajp, %i.ajq
  %i.ajs = fmul <16 x float> %i.ajj, %i.ajj
  %i.ajt = fadd <16 x float> %i.ajr, %i.ajs       ; 2 uses
  %i.aju = fcmp olt <16 x float> %i.ajo, %i.aw    ; 2 uses
  %i.ajv = bitcast <16 x i1> %i.aju to i16        ; 2 uses
  %i.ajw = fcmp olt <16 x float> %i.ajt, %i.aw    ; 2 uses
  %i.ajx = bitcast <16 x i1> %i.ajw to i16        ; 2 uses
  %i.ajy = shl nsw i32 %i.aim, 1                  ; 3 uses
  %i.ajz = icmp eq i32 %i.ajy, %i.cn
  br i1 %i.ajz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.aka = and i16 %i.ajv, %i.r
  %i.akb = and i16 %i.ajx, %i.s
  %9 = bitcast i16 %i.aka to <16 x i1>
  %10 = bitcast i16 %i.akb to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.akc = or disjoint i32 %i.ajy, 1
  %i.akd = icmp eq i32 %i.akc, %i.cn
  br i1 %i.akd, label %bb.m, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %bb.l
  %i.ake = and i16 %i.ajv, %i.t
  %i.akf = and i16 %i.ajx, %i.u
  %11 = bitcast i16 %i.ake to <16 x i1>
  %12 = bitcast i16 %i.akf to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.04239.0 = phi <16 x i1> [ %9, %bb.k ], [ %11, %bb.m ], [ %i.aju, %bb.l ] ; 2 uses
  %.sroa.94248.0 = phi <16 x i1> [ %10, %bb.k ], [ %12, %bb.m ], [ %i.ajw, %bb.l ] ; 2 uses
  %i.akg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ajo, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.akh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ajt, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.aki = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.akg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.akj = fmul <16 x float> %i.akg, %i.aki
  %i.akk = fmul <16 x float> %i.aki, splat (float -5.000000e-01)
  %i.akl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.akj, <16 x float> %i.aki, <16 x float> splat (float -3.000000e+00))
  %i.akm = fmul <16 x float> %i.akk, %i.akl
  %i.akn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.akh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ako = fmul <16 x float> %i.akh, %i.akn
  %i.akp = fmul <16 x float> %i.akn, splat (float -5.000000e-01)
  %i.akq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ako, <16 x float> %i.akn, <16 x float> splat (float -3.000000e+00))
  %i.akr = fmul <16 x float> %i.akp, %i.akq
  %i.aks = sext i32 %i.aiv to i64
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.aks
  %.val7054806 = load <8 x float>, ptr %i.akt, align 32, !tbaa !29
  %i.aku = select <16 x i1> %.sroa.04239.0, <16 x float> %i.akm, <16 x float> zeroinitializer ; 5 uses
  %i.akv = select <16 x i1> %.sroa.94248.0, <16 x float> %i.akr, <16 x float> zeroinitializer ; 5 uses
  %i.akw = fmul <16 x float> %i.akg, %i.aku       ; 2 uses
  %i.akx = fmul <16 x float> %i.akh, %i.akv       ; 2 uses
  %i.aky = fmul <16 x float> %i.z, %i.akw         ; 2 uses
  %i.akz = fmul <16 x float> %i.z, %i.akx         ; 2 uses
  %i.ala = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aky, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.alb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.akz, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.alc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.ala, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ald = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cc, <16 x i32> %i.ala, <16 x i1> splat (i1 true), i32 4)
  %i.ale = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.ala, <16 x i1> splat (i1 true), i32 4)
  %i.alf = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.alb, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.alg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cc, <16 x i32> %i.alb, <16 x i1> splat (i1 true), i32 4)
  %i.alh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.alb, <16 x i1> splat (i1 true), i32 4)
  %i.ali = shufflevector <8 x float> %.val7054806, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alj = fmul <16 x float> %.sroa.03969.0, %i.ali ; 2 uses
  %i.alk = fmul <16 x float> %.sroa.73973.0, %i.ali ; 2 uses
  %i.all = fmul <16 x float> %i.aku, %i.aku
  %i.alm = fmul <16 x float> %i.akv, %i.akv
  %i.aln = select <16 x i1> %i.ais, <16 x float> %i.aku, <16 x float> zeroinitializer ; 2 uses
  %i.alo = select <16 x i1> %i.aiu, <16 x float> %i.akv, <16 x float> zeroinitializer ; 2 uses
  %i.alp = sitofp <16 x i32> %i.ala to <16 x float>
  %i.alq = sitofp <16 x i32> %i.alb to <16 x float>
  %i.alr = fsub <16 x float> %i.aky, %i.alp       ; 2 uses
  %i.als = fsub <16 x float> %i.akz, %i.alq       ; 2 uses
  %i.alt = fsub <16 x float> %i.ald, %i.alc
  %i.alu = fsub <16 x float> %i.alg, %i.alf
  %i.alv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alr, <16 x float> %i.alt, <16 x float> %i.alc) ; 2 uses
  %i.alw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.als, <16 x float> %i.alu, <16 x float> %i.alf) ; 2 uses
  %i.alx = fneg <16 x float> %i.alv
  %i.aly = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alx, <16 x float> %i.akw, <16 x float> %i.aln)
  %i.alz = fneg <16 x float> %i.alw
  %i.ama = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alz, <16 x float> %i.akx, <16 x float> %i.alo)
  %i.amb = fmul <16 x float> %i.ac, %i.alr
  %i.amc = fadd <16 x float> %i.alc, %i.alv
  %i.amd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amb, <16 x float> %i.amc, <16 x float> %i.ale)
  %i.ame = fmul <16 x float> %i.ac, %i.als
  %i.amf = fadd <16 x float> %i.alf, %i.alw
  %i.amg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ame, <16 x float> %i.amf, <16 x float> %i.alh)
  %i.amh = fmul <16 x float> %i.alj, %i.aly
  %i.ami = fmul <16 x float> %i.alk, %i.ama
  %i.amj = select <16 x i1> %i.ais, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.amk = fadd <16 x float> %i.amj, %i.amd
  %i.aml = select <16 x i1> %i.aiu, <16 x float> %i.al, <16 x float> zeroinitializer
  %i.amm = fadd <16 x float> %i.aml, %i.amg
  %i.amn = fsub <16 x float> %i.aln, %i.amk
  %i.amo = fmul <16 x float> %i.alj, %i.amn
  %i.amp = fsub <16 x float> %i.alo, %i.amm
  %i.amq = fmul <16 x float> %i.alk, %i.amp
  %i.amr = select <16 x i1> %.sroa.04239.0, <16 x float> %i.amo, <16 x float> zeroinitializer ; 2 uses
  %i.ams = select <16 x i1> %.sroa.94248.0, <16 x float> %i.amq, <16 x float> zeroinitializer ; 2 uses
  %i.amt = fcmp olt <16 x float> %i.akg, %i.bb    ; 2 uses
  %i.amu = fcmp olt <16 x float> %i.akh, %i.bb    ; 2 uses
  %i.amv = shl nsw i32 %i.aim, 4
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr [4 x i8], ptr %i.f, i64 %i.amw ; 2 uses
  %.val7064807 = load <8 x float>, ptr %i.amx, align 32, !tbaa !29
  %i.amy = shufflevector <8 x float> %.val7064807, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amz = getelementptr i8, ptr %i.amx, i64 32
  %.val7074808 = load <8 x float>, ptr %i.amz, align 32, !tbaa !29
  %i.ana = shufflevector <8 x float> %.val7074808, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anb = fadd <16 x float> %i.kc, %i.amy        ; 3 uses
  %i.anc = fadd <16 x float> %i.kl, %i.amy        ; 3 uses
  %i.and = fmul <16 x float> %i.kg, %i.ana        ; 2 uses
  %i.ane = fmul <16 x float> %i.kq, %i.ana        ; 2 uses
  %i.anf = fmul <16 x float> %i.aku, %i.anb       ; 2 uses
  %i.ang = fmul <16 x float> %i.akv, %i.anc       ; 2 uses
  %i.anh = fmul <16 x float> %i.anf, %i.anf       ; 3 uses
  %i.ani = fmul <16 x float> %i.ang, %i.ang       ; 3 uses
  %i.anj = fmul <16 x float> %i.anh, %i.anh
  %i.ank = fmul <16 x float> %i.anh, %i.anj
  %i.anl = fmul <16 x float> %i.ani, %i.ani
  %i.anm = fmul <16 x float> %i.ani, %i.anl
  %i.ann = select <16 x i1> %i.amt, <16 x i1> %i.ais, <16 x i1> zeroinitializer ; 2 uses
  %i.ano = select <16 x i1> %i.ann, <16 x float> %i.ank, <16 x float> zeroinitializer ; 2 uses
  %i.anp = select <16 x i1> %i.amu, <16 x i1> %i.aiu, <16 x i1> zeroinitializer ; 2 uses
  %i.anq = select <16 x i1> %i.anp, <16 x float> %i.anm, <16 x float> zeroinitializer ; 2 uses
  %i.anr = fmul <16 x float> %i.and, %i.ano       ; 3 uses
  %i.ans = fmul <16 x float> %i.ane, %i.anq       ; 3 uses
  %i.ant = fmul <16 x float> %i.ano, %i.anr       ; 2 uses
  %i.anu = fmul <16 x float> %i.anq, %i.ans       ; 2 uses
  %i.anv = fsub <16 x float> %i.ant, %i.anr
  %i.anw = fsub <16 x float> %i.anu, %i.ans
  %i.anx = fmul <16 x float> %i.anb, %i.anb       ; 3 uses
  %i.any = fmul <16 x float> %i.anc, %i.anc       ; 3 uses
  %i.anz = fmul <16 x float> %i.anx, %i.anx
  %i.aoa = fmul <16 x float> %i.anx, %i.anz       ; 2 uses
  %i.aob = fmul <16 x float> %i.any, %i.any
  %i.aoc = fmul <16 x float> %i.any, %i.aob       ; 2 uses
  %i.aod = fmul <16 x float> %i.and, %i.aoa       ; 2 uses
  %i.aoe = fmul <16 x float> %i.ane, %i.aoc       ; 2 uses
  %i.aof = fmul <16 x float> %i.aoa, %i.aod
  %i.aog = fmul <16 x float> %i.aoc, %i.aoe
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> %i.ao, <16 x float> %i.anr)
  %i.aoi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> %i.ao, <16 x float> %i.ans)
  %i.aoj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aof, <16 x float> %i.ar, <16 x float> %i.ant)
  %i.aok = fmul <16 x float> %i.aoh, splat (float f0xBE2AAAAB)
  %i.aol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aok)
  %i.aom = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> %i.ar, <16 x float> %i.anu)
  %i.aon = fmul <16 x float> %i.aoi, splat (float f0xBE2AAAAB)
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aon)
  %i.aop = select <16 x i1> %i.amt, <16 x float> %i.anv, <16 x float> zeroinitializer
  %i.aoq = select <16 x i1> %i.amu, <16 x float> %i.anw, <16 x float> zeroinitializer
  %i.aor = select <16 x i1> %i.ann, <16 x float> %i.aol, <16 x float> zeroinitializer ; 2 uses
  %i.aos = select <16 x i1> %i.anp, <16 x float> %i.aoo, <16 x float> zeroinitializer ; 2 uses
  %i.aot = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.aou = load i32, ptr %i.ca, align 8, !tbaa !103
  %i.aov = sext i32 %i.ajy to i64
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.aot, i64 %i.aov
  %i.aox = load i32, ptr %i.cb, align 4, !tbaa !104
  %i.aoy = load i32, ptr %i.by, align 8, !tbaa !97
  %i.aoz = load <2 x i32>, ptr %i.aow, align 4, !tbaa !88 ; 2 uses
  %i.apa = insertelement <2 x i32> poison, i32 %i.aou, i64 0
  %i.apb = shufflevector <2 x i32> %i.aoz, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.apc = shufflevector <2 x i32> %i.aoz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.apd = shufflevector <2 x i32> %i.apa, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ape = ashr <4 x i32> %i.apc, %i.apd
  %i.apf = shufflevector <4 x i32> %i.ape, <4 x i32> %i.apb, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.apg = insertelement <4 x i32> poison, i32 %i.aox, i64 0
  %i.aph = shufflevector <4 x i32> %i.apg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.api = and <4 x i32> %i.apf, %i.aph
  %i.apj = insertelement <4 x i32> poison, i32 %i.aoy, i64 0
  %i.apk = shufflevector <4 x i32> %i.apj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apl = mul nsw <4 x i32> %i.api, %i.apk       ; 4 uses
  %i.apm = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !94 ; 4 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !94 ; 4 uses
  %i.apq = shufflevector <16 x float> %i.amr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.apr = shufflevector <16 x float> %i.amr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aps = extractelement <4 x i32> %i.apl, i64 0
  %i.apt = sext i32 %i.aps to i64                 ; 8 uses
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.apt ; 2 uses
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.app, i64 %i.apt ; 2 uses
  %i.apw = load <8 x float>, ptr %i.apu, align 32, !tbaa !29
  %i.apx = fadd <8 x float> %i.apq, %i.apw
  store <8 x float> %i.apx, ptr %i.apu, align 32, !tbaa !29
  %i.apy = load <8 x float>, ptr %i.apv, align 32, !tbaa !29
  %i.apz = fadd <8 x float> %i.apy, %i.apr
  store <8 x float> %i.apz, ptr %i.apv, align 32, !tbaa !29
  %i.aqa = extractelement <4 x i32> %i.apl, i64 1
  %i.aqb = sext i32 %i.aqa to i64                 ; 8 uses
  %i.aqc = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32 ; 2 uses
  %i.aqe = getelementptr inbounds [4 x i8], ptr %i.app, i64 %i.aqb
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 32 ; 2 uses
  %i.aqg = load <8 x float>, ptr %i.aqd, align 32, !tbaa !29
  %i.aqh = fadd <8 x float> %i.apq, %i.aqg
  store <8 x float> %i.aqh, ptr %i.aqd, align 32, !tbaa !29
  %i.aqi = load <8 x float>, ptr %i.aqf, align 32, !tbaa !29
  %i.aqj = fadd <8 x float> %i.aqi, %i.apr
  store <8 x float> %i.aqj, ptr %i.aqf, align 32, !tbaa !29
  %i.aqk = extractelement <4 x i32> %i.apl, i64 2
  %i.aql = sext i32 %i.aqk to i64                 ; 8 uses
  %i.aqm = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.aql
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 64 ; 2 uses
  %i.aqo = getelementptr inbounds [4 x i8], ptr %i.app, i64 %i.aql
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 64 ; 2 uses
  %i.aqq = load <8 x float>, ptr %i.aqn, align 32, !tbaa !29
  %i.aqr = fadd <8 x float> %i.apq, %i.aqq
  store <8 x float> %i.aqr, ptr %i.aqn, align 32, !tbaa !29
  %i.aqs = load <8 x float>, ptr %i.aqp, align 32, !tbaa !29
  %i.aqt = fadd <8 x float> %i.aqs, %i.apr
  store <8 x float> %i.aqt, ptr %i.aqp, align 32, !tbaa !29
  %i.aqu = extractelement <4 x i32> %i.apl, i64 3
  %i.aqv = sext i32 %i.aqu to i64                 ; 8 uses
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.apn, i64 %i.aqv
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 96 ; 2 uses
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.app, i64 %i.aqv
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 96 ; 2 uses
  %i.ara = load <8 x float>, ptr %i.aqx, align 32, !tbaa !29
  %i.arb = fadd <8 x float> %i.apq, %i.ara
  store <8 x float> %i.arb, ptr %i.aqx, align 32, !tbaa !29
  %i.arc = load <8 x float>, ptr %i.aqz, align 32, !tbaa !29
  %i.ard = fadd <8 x float> %i.arc, %i.apr
  store <8 x float> %i.ard, ptr %i.aqz, align 32, !tbaa !29
  %i.are = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !94 ; 4 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 24
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !94 ; 4 uses
  %i.arj = shufflevector <16 x float> %i.ams, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ark = shufflevector <16 x float> %i.ams, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.arg, i64 %i.apt ; 2 uses
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.apt ; 2 uses
  %i.arn = load <8 x float>, ptr %i.arl, align 32, !tbaa !29
  %i.aro = fadd <8 x float> %i.arj, %i.arn
  store <8 x float> %i.aro, ptr %i.arl, align 32, !tbaa !29
  %i.arp = load <8 x float>, ptr %i.arm, align 32, !tbaa !29
  %i.arq = fadd <8 x float> %i.arp, %i.ark
  store <8 x float> %i.arq, ptr %i.arm, align 32, !tbaa !29
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.arg, i64 %i.aqb
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 32 ; 2 uses
  %i.art = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.aqb
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 32 ; 2 uses
  %i.arv = load <8 x float>, ptr %i.ars, align 32, !tbaa !29
  %i.arw = fadd <8 x float> %i.arj, %i.arv
  store <8 x float> %i.arw, ptr %i.ars, align 32, !tbaa !29
  %i.arx = load <8 x float>, ptr %i.aru, align 32, !tbaa !29
  %i.ary = fadd <8 x float> %i.arx, %i.ark
  store <8 x float> %i.ary, ptr %i.aru, align 32, !tbaa !29
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.arg, i64 %i.aql
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 64 ; 2 uses
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.aql
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 64 ; 2 uses
  %i.asd = load <8 x float>, ptr %i.asa, align 32, !tbaa !29
  %i.ase = fadd <8 x float> %i.arj, %i.asd
  store <8 x float> %i.ase, ptr %i.asa, align 32, !tbaa !29
  %i.asf = load <8 x float>, ptr %i.asc, align 32, !tbaa !29
  %i.asg = fadd <8 x float> %i.asf, %i.ark
  store <8 x float> %i.asg, ptr %i.asc, align 32, !tbaa !29
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.arg, i64 %i.aqv
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 96 ; 2 uses
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.aqv
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 96 ; 2 uses
  %i.asl = load <8 x float>, ptr %i.asi, align 32, !tbaa !29
  %i.asm = fadd <8 x float> %i.arj, %i.asl
  store <8 x float> %i.asm, ptr %i.asi, align 32, !tbaa !29
  %i.asn = load <8 x float>, ptr %i.ask, align 32, !tbaa !29
  %i.aso = fadd <8 x float> %i.asn, %i.ark
  store <8 x float> %i.aso, ptr %i.ask, align 32, !tbaa !29
  %i.asp = load ptr, ptr %i.bw, align 8, !tbaa !93 ; 2 uses
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !94 ; 4 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asp, i64 8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !94 ; 4 uses
  %i.ast = shufflevector <16 x float> %i.aor, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.asu = shufflevector <16 x float> %i.aor, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.apt ; 2 uses
  %i.asw = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.apt ; 2 uses
  %i.asx = load <8 x float>, ptr %i.asv, align 32, !tbaa !29
  %i.asy = fadd <8 x float> %i.ast, %i.asx
  store <8 x float> %i.asy, ptr %i.asv, align 32, !tbaa !29
  %i.asz = load <8 x float>, ptr %i.asw, align 32, !tbaa !29
  %i.ata = fadd <8 x float> %i.asz, %i.asu
  store <8 x float> %i.ata, ptr %i.asw, align 32, !tbaa !29
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.aqb
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 32 ; 2 uses
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.aqb
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 32 ; 2 uses
  %i.atf = load <8 x float>, ptr %i.atc, align 32, !tbaa !29
  %i.atg = fadd <8 x float> %i.ast, %i.atf
  store <8 x float> %i.atg, ptr %i.atc, align 32, !tbaa !29
  %i.ath = load <8 x float>, ptr %i.ate, align 32, !tbaa !29
  %i.ati = fadd <8 x float> %i.ath, %i.asu
  store <8 x float> %i.ati, ptr %i.ate, align 32, !tbaa !29
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.aql
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 64 ; 2 uses
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.aql
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 64 ; 2 uses
  %i.atn = load <8 x float>, ptr %i.atk, align 32, !tbaa !29
  %i.ato = fadd <8 x float> %i.ast, %i.atn
end_hunk_1
