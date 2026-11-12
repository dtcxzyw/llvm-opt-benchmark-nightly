Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTab_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1753
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4725.preheader
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.pre-phi5067
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !89
  %.reass.3 = mul i32 %i.jy, %factor.op.mul
  %i.jz = sext i32 %.reass.3 to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !43
  %i.kc = fdiv float %i.kb, 6.000000e+00
  %i.kd = fpext float %i.kc to double
  %i.ke = fmul double %i.kd, 5.000000e-01
  %i.kf = fmul double %i.ke, %i.ci
  %i.kg = fptrunc double %i.kf to float
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %.pre-phi5079 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !43
  %i.kj = fadd float %i.ki, %i.kg
  store float %i.kj, ptr %i.kh, align 4, !tbaa !43
  br label %.loopexit4722

.loopexit4722:                                    ; preds = %.loopexit4724, %bb.a
  %i.kk = add nsw i32 %i.dt, 8
  %i.kl = add nsw i32 %i.dt, 16
  %i.km = sext i32 %i.dt to i64                   ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.km ; 4 uses
  %.val.i = load float, ptr %i.kn, align 1, !tbaa !32, !noalias !119
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %.val3.i = load float, ptr %i.ko, align 1, !tbaa !32, !noalias !119
  %i.kp = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.kq = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.kr = shufflevector <4 x float> %i.kp, <4 x float> %i.kq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ks = fadd <16 x float> %i.dc, %i.kr          ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.val.i726 = load float, ptr %i.kt, align 1, !tbaa !32, !noalias !119
  %i.ku = getelementptr i8, ptr %i.kn, i64 12
  %.val3.i727 = load float, ptr %i.ku, align 1, !tbaa !32, !noalias !119
  %i.kv = insertelement <4 x float> poison, float %.val.i726, i64 0
  %i.kw = insertelement <4 x float> poison, float %.val3.i727, i64 0
  %i.kx = shufflevector <4 x float> %i.kv, <4 x float> %i.kw, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ky = fadd <16 x float> %i.dc, %i.kx          ; 6 uses
  %i.kz = sext i32 %i.kk to i64                   ; 2 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.kz ; 4 uses
  %.val.i729 = load float, ptr %i.la, align 1, !tbaa !32, !noalias !120
  %i.lb = getelementptr i8, ptr %i.la, i64 4
  %.val3.i730 = load float, ptr %i.lb, align 1, !tbaa !32, !noalias !120
  %i.lc = insertelement <4 x float> poison, float %.val.i729, i64 0
  %i.ld = insertelement <4 x float> poison, float %.val3.i730, i64 0
  %i.le = shufflevector <4 x float> %i.lc, <4 x float> %i.ld, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lf = fadd <16 x float> %i.di, %i.le          ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.val.i732 = load float, ptr %i.lg, align 1, !tbaa !32, !noalias !120
  %i.lh = getelementptr i8, ptr %i.la, i64 12
  %.val3.i733 = load float, ptr %i.lh, align 1, !tbaa !32, !noalias !120
  %i.li = insertelement <4 x float> poison, float %.val.i732, i64 0
  %i.lj = insertelement <4 x float> poison, float %.val3.i733, i64 0
  %i.lk = shufflevector <4 x float> %i.li, <4 x float> %i.lj, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ll = fadd <16 x float> %i.di, %i.lk          ; 6 uses
  %i.lm = sext i32 %i.kl to i64                   ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.lm ; 4 uses
  %.val.i735 = load float, ptr %i.ln, align 1, !tbaa !32, !noalias !121
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  %.val3.i736 = load float, ptr %i.lo, align 1, !tbaa !32, !noalias !121
  %i.lp = insertelement <4 x float> poison, float %.val.i735, i64 0
  %i.lq = insertelement <4 x float> poison, float %.val3.i736, i64 0
  %i.lr = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ls = fadd <16 x float> %i.do, %i.lr          ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.val.i738 = load float, ptr %i.lt, align 1, !tbaa !32, !noalias !121
  %i.lu = getelementptr i8, ptr %i.ln, i64 12
  %.val3.i739 = load float, ptr %i.lu, align 1, !tbaa !32, !noalias !121
  %i.lv = insertelement <4 x float> poison, float %.val.i738, i64 0
  %i.lw = insertelement <4 x float> poison, float %.val3.i739, i64 0
  %i.lx = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ly = fadd <16 x float> %i.do, %i.lx          ; 6 uses
  %i.lz = sext i32 %i.dp to i64                   ; 5 uses
  br i1 %i.dx, label %bb.c, label %.preheader4721

bb.c:                                             ; preds = %.loopexit4722
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.lz ; 4 uses
  %.val.i741 = load float, ptr %i.ma, align 1, !tbaa !32, !noalias !122
  %i.mb = getelementptr i8, ptr %i.ma, i64 4
  %.val2.i = load float, ptr %i.mb, align 1, !tbaa !32, !noalias !122
  %i.mc = insertelement <4 x float> poison, float %.val.i741, i64 0
  %i.md = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mf = fmul <16 x float> %i.cj, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.val.i742 = load float, ptr %i.mg, align 1, !tbaa !32, !noalias !122
  %i.mh = getelementptr i8, ptr %i.ma, i64 12
  %.val2.i743 = load float, ptr %i.mh, align 1, !tbaa !32, !noalias !122
  %i.mi = insertelement <4 x float> poison, float %.val.i742, i64 0
  %i.mj = insertelement <4 x float> poison, float %.val2.i743, i64 0
  %i.mk = shufflevector <4 x float> %i.mi, <4 x float> %i.mj, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ml = fmul <16 x float> %i.cj, %i.mk
  br label %.preheader4721

.preheader4721:                                   ; preds = %.loopexit4722, %bb.c
  %.sroa.04304.0 = phi <16 x float> [ %i.mf, %bb.c ], [ undef, %.loopexit4722 ] ; 4 uses
  %.sroa.74308.0 = phi <16 x float> [ %i.ml, %bb.c ], [ undef, %.loopexit4722 ] ; 4 uses
  %i.mm = load i32, ptr %1, align 8, !tbaa !118
  %i.mn = shl i32 %i.mm, 1                        ; 4 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.lz
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !89
  %i.mq = mul i32 %i.mn, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mr ; 6 uses
  %i.mt = getelementptr [4 x i8], ptr %i.j, i64 %i.lz
  %i.mu = getelementptr i8, ptr %i.mt, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !89
  %i.mw = mul i32 %i.mn, %i.mv
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mx ; 6 uses
  %i.mz = getelementptr [4 x i8], ptr %i.j, i64 %i.lz
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !89
  %i.nc = mul i32 %i.mn, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nd ; 4 uses
  %i.nf = getelementptr [4 x i8], ptr %i.j, i64 %i.lz
  %i.ng = getelementptr i8, ptr %i.nf, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !89
  %i.ni = mul i32 %i.mn, %i.nh
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nj ; 4 uses
  %i.nl = sext i32 %i.dv to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nl ; 4 uses
  %.val689 = load float, ptr %i.nm, align 1, !tbaa !32
  %i.nn = getelementptr i8, ptr %i.nm, i64 4
  %.val690 = load float, ptr %i.nn, align 1, !tbaa !32
  %i.no = insertelement <4 x float> poison, float %.val689, i64 0
  %i.np = insertelement <4 x float> poison, float %.val690, i64 0
  %i.nq = shufflevector <4 x float> %i.no, <4 x float> %i.np, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %.val689.1 = load float, ptr %i.nr, align 1, !tbaa !32
  %i.ns = getelementptr i8, ptr %i.nm, i64 12
  %.val690.1 = load float, ptr %i.ns, align 1, !tbaa !32
  %i.nt = insertelement <4 x float> poison, float %.val689.1, i64 0
  %i.nu = insertelement <4 x float> poison, float %.val690.1, i64 0
  %i.nv = shufflevector <4 x float> %i.nt, <4 x float> %i.nu, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.nw = icmp slt i32 %i.cs, %i.cu               ; 3 uses
  br i1 %i.dz, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader4721
  br i1 %i.nw, label %.lr.ph4823, label %.critedge

