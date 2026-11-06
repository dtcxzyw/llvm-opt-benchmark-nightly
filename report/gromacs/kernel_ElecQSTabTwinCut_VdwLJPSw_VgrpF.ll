Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJPSw_VgrpF?download=true
inline.NumInlined: 1732
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers3EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4570.preheader
  %i.gp = fmul float %i.ak, %i.go
  %i.gq = mul nsw i32 %i.gj, %i.er
  %i.gr = load ptr, ptr %i.ep, align 8, !tbaa !96
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !43
  %i.gv = fadd float %i.gp, %i.gu
  store float %i.gv, ptr %i.gt, align 4, !tbaa !43
  %i.gw = getelementptr [4 x i8], ptr %i.bx, i64 %i.gk
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !43 ; 2 uses
  %i.gz = fmul float %i.gy, %i.cr
  %i.ha = fmul float %i.gy, %i.gz
  %i.hb = fmul float %i.ak, %i.ha
  %i.hc = mul nsw i32 %i.gj, %i.ez
  %i.hd = load ptr, ptr %i.fe, align 8, !tbaa !96
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !43
  %i.hh = fadd float %i.hb, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !43
  %i.hi = getelementptr [4 x i8], ptr %i.bx, i64 %i.gk
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !43 ; 2 uses
  %i.hl = fmul float %i.hk, %i.cr
  %i.hm = fmul float %i.hk, %i.hl
  %i.hn = fmul float %i.ak, %i.hm
  %i.ho = shl i32 %i.em, 1
  %i.hp = ashr i32 %i.el, %i.ho
  %i.hq = and i32 %i.hp, %i.en
  %i.hr = mul nsw i32 %i.gj, %i.hq
  %i.hs = load ptr, ptr %i.fp, align 8, !tbaa !96
  %i.ht = sext i32 %i.hr to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !43
  %i.hw = fadd float %i.hn, %i.hv
  store float %i.hw, ptr %i.hu, align 4, !tbaa !43
  %i.hx = getelementptr [4 x i8], ptr %i.bx, i64 %i.gk
  %i.hy = getelementptr i8, ptr %i.hx, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !43 ; 2 uses
  %i.ia = fmul float %i.hz, %i.cr
  %i.ib = fmul float %i.hz, %i.ia
  %i.ic = fmul float %i.ak, %i.ib
  %i.id = mul i32 %i.em, 3
  %i.ie = ashr i32 %i.el, %i.id
  %i.if = and i32 %i.ie, %i.en
  %i.ig = mul nsw i32 %i.gj, %i.if
  %i.ih = load ptr, ptr %i.ga, align 8, !tbaa !96
  %i.ii = sext i32 %i.ig to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ii ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !43
  %i.il = fadd float %i.ic, %i.ik
  store float %i.il, ptr %i.ij, align 4, !tbaa !43
  br label %.loopexit4569

.loopexit4569:                                    ; preds = %.preheader4568, %bb.b, %bb.a
  %i.im = add nsw i32 %i.ed, 8
  %i.in = add nsw i32 %i.ed, 16
  %i.io = sext i32 %i.ed to i64                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.io ; 4 uses
  %.val.i = load float, ptr %i.ip, align 1, !tbaa !32, !noalias !100
  %i.iq = getelementptr i8, ptr %i.ip, i64 4
  %.val3.i = load float, ptr %i.iq, align 1, !tbaa !32, !noalias !100
  %i.ir = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.is = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.it = shufflevector <4 x float> %i.ir, <4 x float> %i.is, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iu = fadd <16 x float> %i.dm, %i.it          ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %.val.i711 = load float, ptr %i.iv, align 1, !tbaa !32, !noalias !100
  %i.iw = getelementptr i8, ptr %i.ip, i64 12
  %.val3.i712 = load float, ptr %i.iw, align 1, !tbaa !32, !noalias !100
  %i.ix = insertelement <4 x float> poison, float %.val.i711, i64 0
  %i.iy = insertelement <4 x float> poison, float %.val3.i712, i64 0
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ja = fadd <16 x float> %i.dm, %i.iz          ; 6 uses
  %i.jb = sext i32 %i.im to i64                   ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.jb ; 4 uses
  %.val.i714 = load float, ptr %i.jc, align 1, !tbaa !32, !noalias !101
  %i.jd = getelementptr i8, ptr %i.jc, i64 4
  %.val3.i715 = load float, ptr %i.jd, align 1, !tbaa !32, !noalias !101
  %i.je = insertelement <4 x float> poison, float %.val.i714, i64 0
  %i.jf = insertelement <4 x float> poison, float %.val3.i715, i64 0
  %i.jg = shufflevector <4 x float> %i.je, <4 x float> %i.jf, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jh = fadd <16 x float> %i.ds, %i.jg          ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.val.i717 = load float, ptr %i.ji, align 1, !tbaa !32, !noalias !101
  %i.jj = getelementptr i8, ptr %i.jc, i64 12
  %.val3.i718 = load float, ptr %i.jj, align 1, !tbaa !32, !noalias !101
  %i.jk = insertelement <4 x float> poison, float %.val.i717, i64 0
  %i.jl = insertelement <4 x float> poison, float %.val3.i718, i64 0
  %i.jm = shufflevector <4 x float> %i.jk, <4 x float> %i.jl, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jn = fadd <16 x float> %i.ds, %i.jm          ; 6 uses
  %i.jo = sext i32 %i.in to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.jo ; 4 uses
  %.val.i720 = load float, ptr %i.jp, align 1, !tbaa !32, !noalias !102
  %i.jq = getelementptr i8, ptr %i.jp, i64 4
  %.val3.i721 = load float, ptr %i.jq, align 1, !tbaa !32, !noalias !102
  %i.jr = insertelement <4 x float> poison, float %.val.i720, i64 0
  %i.js = insertelement <4 x float> poison, float %.val3.i721, i64 0
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ju = fadd <16 x float> %i.dy, %i.jt          ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.val.i723 = load float, ptr %i.jv, align 1, !tbaa !32, !noalias !102
  %i.jw = getelementptr i8, ptr %i.jp, i64 12
  %.val3.i724 = load float, ptr %i.jw, align 1, !tbaa !32, !noalias !102
  %i.jx = insertelement <4 x float> poison, float %.val.i723, i64 0
  %i.jy = insertelement <4 x float> poison, float %.val3.i724, i64 0
  %i.jz = shufflevector <4 x float> %i.jx, <4 x float> %i.jy, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ka = fadd <16 x float> %i.dy, %i.jz          ; 6 uses
  %i.kb = sext i32 %i.dz to i64                   ; 5 uses
  br i1 %i.ef, label %bb.c, label %.loopexit4569._crit_edge

bb.c:                                             ; preds = %.loopexit4569
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.kb ; 4 uses
  %.val.i726 = load float, ptr %i.kc, align 1, !tbaa !32, !noalias !103
  %i.kd = getelementptr i8, ptr %i.kc, i64 4
  %.val2.i = load float, ptr %i.kd, align 1, !tbaa !32, !noalias !103
  %i.ke = insertelement <4 x float> poison, float %.val.i726, i64 0
  %i.kf = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.kg = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kh = fmul <16 x float> %i.ct, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.val.i727 = load float, ptr %i.ki, align 1, !tbaa !32, !noalias !103
  %i.kj = getelementptr i8, ptr %i.kc, i64 12
  %.val2.i728 = load float, ptr %i.kj, align 1, !tbaa !32, !noalias !103
  %i.kk = insertelement <4 x float> poison, float %.val.i727, i64 0
  %i.kl = insertelement <4 x float> poison, float %.val2.i728, i64 0
  %i.km = shufflevector <4 x float> %i.kk, <4 x float> %i.kl, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kn = fmul <16 x float> %i.ct, %i.km
  br label %.loopexit4569._crit_edge

.loopexit4569._crit_edge:                         ; preds = %.loopexit4569, %bb.c
  %.sroa.04167.0 = phi <16 x float> [ %i.kh, %bb.c ], [ undef, %.loopexit4569 ] ; 4 uses
  %.sroa.74171.0 = phi <16 x float> [ %i.kn, %bb.c ], [ undef, %.loopexit4569 ] ; 4 uses
  %i.ko = load i32, ptr %1, align 8, !tbaa !123
  %i.kp = shl i32 %i.ko, 1                        ; 4 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.kb
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !90
  %i.ks = mul i32 %i.kp, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.kt ; 6 uses
  %i.kv = getelementptr [4 x i8], ptr %i.h, i64 %i.kb
  %i.kw = getelementptr i8, ptr %i.kv, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !90
  %i.ky = mul i32 %i.kp, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.kz ; 6 uses
  %i.lb = getelementptr [4 x i8], ptr %i.h, i64 %i.kb
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !90
  %i.le = mul i32 %i.kp, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.lf ; 4 uses
  %i.lh = getelementptr [4 x i8], ptr %i.h, i64 %i.kb
  %i.li = getelementptr i8, ptr %i.lh, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !90
  %i.lk = mul i32 %i.kp, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ll ; 4 uses
  %i.ln = icmp slt i32 %i.dc, %i.de               ; 3 uses
  br i1 %i.eh, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.loopexit4569._crit_edge
  br i1 %i.ln, label %.lr.ph4666, label %.critedge