.lr.ph4823:                                       ; preds = %.preheader
  %wide.trip.count4935 = sext i32 %i.cu to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4823, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587
  %indvars.iv4932 = phi i64 [ %i.fw, %.lr.ph4823 ], [ %indvars.iv.next4933, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 4 uses
  %.sroa.04063.04821 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aae, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %.sroa.16.04820 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aaf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %.sroa.04080.04819 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aac, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %.sroa.164087.04818 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aad, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %.sroa.04098.04817 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aaa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %.sroa.164105.04816 = phi <16 x float> [ zeroinitializer, %.lr.ph4823 ], [ %i.aab, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ] ; 2 uses
  %i.nx = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv4932
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !89
  %.not573 = icmp eq i32 %i.oa, -1
  br i1 %.not573, label %.critedge.loopexit, label %.critedge575

.critedge575:                                     ; preds = %bb.d
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv4932 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !97 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !123
  %i.of = insertelement <16 x i32> poison, i32 %i.oe, i64 0
  %i.og = shufflevector <16 x i32> %i.of, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.oh = and <16 x i32> %.sroa.04989.0.copyload, %i.og
  %.not5101 = icmp eq <16 x i32> %i.oh, zeroinitializer ; 5 uses
  %i.oi = and <16 x i32> %.sroa.6.0.copyload, %i.og
  %.not5102 = icmp eq <16 x i32> %i.oi, zeroinitializer ; 2 uses
  %i.oj = shl nsw i32 %i.oc, 3
  %i.ok = mul nsw i32 %i.oc, 24
  %i.ol = sext i32 %i.ok to i64                   ; 2 uses
  %i.om = getelementptr [4 x i8], ptr %i.bn, i64 %i.ol ; 3 uses
  %.val6915268 = load <8 x float>, ptr %i.om, align 32, !tbaa !32
  %i.on = shufflevector <8 x float> %.val6915268, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oo = getelementptr i8, ptr %i.om, i64 32
  %.val6925269 = load <8 x float>, ptr %i.oo, align 32, !tbaa !32
  %i.op = shufflevector <8 x float> %.val6925269, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oq = getelementptr i8, ptr %i.om, i64 64
  %.val6935270 = load <8 x float>, ptr %i.oq, align 32, !tbaa !32
  %i.or = shufflevector <8 x float> %.val6935270, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.os = fsub <16 x float> %i.ks, %i.on          ; 3 uses
  %i.ot = fsub <16 x float> %i.ky, %i.on          ; 3 uses
  %i.ou = fsub <16 x float> %i.lf, %i.op          ; 3 uses
  %i.ov = fsub <16 x float> %i.ll, %i.op          ; 3 uses
  %i.ow = fsub <16 x float> %i.ls, %i.or          ; 3 uses
  %i.ox = fsub <16 x float> %i.ly, %i.or          ; 3 uses
  %i.oy = fmul <16 x float> %i.os, %i.os
  %i.oz = fmul <16 x float> %i.ou, %i.ou
  %i.pa = fadd <16 x float> %i.oy, %i.oz
  %i.pb = fmul <16 x float> %i.ow, %i.ow
  %i.pc = fadd <16 x float> %i.pa, %i.pb          ; 2 uses
  %i.pd = fmul <16 x float> %i.ot, %i.ot
  %i.pe = fmul <16 x float> %i.ov, %i.ov
  %i.pf = fadd <16 x float> %i.pd, %i.pe
  %i.pg = fmul <16 x float> %i.ox, %i.ox
  %i.ph = fadd <16 x float> %i.pf, %i.pg          ; 2 uses
  %i.pi = fcmp olt <16 x float> %i.pc, %i.bj
  %i.pj = bitcast <16 x i1> %i.pi to i16          ; 3 uses
  %i.pk = fcmp olt <16 x float> %i.ph, %i.bj
  %i.pl = bitcast <16 x i1> %i.pk to i16          ; 3 uses
  %i.pm = shl nsw i32 %i.oc, 1                    ; 3 uses
  %i.pn = icmp eq i32 %i.pm, %i.cx
  br i1 %i.pn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge575
  %i.po = and i16 %i.pj, %i.v
  %i.pp = and i16 %i.pl, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

bb.f:                                             ; preds = %.critedge575
  %i.pq = or disjoint i32 %i.pm, 1
  %i.pr = icmp eq i32 %i.pq, %i.cx
  br i1 %i.pr, label %bb.g, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

bb.g:                                             ; preds = %bb.f
  %i.ps = and i16 %i.pj, %i.x
  %i.pt = and i16 %i.pl, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.11.0 = phi i16 [ %i.pp, %bb.e ], [ %i.pt, %bb.g ], [ %i.pl, %bb.f ]
  %.sroa.0.0 = phi i16 [ %i.po, %bb.e ], [ %i.ps, %bb.g ], [ %i.pj, %bb.f ]
  %i.pu = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pc, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.pv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ph, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
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
  %i.qg = sext i32 %i.oj to i64                   ; 2 uses
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.qg
  %.val6945271 = load <8 x float>, ptr %i.qh, align 32, !tbaa !32
  %5 = bitcast i16 %.sroa.0.0 to <16 x i1>        ; 4 uses
  %i.qi = select <16 x i1> %5, <16 x float> %i.qa, <16 x float> zeroinitializer ; 4 uses
  %6 = bitcast i16 %.sroa.11.0 to <16 x i1>       ; 2 uses
  %i.qj = select <16 x i1> %6, <16 x float> %i.qf, <16 x float> zeroinitializer ; 4 uses
  %i.qk = fmul <16 x float> %i.pu, %i.qi          ; 2 uses
  %i.ql = fmul <16 x float> %i.pv, %i.qj          ; 2 uses
  %i.qm = fmul <16 x float> %i.ad, %i.qk          ; 2 uses
  %i.qn = fmul <16 x float> %i.ad, %i.ql          ; 2 uses
  %i.qo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qm, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qn, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cm, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4)
  %i.qs = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.qo, <16 x i1> splat (i1 true), i32 4)
  %i.qt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cm, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4)
  %i.qv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.qp, <16 x i1> splat (i1 true), i32 4)
  %i.qw = shufflevector <8 x float> %.val6945271, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qx = fmul <16 x float> %.sroa.04304.0, %i.qw ; 2 uses
  %i.qy = fmul <16 x float> %.sroa.74308.0, %i.qw ; 2 uses
  %i.qz = fmul <16 x float> %i.qi, %i.qi          ; 4 uses
  %i.ra = fmul <16 x float> %i.qj, %i.qj
  %i.rb = select <16 x i1> %.not5101, <16 x float> zeroinitializer, <16 x float> %i.qi ; 2 uses
  %i.rc = select <16 x i1> %.not5102, <16 x float> zeroinitializer, <16 x float> %i.qj ; 2 uses
  %i.rd = sitofp <16 x i32> %i.qo to <16 x float>
  %i.re = sitofp <16 x i32> %i.qp to <16 x float>
  %i.rf = fsub <16 x float> %i.qm, %i.rd          ; 2 uses
  %i.rg = fsub <16 x float> %i.qn, %i.re          ; 2 uses
  %i.rh = fsub <16 x float> %i.qr, %i.qq
  %i.ri = fsub <16 x float> %i.qu, %i.qt
  %i.rj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rf, <16 x float> %i.rh, <16 x float> %i.qq) ; 2 uses
  %i.rk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> %i.ri, <16 x float> %i.qt) ; 2 uses
  %i.rl = fneg <16 x float> %i.rj
  %i.rm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> %i.qk, <16 x float> %i.rb)
  %i.rn = fneg <16 x float> %i.rk
  %i.ro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rn, <16 x float> %i.ql, <16 x float> %i.rc)
  %i.rp = fmul <16 x float> %i.ag, %i.rf
  %i.rq = fadd <16 x float> %i.qq, %i.rj
  %i.rr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rp, <16 x float> %i.rq, <16 x float> %i.qs)
  %i.rs = fmul <16 x float> %i.ag, %i.rg
  %i.rt = fadd <16 x float> %i.qt, %i.rk
  %i.ru = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rs, <16 x float> %i.rt, <16 x float> %i.qv)
  %i.rv = fmul <16 x float> %i.qx, %i.rm
  %i.rw = fmul <16 x float> %i.qy, %i.ro
  %i.rx = select <16 x i1> %.not5101, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.ry = fadd <16 x float> %i.rx, %i.rr
  %i.rz = select <16 x i1> %.not5102, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.sa = fadd <16 x float> %i.rz, %i.ru
  %i.sb = fsub <16 x float> %i.rb, %i.ry
  %i.sc = fmul <16 x float> %i.qx, %i.sb
  %i.sd = fsub <16 x float> %i.rc, %i.sa
  %i.se = fmul <16 x float> %i.qy, %i.sd
  %i.sf = select <16 x i1> %5, <16 x float> %i.sc, <16 x float> zeroinitializer ; 2 uses
  %i.sg = select <16 x i1> %6, <16 x float> %i.se, <16 x float> zeroinitializer ; 2 uses
  %i.sh = shl nsw i32 %i.oc, 4
  %i.si = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qg
  %.val7244712 = load <8 x i32>, ptr %i.si, align 32, !tbaa !32 ; 2 uses
  %i.sj = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7244712, <8 x i1> splat (i1 true), i32 8)
  %i.sk = bitcast <8 x double> %i.sj to <16 x float> ; 2 uses
  %i.sl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.my, <8 x i32> %.val7244712, <8 x i1> splat (i1 true), i32 8)
  %i.sm = bitcast <8 x double> %i.sl to <16 x float> ; 2 uses
  %i.sn = shufflevector <16 x float> %i.sk, <16 x float> %i.sm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.so = shufflevector <16 x float> %i.sk, <16 x float> %i.sm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.sp = fmul <16 x float> %i.qz, %i.qz
  %i.sq = fmul <16 x float> %i.qz, %i.sp          ; 4 uses
  %i.sr = select <16 x i1> %.not5101, <16 x float> zeroinitializer, <16 x float> %i.sq ; 3 uses
  %i.ss = fmul <16 x float> %i.sr, %i.sr
  %i.st = fmul <16 x float> %i.sr, %i.sn          ; 2 uses
  %i.su = fmul <16 x float> %i.ss, %i.so          ; 2 uses
  %i.sv = fsub <16 x float> %i.su, %i.st
  %i.sw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sn, <16 x float> %i.as, <16 x float> %i.st)
  %i.sx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.so, <16 x float> %i.av, <16 x float> %i.su)
  %i.sy = fmul <16 x float> %i.sw, splat (float f0xBE2AAAAB)
  %i.sz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sx, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.sy)
  %i.ta = select <16 x i1> %.not5101, <16 x float> zeroinitializer, <16 x float> %i.sz
  %i.tb = sext i32 %i.sh to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.tb
  %.val6955272 = load <8 x float>, ptr %i.tc, align 32, !tbaa !32
  %i.td = shufflevector <8 x float> %.val6955272, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.te = fmul <16 x float> %i.nq, %i.td          ; 2 uses
  %i.tf = select <16 x i1> %5, <16 x float> %i.pu, <16 x float> zeroinitializer
  %i.tg = fmul <16 x float> %i.bd, %i.tf          ; 3 uses
  %i.th = bitcast <16 x float> %i.tg to <8 x i64>
  %i.ti = xor <8 x i64> %i.th, splat (i64 -9223372034707292160)
  %i.tj = bitcast <8 x i64> %i.ti to <16 x float> ; 2 uses
  %i.tk = fmul <16 x float> %i.tj, splat (float f0x3FB8AA3B) ; 2 uses
  %i.tl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.tk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.tm = shl <16 x i32> %i.tl, splat (i32 23)
  %i.tn = add <16 x i32> %i.tm, splat (i32 1065353216)
  %i.to = bitcast <16 x i32> %i.tn to <16 x float> ; 2 uses
  %i.tp = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.tk, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.tq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tp, <16 x float> splat (float f0xBF317200), <16 x float> %i.tj)
  %i.tr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tp, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.tq) ; 7 uses
  %i.ts = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tr, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.tt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ts, <16 x float> %i.tr, <16 x float> splat (float f0x3D2AAF4C))
  %i.tu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tt, <16 x float> %i.tr, <16 x float> splat (float f0x3E2AAA5E))
  %i.tv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tu, <16 x float> %i.tr, <16 x float> splat (float f0x3EFFFFFB))
  %i.tw = fmul <16 x float> %i.tr, %i.tr
  %i.tx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tw, <16 x float> %i.tv, <16 x float> %i.tr)
  %i.ty = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tx, <16 x float> %i.to, <16 x float> %i.to)
  %i.tz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tg, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.ua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tz, <16 x float> %i.tg, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sq, <16 x float> %i.ua, <16 x float> %i.bf)
  %i.uc = fneg <16 x float> %i.ty                 ; 2 uses
  %i.ud = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uc, <16 x float> %i.ub, <16 x float> %i.sq)
  %i.ue = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.te, <16 x float> %i.ud, <16 x float> %i.sv)
  %i.uf = select <16 x i1> %.not5101, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.ug = fmul <16 x float> %i.te, splat (float f0x3E2AAAAB)
  %i.uh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uc, <16 x float> %i.ua, <16 x float> splat (float 1.000000e+00))
  %i.ui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sq, <16 x float> %i.uh, <16 x float> %i.uf)
  %i.uj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ug, <16 x float> %i.ui, <16 x float> %i.ta)
  %i.uk = select <16 x i1> %5, <16 x float> %i.uj, <16 x float> zeroinitializer ; 2 uses
  %i.ul = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.um = load i32, ptr %i.ck, align 8, !tbaa !124
  %i.un = sext i32 %i.pm to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un
  %i.up = load i32, ptr %i.cl, align 4, !tbaa !125
  %i.uq = load i32, ptr %i.cg, align 8, !tbaa !98
  %i.ur = load <2 x i32>, ptr %i.uo, align 4, !tbaa !89 ; 2 uses
  %i.us = insertelement <2 x i32> poison, i32 %i.um, i64 0
  %i.ut = shufflevector <2 x i32> %i.ur, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.uu = shufflevector <2 x i32> %i.ur, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.uv = shufflevector <2 x i32> %i.us, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.uw = ashr <4 x i32> %i.uu, %i.uv
  %i.ux = shufflevector <4 x i32> %i.uw, <4 x i32> %i.ut, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.uy = insertelement <4 x i32> poison, i32 %i.up, i64 0
  %i.uz = shufflevector <4 x i32> %i.uy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.va = and <4 x i32> %i.ux, %i.uz
  %i.vb = insertelement <4 x i32> poison, i32 %i.uq, i64 0
  %i.vc = shufflevector <4 x i32> %i.vb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vd = mul nsw <4 x i32> %i.va, %i.vc          ; 4 uses
  %i.ve = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !95 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !95 ; 4 uses
  %i.vi = shufflevector <16 x float> %i.sf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vj = shufflevector <16 x float> %i.sf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vk = extractelement <4 x i32> %i.vd, i64 0
  %i.vl = sext i32 %i.vk to i64                   ; 6 uses
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vl ; 2 uses
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vl ; 2 uses
  %i.vo = load <8 x float>, ptr %i.vm, align 32, !tbaa !32
  %i.vp = fadd <8 x float> %i.vi, %i.vo
  store <8 x float> %i.vp, ptr %i.vm, align 32, !tbaa !32
  %i.vq = load <8 x float>, ptr %i.vn, align 32, !tbaa !32
  %i.vr = fadd <8 x float> %i.vq, %i.vj
  store <8 x float> %i.vr, ptr %i.vn, align 32, !tbaa !32
  %i.vs = extractelement <4 x i32> %i.vd, i64 1
  %i.vt = sext i32 %i.vs to i64                   ; 6 uses
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32 ; 2 uses
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vt
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 32 ; 2 uses
  %i.vy = load <8 x float>, ptr %i.vv, align 32, !tbaa !32
  %i.vz = fadd <8 x float> %i.vi, %i.vy
  store <8 x float> %i.vz, ptr %i.vv, align 32, !tbaa !32
  %i.wa = load <8 x float>, ptr %i.vx, align 32, !tbaa !32
  %i.wb = fadd <8 x float> %i.wa, %i.vj
  store <8 x float> %i.wb, ptr %i.vx, align 32, !tbaa !32
  %i.wc = extractelement <4 x i32> %i.vd, i64 2
  %i.wd = sext i32 %i.wc to i64                   ; 6 uses
  %i.we = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 64 ; 2 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.wd
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 64 ; 2 uses
  %i.wi = load <8 x float>, ptr %i.wf, align 32, !tbaa !32
  %i.wj = fadd <8 x float> %i.vi, %i.wi
  store <8 x float> %i.wj, ptr %i.wf, align 32, !tbaa !32
  %i.wk = load <8 x float>, ptr %i.wh, align 32, !tbaa !32
  %i.wl = fadd <8 x float> %i.wk, %i.vj
  store <8 x float> %i.wl, ptr %i.wh, align 32, !tbaa !32
  %i.wm = extractelement <4 x i32> %i.vd, i64 3
  %i.wn = sext i32 %i.wm to i64                   ; 6 uses
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 96 ; 2 uses
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.wn
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 96 ; 2 uses
  %i.ws = load <8 x float>, ptr %i.wp, align 32, !tbaa !32
  %i.wt = fadd <8 x float> %i.vi, %i.ws
  store <8 x float> %i.wt, ptr %i.wp, align 32, !tbaa !32
  %i.wu = load <8 x float>, ptr %i.wr, align 32, !tbaa !32
  %i.wv = fadd <8 x float> %i.wu, %i.vj
  store <8 x float> %i.wv, ptr %i.wr, align 32, !tbaa !32
  %i.ww = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !95 ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !95 ; 4 uses
  %i.xb = shufflevector <16 x float> %i.sg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xc = shufflevector <16 x float> %i.sg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.vl ; 2 uses
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.vl ; 2 uses
  %i.xf = load <8 x float>, ptr %i.xd, align 32, !tbaa !32
  %i.xg = fadd <8 x float> %i.xb, %i.xf
  store <8 x float> %i.xg, ptr %i.xd, align 32, !tbaa !32
  %i.xh = load <8 x float>, ptr %i.xe, align 32, !tbaa !32
  %i.xi = fadd <8 x float> %i.xh, %i.xc
  store <8 x float> %i.xi, ptr %i.xe, align 32, !tbaa !32
  %i.xj = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.vt
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 32 ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.vt
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 32 ; 2 uses
  %i.xn = load <8 x float>, ptr %i.xk, align 32, !tbaa !32
  %i.xo = fadd <8 x float> %i.xb, %i.xn
  store <8 x float> %i.xo, ptr %i.xk, align 32, !tbaa !32
  %i.xp = load <8 x float>, ptr %i.xm, align 32, !tbaa !32
  %i.xq = fadd <8 x float> %i.xp, %i.xc
  store <8 x float> %i.xq, ptr %i.xm, align 32, !tbaa !32
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.wd
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 64 ; 2 uses
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.wd
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 64 ; 2 uses
  %i.xv = load <8 x float>, ptr %i.xs, align 32, !tbaa !32
  %i.xw = fadd <8 x float> %i.xb, %i.xv
  store <8 x float> %i.xw, ptr %i.xs, align 32, !tbaa !32
  %i.xx = load <8 x float>, ptr %i.xu, align 32, !tbaa !32
  %i.xy = fadd <8 x float> %i.xx, %i.xc
  store <8 x float> %i.xy, ptr %i.xu, align 32, !tbaa !32
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.wn
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 96 ; 2 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.wn
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 96 ; 2 uses
  %i.yd = load <8 x float>, ptr %i.ya, align 32, !tbaa !32
  %i.ye = fadd <8 x float> %i.xb, %i.yd
  store <8 x float> %i.ye, ptr %i.ya, align 32, !tbaa !32
  %i.yf = load <8 x float>, ptr %i.yc, align 32, !tbaa !32
  %i.yg = fadd <8 x float> %i.yf, %i.xc
  store <8 x float> %i.yg, ptr %i.yc, align 32, !tbaa !32
  %i.yh = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !95 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !95 ; 4 uses
  %i.yl = shufflevector <16 x float> %i.uk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ym = shufflevector <16 x float> %i.uk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.vl ; 2 uses
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.vl ; 2 uses
  %i.yp = load <8 x float>, ptr %i.yn, align 32, !tbaa !32
  %i.yq = fadd <8 x float> %i.yl, %i.yp
  store <8 x float> %i.yq, ptr %i.yn, align 32, !tbaa !32
  %i.yr = load <8 x float>, ptr %i.yo, align 32, !tbaa !32
  %i.ys = fadd <8 x float> %i.yr, %i.ym
  store <8 x float> %i.ys, ptr %i.yo, align 32, !tbaa !32
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.vt
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 32 ; 2 uses
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.vt
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 32 ; 2 uses
  %i.yx = load <8 x float>, ptr %i.yu, align 32, !tbaa !32
  %i.yy = fadd <8 x float> %i.yl, %i.yx
  store <8 x float> %i.yy, ptr %i.yu, align 32, !tbaa !32
  %i.yz = load <8 x float>, ptr %i.yw, align 32, !tbaa !32
  %i.za = fadd <8 x float> %i.yz, %i.ym
  store <8 x float> %i.za, ptr %i.yw, align 32, !tbaa !32
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.wd
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 64 ; 2 uses
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.wd
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 64 ; 2 uses
  %i.zf = load <8 x float>, ptr %i.zc, align 32, !tbaa !32
  %i.zg = fadd <8 x float> %i.yl, %i.zf
  store <8 x float> %i.zg, ptr %i.zc, align 32, !tbaa !32
  %i.zh = load <8 x float>, ptr %i.ze, align 32, !tbaa !32
  %i.zi = fadd <8 x float> %i.zh, %i.ym
  store <8 x float> %i.zi, ptr %i.ze, align 32, !tbaa !32
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.wn
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 96 ; 2 uses
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.wn
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 96 ; 2 uses
  %i.zn = load <8 x float>, ptr %i.zk, align 32, !tbaa !32
  %i.zo = fadd <8 x float> %i.yl, %i.zn
  store <8 x float> %i.zo, ptr %i.zk, align 32, !tbaa !32
  %i.zp = load <8 x float>, ptr %i.zm, align 32, !tbaa !32
  %i.zq = fadd <8 x float> %i.zp, %i.ym
  store <8 x float> %i.zq, ptr %i.zm, align 32, !tbaa !32
  %i.zr = fadd <16 x float> %i.rv, %i.ue
  %i.zs = fmul <16 x float> %i.qz, %i.zr          ; 3 uses
  %i.zt = fmul <16 x float> %i.ra, %i.rw          ; 3 uses
  %i.zu = fmul <16 x float> %i.os, %i.zs          ; 2 uses
  %i.zv = fmul <16 x float> %i.ot, %i.zt          ; 2 uses
  %i.zw = fmul <16 x float> %i.ou, %i.zs          ; 2 uses
  %i.zx = fmul <16 x float> %i.ov, %i.zt          ; 2 uses
  %i.zy = fmul <16 x float> %i.ow, %i.zs          ; 2 uses
  %i.zz = fmul <16 x float> %i.ox, %i.zt          ; 2 uses
  %i.aaa = fadd <16 x float> %.sroa.04098.04817, %i.zu ; 2 uses
  %i.aab = fadd <16 x float> %.sroa.164105.04816, %i.zv ; 2 uses
  %i.aac = fadd <16 x float> %.sroa.04080.04819, %i.zw ; 2 uses
  %i.aad = fadd <16 x float> %.sroa.164087.04818, %i.zx ; 2 uses
  %i.aae = fadd <16 x float> %.sroa.04063.04821, %i.zy ; 2 uses
  %i.aaf = fadd <16 x float> %.sroa.16.04820, %i.zz ; 2 uses
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ol ; 4 uses
  %i.aah = fadd <16 x float> %i.zv, %i.zu         ; 2 uses
  %i.aai = fadd <16 x float> %i.zx, %i.zw         ; 2 uses
  %i.aaj = fadd <16 x float> %i.zz, %i.zy         ; 2 uses
  %i.aak = load <8 x float>, ptr %i.aag, align 32, !tbaa !32
  %i.aal = shufflevector <16 x float> %i.aah, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aam = shufflevector <16 x float> %i.aah, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aan = fadd <8 x float> %i.aal, %i.aam
  %i.aao = fsub <8 x float> %i.aak, %i.aan
  store <8 x float> %i.aao, ptr %i.aag, align 32, !tbaa !32
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aag, i64 32 ; 2 uses
  %i.aaq = load <8 x float>, ptr %i.aap, align 32, !tbaa !32
  %i.aar = shufflevector <16 x float> %i.aai, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aas = shufflevector <16 x float> %i.aai, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aat = fadd <8 x float> %i.aar, %i.aas
  %i.aau = fsub <8 x float> %i.aaq, %i.aat
  store <8 x float> %i.aau, ptr %i.aap, align 32, !tbaa !32
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aag, i64 64 ; 2 uses
  %i.aaw = load <8 x float>, ptr %i.aav, align 32, !tbaa !32
  %i.aax = shufflevector <16 x float> %i.aaj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aay = shufflevector <16 x float> %i.aaj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = fadd <8 x float> %i.aax, %i.aay
  %i.aba = fsub <8 x float> %i.aaw, %i.aaz
  store <8 x float> %i.aba, ptr %i.aav, align 32, !tbaa !32
  %indvars.iv.next4933 = add nsw i64 %indvars.iv4932, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4725.preheader
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !95 ; 4 uses
  %i.aji = shufflevector <16 x float> %i.aep, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ajj = shufflevector <16 x float> %i.aep, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajk = getelementptr inbounds [4 x i8], ptr %i.ajf, i64 %i.ahs ; 2 uses
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.ahs ; 2 uses
  %i.ajm = load <8 x float>, ptr %i.ajk, align 32, !tbaa !32
  %i.ajn = fadd <8 x float> %i.aji, %i.ajm
  store <8 x float> %i.ajn, ptr %i.ajk, align 32, !tbaa !32
  %i.ajo = load <8 x float>, ptr %i.ajl, align 32, !tbaa !32
  %i.ajp = fadd <8 x float> %i.ajo, %i.ajj
  store <8 x float> %i.ajp, ptr %i.ajl, align 32, !tbaa !32
  %i.ajq = getelementptr inbounds [4 x i8], ptr %i.ajf, i64 %i.aia
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 32 ; 2 uses
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.aia
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 32 ; 2 uses
  %i.aju = load <8 x float>, ptr %i.ajr, align 32, !tbaa !32
  %i.ajv = fadd <8 x float> %i.aji, %i.aju
  store <8 x float> %i.ajv, ptr %i.ajr, align 32, !tbaa !32
  %i.ajw = load <8 x float>, ptr %i.ajt, align 32, !tbaa !32
  %i.ajx = fadd <8 x float> %i.ajw, %i.ajj
  store <8 x float> %i.ajx, ptr %i.ajt, align 32, !tbaa !32
  %i.ajy = getelementptr inbounds [4 x i8], ptr %i.ajf, i64 %i.aik
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 64 ; 2 uses
  %i.aka = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.aik
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 64 ; 2 uses
  %i.akc = load <8 x float>, ptr %i.ajz, align 32, !tbaa !32
  %i.akd = fadd <8 x float> %i.aji, %i.akc
  store <8 x float> %i.akd, ptr %i.ajz, align 32, !tbaa !32
  %i.ake = load <8 x float>, ptr %i.akb, align 32, !tbaa !32
  %i.akf = fadd <8 x float> %i.ake, %i.ajj
  store <8 x float> %i.akf, ptr %i.akb, align 32, !tbaa !32
  %i.akg = getelementptr inbounds [4 x i8], ptr %i.ajf, i64 %i.aiu
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 96 ; 2 uses
  %i.aki = getelementptr inbounds [4 x i8], ptr %i.ajh, i64 %i.aiu
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 96 ; 2 uses
  %i.akk = load <8 x float>, ptr %i.akh, align 32, !tbaa !32
  %i.akl = fadd <8 x float> %i.aji, %i.akk
  store <8 x float> %i.akl, ptr %i.akh, align 32, !tbaa !32
  %i.akm = load <8 x float>, ptr %i.akj, align 32, !tbaa !32
  %i.akn = fadd <8 x float> %i.akm, %i.ajj
  store <8 x float> %i.akn, ptr %i.akj, align 32, !tbaa !32
  %i.ako = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !95 ; 4 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !95 ; 4 uses
  %i.aks = shufflevector <16 x float> %i.agq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.akt = shufflevector <16 x float> %i.agq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.ahs ; 2 uses
  %i.akv = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.ahs ; 2 uses
  %i.akw = load <8 x float>, ptr %i.aku, align 32, !tbaa !32
  %i.akx = fadd <8 x float> %i.aks, %i.akw
  store <8 x float> %i.akx, ptr %i.aku, align 32, !tbaa !32
  %i.aky = load <8 x float>, ptr %i.akv, align 32, !tbaa !32
  %i.akz = fadd <8 x float> %i.aky, %i.akt
  store <8 x float> %i.akz, ptr %i.akv, align 32, !tbaa !32
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.aia
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 32 ; 2 uses
  %i.alc = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.aia
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 32 ; 2 uses
  %i.ale = load <8 x float>, ptr %i.alb, align 32, !tbaa !32
  %i.alf = fadd <8 x float> %i.aks, %i.ale
  store <8 x float> %i.alf, ptr %i.alb, align 32, !tbaa !32
  %i.alg = load <8 x float>, ptr %i.ald, align 32, !tbaa !32
  %i.alh = fadd <8 x float> %i.alg, %i.akt
  store <8 x float> %i.alh, ptr %i.ald, align 32, !tbaa !32
  %i.ali = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.aik
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 64 ; 2 uses
  %i.alk = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.aik
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 64 ; 2 uses
  %i.alm = load <8 x float>, ptr %i.alj, align 32, !tbaa !32
  %i.aln = fadd <8 x float> %i.aks, %i.alm
  store <8 x float> %i.aln, ptr %i.alj, align 32, !tbaa !32
  %i.alo = load <8 x float>, ptr %i.all, align 32, !tbaa !32
  %i.alp = fadd <8 x float> %i.alo, %i.akt
  store <8 x float> %i.alp, ptr %i.all, align 32, !tbaa !32
  %i.alq = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.aiu
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 96 ; 2 uses
  %i.als = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.aiu
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 96 ; 2 uses
  %i.alu = load <8 x float>, ptr %i.alr, align 32, !tbaa !32
  %i.alv = fadd <8 x float> %i.aks, %i.alu
  store <8 x float> %i.alv, ptr %i.alr, align 32, !tbaa !32
  %i.alw = load <8 x float>, ptr %i.alt, align 32, !tbaa !32
  %i.alx = fadd <8 x float> %i.alw, %i.akt
  store <8 x float> %i.alx, ptr %i.alt, align 32, !tbaa !32
  %i.aly = fadd <16 x float> %i.aeg, %i.agl
  %i.alz = fmul <16 x float> %i.adm, %i.aly       ; 3 uses
  %i.ama = fmul <16 x float> %i.adn, %i.aeh       ; 3 uses
  %i.amb = fmul <16 x float> %i.abp, %i.alz       ; 2 uses
  %i.amc = fmul <16 x float> %i.abq, %i.ama       ; 2 uses
  %i.amd = fmul <16 x float> %i.abr, %i.alz       ; 2 uses
  %i.ame = fmul <16 x float> %i.abs, %i.ama       ; 2 uses
  %i.amf = fmul <16 x float> %i.abt, %i.alz       ; 2 uses
  %i.amg = fmul <16 x float> %i.abu, %i.ama       ; 2 uses
  %i.amh = fadd <16 x float> %.sroa.04098.14842, %i.amb ; 2 uses
  %i.ami = fadd <16 x float> %.sroa.164105.14841, %i.amc ; 2 uses
  %i.amj = fadd <16 x float> %.sroa.04080.14844, %i.amd ; 2 uses
  %i.amk = fadd <16 x float> %.sroa.164087.14843, %i.ame ; 2 uses
  %i.aml = fadd <16 x float> %.sroa.04063.14846, %i.amf ; 2 uses
  %i.amm = fadd <16 x float> %.sroa.16.14845, %i.amg ; 2 uses
  %i.amn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abi ; 4 uses
  %i.amo = fadd <16 x float> %i.amc, %i.amb       ; 2 uses
  %i.amp = fadd <16 x float> %i.ame, %i.amd       ; 2 uses
  %i.amq = fadd <16 x float> %i.amg, %i.amf       ; 2 uses
  %i.amr = load <8 x float>, ptr %i.amn, align 32, !tbaa !32
  %i.ams = shufflevector <16 x float> %i.amo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amt = shufflevector <16 x float> %i.amo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amu = fadd <8 x float> %i.ams, %i.amt
  %i.amv = fsub <8 x float> %i.amr, %i.amu
  store <8 x float> %i.amv, ptr %i.amn, align 32, !tbaa !32
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amn, i64 32 ; 2 uses
  %i.amx = load <8 x float>, ptr %i.amw, align 32, !tbaa !32
  %i.amy = shufflevector <16 x float> %i.amp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amz = shufflevector <16 x float> %i.amp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ana = fadd <8 x float> %i.amy, %i.amz
  %i.anb = fsub <8 x float> %i.amx, %i.ana
  store <8 x float> %i.anb, ptr %i.amw, align 32, !tbaa !32
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amn, i64 64 ; 2 uses
  %i.and = load <8 x float>, ptr %i.anc, align 32, !tbaa !32
  %i.ane = shufflevector <16 x float> %i.amq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anf = shufflevector <16 x float> %i.amq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ang = fadd <8 x float> %i.ane, %i.anf
  %i.anh = fsub <8 x float> %i.and, %i.ang
  store <8 x float> %i.anh, ptr %i.anc, align 32, !tbaa !32
  %indvars.iv.next4944 = add nsw i64 %indvars.iv4943, 1 ; 2 uses
  %exitcond4947.not = icmp eq i64 %indvars.iv.next4944, %wide.trip.count4946
  br i1 %exitcond4947.not, label %.loopexit, label %.critedge577, !llvm.loop !18

bb.h:                                             ; preds = %.preheader4721
  br i1 %i.dx, label %.preheader4718, label %.preheader4720

.preheader4720:                                   ; preds = %bb.h
  br i1 %i.nw, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4720
  %wide.trip.count = sext i32 %i.cu to i64
  br label %bb.m

.preheader4718:                                   ; preds = %bb.h
  br i1 %i.nw, label %.lr.ph4780, label %.critedge3

.lr.ph4780:                                       ; preds = %.preheader4718
  %wide.trip.count4907 = sext i32 %i.cu to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph4780, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586
  %indvars.iv4904 = phi i64 [ %i.fw, %.lr.ph4780 ], [ %indvars.iv.next4905, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 4 uses
  %.sroa.04063.24778 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bda, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.16.24777 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bdb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.04080.24776 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bcy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.164087.24775 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bcz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.04098.24774 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bcw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.164105.24773 = phi <16 x float> [ zeroinitializer, %.lr.ph4780 ], [ %i.bcx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %i.ani = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ani, i64 %indvars.iv4904
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 4
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !89
  %.not572 = icmp eq i32 %i.anl, -1
  br i1 %.not572, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581: ; preds = %bb.i
  %i.anm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv4904 ; 2 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !97 ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !123
  %i.anq = insertelement <16 x i32> poison, i32 %i.anp, i64 0
  %i.anr = shufflevector <16 x i32> %i.anq, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ans = and <16 x i32> %.sroa.04989.0.copyload, %i.anr
  %.not5099 = icmp eq <16 x i32> %i.ans, zeroinitializer ; 5 uses
  %i.ant = and <16 x i32> %.sroa.6.0.copyload, %i.anr
  %.not5100 = icmp eq <16 x i32> %i.ant, zeroinitializer ; 5 uses
  %i.anu = shl nsw i32 %i.ann, 3
  %i.anv = mul nsw i32 %i.ann, 24
  %i.anw = sext i32 %i.anv to i64                 ; 2 uses
  %i.anx = getelementptr [4 x i8], ptr %i.bn, i64 %i.anw ; 3 uses
  %.val7015258 = load <8 x float>, ptr %i.anx, align 32, !tbaa !32
  %i.any = shufflevector <8 x float> %.val7015258, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anz = getelementptr i8, ptr %i.anx, i64 32
  %.val7025259 = load <8 x float>, ptr %i.anz, align 32, !tbaa !32
  %i.aoa = shufflevector <8 x float> %.val7025259, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aob = getelementptr i8, ptr %i.anx, i64 64
  %.val7035260 = load <8 x float>, ptr %i.aob, align 32, !tbaa !32
  %i.aoc = shufflevector <8 x float> %.val7035260, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aod = fsub <16 x float> %i.ks, %i.any        ; 3 uses
  %i.aoe = fsub <16 x float> %i.ky, %i.any        ; 3 uses
  %i.aof = fsub <16 x float> %i.lf, %i.aoa        ; 3 uses
  %i.aog = fsub <16 x float> %i.ll, %i.aoa        ; 3 uses
  %i.aoh = fsub <16 x float> %i.ls, %i.aoc        ; 3 uses
  %i.aoi = fsub <16 x float> %i.ly, %i.aoc        ; 3 uses
  %i.aoj = fmul <16 x float> %i.aod, %i.aod
  %i.aok = fmul <16 x float> %i.aof, %i.aof
  %i.aol = fadd <16 x float> %i.aoj, %i.aok
  %i.aom = fmul <16 x float> %i.aoh, %i.aoh
  %i.aon = fadd <16 x float> %i.aol, %i.aom       ; 2 uses
  %i.aoo = fmul <16 x float> %i.aoe, %i.aoe
  %i.aop = fmul <16 x float> %i.aog, %i.aog
  %i.aoq = fadd <16 x float> %i.aoo, %i.aop
  %i.aor = fmul <16 x float> %i.aoi, %i.aoi
  %i.aos = fadd <16 x float> %i.aoq, %i.aor       ; 2 uses
  %i.aot = fcmp olt <16 x float> %i.aon, %i.bj
  %i.aou = bitcast <16 x i1> %i.aot to i16        ; 3 uses
  %i.aov = fcmp olt <16 x float> %i.aos, %i.bj
  %i.aow = bitcast <16 x i1> %i.aov to i16        ; 3 uses
  %i.aox = shl nsw i32 %i.ann, 1                  ; 3 uses
  %i.aoy = icmp eq i32 %i.aox, %i.cx
  br i1 %i.aoy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.aoz = and i16 %i.aou, %i.v
  %i.apa = and i16 %i.aow, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.apb = or disjoint i32 %i.aox, 1
  %i.apc = icmp eq i32 %i.apb, %i.cx
  br i1 %i.apc, label %bb.l, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

bb.l:                                             ; preds = %bb.k
  %i.apd = and i16 %i.aou, %i.x
  %i.ape = and i16 %i.aow, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.114693.0 = phi i16 [ %i.apa, %bb.j ], [ %i.ape, %bb.l ], [ %i.aow, %bb.k ]
  %.sroa.04690.0 = phi i16 [ %i.aoz, %bb.j ], [ %i.apd, %bb.l ], [ %i.aou, %bb.k ]
  %i.apf = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aon, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.apg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aos, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.aph = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.apf, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.api = fmul <16 x float> %i.apf, %i.aph
  %i.apj = fmul <16 x float> %i.aph, splat (float -5.000000e-01)
  %i.apk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.api, <16 x float> %i.aph, <16 x float> splat (float -3.000000e+00))
  %i.apl = fmul <16 x float> %i.apj, %i.apk
  %i.apm = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.apg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.apn = fmul <16 x float> %i.apg, %i.apm
  %i.apo = fmul <16 x float> %i.apm, splat (float -5.000000e-01)
  %i.app = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apn, <16 x float> %i.apm, <16 x float> splat (float -3.000000e+00))
  %i.apq = fmul <16 x float> %i.apo, %i.app
  %i.apr = sext i32 %i.anu to i64                 ; 2 uses
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.apr
  %.val7045261 = load <8 x float>, ptr %i.aps, align 32, !tbaa !32
  %7 = bitcast i16 %.sroa.04690.0 to <16 x i1>    ; 4 uses
  %i.apt = select <16 x i1> %7, <16 x float> %i.apl, <16 x float> zeroinitializer ; 4 uses
  %8 = bitcast i16 %.sroa.114693.0 to <16 x i1>   ; 4 uses
  %i.apu = select <16 x i1> %8, <16 x float> %i.apq, <16 x float> zeroinitializer ; 4 uses
  %i.apv = fmul <16 x float> %i.apf, %i.apt       ; 2 uses
  %i.apw = fmul <16 x float> %i.apg, %i.apu       ; 2 uses
  %i.apx = fmul <16 x float> %i.ad, %i.apv        ; 2 uses
  %i.apy = fmul <16 x float> %i.ad, %i.apw        ; 2 uses
  %i.apz = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.apx, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aqa = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.apy, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aqb = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.apz, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aqc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cm, <16 x i32> %i.apz, <16 x i1> splat (i1 true), i32 4)
  %i.aqd = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.apz, <16 x i1> splat (i1 true), i32 4)
  %i.aqe = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.aqa, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aqf = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cm, <16 x i32> %i.aqa, <16 x i1> splat (i1 true), i32 4)
  %i.aqg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.aqa, <16 x i1> splat (i1 true), i32 4)
  %i.aqh = fsub <16 x float> %i.aqc, %i.aqb
  %i.aqi = fsub <16 x float> %i.aqf, %i.aqe
  %i.aqj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.apr
  %.val7224707 = load <8 x i32>, ptr %i.aqj, align 32, !tbaa !32 ; 4 uses
  %i.aqk = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7224707, <8 x i1> splat (i1 true), i32 8)
  %i.aql = bitcast <8 x double> %i.aqk to <16 x float> ; 2 uses
  %i.aqm = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.my, <8 x i32> %.val7224707, <8 x i1> splat (i1 true), i32 8)
  %i.aqn = bitcast <8 x double> %i.aqm to <16 x float> ; 2 uses
  %i.aqo = shufflevector <16 x float> %i.aql, <16 x float> %i.aqn, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.aqp = shufflevector <16 x float> %i.aql, <16 x float> %i.aqn, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.aqq = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ne, <8 x i32> %.val7224707, <8 x i1> splat (i1 true), i32 8)
  %i.aqr = bitcast <8 x double> %i.aqq to <16 x float> ; 2 uses
  %i.aqs = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nk, <8 x i32> %.val7224707, <8 x i1> splat (i1 true), i32 8)
  %i.aqt = bitcast <8 x double> %i.aqs to <16 x float> ; 2 uses
  %i.aqu = shufflevector <16 x float> %i.aqr, <16 x float> %i.aqt, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.aqv = shufflevector <16 x float> %i.aqr, <16 x float> %i.aqt, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.aqw = shufflevector <8 x float> %.val7045261, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqx = fmul <16 x float> %.sroa.04304.0, %i.aqw ; 2 uses
  %i.aqy = fmul <16 x float> %.sroa.74308.0, %i.aqw ; 2 uses
  %i.aqz = fmul <16 x float> %i.apt, %i.apt       ; 4 uses
  %i.ara = fmul <16 x float> %i.apu, %i.apu       ; 4 uses
  %i.arb = select <16 x i1> %.not5099, <16 x float> zeroinitializer, <16 x float> %i.apt ; 2 uses
  %i.arc = select <16 x i1> %.not5100, <16 x float> zeroinitializer, <16 x float> %i.apu ; 2 uses
  %i.ard = sitofp <16 x i32> %i.apz to <16 x float>
  %i.are = sitofp <16 x i32> %i.aqa to <16 x float>
  %i.arf = fsub <16 x float> %i.apx, %i.ard       ; 2 uses
  %i.arg = fsub <16 x float> %i.apy, %i.are       ; 2 uses
  %i.arh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arf, <16 x float> %i.aqh, <16 x float> %i.aqb) ; 2 uses
  %i.ari = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arg, <16 x float> %i.aqi, <16 x float> %i.aqe) ; 2 uses
  %i.arj = fneg <16 x float> %i.arh
  %i.ark = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arj, <16 x float> %i.apv, <16 x float> %i.arb)
  %i.arl = fneg <16 x float> %i.ari
  %i.arm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arl, <16 x float> %i.apw, <16 x float> %i.arc)
  %i.arn = fmul <16 x float> %i.ag, %i.arf
  %i.aro = fadd <16 x float> %i.aqb, %i.arh
  %i.arp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arn, <16 x float> %i.aro, <16 x float> %i.aqd)
  %i.arq = fmul <16 x float> %i.ag, %i.arg
  %i.arr = fadd <16 x float> %i.aqe, %i.ari
  %i.ars = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arq, <16 x float> %i.arr, <16 x float> %i.aqg)
  %i.art = fmul <16 x float> %i.aqx, %i.ark
  %i.aru = fmul <16 x float> %i.aqy, %i.arm
  %i.arv = select <16 x i1> %.not5099, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.arw = fadd <16 x float> %i.arv, %i.arp
  %i.arx = select <16 x i1> %.not5100, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.ary = fadd <16 x float> %i.arx, %i.ars
  %i.arz = fsub <16 x float> %i.arb, %i.arw
  %i.asa = fmul <16 x float> %i.aqx, %i.arz
  %i.asb = fsub <16 x float> %i.arc, %i.ary
  %i.asc = fmul <16 x float> %i.aqy, %i.asb
  %i.asd = select <16 x i1> %7, <16 x float> %i.asa, <16 x float> zeroinitializer ; 2 uses
  %i.ase = select <16 x i1> %8, <16 x float> %i.asc, <16 x float> zeroinitializer ; 2 uses
  %i.asf = shl nsw i32 %i.ann, 4
  %i.asg = fmul <16 x float> %i.aqz, %i.aqz
  %i.ash = fmul <16 x float> %i.aqz, %i.asg       ; 4 uses
  %i.asi = fmul <16 x float> %i.ara, %i.ara
  %i.asj = fmul <16 x float> %i.ara, %i.asi       ; 4 uses
  %i.ask = select <16 x i1> %.not5099, <16 x float> zeroinitializer, <16 x float> %i.ash ; 3 uses
  %i.asl = select <16 x i1> %.not5100, <16 x float> zeroinitializer, <16 x float> %i.asj ; 3 uses
  %i.asm = fmul <16 x float> %i.ask, %i.ask
  %i.asn = fmul <16 x float> %i.asl, %i.asl
  %i.aso = fmul <16 x float> %i.ask, %i.aqo       ; 2 uses
  %i.asp = fmul <16 x float> %i.asl, %i.aqu       ; 2 uses
  %i.asq = fmul <16 x float> %i.asm, %i.aqp       ; 2 uses
  %i.asr = fmul <16 x float> %i.asn, %i.aqv       ; 2 uses
  %i.ass = fsub <16 x float> %i.asq, %i.aso
  %i.ast = fsub <16 x float> %i.asr, %i.asp
  %i.asu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqo, <16 x float> %i.as, <16 x float> %i.aso)
  %i.asv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqu, <16 x float> %i.as, <16 x float> %i.asp)
  %i.asw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqp, <16 x float> %i.av, <16 x float> %i.asq)
  %i.asx = fmul <16 x float> %i.asu, splat (float f0xBE2AAAAB)
  %i.asy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.asx)
  %i.asz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqv, <16 x float> %i.av, <16 x float> %i.asr)
  %i.ata = fmul <16 x float> %i.asv, splat (float f0xBE2AAAAB)
  %i.atb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asz, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ata)
  %i.atc = select <16 x i1> %.not5099, <16 x float> zeroinitializer, <16 x float> %i.asy
  %i.atd = select <16 x i1> %.not5100, <16 x float> zeroinitializer, <16 x float> %i.atb
  %i.ate = sext i32 %i.asf to i64
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ate
  %.val7055262 = load <8 x float>, ptr %i.atf, align 32, !tbaa !32
  %i.atg = shufflevector <8 x float> %.val7055262, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ath = fmul <16 x float> %i.nq, %i.atg        ; 2 uses
  %i.ati = fmul <16 x float> %i.nv, %i.atg        ; 2 uses
  %i.atj = select <16 x i1> %7, <16 x float> %i.apf, <16 x float> zeroinitializer
  %i.atk = fmul <16 x float> %i.bd, %i.atj        ; 3 uses
  %i.atl = bitcast <16 x float> %i.atk to <8 x i64>
  %i.atm = select <16 x i1> %8, <16 x float> %i.apg, <16 x float> zeroinitializer
  %i.atn = fmul <16 x float> %i.bd, %i.atm        ; 3 uses
  %i.ato = bitcast <16 x float> %i.atn to <8 x i64>
  %i.atp = xor <8 x i64> %i.atl, splat (i64 -9223372034707292160)
  %i.atq = bitcast <8 x i64> %i.atp to <16 x float> ; 2 uses
  %i.atr = fmul <16 x float> %i.atq, splat (float f0x3FB8AA3B) ; 2 uses
  %i.ats = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.atr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.att = shl <16 x i32> %i.ats, splat (i32 23)
  %i.atu = add <16 x i32> %i.att, splat (i32 1065353216)
  %i.atv = bitcast <16 x i32> %i.atu to <16 x float> ; 2 uses
  %i.atw = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.atr, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.atx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atw, <16 x float> splat (float f0xBF317200), <16 x float> %i.atq)
  %i.aty = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atw, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.atx) ; 7 uses
  %i.atz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atz, <16 x float> %i.aty, <16 x float> splat (float f0x3D2AAF4C))
  %i.aub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aua, <16 x float> %i.aty, <16 x float> splat (float f0x3E2AAA5E))
  %i.auc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.aty, <16 x float> splat (float f0x3EFFFFFB))
  %i.aud = fmul <16 x float> %i.aty, %i.aty
  %i.aue = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aud, <16 x float> %i.auc, <16 x float> %i.aty)
  %i.auf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> %i.atv, <16 x float> %i.atv)
  %i.aug = xor <8 x i64> %i.ato, splat (i64 -9223372034707292160)
  %i.auh = bitcast <8 x i64> %i.aug to <16 x float> ; 2 uses
  %i.aui = fmul <16 x float> %i.auh, splat (float f0x3FB8AA3B) ; 2 uses
  %i.auj = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aui, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.auk = shl <16 x i32> %i.auj, splat (i32 23)
  %i.aul = add <16 x i32> %i.auk, splat (i32 1065353216)
  %i.aum = bitcast <16 x i32> %i.aul to <16 x float> ; 2 uses
  %i.aun = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aui, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.auo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aun, <16 x float> splat (float f0xBF317200), <16 x float> %i.auh)
  %i.aup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aun, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.auo) ; 7 uses
  %i.auq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auq, <16 x float> %i.aup, <16 x float> splat (float f0x3D2AAF4C))
  %i.aus = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aur, <16 x float> %i.aup, <16 x float> splat (float f0x3E2AAA5E))
  %i.aut = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aus, <16 x float> %i.aup, <16 x float> splat (float f0x3EFFFFFB))
  %i.auu = fmul <16 x float> %i.aup, %i.aup
  %i.auv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auu, <16 x float> %i.aut, <16 x float> %i.aup)
  %i.auw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.aum, <16 x float> %i.aum)
  %i.aux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atk, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.auy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.atk, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.ava = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auz, <16 x float> %i.atn, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ash, <16 x float> %i.auy, <16 x float> %i.bf)
  %i.avc = fneg <16 x float> %i.auf               ; 2 uses
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avc, <16 x float> %i.avb, <16 x float> %i.ash)
  %i.ave = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ath, <16 x float> %i.avd, <16 x float> %i.ass)
  %i.avf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asj, <16 x float> %i.ava, <16 x float> %i.bf)
  %i.avg = fneg <16 x float> %i.auw               ; 2 uses
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avg, <16 x float> %i.avf, <16 x float> %i.asj)
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ati, <16 x float> %i.avh, <16 x float> %i.ast)
  %i.avj = select <16 x i1> %.not5099, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.avk = select <16 x i1> %.not5100, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.avl = fmul <16 x float> %i.ath, splat (float f0x3E2AAAAB)
  %i.avm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avc, <16 x float> %i.auy, <16 x float> splat (float 1.000000e+00))
  %i.avn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ash, <16 x float> %i.avm, <16 x float> %i.avj)
  %i.avo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avl, <16 x float> %i.avn, <16 x float> %i.atc)
  %i.avp = fmul <16 x float> %i.ati, splat (float f0x3E2AAAAB)
  %i.avq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avg, <16 x float> %i.ava, <16 x float> splat (float 1.000000e+00))
  %i.avr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asj, <16 x float> %i.avq, <16 x float> %i.avk)
  %i.avs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avp, <16 x float> %i.avr, <16 x float> %i.atd)
  %i.avt = select <16 x i1> %7, <16 x float> %i.avo, <16 x float> zeroinitializer ; 2 uses
  %i.avu = select <16 x i1> %8, <16 x float> %i.avs, <16 x float> zeroinitializer ; 2 uses
  %i.avv = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.avw = load i32, ptr %i.ck, align 8, !tbaa !124
  %i.avx = sext i32 %i.aox to i64
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.avv, i64 %i.avx
  %i.avz = load i32, ptr %i.cl, align 4, !tbaa !125
  %i.awa = load i32, ptr %i.cg, align 8, !tbaa !98
  %i.awb = load <2 x i32>, ptr %i.avy, align 4, !tbaa !89 ; 2 uses
  %i.awc = insertelement <2 x i32> poison, i32 %i.avw, i64 0
  %i.awd = shufflevector <2 x i32> %i.awb, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.awe = shufflevector <2 x i32> %i.awb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.awf = shufflevector <2 x i32> %i.awc, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.awg = ashr <4 x i32> %i.awe, %i.awf
  %i.awh = shufflevector <4 x i32> %i.awg, <4 x i32> %i.awd, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.awi = insertelement <4 x i32> poison, i32 %i.avz, i64 0
  %i.awj = shufflevector <4 x i32> %i.awi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awk = and <4 x i32> %i.awh, %i.awj
  %i.awl = insertelement <4 x i32> poison, i32 %i.awa, i64 0
  %i.awm = shufflevector <4 x i32> %i.awl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awn = mul nsw <4 x i32> %i.awk, %i.awm       ; 4 uses
  %i.awo = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 2 uses
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !95 ; 4 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !95 ; 4 uses
  %i.aws = shufflevector <16 x float> %i.asd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.awt = shufflevector <16 x float> %i.asd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.awu = extractelement <4 x i32> %i.awn, i64 0
  %i.awv = sext i32 %i.awu to i64                 ; 8 uses
  %i.aww = getelementptr inbounds [4 x i8], ptr %i.awp, i64 %i.awv ; 2 uses
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.awr, i64 %i.awv ; 2 uses
  %i.awy = load <8 x float>, ptr %i.aww, align 32, !tbaa !32
  %i.awz = fadd <8 x float> %i.aws, %i.awy
  store <8 x float> %i.awz, ptr %i.aww, align 32, !tbaa !32
  %i.axa = load <8 x float>, ptr %i.awx, align 32, !tbaa !32
  %i.axb = fadd <8 x float> %i.axa, %i.awt
  store <8 x float> %i.axb, ptr %i.awx, align 32, !tbaa !32
  %i.axc = extractelement <4 x i32> %i.awn, i64 1
  %i.axd = sext i32 %i.axc to i64                 ; 8 uses
  %i.axe = getelementptr inbounds [4 x i8], ptr %i.awp, i64 %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 32 ; 2 uses
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.awr, i64 %i.axd
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 32 ; 2 uses
  %i.axi = load <8 x float>, ptr %i.axf, align 32, !tbaa !32
  %i.axj = fadd <8 x float> %i.aws, %i.axi
  store <8 x float> %i.axj, ptr %i.axf, align 32, !tbaa !32
  %i.axk = load <8 x float>, ptr %i.axh, align 32, !tbaa !32
  %i.axl = fadd <8 x float> %i.axk, %i.awt
  store <8 x float> %i.axl, ptr %i.axh, align 32, !tbaa !32
  %i.axm = extractelement <4 x i32> %i.awn, i64 2
  %i.axn = sext i32 %i.axm to i64                 ; 8 uses
  %i.axo = getelementptr inbounds [4 x i8], ptr %i.awp, i64 %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 64 ; 2 uses
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.awr, i64 %i.axn
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 64 ; 2 uses
  %i.axs = load <8 x float>, ptr %i.axp, align 32, !tbaa !32
  %i.axt = fadd <8 x float> %i.aws, %i.axs
  store <8 x float> %i.axt, ptr %i.axp, align 32, !tbaa !32
  %i.axu = load <8 x float>, ptr %i.axr, align 32, !tbaa !32
  %i.axv = fadd <8 x float> %i.axu, %i.awt
  store <8 x float> %i.axv, ptr %i.axr, align 32, !tbaa !32
  %i.axw = extractelement <4 x i32> %i.awn, i64 3
  %i.axx = sext i32 %i.axw to i64                 ; 8 uses
  %i.axy = getelementptr inbounds [4 x i8], ptr %i.awp, i64 %i.axx
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 96 ; 2 uses
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.awr, i64 %i.axx
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 96 ; 2 uses
  %i.ayc = load <8 x float>, ptr %i.axz, align 32, !tbaa !32
  %i.ayd = fadd <8 x float> %i.aws, %i.ayc
  store <8 x float> %i.ayd, ptr %i.axz, align 32, !tbaa !32
  %i.aye = load <8 x float>, ptr %i.ayb, align 32, !tbaa !32
  %i.ayf = fadd <8 x float> %i.aye, %i.awt
  store <8 x float> %i.ayf, ptr %i.ayb, align 32, !tbaa !32
  %i.ayg = load ptr, ptr %i.cc, align 8, !tbaa !94 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !95 ; 4 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !95 ; 4 uses
  %i.ayl = shufflevector <16 x float> %i.ase, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aym = shufflevector <16 x float> %i.ase, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.ayi, i64 %i.awv ; 2 uses
  %i.ayo = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.awv ; 2 uses
  %i.ayp = load <8 x float>, ptr %i.ayn, align 32, !tbaa !32
  %i.ayq = fadd <8 x float> %i.ayl, %i.ayp
  store <8 x float> %i.ayq, ptr %i.ayn, align 32, !tbaa !32
  %i.ayr = load <8 x float>, ptr %i.ayo, align 32, !tbaa !32
  %i.ays = fadd <8 x float> %i.ayr, %i.aym
  store <8 x float> %i.ays, ptr %i.ayo, align 32, !tbaa !32
  %i.ayt = getelementptr inbounds [4 x i8], ptr %i.ayi, i64 %i.axd
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 32 ; 2 uses
  %i.ayv = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.axd
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 32 ; 2 uses
  %i.ayx = load <8 x float>, ptr %i.ayu, align 32, !tbaa !32
  %i.ayy = fadd <8 x float> %i.ayl, %i.ayx
  store <8 x float> %i.ayy, ptr %i.ayu, align 32, !tbaa !32
  %i.ayz = load <8 x float>, ptr %i.ayw, align 32, !tbaa !32
  %i.aza = fadd <8 x float> %i.ayz, %i.aym
  store <8 x float> %i.aza, ptr %i.ayw, align 32, !tbaa !32
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.ayi, i64 %i.axn
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 64 ; 2 uses
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.axn
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 64 ; 2 uses
  %i.azf = load <8 x float>, ptr %i.azc, align 32, !tbaa !32
  %i.azg = fadd <8 x float> %i.ayl, %i.azf
  store <8 x float> %i.azg, ptr %i.azc, align 32, !tbaa !32
  %i.azh = load <8 x float>, ptr %i.aze, align 32, !tbaa !32
  %i.azi = fadd <8 x float> %i.azh, %i.aym
  store <8 x float> %i.azi, ptr %i.aze, align 32, !tbaa !32
  %i.azj = getelementptr inbounds [4 x i8], ptr %i.ayi, i64 %i.axx
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 96 ; 2 uses
  %i.azl = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %i.axx
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 96 ; 2 uses
  %i.azn = load <8 x float>, ptr %i.azk, align 32, !tbaa !32
  %i.azo = fadd <8 x float> %i.ayl, %i.azn
  store <8 x float> %i.azo, ptr %i.azk, align 32, !tbaa !32
  %i.azp = load <8 x float>, ptr %i.azm, align 32, !tbaa !32
  %i.azq = fadd <8 x float> %i.azp, %i.aym
  store <8 x float> %i.azq, ptr %i.azm, align 32, !tbaa !32
  %i.azr = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !95 ; 4 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !95 ; 4 uses
  %i.azv = shufflevector <16 x float> %i.avt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.azw = shufflevector <16 x float> %i.avt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.azx = getelementptr inbounds [4 x i8], ptr %i.azs, i64 %i.awv ; 2 uses
  %i.azy = getelementptr inbounds [4 x i8], ptr %i.azu, i64 %i.awv ; 2 uses
  %i.azz = load <8 x float>, ptr %i.azx, align 32, !tbaa !32
  %i.baa = fadd <8 x float> %i.azv, %i.azz
  store <8 x float> %i.baa, ptr %i.azx, align 32, !tbaa !32
  %i.bab = load <8 x float>, ptr %i.azy, align 32, !tbaa !32
  %i.bac = fadd <8 x float> %i.bab, %i.azw
  store <8 x float> %i.bac, ptr %i.azy, align 32, !tbaa !32
  %i.bad = getelementptr inbounds [4 x i8], ptr %i.azs, i64 %i.axd
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 32 ; 2 uses
  %i.baf = getelementptr inbounds [4 x i8], ptr %i.azu, i64 %i.axd
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 32 ; 2 uses
  %i.bah = load <8 x float>, ptr %i.bae, align 32, !tbaa !32
  %i.bai = fadd <8 x float> %i.azv, %i.bah
  store <8 x float> %i.bai, ptr %i.bae, align 32, !tbaa !32
  %i.baj = load <8 x float>, ptr %i.bag, align 32, !tbaa !32
  %i.bak = fadd <8 x float> %i.baj, %i.azw
  store <8 x float> %i.bak, ptr %i.bag, align 32, !tbaa !32
  %i.bal = getelementptr inbounds [4 x i8], ptr %i.azs, i64 %i.axn
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 64 ; 2 uses
  %i.ban = getelementptr inbounds [4 x i8], ptr %i.azu, i64 %i.axn
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 64 ; 2 uses
  %i.bap = load <8 x float>, ptr %i.bam, align 32, !tbaa !32
  %i.baq = fadd <8 x float> %i.azv, %i.bap
  store <8 x float> %i.baq, ptr %i.bam, align 32, !tbaa !32
  %i.bar = load <8 x float>, ptr %i.bao, align 32, !tbaa !32
  %i.bas = fadd <8 x float> %i.bar, %i.azw
  store <8 x float> %i.bas, ptr %i.bao, align 32, !tbaa !32
  %i.bat = getelementptr inbounds [4 x i8], ptr %i.azs, i64 %i.axx
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 96 ; 2 uses
  %i.bav = getelementptr inbounds [4 x i8], ptr %i.azu, i64 %i.axx
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 96 ; 2 uses
  %i.bax = load <8 x float>, ptr %i.bau, align 32, !tbaa !32
  %i.bay = fadd <8 x float> %i.azv, %i.bax
  store <8 x float> %i.bay, ptr %i.bau, align 32, !tbaa !32
  %i.baz = load <8 x float>, ptr %i.baw, align 32, !tbaa !32
  %i.bba = fadd <8 x float> %i.baz, %i.azw
  store <8 x float> %i.bba, ptr %i.baw, align 32, !tbaa !32
  %i.bbb = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !95 ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 24
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !95 ; 4 uses
  %i.bbg = shufflevector <16 x float> %i.avu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bbh = shufflevector <16 x float> %i.avu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bbi = getelementptr inbounds [4 x i8], ptr %i.bbd, i64 %i.awv ; 2 uses
  %i.bbj = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.awv ; 2 uses
  %i.bbk = load <8 x float>, ptr %i.bbi, align 32, !tbaa !32
  %i.bbl = fadd <8 x float> %i.bbg, %i.bbk
  store <8 x float> %i.bbl, ptr %i.bbi, align 32, !tbaa !32
  %i.bbm = load <8 x float>, ptr %i.bbj, align 32, !tbaa !32
  %i.bbn = fadd <8 x float> %i.bbm, %i.bbh
  store <8 x float> %i.bbn, ptr %i.bbj, align 32, !tbaa !32
  %i.bbo = getelementptr inbounds [4 x i8], ptr %i.bbd, i64 %i.axd
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 32 ; 2 uses
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.axd
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 32 ; 2 uses
  %i.bbs = load <8 x float>, ptr %i.bbp, align 32, !tbaa !32
  %i.bbt = fadd <8 x float> %i.bbg, %i.bbs
  store <8 x float> %i.bbt, ptr %i.bbp, align 32, !tbaa !32
  %i.bbu = load <8 x float>, ptr %i.bbr, align 32, !tbaa !32
  %i.bbv = fadd <8 x float> %i.bbu, %i.bbh
  store <8 x float> %i.bbv, ptr %i.bbr, align 32, !tbaa !32
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.bbd, i64 %i.axn
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 64 ; 2 uses
  %i.bby = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.axn
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 64 ; 2 uses
  %i.bca = load <8 x float>, ptr %i.bbx, align 32, !tbaa !32
  %i.bcb = fadd <8 x float> %i.bbg, %i.bca
  store <8 x float> %i.bcb, ptr %i.bbx, align 32, !tbaa !32
  %i.bcc = load <8 x float>, ptr %i.bbz, align 32, !tbaa !32
  %i.bcd = fadd <8 x float> %i.bcc, %i.bbh
  store <8 x float> %i.bcd, ptr %i.bbz, align 32, !tbaa !32
  %i.bce = getelementptr inbounds [4 x i8], ptr %i.bbd, i64 %i.axx
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 96 ; 2 uses
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.bbf, i64 %i.axx
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 96 ; 2 uses
  %i.bci = load <8 x float>, ptr %i.bcf, align 32, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4725.preheader
  %i.bow = load <8 x float>, ptr %i.bot, align 32, !tbaa !32
  %i.box = fadd <8 x float> %i.bow, %i.bob
  store <8 x float> %i.box, ptr %i.bot, align 32, !tbaa !32
  %i.boy = getelementptr inbounds [4 x i8], ptr %i.bnx, i64 %i.bnm
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 96 ; 2 uses
  %i.bpa = getelementptr inbounds [4 x i8], ptr %i.bnz, i64 %i.bnm
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 96 ; 2 uses
  %i.bpc = load <8 x float>, ptr %i.boz, align 32, !tbaa !32
  %i.bpd = fadd <8 x float> %i.boa, %i.bpc
  store <8 x float> %i.bpd, ptr %i.boz, align 32, !tbaa !32
  %i.bpe = load <8 x float>, ptr %i.bpb, align 32, !tbaa !32
  %i.bpf = fadd <8 x float> %i.bpe, %i.bob
  store <8 x float> %i.bpf, ptr %i.bpb, align 32, !tbaa !32
  %i.bpg = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !95 ; 4 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpg, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !95 ; 4 uses
  %i.bpk = shufflevector <16 x float> %i.blh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bpl = shufflevector <16 x float> %i.blh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bpm = getelementptr inbounds [4 x i8], ptr %i.bph, i64 %i.bmk ; 2 uses
  %i.bpn = getelementptr inbounds [4 x i8], ptr %i.bpj, i64 %i.bmk ; 2 uses
  %i.bpo = load <8 x float>, ptr %i.bpm, align 32, !tbaa !32
  %i.bpp = fadd <8 x float> %i.bpk, %i.bpo
  store <8 x float> %i.bpp, ptr %i.bpm, align 32, !tbaa !32
  %i.bpq = load <8 x float>, ptr %i.bpn, align 32, !tbaa !32
  %i.bpr = fadd <8 x float> %i.bpq, %i.bpl
  store <8 x float> %i.bpr, ptr %i.bpn, align 32, !tbaa !32
  %i.bps = getelementptr inbounds [4 x i8], ptr %i.bph, i64 %i.bms
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 32 ; 2 uses
  %i.bpu = getelementptr inbounds [4 x i8], ptr %i.bpj, i64 %i.bms
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 32 ; 2 uses
  %i.bpw = load <8 x float>, ptr %i.bpt, align 32, !tbaa !32
  %i.bpx = fadd <8 x float> %i.bpk, %i.bpw
  store <8 x float> %i.bpx, ptr %i.bpt, align 32, !tbaa !32
  %i.bpy = load <8 x float>, ptr %i.bpv, align 32, !tbaa !32
  %i.bpz = fadd <8 x float> %i.bpy, %i.bpl
  store <8 x float> %i.bpz, ptr %i.bpv, align 32, !tbaa !32
  %i.bqa = getelementptr inbounds [4 x i8], ptr %i.bph, i64 %i.bnc
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 64 ; 2 uses
  %i.bqc = getelementptr inbounds [4 x i8], ptr %i.bpj, i64 %i.bnc
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqc, i64 64 ; 2 uses
  %i.bqe = load <8 x float>, ptr %i.bqb, align 32, !tbaa !32
  %i.bqf = fadd <8 x float> %i.bpk, %i.bqe
  store <8 x float> %i.bqf, ptr %i.bqb, align 32, !tbaa !32
  %i.bqg = load <8 x float>, ptr %i.bqd, align 32, !tbaa !32
  %i.bqh = fadd <8 x float> %i.bqg, %i.bpl
  store <8 x float> %i.bqh, ptr %i.bqd, align 32, !tbaa !32
  %i.bqi = getelementptr inbounds [4 x i8], ptr %i.bph, i64 %i.bnm
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 96 ; 2 uses
  %i.bqk = getelementptr inbounds [4 x i8], ptr %i.bpj, i64 %i.bnm
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 96 ; 2 uses
  %i.bqm = load <8 x float>, ptr %i.bqj, align 32, !tbaa !32
  %i.bqn = fadd <8 x float> %i.bpk, %i.bqm
  store <8 x float> %i.bqn, ptr %i.bqj, align 32, !tbaa !32
  %i.bqo = load <8 x float>, ptr %i.bql, align 32, !tbaa !32
  %i.bqp = fadd <8 x float> %i.bqo, %i.bpl
  store <8 x float> %i.bqp, ptr %i.bql, align 32, !tbaa !32
  %i.bqq = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !95 ; 4 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqq, i64 24
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !95 ; 4 uses
  %i.bqv = shufflevector <16 x float> %i.bli, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bqw = shufflevector <16 x float> %i.bli, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bqx = getelementptr inbounds [4 x i8], ptr %i.bqs, i64 %i.bmk ; 2 uses
  %i.bqy = getelementptr inbounds [4 x i8], ptr %i.bqu, i64 %i.bmk ; 2 uses
  %i.bqz = load <8 x float>, ptr %i.bqx, align 32, !tbaa !32
  %i.bra = fadd <8 x float> %i.bqv, %i.bqz
  store <8 x float> %i.bra, ptr %i.bqx, align 32, !tbaa !32
  %i.brb = load <8 x float>, ptr %i.bqy, align 32, !tbaa !32
  %i.brc = fadd <8 x float> %i.brb, %i.bqw
  store <8 x float> %i.brc, ptr %i.bqy, align 32, !tbaa !32
  %i.brd = getelementptr inbounds [4 x i8], ptr %i.bqs, i64 %i.bms
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 32 ; 2 uses
  %i.brf = getelementptr inbounds [4 x i8], ptr %i.bqu, i64 %i.bms
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 32 ; 2 uses
  %i.brh = load <8 x float>, ptr %i.bre, align 32, !tbaa !32
  %i.bri = fadd <8 x float> %i.bqv, %i.brh
  store <8 x float> %i.bri, ptr %i.bre, align 32, !tbaa !32
  %i.brj = load <8 x float>, ptr %i.brg, align 32, !tbaa !32
  %i.brk = fadd <8 x float> %i.brj, %i.bqw
  store <8 x float> %i.brk, ptr %i.brg, align 32, !tbaa !32
  %i.brl = getelementptr inbounds [4 x i8], ptr %i.bqs, i64 %i.bnc
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 64 ; 2 uses
  %i.brn = getelementptr inbounds [4 x i8], ptr %i.bqu, i64 %i.bnc
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 64 ; 2 uses
  %i.brp = load <8 x float>, ptr %i.brm, align 32, !tbaa !32
  %i.brq = fadd <8 x float> %i.bqv, %i.brp
  store <8 x float> %i.brq, ptr %i.brm, align 32, !tbaa !32
  %i.brr = load <8 x float>, ptr %i.bro, align 32, !tbaa !32
  %i.brs = fadd <8 x float> %i.brr, %i.bqw
  store <8 x float> %i.brs, ptr %i.bro, align 32, !tbaa !32
  %i.brt = getelementptr inbounds [4 x i8], ptr %i.bqs, i64 %i.bnm
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 96 ; 2 uses
  %i.brv = getelementptr inbounds [4 x i8], ptr %i.bqu, i64 %i.bnm
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 96 ; 2 uses
  %i.brx = load <8 x float>, ptr %i.bru, align 32, !tbaa !32
  %i.bry = fadd <8 x float> %i.bqv, %i.brx
  store <8 x float> %i.bry, ptr %i.bru, align 32, !tbaa !32
  %i.brz = load <8 x float>, ptr %i.brw, align 32, !tbaa !32
  %i.bsa = fadd <8 x float> %i.brz, %i.bqw
  store <8 x float> %i.bsa, ptr %i.brw, align 32, !tbaa !32
  %i.bsb = fadd <16 x float> %i.bhp, %i.bku
  %i.bsc = fmul <16 x float> %i.bgx, %i.bsb       ; 3 uses
  %i.bsd = fadd <16 x float> %i.bhq, %i.bky
  %i.bse = fmul <16 x float> %i.bgy, %i.bsd       ; 3 uses
  %i.bsf = fmul <16 x float> %i.bel, %i.bsc       ; 2 uses
  %i.bsg = fmul <16 x float> %i.bem, %i.bse       ; 2 uses
  %i.bsh = fmul <16 x float> %i.ben, %i.bsc       ; 2 uses
  %i.bsi = fmul <16 x float> %i.beo, %i.bse       ; 2 uses
  %i.bsj = fmul <16 x float> %i.bep, %i.bsc       ; 2 uses
  %i.bsk = fmul <16 x float> %i.beq, %i.bse       ; 2 uses
  %i.bsl = fadd <16 x float> %.sroa.04098.34800, %i.bsf ; 2 uses
  %i.bsm = fadd <16 x float> %.sroa.164105.34799, %i.bsg ; 2 uses
  %i.bsn = fadd <16 x float> %.sroa.04080.34802, %i.bsh ; 2 uses
  %i.bso = fadd <16 x float> %.sroa.164087.34801, %i.bsi ; 2 uses
  %i.bsp = fadd <16 x float> %.sroa.04063.34804, %i.bsj ; 2 uses
  %i.bsq = fadd <16 x float> %.sroa.16.34803, %i.bsk ; 2 uses
  %i.bsr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bee ; 4 uses
  %i.bss = fadd <16 x float> %i.bsf, %i.bsg       ; 2 uses
  %i.bst = fadd <16 x float> %i.bsh, %i.bsi       ; 2 uses
  %i.bsu = fadd <16 x float> %i.bsj, %i.bsk       ; 2 uses
  %i.bsv = load <8 x float>, ptr %i.bsr, align 32, !tbaa !32
  %i.bsw = shufflevector <16 x float> %i.bss, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsx = shufflevector <16 x float> %i.bss, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsy = fadd <8 x float> %i.bsw, %i.bsx
  %i.bsz = fsub <8 x float> %i.bsv, %i.bsy
  store <8 x float> %i.bsz, ptr %i.bsr, align 32, !tbaa !32
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsr, i64 32 ; 2 uses
  %i.btb = load <8 x float>, ptr %i.bta, align 32, !tbaa !32
  %i.btc = shufflevector <16 x float> %i.bst, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btd = shufflevector <16 x float> %i.bst, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bte = fadd <8 x float> %i.btc, %i.btd
  %i.btf = fsub <8 x float> %i.btb, %i.bte
  store <8 x float> %i.btf, ptr %i.bta, align 32, !tbaa !32
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsr, i64 64 ; 2 uses
  %i.bth = load <8 x float>, ptr %i.btg, align 32, !tbaa !32
  %i.bti = shufflevector <16 x float> %i.bsu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btj = shufflevector <16 x float> %i.bsu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btk = fadd <8 x float> %i.bti, %i.btj
  %i.btl = fsub <8 x float> %i.bth, %i.btk
  store <8 x float> %i.btl, ptr %i.btg, align 32, !tbaa !32
  %indvars.iv.next4919 = add nsw i64 %indvars.iv4918, 1 ; 2 uses
  %exitcond4922.not = icmp eq i64 %indvars.iv.next4919, %wide.trip.count4921
  br i1 %exitcond4922.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit, !llvm.loop !20