.lr.ph4666:                                       ; preds = %.preheader
  %i.lo = sext i32 %i.dc to i64
  %wide.trip.count4776 = sext i32 %i.de to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4666, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562
  %indvars.iv4773 = phi i64 [ %i.lo, %.lr.ph4666 ], [ %indvars.iv.next4774, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 4 uses
  %.sroa.03939.04664 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.xa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %.sroa.16.04663 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.xb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %.sroa.03956.04662 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %.sroa.163963.04661 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.wz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %.sroa.03974.04660 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.ww, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %.sroa.163981.04659 = phi <16 x float> [ zeroinitializer, %.lr.ph4666 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562 ] ; 2 uses
  %i.lp = load ptr, ptr %i.ca, align 8, !tbaa !72
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv4773
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !90
  %.not549 = icmp eq i32 %i.ls, -1
  br i1 %.not549, label %.critedge.loopexit, label %.critedge551

.critedge551:                                     ; preds = %bb.d
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv4773 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !98 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !124
  %i.lx = insertelement <16 x i32> poison, i32 %i.lw, i64 0
  %i.ly = shufflevector <16 x i32> %i.lx, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.lz = and <16 x i32> %.sroa.04820.0.copyload, %i.ly
  %i.ma = icmp ne <16 x i32> %i.lz, zeroinitializer ; 4 uses
  %i.mb = and <16 x i32> %.sroa.6.0.copyload, %i.ly
  %.not4887 = icmp eq <16 x i32> %i.mb, zeroinitializer ; 2 uses
  %i.mc = shl nsw i32 %i.lu, 3
  %i.md = mul nsw i32 %i.lu, 24
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr [4 x i8], ptr %i.bz, i64 %i.me ; 3 uses
  %.val6825048 = load <8 x float>, ptr %i.mf, align 32, !tbaa !32
  %5 = shufflevector <8 x float> %.val6825048, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 32
  %.val6835049 = load <8 x float>, ptr %i.mg, align 32, !tbaa !32
  %6 = shufflevector <8 x float> %.val6835049, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mf, i64 64
  %.val6845050 = load <8 x float>, ptr %i.mh, align 32, !tbaa !32
  %7 = shufflevector <8 x float> %.val6845050, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mi = fsub <16 x float> %i.iu, %5             ; 3 uses
  %i.mj = fsub <16 x float> %i.ja, %5             ; 3 uses
  %i.mk = fsub <16 x float> %i.jh, %6             ; 3 uses
  %i.ml = fsub <16 x float> %i.jn, %6             ; 3 uses
  %i.mm = fsub <16 x float> %i.ju, %7             ; 3 uses
  %i.mn = fsub <16 x float> %i.ka, %7             ; 3 uses
  %i.mo = fmul <16 x float> %i.mi, %i.mi
  %i.mp = fmul <16 x float> %i.mk, %i.mk
  %i.mq = fadd <16 x float> %i.mo, %i.mp
  %i.mr = fmul <16 x float> %i.mm, %i.mm
  %i.ms = fadd <16 x float> %i.mq, %i.mr          ; 2 uses
  %i.mt = fmul <16 x float> %i.mj, %i.mj
  %i.mu = fmul <16 x float> %i.ml, %i.ml
  %i.mv = fadd <16 x float> %i.mt, %i.mu
  %i.mw = fmul <16 x float> %i.mn, %i.mn
  %i.mx = fadd <16 x float> %i.mv, %i.mw          ; 2 uses
  %i.my = fcmp olt <16 x float> %i.ms, %i.bq
  %i.mz = bitcast <16 x i1> %i.my to i16          ; 3 uses
  %i.na = fcmp olt <16 x float> %i.mx, %i.bq
  %i.nb = bitcast <16 x i1> %i.na to i16          ; 3 uses
  %i.nc = shl nsw i32 %i.lu, 1                    ; 3 uses
  %i.nd = icmp eq i32 %i.nc, %i.dh
  br i1 %i.nd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge551
  %i.ne = and i16 %i.mz, %i.t
  %i.nf = and i16 %i.nb, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562

bb.f:                                             ; preds = %.critedge551
  %i.ng = or disjoint i32 %i.nc, 1
  %i.nh = icmp eq i32 %i.ng, %i.dh
  br i1 %i.nh, label %bb.g, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562

bb.g:                                             ; preds = %bb.f
  %i.ni = and i16 %i.mz, %i.v
  %i.nj = and i16 %i.nb, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit562: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.04332.0 = phi i16 [ %i.ne, %bb.e ], [ %i.ni, %bb.g ], [ %i.mz, %bb.f ]
  %.sroa.94335.0 = phi i16 [ %i.nf, %bb.e ], [ %i.nj, %bb.g ], [ %i.nb, %bb.f ]
  %i.nk = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ms, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.nl = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.mx, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.nm = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.nk, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.nn = fmul <16 x float> %i.nk, %i.nm
  %i.no = fmul <16 x float> %i.nm, splat (float -5.000000e-01)
  %i.np = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nn, <16 x float> %i.nm, <16 x float> splat (float -3.000000e+00))
  %i.nq = fmul <16 x float> %i.no, %i.np
  %i.nr = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.nl, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ns = fmul <16 x float> %i.nl, %i.nr
  %i.nt = fmul <16 x float> %i.nr, splat (float -5.000000e-01)
  %i.nu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ns, <16 x float> %i.nr, <16 x float> splat (float -3.000000e+00))
  %i.nv = fmul <16 x float> %i.nt, %i.nu
  %i.nw = sext i32 %i.mc to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.nw
  %.val6855051 = load <8 x float>, ptr %i.nx, align 32, !tbaa !32
  %i.ny = bitcast i16 %.sroa.04332.0 to <16 x i1> ; 2 uses
  %i.nz = select <16 x i1> %i.ny, <16 x float> %i.nq, <16 x float> zeroinitializer ; 4 uses
  %i.oa = bitcast i16 %.sroa.94335.0 to <16 x i1> ; 2 uses
  %i.ob = select <16 x i1> %i.oa, <16 x float> %i.nv, <16 x float> zeroinitializer ; 4 uses
  %i.oc = fmul <16 x float> %i.nk, %i.nz          ; 4 uses
  %i.od = fmul <16 x float> %i.nl, %i.ob          ; 2 uses
  %i.oe = fmul <16 x float> %i.ab, %i.oc          ; 2 uses
  %i.of = fmul <16 x float> %i.ab, %i.od          ; 2 uses
  %i.og = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.oe, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.oh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.of, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.oi = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.og, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.oj = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.og, <16 x i1> splat (i1 true), i32 4)
  %i.ok = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.og, <16 x i1> splat (i1 true), i32 4)
  %i.ol = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.oh, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.om = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.oh, <16 x i1> splat (i1 true), i32 4)
  %i.on = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.oh, <16 x i1> splat (i1 true), i32 4)
  %8 = shufflevector <8 x float> %.val6855051, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oo = fmul <16 x float> %.sroa.04167.0, %8    ; 2 uses
  %i.op = fmul <16 x float> %.sroa.74171.0, %8    ; 2 uses
  %i.oq = fmul <16 x float> %i.nz, %i.nz          ; 4 uses
  %i.or = fmul <16 x float> %i.ob, %i.ob
  %i.os = select <16 x i1> %i.ma, <16 x float> %i.nz, <16 x float> zeroinitializer ; 2 uses
  %i.ot = select <16 x i1> %.not4887, <16 x float> zeroinitializer, <16 x float> %i.ob ; 2 uses
  %i.ou = sitofp <16 x i32> %i.og to <16 x float>
  %i.ov = sitofp <16 x i32> %i.oh to <16 x float>
  %i.ow = fsub <16 x float> %i.oe, %i.ou          ; 2 uses
  %i.ox = fsub <16 x float> %i.of, %i.ov          ; 2 uses
  %i.oy = fsub <16 x float> %i.oj, %i.oi
  %i.oz = fsub <16 x float> %i.om, %i.ol
  %i.pa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ow, <16 x float> %i.oy, <16 x float> %i.oi) ; 2 uses
  %i.pb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ox, <16 x float> %i.oz, <16 x float> %i.ol) ; 2 uses
  %i.pc = fneg <16 x float> %i.pa
  %i.pd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pc, <16 x float> %i.oc, <16 x float> %i.os)
  %i.pe = fneg <16 x float> %i.pb
  %i.pf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pe, <16 x float> %i.od, <16 x float> %i.ot)
  %i.pg = fmul <16 x float> %i.ae, %i.ow
  %i.ph = fadd <16 x float> %i.oi, %i.pa
  %i.pi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pg, <16 x float> %i.ph, <16 x float> %i.ok)
  %i.pj = fmul <16 x float> %i.ae, %i.ox
  %i.pk = fadd <16 x float> %i.ol, %i.pb
  %i.pl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pj, <16 x float> %i.pk, <16 x float> %i.on)
  %i.pm = fmul <16 x float> %i.oo, %i.pd
  %i.pn = fmul <16 x float> %i.op, %i.pf
  %i.po = select <16 x i1> %i.ma, <16 x float> %i.an, <16 x float> zeroinitializer
  %i.pp = fadd <16 x float> %i.po, %i.pi
  %i.pq = select <16 x i1> %.not4887, <16 x float> zeroinitializer, <16 x float> %i.an
  %i.pr = fadd <16 x float> %i.pq, %i.pl
  %i.ps = fsub <16 x float> %i.os, %i.pp
  %i.pt = fmul <16 x float> %i.oo, %i.ps
  %i.pu = fsub <16 x float> %i.ot, %i.pr
  %i.pv = fmul <16 x float> %i.op, %i.pu
  %i.pw = select <16 x i1> %i.ny, <16 x float> %i.pt, <16 x float> zeroinitializer ; 2 uses
  %i.px = select <16 x i1> %i.oa, <16 x float> %i.pv, <16 x float> zeroinitializer ; 2 uses
  %i.py = fcmp olt <16 x float> %i.nk, %i.bv      ; 2 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nw
  %.val7094559 = load <8 x i32>, ptr %i.pz, align 32, !tbaa !32 ; 2 uses
  %i.qa = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7094559, <8 x i1> splat (i1 true), i32 8)
  %i.qb = bitcast <8 x double> %i.qa to <16 x float> ; 2 uses
  %i.qc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7094559, <8 x i1> splat (i1 true), i32 8)
  %i.qd = bitcast <8 x double> %i.qc to <16 x float> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.qf = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.qg = fmul <16 x float> %i.oq, %i.oq
  %i.qh = fmul <16 x float> %i.oq, %i.qg
  %i.qi = select <16 x i1> %i.ma, <16 x float> %i.qh, <16 x float> zeroinitializer ; 3 uses
  %i.qj = fmul <16 x float> %i.qi, %i.qi
  %i.qk = fmul <16 x float> %i.qi, %i.qe          ; 2 uses
  %i.ql = fmul <16 x float> %i.qj, %i.qf          ; 2 uses
  %i.qm = fsub <16 x float> %i.ql, %i.qk
  %i.qn = fmul <16 x float> %i.qk, splat (float f0xBE2AAAAB)
  %i.qo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ql, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.qn) ; 2 uses
  %i.qp = fsub <16 x float> %i.oc, %i.aq
  %i.qq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.qp, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.qr = fmul <16 x float> %i.qq, %i.qq          ; 2 uses
  %i.qs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.qq, <16 x float> %i.aw)
  %i.qt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qs, <16 x float> %i.qq, <16 x float> %i.at)
  %i.qu = fmul <16 x float> %i.qq, %i.qr
  %i.qv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qt, <16 x float> %i.qu, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.qw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.qq, <16 x float> %i.bh)
  %i.qx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qw, <16 x float> %i.qq, <16 x float> %i.bd)
  %i.qy = fmul <16 x float> %i.qr, %i.qx
  %i.qz = fmul <16 x float> %i.qv, %i.qm
  %i.ra = fneg <16 x float> %i.qo
  %i.rb = fmul <16 x float> %i.qy, %i.ra
  %i.rc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rb, <16 x float> %i.oc, <16 x float> %i.qz)
  %i.rd = fmul <16 x float> %i.qv, %i.qo
  %i.re = select <16 x i1> %i.py, <16 x float> %i.rc, <16 x float> zeroinitializer
  %i.rf = select <16 x i1> %i.py, <16 x i1> %i.ma, <16 x i1> zeroinitializer
  %i.rg = select <16 x i1> %i.rf, <16 x float> %i.rd, <16 x float> zeroinitializer ; 2 uses
  %i.rh = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.ri = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.rj = sext i32 %i.nc to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.rj
  %i.rl = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.rm = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.rn = load <2 x i32>, ptr %i.rk, align 4, !tbaa !90 ; 2 uses
  %i.ro = insertelement <2 x i32> poison, i32 %i.ri, i64 0
  %i.rp = shufflevector <2 x i32> %i.rn, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.rq = shufflevector <2 x i32> %i.rn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rr = shufflevector <2 x i32> %i.ro, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.rs = ashr <4 x i32> %i.rq, %i.rr
  %i.rt = shufflevector <4 x i32> %i.rs, <4 x i32> %i.rp, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.ru = insertelement <4 x i32> poison, i32 %i.rl, i64 0
  %i.rv = shufflevector <4 x i32> %i.ru, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rw = and <4 x i32> %i.rt, %i.rv
  %i.rx = insertelement <4 x i32> poison, i32 %i.rm, i64 0
  %i.ry = shufflevector <4 x i32> %i.rx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rz = mul nsw <4 x i32> %i.rw, %i.ry          ; 4 uses
  %i.sa = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !96 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !96 ; 4 uses
  %i.se = shufflevector <16 x float> %i.pw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sf = shufflevector <16 x float> %i.pw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.sg = extractelement <4 x i32> %i.rz, i64 0
  %i.sh = sext i32 %i.sg to i64                   ; 6 uses
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.sh ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.sh ; 2 uses
  %i.sk = load <8 x float>, ptr %i.si, align 32, !tbaa !32
  %i.sl = fadd <8 x float> %i.se, %i.sk
  store <8 x float> %i.sl, ptr %i.si, align 32, !tbaa !32
  %i.sm = load <8 x float>, ptr %i.sj, align 32, !tbaa !32
  %i.sn = fadd <8 x float> %i.sm, %i.sf
  store <8 x float> %i.sn, ptr %i.sj, align 32, !tbaa !32
  %i.so = extractelement <4 x i32> %i.rz, i64 1
  %i.sp = sext i32 %i.so to i64                   ; 6 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32 ; 2 uses
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.sp
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 32 ; 2 uses
  %i.su = load <8 x float>, ptr %i.sr, align 32, !tbaa !32
  %i.sv = fadd <8 x float> %i.se, %i.su
  store <8 x float> %i.sv, ptr %i.sr, align 32, !tbaa !32
  %i.sw = load <8 x float>, ptr %i.st, align 32, !tbaa !32
  %i.sx = fadd <8 x float> %i.sw, %i.sf
  store <8 x float> %i.sx, ptr %i.st, align 32, !tbaa !32
  %i.sy = extractelement <4 x i32> %i.rz, i64 2
  %i.sz = sext i32 %i.sy to i64                   ; 6 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 64 ; 2 uses
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.sz
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 64 ; 2 uses
  %i.te = load <8 x float>, ptr %i.tb, align 32, !tbaa !32
  %i.tf = fadd <8 x float> %i.se, %i.te
  store <8 x float> %i.tf, ptr %i.tb, align 32, !tbaa !32
  %i.tg = load <8 x float>, ptr %i.td, align 32, !tbaa !32
  %i.th = fadd <8 x float> %i.tg, %i.sf
  store <8 x float> %i.th, ptr %i.td, align 32, !tbaa !32
  %i.ti = extractelement <4 x i32> %i.rz, i64 3
  %i.tj = sext i32 %i.ti to i64                   ; 6 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 96 ; 2 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.tj
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 96 ; 2 uses
  %i.to = load <8 x float>, ptr %i.tl, align 32, !tbaa !32
  %i.tp = fadd <8 x float> %i.se, %i.to
  store <8 x float> %i.tp, ptr %i.tl, align 32, !tbaa !32
  %i.tq = load <8 x float>, ptr %i.tn, align 32, !tbaa !32
  %i.tr = fadd <8 x float> %i.tq, %i.sf
  store <8 x float> %i.tr, ptr %i.tn, align 32, !tbaa !32
  %i.ts = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !96 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !96 ; 4 uses
  %i.tx = shufflevector <16 x float> %i.px, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ty = shufflevector <16 x float> %i.px, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.sh ; 2 uses
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.sh ; 2 uses
  %i.ub = load <8 x float>, ptr %i.tz, align 32, !tbaa !32
  %i.uc = fadd <8 x float> %i.tx, %i.ub
  store <8 x float> %i.uc, ptr %i.tz, align 32, !tbaa !32
  %i.ud = load <8 x float>, ptr %i.ua, align 32, !tbaa !32
  %i.ue = fadd <8 x float> %i.ud, %i.ty
  store <8 x float> %i.ue, ptr %i.ua, align 32, !tbaa !32
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.sp
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 32 ; 2 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.sp
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32 ; 2 uses
  %i.uj = load <8 x float>, ptr %i.ug, align 32, !tbaa !32
  %i.uk = fadd <8 x float> %i.tx, %i.uj
  store <8 x float> %i.uk, ptr %i.ug, align 32, !tbaa !32
  %i.ul = load <8 x float>, ptr %i.ui, align 32, !tbaa !32
  %i.um = fadd <8 x float> %i.ul, %i.ty
  store <8 x float> %i.um, ptr %i.ui, align 32, !tbaa !32
  %i.un = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.sz
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 64 ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.sz
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 64 ; 2 uses
  %i.ur = load <8 x float>, ptr %i.uo, align 32, !tbaa !32
  %i.us = fadd <8 x float> %i.tx, %i.ur
  store <8 x float> %i.us, ptr %i.uo, align 32, !tbaa !32
  %i.ut = load <8 x float>, ptr %i.uq, align 32, !tbaa !32
  %i.uu = fadd <8 x float> %i.ut, %i.ty
  store <8 x float> %i.uu, ptr %i.uq, align 32, !tbaa !32
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.tj
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 96 ; 2 uses
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.tj
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 96 ; 2 uses
  %i.uz = load <8 x float>, ptr %i.uw, align 32, !tbaa !32
  %i.va = fadd <8 x float> %i.tx, %i.uz
  store <8 x float> %i.va, ptr %i.uw, align 32, !tbaa !32
  %i.vb = load <8 x float>, ptr %i.uy, align 32, !tbaa !32
  %i.vc = fadd <8 x float> %i.vb, %i.ty
  store <8 x float> %i.vc, ptr %i.uy, align 32, !tbaa !32
  %i.vd = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !96 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !96 ; 4 uses
  %i.vh = shufflevector <16 x float> %i.rg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vi = shufflevector <16 x float> %i.rg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.sh ; 2 uses
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.sh ; 2 uses
  %i.vl = load <8 x float>, ptr %i.vj, align 32, !tbaa !32
  %i.vm = fadd <8 x float> %i.vh, %i.vl
  store <8 x float> %i.vm, ptr %i.vj, align 32, !tbaa !32
  %i.vn = load <8 x float>, ptr %i.vk, align 32, !tbaa !32
  %i.vo = fadd <8 x float> %i.vn, %i.vi
  store <8 x float> %i.vo, ptr %i.vk, align 32, !tbaa !32
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.sp
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 32 ; 2 uses
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.sp
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 32 ; 2 uses
  %i.vt = load <8 x float>, ptr %i.vq, align 32, !tbaa !32
  %i.vu = fadd <8 x float> %i.vh, %i.vt
  store <8 x float> %i.vu, ptr %i.vq, align 32, !tbaa !32
  %i.vv = load <8 x float>, ptr %i.vs, align 32, !tbaa !32
  %i.vw = fadd <8 x float> %i.vv, %i.vi
  store <8 x float> %i.vw, ptr %i.vs, align 32, !tbaa !32
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.sz
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 64 ; 2 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.sz
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 64 ; 2 uses
  %i.wb = load <8 x float>, ptr %i.vy, align 32, !tbaa !32
  %i.wc = fadd <8 x float> %i.vh, %i.wb
  store <8 x float> %i.wc, ptr %i.vy, align 32, !tbaa !32
  %i.wd = load <8 x float>, ptr %i.wa, align 32, !tbaa !32
  %i.we = fadd <8 x float> %i.wd, %i.vi
  store <8 x float> %i.we, ptr %i.wa, align 32, !tbaa !32
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.tj
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 96 ; 2 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.vg, i64 %i.tj
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 96 ; 2 uses
  %i.wj = load <8 x float>, ptr %i.wg, align 32, !tbaa !32
  %i.wk = fadd <8 x float> %i.vh, %i.wj
  store <8 x float> %i.wk, ptr %i.wg, align 32, !tbaa !32
  %i.wl = load <8 x float>, ptr %i.wi, align 32, !tbaa !32
  %i.wm = fadd <8 x float> %i.wl, %i.vi
  store <8 x float> %i.wm, ptr %i.wi, align 32, !tbaa !32
  %i.wn = fadd <16 x float> %i.pm, %i.re
  %i.wo = fmul <16 x float> %i.oq, %i.wn          ; 3 uses
  %i.wp = fmul <16 x float> %i.or, %i.pn          ; 3 uses
  %i.wq = fmul <16 x float> %i.mi, %i.wo          ; 2 uses
  %i.wr = fmul <16 x float> %i.mj, %i.wp          ; 2 uses
  %i.ws = fmul <16 x float> %i.mk, %i.wo          ; 2 uses
  %i.wt = fmul <16 x float> %i.ml, %i.wp          ; 2 uses
  %i.wu = fmul <16 x float> %i.mm, %i.wo          ; 2 uses
  %i.wv = fmul <16 x float> %i.mn, %i.wp          ; 2 uses
  %i.ww = fadd <16 x float> %.sroa.03974.04660, %i.wq ; 2 uses
  %i.wx = fadd <16 x float> %.sroa.163981.04659, %i.wr ; 2 uses
  %i.wy = fadd <16 x float> %.sroa.03956.04662, %i.ws ; 2 uses
  %i.wz = fadd <16 x float> %.sroa.163963.04661, %i.wt ; 2 uses
  %i.xa = fadd <16 x float> %.sroa.03939.04664, %i.wu ; 2 uses
  %i.xb = fadd <16 x float> %.sroa.16.04663, %i.wv ; 2 uses
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.me ; 4 uses
  %i.xd = fadd <16 x float> %i.wr, %i.wq          ; 2 uses
  %i.xe = fadd <16 x float> %i.wt, %i.ws          ; 2 uses
  %i.xf = fadd <16 x float> %i.wv, %i.wu          ; 2 uses
  %i.xg = load <8 x float>, ptr %i.xc, align 32, !tbaa !32
  %i.xh = shufflevector <16 x float> %i.xd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xi = shufflevector <16 x float> %i.xd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xj = fadd <8 x float> %i.xh, %i.xi
  %i.xk = fsub <8 x float> %i.xg, %i.xj
  store <8 x float> %i.xk, ptr %i.xc, align 32, !tbaa !32
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 32 ; 2 uses
  %i.xm = load <8 x float>, ptr %i.xl, align 32, !tbaa !32
  %i.xn = shufflevector <16 x float> %i.xe, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xo = shufflevector <16 x float> %i.xe, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xp = fadd <8 x float> %i.xn, %i.xo
  %i.xq = fsub <8 x float> %i.xm, %i.xp
  store <8 x float> %i.xq, ptr %i.xl, align 32, !tbaa !32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xc, i64 64 ; 2 uses
  %i.xs = load <8 x float>, ptr %i.xr, align 32, !tbaa !32
  %i.xt = shufflevector <16 x float> %i.xf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xu = shufflevector <16 x float> %i.xf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xv = fadd <8 x float> %i.xt, %i.xu
  %i.xw = fsub <8 x float> %i.xs, %i.xv
  store <8 x float> %i.xw, ptr %i.xr, align 32, !tbaa !32
  %indvars.iv.next4774 = add nsw i64 %indvars.iv4773, 1 ; 2 uses
  %exitcond4777.not = icmp eq i64 %indvars.iv.next4774, %wide.trip.count4776
  br i1 %exitcond4777.not, label %.loopexit, label %bb.d, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.d
  %i.xx = trunc nsw i64 %indvars.iv4773 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.sroa.163981.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163981.04659, %.critedge.loopexit ] ; 2 uses
  %.sroa.03974.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03974.04660, %.critedge.loopexit ] ; 2 uses
  %.sroa.163963.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163963.04661, %.critedge.loopexit ] ; 2 uses
  %.sroa.03956.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03956.04662, %.critedge.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.16.04663, %.critedge.loopexit ] ; 2 uses
  %.sroa.03939.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03939.04664, %.critedge.loopexit ] ; 2 uses
  %.0540.lcssa = phi i32 [ %i.dc, %.preheader ], [ %i.xx, %.critedge.loopexit ] ; 2 uses
  %i.xy = icmp slt i32 %.0540.lcssa, %i.de
  br i1 %i.xy, label %.critedge553.lr.ph, label %.loopexit

.critedge553.lr.ph:                               ; preds = %.critedge
  %i.xz = sext i32 %.0540.lcssa to i64
  %wide.trip.count4787 = sext i32 %i.de to i64
  br label %.critedge553

.critedge553:                                     ; preds = %.critedge553.lr.ph, %.critedge553
  %indvars.iv4784 = phi i64 [ %i.xz, %.critedge553.lr.ph ], [ %indvars.iv.next4785, %.critedge553 ] ; 2 uses
  %.sroa.03939.14689 = phi <16 x float> [ %.sroa.03939.0.lcssa, %.critedge553.lr.ph ], [ %i.aij, %.critedge553 ]
  %.sroa.16.14688 = phi <16 x float> [ %.sroa.16.0.lcssa, %.critedge553.lr.ph ], [ %i.aik, %.critedge553 ]
  %.sroa.03956.14687 = phi <16 x float> [ %.sroa.03956.0.lcssa, %.critedge553.lr.ph ], [ %i.aih, %.critedge553 ]
  %.sroa.163963.14686 = phi <16 x float> [ %.sroa.163963.0.lcssa, %.critedge553.lr.ph ], [ %i.aii, %.critedge553 ]
  %.sroa.03974.14685 = phi <16 x float> [ %.sroa.03974.0.lcssa, %.critedge553.lr.ph ], [ %i.aif, %.critedge553 ]
  %.sroa.163981.14684 = phi <16 x float> [ %.sroa.163981.0.lcssa, %.critedge553.lr.ph ], [ %i.aig, %.critedge553 ]
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv4784
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !98 ; 3 uses
  %i.yc = shl nsw i32 %i.yb, 3
  %i.yd = mul nsw i32 %i.yb, 24
  %i.ye = sext i32 %i.yd to i64                   ; 2 uses
  %i.yf = getelementptr [4 x i8], ptr %i.bz, i64 %i.ye ; 3 uses
  %.val6865052 = load <8 x float>, ptr %i.yf, align 32, !tbaa !32
  %9 = shufflevector <8 x float> %.val6865052, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 32
  %.val6875053 = load <8 x float>, ptr %i.yg, align 32, !tbaa !32
  %10 = shufflevector <8 x float> %.val6875053, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.yh = getelementptr i8, ptr %i.yf, i64 64
  %.val6885054 = load <8 x float>, ptr %i.yh, align 32, !tbaa !32
  %11 = shufflevector <8 x float> %.val6885054, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.yi = fsub <16 x float> %i.iu, %9             ; 3 uses
  %i.yj = fsub <16 x float> %i.ja, %9             ; 3 uses
  %i.yk = fsub <16 x float> %i.jh, %10            ; 3 uses
  %i.yl = fsub <16 x float> %i.jn, %10            ; 3 uses
  %i.ym = fsub <16 x float> %i.ju, %11            ; 3 uses
  %i.yn = fsub <16 x float> %i.ka, %11            ; 3 uses
  %i.yo = fmul <16 x float> %i.yi, %i.yi
  %i.yp = fmul <16 x float> %i.yk, %i.yk
  %i.yq = fadd <16 x float> %i.yo, %i.yp
  %i.yr = fmul <16 x float> %i.ym, %i.ym
  %i.ys = fadd <16 x float> %i.yq, %i.yr          ; 2 uses
  %i.yt = fmul <16 x float> %i.yj, %i.yj
  %i.yu = fmul <16 x float> %i.yl, %i.yl
  %i.yv = fadd <16 x float> %i.yt, %i.yu
  %i.yw = fmul <16 x float> %i.yn, %i.yn
  %i.yx = fadd <16 x float> %i.yv, %i.yw          ; 2 uses
  %i.yy = fcmp olt <16 x float> %i.ys, %i.bq      ; 2 uses
  %i.yz = fcmp olt <16 x float> %i.yx, %i.bq      ; 2 uses
  %i.za = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ys, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.zb = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.yx, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.zc = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.za, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.zd = fmul <16 x float> %i.za, %i.zc
  %i.ze = fmul <16 x float> %i.zc, splat (float -5.000000e-01)
  %i.zf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zd, <16 x float> %i.zc, <16 x float> splat (float -3.000000e+00))
  %i.zg = fmul <16 x float> %i.ze, %i.zf
  %i.zh = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.zb, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.zi = fmul <16 x float> %i.zb, %i.zh
  %i.zj = fmul <16 x float> %i.zh, splat (float -5.000000e-01)
  %i.zk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zi, <16 x float> %i.zh, <16 x float> splat (float -3.000000e+00))
  %i.zl = fmul <16 x float> %i.zj, %i.zk
  %i.zm = sext i32 %i.yc to i64                   ; 2 uses
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.zm
  %.val6895055 = load <8 x float>, ptr %i.zn, align 32, !tbaa !32
  %i.zo = select <16 x i1> %i.yy, <16 x float> %i.zg, <16 x float> zeroinitializer ; 5 uses
  %i.zp = select <16 x i1> %i.yz, <16 x float> %i.zl, <16 x float> zeroinitializer ; 5 uses
  %i.zq = fmul <16 x float> %i.za, %i.zo          ; 4 uses
  %i.zr = fmul <16 x float> %i.zb, %i.zp          ; 2 uses
  %i.zs = fmul <16 x float> %i.ab, %i.zq          ; 2 uses
  %i.zt = fmul <16 x float> %i.ab, %i.zr          ; 2 uses
  %i.zu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.zs, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.zv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.zt, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.zw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.zu, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.zx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.zu, <16 x i1> splat (i1 true), i32 4)
  %i.zy = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.zu, <16 x i1> splat (i1 true), i32 4)
  %i.zz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aaa = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4)
  %i.aab = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.zv, <16 x i1> splat (i1 true), i32 4)
  %12 = shufflevector <8 x float> %.val6895055, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aac = fmul <16 x float> %.sroa.04167.0, %12  ; 2 uses
  %i.aad = fmul <16 x float> %.sroa.74171.0, %12  ; 2 uses
  %i.aae = fmul <16 x float> %i.zo, %i.zo         ; 4 uses
  %i.aaf = fmul <16 x float> %i.zp, %i.zp
  %i.aag = sitofp <16 x i32> %i.zu to <16 x float>
  %i.aah = sitofp <16 x i32> %i.zv to <16 x float>
  %i.aai = fsub <16 x float> %i.zs, %i.aag        ; 2 uses
  %i.aaj = fsub <16 x float> %i.zt, %i.aah        ; 2 uses
  %i.aak = fsub <16 x float> %i.zx, %i.zw
  %i.aal = fsub <16 x float> %i.aaa, %i.zz
  %i.aam = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aai, <16 x float> %i.aak, <16 x float> %i.zw) ; 2 uses
  %i.aan = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaj, <16 x float> %i.aal, <16 x float> %i.zz) ; 2 uses
  %i.aao = fneg <16 x float> %i.aam
  %i.aap = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aao, <16 x float> %i.zq, <16 x float> %i.zo)
  %i.aaq = fneg <16 x float> %i.aan
  %i.aar = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aaq, <16 x float> %i.zr, <16 x float> %i.zp)
  %i.aas = fmul <16 x float> %i.ae, %i.aai
  %i.aat = fadd <16 x float> %i.zw, %i.aam
  %i.aau = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aas, <16 x float> %i.aat, <16 x float> %i.zy)
  %i.aav = fmul <16 x float> %i.ae, %i.aaj
  %i.aaw = fadd <16 x float> %i.zz, %i.aan
  %i.aax = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aav, <16 x float> %i.aaw, <16 x float> %i.aab)
  %i.aay = fmul <16 x float> %i.aac, %i.aap
  %i.aaz = fmul <16 x float> %i.aad, %i.aar
  %i.aba = fadd <16 x float> %i.an, %i.aau
  %i.abb = fadd <16 x float> %i.an, %i.aax
  %i.abc = fsub <16 x float> %i.zo, %i.aba
  %i.abd = fmul <16 x float> %i.aac, %i.abc
  %i.abe = fsub <16 x float> %i.zp, %i.abb
  %i.abf = fmul <16 x float> %i.aad, %i.abe
  %i.abg = select <16 x i1> %i.yy, <16 x float> %i.abd, <16 x float> zeroinitializer ; 2 uses
  %i.abh = select <16 x i1> %i.yz, <16 x float> %i.abf, <16 x float> zeroinitializer ; 2 uses
  %i.abi = fcmp olt <16 x float> %i.za, %i.bv     ; 2 uses
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.zm
  %.val7084562 = load <8 x i32>, ptr %i.abj, align 32, !tbaa !32 ; 2 uses
  %i.abk = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7084562, <8 x i1> splat (i1 true), i32 8)
  %i.abl = bitcast <8 x double> %i.abk to <16 x float> ; 2 uses
  %i.abm = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7084562, <8 x i1> splat (i1 true), i32 8)
  %i.abn = bitcast <8 x double> %i.abm to <16 x float> ; 2 uses
  %i.abo = shufflevector <16 x float> %i.abl, <16 x float> %i.abn, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.abp = shufflevector <16 x float> %i.abl, <16 x float> %i.abn, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.abq = fmul <16 x float> %i.aae, %i.aae
  %i.abr = fmul <16 x float> %i.aae, %i.abq       ; 3 uses
  %i.abs = fmul <16 x float> %i.abr, %i.abr
  %i.abt = fmul <16 x float> %i.abr, %i.abo       ; 2 uses
  %i.abu = fmul <16 x float> %i.abs, %i.abp       ; 2 uses
  %i.abv = fsub <16 x float> %i.abu, %i.abt
  %i.abw = fmul <16 x float> %i.abt, splat (float f0xBE2AAAAB)
  %i.abx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abu, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.abw) ; 2 uses
  %i.aby = fsub <16 x float> %i.zq, %i.aq
  %i.abz = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aby, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.aca = fmul <16 x float> %i.abz, %i.abz       ; 2 uses
  %i.acb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.abz, <16 x float> %i.aw)
  %i.acc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.acb, <16 x float> %i.abz, <16 x float> %i.at)
  %i.acd = fmul <16 x float> %i.abz, %i.aca
  %i.ace = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.acc, <16 x float> %i.acd, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.acf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.abz, <16 x float> %i.bh)
  %i.acg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.acf, <16 x float> %i.abz, <16 x float> %i.bd)
  %i.ach = fmul <16 x float> %i.aca, %i.acg
  %i.aci = fmul <16 x float> %i.ace, %i.abv
  %i.acj = fneg <16 x float> %i.abx
  %i.ack = fmul <16 x float> %i.ach, %i.acj
  %i.acl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ack, <16 x float> %i.zq, <16 x float> %i.aci)
  %i.acm = fmul <16 x float> %i.ace, %i.abx
  %i.acn = select <16 x i1> %i.abi, <16 x float> %i.acl, <16 x float> zeroinitializer
  %i.aco = select <16 x i1> %i.abi, <16 x float> %i.acm, <16 x float> zeroinitializer ; 2 uses
  %i.acp = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.acq = shl nsw i32 %i.yb, 1
  %i.acr = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.acs = sext i32 %i.acq to i64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.acs
  %i.acu = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.acv = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.acw = load <2 x i32>, ptr %i.act, align 4, !tbaa !90 ; 2 uses
  %i.acx = insertelement <2 x i32> poison, i32 %i.acr, i64 0
  %i.acy = shufflevector <2 x i32> %i.acw, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.acz = shufflevector <2 x i32> %i.acw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ada = shufflevector <2 x i32> %i.acx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.adb = ashr <4 x i32> %i.acz, %i.ada
  %i.adc = shufflevector <4 x i32> %i.adb, <4 x i32> %i.acy, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.add = insertelement <4 x i32> poison, i32 %i.acu, i64 0
  %i.ade = shufflevector <4 x i32> %i.add, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adf = and <4 x i32> %i.adc, %i.ade
  %i.adg = insertelement <4 x i32> poison, i32 %i.acv, i64 0
  %i.adh = shufflevector <4 x i32> %i.adg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adi = mul nsw <4 x i32> %i.adf, %i.adh       ; 4 uses
  %i.adj = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !96 ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !96 ; 4 uses
  %i.adn = shufflevector <16 x float> %i.abg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ado = shufflevector <16 x float> %i.abg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.adp = extractelement <4 x i32> %i.adi, i64 0
  %i.adq = sext i32 %i.adp to i64                 ; 6 uses
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.adq ; 2 uses
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.adq ; 2 uses
  %i.adt = load <8 x float>, ptr %i.adr, align 32, !tbaa !32
  %i.adu = fadd <8 x float> %i.adn, %i.adt
  store <8 x float> %i.adu, ptr %i.adr, align 32, !tbaa !32
  %i.adv = load <8 x float>, ptr %i.ads, align 32, !tbaa !32
  %i.adw = fadd <8 x float> %i.adv, %i.ado
  store <8 x float> %i.adw, ptr %i.ads, align 32, !tbaa !32
  %i.adx = extractelement <4 x i32> %i.adi, i64 1
  %i.ady = sext i32 %i.adx to i64                 ; 6 uses
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.ady
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32 ; 2 uses
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.ady
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 32 ; 2 uses
  %i.aed = load <8 x float>, ptr %i.aea, align 32, !tbaa !32
  %i.aee = fadd <8 x float> %i.adn, %i.aed
  store <8 x float> %i.aee, ptr %i.aea, align 32, !tbaa !32
  %i.aef = load <8 x float>, ptr %i.aec, align 32, !tbaa !32
  %i.aeg = fadd <8 x float> %i.aef, %i.ado
  store <8 x float> %i.aeg, ptr %i.aec, align 32, !tbaa !32
  %i.aeh = extractelement <4 x i32> %i.adi, i64 2
  %i.aei = sext i32 %i.aeh to i64                 ; 6 uses
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.aei
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 64 ; 2 uses
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.aei
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 64 ; 2 uses
  %i.aen = load <8 x float>, ptr %i.aek, align 32, !tbaa !32
  %i.aeo = fadd <8 x float> %i.adn, %i.aen
  store <8 x float> %i.aeo, ptr %i.aek, align 32, !tbaa !32
  %i.aep = load <8 x float>, ptr %i.aem, align 32, !tbaa !32
  %i.aeq = fadd <8 x float> %i.aep, %i.ado
  store <8 x float> %i.aeq, ptr %i.aem, align 32, !tbaa !32
  %i.aer = extractelement <4 x i32> %i.adi, i64 3
  %i.aes = sext i32 %i.aer to i64                 ; 6 uses
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.adk, i64 %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 96 ; 2 uses
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %i.aes
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 96 ; 2 uses
  %i.aex = load <8 x float>, ptr %i.aeu, align 32, !tbaa !32
  %i.aey = fadd <8 x float> %i.adn, %i.aex
  store <8 x float> %i.aey, ptr %i.aeu, align 32, !tbaa !32
  %i.aez = load <8 x float>, ptr %i.aew, align 32, !tbaa !32
  %i.afa = fadd <8 x float> %i.aez, %i.ado
  store <8 x float> %i.afa, ptr %i.aew, align 32, !tbaa !32
  %i.afb = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !96 ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !96 ; 4 uses
  %i.afg = shufflevector <16 x float> %i.abh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afh = shufflevector <16 x float> %i.abh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.adq ; 2 uses
  %i.afj = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.adq ; 2 uses
  %i.afk = load <8 x float>, ptr %i.afi, align 32, !tbaa !32
  %i.afl = fadd <8 x float> %i.afg, %i.afk
  store <8 x float> %i.afl, ptr %i.afi, align 32, !tbaa !32
  %i.afm = load <8 x float>, ptr %i.afj, align 32, !tbaa !32
  %i.afn = fadd <8 x float> %i.afm, %i.afh
  store <8 x float> %i.afn, ptr %i.afj, align 32, !tbaa !32
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.ady
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 32 ; 2 uses
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.ady
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 32 ; 2 uses
  %i.afs = load <8 x float>, ptr %i.afp, align 32, !tbaa !32
  %i.aft = fadd <8 x float> %i.afg, %i.afs
  store <8 x float> %i.aft, ptr %i.afp, align 32, !tbaa !32
  %i.afu = load <8 x float>, ptr %i.afr, align 32, !tbaa !32
  %i.afv = fadd <8 x float> %i.afu, %i.afh
  store <8 x float> %i.afv, ptr %i.afr, align 32, !tbaa !32
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aei
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 64 ; 2 uses
  %i.afy = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aei
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 64 ; 2 uses
  %i.aga = load <8 x float>, ptr %i.afx, align 32, !tbaa !32
  %i.agb = fadd <8 x float> %i.afg, %i.aga
  store <8 x float> %i.agb, ptr %i.afx, align 32, !tbaa !32
  %i.agc = load <8 x float>, ptr %i.afz, align 32, !tbaa !32
  %i.agd = fadd <8 x float> %i.agc, %i.afh
  store <8 x float> %i.agd, ptr %i.afz, align 32, !tbaa !32
  %i.age = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aes
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 96 ; 2 uses
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.aff, i64 %i.aes
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 96 ; 2 uses
  %i.agi = load <8 x float>, ptr %i.agf, align 32, !tbaa !32
  %i.agj = fadd <8 x float> %i.afg, %i.agi
  store <8 x float> %i.agj, ptr %i.agf, align 32, !tbaa !32
  %i.agk = load <8 x float>, ptr %i.agh, align 32, !tbaa !32
  %i.agl = fadd <8 x float> %i.agk, %i.afh
  store <8 x float> %i.agl, ptr %i.agh, align 32, !tbaa !32
  %i.agm = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !96 ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !96 ; 4 uses
  %i.agq = shufflevector <16 x float> %i.aco, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.agr = shufflevector <16 x float> %i.aco, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ags = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.adq ; 2 uses
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.adq ; 2 uses
  %i.agu = load <8 x float>, ptr %i.ags, align 32, !tbaa !32
  %i.agv = fadd <8 x float> %i.agq, %i.agu
  store <8 x float> %i.agv, ptr %i.ags, align 32, !tbaa !32
  %i.agw = load <8 x float>, ptr %i.agt, align 32, !tbaa !32
  %i.agx = fadd <8 x float> %i.agw, %i.agr
  store <8 x float> %i.agx, ptr %i.agt, align 32, !tbaa !32
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.ady
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 32 ; 2 uses
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.ady
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32 ; 2 uses
  %i.ahc = load <8 x float>, ptr %i.agz, align 32, !tbaa !32
  %i.ahd = fadd <8 x float> %i.agq, %i.ahc
  store <8 x float> %i.ahd, ptr %i.agz, align 32, !tbaa !32
  %i.ahe = load <8 x float>, ptr %i.ahb, align 32, !tbaa !32
  %i.ahf = fadd <8 x float> %i.ahe, %i.agr
  store <8 x float> %i.ahf, ptr %i.ahb, align 32, !tbaa !32
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.aei
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 64 ; 2 uses
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.aei
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 64 ; 2 uses
  %i.ahk = load <8 x float>, ptr %i.ahh, align 32, !tbaa !32
  %i.ahl = fadd <8 x float> %i.agq, %i.ahk
  store <8 x float> %i.ahl, ptr %i.ahh, align 32, !tbaa !32
  %i.ahm = load <8 x float>, ptr %i.ahj, align 32, !tbaa !32
  %i.ahn = fadd <8 x float> %i.ahm, %i.agr
  store <8 x float> %i.ahn, ptr %i.ahj, align 32, !tbaa !32
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.aes
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 96 ; 2 uses
  %i.ahq = getelementptr inbounds [4 x i8], ptr %i.agp, i64 %i.aes
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 96 ; 2 uses
  %i.ahs = load <8 x float>, ptr %i.ahp, align 32, !tbaa !32
  %i.aht = fadd <8 x float> %i.agq, %i.ahs
  store <8 x float> %i.aht, ptr %i.ahp, align 32, !tbaa !32
  %i.ahu = load <8 x float>, ptr %i.ahr, align 32, !tbaa !32
  %i.ahv = fadd <8 x float> %i.ahu, %i.agr
  store <8 x float> %i.ahv, ptr %i.ahr, align 32, !tbaa !32
  %i.ahw = fadd <16 x float> %i.aay, %i.acn
  %i.ahx = fmul <16 x float> %i.aae, %i.ahw       ; 3 uses
  %i.ahy = fmul <16 x float> %i.aaf, %i.aaz       ; 3 uses
  %i.ahz = fmul <16 x float> %i.yi, %i.ahx        ; 2 uses
  %i.aia = fmul <16 x float> %i.yj, %i.ahy        ; 2 uses
  %i.aib = fmul <16 x float> %i.yk, %i.ahx        ; 2 uses
  %i.aic = fmul <16 x float> %i.yl, %i.ahy        ; 2 uses
  %i.aid = fmul <16 x float> %i.ym, %i.ahx        ; 2 uses
  %i.aie = fmul <16 x float> %i.yn, %i.ahy        ; 2 uses
  %i.aif = fadd <16 x float> %.sroa.03974.14685, %i.ahz ; 2 uses
  %i.aig = fadd <16 x float> %.sroa.163981.14684, %i.aia ; 2 uses
  %i.aih = fadd <16 x float> %.sroa.03956.14687, %i.aib ; 2 uses
  %i.aii = fadd <16 x float> %.sroa.163963.14686, %i.aic ; 2 uses
  %i.aij = fadd <16 x float> %.sroa.03939.14689, %i.aid ; 2 uses
  %i.aik = fadd <16 x float> %.sroa.16.14688, %i.aie ; 2 uses
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ye ; 4 uses
  %i.aim = fadd <16 x float> %i.aia, %i.ahz       ; 2 uses
  %i.ain = fadd <16 x float> %i.aic, %i.aib       ; 2 uses
  %i.aio = fadd <16 x float> %i.aie, %i.aid       ; 2 uses
  %i.aip = load <8 x float>, ptr %i.ail, align 32, !tbaa !32
  %i.aiq = shufflevector <16 x float> %i.aim, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.air = shufflevector <16 x float> %i.aim, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ais = fadd <8 x float> %i.aiq, %i.air
  %i.ait = fsub <8 x float> %i.aip, %i.ais
  store <8 x float> %i.ait, ptr %i.ail, align 32, !tbaa !32
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ail, i64 32 ; 2 uses
  %i.aiv = load <8 x float>, ptr %i.aiu, align 32, !tbaa !32
  %i.aiw = shufflevector <16 x float> %i.ain, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aix = shufflevector <16 x float> %i.ain, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aiy = fadd <8 x float> %i.aiw, %i.aix
  %i.aiz = fsub <8 x float> %i.aiv, %i.aiy
  store <8 x float> %i.aiz, ptr %i.aiu, align 32, !tbaa !32
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ail, i64 64 ; 2 uses
  %i.ajb = load <8 x float>, ptr %i.aja, align 32, !tbaa !32
  %i.ajc = shufflevector <16 x float> %i.aio, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajd = shufflevector <16 x float> %i.aio, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aje = fadd <8 x float> %i.ajc, %i.ajd
  %i.ajf = fsub <8 x float> %i.ajb, %i.aje
  store <8 x float> %i.ajf, ptr %i.aja, align 32, !tbaa !32
  %indvars.iv.next4785 = add nsw i64 %indvars.iv4784, 1 ; 2 uses
  %exitcond4788.not = icmp eq i64 %indvars.iv.next4785, %wide.trip.count4787
  br i1 %exitcond4788.not, label %.loopexit, label %.critedge553, !llvm.loop !18

bb.h:                                             ; preds = %.loopexit4569._crit_edge
  br i1 %i.ef, label %.preheader4565, label %.preheader4567

.preheader4567:                                   ; preds = %bb.h
  br i1 %i.ln, label %.lr.ph.preheader, label %.critedge5

.lr.ph.preheader:                                 ; preds = %.preheader4567
  %i.ajg = sext i32 %i.dc to i64
  %wide.trip.count = sext i32 %i.de to i64
  br label %.lr.ph

.preheader4565:                                   ; preds = %bb.h
  br i1 %i.ln, label %.lr.ph4623.preheader, label %.critedge3

.lr.ph4623.preheader:                             ; preds = %.preheader4565
  %i.ajh = sext i32 %i.dc to i64
  %wide.trip.count4748 = sext i32 %i.de to i64
  br label %.lr.ph4623