bb.m:                                             ; preds = %.lr.ph, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv = phi i64 [ %i.fw, %.lr.ph ], [ %indvars.iv.next, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.04063.44738 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cel, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.44737 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cem, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04080.44736 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cej, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.164087.44735 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cek, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04098.44734 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ceh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.164105.44733 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cei, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.btm = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.btn = getelementptr inbounds nuw [8 x i8], ptr %i.btm, i64 %indvars.iv
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 4
  %i.btp = load i32, ptr %i.bto, align 4, !tbaa !89
  %.not = icmp eq i32 %i.btp, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.m
  %i.btq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv ; 2 uses
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !97 ; 4 uses
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btq, i64 4
  %i.btt = load i32, ptr %i.bts, align 4, !tbaa !123
  %i.btu = insertelement <16 x i32> poison, i32 %i.btt, i64 0
  %i.btv = shufflevector <16 x i32> %i.btu, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.btw = and <16 x i32> %.sroa.04989.0.copyload, %i.btv
  %.not5097 = icmp eq <16 x i32> %i.btw, zeroinitializer ; 3 uses
  %i.btx = and <16 x i32> %.sroa.6.0.copyload, %i.btv
  %.not5098 = icmp eq <16 x i32> %i.btx, zeroinitializer ; 3 uses
  %i.bty = shl nsw i32 %i.btr, 3
  %i.btz = mul nsw i32 %i.btr, 24
  %i.bua = sext i32 %i.btz to i64                 ; 2 uses
  %i.bub = getelementptr [4 x i8], ptr %i.bn, i64 %i.bua ; 3 uses
  %.val7115250 = load <8 x float>, ptr %i.bub, align 32, !tbaa !32
  %i.buc = shufflevector <8 x float> %.val7115250, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bud = getelementptr i8, ptr %i.bub, i64 32
  %.val7125251 = load <8 x float>, ptr %i.bud, align 32, !tbaa !32
  %i.bue = shufflevector <8 x float> %.val7125251, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buf = getelementptr i8, ptr %i.bub, i64 64
  %.val7135252 = load <8 x float>, ptr %i.buf, align 32, !tbaa !32
  %i.bug = shufflevector <8 x float> %.val7135252, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buh = fsub <16 x float> %i.ks, %i.buc        ; 3 uses
  %i.bui = fsub <16 x float> %i.ky, %i.buc        ; 3 uses
  %i.buj = fsub <16 x float> %i.lf, %i.bue        ; 3 uses
  %i.buk = fsub <16 x float> %i.ll, %i.bue        ; 3 uses
  %i.bul = fsub <16 x float> %i.ls, %i.bug        ; 3 uses
  %i.bum = fsub <16 x float> %i.ly, %i.bug        ; 3 uses
  %i.bun = fmul <16 x float> %i.buh, %i.buh
  %i.buo = fmul <16 x float> %i.buj, %i.buj
  %i.bup = fadd <16 x float> %i.bun, %i.buo
  %i.buq = fmul <16 x float> %i.bul, %i.bul
  %i.bur = fadd <16 x float> %i.bup, %i.buq       ; 2 uses
  %i.bus = fmul <16 x float> %i.bui, %i.bui
  %i.but = fmul <16 x float> %i.buk, %i.buk
  %i.buu = fadd <16 x float> %i.bus, %i.but
  %i.buv = fmul <16 x float> %i.bum, %i.bum
  %i.buw = fadd <16 x float> %i.buu, %i.buv       ; 2 uses
  %i.bux = fcmp olt <16 x float> %i.bur, %i.bj
  %i.buy = bitcast <16 x i1> %i.bux to i16        ; 3 uses
  %i.buz = fcmp olt <16 x float> %i.buw, %i.bj
  %i.bva = bitcast <16 x i1> %i.buz to i16        ; 3 uses
  %i.bvb = shl nsw i32 %i.btr, 1                  ; 3 uses
  %i.bvc = icmp eq i32 %i.bvb, %i.cx
  br i1 %i.bvc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvd = and i16 %i.buy, %i.v
  %i.bve = and i16 %i.bva, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvf = or disjoint i32 %i.bvb, 1
  %i.bvg = icmp eq i32 %i.bvf, %i.cx
  br i1 %i.bvg, label %bb.p, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %bb.o
  %i.bvh = and i16 %i.buy, %i.x
  %i.bvi = and i16 %i.bva, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.10.0 = phi i16 [ %i.bve, %bb.n ], [ %i.bvi, %bb.p ], [ %i.bva, %bb.o ]
  %.sroa.04683.0 = phi i16 [ %i.bvd, %bb.n ], [ %i.bvh, %bb.p ], [ %i.buy, %bb.o ]
  %i.bvj = sext i32 %i.bty to i64
  %i.bvk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bvj
  %.val7204704 = load <8 x i32>, ptr %i.bvk, align 32, !tbaa !32 ; 4 uses
  %i.bvl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7204704, <8 x i1> splat (i1 true), i32 8)
  %i.bvm = bitcast <8 x double> %i.bvl to <16 x float> ; 2 uses
  %i.bvn = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.my, <8 x i32> %.val7204704, <8 x i1> splat (i1 true), i32 8)
  %i.bvo = bitcast <8 x double> %i.bvn to <16 x float> ; 2 uses
  %i.bvp = shufflevector <16 x float> %i.bvm, <16 x float> %i.bvo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bvq = shufflevector <16 x float> %i.bvm, <16 x float> %i.bvo, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bvr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ne, <8 x i32> %.val7204704, <8 x i1> splat (i1 true), i32 8)
  %i.bvs = bitcast <8 x double> %i.bvr to <16 x float> ; 2 uses
  %i.bvt = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nk, <8 x i32> %.val7204704, <8 x i1> splat (i1 true), i32 8)
  %i.bvu = bitcast <8 x double> %i.bvt to <16 x float> ; 2 uses
  %i.bvv = shufflevector <16 x float> %i.bvs, <16 x float> %i.bvu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bvw = shufflevector <16 x float> %i.bvs, <16 x float> %i.bvu, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bvx = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bur, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.bvy = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.buw, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.bvz = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bvx, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bwa = fmul <16 x float> %i.bvx, %i.bvz
  %i.bwb = fmul <16 x float> %i.bvz, splat (float -5.000000e-01)
  %i.bwc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwa, <16 x float> %i.bvz, <16 x float> splat (float -3.000000e+00))
  %i.bwd = fmul <16 x float> %i.bwb, %i.bwc
  %i.bwe = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bvy, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bwf = fmul <16 x float> %i.bvy, %i.bwe
  %i.bwg = fmul <16 x float> %i.bwe, splat (float -5.000000e-01)
  %i.bwh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwf, <16 x float> %i.bwe, <16 x float> splat (float -3.000000e+00))
  %i.bwi = fmul <16 x float> %i.bwg, %i.bwh
  %9 = bitcast i16 %.sroa.04683.0 to <16 x i1>    ; 3 uses
  %i.bwj = select <16 x i1> %9, <16 x float> %i.bwd, <16 x float> zeroinitializer ; 2 uses
  %10 = bitcast i16 %.sroa.10.0 to <16 x i1>      ; 3 uses
  %i.bwk = select <16 x i1> %10, <16 x float> %i.bwi, <16 x float> zeroinitializer ; 2 uses
  %i.bwl = fmul <16 x float> %i.bwj, %i.bwj       ; 4 uses
  %i.bwm = fmul <16 x float> %i.bwk, %i.bwk       ; 4 uses
  %i.bwn = shl nsw i32 %i.btr, 4
  %i.bwo = fmul <16 x float> %i.bwl, %i.bwl
  %i.bwp = fmul <16 x float> %i.bwl, %i.bwo       ; 4 uses
  %i.bwq = fmul <16 x float> %i.bwm, %i.bwm
  %i.bwr = fmul <16 x float> %i.bwm, %i.bwq       ; 4 uses
  %i.bws = select <16 x i1> %.not5097, <16 x float> zeroinitializer, <16 x float> %i.bwp ; 3 uses
  %i.bwt = select <16 x i1> %.not5098, <16 x float> zeroinitializer, <16 x float> %i.bwr ; 3 uses
  %i.bwu = fmul <16 x float> %i.bws, %i.bws
  %i.bwv = fmul <16 x float> %i.bwt, %i.bwt
  %i.bww = fmul <16 x float> %i.bws, %i.bvp       ; 2 uses
  %i.bwx = fmul <16 x float> %i.bwt, %i.bvv       ; 2 uses
  %i.bwy = fmul <16 x float> %i.bwu, %i.bvq       ; 2 uses
  %i.bwz = fmul <16 x float> %i.bwv, %i.bvw       ; 2 uses
  %i.bxa = fsub <16 x float> %i.bwy, %i.bww
  %i.bxb = fsub <16 x float> %i.bwz, %i.bwx
  %i.bxc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvp, <16 x float> %i.as, <16 x float> %i.bww)
  %i.bxd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvv, <16 x float> %i.as, <16 x float> %i.bwx)
  %i.bxe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvq, <16 x float> %i.av, <16 x float> %i.bwy)
  %i.bxf = fmul <16 x float> %i.bxc, splat (float f0xBE2AAAAB)
  %i.bxg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxe, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bxf)
  %i.bxh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvw, <16 x float> %i.av, <16 x float> %i.bwz)
  %i.bxi = fmul <16 x float> %i.bxd, splat (float f0xBE2AAAAB)
  %i.bxj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxh, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bxi)
  %i.bxk = select <16 x i1> %.not5097, <16 x float> zeroinitializer, <16 x float> %i.bxg
  %i.bxl = select <16 x i1> %.not5098, <16 x float> zeroinitializer, <16 x float> %i.bxj
  %i.bxm = sext i32 %i.bwn to i64
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bxm
  %.val7145253 = load <8 x float>, ptr %i.bxn, align 32, !tbaa !32
  %i.bxo = shufflevector <8 x float> %.val7145253, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxp = fmul <16 x float> %i.nq, %i.bxo        ; 2 uses
  %i.bxq = fmul <16 x float> %i.nv, %i.bxo        ; 2 uses
  %i.bxr = select <16 x i1> %9, <16 x float> %i.bvx, <16 x float> zeroinitializer
  %i.bxs = fmul <16 x float> %i.bd, %i.bxr        ; 3 uses
  %i.bxt = bitcast <16 x float> %i.bxs to <8 x i64>
  %i.bxu = select <16 x i1> %10, <16 x float> %i.bvy, <16 x float> zeroinitializer
  %i.bxv = fmul <16 x float> %i.bd, %i.bxu        ; 3 uses
  %i.bxw = bitcast <16 x float> %i.bxv to <8 x i64>
  %i.bxx = xor <8 x i64> %i.bxt, splat (i64 -9223372034707292160)
  %i.bxy = bitcast <8 x i64> %i.bxx to <16 x float> ; 2 uses
  %i.bxz = fmul <16 x float> %i.bxy, splat (float f0x3FB8AA3B) ; 2 uses
  %i.bya = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bxz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.byb = shl <16 x i32> %i.bya, splat (i32 23)
  %i.byc = add <16 x i32> %i.byb, splat (i32 1065353216)
  %i.byd = bitcast <16 x i32> %i.byc to <16 x float> ; 2 uses
  %i.bye = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bxz, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.byf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bye, <16 x float> splat (float f0xBF317200), <16 x float> %i.bxy)
  %i.byg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bye, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.byf) ; 7 uses
  %i.byh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byg, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.byi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byh, <16 x float> %i.byg, <16 x float> splat (float f0x3D2AAF4C))
  %i.byj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byi, <16 x float> %i.byg, <16 x float> splat (float f0x3E2AAA5E))
  %i.byk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byj, <16 x float> %i.byg, <16 x float> splat (float f0x3EFFFFFB))
  %i.byl = fmul <16 x float> %i.byg, %i.byg
  %i.bym = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byl, <16 x float> %i.byk, <16 x float> %i.byg)
  %i.byn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bym, <16 x float> %i.byd, <16 x float> %i.byd)
  %i.byo = xor <8 x i64> %i.bxw, splat (i64 -9223372034707292160)
  %i.byp = bitcast <8 x i64> %i.byo to <16 x float> ; 2 uses
  %i.byq = fmul <16 x float> %i.byp, splat (float f0x3FB8AA3B) ; 2 uses
  %i.byr = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.byq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bys = shl <16 x i32> %i.byr, splat (i32 23)
  %i.byt = add <16 x i32> %i.bys, splat (i32 1065353216)
  %i.byu = bitcast <16 x i32> %i.byt to <16 x float> ; 2 uses
  %i.byv = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.byq, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.byw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byv, <16 x float> splat (float f0xBF317200), <16 x float> %i.byp)
  %i.byx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byv, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.byw) ; 7 uses
  %i.byy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byx, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.byz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byy, <16 x float> %i.byx, <16 x float> splat (float f0x3D2AAF4C))
  %i.bza = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byz, <16 x float> %i.byx, <16 x float> splat (float f0x3E2AAA5E))
  %i.bzb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bza, <16 x float> %i.byx, <16 x float> splat (float f0x3EFFFFFB))
  %i.bzc = fmul <16 x float> %i.byx, %i.byx
  %i.bzd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzc, <16 x float> %i.bzb, <16 x float> %i.byx)
  %i.bze = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzd, <16 x float> %i.byu, <16 x float> %i.byu)
  %i.bzf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxs, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bzg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzf, <16 x float> %i.bxs, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bzh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxv, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bzi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzh, <16 x float> %i.bxv, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bzj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwp, <16 x float> %i.bzg, <16 x float> %i.bf)
  %i.bzk = fneg <16 x float> %i.byn               ; 2 uses
  %i.bzl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzk, <16 x float> %i.bzj, <16 x float> %i.bwp)
  %i.bzm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxp, <16 x float> %i.bzl, <16 x float> %i.bxa)
  %i.bzn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwr, <16 x float> %i.bzi, <16 x float> %i.bf)
  %i.bzo = fneg <16 x float> %i.bze               ; 2 uses
  %i.bzp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> %i.bzn, <16 x float> %i.bwr)
  %i.bzq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxq, <16 x float> %i.bzp, <16 x float> %i.bxb)
  %i.bzr = select <16 x i1> %.not5097, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.bzs = select <16 x i1> %.not5098, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.bzt = fmul <16 x float> %i.bxp, splat (float f0x3E2AAAAB)
  %i.bzu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzk, <16 x float> %i.bzg, <16 x float> splat (float 1.000000e+00))
  %i.bzv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwp, <16 x float> %i.bzu, <16 x float> %i.bzr)
  %i.bzw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzt, <16 x float> %i.bzv, <16 x float> %i.bxk)
  %i.bzx = fmul <16 x float> %i.bxq, splat (float f0x3E2AAAAB)
  %i.bzy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> %i.bzi, <16 x float> splat (float 1.000000e+00))
  %i.bzz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwr, <16 x float> %i.bzy, <16 x float> %i.bzs)
  %i.caa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzx, <16 x float> %i.bzz, <16 x float> %i.bxl)
  %i.cab = select <16 x i1> %9, <16 x float> %i.bzw, <16 x float> zeroinitializer ; 2 uses
  %i.cac = select <16 x i1> %10, <16 x float> %i.caa, <16 x float> zeroinitializer ; 2 uses
  %i.cad = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.cae = load i32, ptr %i.ck, align 8, !tbaa !124
  %i.caf = sext i32 %i.bvb to i64
  %i.cag = getelementptr inbounds [4 x i8], ptr %i.cad, i64 %i.caf
  %i.cah = load i32, ptr %i.cl, align 4, !tbaa !125
  %i.cai = load i32, ptr %i.cg, align 8, !tbaa !98
  %i.caj = load <2 x i32>, ptr %i.cag, align 4, !tbaa !89 ; 2 uses
  %i.cak = insertelement <2 x i32> poison, i32 %i.cae, i64 0
  %i.cal = shufflevector <2 x i32> %i.caj, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cam = shufflevector <2 x i32> %i.caj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.can = shufflevector <2 x i32> %i.cak, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cao = ashr <4 x i32> %i.cam, %i.can
  %i.cap = shufflevector <4 x i32> %i.cao, <4 x i32> %i.cal, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.caq = insertelement <4 x i32> poison, i32 %i.cah, i64 0
  %i.car = shufflevector <4 x i32> %i.caq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cas = and <4 x i32> %i.cap, %i.car
  %i.cat = insertelement <4 x i32> poison, i32 %i.cai, i64 0
  %i.cau = shufflevector <4 x i32> %i.cat, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cav = mul nsw <4 x i32> %i.cas, %i.cau       ; 4 uses
  %i.caw = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !95 ; 4 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %i.caw, i64 8
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !95 ; 4 uses
  %i.cba = shufflevector <16 x float> %i.cab, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cbb = shufflevector <16 x float> %i.cab, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cbc = extractelement <4 x i32> %i.cav, i64 0
  %i.cbd = sext i32 %i.cbc to i64                 ; 4 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.cbd ; 2 uses
  %i.cbf = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbd ; 2 uses
  %i.cbg = load <8 x float>, ptr %i.cbe, align 32, !tbaa !32
  %i.cbh = fadd <8 x float> %i.cbg, %i.cba
  store <8 x float> %i.cbh, ptr %i.cbe, align 32, !tbaa !32
  %i.cbi = load <8 x float>, ptr %i.cbf, align 32, !tbaa !32
  %i.cbj = fadd <8 x float> %i.cbi, %i.cbb
  store <8 x float> %i.cbj, ptr %i.cbf, align 32, !tbaa !32
  %i.cbk = extractelement <4 x i32> %i.cav, i64 1
  %i.cbl = sext i32 %i.cbk to i64                 ; 4 uses
  %i.cbm = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.cbl
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 32 ; 2 uses
  %i.cbo = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbl
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 32 ; 2 uses
  %i.cbq = load <8 x float>, ptr %i.cbn, align 32, !tbaa !32
  %i.cbr = fadd <8 x float> %i.cba, %i.cbq
  store <8 x float> %i.cbr, ptr %i.cbn, align 32, !tbaa !32
  %i.cbs = load <8 x float>, ptr %i.cbp, align 32, !tbaa !32
  %i.cbt = fadd <8 x float> %i.cbs, %i.cbb
  store <8 x float> %i.cbt, ptr %i.cbp, align 32, !tbaa !32
  %i.cbu = extractelement <4 x i32> %i.cav, i64 2
  %i.cbv = sext i32 %i.cbu to i64                 ; 4 uses
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.cbv
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 64 ; 2 uses
  %i.cby = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbv
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 64 ; 2 uses
  %i.cca = load <8 x float>, ptr %i.cbx, align 32, !tbaa !32
  %i.ccb = fadd <8 x float> %i.cba, %i.cca
  store <8 x float> %i.ccb, ptr %i.cbx, align 32, !tbaa !32
  %i.ccc = load <8 x float>, ptr %i.cbz, align 32, !tbaa !32
  %i.ccd = fadd <8 x float> %i.ccc, %i.cbb
  store <8 x float> %i.ccd, ptr %i.cbz, align 32, !tbaa !32
  %i.cce = extractelement <4 x i32> %i.cav, i64 3
  %i.ccf = sext i32 %i.cce to i64                 ; 4 uses
  %i.ccg = getelementptr inbounds [4 x i8], ptr %i.cax, i64 %i.ccf
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 96 ; 2 uses
  %i.cci = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.ccf
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 96 ; 2 uses
  %i.cck = load <8 x float>, ptr %i.cch, align 32, !tbaa !32
  %i.ccl = fadd <8 x float> %i.cba, %i.cck
  store <8 x float> %i.ccl, ptr %i.cch, align 32, !tbaa !32
  %i.ccm = load <8 x float>, ptr %i.ccj, align 32, !tbaa !32
  %i.ccn = fadd <8 x float> %i.ccm, %i.cbb
  store <8 x float> %i.ccn, ptr %i.ccj, align 32, !tbaa !32
  %i.cco = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cco, i64 16
  %i.ccq = load ptr, ptr %i.ccp, align 8, !tbaa !95 ; 4 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cco, i64 24
  %i.ccs = load ptr, ptr %i.ccr, align 8, !tbaa !95 ; 4 uses
  %i.cct = shufflevector <16 x float> %i.cac, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ccu = shufflevector <16 x float> %i.cac, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ccv = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.cbd ; 2 uses
  %i.ccw = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cbd ; 2 uses
  %i.ccx = load <8 x float>, ptr %i.ccv, align 32, !tbaa !32
  %i.ccy = fadd <8 x float> %i.cct, %i.ccx
  store <8 x float> %i.ccy, ptr %i.ccv, align 32, !tbaa !32
  %i.ccz = load <8 x float>, ptr %i.ccw, align 32, !tbaa !32
  %i.cda = fadd <8 x float> %i.ccz, %i.ccu
  store <8 x float> %i.cda, ptr %i.ccw, align 32, !tbaa !32
  %i.cdb = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.cbl
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cdb, i64 32 ; 2 uses
  %i.cdd = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cbl
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 32 ; 2 uses
  %i.cdf = load <8 x float>, ptr %i.cdc, align 32, !tbaa !32
  %i.cdg = fadd <8 x float> %i.cct, %i.cdf
  store <8 x float> %i.cdg, ptr %i.cdc, align 32, !tbaa !32
  %i.cdh = load <8 x float>, ptr %i.cde, align 32, !tbaa !32
  %i.cdi = fadd <8 x float> %i.cdh, %i.ccu
  store <8 x float> %i.cdi, ptr %i.cde, align 32, !tbaa !32
  %i.cdj = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.cbv
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 64 ; 2 uses
  %i.cdl = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cbv
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 64 ; 2 uses
  %i.cdn = load <8 x float>, ptr %i.cdk, align 32, !tbaa !32
  %i.cdo = fadd <8 x float> %i.cct, %i.cdn
  store <8 x float> %i.cdo, ptr %i.cdk, align 32, !tbaa !32
  %i.cdp = load <8 x float>, ptr %i.cdm, align 32, !tbaa !32
  %i.cdq = fadd <8 x float> %i.cdp, %i.ccu
  store <8 x float> %i.cdq, ptr %i.cdm, align 32, !tbaa !32
  %i.cdr = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.ccf
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 96 ; 2 uses
  %i.cdt = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.ccf
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 96 ; 2 uses
  %i.cdv = load <8 x float>, ptr %i.cds, align 32, !tbaa !32
  %i.cdw = fadd <8 x float> %i.cct, %i.cdv
  store <8 x float> %i.cdw, ptr %i.cds, align 32, !tbaa !32
  %i.cdx = load <8 x float>, ptr %i.cdu, align 32, !tbaa !32
  %i.cdy = fadd <8 x float> %i.cdx, %i.ccu
  store <8 x float> %i.cdy, ptr %i.cdu, align 32, !tbaa !32
  %i.cdz = fmul <16 x float> %i.bwl, %i.bzm       ; 3 uses
  %i.cea = fmul <16 x float> %i.bwm, %i.bzq       ; 3 uses
  %i.ceb = fmul <16 x float> %i.buh, %i.cdz       ; 2 uses
  %i.cec = fmul <16 x float> %i.bui, %i.cea       ; 2 uses
  %i.ced = fmul <16 x float> %i.buj, %i.cdz       ; 2 uses
  %i.cee = fmul <16 x float> %i.buk, %i.cea       ; 2 uses
  %i.cef = fmul <16 x float> %i.bul, %i.cdz       ; 2 uses
  %i.ceg = fmul <16 x float> %i.bum, %i.cea       ; 2 uses
  %i.ceh = fadd <16 x float> %.sroa.04098.44734, %i.ceb ; 2 uses
  %i.cei = fadd <16 x float> %.sroa.164105.44733, %i.cec ; 2 uses
  %i.cej = fadd <16 x float> %.sroa.04080.44736, %i.ced ; 2 uses
  %i.cek = fadd <16 x float> %.sroa.164087.44735, %i.cee ; 2 uses
  %i.cel = fadd <16 x float> %.sroa.04063.44738, %i.cef ; 2 uses
  %i.cem = fadd <16 x float> %.sroa.16.44737, %i.ceg ; 2 uses
  %i.cen = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bua ; 4 uses
  %i.ceo = fadd <16 x float> %i.ceb, %i.cec       ; 2 uses
  %i.cep = fadd <16 x float> %i.ced, %i.cee       ; 2 uses
  %i.ceq = fadd <16 x float> %i.cef, %i.ceg       ; 2 uses
  %i.cer = load <8 x float>, ptr %i.cen, align 32, !tbaa !32
  %i.ces = shufflevector <16 x float> %i.ceo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cet = shufflevector <16 x float> %i.ceo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ceu = fadd <8 x float> %i.ces, %i.cet
  %i.cev = fsub <8 x float> %i.cer, %i.ceu
  store <8 x float> %i.cev, ptr %i.cen, align 32, !tbaa !32
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cen, i64 32 ; 2 uses
  %i.cex = load <8 x float>, ptr %i.cew, align 32, !tbaa !32
  %i.cey = shufflevector <16 x float> %i.cep, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cez = shufflevector <16 x float> %i.cep, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfa = fadd <8 x float> %i.cey, %i.cez
  %i.cfb = fsub <8 x float> %i.cex, %i.cfa
  store <8 x float> %i.cfb, ptr %i.cew, align 32, !tbaa !32
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cen, i64 64 ; 2 uses
  %i.cfd = load <8 x float>, ptr %i.cfc, align 32, !tbaa !32
  %i.cfe = shufflevector <16 x float> %i.ceq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cff = shufflevector <16 x float> %i.ceq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfg = fadd <8 x float> %i.cfe, %i.cff
  %i.cfh = fsub <8 x float> %i.cfd, %i.cfg
  store <8 x float> %i.cfh, ptr %i.cfc, align 32, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.m
  %i.cfi = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader4720
  %.sroa.164105.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.164105.44733, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04098.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.04098.44734, %.critedge5.loopexit ] ; 2 uses
  %.sroa.164087.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.164087.44735, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04080.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.04080.44736, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.16.44737, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04063.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4720 ], [ %.sroa.04063.44738, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.cs, %.preheader4720 ], [ %i.cfi, %.critedge5.loopexit ] ; 2 uses
  %i.cfj = icmp slt i32 %.4.lcssa, %i.cu
  br i1 %i.cfj, label %.lr.ph4762, label %.loopexit