.lr.ph4623:                                       ; preds = %.lr.ph4623.preheader, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4745 = phi i64 [ %i.ajh, %.lr.ph4623.preheader ], [ %indvars.iv.next4746, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.03939.24621 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axo, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.24620 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axp, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03956.24619 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163963.24618 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axn, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03974.24617 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163981.24616 = phi <16 x float> [ zeroinitializer, %.lr.ph4623.preheader ], [ %i.axl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.aji = load ptr, ptr %i.ca, align 8, !tbaa !72
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aji, i64 %indvars.iv4745
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !90
  %.not548 = icmp eq i32 %i.ajl, -1
  br i1 %.not548, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557: ; preds = %.lr.ph4623
  %i.ajm = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv4745 ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !98 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !124
  %i.ajq = insertelement <16 x i32> poison, i32 %i.ajp, i64 0
  %i.ajr = shufflevector <16 x i32> %i.ajq, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ajs = and <16 x i32> %.sroa.04820.0.copyload, %i.ajr
  %i.ajt = icmp ne <16 x i32> %i.ajs, zeroinitializer ; 4 uses
  %i.aju = and <16 x i32> %.sroa.6.0.copyload, %i.ajr
  %i.ajv = icmp ne <16 x i32> %i.aju, zeroinitializer ; 4 uses
  %i.ajw = shl nsw i32 %i.ajn, 3
  %i.ajx = mul nsw i32 %i.ajn, 24
  %i.ajy = sext i32 %i.ajx to i64                 ; 2 uses
  %i.ajz = getelementptr [4 x i8], ptr %i.bz, i64 %i.ajy ; 3 uses
  %.val6905040 = load <8 x float>, ptr %i.ajz, align 32, !tbaa !32
  %13 = shufflevector <8 x float> %.val6905040, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aka = getelementptr i8, ptr %i.ajz, i64 32
  %.val6915041 = load <8 x float>, ptr %i.aka, align 32, !tbaa !32
  %14 = shufflevector <8 x float> %.val6915041, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.akb = getelementptr i8, ptr %i.ajz, i64 64
  %.val6925042 = load <8 x float>, ptr %i.akb, align 32, !tbaa !32
  %15 = shufflevector <8 x float> %.val6925042, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.akc = fsub <16 x float> %i.iu, %13           ; 3 uses
  %i.akd = fsub <16 x float> %i.ja, %13           ; 3 uses
  %i.ake = fsub <16 x float> %i.jh, %14           ; 3 uses
  %i.akf = fsub <16 x float> %i.jn, %14           ; 3 uses
  %i.akg = fsub <16 x float> %i.ju, %15           ; 3 uses
  %i.akh = fsub <16 x float> %i.ka, %15           ; 3 uses
  %i.aki = fmul <16 x float> %i.akc, %i.akc
  %i.akj = fmul <16 x float> %i.ake, %i.ake
  %i.akk = fadd <16 x float> %i.aki, %i.akj
  %i.akl = fmul <16 x float> %i.akg, %i.akg
  %i.akm = fadd <16 x float> %i.akk, %i.akl       ; 2 uses
  %i.akn = fmul <16 x float> %i.akd, %i.akd
  %i.ako = fmul <16 x float> %i.akf, %i.akf
  %i.akp = fadd <16 x float> %i.akn, %i.ako
  %i.akq = fmul <16 x float> %i.akh, %i.akh
  %i.akr = fadd <16 x float> %i.akp, %i.akq       ; 2 uses
  %i.aks = fcmp olt <16 x float> %i.akm, %i.bq
  %i.akt = bitcast <16 x i1> %i.aks to i16        ; 3 uses
  %i.aku = fcmp olt <16 x float> %i.akr, %i.bq
  %i.akv = bitcast <16 x i1> %i.aku to i16        ; 3 uses
  %i.akw = shl nsw i32 %i.ajn, 1                  ; 3 uses
  %i.akx = icmp eq i32 %i.akw, %i.dh
  br i1 %i.akx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557
  %i.aky = and i16 %i.akt, %i.t
  %i.akz = and i16 %i.akv, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit557
  %i.ala = or disjoint i32 %i.akw, 1
  %i.alb = icmp eq i32 %i.ala, %i.dh
  br i1 %i.alb, label %bb.k, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.k:                                             ; preds = %bb.j
  %i.alc = and i16 %i.akt, %i.v
  %i.ald = and i16 %i.akv, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.04429.0 = phi i16 [ %i.aky, %bb.i ], [ %i.alc, %bb.k ], [ %i.akt, %bb.j ]
  %.sroa.94432.0 = phi i16 [ %i.akz, %bb.i ], [ %i.ald, %bb.k ], [ %i.akv, %bb.j ]
  %i.ale = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.akm, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.alf = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.akr, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.alg = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ale, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.alh = fmul <16 x float> %i.ale, %i.alg
  %i.ali = fmul <16 x float> %i.alg, splat (float -5.000000e-01)
  %i.alj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alh, <16 x float> %i.alg, <16 x float> splat (float -3.000000e+00))
  %i.alk = fmul <16 x float> %i.ali, %i.alj
  %i.all = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.alf, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.alm = fmul <16 x float> %i.alf, %i.all
  %i.aln = fmul <16 x float> %i.all, splat (float -5.000000e-01)
  %i.alo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alm, <16 x float> %i.all, <16 x float> splat (float -3.000000e+00))
  %i.alp = fmul <16 x float> %i.aln, %i.alo
  %i.alq = sext i32 %i.ajw to i64                 ; 2 uses
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.alq
  %.val6935043 = load <8 x float>, ptr %i.alr, align 32, !tbaa !32
  %i.als = bitcast i16 %.sroa.04429.0 to <16 x i1> ; 2 uses
  %i.alt = select <16 x i1> %i.als, <16 x float> %i.alk, <16 x float> zeroinitializer ; 4 uses
  %i.alu = bitcast i16 %.sroa.94432.0 to <16 x i1> ; 2 uses
  %i.alv = select <16 x i1> %i.alu, <16 x float> %i.alp, <16 x float> zeroinitializer ; 4 uses
  %i.alw = fmul <16 x float> %i.ale, %i.alt       ; 4 uses
  %i.alx = fmul <16 x float> %i.alf, %i.alv       ; 4 uses
  %i.aly = fmul <16 x float> %i.ab, %i.alw        ; 2 uses
  %i.alz = fmul <16 x float> %i.ab, %i.alx        ; 2 uses
  %i.ama = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aly, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.amb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.alz, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.amc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.ama, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.amd = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.ama, <16 x i1> splat (i1 true), i32 4)
  %i.ame = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.ama, <16 x i1> splat (i1 true), i32 4)
  %i.amf = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.amb, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.amg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.amb, <16 x i1> splat (i1 true), i32 4)
  %i.amh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.amb, <16 x i1> splat (i1 true), i32 4)
  %i.ami = fsub <16 x float> %i.amd, %i.amc
  %i.amj = fsub <16 x float> %i.amg, %i.amf
  %i.amk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.alq
  %.val7074554 = load <8 x i32>, ptr %i.amk, align 32, !tbaa !32 ; 4 uses
  %i.aml = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7074554, <8 x i1> splat (i1 true), i32 8)
  %i.amm = bitcast <8 x double> %i.aml to <16 x float> ; 2 uses
  %i.amn = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7074554, <8 x i1> splat (i1 true), i32 8)
  %i.amo = bitcast <8 x double> %i.amn to <16 x float> ; 2 uses
  %i.amp = shufflevector <16 x float> %i.amm, <16 x float> %i.amo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.amq = shufflevector <16 x float> %i.amm, <16 x float> %i.amo, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.amr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lg, <8 x i32> %.val7074554, <8 x i1> splat (i1 true), i32 8)
  %i.ams = bitcast <8 x double> %i.amr to <16 x float> ; 2 uses
  %i.amt = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lm, <8 x i32> %.val7074554, <8 x i1> splat (i1 true), i32 8)
  %i.amu = bitcast <8 x double> %i.amt to <16 x float> ; 2 uses
  %i.amv = shufflevector <16 x float> %i.ams, <16 x float> %i.amu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.amw = shufflevector <16 x float> %i.ams, <16 x float> %i.amu, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %16 = shufflevector <8 x float> %.val6935043, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amx = fmul <16 x float> %.sroa.04167.0, %16  ; 2 uses
  %i.amy = fmul <16 x float> %.sroa.74171.0, %16  ; 2 uses
  %i.amz = fmul <16 x float> %i.alt, %i.alt       ; 4 uses
  %i.ana = fmul <16 x float> %i.alv, %i.alv       ; 4 uses
  %i.anb = select <16 x i1> %i.ajt, <16 x float> %i.alt, <16 x float> zeroinitializer ; 2 uses
  %i.anc = select <16 x i1> %i.ajv, <16 x float> %i.alv, <16 x float> zeroinitializer ; 2 uses
  %i.and = sitofp <16 x i32> %i.ama to <16 x float>
  %i.ane = sitofp <16 x i32> %i.amb to <16 x float>
  %i.anf = fsub <16 x float> %i.aly, %i.and       ; 2 uses
  %i.ang = fsub <16 x float> %i.alz, %i.ane       ; 2 uses
  %i.anh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anf, <16 x float> %i.ami, <16 x float> %i.amc) ; 2 uses
  %i.ani = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ang, <16 x float> %i.amj, <16 x float> %i.amf) ; 2 uses
  %i.anj = fneg <16 x float> %i.anh
  %i.ank = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> %i.alw, <16 x float> %i.anb)
  %i.anl = fneg <16 x float> %i.ani
  %i.anm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anl, <16 x float> %i.alx, <16 x float> %i.anc)
  %i.ann = fmul <16 x float> %i.ae, %i.anf
  %i.ano = fadd <16 x float> %i.amc, %i.anh
  %i.anp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> %i.ano, <16 x float> %i.ame)
  %i.anq = fmul <16 x float> %i.ae, %i.ang
  %i.anr = fadd <16 x float> %i.amf, %i.ani
  %i.ans = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anq, <16 x float> %i.anr, <16 x float> %i.amh)
  %i.ant = fmul <16 x float> %i.amx, %i.ank
  %i.anu = fmul <16 x float> %i.amy, %i.anm
  %i.anv = select <16 x i1> %i.ajt, <16 x float> %i.an, <16 x float> zeroinitializer
  %i.anw = fadd <16 x float> %i.anv, %i.anp
  %i.anx = select <16 x i1> %i.ajv, <16 x float> %i.an, <16 x float> zeroinitializer
  %i.any = fadd <16 x float> %i.anx, %i.ans
  %i.anz = fsub <16 x float> %i.anb, %i.anw
  %i.aoa = fmul <16 x float> %i.amx, %i.anz
  %i.aob = fsub <16 x float> %i.anc, %i.any
  %i.aoc = fmul <16 x float> %i.amy, %i.aob
  %i.aod = select <16 x i1> %i.als, <16 x float> %i.aoa, <16 x float> zeroinitializer ; 2 uses
  %i.aoe = select <16 x i1> %i.alu, <16 x float> %i.aoc, <16 x float> zeroinitializer ; 2 uses
  %i.aof = fcmp olt <16 x float> %i.ale, %i.bv    ; 2 uses
  %i.aog = fcmp olt <16 x float> %i.alf, %i.bv    ; 2 uses
  %i.aoh = fmul <16 x float> %i.amz, %i.amz
  %i.aoi = fmul <16 x float> %i.amz, %i.aoh
  %i.aoj = fmul <16 x float> %i.ana, %i.ana
  %i.aok = fmul <16 x float> %i.ana, %i.aoj
  %i.aol = select <16 x i1> %i.ajt, <16 x float> %i.aoi, <16 x float> zeroinitializer ; 3 uses
  %i.aom = select <16 x i1> %i.ajv, <16 x float> %i.aok, <16 x float> zeroinitializer ; 3 uses
  %i.aon = fmul <16 x float> %i.aol, %i.aol
  %i.aoo = fmul <16 x float> %i.aom, %i.aom
  %i.aop = fmul <16 x float> %i.aol, %i.amp       ; 2 uses
  %i.aoq = fmul <16 x float> %i.aom, %i.amv       ; 2 uses
  %i.aor = fmul <16 x float> %i.aon, %i.amq       ; 2 uses
  %i.aos = fmul <16 x float> %i.aoo, %i.amw       ; 2 uses
  %i.aot = fsub <16 x float> %i.aor, %i.aop
  %i.aou = fsub <16 x float> %i.aos, %i.aoq
  %i.aov = fmul <16 x float> %i.aop, splat (float f0xBE2AAAAB)
  %i.aow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aor, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aov) ; 2 uses
  %i.aox = fmul <16 x float> %i.aoq, splat (float f0xBE2AAAAB)
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aos, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aox) ; 2 uses
  %i.aoz = fsub <16 x float> %i.alw, %i.aq
  %i.apa = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aoz, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.apb = fsub <16 x float> %i.alx, %i.aq
  %i.apc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.apb, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.apd = fmul <16 x float> %i.apa, %i.apa       ; 2 uses
  %i.ape = fmul <16 x float> %i.apc, %i.apc       ; 2 uses
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.apa, <16 x float> %i.aw)
  %i.apg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apf, <16 x float> %i.apa, <16 x float> %i.at)
  %i.aph = fmul <16 x float> %i.apa, %i.apd
  %i.api = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apg, <16 x float> %i.aph, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.apj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.apc, <16 x float> %i.aw)
  %i.apk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apj, <16 x float> %i.apc, <16 x float> %i.at)
  %i.apl = fmul <16 x float> %i.apc, %i.ape
  %i.apm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apk, <16 x float> %i.apl, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.apa, <16 x float> %i.bh)
  %i.apo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apn, <16 x float> %i.apa, <16 x float> %i.bd)
  %i.app = fmul <16 x float> %i.apd, %i.apo
  %i.apq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.apc, <16 x float> %i.bh)
  %i.apr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apq, <16 x float> %i.apc, <16 x float> %i.bd)
  %i.aps = fmul <16 x float> %i.ape, %i.apr
  %i.apt = fmul <16 x float> %i.aot, %i.api
  %i.apu = fneg <16 x float> %i.aow
  %i.apv = fmul <16 x float> %i.app, %i.apu
  %i.apw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apv, <16 x float> %i.alw, <16 x float> %i.apt)
  %i.apx = fmul <16 x float> %i.aou, %i.apm
  %i.apy = fneg <16 x float> %i.aoy
  %i.apz = fmul <16 x float> %i.aps, %i.apy
  %i.aqa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apz, <16 x float> %i.alx, <16 x float> %i.apx)
  %i.aqb = fmul <16 x float> %i.aow, %i.api
  %i.aqc = fmul <16 x float> %i.aoy, %i.apm
  %i.aqd = select <16 x i1> %i.aof, <16 x float> %i.apw, <16 x float> zeroinitializer
  %i.aqe = select <16 x i1> %i.aog, <16 x float> %i.aqa, <16 x float> zeroinitializer
  %i.aqf = select <16 x i1> %i.aof, <16 x i1> %i.ajt, <16 x i1> zeroinitializer
  %i.aqg = select <16 x i1> %i.aqf, <16 x float> %i.aqb, <16 x float> zeroinitializer ; 2 uses
  %i.aqh = select <16 x i1> %i.aog, <16 x i1> %i.ajv, <16 x i1> zeroinitializer
  %i.aqi = select <16 x i1> %i.aqh, <16 x float> %i.aqc, <16 x float> zeroinitializer ; 2 uses
  %i.aqj = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.aqk = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.aql = sext i32 %i.akw to i64
  %i.aqm = getelementptr inbounds [4 x i8], ptr %i.aqj, i64 %i.aql
  %i.aqn = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.aqo = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.aqp = load <2 x i32>, ptr %i.aqm, align 4, !tbaa !90 ; 2 uses
  %i.aqq = insertelement <2 x i32> poison, i32 %i.aqk, i64 0
  %i.aqr = shufflevector <2 x i32> %i.aqp, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aqs = shufflevector <2 x i32> %i.aqp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aqt = shufflevector <2 x i32> %i.aqq, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aqu = ashr <4 x i32> %i.aqs, %i.aqt
  %i.aqv = shufflevector <4 x i32> %i.aqu, <4 x i32> %i.aqr, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.aqw = insertelement <4 x i32> poison, i32 %i.aqn, i64 0
  %i.aqx = shufflevector <4 x i32> %i.aqw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aqy = and <4 x i32> %i.aqv, %i.aqx
  %i.aqz = insertelement <4 x i32> poison, i32 %i.aqo, i64 0
  %i.ara = shufflevector <4 x i32> %i.aqz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.arb = mul nsw <4 x i32> %i.aqy, %i.ara       ; 4 uses
  %i.arc = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !96 ; 4 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !96 ; 4 uses
  %i.arg = shufflevector <16 x float> %i.aod, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.arh = shufflevector <16 x float> %i.aod, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ari = extractelement <4 x i32> %i.arb, i64 0
  %i.arj = sext i32 %i.ari to i64                 ; 8 uses
  %i.ark = getelementptr inbounds [4 x i8], ptr %i.ard, i64 %i.arj ; 2 uses
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.arj ; 2 uses
  %i.arm = load <8 x float>, ptr %i.ark, align 32, !tbaa !32
  %i.arn = fadd <8 x float> %i.arg, %i.arm
  store <8 x float> %i.arn, ptr %i.ark, align 32, !tbaa !32
  %i.aro = load <8 x float>, ptr %i.arl, align 32, !tbaa !32
  %i.arp = fadd <8 x float> %i.aro, %i.arh
  store <8 x float> %i.arp, ptr %i.arl, align 32, !tbaa !32
  %i.arq = extractelement <4 x i32> %i.arb, i64 1
  %i.arr = sext i32 %i.arq to i64                 ; 8 uses
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.ard, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 32 ; 2 uses
  %i.aru = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.arr
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 32 ; 2 uses
  %i.arw = load <8 x float>, ptr %i.art, align 32, !tbaa !32
  %i.arx = fadd <8 x float> %i.arg, %i.arw
  store <8 x float> %i.arx, ptr %i.art, align 32, !tbaa !32
  %i.ary = load <8 x float>, ptr %i.arv, align 32, !tbaa !32
  %i.arz = fadd <8 x float> %i.ary, %i.arh
  store <8 x float> %i.arz, ptr %i.arv, align 32, !tbaa !32
  %i.asa = extractelement <4 x i32> %i.arb, i64 2
  %i.asb = sext i32 %i.asa to i64                 ; 8 uses
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.ard, i64 %i.asb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 64 ; 2 uses
  %i.ase = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.asb
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 64 ; 2 uses
  %i.asg = load <8 x float>, ptr %i.asd, align 32, !tbaa !32
  %i.ash = fadd <8 x float> %i.arg, %i.asg
  store <8 x float> %i.ash, ptr %i.asd, align 32, !tbaa !32
  %i.asi = load <8 x float>, ptr %i.asf, align 32, !tbaa !32
  %i.asj = fadd <8 x float> %i.asi, %i.arh
  store <8 x float> %i.asj, ptr %i.asf, align 32, !tbaa !32
  %i.ask = extractelement <4 x i32> %i.arb, i64 3
  %i.asl = sext i32 %i.ask to i64                 ; 8 uses
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.ard, i64 %i.asl
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 96 ; 2 uses
  %i.aso = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.asl
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 96 ; 2 uses
  %i.asq = load <8 x float>, ptr %i.asn, align 32, !tbaa !32
  %i.asr = fadd <8 x float> %i.arg, %i.asq
  store <8 x float> %i.asr, ptr %i.asn, align 32, !tbaa !32
  %i.ass = load <8 x float>, ptr %i.asp, align 32, !tbaa !32
  %i.ast = fadd <8 x float> %i.ass, %i.arh
  store <8 x float> %i.ast, ptr %i.asp, align 32, !tbaa !32
  %i.asu = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 16
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !96 ; 4 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asu, i64 24
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !96 ; 4 uses
  %i.asz = shufflevector <16 x float> %i.aoe, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ata = shufflevector <16 x float> %i.aoe, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.arj ; 2 uses
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.arj ; 2 uses
  %i.atd = load <8 x float>, ptr %i.atb, align 32, !tbaa !32
  %i.ate = fadd <8 x float> %i.asz, %i.atd
  store <8 x float> %i.ate, ptr %i.atb, align 32, !tbaa !32
  %i.atf = load <8 x float>, ptr %i.atc, align 32, !tbaa !32
  %i.atg = fadd <8 x float> %i.atf, %i.ata
  store <8 x float> %i.atg, ptr %i.atc, align 32, !tbaa !32
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.arr
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 32 ; 2 uses
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.arr
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 32 ; 2 uses
  %i.atl = load <8 x float>, ptr %i.ati, align 32, !tbaa !32
  %i.atm = fadd <8 x float> %i.asz, %i.atl
  store <8 x float> %i.atm, ptr %i.ati, align 32, !tbaa !32
  %i.atn = load <8 x float>, ptr %i.atk, align 32, !tbaa !32
  %i.ato = fadd <8 x float> %i.atn, %i.ata
  store <8 x float> %i.ato, ptr %i.atk, align 32, !tbaa !32
  %i.atp = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.asb
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 64 ; 2 uses
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.asb
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 64 ; 2 uses
  %i.att = load <8 x float>, ptr %i.atq, align 32, !tbaa !32
  %i.atu = fadd <8 x float> %i.asz, %i.att
  store <8 x float> %i.atu, ptr %i.atq, align 32, !tbaa !32
  %i.atv = load <8 x float>, ptr %i.ats, align 32, !tbaa !32
  %i.atw = fadd <8 x float> %i.atv, %i.ata
  store <8 x float> %i.atw, ptr %i.ats, align 32, !tbaa !32
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.asl
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 96 ; 2 uses
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.asl
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 96 ; 2 uses
  %i.aub = load <8 x float>, ptr %i.aty, align 32, !tbaa !32
  %i.auc = fadd <8 x float> %i.asz, %i.aub
  store <8 x float> %i.auc, ptr %i.aty, align 32, !tbaa !32
  %i.aud = load <8 x float>, ptr %i.aua, align 32, !tbaa !32
  %i.aue = fadd <8 x float> %i.aud, %i.ata
  store <8 x float> %i.aue, ptr %i.aua, align 32, !tbaa !32
  %i.auf = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !96 ; 4 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !96 ; 4 uses
  %i.auj = shufflevector <16 x float> %i.aqg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.auk = shufflevector <16 x float> %i.aqg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.aug, i64 %i.arj ; 2 uses
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.aui, i64 %i.arj ; 2 uses
  %i.aun = load <8 x float>, ptr %i.aul, align 32, !tbaa !32
  %i.auo = fadd <8 x float> %i.auj, %i.aun
  store <8 x float> %i.auo, ptr %i.aul, align 32, !tbaa !32
  %i.aup = load <8 x float>, ptr %i.aum, align 32, !tbaa !32
  %i.auq = fadd <8 x float> %i.aup, %i.auk
  store <8 x float> %i.auq, ptr %i.aum, align 32, !tbaa !32
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.aug, i64 %i.arr
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 32 ; 2 uses
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.aui, i64 %i.arr
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 32 ; 2 uses
  %i.auv = load <8 x float>, ptr %i.aus, align 32, !tbaa !32
  %i.auw = fadd <8 x float> %i.auj, %i.auv
  store <8 x float> %i.auw, ptr %i.aus, align 32, !tbaa !32
  %i.aux = load <8 x float>, ptr %i.auu, align 32, !tbaa !32
  %i.auy = fadd <8 x float> %i.aux, %i.auk
  store <8 x float> %i.auy, ptr %i.auu, align 32, !tbaa !32
  %i.auz = getelementptr inbounds [4 x i8], ptr %i.aug, i64 %i.asb
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 64 ; 2 uses
  %i.avb = getelementptr inbounds [4 x i8], ptr %i.aui, i64 %i.asb
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 64 ; 2 uses
  %i.avd = load <8 x float>, ptr %i.ava, align 32, !tbaa !32
  %i.ave = fadd <8 x float> %i.auj, %i.avd
  store <8 x float> %i.ave, ptr %i.ava, align 32, !tbaa !32
  %i.avf = load <8 x float>, ptr %i.avc, align 32, !tbaa !32
  %i.avg = fadd <8 x float> %i.avf, %i.auk
  store <8 x float> %i.avg, ptr %i.avc, align 32, !tbaa !32
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.aug, i64 %i.asl
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 96 ; 2 uses
  %i.avj = getelementptr inbounds [4 x i8], ptr %i.aui, i64 %i.asl
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 96 ; 2 uses
  %i.avl = load <8 x float>, ptr %i.avi, align 32, !tbaa !32
  %i.avm = fadd <8 x float> %i.auj, %i.avl
  store <8 x float> %i.avm, ptr %i.avi, align 32, !tbaa !32
  %i.avn = load <8 x float>, ptr %i.avk, align 32, !tbaa !32
  %i.avo = fadd <8 x float> %i.avn, %i.auk
  store <8 x float> %i.avo, ptr %i.avk, align 32, !tbaa !32
  %i.avp = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 16
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !96 ; 4 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 24
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !96 ; 4 uses
  %i.avu = shufflevector <16 x float> %i.aqi, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.avv = shufflevector <16 x float> %i.aqi, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.arj ; 2 uses
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.avt, i64 %i.arj ; 2 uses
  %i.avy = load <8 x float>, ptr %i.avw, align 32, !tbaa !32
  %i.avz = fadd <8 x float> %i.avu, %i.avy
  store <8 x float> %i.avz, ptr %i.avw, align 32, !tbaa !32
  %i.awa = load <8 x float>, ptr %i.avx, align 32, !tbaa !32
  %i.awb = fadd <8 x float> %i.awa, %i.avv
  store <8 x float> %i.awb, ptr %i.avx, align 32, !tbaa !32
  %i.awc = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.arr
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 32 ; 2 uses
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.avt, i64 %i.arr
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 32 ; 2 uses
  %i.awg = load <8 x float>, ptr %i.awd, align 32, !tbaa !32
  %i.awh = fadd <8 x float> %i.avu, %i.awg
  store <8 x float> %i.awh, ptr %i.awd, align 32, !tbaa !32
  %i.awi = load <8 x float>, ptr %i.awf, align 32, !tbaa !32
  %i.awj = fadd <8 x float> %i.awi, %i.avv
  store <8 x float> %i.awj, ptr %i.awf, align 32, !tbaa !32
  %i.awk = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.asb
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 64 ; 2 uses
  %i.awm = getelementptr inbounds [4 x i8], ptr %i.avt, i64 %i.asb
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 64 ; 2 uses
  %i.awo = load <8 x float>, ptr %i.awl, align 32, !tbaa !32
  %i.awp = fadd <8 x float> %i.avu, %i.awo
  store <8 x float> %i.awp, ptr %i.awl, align 32, !tbaa !32
  %i.awq = load <8 x float>, ptr %i.awn, align 32, !tbaa !32
  %i.awr = fadd <8 x float> %i.awq, %i.avv
  store <8 x float> %i.awr, ptr %i.awn, align 32, !tbaa !32
  %i.aws = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.asl
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 96 ; 2 uses
  %i.awu = getelementptr inbounds [4 x i8], ptr %i.avt, i64 %i.asl
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 96 ; 2 uses
  %i.aww = load <8 x float>, ptr %i.awt, align 32, !tbaa !32
  %i.awx = fadd <8 x float> %i.avu, %i.aww
  store <8 x float> %i.awx, ptr %i.awt, align 32, !tbaa !32
  %i.awy = load <8 x float>, ptr %i.awv, align 32, !tbaa !32
  %i.awz = fadd <8 x float> %i.awy, %i.avv
  store <8 x float> %i.awz, ptr %i.awv, align 32, !tbaa !32
  %i.axa = fadd <16 x float> %i.ant, %i.aqd
  %i.axb = fmul <16 x float> %i.amz, %i.axa       ; 3 uses
  %i.axc = fadd <16 x float> %i.anu, %i.aqe
  %i.axd = fmul <16 x float> %i.ana, %i.axc       ; 3 uses
  %i.axe = fmul <16 x float> %i.akc, %i.axb       ; 2 uses
  %i.axf = fmul <16 x float> %i.akd, %i.axd       ; 2 uses
  %i.axg = fmul <16 x float> %i.ake, %i.axb       ; 2 uses
  %i.axh = fmul <16 x float> %i.akf, %i.axd       ; 2 uses
  %i.axi = fmul <16 x float> %i.akg, %i.axb       ; 2 uses
  %i.axj = fmul <16 x float> %i.akh, %i.axd       ; 2 uses
  %i.axk = fadd <16 x float> %.sroa.03974.24617, %i.axe ; 2 uses
  %i.axl = fadd <16 x float> %.sroa.163981.24616, %i.axf ; 2 uses
  %i.axm = fadd <16 x float> %.sroa.03956.24619, %i.axg ; 2 uses
  %i.axn = fadd <16 x float> %.sroa.163963.24618, %i.axh ; 2 uses
  %i.axo = fadd <16 x float> %.sroa.03939.24621, %i.axi ; 2 uses
  %i.axp = fadd <16 x float> %.sroa.16.24620, %i.axj ; 2 uses
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ajy ; 4 uses
  %i.axr = fadd <16 x float> %i.axe, %i.axf       ; 2 uses
  %i.axs = fadd <16 x float> %i.axg, %i.axh       ; 2 uses
  %i.axt = fadd <16 x float> %i.axi, %i.axj       ; 2 uses
  %i.axu = load <8 x float>, ptr %i.axq, align 32, !tbaa !32
  %i.axv = shufflevector <16 x float> %i.axr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.axw = shufflevector <16 x float> %i.axr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axx = fadd <8 x float> %i.axv, %i.axw
  %i.axy = fsub <8 x float> %i.axu, %i.axx
  store <8 x float> %i.axy, ptr %i.axq, align 32, !tbaa !32
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axq, i64 32 ; 2 uses
  %i.aya = load <8 x float>, ptr %i.axz, align 32, !tbaa !32
  %i.ayb = shufflevector <16 x float> %i.axs, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ayc = shufflevector <16 x float> %i.axs, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayd = fadd <8 x float> %i.ayb, %i.ayc
  %i.aye = fsub <8 x float> %i.aya, %i.ayd
  store <8 x float> %i.aye, ptr %i.axz, align 32, !tbaa !32
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axq, i64 64 ; 2 uses
  %i.ayg = load <8 x float>, ptr %i.ayf, align 32, !tbaa !32
  %i.ayh = shufflevector <16 x float> %i.axt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ayi = shufflevector <16 x float> %i.axt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayj = fadd <8 x float> %i.ayh, %i.ayi
  %i.ayk = fsub <8 x float> %i.ayg, %i.ayj
  store <8 x float> %i.ayk, ptr %i.ayf, align 32, !tbaa !32
  %indvars.iv.next4746 = add nsw i64 %indvars.iv4745, 1 ; 2 uses
  %exitcond4749.not = icmp eq i64 %indvars.iv.next4746, %wide.trip.count4748
  br i1 %exitcond4749.not, label %.loopexit, label %.lr.ph4623, !llvm.loop !19

.critedge3.loopexit:                              ; preds = %.lr.ph4623
  %i.ayl = trunc nsw i64 %indvars.iv4745 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %.preheader4565
  %.sroa.163981.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.163981.24616, %.critedge3.loopexit ] ; 2 uses
  %.sroa.03974.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.03974.24617, %.critedge3.loopexit ] ; 2 uses
  %.sroa.163963.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.163963.24618, %.critedge3.loopexit ] ; 2 uses
  %.sroa.03956.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.03956.24619, %.critedge3.loopexit ] ; 2 uses
  %.sroa.16.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.16.24620, %.critedge3.loopexit ] ; 2 uses
  %.sroa.03939.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4565 ], [ %.sroa.03939.24621, %.critedge3.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.dc, %.preheader4565 ], [ %i.ayl, %.critedge3.loopexit ] ; 2 uses
  %i.aym = icmp slt i32 %.2.lcssa, %i.de
  br i1 %i.aym, label %.lr.ph4649.preheader, label %.loopexit

.lr.ph4649.preheader:                             ; preds = %.critedge3
  %i.ayn = sext i32 %.2.lcssa to i64
  %wide.trip.count4762 = sext i32 %i.de to i64
  br label %.lr.ph4649

.lr.ph4649:                                       ; preds = %.lr.ph4649.preheader, %.lr.ph4649
  %indvars.iv4759 = phi i64 [ %i.ayn, %.lr.ph4649.preheader ], [ %indvars.iv.next4760, %.lr.ph4649 ] ; 2 uses
  %.sroa.03939.34647 = phi <16 x float> [ %.sroa.03939.2.lcssa, %.lr.ph4649.preheader ], [ %i.blp, %.lr.ph4649 ]
  %.sroa.16.34646 = phi <16 x float> [ %.sroa.16.2.lcssa, %.lr.ph4649.preheader ], [ %i.blq, %.lr.ph4649 ]
  %.sroa.03956.34645 = phi <16 x float> [ %.sroa.03956.2.lcssa, %.lr.ph4649.preheader ], [ %i.bln, %.lr.ph4649 ]
  %.sroa.163963.34644 = phi <16 x float> [ %.sroa.163963.2.lcssa, %.lr.ph4649.preheader ], [ %i.blo, %.lr.ph4649 ]
  %.sroa.03974.34643 = phi <16 x float> [ %.sroa.03974.2.lcssa, %.lr.ph4649.preheader ], [ %i.bll, %.lr.ph4649 ]
  %.sroa.163981.34642 = phi <16 x float> [ %.sroa.163981.2.lcssa, %.lr.ph4649.preheader ], [ %i.blm, %.lr.ph4649 ]
  %i.ayo = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv4759
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !98 ; 3 uses
  %i.ayq = shl nsw i32 %i.ayp, 3
  %i.ayr = mul nsw i32 %i.ayp, 24
  %i.ays = sext i32 %i.ayr to i64                 ; 2 uses
  %i.ayt = getelementptr [4 x i8], ptr %i.bz, i64 %i.ays ; 3 uses
  %.val6945044 = load <8 x float>, ptr %i.ayt, align 32, !tbaa !32
  %17 = shufflevector <8 x float> %.val6945044, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ayu = getelementptr i8, ptr %i.ayt, i64 32
  %.val6955045 = load <8 x float>, ptr %i.ayu, align 32, !tbaa !32
  %18 = shufflevector <8 x float> %.val6955045, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ayv = getelementptr i8, ptr %i.ayt, i64 64
  %.val6965046 = load <8 x float>, ptr %i.ayv, align 32, !tbaa !32
  %19 = shufflevector <8 x float> %.val6965046, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ayw = fsub <16 x float> %i.iu, %17           ; 3 uses
  %i.ayx = fsub <16 x float> %i.ja, %17           ; 3 uses
  %i.ayy = fsub <16 x float> %i.jh, %18           ; 3 uses
  %i.ayz = fsub <16 x float> %i.jn, %18           ; 3 uses
  %i.aza = fsub <16 x float> %i.ju, %19           ; 3 uses
  %i.azb = fsub <16 x float> %i.ka, %19           ; 3 uses
  %i.azc = fmul <16 x float> %i.ayw, %i.ayw
  %i.azd = fmul <16 x float> %i.ayy, %i.ayy
  %i.aze = fadd <16 x float> %i.azc, %i.azd
  %i.azf = fmul <16 x float> %i.aza, %i.aza
  %i.azg = fadd <16 x float> %i.aze, %i.azf       ; 2 uses
  %i.azh = fmul <16 x float> %i.ayx, %i.ayx
  %i.azi = fmul <16 x float> %i.ayz, %i.ayz
  %i.azj = fadd <16 x float> %i.azh, %i.azi
  %i.azk = fmul <16 x float> %i.azb, %i.azb
  %i.azl = fadd <16 x float> %i.azj, %i.azk       ; 2 uses
  %i.azm = fcmp olt <16 x float> %i.azg, %i.bq    ; 2 uses
  %i.azn = fcmp olt <16 x float> %i.azl, %i.bq    ; 2 uses
  %i.azo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.azg, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.azp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.azl, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.azq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.azo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.azr = fmul <16 x float> %i.azo, %i.azq
  %i.azs = fmul <16 x float> %i.azq, splat (float -5.000000e-01)
  %i.azt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azr, <16 x float> %i.azq, <16 x float> splat (float -3.000000e+00))
  %i.azu = fmul <16 x float> %i.azs, %i.azt
  %i.azv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.azp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.azw = fmul <16 x float> %i.azp, %i.azv
  %i.azx = fmul <16 x float> %i.azv, splat (float -5.000000e-01)
  %i.azy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azw, <16 x float> %i.azv, <16 x float> splat (float -3.000000e+00))
  %i.azz = fmul <16 x float> %i.azx, %i.azy
  %i.baa = sext i32 %i.ayq to i64                 ; 2 uses
  %i.bab = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.baa
  %.val6975047 = load <8 x float>, ptr %i.bab, align 32, !tbaa !32
  %i.bac = select <16 x i1> %i.azm, <16 x float> %i.azu, <16 x float> zeroinitializer ; 5 uses
  %i.bad = select <16 x i1> %i.azn, <16 x float> %i.azz, <16 x float> zeroinitializer ; 5 uses
  %i.bae = fmul <16 x float> %i.azo, %i.bac       ; 4 uses
  %i.baf = fmul <16 x float> %i.azp, %i.bad       ; 4 uses
  %i.bag = fmul <16 x float> %i.ab, %i.bae        ; 2 uses
  %i.bah = fmul <16 x float> %i.ab, %i.baf        ; 2 uses
  %i.bai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bag, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.baj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bah, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.bak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.bai, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.bal = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.bai, <16 x i1> splat (i1 true), i32 4)
  %i.bam = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.bai, <16 x i1> splat (i1 true), i32 4)
  %i.ban = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ag, <16 x i32> %i.baj, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.bao = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cw, <16 x i32> %i.baj, <16 x i1> splat (i1 true), i32 4)
  %i.bap = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ai, <16 x i32> %i.baj, <16 x i1> splat (i1 true), i32 4)
  %i.baq = fsub <16 x float> %i.bal, %i.bak
  %i.bar = fsub <16 x float> %i.bao, %i.ban
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.baa
  %.val7064557 = load <8 x i32>, ptr %i.bas, align 32, !tbaa !32 ; 4 uses
  %i.bat = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7064557, <8 x i1> splat (i1 true), i32 8)
  %i.bau = bitcast <8 x double> %i.bat to <16 x float> ; 2 uses
  %i.bav = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7064557, <8 x i1> splat (i1 true), i32 8)
  %i.baw = bitcast <8 x double> %i.bav to <16 x float> ; 2 uses
  %i.bax = shufflevector <16 x float> %i.bau, <16 x float> %i.baw, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bay = shufflevector <16 x float> %i.bau, <16 x float> %i.baw, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.baz = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lg, <8 x i32> %.val7064557, <8 x i1> splat (i1 true), i32 8)
  %i.bba = bitcast <8 x double> %i.baz to <16 x float> ; 2 uses
  %i.bbb = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lm, <8 x i32> %.val7064557, <8 x i1> splat (i1 true), i32 8)
  %i.bbc = bitcast <8 x double> %i.bbb to <16 x float> ; 2 uses
  %i.bbd = shufflevector <16 x float> %i.bba, <16 x float> %i.bbc, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bbe = shufflevector <16 x float> %i.bba, <16 x float> %i.bbc, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %20 = shufflevector <8 x float> %.val6975047, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bbf = fmul <16 x float> %.sroa.04167.0, %20  ; 2 uses
  %i.bbg = fmul <16 x float> %.sroa.74171.0, %20  ; 2 uses
  %i.bbh = fmul <16 x float> %i.bac, %i.bac       ; 4 uses
  %i.bbi = fmul <16 x float> %i.bad, %i.bad       ; 4 uses
  %i.bbj = sitofp <16 x i32> %i.bai to <16 x float>
  %i.bbk = sitofp <16 x i32> %i.baj to <16 x float>
  %i.bbl = fsub <16 x float> %i.bag, %i.bbj       ; 2 uses
  %i.bbm = fsub <16 x float> %i.bah, %i.bbk       ; 2 uses
  %i.bbn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbl, <16 x float> %i.baq, <16 x float> %i.bak) ; 2 uses
  %i.bbo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbm, <16 x float> %i.bar, <16 x float> %i.ban) ; 2 uses
  %i.bbp = fneg <16 x float> %i.bbn
  %i.bbq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbp, <16 x float> %i.bae, <16 x float> %i.bac)
  %i.bbr = fneg <16 x float> %i.bbo
  %i.bbs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbr, <16 x float> %i.baf, <16 x float> %i.bad)
  %i.bbt = fmul <16 x float> %i.ae, %i.bbl
  %i.bbu = fadd <16 x float> %i.bak, %i.bbn
  %i.bbv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbt, <16 x float> %i.bbu, <16 x float> %i.bam)
  %i.bbw = fmul <16 x float> %i.ae, %i.bbm
  %i.bbx = fadd <16 x float> %i.ban, %i.bbo
  %i.bby = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbw, <16 x float> %i.bbx, <16 x float> %i.bap)
  %i.bbz = fmul <16 x float> %i.bbf, %i.bbq
  %i.bca = fmul <16 x float> %i.bbg, %i.bbs
  %i.bcb = fadd <16 x float> %i.an, %i.bbv
  %i.bcc = fadd <16 x float> %i.an, %i.bby
  %i.bcd = fsub <16 x float> %i.bac, %i.bcb
  %i.bce = fmul <16 x float> %i.bbf, %i.bcd
  %i.bcf = fsub <16 x float> %i.bad, %i.bcc
  %i.bcg = fmul <16 x float> %i.bbg, %i.bcf
  %i.bch = select <16 x i1> %i.azm, <16 x float> %i.bce, <16 x float> zeroinitializer ; 2 uses
  %i.bci = select <16 x i1> %i.azn, <16 x float> %i.bcg, <16 x float> zeroinitializer ; 2 uses
  %i.bcj = fcmp olt <16 x float> %i.azo, %i.bv    ; 2 uses
  %i.bck = fcmp olt <16 x float> %i.azp, %i.bv    ; 2 uses
  %i.bcl = fmul <16 x float> %i.bbh, %i.bbh
  %i.bcm = fmul <16 x float> %i.bbh, %i.bcl       ; 3 uses
  %i.bcn = fmul <16 x float> %i.bbi, %i.bbi
  %i.bco = fmul <16 x float> %i.bbi, %i.bcn       ; 3 uses
  %i.bcp = fmul <16 x float> %i.bcm, %i.bcm
  %i.bcq = fmul <16 x float> %i.bco, %i.bco
  %i.bcr = fmul <16 x float> %i.bcm, %i.bax       ; 2 uses
  %i.bcs = fmul <16 x float> %i.bco, %i.bbd       ; 2 uses
  %i.bct = fmul <16 x float> %i.bcp, %i.bay       ; 2 uses
  %i.bcu = fmul <16 x float> %i.bcq, %i.bbe       ; 2 uses
  %i.bcv = fsub <16 x float> %i.bct, %i.bcr
  %i.bcw = fsub <16 x float> %i.bcu, %i.bcs
  %i.bcx = fmul <16 x float> %i.bcr, splat (float f0xBE2AAAAB)
  %i.bcy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bct, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bcx) ; 2 uses
  %i.bcz = fmul <16 x float> %i.bcs, splat (float f0xBE2AAAAB)
  %i.bda = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bcu, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bcz) ; 2 uses
  %i.bdb = fsub <16 x float> %i.bae, %i.aq
  %i.bdc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bdb, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bdd = fsub <16 x float> %i.baf, %i.aq
  %i.bde = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bdd, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bdf = fmul <16 x float> %i.bdc, %i.bdc       ; 2 uses
  %i.bdg = fmul <16 x float> %i.bde, %i.bde       ; 2 uses
  %i.bdh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bdc, <16 x float> %i.aw)
  %i.bdi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdh, <16 x float> %i.bdc, <16 x float> %i.at)
  %i.bdj = fmul <16 x float> %i.bdc, %i.bdf
  %i.bdk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdi, <16 x float> %i.bdj, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bdl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bde, <16 x float> %i.aw)
  %i.bdm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdl, <16 x float> %i.bde, <16 x float> %i.at)
  %i.bdn = fmul <16 x float> %i.bde, %i.bdg
  %i.bdo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdm, <16 x float> %i.bdn, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bdp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bdc, <16 x float> %i.bh)
  %i.bdq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdp, <16 x float> %i.bdc, <16 x float> %i.bd)
  %i.bdr = fmul <16 x float> %i.bdf, %i.bdq
  %i.bds = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bde, <16 x float> %i.bh)
  %i.bdt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bds, <16 x float> %i.bde, <16 x float> %i.bd)
  %i.bdu = fmul <16 x float> %i.bdg, %i.bdt
  %i.bdv = fmul <16 x float> %i.bcv, %i.bdk
  %i.bdw = fneg <16 x float> %i.bcy
  %i.bdx = fmul <16 x float> %i.bdr, %i.bdw
  %i.bdy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bdx, <16 x float> %i.bae, <16 x float> %i.bdv)
  %i.bdz = fmul <16 x float> %i.bcw, %i.bdo
  %i.bea = fneg <16 x float> %i.bda
  %i.beb = fmul <16 x float> %i.bdu, %i.bea
  %i.bec = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.beb, <16 x float> %i.baf, <16 x float> %i.bdz)
  %i.bed = fmul <16 x float> %i.bcy, %i.bdk
  %i.bee = fmul <16 x float> %i.bda, %i.bdo
  %i.bef = select <16 x i1> %i.bcj, <16 x float> %i.bdy, <16 x float> zeroinitializer
  %i.beg = select <16 x i1> %i.bck, <16 x float> %i.bec, <16 x float> zeroinitializer
  %i.beh = select <16 x i1> %i.bcj, <16 x float> %i.bed, <16 x float> zeroinitializer ; 2 uses
  %i.bei = select <16 x i1> %i.bck, <16 x float> %i.bee, <16 x float> zeroinitializer ; 2 uses
  %i.bej = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.bek = shl nsw i32 %i.ayp, 1
  %i.bel = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.bem = sext i32 %i.bek to i64
  %i.ben = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bem
  %i.beo = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.bep = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.beq = load <2 x i32>, ptr %i.ben, align 4, !tbaa !90 ; 2 uses
  %i.ber = insertelement <2 x i32> poison, i32 %i.bel, i64 0
  %i.bes = shufflevector <2 x i32> %i.beq, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bet = shufflevector <2 x i32> %i.beq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.beu = shufflevector <2 x i32> %i.ber, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bev = ashr <4 x i32> %i.bet, %i.beu
  %i.bew = shufflevector <4 x i32> %i.bev, <4 x i32> %i.bes, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bex = insertelement <4 x i32> poison, i32 %i.beo, i64 0
  %i.bey = shufflevector <4 x i32> %i.bex, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bez = and <4 x i32> %i.bew, %i.bey
  %i.bfa = insertelement <4 x i32> poison, i32 %i.bep, i64 0
  %i.bfb = shufflevector <4 x i32> %i.bfa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfc = mul nsw <4 x i32> %i.bez, %i.bfb       ; 4 uses
  %i.bfd = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !96 ; 4 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfd, i64 8
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !96 ; 4 uses
  %i.bfh = shufflevector <16 x float> %i.bch, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfi = shufflevector <16 x float> %i.bch, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bfj = extractelement <4 x i32> %i.bfc, i64 0
  %i.bfk = sext i32 %i.bfj to i64                 ; 8 uses
  %i.bfl = getelementptr inbounds [4 x i8], ptr %i.bfe, i64 %i.bfk ; 2 uses
  %i.bfm = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bfk ; 2 uses
  %i.bfn = load <8 x float>, ptr %i.bfl, align 32, !tbaa !32
  %i.bfo = fadd <8 x float> %i.bfh, %i.bfn
  store <8 x float> %i.bfo, ptr %i.bfl, align 32, !tbaa !32
  %i.bfp = load <8 x float>, ptr %i.bfm, align 32, !tbaa !32
  %i.bfq = fadd <8 x float> %i.bfp, %i.bfi
  store <8 x float> %i.bfq, ptr %i.bfm, align 32, !tbaa !32
  %i.bfr = extractelement <4 x i32> %i.bfc, i64 1
  %i.bfs = sext i32 %i.bfr to i64                 ; 8 uses
  %i.bft = getelementptr inbounds [4 x i8], ptr %i.bfe, i64 %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 32 ; 2 uses
  %i.bfv = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bfs
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 32 ; 2 uses
  %i.bfx = load <8 x float>, ptr %i.bfu, align 32, !tbaa !32
  %i.bfy = fadd <8 x float> %i.bfh, %i.bfx
  store <8 x float> %i.bfy, ptr %i.bfu, align 32, !tbaa !32
  %i.bfz = load <8 x float>, ptr %i.bfw, align 32, !tbaa !32
  %i.bga = fadd <8 x float> %i.bfz, %i.bfi
  store <8 x float> %i.bga, ptr %i.bfw, align 32, !tbaa !32
  %i.bgb = extractelement <4 x i32> %i.bfc, i64 2
  %i.bgc = sext i32 %i.bgb to i64                 ; 8 uses
  %i.bgd = getelementptr inbounds [4 x i8], ptr %i.bfe, i64 %i.bgc
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 64 ; 2 uses
  %i.bgf = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bgc
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 64 ; 2 uses
  %i.bgh = load <8 x float>, ptr %i.bge, align 32, !tbaa !32
  %i.bgi = fadd <8 x float> %i.bfh, %i.bgh
  store <8 x float> %i.bgi, ptr %i.bge, align 32, !tbaa !32
  %i.bgj = load <8 x float>, ptr %i.bgg, align 32, !tbaa !32
  %i.bgk = fadd <8 x float> %i.bgj, %i.bfi
  store <8 x float> %i.bgk, ptr %i.bgg, align 32, !tbaa !32
  %i.bgl = extractelement <4 x i32> %i.bfc, i64 3
  %i.bgm = sext i32 %i.bgl to i64                 ; 8 uses
  %i.bgn = getelementptr inbounds [4 x i8], ptr %i.bfe, i64 %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 96 ; 2 uses
  %i.bgp = getelementptr inbounds [4 x i8], ptr %i.bfg, i64 %i.bgm
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 96 ; 2 uses
  %i.bgr = load <8 x float>, ptr %i.bgo, align 32, !tbaa !32
  %i.bgs = fadd <8 x float> %i.bfh, %i.bgr
  store <8 x float> %i.bgs, ptr %i.bgo, align 32, !tbaa !32
  %i.bgt = load <8 x float>, ptr %i.bgq, align 32, !tbaa !32
  %i.bgu = fadd <8 x float> %i.bgt, %i.bfi
  store <8 x float> %i.bgu, ptr %i.bgq, align 32, !tbaa !32
  %i.bgv = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 16
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !96 ; 4 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgv, i64 24
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !96 ; 4 uses
  %i.bha = shufflevector <16 x float> %i.bci, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bhb = shufflevector <16 x float> %i.bci, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bhc = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bfk ; 2 uses
  %i.bhd = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bfk ; 2 uses
  %i.bhe = load <8 x float>, ptr %i.bhc, align 32, !tbaa !32
  %i.bhf = fadd <8 x float> %i.bha, %i.bhe
  store <8 x float> %i.bhf, ptr %i.bhc, align 32, !tbaa !32
  %i.bhg = load <8 x float>, ptr %i.bhd, align 32, !tbaa !32
  %i.bhh = fadd <8 x float> %i.bhg, %i.bhb
  store <8 x float> %i.bhh, ptr %i.bhd, align 32, !tbaa !32
  %i.bhi = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bfs
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 32 ; 2 uses
  %i.bhk = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bfs
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32 ; 2 uses
  %i.bhm = load <8 x float>, ptr %i.bhj, align 32, !tbaa !32
  %i.bhn = fadd <8 x float> %i.bha, %i.bhm
  store <8 x float> %i.bhn, ptr %i.bhj, align 32, !tbaa !32
  %i.bho = load <8 x float>, ptr %i.bhl, align 32, !tbaa !32
  %i.bhp = fadd <8 x float> %i.bho, %i.bhb
  store <8 x float> %i.bhp, ptr %i.bhl, align 32, !tbaa !32
  %i.bhq = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bgc
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 64 ; 2 uses
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bgc
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 64 ; 2 uses
  %i.bhu = load <8 x float>, ptr %i.bhr, align 32, !tbaa !32
  %i.bhv = fadd <8 x float> %i.bha, %i.bhu
  store <8 x float> %i.bhv, ptr %i.bhr, align 32, !tbaa !32
  %i.bhw = load <8 x float>, ptr %i.bht, align 32, !tbaa !32
  %i.bhx = fadd <8 x float> %i.bhw, %i.bhb
  store <8 x float> %i.bhx, ptr %i.bht, align 32, !tbaa !32
  %i.bhy = getelementptr inbounds [4 x i8], ptr %i.bgx, i64 %i.bgm
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 96 ; 2 uses
  %i.bia = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bgm
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 96 ; 2 uses
  %i.bic = load <8 x float>, ptr %i.bhz, align 32, !tbaa !32
  %i.bid = fadd <8 x float> %i.bha, %i.bic
  store <8 x float> %i.bid, ptr %i.bhz, align 32, !tbaa !32
  %i.bie = load <8 x float>, ptr %i.bib, align 32, !tbaa !32
  %i.bif = fadd <8 x float> %i.bie, %i.bhb
  store <8 x float> %i.bif, ptr %i.bib, align 32, !tbaa !32
  %i.big = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !96 ; 4 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !96 ; 4 uses
  %i.bik = shufflevector <16 x float> %i.beh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bil = shufflevector <16 x float> %i.beh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bim = getelementptr inbounds [4 x i8], ptr %i.bih, i64 %i.bfk ; 2 uses
  %i.bin = getelementptr inbounds [4 x i8], ptr %i.bij, i64 %i.bfk ; 2 uses
  %i.bio = load <8 x float>, ptr %i.bim, align 32, !tbaa !32
  %i.bip = fadd <8 x float> %i.bik, %i.bio
  store <8 x float> %i.bip, ptr %i.bim, align 32, !tbaa !32
  %i.biq = load <8 x float>, ptr %i.bin, align 32, !tbaa !32
  %i.bir = fadd <8 x float> %i.biq, %i.bil
  store <8 x float> %i.bir, ptr %i.bin, align 32, !tbaa !32
  %i.bis = getelementptr inbounds [4 x i8], ptr %i.bih, i64 %i.bfs
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 32 ; 2 uses
  %i.biu = getelementptr inbounds [4 x i8], ptr %i.bij, i64 %i.bfs
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 32 ; 2 uses
  %i.biw = load <8 x float>, ptr %i.bit, align 32, !tbaa !32
  %i.bix = fadd <8 x float> %i.bik, %i.biw
  store <8 x float> %i.bix, ptr %i.bit, align 32, !tbaa !32
  %i.biy = load <8 x float>, ptr %i.biv, align 32, !tbaa !32
  %i.biz = fadd <8 x float> %i.biy, %i.bil
  store <8 x float> %i.biz, ptr %i.biv, align 32, !tbaa !32
  %i.bja = getelementptr inbounds [4 x i8], ptr %i.bih, i64 %i.bgc
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 64 ; 2 uses
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.bij, i64 %i.bgc
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 64 ; 2 uses
  %i.bje = load <8 x float>, ptr %i.bjb, align 32, !tbaa !32
  %i.bjf = fadd <8 x float> %i.bik, %i.bje
  store <8 x float> %i.bjf, ptr %i.bjb, align 32, !tbaa !32
  %i.bjg = load <8 x float>, ptr %i.bjd, align 32, !tbaa !32
  %i.bjh = fadd <8 x float> %i.bjg, %i.bil
  store <8 x float> %i.bjh, ptr %i.bjd, align 32, !tbaa !32
  %i.bji = getelementptr inbounds [4 x i8], ptr %i.bih, i64 %i.bgm
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 96 ; 2 uses
  %i.bjk = getelementptr inbounds [4 x i8], ptr %i.bij, i64 %i.bgm
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 96 ; 2 uses
  %i.bjm = load <8 x float>, ptr %i.bjj, align 32, !tbaa !32
  %i.bjn = fadd <8 x float> %i.bik, %i.bjm
  store <8 x float> %i.bjn, ptr %i.bjj, align 32, !tbaa !32
  %i.bjo = load <8 x float>, ptr %i.bjl, align 32, !tbaa !32
  %i.bjp = fadd <8 x float> %i.bjo, %i.bil
  store <8 x float> %i.bjp, ptr %i.bjl, align 32, !tbaa !32
  %i.bjq = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 16
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !96 ; 4 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjq, i64 24
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !96 ; 4 uses
  %i.bjv = shufflevector <16 x float> %i.bei, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bjw = shufflevector <16 x float> %i.bei, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bjx = getelementptr inbounds [4 x i8], ptr %i.bjs, i64 %i.bfk ; 2 uses
  %i.bjy = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %i.bfk ; 2 uses
  %i.bjz = load <8 x float>, ptr %i.bjx, align 32, !tbaa !32
  %i.bka = fadd <8 x float> %i.bjv, %i.bjz
  store <8 x float> %i.bka, ptr %i.bjx, align 32, !tbaa !32
  %i.bkb = load <8 x float>, ptr %i.bjy, align 32, !tbaa !32
  %i.bkc = fadd <8 x float> %i.bkb, %i.bjw
  store <8 x float> %i.bkc, ptr %i.bjy, align 32, !tbaa !32
  %i.bkd = getelementptr inbounds [4 x i8], ptr %i.bjs, i64 %i.bfs
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 32 ; 2 uses
  %i.bkf = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %i.bfs
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 32 ; 2 uses
  %i.bkh = load <8 x float>, ptr %i.bke, align 32, !tbaa !32
  %i.bki = fadd <8 x float> %i.bjv, %i.bkh
  store <8 x float> %i.bki, ptr %i.bke, align 32, !tbaa !32
  %i.bkj = load <8 x float>, ptr %i.bkg, align 32, !tbaa !32
  %i.bkk = fadd <8 x float> %i.bkj, %i.bjw
  store <8 x float> %i.bkk, ptr %i.bkg, align 32, !tbaa !32
  %i.bkl = getelementptr inbounds [4 x i8], ptr %i.bjs, i64 %i.bgc
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 64 ; 2 uses
  %i.bkn = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %i.bgc
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 64 ; 2 uses
  %i.bkp = load <8 x float>, ptr %i.bkm, align 32, !tbaa !32
  %i.bkq = fadd <8 x float> %i.bjv, %i.bkp
  store <8 x float> %i.bkq, ptr %i.bkm, align 32, !tbaa !32
  %i.bkr = load <8 x float>, ptr %i.bko, align 32, !tbaa !32
  %i.bks = fadd <8 x float> %i.bkr, %i.bjw
  store <8 x float> %i.bks, ptr %i.bko, align 32, !tbaa !32
  %i.bkt = getelementptr inbounds [4 x i8], ptr %i.bjs, i64 %i.bgm
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 96 ; 2 uses
  %i.bkv = getelementptr inbounds [4 x i8], ptr %i.bju, i64 %i.bgm
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 96 ; 2 uses
  %i.bkx = load <8 x float>, ptr %i.bku, align 32, !tbaa !32
  %i.bky = fadd <8 x float> %i.bjv, %i.bkx
  store <8 x float> %i.bky, ptr %i.bku, align 32, !tbaa !32
  %i.bkz = load <8 x float>, ptr %i.bkw, align 32, !tbaa !32
  %i.bla = fadd <8 x float> %i.bkz, %i.bjw
  store <8 x float> %i.bla, ptr %i.bkw, align 32, !tbaa !32
  %i.blb = fadd <16 x float> %i.bbz, %i.bef
  %i.blc = fmul <16 x float> %i.bbh, %i.blb       ; 3 uses
  %i.bld = fadd <16 x float> %i.bca, %i.beg
  %i.ble = fmul <16 x float> %i.bbi, %i.bld       ; 3 uses
  %i.blf = fmul <16 x float> %i.ayw, %i.blc       ; 2 uses
  %i.blg = fmul <16 x float> %i.ayx, %i.ble       ; 2 uses
  %i.blh = fmul <16 x float> %i.ayy, %i.blc       ; 2 uses
  %i.bli = fmul <16 x float> %i.ayz, %i.ble       ; 2 uses
  %i.blj = fmul <16 x float> %i.aza, %i.blc       ; 2 uses
  %i.blk = fmul <16 x float> %i.azb, %i.ble       ; 2 uses
  %i.bll = fadd <16 x float> %.sroa.03974.34643, %i.blf ; 2 uses
  %i.blm = fadd <16 x float> %.sroa.163981.34642, %i.blg ; 2 uses
  %i.bln = fadd <16 x float> %.sroa.03956.34645, %i.blh ; 2 uses
  %i.blo = fadd <16 x float> %.sroa.163963.34644, %i.bli ; 2 uses
  %i.blp = fadd <16 x float> %.sroa.03939.34647, %i.blj ; 2 uses
  %i.blq = fadd <16 x float> %.sroa.16.34646, %i.blk ; 2 uses
  %i.blr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ays ; 4 uses
  %i.bls = fadd <16 x float> %i.blf, %i.blg       ; 2 uses
  %i.blt = fadd <16 x float> %i.blh, %i.bli       ; 2 uses
  %i.blu = fadd <16 x float> %i.blj, %i.blk       ; 2 uses
  %i.blv = load <8 x float>, ptr %i.blr, align 32, !tbaa !32
  %i.blw = shufflevector <16 x float> %i.bls, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.blx = shufflevector <16 x float> %i.bls, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bly = fadd <8 x float> %i.blw, %i.blx
  %i.blz = fsub <8 x float> %i.blv, %i.bly
  store <8 x float> %i.blz, ptr %i.blr, align 32, !tbaa !32
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blr, i64 32 ; 2 uses
  %i.bmb = load <8 x float>, ptr %i.bma, align 32, !tbaa !32
  %i.bmc = shufflevector <16 x float> %i.blt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmd = shufflevector <16 x float> %i.blt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bme = fadd <8 x float> %i.bmc, %i.bmd
  %i.bmf = fsub <8 x float> %i.bmb, %i.bme
  store <8 x float> %i.bmf, ptr %i.bma, align 32, !tbaa !32
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blr, i64 64 ; 2 uses
  %i.bmh = load <8 x float>, ptr %i.bmg, align 32, !tbaa !32
  %i.bmi = shufflevector <16 x float> %i.blu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bmj = shufflevector <16 x float> %i.blu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bmk = fadd <8 x float> %i.bmi, %i.bmj
  %i.bml = fsub <8 x float> %i.bmh, %i.bmk
  store <8 x float> %i.bml, ptr %i.bmg, align 32, !tbaa !32
  %indvars.iv.next4760 = add nsw i64 %indvars.iv4759, 1 ; 2 uses
  %exitcond4763.not = icmp eq i64 %indvars.iv.next4760, %wide.trip.count4762
  br i1 %exitcond4763.not, label %.loopexit, label %.lr.ph4649, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %indvars.iv = phi i64 [ %i.ajg, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 4 uses
  %.sroa.03939.44581 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvr, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.44580 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvs, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03956.44579 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvp, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163963.44578 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvq, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03974.44577 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvn, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163981.44576 = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bvo, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.bmm = load ptr, ptr %i.ca, align 8, !tbaa !72
  %i.bmn = getelementptr inbounds nuw [8 x i8], ptr %i.bmm, i64 %indvars.iv
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 4
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !90
  %.not = icmp eq i32 %i.bmp, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %.lr.ph
  %i.bmq = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !98 ; 3 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmq, i64 4
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !124
  %i.bmu = insertelement <16 x i32> poison, i32 %i.bmt, i64 0
  %i.bmv = shufflevector <16 x i32> %i.bmu, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bmw = and <16 x i32> %.sroa.04820.0.copyload, %i.bmv
  %i.bmx = icmp ne <16 x i32> %i.bmw, zeroinitializer ; 2 uses
  %i.bmy = and <16 x i32> %.sroa.6.0.copyload, %i.bmv
  %i.bmz = icmp ne <16 x i32> %i.bmy, zeroinitializer ; 2 uses
  %i.bna = shl nsw i32 %i.bmr, 3
  %i.bnb = mul nsw i32 %i.bmr, 24
  %i.bnc = sext i32 %i.bnb to i64                 ; 2 uses
  %i.bnd = getelementptr [4 x i8], ptr %i.bz, i64 %i.bnc ; 3 uses
  %.val6985034 = load <8 x float>, ptr %i.bnd, align 32, !tbaa !32
  %i.bne = getelementptr i8, ptr %i.bnd, i64 32
  %.val6995035 = load <8 x float>, ptr %i.bne, align 32, !tbaa !32
  %i.bnf = getelementptr i8, ptr %i.bnd, i64 64
  %.val7005036 = load <8 x float>, ptr %i.bnf, align 32, !tbaa !32
  %i.bng = sext i32 %i.bna to i64
  %i.bnh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bng
  %.val7054551 = load <8 x i32>, ptr %i.bnh, align 32, !tbaa !32 ; 4 uses
  %i.bni = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7054551, <8 x i1> splat (i1 true), i32 8)
  %i.bnj = bitcast <8 x double> %i.bni to <16 x float> ; 2 uses
  %i.bnk = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7054551, <8 x i1> splat (i1 true), i32 8)
  %i.bnl = bitcast <8 x double> %i.bnk to <16 x float> ; 2 uses
  %i.bnm = shufflevector <16 x float> %i.bnj, <16 x float> %i.bnl, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bnn = shufflevector <16 x float> %i.bnj, <16 x float> %i.bnl, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bno = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lg, <8 x i32> %.val7054551, <8 x i1> splat (i1 true), i32 8)
  %i.bnp = bitcast <8 x double> %i.bno to <16 x float> ; 2 uses
  %i.bnq = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lm, <8 x i32> %.val7054551, <8 x i1> splat (i1 true), i32 8)
  %i.bnr = bitcast <8 x double> %i.bnq to <16 x float> ; 2 uses
  %i.bns = shufflevector <16 x float> %i.bnp, <16 x float> %i.bnr, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bnt = shufflevector <16 x float> %i.bnp, <16 x float> %i.bnr, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %21 = shufflevector <8 x float> %.val6985034, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %22 = shufflevector <8 x float> %.val6995035, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %23 = shufflevector <8 x float> %.val7005036, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bnu = fsub <16 x float> %i.iu, %21           ; 3 uses
  %i.bnv = fsub <16 x float> %i.ja, %21           ; 3 uses
  %i.bnw = fsub <16 x float> %i.jh, %22           ; 3 uses
  %i.bnx = fsub <16 x float> %i.jn, %22           ; 3 uses
  %i.bny = fsub <16 x float> %i.ju, %23           ; 3 uses
  %i.bnz = fsub <16 x float> %i.ka, %23           ; 3 uses
  %i.boa = fmul <16 x float> %i.bnu, %i.bnu
  %i.bob = fmul <16 x float> %i.bnw, %i.bnw
  %i.boc = fadd <16 x float> %i.boa, %i.bob
  %i.bod = fmul <16 x float> %i.bny, %i.bny
  %i.boe = fadd <16 x float> %i.boc, %i.bod       ; 2 uses
  %i.bof = fmul <16 x float> %i.bnv, %i.bnv
  %i.bog = fmul <16 x float> %i.bnx, %i.bnx
  %i.boh = fadd <16 x float> %i.bof, %i.bog
  %i.boi = fmul <16 x float> %i.bnz, %i.bnz
  %i.boj = fadd <16 x float> %i.boh, %i.boi       ; 2 uses
  %i.bok = fcmp olt <16 x float> %i.boe, %i.bq
  %i.bol = fcmp olt <16 x float> %i.boj, %i.bq
  %i.bom = and <16 x i1> %i.bmx, %i.bok
  %i.bon = and <16 x i1> %i.bmz, %i.bol
  %i.boo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.boe, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.bop = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.boj, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.boq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.boo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bor = fmul <16 x float> %i.boo, %i.boq
  %i.bos = fmul <16 x float> %i.boq, splat (float -5.000000e-01)
  %i.bot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bor, <16 x float> %i.boq, <16 x float> splat (float -3.000000e+00))
  %i.bou = fmul <16 x float> %i.bos, %i.bot
  %i.bov = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bop, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bow = fmul <16 x float> %i.bop, %i.bov
  %i.box = fmul <16 x float> %i.bov, splat (float -5.000000e-01)
  %i.boy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bow, <16 x float> %i.bov, <16 x float> splat (float -3.000000e+00))
  %i.boz = fmul <16 x float> %i.box, %i.boy
  %i.bpa = select <16 x i1> %i.bom, <16 x float> %i.bou, <16 x float> zeroinitializer ; 3 uses
  %i.bpb = select <16 x i1> %i.bon, <16 x float> %i.boz, <16 x float> zeroinitializer ; 3 uses
  %i.bpc = fmul <16 x float> %i.bpa, %i.bpa       ; 4 uses
  %i.bpd = fmul <16 x float> %i.bpb, %i.bpb       ; 4 uses
  %i.bpe = fcmp olt <16 x float> %i.boo, %i.bv    ; 2 uses
  %i.bpf = fcmp olt <16 x float> %i.bop, %i.bv    ; 2 uses
  %i.bpg = fmul <16 x float> %i.bpc, %i.bpc
  %i.bph = fmul <16 x float> %i.bpc, %i.bpg       ; 3 uses
  %i.bpi = fmul <16 x float> %i.bpd, %i.bpd
  %i.bpj = fmul <16 x float> %i.bpd, %i.bpi       ; 3 uses
  %i.bpk = fmul <16 x float> %i.bph, %i.bph
  %i.bpl = fmul <16 x float> %i.bpj, %i.bpj
  %i.bpm = fmul <16 x float> %i.bph, %i.bnm       ; 2 uses
  %i.bpn = fmul <16 x float> %i.bpj, %i.bns       ; 2 uses
  %i.bpo = fmul <16 x float> %i.bpk, %i.bnn       ; 2 uses
  %i.bpp = fmul <16 x float> %i.bpl, %i.bnt       ; 2 uses
  %i.bpq = fsub <16 x float> %i.bpo, %i.bpm
  %i.bpr = fsub <16 x float> %i.bpp, %i.bpn
  %i.bps = fmul <16 x float> %i.bpm, splat (float f0xBE2AAAAB)
  %i.bpt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bpo, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bps) ; 2 uses
  %i.bpu = fmul <16 x float> %i.bpn, splat (float f0xBE2AAAAB)
  %i.bpv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bpp, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bpu) ; 2 uses
  %i.bpw = fmul <16 x float> %i.boo, %i.bpa       ; 2 uses
  %i.bpx = fmul <16 x float> %i.bop, %i.bpb       ; 2 uses
  %i.bpy = fsub <16 x float> %i.bpw, %i.aq
  %i.bpz = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bpy, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bqa = fsub <16 x float> %i.bpx, %i.aq
  %i.bqb = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bqa, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bqc = fmul <16 x float> %i.bpz, %i.bpz       ; 2 uses
  %i.bqd = fmul <16 x float> %i.bqb, %i.bqb       ; 2 uses
  %i.bqe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bpz, <16 x float> %i.aw)
  %i.bqf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqe, <16 x float> %i.bpz, <16 x float> %i.at)
  %i.bqg = fmul <16 x float> %i.bpz, %i.bqc
  %i.bqh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqf, <16 x float> %i.bqg, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bqi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bqb, <16 x float> %i.aw)
  %i.bqj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqi, <16 x float> %i.bqb, <16 x float> %i.at)
  %i.bqk = fmul <16 x float> %i.bqb, %i.bqd
  %i.bql = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqj, <16 x float> %i.bqk, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bqm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bpz, <16 x float> %i.bh)
  %i.bqn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqm, <16 x float> %i.bpz, <16 x float> %i.bd)
  %i.bqo = fmul <16 x float> %i.bqc, %i.bqn
  %i.bqp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bqb, <16 x float> %i.bh)
  %i.bqq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqp, <16 x float> %i.bqb, <16 x float> %i.bd)
  %i.bqr = fmul <16 x float> %i.bqd, %i.bqq
  %i.bqs = fmul <16 x float> %i.bpq, %i.bqh
  %i.bqt = fneg <16 x float> %i.bpt
  %i.bqu = fmul <16 x float> %i.bqo, %i.bqt
  %i.bqv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqu, <16 x float> %i.bpw, <16 x float> %i.bqs)
  %i.bqw = fmul <16 x float> %i.bpr, %i.bql
  %i.bqx = fneg <16 x float> %i.bpv
  %i.bqy = fmul <16 x float> %i.bqr, %i.bqx
  %i.bqz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqy, <16 x float> %i.bpx, <16 x float> %i.bqw)
  %i.bra = fmul <16 x float> %i.bpt, %i.bqh
  %i.brb = fmul <16 x float> %i.bpv, %i.bql
  %i.brc = select <16 x i1> %i.bpe, <16 x float> %i.bqv, <16 x float> zeroinitializer
  %i.brd = select <16 x i1> %i.bpf, <16 x float> %i.bqz, <16 x float> zeroinitializer
  %i.bre = select <16 x i1> %i.bpe, <16 x i1> %i.bmx, <16 x i1> zeroinitializer
  %i.brf = select <16 x i1> %i.bre, <16 x float> %i.bra, <16 x float> zeroinitializer ; 2 uses
  %i.brg = select <16 x i1> %i.bpf, <16 x i1> %i.bmz, <16 x i1> zeroinitializer
  %i.brh = select <16 x i1> %i.brg, <16 x float> %i.brb, <16 x float> zeroinitializer ; 2 uses
  %i.bri = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.brj = shl nsw i32 %i.bmr, 1
  %i.brk = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.brl = sext i32 %i.brj to i64
  %i.brm = getelementptr inbounds [4 x i8], ptr %i.bri, i64 %i.brl
  %i.brn = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.bro = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.brp = load <2 x i32>, ptr %i.brm, align 4, !tbaa !90 ; 2 uses
  %i.brq = insertelement <2 x i32> poison, i32 %i.brk, i64 0
  %i.brr = shufflevector <2 x i32> %i.brp, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.brs = shufflevector <2 x i32> %i.brp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.brt = shufflevector <2 x i32> %i.brq, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bru = ashr <4 x i32> %i.brs, %i.brt
  %i.brv = shufflevector <4 x i32> %i.bru, <4 x i32> %i.brr, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.brw = insertelement <4 x i32> poison, i32 %i.brn, i64 0
  %i.brx = shufflevector <4 x i32> %i.brw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bry = and <4 x i32> %i.brv, %i.brx
  %i.brz = insertelement <4 x i32> poison, i32 %i.bro, i64 0
  %i.bsa = shufflevector <4 x i32> %i.brz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsb = mul nsw <4 x i32> %i.bry, %i.bsa       ; 4 uses
  %i.bsc = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !96 ; 4 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsc, i64 8
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !96 ; 4 uses
  %i.bsg = shufflevector <16 x float> %i.brf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bsh = shufflevector <16 x float> %i.brf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bsi = extractelement <4 x i32> %i.bsb, i64 0
  %i.bsj = sext i32 %i.bsi to i64                 ; 4 uses
  %i.bsk = getelementptr inbounds [4 x i8], ptr %i.bsd, i64 %i.bsj ; 2 uses
  %i.bsl = getelementptr inbounds [4 x i8], ptr %i.bsf, i64 %i.bsj ; 2 uses
  %i.bsm = load <8 x float>, ptr %i.bsk, align 32, !tbaa !32
  %i.bsn = fadd <8 x float> %i.bsg, %i.bsm
  store <8 x float> %i.bsn, ptr %i.bsk, align 32, !tbaa !32
  %i.bso = load <8 x float>, ptr %i.bsl, align 32, !tbaa !32
  %i.bsp = fadd <8 x float> %i.bso, %i.bsh
  store <8 x float> %i.bsp, ptr %i.bsl, align 32, !tbaa !32
  %i.bsq = extractelement <4 x i32> %i.bsb, i64 1
  %i.bsr = sext i32 %i.bsq to i64                 ; 4 uses
  %i.bss = getelementptr inbounds [4 x i8], ptr %i.bsd, i64 %i.bsr
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 32 ; 2 uses
  %i.bsu = getelementptr inbounds [4 x i8], ptr %i.bsf, i64 %i.bsr
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 32 ; 2 uses
  %i.bsw = load <8 x float>, ptr %i.bst, align 32, !tbaa !32
  %i.bsx = fadd <8 x float> %i.bsg, %i.bsw
  store <8 x float> %i.bsx, ptr %i.bst, align 32, !tbaa !32
  %i.bsy = load <8 x float>, ptr %i.bsv, align 32, !tbaa !32
  %i.bsz = fadd <8 x float> %i.bsy, %i.bsh
  store <8 x float> %i.bsz, ptr %i.bsv, align 32, !tbaa !32
  %i.bta = extractelement <4 x i32> %i.bsb, i64 2
  %i.btb = sext i32 %i.bta to i64                 ; 4 uses
  %i.btc = getelementptr inbounds [4 x i8], ptr %i.bsd, i64 %i.btb
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 64 ; 2 uses
  %i.bte = getelementptr inbounds [4 x i8], ptr %i.bsf, i64 %i.btb
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 64 ; 2 uses
  %i.btg = load <8 x float>, ptr %i.btd, align 32, !tbaa !32
  %i.bth = fadd <8 x float> %i.bsg, %i.btg
  store <8 x float> %i.bth, ptr %i.btd, align 32, !tbaa !32
  %i.bti = load <8 x float>, ptr %i.btf, align 32, !tbaa !32
  %i.btj = fadd <8 x float> %i.bti, %i.bsh
  store <8 x float> %i.btj, ptr %i.btf, align 32, !tbaa !32
  %i.btk = extractelement <4 x i32> %i.bsb, i64 3
  %i.btl = sext i32 %i.btk to i64                 ; 4 uses
  %i.btm = getelementptr inbounds [4 x i8], ptr %i.bsd, i64 %i.btl
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 96 ; 2 uses
  %i.bto = getelementptr inbounds [4 x i8], ptr %i.bsf, i64 %i.btl
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 96 ; 2 uses
  %i.btq = load <8 x float>, ptr %i.btn, align 32, !tbaa !32
  %i.btr = fadd <8 x float> %i.bsg, %i.btq
  store <8 x float> %i.btr, ptr %i.btn, align 32, !tbaa !32
  %i.bts = load <8 x float>, ptr %i.btp, align 32, !tbaa !32
  %i.btt = fadd <8 x float> %i.bts, %i.bsh
  store <8 x float> %i.btt, ptr %i.btp, align 32, !tbaa !32
  %i.btu = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 16
  %i.btw = load ptr, ptr %i.btv, align 8, !tbaa !96 ; 4 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btu, i64 24
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !96 ; 4 uses
  %i.btz = shufflevector <16 x float> %i.brh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bua = shufflevector <16 x float> %i.brh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bub = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.bsj ; 2 uses
  %i.buc = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.bsj ; 2 uses
  %i.bud = load <8 x float>, ptr %i.bub, align 32, !tbaa !32
  %i.bue = fadd <8 x float> %i.btz, %i.bud
  store <8 x float> %i.bue, ptr %i.bub, align 32, !tbaa !32
  %i.buf = load <8 x float>, ptr %i.buc, align 32, !tbaa !32
  %i.bug = fadd <8 x float> %i.buf, %i.bua
  store <8 x float> %i.bug, ptr %i.buc, align 32, !tbaa !32
  %i.buh = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.bsr
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 32 ; 2 uses
  %i.buj = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.bsr
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 32 ; 2 uses
  %i.bul = load <8 x float>, ptr %i.bui, align 32, !tbaa !32
  %i.bum = fadd <8 x float> %i.btz, %i.bul
  store <8 x float> %i.bum, ptr %i.bui, align 32, !tbaa !32
  %i.bun = load <8 x float>, ptr %i.buk, align 32, !tbaa !32
  %i.buo = fadd <8 x float> %i.bun, %i.bua
  store <8 x float> %i.buo, ptr %i.buk, align 32, !tbaa !32
  %i.bup = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.btb
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 64 ; 2 uses
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.btb
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 64 ; 2 uses
  %i.but = load <8 x float>, ptr %i.buq, align 32, !tbaa !32
  %i.buu = fadd <8 x float> %i.btz, %i.but
  store <8 x float> %i.buu, ptr %i.buq, align 32, !tbaa !32
  %i.buv = load <8 x float>, ptr %i.bus, align 32, !tbaa !32
  %i.buw = fadd <8 x float> %i.buv, %i.bua
  store <8 x float> %i.buw, ptr %i.bus, align 32, !tbaa !32
  %i.bux = getelementptr inbounds [4 x i8], ptr %i.btw, i64 %i.btl
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 96 ; 2 uses
  %i.buz = getelementptr inbounds [4 x i8], ptr %i.bty, i64 %i.btl
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 96 ; 2 uses
  %i.bvb = load <8 x float>, ptr %i.buy, align 32, !tbaa !32
  %i.bvc = fadd <8 x float> %i.btz, %i.bvb
  store <8 x float> %i.bvc, ptr %i.buy, align 32, !tbaa !32
  %i.bvd = load <8 x float>, ptr %i.bva, align 32, !tbaa !32
  %i.bve = fadd <8 x float> %i.bvd, %i.bua
  store <8 x float> %i.bve, ptr %i.bva, align 32, !tbaa !32
  %i.bvf = fmul <16 x float> %i.bpc, %i.brc       ; 3 uses
  %i.bvg = fmul <16 x float> %i.bpd, %i.brd       ; 3 uses
  %i.bvh = fmul <16 x float> %i.bnu, %i.bvf       ; 2 uses
  %i.bvi = fmul <16 x float> %i.bnv, %i.bvg       ; 2 uses
  %i.bvj = fmul <16 x float> %i.bnw, %i.bvf       ; 2 uses
  %i.bvk = fmul <16 x float> %i.bnx, %i.bvg       ; 2 uses
  %i.bvl = fmul <16 x float> %i.bny, %i.bvf       ; 2 uses
  %i.bvm = fmul <16 x float> %i.bnz, %i.bvg       ; 2 uses
  %i.bvn = fadd <16 x float> %.sroa.03974.44577, %i.bvh ; 2 uses
  %i.bvo = fadd <16 x float> %.sroa.163981.44576, %i.bvi ; 2 uses
  %i.bvp = fadd <16 x float> %.sroa.03956.44579, %i.bvj ; 2 uses
  %i.bvq = fadd <16 x float> %.sroa.163963.44578, %i.bvk ; 2 uses
  %i.bvr = fadd <16 x float> %.sroa.03939.44581, %i.bvl ; 2 uses
  %i.bvs = fadd <16 x float> %.sroa.16.44580, %i.bvm ; 2 uses
  %i.bvt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bnc ; 4 uses
  %i.bvu = fadd <16 x float> %i.bvh, %i.bvi       ; 2 uses
  %i.bvv = fadd <16 x float> %i.bvj, %i.bvk       ; 2 uses
  %i.bvw = fadd <16 x float> %i.bvl, %i.bvm       ; 2 uses
  %i.bvx = load <8 x float>, ptr %i.bvt, align 32, !tbaa !32
  %i.bvy = shufflevector <16 x float> %i.bvu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bvz = shufflevector <16 x float> %i.bvu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwa = fadd <8 x float> %i.bvy, %i.bvz
  %i.bwb = fsub <8 x float> %i.bvx, %i.bwa
  store <8 x float> %i.bwb, ptr %i.bvt, align 32, !tbaa !32
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvt, i64 32 ; 2 uses
  %i.bwd = load <8 x float>, ptr %i.bwc, align 32, !tbaa !32
  %i.bwe = shufflevector <16 x float> %i.bvv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwf = shufflevector <16 x float> %i.bvv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwg = fadd <8 x float> %i.bwe, %i.bwf
  %i.bwh = fsub <8 x float> %i.bwd, %i.bwg
  store <8 x float> %i.bwh, ptr %i.bwc, align 32, !tbaa !32
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bvt, i64 64 ; 2 uses
  %i.bwj = load <8 x float>, ptr %i.bwi, align 32, !tbaa !32
  %i.bwk = shufflevector <16 x float> %i.bvw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwl = shufflevector <16 x float> %i.bvw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwm = fadd <8 x float> %i.bwk, %i.bwl
  %i.bwn = fsub <8 x float> %i.bwj, %i.bwm
  store <8 x float> %i.bwn, ptr %i.bwi, align 32, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %.lr.ph
  %i.bwo = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader4567
  %.sroa.163981.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.163981.44576, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03974.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.03974.44577, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163963.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.163963.44578, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03956.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.03956.44579, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.16.44580, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03939.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4567 ], [ %.sroa.03939.44581, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.dc, %.preheader4567 ], [ %i.bwo, %.critedge5.loopexit ] ; 2 uses
  %i.bwp = icmp slt i32 %.4.lcssa, %i.de
  br i1 %i.bwp, label %.lr.ph4605.preheader, label %.loopexit