.lr.ph4762:                                       ; preds = %.critedge5
  %i.cfk = sext i32 %.4.lcssa to i64
  %wide.trip.count4890 = sext i32 %i.cu to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph4762, %bb.q
  %indvars.iv4887 = phi i64 [ %i.cfk, %.lr.ph4762 ], [ %indvars.iv.next4888, %bb.q ] ; 2 uses
  %.sroa.04063.54760 = phi <16 x float> [ %.sroa.04063.4.lcssa, %.lr.ph4762 ], [ %i.cpl, %bb.q ]
  %.sroa.16.54759 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph4762 ], [ %i.cpm, %bb.q ]
  %.sroa.04080.54758 = phi <16 x float> [ %.sroa.04080.4.lcssa, %.lr.ph4762 ], [ %i.cpj, %bb.q ]
  %.sroa.164087.54757 = phi <16 x float> [ %.sroa.164087.4.lcssa, %.lr.ph4762 ], [ %i.cpk, %bb.q ]
  %.sroa.04098.54756 = phi <16 x float> [ %.sroa.04098.4.lcssa, %.lr.ph4762 ], [ %i.cph, %bb.q ]
  %.sroa.164105.54755 = phi <16 x float> [ %.sroa.164105.4.lcssa, %.lr.ph4762 ], [ %i.cpi, %bb.q ]
  %i.cfl = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv4887
  %i.cfm = load i32, ptr %i.cfl, align 4, !tbaa !97 ; 4 uses
  %i.cfn = shl nsw i32 %i.cfm, 3
  %i.cfo = mul nsw i32 %i.cfm, 24
  %i.cfp = sext i32 %i.cfo to i64                 ; 2 uses
  %i.cfq = getelementptr [4 x i8], ptr %i.bn, i64 %i.cfp ; 3 uses
  %.val7155254 = load <8 x float>, ptr %i.cfq, align 32, !tbaa !32
  %i.cfr = getelementptr i8, ptr %i.cfq, i64 32
  %.val7165255 = load <8 x float>, ptr %i.cfr, align 32, !tbaa !32
  %i.cfs = getelementptr i8, ptr %i.cfq, i64 64
  %.val7175256 = load <8 x float>, ptr %i.cfs, align 32, !tbaa !32
  %i.cft = sext i32 %i.cfn to i64
  %i.cfu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cft
  %.val7194706 = load <8 x i32>, ptr %i.cfu, align 32, !tbaa !32 ; 4 uses
end_hunk_2