.lr.ph4605.preheader:                             ; preds = %.critedge5
  %i.bwq = sext i32 %.4.lcssa to i64
  %wide.trip.count4731 = sext i32 %i.de to i64
  br label %.lr.ph4605

.lr.ph4605:                                       ; preds = %.lr.ph4605.preheader, %.lr.ph4605
  %indvars.iv4728 = phi i64 [ %i.bwq, %.lr.ph4605.preheader ], [ %indvars.iv.next4729, %.lr.ph4605 ] ; 2 uses
  %.sroa.03939.54603 = phi <16 x float> [ %.sroa.03939.4.lcssa, %.lr.ph4605.preheader ], [ %i.cfg, %.lr.ph4605 ]
  %.sroa.16.54602 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph4605.preheader ], [ %i.cfh, %.lr.ph4605 ]
  %.sroa.03956.54601 = phi <16 x float> [ %.sroa.03956.4.lcssa, %.lr.ph4605.preheader ], [ %i.cfe, %.lr.ph4605 ]
  %.sroa.163963.54600 = phi <16 x float> [ %.sroa.163963.4.lcssa, %.lr.ph4605.preheader ], [ %i.cff, %.lr.ph4605 ]
  %.sroa.03974.54599 = phi <16 x float> [ %.sroa.03974.4.lcssa, %.lr.ph4605.preheader ], [ %i.cfc, %.lr.ph4605 ]
  %.sroa.163981.54598 = phi <16 x float> [ %.sroa.163981.4.lcssa, %.lr.ph4605.preheader ], [ %i.cfd, %.lr.ph4605 ]
  %i.bwr = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv4728
  %i.bws = load i32, ptr %i.bwr, align 4, !tbaa !98 ; 3 uses
  %i.bwt = shl nsw i32 %i.bws, 3
  %i.bwu = mul nsw i32 %i.bws, 24
  %i.bwv = sext i32 %i.bwu to i64                 ; 2 uses
  %i.bww = getelementptr [4 x i8], ptr %i.bz, i64 %i.bwv ; 3 uses
  %.val7015037 = load <8 x float>, ptr %i.bww, align 32, !tbaa !32
  %i.bwx = getelementptr i8, ptr %i.bww, i64 32
  %.val7025038 = load <8 x float>, ptr %i.bwx, align 32, !tbaa !32
  %i.bwy = getelementptr i8, ptr %i.bww, i64 64
  %.val7035039 = load <8 x float>, ptr %i.bwy, align 32, !tbaa !32
  %i.bwz = sext i32 %i.bwt to i64
  %i.bxa = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bwz
  %.val7044553 = load <8 x i32>, ptr %i.bxa, align 32, !tbaa !32 ; 4 uses
  %i.bxb = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ku, <8 x i32> %.val7044553, <8 x i1> splat (i1 true), i32 8)
  %i.bxc = bitcast <8 x double> %i.bxb to <16 x float> ; 2 uses
  %i.bxd = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.la, <8 x i32> %.val7044553, <8 x i1> splat (i1 true), i32 8)
  %i.bxe = bitcast <8 x double> %i.bxd to <16 x float> ; 2 uses
  %i.bxf = shufflevector <16 x float> %i.bxc, <16 x float> %i.bxe, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bxg = shufflevector <16 x float> %i.bxc, <16 x float> %i.bxe, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bxh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lg, <8 x i32> %.val7044553, <8 x i1> splat (i1 true), i32 8)
  %i.bxi = bitcast <8 x double> %i.bxh to <16 x float> ; 2 uses
  %i.bxj = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.lm, <8 x i32> %.val7044553, <8 x i1> splat (i1 true), i32 8)
  %i.bxk = bitcast <8 x double> %i.bxj to <16 x float> ; 2 uses
  %i.bxl = shufflevector <16 x float> %i.bxi, <16 x float> %i.bxk, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.bxm = shufflevector <16 x float> %i.bxi, <16 x float> %i.bxk, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %24 = shufflevector <8 x float> %.val7015037, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %25 = shufflevector <8 x float> %.val7025038, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %26 = shufflevector <8 x float> %.val7035039, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxn = fsub <16 x float> %i.iu, %24           ; 3 uses
  %i.bxo = fsub <16 x float> %i.ja, %24           ; 3 uses
  %i.bxp = fsub <16 x float> %i.jh, %25           ; 3 uses
  %i.bxq = fsub <16 x float> %i.jn, %25           ; 3 uses
  %i.bxr = fsub <16 x float> %i.ju, %26           ; 3 uses
  %i.bxs = fsub <16 x float> %i.ka, %26           ; 3 uses
  %i.bxt = fmul <16 x float> %i.bxn, %i.bxn
  %i.bxu = fmul <16 x float> %i.bxp, %i.bxp
  %i.bxv = fadd <16 x float> %i.bxt, %i.bxu
  %i.bxw = fmul <16 x float> %i.bxr, %i.bxr
  %i.bxx = fadd <16 x float> %i.bxv, %i.bxw       ; 2 uses
  %i.bxy = fmul <16 x float> %i.bxo, %i.bxo
  %i.bxz = fmul <16 x float> %i.bxq, %i.bxq
  %i.bya = fadd <16 x float> %i.bxy, %i.bxz
  %i.byb = fmul <16 x float> %i.bxs, %i.bxs
  %i.byc = fadd <16 x float> %i.bya, %i.byb       ; 2 uses
  %i.byd = fcmp olt <16 x float> %i.bxx, %i.bq
  %i.bye = fcmp olt <16 x float> %i.byc, %i.bq
  %i.byf = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bxx, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.byg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.byc, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.byh = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.byf, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.byi = fmul <16 x float> %i.byf, %i.byh
  %i.byj = fmul <16 x float> %i.byh, splat (float -5.000000e-01)
  %i.byk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byi, <16 x float> %i.byh, <16 x float> splat (float -3.000000e+00))
  %i.byl = fmul <16 x float> %i.byj, %i.byk
  %i.bym = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.byg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.byn = fmul <16 x float> %i.byg, %i.bym
  %i.byo = fmul <16 x float> %i.bym, splat (float -5.000000e-01)
  %i.byp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byn, <16 x float> %i.bym, <16 x float> splat (float -3.000000e+00))
  %i.byq = fmul <16 x float> %i.byo, %i.byp
  %i.byr = select <16 x i1> %i.byd, <16 x float> %i.byl, <16 x float> zeroinitializer ; 3 uses
  %i.bys = select <16 x i1> %i.bye, <16 x float> %i.byq, <16 x float> zeroinitializer ; 3 uses
  %i.byt = fmul <16 x float> %i.byr, %i.byr       ; 4 uses
  %i.byu = fmul <16 x float> %i.bys, %i.bys       ; 4 uses
  %i.byv = fcmp olt <16 x float> %i.byf, %i.bv    ; 2 uses
  %i.byw = fcmp olt <16 x float> %i.byg, %i.bv    ; 2 uses
  %i.byx = fmul <16 x float> %i.byt, %i.byt
  %i.byy = fmul <16 x float> %i.byt, %i.byx       ; 3 uses
  %i.byz = fmul <16 x float> %i.byu, %i.byu
  %i.bza = fmul <16 x float> %i.byu, %i.byz       ; 3 uses
  %i.bzb = fmul <16 x float> %i.byy, %i.byy
  %i.bzc = fmul <16 x float> %i.bza, %i.bza
  %i.bzd = fmul <16 x float> %i.byy, %i.bxf       ; 2 uses
  %i.bze = fmul <16 x float> %i.bza, %i.bxl       ; 2 uses
  %i.bzf = fmul <16 x float> %i.bzb, %i.bxg       ; 2 uses
  %i.bzg = fmul <16 x float> %i.bzc, %i.bxm       ; 2 uses
  %i.bzh = fsub <16 x float> %i.bzf, %i.bzd
  %i.bzi = fsub <16 x float> %i.bzg, %i.bze
  %i.bzj = fmul <16 x float> %i.bzd, splat (float f0xBE2AAAAB)
  %i.bzk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzf, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bzj) ; 2 uses
  %i.bzl = fmul <16 x float> %i.bze, splat (float f0xBE2AAAAB)
  %i.bzm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzg, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bzl) ; 2 uses
  %i.bzn = fmul <16 x float> %i.byf, %i.byr       ; 2 uses
  %i.bzo = fmul <16 x float> %i.byg, %i.bys       ; 2 uses
  %i.bzp = fsub <16 x float> %i.bzn, %i.aq
  %i.bzq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bzp, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bzr = fsub <16 x float> %i.bzo, %i.aq
  %i.bzs = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bzr, <16 x float> zeroinitializer, i32 4) ; 7 uses
  %i.bzt = fmul <16 x float> %i.bzq, %i.bzq       ; 2 uses
  %i.bzu = fmul <16 x float> %i.bzs, %i.bzs       ; 2 uses
  %i.bzv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bzq, <16 x float> %i.aw)
  %i.bzw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzv, <16 x float> %i.bzq, <16 x float> %i.at)
  %i.bzx = fmul <16 x float> %i.bzq, %i.bzt
  %i.bzy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzw, <16 x float> %i.bzx, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bzz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.bzs, <16 x float> %i.aw)
  %i.caa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzz, <16 x float> %i.bzs, <16 x float> %i.at)
  %i.cab = fmul <16 x float> %i.bzs, %i.bzu
  %i.cac = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.caa, <16 x float> %i.cab, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cad = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bzq, <16 x float> %i.bh)
  %i.cae = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cad, <16 x float> %i.bzq, <16 x float> %i.bd)
  %i.caf = fmul <16 x float> %i.bzt, %i.cae
  %i.cag = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.bzs, <16 x float> %i.bh)
  %i.cah = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cag, <16 x float> %i.bzs, <16 x float> %i.bd)
  %i.cai = fmul <16 x float> %i.bzu, %i.cah
  %i.caj = fmul <16 x float> %i.bzh, %i.bzy
  %i.cak = fneg <16 x float> %i.bzk
  %i.cal = fmul <16 x float> %i.caf, %i.cak
  %i.cam = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cal, <16 x float> %i.bzn, <16 x float> %i.caj)
  %i.can = fmul <16 x float> %i.bzi, %i.cac
  %i.cao = fneg <16 x float> %i.bzm
  %i.cap = fmul <16 x float> %i.cai, %i.cao
  %i.caq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cap, <16 x float> %i.bzo, <16 x float> %i.can)
  %i.car = fmul <16 x float> %i.bzk, %i.bzy
  %i.cas = fmul <16 x float> %i.bzm, %i.cac
  %i.cat = select <16 x i1> %i.byv, <16 x float> %i.cam, <16 x float> zeroinitializer
  %i.cau = select <16 x i1> %i.byw, <16 x float> %i.caq, <16 x float> zeroinitializer
  %i.cav = select <16 x i1> %i.byv, <16 x float> %i.car, <16 x float> zeroinitializer ; 2 uses
  %i.caw = select <16 x i1> %i.byw, <16 x float> %i.cas, <16 x float> zeroinitializer ; 2 uses
  %i.cax = load ptr, ptr %i.ci, align 8, !tbaa !89
  %i.cay = shl nsw i32 %i.bws, 1
  %i.caz = load i32, ptr %i.cu, align 8, !tbaa !125
  %i.cba = sext i32 %i.cay to i64
  %i.cbb = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.cba
  %i.cbc = load i32, ptr %i.cv, align 4, !tbaa !126
  %i.cbd = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.cbe = load <2 x i32>, ptr %i.cbb, align 4, !tbaa !90 ; 2 uses
  %i.cbf = insertelement <2 x i32> poison, i32 %i.caz, i64 0
  %i.cbg = shufflevector <2 x i32> %i.cbe, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cbh = shufflevector <2 x i32> %i.cbe, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cbi = shufflevector <2 x i32> %i.cbf, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cbj = ashr <4 x i32> %i.cbh, %i.cbi
  %i.cbk = shufflevector <4 x i32> %i.cbj, <4 x i32> %i.cbg, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.cbl = insertelement <4 x i32> poison, i32 %i.cbc, i64 0
  %i.cbm = shufflevector <4 x i32> %i.cbl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbn = and <4 x i32> %i.cbk, %i.cbm
  %i.cbo = insertelement <4 x i32> poison, i32 %i.cbd, i64 0
  %i.cbp = shufflevector <4 x i32> %i.cbo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cbq = mul nsw <4 x i32> %i.cbn, %i.cbp       ; 4 uses
  %i.cbr = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !96 ; 4 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8
  %i.cbu = load ptr, ptr %i.cbt, align 8, !tbaa !96 ; 4 uses
  %i.cbv = shufflevector <16 x float> %i.cav, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cbw = shufflevector <16 x float> %i.cav, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cbx = extractelement <4 x i32> %i.cbq, i64 0
  %i.cby = sext i32 %i.cbx to i64                 ; 4 uses
  %i.cbz = getelementptr inbounds [4 x i8], ptr %i.cbs, i64 %i.cby ; 2 uses
  %i.cca = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.cby ; 2 uses
  %i.ccb = load <8 x float>, ptr %i.cbz, align 32, !tbaa !32
  %i.ccc = fadd <8 x float> %i.cbv, %i.ccb
  store <8 x float> %i.ccc, ptr %i.cbz, align 32, !tbaa !32
  %i.ccd = load <8 x float>, ptr %i.cca, align 32, !tbaa !32
  %i.cce = fadd <8 x float> %i.ccd, %i.cbw
  store <8 x float> %i.cce, ptr %i.cca, align 32, !tbaa !32
  %i.ccf = extractelement <4 x i32> %i.cbq, i64 1
  %i.ccg = sext i32 %i.ccf to i64                 ; 4 uses
  %i.cch = getelementptr inbounds [4 x i8], ptr %i.cbs, i64 %i.ccg
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 32 ; 2 uses
  %i.ccj = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.ccg
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 32 ; 2 uses
  %i.ccl = load <8 x float>, ptr %i.cci, align 32, !tbaa !32
  %i.ccm = fadd <8 x float> %i.cbv, %i.ccl
  store <8 x float> %i.ccm, ptr %i.cci, align 32, !tbaa !32
  %i.ccn = load <8 x float>, ptr %i.cck, align 32, !tbaa !32
  %i.cco = fadd <8 x float> %i.ccn, %i.cbw
  store <8 x float> %i.cco, ptr %i.cck, align 32, !tbaa !32
  %i.ccp = extractelement <4 x i32> %i.cbq, i64 2
  %i.ccq = sext i32 %i.ccp to i64                 ; 4 uses
  %i.ccr = getelementptr inbounds [4 x i8], ptr %i.cbs, i64 %i.ccq
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 64 ; 2 uses
  %i.cct = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.ccq
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 64 ; 2 uses
  %i.ccv = load <8 x float>, ptr %i.ccs, align 32, !tbaa !32
  %i.ccw = fadd <8 x float> %i.cbv, %i.ccv
  store <8 x float> %i.ccw, ptr %i.ccs, align 32, !tbaa !32
  %i.ccx = load <8 x float>, ptr %i.ccu, align 32, !tbaa !32
  %i.ccy = fadd <8 x float> %i.ccx, %i.cbw
  store <8 x float> %i.ccy, ptr %i.ccu, align 32, !tbaa !32
  %i.ccz = extractelement <4 x i32> %i.cbq, i64 3
  %i.cda = sext i32 %i.ccz to i64                 ; 4 uses
  %i.cdb = getelementptr inbounds [4 x i8], ptr %i.cbs, i64 %i.cda
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cdb, i64 96 ; 2 uses
  %i.cdd = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.cda
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 96 ; 2 uses
  %i.cdf = load <8 x float>, ptr %i.cdc, align 32, !tbaa !32
  %i.cdg = fadd <8 x float> %i.cbv, %i.cdf
  store <8 x float> %i.cdg, ptr %i.cdc, align 32, !tbaa !32
  %i.cdh = load <8 x float>, ptr %i.cde, align 32, !tbaa !32
  %i.cdi = fadd <8 x float> %i.cdh, %i.cbw
  store <8 x float> %i.cdi, ptr %i.cde, align 32, !tbaa !32
  %i.cdj = load ptr, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 16
  %i.cdl = load ptr, ptr %i.cdk, align 8, !tbaa !96 ; 4 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdj, i64 24
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !96 ; 4 uses
  %i.cdo = shufflevector <16 x float> %i.caw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cdp = shufflevector <16 x float> %i.caw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cdq = getelementptr inbounds [4 x i8], ptr %i.cdl, i64 %i.cby ; 2 uses
  %i.cdr = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cby ; 2 uses
  %i.cds = load <8 x float>, ptr %i.cdq, align 32, !tbaa !32
  %i.cdt = fadd <8 x float> %i.cdo, %i.cds
  store <8 x float> %i.cdt, ptr %i.cdq, align 32, !tbaa !32
  %i.cdu = load <8 x float>, ptr %i.cdr, align 32, !tbaa !32
  %i.cdv = fadd <8 x float> %i.cdu, %i.cdp
  store <8 x float> %i.cdv, ptr %i.cdr, align 32, !tbaa !32
  %i.cdw = getelementptr inbounds [4 x i8], ptr %i.cdl, i64 %i.ccg
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdw, i64 32 ; 2 uses
  %i.cdy = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.ccg
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 32 ; 2 uses
  %i.cea = load <8 x float>, ptr %i.cdx, align 32, !tbaa !32
  %i.ceb = fadd <8 x float> %i.cdo, %i.cea
  store <8 x float> %i.ceb, ptr %i.cdx, align 32, !tbaa !32
  %i.cec = load <8 x float>, ptr %i.cdz, align 32, !tbaa !32
  %i.ced = fadd <8 x float> %i.cec, %i.cdp
  store <8 x float> %i.ced, ptr %i.cdz, align 32, !tbaa !32
  %i.cee = getelementptr inbounds [4 x i8], ptr %i.cdl, i64 %i.ccq
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cee, i64 64 ; 2 uses
  %i.ceg = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.ccq
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 64 ; 2 uses
  %i.cei = load <8 x float>, ptr %i.cef, align 32, !tbaa !32
  %i.cej = fadd <8 x float> %i.cdo, %i.cei
  store <8 x float> %i.cej, ptr %i.cef, align 32, !tbaa !32
  %i.cek = load <8 x float>, ptr %i.ceh, align 32, !tbaa !32
  %i.cel = fadd <8 x float> %i.cek, %i.cdp
  store <8 x float> %i.cel, ptr %i.ceh, align 32, !tbaa !32
  %i.cem = getelementptr inbounds [4 x i8], ptr %i.cdl, i64 %i.cda
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 96 ; 2 uses
  %i.ceo = getelementptr inbounds [4 x i8], ptr %i.cdn, i64 %i.cda
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 96 ; 2 uses
  %i.ceq = load <8 x float>, ptr %i.cen, align 32, !tbaa !32
  %i.cer = fadd <8 x float> %i.cdo, %i.ceq
  store <8 x float> %i.cer, ptr %i.cen, align 32, !tbaa !32
  %i.ces = load <8 x float>, ptr %i.cep, align 32, !tbaa !32
  %i.cet = fadd <8 x float> %i.ces, %i.cdp
  store <8 x float> %i.cet, ptr %i.cep, align 32, !tbaa !32
  %i.ceu = fmul <16 x float> %i.byt, %i.cat       ; 3 uses
end_hunk_0
