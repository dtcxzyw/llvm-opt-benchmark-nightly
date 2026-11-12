Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1687
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4484.preheader
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %.pre-phi4751 ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !74
  %i.jq = fadd float %i.jp, %i.jm
  store float %i.jq, ptr %i.jo, align 4, !tbaa !74
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.pre-phi4753
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !86
  %.reass.3 = mul i32 %i.js, %factor.op.mul
  %i.jt = sext i32 %.reass.3 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  %i.jw = fdiv float %i.jv, 6.000000e+00
  %i.jx = fpext float %i.jw to double
  %i.jy = fmul double %i.jx, 5.000000e-01
  %i.jz = fmul double %i.jy, %i.cd
  %i.ka = fptrunc double %i.jz to float
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %.pre-phi4765 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !74
  %i.kd = fadd float %i.kc, %i.ka
  store float %i.kd, ptr %i.kb, align 4, !tbaa !74
  br label %.loopexit4481

.loopexit4481:                                    ; preds = %.loopexit4483, %bb.a
  %i.ke = add nsw i32 %i.dn, 8
  %i.kf = add nsw i32 %i.dn, 16
  %i.kg = sext i32 %i.dn to i64                   ; 2 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.kg ; 4 uses
  %.val.i = load float, ptr %i.kh, align 1, !tbaa !32, !noalias !116
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %.val3.i = load float, ptr %i.ki, align 1, !tbaa !32, !noalias !116
  %i.kj = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.kk = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.kl = shufflevector <4 x float> %i.kj, <4 x float> %i.kk, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.km = fadd <16 x float> %i.cw, %i.kl          ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.val.i706 = load float, ptr %i.kn, align 1, !tbaa !32, !noalias !116
  %i.ko = getelementptr i8, ptr %i.kh, i64 12
  %.val3.i707 = load float, ptr %i.ko, align 1, !tbaa !32, !noalias !116
  %i.kp = insertelement <4 x float> poison, float %.val.i706, i64 0
  %i.kq = insertelement <4 x float> poison, float %.val3.i707, i64 0
  %i.kr = shufflevector <4 x float> %i.kp, <4 x float> %i.kq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ks = fadd <16 x float> %i.cw, %i.kr          ; 6 uses
  %i.kt = sext i32 %i.ke to i64                   ; 2 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.kt ; 4 uses
  %.val.i709 = load float, ptr %i.ku, align 1, !tbaa !32, !noalias !117
  %i.kv = getelementptr i8, ptr %i.ku, i64 4
  %.val3.i710 = load float, ptr %i.kv, align 1, !tbaa !32, !noalias !117
  %i.kw = insertelement <4 x float> poison, float %.val.i709, i64 0
  %i.kx = insertelement <4 x float> poison, float %.val3.i710, i64 0
  %i.ky = shufflevector <4 x float> %i.kw, <4 x float> %i.kx, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kz = fadd <16 x float> %i.dc, %i.ky          ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.val.i712 = load float, ptr %i.la, align 1, !tbaa !32, !noalias !117
  %i.lb = getelementptr i8, ptr %i.ku, i64 12
  %.val3.i713 = load float, ptr %i.lb, align 1, !tbaa !32, !noalias !117
  %i.lc = insertelement <4 x float> poison, float %.val.i712, i64 0
  %i.ld = insertelement <4 x float> poison, float %.val3.i713, i64 0
  %i.le = shufflevector <4 x float> %i.lc, <4 x float> %i.ld, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lf = fadd <16 x float> %i.dc, %i.le          ; 6 uses
  %i.lg = sext i32 %i.kf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.lg ; 4 uses
  %.val.i715 = load float, ptr %i.lh, align 1, !tbaa !32, !noalias !118
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %.val3.i716 = load float, ptr %i.li, align 1, !tbaa !32, !noalias !118
  %i.lj = insertelement <4 x float> poison, float %.val.i715, i64 0
  %i.lk = insertelement <4 x float> poison, float %.val3.i716, i64 0
  %i.ll = shufflevector <4 x float> %i.lj, <4 x float> %i.lk, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lm = fadd <16 x float> %i.di, %i.ll          ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.val.i718 = load float, ptr %i.ln, align 1, !tbaa !32, !noalias !118
  %i.lo = getelementptr i8, ptr %i.lh, i64 12
  %.val3.i719 = load float, ptr %i.lo, align 1, !tbaa !32, !noalias !118
  %i.lp = insertelement <4 x float> poison, float %.val.i718, i64 0
  %i.lq = insertelement <4 x float> poison, float %.val3.i719, i64 0
  %i.lr = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ls = fadd <16 x float> %i.di, %i.lr          ; 6 uses
  %i.lt = sext i32 %i.dj to i64                   ; 5 uses
  br i1 %i.dr, label %bb.c, label %.preheader4480

bb.c:                                             ; preds = %.loopexit4481
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.lt ; 4 uses
  %.val.i721 = load float, ptr %i.lu, align 1, !tbaa !32, !noalias !119
  %i.lv = getelementptr i8, ptr %i.lu, i64 4
  %.val2.i = load float, ptr %i.lv, align 1, !tbaa !32, !noalias !119
  %i.lw = insertelement <4 x float> poison, float %.val.i721, i64 0
  %i.lx = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.ly = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lz = fmul <16 x float> %i.ce, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.val.i722 = load float, ptr %i.ma, align 1, !tbaa !32, !noalias !119
  %i.mb = getelementptr i8, ptr %i.lu, i64 12
  %.val2.i723 = load float, ptr %i.mb, align 1, !tbaa !32, !noalias !119
  %i.mc = insertelement <4 x float> poison, float %.val.i722, i64 0
  %i.md = insertelement <4 x float> poison, float %.val2.i723, i64 0
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mf = fmul <16 x float> %i.ce, %i.me
  br label %.preheader4480

.preheader4480:                                   ; preds = %.loopexit4481, %bb.c
  %.sroa.04065.0 = phi <16 x float> [ %i.lz, %bb.c ], [ undef, %.loopexit4481 ] ; 4 uses
  %.sroa.74069.0 = phi <16 x float> [ %i.mf, %bb.c ], [ undef, %.loopexit4481 ] ; 4 uses
  %i.mg = load i32, ptr %1, align 8, !tbaa !115
  %i.mh = shl i32 %i.mg, 1                        ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.lt
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !86
  %i.mk = mul i32 %i.mh, %i.mj
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ml ; 6 uses
  %i.mn = getelementptr [4 x i8], ptr %i.j, i64 %i.lt
  %i.mo = getelementptr i8, ptr %i.mn, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !86
  %i.mq = mul i32 %i.mh, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mr ; 6 uses
  %i.mt = getelementptr [4 x i8], ptr %i.j, i64 %i.lt
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !86
  %i.mw = mul i32 %i.mh, %i.mv
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mx ; 4 uses
  %i.mz = getelementptr [4 x i8], ptr %i.j, i64 %i.lt
  %i.na = getelementptr i8, ptr %i.mz, i64 12
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !86
  %i.nc = mul i32 %i.mh, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nd ; 4 uses
  %i.nf = sext i32 %i.dp to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nf ; 4 uses
  %.val669 = load float, ptr %i.ng, align 1, !tbaa !32
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  %.val670 = load float, ptr %i.nh, align 1, !tbaa !32
  %i.ni = insertelement <4 x float> poison, float %.val669, i64 0
  %i.nj = insertelement <4 x float> poison, float %.val670, i64 0
  %i.nk = shufflevector <4 x float> %i.ni, <4 x float> %i.nj, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %.val669.1 = load float, ptr %i.nl, align 1, !tbaa !32
  %i.nm = getelementptr i8, ptr %i.ng, i64 12
  %.val670.1 = load float, ptr %i.nm, align 1, !tbaa !32
  %i.nn = insertelement <4 x float> poison, float %.val669.1, i64 0
  %i.no = insertelement <4 x float> poison, float %.val670.1, i64 0
  %i.np = shufflevector <4 x float> %i.nn, <4 x float> %i.no, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.nq = icmp slt i32 %i.cm, %i.co               ; 3 uses
  br i1 %i.dt, label %.preheader, label %bb.g

.preheader:                                       ; preds = %.preheader4480
  br i1 %i.nq, label %.lr.ph4576, label %.critedge

.lr.ph4576:                                       ; preds = %.preheader, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587
  %indvars.iv4665 = phi i64 [ %indvars.iv.next4666, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ %i.fq, %.preheader ] ; 4 uses
  %.sroa.163853.04574 = phi <16 x float> [ %i.abi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03846.04573 = phi <16 x float> [ %i.abh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.163835.04572 = phi <16 x float> [ %i.abk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03828.04571 = phi <16 x float> [ %i.abj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.16.04570 = phi <16 x float> [ %i.abm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03811.04569 = phi <16 x float> [ %i.abl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %i.nr = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv4665
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !86
  %.not573 = icmp eq i32 %i.nu, -1
  br i1 %.not573, label %.critedge.loopexit, label %.critedge575

.critedge575:                                     ; preds = %.lr.ph4576
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4665 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !94 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !120
  %i.nz = insertelement <16 x i32> poison, i32 %i.ny, i64 0
  %i.oa = shufflevector <16 x i32> %i.nz, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ob = and <16 x i32> %.sroa.04715.0.copyload, %i.oa
  %.not4787 = icmp eq <16 x i32> %i.ob, zeroinitializer ; 5 uses
  %i.oc = and <16 x i32> %.sroa.6.0.copyload, %i.oa
  %.not4788 = icmp eq <16 x i32> %i.oc, zeroinitializer ; 2 uses
  %i.od = shl nsw i32 %i.nw, 3
  %i.oe = mul nsw i32 %i.nw, 24
  %i.of = sext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr [4 x i8], ptr %i.bi, i64 %i.of ; 3 uses
  %.val6714956 = load <8 x float>, ptr %i.og, align 32, !tbaa !32
  %i.oh = shufflevector <8 x float> %.val6714956, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oi = getelementptr i8, ptr %i.og, i64 32
  %.val6724957 = load <8 x float>, ptr %i.oi, align 32, !tbaa !32
  %i.oj = shufflevector <8 x float> %.val6724957, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ok = getelementptr i8, ptr %i.og, i64 64
  %.val6734958 = load <8 x float>, ptr %i.ok, align 32, !tbaa !32
  %i.ol = shufflevector <8 x float> %.val6734958, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.om = fsub <16 x float> %i.km, %i.oh          ; 3 uses
  %i.on = fsub <16 x float> %i.ks, %i.oh          ; 3 uses
  %i.oo = fsub <16 x float> %i.kz, %i.oj          ; 3 uses
  %i.op = fsub <16 x float> %i.lf, %i.oj          ; 3 uses
  %i.oq = fsub <16 x float> %i.lm, %i.ol          ; 3 uses
  %i.or = fsub <16 x float> %i.ls, %i.ol          ; 3 uses
  %i.os = fmul <16 x float> %i.om, %i.om
  %i.ot = fmul <16 x float> %i.oo, %i.oo
  %i.ou = fadd <16 x float> %i.os, %i.ot
  %i.ov = fmul <16 x float> %i.oq, %i.oq
  %i.ow = fadd <16 x float> %i.ou, %i.ov          ; 2 uses
  %i.ox = fmul <16 x float> %i.on, %i.on
  %i.oy = fmul <16 x float> %i.op, %i.op
  %i.oz = fadd <16 x float> %i.ox, %i.oy
  %i.pa = fmul <16 x float> %i.or, %i.or
  %i.pb = fadd <16 x float> %i.oz, %i.pa          ; 2 uses
  %i.pc = fcmp olt <16 x float> %i.ow, %i.be      ; 2 uses
  %i.pd = bitcast <16 x i1> %i.pc to i16          ; 2 uses
  %i.pe = fcmp olt <16 x float> %i.pb, %i.be      ; 2 uses
  %i.pf = bitcast <16 x i1> %i.pe to i16          ; 2 uses
  %i.pg = shl nsw i32 %i.nw, 1                    ; 3 uses
  %i.ph = icmp eq i32 %i.pg, %i.cr
  br i1 %i.ph, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge575
  %i.pi = and i16 %i.pd, %i.v
  %i.pj = and i16 %i.pf, %i.w
  %5 = bitcast i16 %i.pi to <16 x i1>
  %6 = bitcast i16 %i.pj to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

bb.e:                                             ; preds = %.critedge575
  %i.pk = or disjoint i32 %i.pg, 1
  %i.pl = icmp eq i32 %i.pk, %i.cr
  br i1 %i.pl, label %bb.f, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

bb.f:                                             ; preds = %bb.e
  %i.pm = and i16 %i.pd, %i.x
  %i.pn = and i16 %i.pf, %i.y
  %7 = bitcast i16 %i.pm to <16 x i1>
  %8 = bitcast i16 %i.pn to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit587: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.12.0 = phi <16 x i1> [ %6, %bb.d ], [ %8, %bb.f ], [ %i.pe, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi <16 x i1> [ %5, %bb.d ], [ %7, %bb.f ], [ %i.pc, %bb.e ] ; 4 uses
  %i.po = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ow, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.pp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pb, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.pq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.po, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pr = fmul <16 x float> %i.po, %i.pq
  %i.ps = fmul <16 x float> %i.pq, splat (float -5.000000e-01)
  %i.pt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pr, <16 x float> %i.pq, <16 x float> splat (float -3.000000e+00))
  %i.pu = fmul <16 x float> %i.ps, %i.pt
  %i.pv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pw = fmul <16 x float> %i.pp, %i.pv
  %i.px = fmul <16 x float> %i.pv, splat (float -5.000000e-01)
  %i.py = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pw, <16 x float> %i.pv, <16 x float> splat (float -3.000000e+00))
  %i.pz = fmul <16 x float> %i.px, %i.py
  %i.qa = sext i32 %i.od to i64                   ; 2 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.qa
  %.val6744959 = load <8 x float>, ptr %i.qb, align 32, !tbaa !32
  %i.qc = shufflevector <8 x float> %.val6744959, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qd = fmul <16 x float> %.sroa.04065.0, %i.qc ; 2 uses
  %i.qe = fmul <16 x float> %.sroa.74069.0, %i.qc ; 2 uses
  %i.qf = select <16 x i1> %.sroa.0.0, <16 x float> %i.pu, <16 x float> zeroinitializer ; 3 uses
  %i.qg = select <16 x i1> %.sroa.12.0, <16 x float> %i.pz, <16 x float> zeroinitializer ; 3 uses
  %i.qh = fmul <16 x float> %i.qf, %i.qf          ; 4 uses
  %i.qi = fmul <16 x float> %i.qg, %i.qg
  %i.qj = select <16 x i1> %.not4787, <16 x float> zeroinitializer, <16 x float> %i.qf ; 2 uses
  %i.qk = select <16 x i1> %.not4788, <16 x float> zeroinitializer, <16 x float> %i.qg ; 2 uses
  %i.ql = select <16 x i1> %.sroa.0.0, <16 x float> %i.po, <16 x float> zeroinitializer ; 2 uses
  %i.qm = fmul <16 x float> %i.ad, %i.ql          ; 7 uses
  %i.qn = select <16 x i1> %.sroa.12.0, <16 x float> %i.pp, <16 x float> zeroinitializer
  %i.qo = fmul <16 x float> %i.ad, %i.qn          ; 7 uses
  %i.qp = fmul <16 x float> %i.qm, %i.qm          ; 15 uses
  %i.qq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.qr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.qs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qq, <16 x float> %i.qp, <16 x float> splat (float 1.000000e+00))
  %i.qt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qr, <16 x float> %i.qm, <16 x float> %i.qs) ; 2 uses
  %i.qu = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.qt, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.qv = fneg <16 x float> %i.qu
  %i.qw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qv, <16 x float> %i.qt, <16 x float> splat (float 2.000000e+00))
  %i.qx = fmul <16 x float> %i.qu, %i.qw
  %i.qy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.qz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ra = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qy, <16 x float> %i.qp, <16 x float> splat (float f0xBC9DED90))
  %i.rb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qz, <16 x float> %i.qp, <16 x float> splat (float f0x3D8EAF3B))
  %i.rc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ra, <16 x float> %i.qp, <16 x float> splat (float f0xBF409397))
  %i.rd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rb, <16 x float> %i.qm, <16 x float> %i.rc)
  %i.re = fmul <16 x float> %i.rd, %i.qx
  %i.rf = fmul <16 x float> %i.ab, %i.re
  %i.rg = fmul <16 x float> %i.qo, %i.qo          ; 15 uses
  %i.rh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.ri = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.rj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rh, <16 x float> %i.rg, <16 x float> splat (float 1.000000e+00))
  %i.rk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ri, <16 x float> %i.qo, <16 x float> %i.rj) ; 2 uses
  %i.rl = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.rk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.rm = fneg <16 x float> %i.rl
  %i.rn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rm, <16 x float> %i.rk, <16 x float> splat (float 2.000000e+00))
  %i.ro = fmul <16 x float> %i.rl, %i.rn
  %i.rp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.rq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.rr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rp, <16 x float> %i.rg, <16 x float> splat (float f0xBC9DED90))
  %i.rs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rq, <16 x float> %i.rg, <16 x float> splat (float f0x3D8EAF3B))
  %i.rt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rr, <16 x float> %i.rg, <16 x float> splat (float f0xBF409397))
  %i.ru = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rs, <16 x float> %i.qo, <16 x float> %i.rt)
  %i.rv = fmul <16 x float> %i.ru, %i.ro
  %i.rw = fmul <16 x float> %i.ab, %i.rv
  %i.rx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rf, <16 x float> %i.qm, <16 x float> %i.qj)
  %i.ry = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rw, <16 x float> %i.qo, <16 x float> %i.qk)
  %i.rz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.sa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rz, <16 x float> %i.qm, <16 x float> %i.sa) ; 2 uses
  %i.sc = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sb, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.sd = fneg <16 x float> %i.sc
  %i.se = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sd, <16 x float> %i.sb, <16 x float> splat (float 2.000000e+00))
  %i.sf = fmul <16 x float> %i.sc, %i.se
  %i.sg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.sh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.si = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sg, <16 x float> %i.qp, <16 x float> splat (float f0x3D1E57D6))
  %i.sj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sh, <16 x float> %i.qp, <16 x float> splat (float f0x3DE71E23))
  %i.sk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.si, <16 x float> %i.qp, <16 x float> splat (float f0x3F906EC3))
  %i.sl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sj, <16 x float> %i.qm, <16 x float> %i.sk)
  %i.sm = fmul <16 x float> %i.sl, %i.sf
  %i.sn = fmul <16 x float> %i.ab, %i.sm
  %i.so = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.sp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.so, <16 x float> %i.qo, <16 x float> %i.sp) ; 2 uses
  %i.sr = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sq, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ss = fneg <16 x float> %i.sr
  %i.st = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ss, <16 x float> %i.sq, <16 x float> splat (float 2.000000e+00))
  %i.su = fmul <16 x float> %i.sr, %i.st
  %i.sv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.sw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.sx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sv, <16 x float> %i.rg, <16 x float> splat (float f0x3D1E57D6))
  %i.sy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sw, <16 x float> %i.rg, <16 x float> splat (float f0x3DE71E23))
  %i.sz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sx, <16 x float> %i.rg, <16 x float> splat (float f0x3F906EC3))
  %i.ta = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sy, <16 x float> %i.qo, <16 x float> %i.sz)
  %i.tb = fmul <16 x float> %i.ta, %i.su
  %i.tc = fmul <16 x float> %i.ab, %i.tb
  %i.td = fmul <16 x float> %i.qd, %i.rx
  %i.te = fmul <16 x float> %i.qe, %i.ry
  %i.tf = select <16 x i1> %.not4787, <16 x float> zeroinitializer, <16 x float> %i.ak
  %i.tg = fadd <16 x float> %i.tf, %i.sn
  %i.th = select <16 x i1> %.not4788, <16 x float> zeroinitializer, <16 x float> %i.ak
  %i.ti = fadd <16 x float> %i.th, %i.tc
  %i.tj = fsub <16 x float> %i.qj, %i.tg
  %i.tk = fmul <16 x float> %i.qd, %i.tj
  %i.tl = fsub <16 x float> %i.qk, %i.ti
  %i.tm = fmul <16 x float> %i.qe, %i.tl
  %i.tn = select <16 x i1> %.sroa.0.0, <16 x float> %i.tk, <16 x float> zeroinitializer ; 2 uses
  %i.to = select <16 x i1> %.sroa.12.0, <16 x float> %i.tm, <16 x float> zeroinitializer ; 2 uses
  %i.tp = shl nsw i32 %i.nw, 4
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qa
  %.val7044473 = load <8 x i32>, ptr %i.tq, align 32, !tbaa !32 ; 2 uses
  %i.tr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mm, <8 x i32> %.val7044473, <8 x i1> splat (i1 true), i32 8)
  %i.ts = bitcast <8 x double> %i.tr to <16 x float> ; 2 uses
  %i.tt = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7044473, <8 x i1> splat (i1 true), i32 8)
  %i.tu = bitcast <8 x double> %i.tt to <16 x float> ; 2 uses
  %i.tv = shufflevector <16 x float> %i.ts, <16 x float> %i.tu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.tw = shufflevector <16 x float> %i.ts, <16 x float> %i.tu, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.tx = fmul <16 x float> %i.qh, %i.qh
  %i.ty = fmul <16 x float> %i.qh, %i.tx          ; 4 uses
  %i.tz = select <16 x i1> %.not4787, <16 x float> zeroinitializer, <16 x float> %i.ty ; 3 uses
  %i.ua = fmul <16 x float> %i.tz, %i.tz
  %i.ub = fmul <16 x float> %i.tz, %i.tv          ; 2 uses
  %i.uc = fmul <16 x float> %i.ua, %i.tw          ; 2 uses
  %i.ud = fsub <16 x float> %i.uc, %i.ub
  %i.ue = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tv, <16 x float> %i.an, <16 x float> %i.ub)
  %i.uf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tw, <16 x float> %i.aq, <16 x float> %i.uc)
  %i.ug = fmul <16 x float> %i.ue, splat (float f0xBE2AAAAB)
  %i.uh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uf, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ug)
  %i.ui = select <16 x i1> %.not4787, <16 x float> zeroinitializer, <16 x float> %i.uh
  %i.uj = sext i32 %i.tp to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.uj
  %.val6754960 = load <8 x float>, ptr %i.uk, align 32, !tbaa !32
  %i.ul = shufflevector <8 x float> %.val6754960, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.um = fmul <16 x float> %i.nk, %i.ul          ; 2 uses
  %i.un = fmul <16 x float> %i.ay, %i.ql          ; 3 uses
  %i.uo = bitcast <16 x float> %i.un to <8 x i64>
  %i.up = xor <8 x i64> %i.uo, splat (i64 -9223372034707292160)
  %i.uq = bitcast <8 x i64> %i.up to <16 x float> ; 2 uses
  %i.ur = fmul <16 x float> %i.uq, splat (float f0x3FB8AA3B) ; 2 uses
  %i.us = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ur, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ut = shl <16 x i32> %i.us, splat (i32 23)
  %i.uu = add <16 x i32> %i.ut, splat (i32 1065353216)
  %i.uv = bitcast <16 x i32> %i.uu to <16 x float> ; 2 uses
  %i.uw = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ur, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uw, <16 x float> splat (float f0xBF317200), <16 x float> %i.uq)
  %i.uy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uw, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ux) ; 7 uses
  %i.uz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uy, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.va = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uz, <16 x float> %i.uy, <16 x float> splat (float f0x3D2AAF4C))
  %i.vb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.va, <16 x float> %i.uy, <16 x float> splat (float f0x3E2AAA5E))
  %i.vc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vb, <16 x float> %i.uy, <16 x float> splat (float f0x3EFFFFFB))
  %i.vd = fmul <16 x float> %i.uy, %i.uy
  %i.ve = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vd, <16 x float> %i.vc, <16 x float> %i.uy)
  %i.vf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ve, <16 x float> %i.uv, <16 x float> %i.uv)
  %i.vg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.un, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.vh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vg, <16 x float> %i.un, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.vi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ty, <16 x float> %i.vh, <16 x float> %i.ba)
  %i.vj = fneg <16 x float> %i.vf                 ; 2 uses
  %i.vk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vj, <16 x float> %i.vi, <16 x float> %i.ty)
  %i.vl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.um, <16 x float> %i.vk, <16 x float> %i.ud)
  %i.vm = select <16 x i1> %.not4787, <16 x float> zeroinitializer, <16 x float> %i.bd
  %i.vn = fmul <16 x float> %i.um, splat (float f0x3E2AAAAB)
  %i.vo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vj, <16 x float> %i.vh, <16 x float> splat (float 1.000000e+00))
  %i.vp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ty, <16 x float> %i.vo, <16 x float> %i.vm)
  %i.vq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.vn, <16 x float> %i.vp, <16 x float> %i.ui)
  %i.vr = select <16 x i1> %.sroa.0.0, <16 x float> %i.vq, <16 x float> zeroinitializer ; 2 uses
  %i.vs = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.vt = load i32, ptr %i.cf, align 8, !tbaa !121
  %i.vu = sext i32 %i.pg to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %i.vu
  %i.vw = load i32, ptr %i.cg, align 4, !tbaa !122
  %i.vx = load i32, ptr %i.cb, align 8, !tbaa !95
  %i.vy = load <2 x i32>, ptr %i.vv, align 4, !tbaa !86 ; 2 uses
  %i.vz = insertelement <2 x i32> poison, i32 %i.vt, i64 0
  %i.wa = shufflevector <2 x i32> %i.vy, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.wb = shufflevector <2 x i32> %i.vy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.wc = shufflevector <2 x i32> %i.vz, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.wd = ashr <4 x i32> %i.wb, %i.wc
  %i.we = shufflevector <4 x i32> %i.wd, <4 x i32> %i.wa, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.wf = insertelement <4 x i32> poison, i32 %i.vw, i64 0
  %i.wg = shufflevector <4 x i32> %i.wf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wh = and <4 x i32> %i.we, %i.wg
  %i.wi = insertelement <4 x i32> poison, i32 %i.vx, i64 0
  %i.wj = shufflevector <4 x i32> %i.wi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wk = mul nsw <4 x i32> %i.wh, %i.wj          ; 4 uses
  %i.wl = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !92 ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !92 ; 4 uses
  %i.wp = shufflevector <16 x float> %i.tn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.wq = shufflevector <16 x float> %i.tn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.wr = extractelement <4 x i32> %i.wk, i64 0
  %i.ws = sext i32 %i.wr to i64                   ; 6 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.ws ; 2 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.ws ; 2 uses
  %i.wv = load <8 x float>, ptr %i.wt, align 32, !tbaa !32
  %i.ww = fadd <8 x float> %i.wp, %i.wv
  store <8 x float> %i.ww, ptr %i.wt, align 32, !tbaa !32
  %i.wx = load <8 x float>, ptr %i.wu, align 32, !tbaa !32
  %i.wy = fadd <8 x float> %i.wx, %i.wq
  store <8 x float> %i.wy, ptr %i.wu, align 32, !tbaa !32
  %i.wz = extractelement <4 x i32> %i.wk, i64 1
  %i.xa = sext i32 %i.wz to i64                   ; 6 uses
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 32 ; 2 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.xa
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 32 ; 2 uses
  %i.xf = load <8 x float>, ptr %i.xc, align 32, !tbaa !32
  %i.xg = fadd <8 x float> %i.wp, %i.xf
  store <8 x float> %i.xg, ptr %i.xc, align 32, !tbaa !32
  %i.xh = load <8 x float>, ptr %i.xe, align 32, !tbaa !32
  %i.xi = fadd <8 x float> %i.xh, %i.wq
  store <8 x float> %i.xi, ptr %i.xe, align 32, !tbaa !32
  %i.xj = extractelement <4 x i32> %i.wk, i64 2
  %i.xk = sext i32 %i.xj to i64                   ; 6 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 64 ; 2 uses
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.xk
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 64 ; 2 uses
  %i.xp = load <8 x float>, ptr %i.xm, align 32, !tbaa !32
  %i.xq = fadd <8 x float> %i.wp, %i.xp
  store <8 x float> %i.xq, ptr %i.xm, align 32, !tbaa !32
  %i.xr = load <8 x float>, ptr %i.xo, align 32, !tbaa !32
  %i.xs = fadd <8 x float> %i.xr, %i.wq
  store <8 x float> %i.xs, ptr %i.xo, align 32, !tbaa !32
  %i.xt = extractelement <4 x i32> %i.wk, i64 3
  %i.xu = sext i32 %i.xt to i64                   ; 6 uses
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 96 ; 2 uses
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.xu
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 96 ; 2 uses
  %i.xz = load <8 x float>, ptr %i.xw, align 32, !tbaa !32
  %i.ya = fadd <8 x float> %i.wp, %i.xz
  store <8 x float> %i.ya, ptr %i.xw, align 32, !tbaa !32
  %i.yb = load <8 x float>, ptr %i.xy, align 32, !tbaa !32
  %i.yc = fadd <8 x float> %i.yb, %i.wq
  store <8 x float> %i.yc, ptr %i.xy, align 32, !tbaa !32
  %i.yd = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !92 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !92 ; 4 uses
  %i.yi = shufflevector <16 x float> %i.to, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.yj = shufflevector <16 x float> %i.to, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.ws ; 2 uses
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.ws ; 2 uses
  %i.ym = load <8 x float>, ptr %i.yk, align 32, !tbaa !32
  %i.yn = fadd <8 x float> %i.yi, %i.ym
  store <8 x float> %i.yn, ptr %i.yk, align 32, !tbaa !32
  %i.yo = load <8 x float>, ptr %i.yl, align 32, !tbaa !32
  %i.yp = fadd <8 x float> %i.yo, %i.yj
  store <8 x float> %i.yp, ptr %i.yl, align 32, !tbaa !32
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.xa
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 32 ; 2 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.xa
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32 ; 2 uses
  %i.yu = load <8 x float>, ptr %i.yr, align 32, !tbaa !32
  %i.yv = fadd <8 x float> %i.yi, %i.yu
  store <8 x float> %i.yv, ptr %i.yr, align 32, !tbaa !32
  %i.yw = load <8 x float>, ptr %i.yt, align 32, !tbaa !32
  %i.yx = fadd <8 x float> %i.yw, %i.yj
  store <8 x float> %i.yx, ptr %i.yt, align 32, !tbaa !32
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.xk
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 64 ; 2 uses
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.xk
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 64 ; 2 uses
  %i.zc = load <8 x float>, ptr %i.yz, align 32, !tbaa !32
  %i.zd = fadd <8 x float> %i.yi, %i.zc
  store <8 x float> %i.zd, ptr %i.yz, align 32, !tbaa !32
  %i.ze = load <8 x float>, ptr %i.zb, align 32, !tbaa !32
  %i.zf = fadd <8 x float> %i.ze, %i.yj
  store <8 x float> %i.zf, ptr %i.zb, align 32, !tbaa !32
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.xu
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 96 ; 2 uses
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.xu
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 96 ; 2 uses
  %i.zk = load <8 x float>, ptr %i.zh, align 32, !tbaa !32
  %i.zl = fadd <8 x float> %i.yi, %i.zk
  store <8 x float> %i.zl, ptr %i.zh, align 32, !tbaa !32
  %i.zm = load <8 x float>, ptr %i.zj, align 32, !tbaa !32
  %i.zn = fadd <8 x float> %i.zm, %i.yj
  store <8 x float> %i.zn, ptr %i.zj, align 32, !tbaa !32
  %i.zo = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !92 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !92 ; 4 uses
  %i.zs = shufflevector <16 x float> %i.vr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.zt = shufflevector <16 x float> %i.vr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.ws ; 2 uses
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.ws ; 2 uses
  %i.zw = load <8 x float>, ptr %i.zu, align 32, !tbaa !32
  %i.zx = fadd <8 x float> %i.zs, %i.zw
  store <8 x float> %i.zx, ptr %i.zu, align 32, !tbaa !32
  %i.zy = load <8 x float>, ptr %i.zv, align 32, !tbaa !32
  %i.zz = fadd <8 x float> %i.zy, %i.zt
  store <8 x float> %i.zz, ptr %i.zv, align 32, !tbaa !32
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.xa
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32 ; 2 uses
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.xa
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32 ; 2 uses
  %i.aae = load <8 x float>, ptr %i.aab, align 32, !tbaa !32
  %i.aaf = fadd <8 x float> %i.zs, %i.aae
  store <8 x float> %i.aaf, ptr %i.aab, align 32, !tbaa !32
  %i.aag = load <8 x float>, ptr %i.aad, align 32, !tbaa !32
  %i.aah = fadd <8 x float> %i.aag, %i.zt
  store <8 x float> %i.aah, ptr %i.aad, align 32, !tbaa !32
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.xk
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 64 ; 2 uses
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.xk
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 64 ; 2 uses
  %i.aam = load <8 x float>, ptr %i.aaj, align 32, !tbaa !32
  %i.aan = fadd <8 x float> %i.zs, %i.aam
  store <8 x float> %i.aan, ptr %i.aaj, align 32, !tbaa !32
  %i.aao = load <8 x float>, ptr %i.aal, align 32, !tbaa !32
  %i.aap = fadd <8 x float> %i.aao, %i.zt
  store <8 x float> %i.aap, ptr %i.aal, align 32, !tbaa !32
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.xu
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 96 ; 2 uses
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.xu
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 96 ; 2 uses
  %i.aau = load <8 x float>, ptr %i.aar, align 32, !tbaa !32
  %i.aav = fadd <8 x float> %i.zs, %i.aau
  store <8 x float> %i.aav, ptr %i.aar, align 32, !tbaa !32
  %i.aaw = load <8 x float>, ptr %i.aat, align 32, !tbaa !32
  %i.aax = fadd <8 x float> %i.aaw, %i.zt
  store <8 x float> %i.aax, ptr %i.aat, align 32, !tbaa !32
  %i.aay = fadd <16 x float> %i.td, %i.vl
  %i.aaz = fmul <16 x float> %i.qh, %i.aay        ; 3 uses
  %i.aba = fmul <16 x float> %i.qi, %i.te         ; 3 uses
  %i.abb = fmul <16 x float> %i.om, %i.aaz        ; 2 uses
  %i.abc = fmul <16 x float> %i.on, %i.aba        ; 2 uses
  %i.abd = fmul <16 x float> %i.oo, %i.aaz        ; 2 uses
  %i.abe = fmul <16 x float> %i.op, %i.aba        ; 2 uses
  %i.abf = fmul <16 x float> %i.oq, %i.aaz        ; 2 uses
  %i.abg = fmul <16 x float> %i.or, %i.aba        ; 2 uses
  %i.abh = fadd <16 x float> %.sroa.03846.04573, %i.abb ; 2 uses
  %i.abi = fadd <16 x float> %.sroa.163853.04574, %i.abc ; 2 uses
  %i.abj = fadd <16 x float> %.sroa.03828.04571, %i.abd ; 2 uses
  %i.abk = fadd <16 x float> %.sroa.163835.04572, %i.abe ; 2 uses
  %i.abl = fadd <16 x float> %.sroa.03811.04569, %i.abf ; 2 uses
  %i.abm = fadd <16 x float> %.sroa.16.04570, %i.abg ; 2 uses
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.of ; 4 uses
  %i.abo = fadd <16 x float> %i.abc, %i.abb       ; 2 uses
  %i.abp = fadd <16 x float> %i.abe, %i.abd       ; 2 uses
  %i.abq = fadd <16 x float> %i.abg, %i.abf       ; 2 uses
  %i.abr = load <8 x float>, ptr %i.abn, align 32, !tbaa !32
  %i.abs = shufflevector <16 x float> %i.abo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abt = shufflevector <16 x float> %i.abo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abu = fadd <8 x float> %i.abs, %i.abt
  %i.abv = fsub <8 x float> %i.abr, %i.abu
  store <8 x float> %i.abv, ptr %i.abn, align 32, !tbaa !32
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abn, i64 32 ; 2 uses
  %i.abx = load <8 x float>, ptr %i.abw, align 32, !tbaa !32
  %i.aby = shufflevector <16 x float> %i.abp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abz = shufflevector <16 x float> %i.abp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aca = fadd <8 x float> %i.aby, %i.abz
  %i.acb = fsub <8 x float> %i.abx, %i.aca
  store <8 x float> %i.acb, ptr %i.abw, align 32, !tbaa !32
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abn, i64 64 ; 2 uses
  %i.acd = load <8 x float>, ptr %i.acc, align 32, !tbaa !32
  %i.ace = shufflevector <16 x float> %i.abq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acf = shufflevector <16 x float> %i.abq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acg = fadd <8 x float> %i.ace, %i.acf
  %i.ach = fsub <8 x float> %i.acd, %i.acg
  store <8 x float> %i.ach, ptr %i.acc, align 32, !tbaa !32
  %indvars.iv.next4666 = add nsw i64 %indvars.iv4665, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4484.preheader
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 24
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !92 ; 4 uses
  %i.amc = shufflevector <16 x float> %i.ahk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.amd = shufflevector <16 x float> %i.ahk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.akm ; 2 uses
  %i.amf = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.akm ; 2 uses
  %i.amg = load <8 x float>, ptr %i.ame, align 32, !tbaa !32
  %i.amh = fadd <8 x float> %i.amc, %i.amg
  store <8 x float> %i.amh, ptr %i.ame, align 32, !tbaa !32
  %i.ami = load <8 x float>, ptr %i.amf, align 32, !tbaa !32
  %i.amj = fadd <8 x float> %i.ami, %i.amd
  store <8 x float> %i.amj, ptr %i.amf, align 32, !tbaa !32
  %i.amk = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.aku
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32 ; 2 uses
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.aku
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 32 ; 2 uses
  %i.amo = load <8 x float>, ptr %i.aml, align 32, !tbaa !32
  %i.amp = fadd <8 x float> %i.amc, %i.amo
  store <8 x float> %i.amp, ptr %i.aml, align 32, !tbaa !32
  %i.amq = load <8 x float>, ptr %i.amn, align 32, !tbaa !32
  %i.amr = fadd <8 x float> %i.amq, %i.amd
  store <8 x float> %i.amr, ptr %i.amn, align 32, !tbaa !32
  %i.ams = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.ale
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 2 uses
  %i.amu = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.ale
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 64 ; 2 uses
  %i.amw = load <8 x float>, ptr %i.amt, align 32, !tbaa !32
  %i.amx = fadd <8 x float> %i.amc, %i.amw
  store <8 x float> %i.amx, ptr %i.amt, align 32, !tbaa !32
  %i.amy = load <8 x float>, ptr %i.amv, align 32, !tbaa !32
  %i.amz = fadd <8 x float> %i.amy, %i.amd
  store <8 x float> %i.amz, ptr %i.amv, align 32, !tbaa !32
  %i.ana = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.alo
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 96 ; 2 uses
  %i.anc = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.alo
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 96 ; 2 uses
  %i.ane = load <8 x float>, ptr %i.anb, align 32, !tbaa !32
  %i.anf = fadd <8 x float> %i.amc, %i.ane
  store <8 x float> %i.anf, ptr %i.anb, align 32, !tbaa !32
  %i.ang = load <8 x float>, ptr %i.and, align 32, !tbaa !32
  %i.anh = fadd <8 x float> %i.ang, %i.amd
  store <8 x float> %i.anh, ptr %i.and, align 32, !tbaa !32
  %i.ani = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !92 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !92 ; 4 uses
  %i.anm = shufflevector <16 x float> %i.ajk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ann = shufflevector <16 x float> %i.ajk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.akm ; 2 uses
  %i.anp = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.akm ; 2 uses
  %i.anq = load <8 x float>, ptr %i.ano, align 32, !tbaa !32
  %i.anr = fadd <8 x float> %i.anm, %i.anq
  store <8 x float> %i.anr, ptr %i.ano, align 32, !tbaa !32
  %i.ans = load <8 x float>, ptr %i.anp, align 32, !tbaa !32
  %i.ant = fadd <8 x float> %i.ans, %i.ann
  store <8 x float> %i.ant, ptr %i.anp, align 32, !tbaa !32
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.aku
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 32 ; 2 uses
  %i.anw = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.aku
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32 ; 2 uses
  %i.any = load <8 x float>, ptr %i.anv, align 32, !tbaa !32
  %i.anz = fadd <8 x float> %i.anm, %i.any
  store <8 x float> %i.anz, ptr %i.anv, align 32, !tbaa !32
  %i.aoa = load <8 x float>, ptr %i.anx, align 32, !tbaa !32
  %i.aob = fadd <8 x float> %i.aoa, %i.ann
  store <8 x float> %i.aob, ptr %i.anx, align 32, !tbaa !32
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.ale
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 64 ; 2 uses
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.ale
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 64 ; 2 uses
  %i.aog = load <8 x float>, ptr %i.aod, align 32, !tbaa !32
  %i.aoh = fadd <8 x float> %i.anm, %i.aog
  store <8 x float> %i.aoh, ptr %i.aod, align 32, !tbaa !32
  %i.aoi = load <8 x float>, ptr %i.aof, align 32, !tbaa !32
  %i.aoj = fadd <8 x float> %i.aoi, %i.ann
  store <8 x float> %i.aoj, ptr %i.aof, align 32, !tbaa !32
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.alo
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 96 ; 2 uses
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.alo
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 96 ; 2 uses
  %i.aoo = load <8 x float>, ptr %i.aol, align 32, !tbaa !32
  %i.aop = fadd <8 x float> %i.anm, %i.aoo
  store <8 x float> %i.aop, ptr %i.aol, align 32, !tbaa !32
  %i.aoq = load <8 x float>, ptr %i.aon, align 32, !tbaa !32
  %i.aor = fadd <8 x float> %i.aoq, %i.ann
  store <8 x float> %i.aor, ptr %i.aon, align 32, !tbaa !32
  %i.aos = fadd <16 x float> %i.ahb, %i.ajf
  %i.aot = fmul <16 x float> %i.aeh, %i.aos       ; 3 uses
  %i.aou = fmul <16 x float> %i.aei, %i.ahc       ; 3 uses
  %i.aov = fmul <16 x float> %i.acw, %i.aot       ; 2 uses
  %i.aow = fmul <16 x float> %i.acx, %i.aou       ; 2 uses
  %i.aox = fmul <16 x float> %i.acy, %i.aot       ; 2 uses
  %i.aoy = fmul <16 x float> %i.acz, %i.aou       ; 2 uses
  %i.aoz = fmul <16 x float> %i.ada, %i.aot       ; 2 uses
  %i.apa = fmul <16 x float> %i.adb, %i.aou       ; 2 uses
  %i.apb = fadd <16 x float> %.sroa.03846.14596, %i.aov ; 2 uses
  %i.apc = fadd <16 x float> %.sroa.163853.14597, %i.aow ; 2 uses
  %i.apd = fadd <16 x float> %.sroa.03828.14594, %i.aox ; 2 uses
  %i.ape = fadd <16 x float> %.sroa.163835.14595, %i.aoy ; 2 uses
  %i.apf = fadd <16 x float> %.sroa.03811.14592, %i.aoz ; 2 uses
  %i.apg = fadd <16 x float> %.sroa.16.14593, %i.apa ; 2 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.acp ; 4 uses
  %i.api = fadd <16 x float> %i.aow, %i.aov       ; 2 uses
  %i.apj = fadd <16 x float> %i.aoy, %i.aox       ; 2 uses
  %i.apk = fadd <16 x float> %i.apa, %i.aoz       ; 2 uses
  %i.apl = load <8 x float>, ptr %i.aph, align 32, !tbaa !32
  %i.apm = shufflevector <16 x float> %i.api, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apn = shufflevector <16 x float> %i.api, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apo = fadd <8 x float> %i.apm, %i.apn
  %i.app = fsub <8 x float> %i.apl, %i.apo
  store <8 x float> %i.app, ptr %i.aph, align 32, !tbaa !32
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aph, i64 32 ; 2 uses
  %i.apr = load <8 x float>, ptr %i.apq, align 32, !tbaa !32
  %i.aps = shufflevector <16 x float> %i.apj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apt = shufflevector <16 x float> %i.apj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apu = fadd <8 x float> %i.aps, %i.apt
  %i.apv = fsub <8 x float> %i.apr, %i.apu
  store <8 x float> %i.apv, ptr %i.apq, align 32, !tbaa !32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aph, i64 64 ; 2 uses
  %i.apx = load <8 x float>, ptr %i.apw, align 32, !tbaa !32
  %i.apy = shufflevector <16 x float> %i.apk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apz = shufflevector <16 x float> %i.apk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqa = fadd <8 x float> %i.apy, %i.apz
  %i.aqb = fsub <8 x float> %i.apx, %i.aqa
  store <8 x float> %i.aqb, ptr %i.apw, align 32, !tbaa !32
  %indvars.iv.next4670 = add nsw i64 %indvars.iv4669, 1 ; 2 uses
  %exitcond4673.not = icmp eq i64 %indvars.iv.next4670, %wide.trip.count4672
  br i1 %exitcond4673.not, label %.loopexit, label %.critedge577, !llvm.loop !18

bb.g:                                             ; preds = %.preheader4480
  br i1 %i.dr, label %.preheader4477, label %.preheader4479

.preheader4479:                                   ; preds = %bb.g
  br i1 %i.nq, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4479
  %wide.trip.count = sext i32 %i.co to i64
  br label %bb.m

.preheader4477:                                   ; preds = %bb.g
  br i1 %i.nq, label %.lr.ph4537, label %.critedge3

.lr.ph4537:                                       ; preds = %.preheader4477
  %wide.trip.count4652 = sext i32 %i.co to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph4537, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586
  %indvars.iv4649 = phi i64 [ %i.fq, %.lr.ph4537 ], [ %indvars.iv.next4650, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 4 uses
  %.sroa.163853.24535 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.03846.24534 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.163835.24533 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.03828.24532 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhe, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.16.24531 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %.sroa.03811.24530 = phi <16 x float> [ zeroinitializer, %.lr.ph4537 ], [ %i.bhg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586 ] ; 2 uses
  %i.aqc = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv4649
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !86
  %.not572 = icmp eq i32 %i.aqf, -1
  br i1 %.not572, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581: ; preds = %bb.h
  %i.aqg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4649 ; 2 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !94 ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !120
  %i.aqk = insertelement <16 x i32> poison, i32 %i.aqj, i64 0
  %i.aql = shufflevector <16 x i32> %i.aqk, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aqm = and <16 x i32> %.sroa.04715.0.copyload, %i.aql
  %.not4785 = icmp eq <16 x i32> %i.aqm, zeroinitializer ; 5 uses
  %i.aqn = and <16 x i32> %.sroa.6.0.copyload, %i.aql
  %.not4786 = icmp eq <16 x i32> %i.aqn, zeroinitializer ; 5 uses
  %i.aqo = shl nsw i32 %i.aqh, 3
  %i.aqp = mul nsw i32 %i.aqh, 24
  %i.aqq = sext i32 %i.aqp to i64                 ; 2 uses
  %i.aqr = getelementptr [4 x i8], ptr %i.bi, i64 %i.aqq ; 3 uses
  %.val6814946 = load <8 x float>, ptr %i.aqr, align 32, !tbaa !32
  %i.aqs = shufflevector <8 x float> %.val6814946, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqr, i64 32
  %.val6824947 = load <8 x float>, ptr %i.aqt, align 32, !tbaa !32
  %i.aqu = shufflevector <8 x float> %.val6824947, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqv = getelementptr i8, ptr %i.aqr, i64 64
  %.val6834948 = load <8 x float>, ptr %i.aqv, align 32, !tbaa !32
  %i.aqw = shufflevector <8 x float> %.val6834948, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqx = fsub <16 x float> %i.km, %i.aqs        ; 3 uses
  %i.aqy = fsub <16 x float> %i.ks, %i.aqs        ; 3 uses
  %i.aqz = fsub <16 x float> %i.kz, %i.aqu        ; 3 uses
  %i.ara = fsub <16 x float> %i.lf, %i.aqu        ; 3 uses
  %i.arb = fsub <16 x float> %i.lm, %i.aqw        ; 3 uses
  %i.arc = fsub <16 x float> %i.ls, %i.aqw        ; 3 uses
  %i.ard = fmul <16 x float> %i.aqx, %i.aqx
  %i.are = fmul <16 x float> %i.aqz, %i.aqz
  %i.arf = fadd <16 x float> %i.ard, %i.are
  %i.arg = fmul <16 x float> %i.arb, %i.arb
  %i.arh = fadd <16 x float> %i.arf, %i.arg       ; 2 uses
  %i.ari = fmul <16 x float> %i.aqy, %i.aqy
  %i.arj = fmul <16 x float> %i.ara, %i.ara
  %i.ark = fadd <16 x float> %i.ari, %i.arj
  %i.arl = fmul <16 x float> %i.arc, %i.arc
  %i.arm = fadd <16 x float> %i.ark, %i.arl       ; 2 uses
  %i.arn = fcmp olt <16 x float> %i.arh, %i.be    ; 2 uses
  %i.aro = bitcast <16 x i1> %i.arn to i16        ; 2 uses
  %i.arp = fcmp olt <16 x float> %i.arm, %i.be    ; 2 uses
  %i.arq = bitcast <16 x i1> %i.arp to i16        ; 2 uses
  %i.arr = shl nsw i32 %i.aqh, 1                  ; 3 uses
  %i.ars = icmp eq i32 %i.arr, %i.cr
  br i1 %i.ars, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.art = and i16 %i.aro, %i.v
  %i.aru = and i16 %i.arq, %i.w
  %9 = bitcast i16 %i.art to <16 x i1>
  %10 = bitcast i16 %i.aru to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.arv = or disjoint i32 %i.arr, 1
  %i.arw = icmp eq i32 %i.arv, %i.cr
  br i1 %i.arw, label %bb.k, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

bb.k:                                             ; preds = %bb.j
  %i.arx = and i16 %i.aro, %i.x
  %i.ary = and i16 %i.arq, %i.y
  %11 = bitcast i16 %i.arx to <16 x i1>
  %12 = bitcast i16 %i.ary to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit586: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.124500.0 = phi <16 x i1> [ %10, %bb.i ], [ %12, %bb.k ], [ %i.arp, %bb.j ] ; 4 uses
  %.sroa.04488.0 = phi <16 x i1> [ %9, %bb.i ], [ %11, %bb.k ], [ %i.arn, %bb.j ] ; 4 uses
  %i.arz = sext i32 %i.aqo to i64                 ; 2 uses
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.arz
  %.val6844949 = load <8 x float>, ptr %i.asa, align 32, !tbaa !32
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.arz
  %.val7024470 = load <8 x i32>, ptr %i.asb, align 32, !tbaa !32 ; 4 uses
  %i.asc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mm, <8 x i32> %.val7024470, <8 x i1> splat (i1 true), i32 8)
  %i.asd = bitcast <8 x double> %i.asc to <16 x float> ; 2 uses
  %i.ase = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7024470, <8 x i1> splat (i1 true), i32 8)
  %i.asf = bitcast <8 x double> %i.ase to <16 x float> ; 2 uses
  %i.asg = shufflevector <16 x float> %i.asd, <16 x float> %i.asf, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.ash = shufflevector <16 x float> %i.asd, <16 x float> %i.asf, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.asi = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.my, <8 x i32> %.val7024470, <8 x i1> splat (i1 true), i32 8)
  %i.asj = bitcast <8 x double> %i.asi to <16 x float> ; 2 uses
  %i.ask = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ne, <8 x i32> %.val7024470, <8 x i1> splat (i1 true), i32 8)
  %i.asl = bitcast <8 x double> %i.ask to <16 x float> ; 2 uses
  %i.asm = shufflevector <16 x float> %i.asj, <16 x float> %i.asl, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.asn = shufflevector <16 x float> %i.asj, <16 x float> %i.asl, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.aso = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arh, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.asp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arm, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.asq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.aso, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.asr = fmul <16 x float> %i.aso, %i.asq
  %i.ass = fmul <16 x float> %i.asq, splat (float -5.000000e-01)
  %i.ast = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asr, <16 x float> %i.asq, <16 x float> splat (float -3.000000e+00))
  %i.asu = fmul <16 x float> %i.ass, %i.ast
  %i.asv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.asp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.asw = fmul <16 x float> %i.asp, %i.asv
  %i.asx = fmul <16 x float> %i.asv, splat (float -5.000000e-01)
  %i.asy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> %i.asv, <16 x float> splat (float -3.000000e+00))
  %i.asz = fmul <16 x float> %i.asx, %i.asy
  %i.ata = shufflevector <8 x float> %.val6844949, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.atb = fmul <16 x float> %.sroa.04065.0, %i.ata ; 2 uses
  %i.atc = fmul <16 x float> %.sroa.74069.0, %i.ata ; 2 uses
  %i.atd = select <16 x i1> %.sroa.04488.0, <16 x float> %i.asu, <16 x float> zeroinitializer ; 3 uses
  %i.ate = select <16 x i1> %.sroa.124500.0, <16 x float> %i.asz, <16 x float> zeroinitializer ; 3 uses
  %i.atf = fmul <16 x float> %i.atd, %i.atd       ; 4 uses
  %i.atg = fmul <16 x float> %i.ate, %i.ate       ; 4 uses
  %i.ath = select <16 x i1> %.not4785, <16 x float> zeroinitializer, <16 x float> %i.atd ; 2 uses
  %i.ati = select <16 x i1> %.not4786, <16 x float> zeroinitializer, <16 x float> %i.ate ; 2 uses
  %i.atj = select <16 x i1> %.sroa.04488.0, <16 x float> %i.aso, <16 x float> zeroinitializer ; 2 uses
  %i.atk = fmul <16 x float> %i.ad, %i.atj        ; 7 uses
  %i.atl = select <16 x i1> %.sroa.124500.0, <16 x float> %i.asp, <16 x float> zeroinitializer ; 2 uses
  %i.atm = fmul <16 x float> %i.ad, %i.atl        ; 7 uses
  %i.atn = fmul <16 x float> %i.atk, %i.atk       ; 15 uses
  %i.ato = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.atp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.atq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ato, <16 x float> %i.atn, <16 x float> splat (float 1.000000e+00))
  %i.atr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> %i.atk, <16 x float> %i.atq) ; 2 uses
  %i.ats = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.atr, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.att = fneg <16 x float> %i.ats
  %i.atu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.att, <16 x float> %i.atr, <16 x float> splat (float 2.000000e+00))
  %i.atv = fmul <16 x float> %i.ats, %i.atu
  %i.atw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.atx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aty = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atw, <16 x float> %i.atn, <16 x float> splat (float f0xBC9DED90))
  %i.atz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atx, <16 x float> %i.atn, <16 x float> splat (float f0x3D8EAF3B))
  %i.aua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> %i.atn, <16 x float> splat (float f0xBF409397))
  %i.aub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atz, <16 x float> %i.atk, <16 x float> %i.aua)
  %i.auc = fmul <16 x float> %i.aub, %i.atv
  %i.aud = fmul <16 x float> %i.ab, %i.auc
  %i.aue = fmul <16 x float> %i.atm, %i.atm       ; 15 uses
  %i.auf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aug = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.auh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auf, <16 x float> %i.aue, <16 x float> splat (float 1.000000e+00))
  %i.aui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> %i.atm, <16 x float> %i.auh) ; 2 uses
  %i.auj = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aui, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.auk = fneg <16 x float> %i.auj
  %i.aul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auk, <16 x float> %i.aui, <16 x float> splat (float 2.000000e+00))
  %i.aum = fmul <16 x float> %i.auj, %i.aul
  %i.aun = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.auo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aun, <16 x float> %i.aue, <16 x float> splat (float f0xBC9DED90))
  %i.auq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auo, <16 x float> %i.aue, <16 x float> splat (float f0x3D8EAF3B))
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> %i.aue, <16 x float> splat (float f0xBF409397))
  %i.aus = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auq, <16 x float> %i.atm, <16 x float> %i.aur)
  %i.aut = fmul <16 x float> %i.aus, %i.aum
  %i.auu = fmul <16 x float> %i.ab, %i.aut
  %i.auv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aud, <16 x float> %i.atk, <16 x float> %i.ath)
  %i.auw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auu, <16 x float> %i.atm, <16 x float> %i.ati)
  %i.aux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.auy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.atk, <16 x float> %i.auy) ; 2 uses
  %i.ava = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.auz, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.avb = fneg <16 x float> %i.ava
  %i.avc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avb, <16 x float> %i.auz, <16 x float> splat (float 2.000000e+00))
  %i.avd = fmul <16 x float> %i.ava, %i.avc
  %i.ave = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.avf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atn, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.avg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ave, <16 x float> %i.atn, <16 x float> splat (float f0x3D1E57D6))
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avf, <16 x float> %i.atn, <16 x float> splat (float f0x3DE71E23))
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avg, <16 x float> %i.atn, <16 x float> splat (float f0x3F906EC3))
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avh, <16 x float> %i.atk, <16 x float> %i.avi)
  %i.avk = fmul <16 x float> %i.avj, %i.avd
  %i.avl = fmul <16 x float> %i.ab, %i.avk
  %i.avm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.avn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.avo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avm, <16 x float> %i.atm, <16 x float> %i.avn) ; 2 uses
  %i.avp = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.avo, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.avq = fneg <16 x float> %i.avp
  %i.avr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avq, <16 x float> %i.avo, <16 x float> splat (float 2.000000e+00))
  %i.avs = fmul <16 x float> %i.avp, %i.avr
  %i.avt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.avu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.avv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avt, <16 x float> %i.aue, <16 x float> splat (float f0x3D1E57D6))
  %i.avw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avu, <16 x float> %i.aue, <16 x float> splat (float f0x3DE71E23))
  %i.avx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avv, <16 x float> %i.aue, <16 x float> splat (float f0x3F906EC3))
  %i.avy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avw, <16 x float> %i.atm, <16 x float> %i.avx)
  %i.avz = fmul <16 x float> %i.avy, %i.avs
  %i.awa = fmul <16 x float> %i.ab, %i.avz
  %i.awb = fmul <16 x float> %i.atb, %i.auv
  %i.awc = fmul <16 x float> %i.atc, %i.auw
  %i.awd = select <16 x i1> %.not4785, <16 x float> zeroinitializer, <16 x float> %i.ak
  %i.awe = fadd <16 x float> %i.awd, %i.avl
  %i.awf = select <16 x i1> %.not4786, <16 x float> zeroinitializer, <16 x float> %i.ak
  %i.awg = fadd <16 x float> %i.awf, %i.awa
  %i.awh = fsub <16 x float> %i.ath, %i.awe
  %i.awi = fmul <16 x float> %i.atb, %i.awh
  %i.awj = fsub <16 x float> %i.ati, %i.awg
  %i.awk = fmul <16 x float> %i.atc, %i.awj
  %i.awl = select <16 x i1> %.sroa.04488.0, <16 x float> %i.awi, <16 x float> zeroinitializer ; 2 uses
  %i.awm = select <16 x i1> %.sroa.124500.0, <16 x float> %i.awk, <16 x float> zeroinitializer ; 2 uses
  %i.awn = shl nsw i32 %i.aqh, 4
  %i.awo = fmul <16 x float> %i.atf, %i.atf
  %i.awp = fmul <16 x float> %i.atf, %i.awo       ; 4 uses
  %i.awq = fmul <16 x float> %i.atg, %i.atg
  %i.awr = fmul <16 x float> %i.atg, %i.awq       ; 4 uses
  %i.aws = select <16 x i1> %.not4785, <16 x float> zeroinitializer, <16 x float> %i.awp ; 3 uses
  %i.awt = select <16 x i1> %.not4786, <16 x float> zeroinitializer, <16 x float> %i.awr ; 3 uses
  %i.awu = fmul <16 x float> %i.aws, %i.aws
  %i.awv = fmul <16 x float> %i.awt, %i.awt
  %i.aww = fmul <16 x float> %i.aws, %i.asg       ; 2 uses
  %i.awx = fmul <16 x float> %i.awt, %i.asm       ; 2 uses
  %i.awy = fmul <16 x float> %i.awu, %i.ash       ; 2 uses
  %i.awz = fmul <16 x float> %i.awv, %i.asn       ; 2 uses
  %i.axa = fsub <16 x float> %i.awy, %i.aww
  %i.axb = fsub <16 x float> %i.awz, %i.awx
  %i.axc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asg, <16 x float> %i.an, <16 x float> %i.aww)
  %i.axd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asm, <16 x float> %i.an, <16 x float> %i.awx)
  %i.axe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ash, <16 x float> %i.aq, <16 x float> %i.awy)
  %i.axf = fmul <16 x float> %i.axc, splat (float f0xBE2AAAAB)
  %i.axg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axe, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.axf)
  %i.axh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asn, <16 x float> %i.aq, <16 x float> %i.awz)
  %i.axi = fmul <16 x float> %i.axd, splat (float f0xBE2AAAAB)
  %i.axj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axh, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.axi)
  %i.axk = select <16 x i1> %.not4785, <16 x float> zeroinitializer, <16 x float> %i.axg
  %i.axl = select <16 x i1> %.not4786, <16 x float> zeroinitializer, <16 x float> %i.axj
  %i.axm = sext i32 %i.awn to i64
  %i.axn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.axm
  %.val6854950 = load <8 x float>, ptr %i.axn, align 32, !tbaa !32
  %i.axo = shufflevector <8 x float> %.val6854950, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.axp = fmul <16 x float> %i.nk, %i.axo        ; 2 uses
  %i.axq = fmul <16 x float> %i.np, %i.axo        ; 2 uses
  %i.axr = fmul <16 x float> %i.ay, %i.atj        ; 3 uses
  %i.axs = bitcast <16 x float> %i.axr to <8 x i64>
  %i.axt = fmul <16 x float> %i.ay, %i.atl        ; 3 uses
  %i.axu = bitcast <16 x float> %i.axt to <8 x i64>
  %i.axv = xor <8 x i64> %i.axs, splat (i64 -9223372034707292160)
  %i.axw = bitcast <8 x i64> %i.axv to <16 x float> ; 2 uses
  %i.axx = fmul <16 x float> %i.axw, splat (float f0x3FB8AA3B) ; 2 uses
  %i.axy = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.axx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.axz = shl <16 x i32> %i.axy, splat (i32 23)
  %i.aya = add <16 x i32> %i.axz, splat (i32 1065353216)
  %i.ayb = bitcast <16 x i32> %i.aya to <16 x float> ; 2 uses
  %i.ayc = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.axx, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ayd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayc, <16 x float> splat (float f0xBF317200), <16 x float> %i.axw)
  %i.aye = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayc, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ayd) ; 7 uses
  %i.ayf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aye, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ayg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayf, <16 x float> %i.aye, <16 x float> splat (float f0x3D2AAF4C))
  %i.ayh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayg, <16 x float> %i.aye, <16 x float> splat (float f0x3E2AAA5E))
  %i.ayi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayh, <16 x float> %i.aye, <16 x float> splat (float f0x3EFFFFFB))
  %i.ayj = fmul <16 x float> %i.aye, %i.aye
  %i.ayk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayj, <16 x float> %i.ayi, <16 x float> %i.aye)
  %i.ayl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayk, <16 x float> %i.ayb, <16 x float> %i.ayb)
  %i.aym = xor <8 x i64> %i.axu, splat (i64 -9223372034707292160)
  %i.ayn = bitcast <8 x i64> %i.aym to <16 x float> ; 2 uses
  %i.ayo = fmul <16 x float> %i.ayn, splat (float f0x3FB8AA3B) ; 2 uses
  %i.ayp = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ayo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ayq = shl <16 x i32> %i.ayp, splat (i32 23)
  %i.ayr = add <16 x i32> %i.ayq, splat (i32 1065353216)
  %i.ays = bitcast <16 x i32> %i.ayr to <16 x float> ; 2 uses
  %i.ayt = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ayo, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ayu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> splat (float f0xBF317200), <16 x float> %i.ayn)
  %i.ayv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayt, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ayu) ; 7 uses
  %i.ayw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayv, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ayx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayw, <16 x float> %i.ayv, <16 x float> splat (float f0x3D2AAF4C))
  %i.ayy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayx, <16 x float> %i.ayv, <16 x float> splat (float f0x3E2AAA5E))
  %i.ayz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayy, <16 x float> %i.ayv, <16 x float> splat (float f0x3EFFFFFB))
  %i.aza = fmul <16 x float> %i.ayv, %i.ayv
  %i.azb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aza, <16 x float> %i.ayz, <16 x float> %i.ayv)
  %i.azc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azb, <16 x float> %i.ays, <16 x float> %i.ays)
  %i.azd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axr, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.aze = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azd, <16 x float> %i.axr, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.azf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axt, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.azg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azf, <16 x float> %i.axt, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.azh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awp, <16 x float> %i.aze, <16 x float> %i.ba)
  %i.azi = fneg <16 x float> %i.ayl               ; 2 uses
  %i.azj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azi, <16 x float> %i.azh, <16 x float> %i.awp)
  %i.azk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axp, <16 x float> %i.azj, <16 x float> %i.axa)
  %i.azl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awr, <16 x float> %i.azg, <16 x float> %i.ba)
  %i.azm = fneg <16 x float> %i.azc               ; 2 uses
  %i.azn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azm, <16 x float> %i.azl, <16 x float> %i.awr)
  %i.azo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axq, <16 x float> %i.azn, <16 x float> %i.axb)
  %i.azp = select <16 x i1> %.not4785, <16 x float> zeroinitializer, <16 x float> %i.bd
  %i.azq = select <16 x i1> %.not4786, <16 x float> zeroinitializer, <16 x float> %i.bd
  %i.azr = fmul <16 x float> %i.axp, splat (float f0x3E2AAAAB)
  %i.azs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azi, <16 x float> %i.aze, <16 x float> splat (float 1.000000e+00))
  %i.azt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awp, <16 x float> %i.azs, <16 x float> %i.azp)
  %i.azu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azr, <16 x float> %i.azt, <16 x float> %i.axk)
  %i.azv = fmul <16 x float> %i.axq, splat (float f0x3E2AAAAB)
  %i.azw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azm, <16 x float> %i.azg, <16 x float> splat (float 1.000000e+00))
  %i.azx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awr, <16 x float> %i.azw, <16 x float> %i.azq)
  %i.azy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azv, <16 x float> %i.azx, <16 x float> %i.axl)
  %i.azz = select <16 x i1> %.sroa.04488.0, <16 x float> %i.azu, <16 x float> zeroinitializer ; 2 uses
  %i.baa = select <16 x i1> %.sroa.124500.0, <16 x float> %i.azy, <16 x float> zeroinitializer ; 2 uses
  %i.bab = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.bac = load i32, ptr %i.cf, align 8, !tbaa !121
  %i.bad = sext i32 %i.arr to i64
  %i.bae = getelementptr inbounds [4 x i8], ptr %i.bab, i64 %i.bad
  %i.baf = load i32, ptr %i.cg, align 4, !tbaa !122
  %i.bag = load i32, ptr %i.cb, align 8, !tbaa !95
  %i.bah = load <2 x i32>, ptr %i.bae, align 4, !tbaa !86 ; 2 uses
  %i.bai = insertelement <2 x i32> poison, i32 %i.bac, i64 0
  %i.baj = shufflevector <2 x i32> %i.bah, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bak = shufflevector <2 x i32> %i.bah, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bal = shufflevector <2 x i32> %i.bai, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bam = ashr <4 x i32> %i.bak, %i.bal
  %i.ban = shufflevector <4 x i32> %i.bam, <4 x i32> %i.baj, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bao = insertelement <4 x i32> poison, i32 %i.baf, i64 0
  %i.bap = shufflevector <4 x i32> %i.bao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baq = and <4 x i32> %i.ban, %i.bap
  %i.bar = insertelement <4 x i32> poison, i32 %i.bag, i64 0
  %i.bas = shufflevector <4 x i32> %i.bar, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bat = mul nsw <4 x i32> %i.baq, %i.bas       ; 4 uses
  %i.bau = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !92 ; 4 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !92 ; 4 uses
  %i.bay = shufflevector <16 x float> %i.awl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.baz = shufflevector <16 x float> %i.awl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bba = extractelement <4 x i32> %i.bat, i64 0
  %i.bbb = sext i32 %i.bba to i64                 ; 8 uses
  %i.bbc = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bbb ; 2 uses
  %i.bbd = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bbb ; 2 uses
  %i.bbe = load <8 x float>, ptr %i.bbc, align 32, !tbaa !32
  %i.bbf = fadd <8 x float> %i.bay, %i.bbe
  store <8 x float> %i.bbf, ptr %i.bbc, align 32, !tbaa !32
  %i.bbg = load <8 x float>, ptr %i.bbd, align 32, !tbaa !32
  %i.bbh = fadd <8 x float> %i.bbg, %i.baz
  store <8 x float> %i.bbh, ptr %i.bbd, align 32, !tbaa !32
  %i.bbi = extractelement <4 x i32> %i.bat, i64 1
  %i.bbj = sext i32 %i.bbi to i64                 ; 8 uses
  %i.bbk = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bbj
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 32 ; 2 uses
  %i.bbm = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bbj
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 32 ; 2 uses
  %i.bbo = load <8 x float>, ptr %i.bbl, align 32, !tbaa !32
  %i.bbp = fadd <8 x float> %i.bay, %i.bbo
  store <8 x float> %i.bbp, ptr %i.bbl, align 32, !tbaa !32
  %i.bbq = load <8 x float>, ptr %i.bbn, align 32, !tbaa !32
  %i.bbr = fadd <8 x float> %i.bbq, %i.baz
  store <8 x float> %i.bbr, ptr %i.bbn, align 32, !tbaa !32
  %i.bbs = extractelement <4 x i32> %i.bat, i64 2
  %i.bbt = sext i32 %i.bbs to i64                 ; 8 uses
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 64 ; 2 uses
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bbt
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 64 ; 2 uses
  %i.bby = load <8 x float>, ptr %i.bbv, align 32, !tbaa !32
  %i.bbz = fadd <8 x float> %i.bay, %i.bby
  store <8 x float> %i.bbz, ptr %i.bbv, align 32, !tbaa !32
  %i.bca = load <8 x float>, ptr %i.bbx, align 32, !tbaa !32
  %i.bcb = fadd <8 x float> %i.bca, %i.baz
  store <8 x float> %i.bcb, ptr %i.bbx, align 32, !tbaa !32
  %i.bcc = extractelement <4 x i32> %i.bat, i64 3
  %i.bcd = sext i32 %i.bcc to i64                 ; 8 uses
  %i.bce = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bcd
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 96 ; 2 uses
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.bax, i64 %i.bcd
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 96 ; 2 uses
  %i.bci = load <8 x float>, ptr %i.bcf, align 32, !tbaa !32
  %i.bcj = fadd <8 x float> %i.bay, %i.bci
  store <8 x float> %i.bcj, ptr %i.bcf, align 32, !tbaa !32
  %i.bck = load <8 x float>, ptr %i.bch, align 32, !tbaa !32
  %i.bcl = fadd <8 x float> %i.bck, %i.baz
  store <8 x float> %i.bcl, ptr %i.bch, align 32, !tbaa !32
  %i.bcm = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !92 ; 4 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcm, i64 24
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !92 ; 4 uses
  %i.bcr = shufflevector <16 x float> %i.awm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bcs = shufflevector <16 x float> %i.awm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bct = getelementptr inbounds [4 x i8], ptr %i.bco, i64 %i.bbb ; 2 uses
  %i.bcu = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bbb ; 2 uses
  %i.bcv = load <8 x float>, ptr %i.bct, align 32, !tbaa !32
  %i.bcw = fadd <8 x float> %i.bcr, %i.bcv
  store <8 x float> %i.bcw, ptr %i.bct, align 32, !tbaa !32
  %i.bcx = load <8 x float>, ptr %i.bcu, align 32, !tbaa !32
  %i.bcy = fadd <8 x float> %i.bcx, %i.bcs
  store <8 x float> %i.bcy, ptr %i.bcu, align 32, !tbaa !32
  %i.bcz = getelementptr inbounds [4 x i8], ptr %i.bco, i64 %i.bbj
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 32 ; 2 uses
  %i.bdb = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bbj
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 32 ; 2 uses
  %i.bdd = load <8 x float>, ptr %i.bda, align 32, !tbaa !32
  %i.bde = fadd <8 x float> %i.bcr, %i.bdd
  store <8 x float> %i.bde, ptr %i.bda, align 32, !tbaa !32
  %i.bdf = load <8 x float>, ptr %i.bdc, align 32, !tbaa !32
  %i.bdg = fadd <8 x float> %i.bdf, %i.bcs
  store <8 x float> %i.bdg, ptr %i.bdc, align 32, !tbaa !32
  %i.bdh = getelementptr inbounds [4 x i8], ptr %i.bco, i64 %i.bbt
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 64 ; 2 uses
  %i.bdj = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bbt
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 64 ; 2 uses
  %i.bdl = load <8 x float>, ptr %i.bdi, align 32, !tbaa !32
  %i.bdm = fadd <8 x float> %i.bcr, %i.bdl
  store <8 x float> %i.bdm, ptr %i.bdi, align 32, !tbaa !32
  %i.bdn = load <8 x float>, ptr %i.bdk, align 32, !tbaa !32
  %i.bdo = fadd <8 x float> %i.bdn, %i.bcs
  store <8 x float> %i.bdo, ptr %i.bdk, align 32, !tbaa !32
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.bco, i64 %i.bcd
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 96 ; 2 uses
  %i.bdr = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bcd
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 96 ; 2 uses
  %i.bdt = load <8 x float>, ptr %i.bdq, align 32, !tbaa !32
  %i.bdu = fadd <8 x float> %i.bcr, %i.bdt
  store <8 x float> %i.bdu, ptr %i.bdq, align 32, !tbaa !32
  %i.bdv = load <8 x float>, ptr %i.bds, align 32, !tbaa !32
  %i.bdw = fadd <8 x float> %i.bdv, %i.bcs
  store <8 x float> %i.bdw, ptr %i.bds, align 32, !tbaa !32
  %i.bdx = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !92 ; 4 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !92 ; 4 uses
  %i.beb = shufflevector <16 x float> %i.azz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bec = shufflevector <16 x float> %i.azz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bed = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bbb ; 2 uses
  %i.bee = getelementptr inbounds [4 x i8], ptr %i.bea, i64 %i.bbb ; 2 uses
  %i.bef = load <8 x float>, ptr %i.bed, align 32, !tbaa !32
  %i.beg = fadd <8 x float> %i.beb, %i.bef
  store <8 x float> %i.beg, ptr %i.bed, align 32, !tbaa !32
  %i.beh = load <8 x float>, ptr %i.bee, align 32, !tbaa !32
  %i.bei = fadd <8 x float> %i.beh, %i.bec
  store <8 x float> %i.bei, ptr %i.bee, align 32, !tbaa !32
  %i.bej = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bbj
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 32 ; 2 uses
  %i.bel = getelementptr inbounds [4 x i8], ptr %i.bea, i64 %i.bbj
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 32 ; 2 uses
  %i.ben = load <8 x float>, ptr %i.bek, align 32, !tbaa !32
  %i.beo = fadd <8 x float> %i.beb, %i.ben
  store <8 x float> %i.beo, ptr %i.bek, align 32, !tbaa !32
  %i.bep = load <8 x float>, ptr %i.bem, align 32, !tbaa !32
  %i.beq = fadd <8 x float> %i.bep, %i.bec
  store <8 x float> %i.beq, ptr %i.bem, align 32, !tbaa !32
  %i.ber = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bbt
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 64 ; 2 uses
  %i.bet = getelementptr inbounds [4 x i8], ptr %i.bea, i64 %i.bbt
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 64 ; 2 uses
  %i.bev = load <8 x float>, ptr %i.bes, align 32, !tbaa !32
  %i.bew = fadd <8 x float> %i.beb, %i.bev
  store <8 x float> %i.bew, ptr %i.bes, align 32, !tbaa !32
  %i.bex = load <8 x float>, ptr %i.beu, align 32, !tbaa !32
  %i.bey = fadd <8 x float> %i.bex, %i.bec
  store <8 x float> %i.bey, ptr %i.beu, align 32, !tbaa !32
  %i.bez = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bcd
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 96 ; 2 uses
  %i.bfb = getelementptr inbounds [4 x i8], ptr %i.bea, i64 %i.bcd
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 96 ; 2 uses
  %i.bfd = load <8 x float>, ptr %i.bfa, align 32, !tbaa !32
  %i.bfe = fadd <8 x float> %i.beb, %i.bfd
  store <8 x float> %i.bfe, ptr %i.bfa, align 32, !tbaa !32
  %i.bff = load <8 x float>, ptr %i.bfc, align 32, !tbaa !32
  %i.bfg = fadd <8 x float> %i.bff, %i.bec
  store <8 x float> %i.bfg, ptr %i.bfc, align 32, !tbaa !32
  %i.bfh = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 16
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !92 ; 4 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfh, i64 24
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !92 ; 4 uses
  %i.bfm = shufflevector <16 x float> %i.baa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfn = shufflevector <16 x float> %i.baa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bfo = getelementptr inbounds [4 x i8], ptr %i.bfj, i64 %i.bbb ; 2 uses
  %i.bfp = getelementptr inbounds [4 x i8], ptr %i.bfl, i64 %i.bbb ; 2 uses
  %i.bfq = load <8 x float>, ptr %i.bfo, align 32, !tbaa !32
  %i.bfr = fadd <8 x float> %i.bfm, %i.bfq
  store <8 x float> %i.bfr, ptr %i.bfo, align 32, !tbaa !32
  %i.bfs = load <8 x float>, ptr %i.bfp, align 32, !tbaa !32
  %i.bft = fadd <8 x float> %i.bfs, %i.bfn
  store <8 x float> %i.bft, ptr %i.bfp, align 32, !tbaa !32
  %i.bfu = getelementptr inbounds [4 x i8], ptr %i.bfj, i64 %i.bbj
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 32 ; 2 uses
  %i.bfw = getelementptr inbounds [4 x i8], ptr %i.bfl, i64 %i.bbj
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 32 ; 2 uses
  %i.bfy = load <8 x float>, ptr %i.bfv, align 32, !tbaa !32
  %i.bfz = fadd <8 x float> %i.bfm, %i.bfy
  store <8 x float> %i.bfz, ptr %i.bfv, align 32, !tbaa !32
  %i.bga = load <8 x float>, ptr %i.bfx, align 32, !tbaa !32
  %i.bgb = fadd <8 x float> %i.bga, %i.bfn
  store <8 x float> %i.bgb, ptr %i.bfx, align 32, !tbaa !32
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.bfj, i64 %i.bbt
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 64 ; 2 uses
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.bfl, i64 %i.bbt
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 64 ; 2 uses
  %i.bgg = load <8 x float>, ptr %i.bgd, align 32, !tbaa !32
  %i.bgh = fadd <8 x float> %i.bfm, %i.bgg
  store <8 x float> %i.bgh, ptr %i.bgd, align 32, !tbaa !32
  %i.bgi = load <8 x float>, ptr %i.bgf, align 32, !tbaa !32
  %i.bgj = fadd <8 x float> %i.bgi, %i.bfn
  store <8 x float> %i.bgj, ptr %i.bgf, align 32, !tbaa !32
  %i.bgk = getelementptr inbounds [4 x i8], ptr %i.bfj, i64 %i.bcd
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 96 ; 2 uses
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.bfl, i64 %i.bcd
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 96 ; 2 uses
  %i.bgo = load <8 x float>, ptr %i.bgl, align 32, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4484.preheader
  %i.buo = load <8 x float>, ptr %i.bul, align 32, !tbaa !32
  %i.bup = fadd <8 x float> %i.buo, %i.btt
  store <8 x float> %i.bup, ptr %i.bul, align 32, !tbaa !32
  %i.buq = getelementptr inbounds [4 x i8], ptr %i.btp, i64 %i.bte
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 96 ; 2 uses
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.bte
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 96 ; 2 uses
  %i.buu = load <8 x float>, ptr %i.bur, align 32, !tbaa !32
  %i.buv = fadd <8 x float> %i.bts, %i.buu
  store <8 x float> %i.buv, ptr %i.bur, align 32, !tbaa !32
  %i.buw = load <8 x float>, ptr %i.but, align 32, !tbaa !32
  %i.bux = fadd <8 x float> %i.buw, %i.btt
  store <8 x float> %i.bux, ptr %i.but, align 32, !tbaa !32
  %i.buy = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !92 ; 4 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buy, i64 8
  %i.bvb = load ptr, ptr %i.bva, align 8, !tbaa !92 ; 4 uses
  %i.bvc = shufflevector <16 x float> %i.bqz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bvd = shufflevector <16 x float> %i.bqz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bve = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bsc ; 2 uses
  %i.bvf = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bsc ; 2 uses
  %i.bvg = load <8 x float>, ptr %i.bve, align 32, !tbaa !32
  %i.bvh = fadd <8 x float> %i.bvc, %i.bvg
  store <8 x float> %i.bvh, ptr %i.bve, align 32, !tbaa !32
  %i.bvi = load <8 x float>, ptr %i.bvf, align 32, !tbaa !32
  %i.bvj = fadd <8 x float> %i.bvi, %i.bvd
  store <8 x float> %i.bvj, ptr %i.bvf, align 32, !tbaa !32
  %i.bvk = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bsk
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 32 ; 2 uses
  %i.bvm = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bsk
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 32 ; 2 uses
  %i.bvo = load <8 x float>, ptr %i.bvl, align 32, !tbaa !32
  %i.bvp = fadd <8 x float> %i.bvc, %i.bvo
  store <8 x float> %i.bvp, ptr %i.bvl, align 32, !tbaa !32
  %i.bvq = load <8 x float>, ptr %i.bvn, align 32, !tbaa !32
  %i.bvr = fadd <8 x float> %i.bvq, %i.bvd
  store <8 x float> %i.bvr, ptr %i.bvn, align 32, !tbaa !32
  %i.bvs = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bsu
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 64 ; 2 uses
  %i.bvu = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bsu
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 64 ; 2 uses
  %i.bvw = load <8 x float>, ptr %i.bvt, align 32, !tbaa !32
  %i.bvx = fadd <8 x float> %i.bvc, %i.bvw
  store <8 x float> %i.bvx, ptr %i.bvt, align 32, !tbaa !32
  %i.bvy = load <8 x float>, ptr %i.bvv, align 32, !tbaa !32
  %i.bvz = fadd <8 x float> %i.bvy, %i.bvd
  store <8 x float> %i.bvz, ptr %i.bvv, align 32, !tbaa !32
  %i.bwa = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.bte
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 96 ; 2 uses
  %i.bwc = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bte
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 96 ; 2 uses
  %i.bwe = load <8 x float>, ptr %i.bwb, align 32, !tbaa !32
  %i.bwf = fadd <8 x float> %i.bvc, %i.bwe
  store <8 x float> %i.bwf, ptr %i.bwb, align 32, !tbaa !32
  %i.bwg = load <8 x float>, ptr %i.bwd, align 32, !tbaa !32
  %i.bwh = fadd <8 x float> %i.bwg, %i.bvd
  store <8 x float> %i.bwh, ptr %i.bwd, align 32, !tbaa !32
  %i.bwi = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 16
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !92 ; 4 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwi, i64 24
  %i.bwm = load ptr, ptr %i.bwl, align 8, !tbaa !92 ; 4 uses
  %i.bwn = shufflevector <16 x float> %i.bra, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bwo = shufflevector <16 x float> %i.bra, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bwp = getelementptr inbounds [4 x i8], ptr %i.bwk, i64 %i.bsc ; 2 uses
  %i.bwq = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bsc ; 2 uses
  %i.bwr = load <8 x float>, ptr %i.bwp, align 32, !tbaa !32
  %i.bws = fadd <8 x float> %i.bwn, %i.bwr
  store <8 x float> %i.bws, ptr %i.bwp, align 32, !tbaa !32
  %i.bwt = load <8 x float>, ptr %i.bwq, align 32, !tbaa !32
  %i.bwu = fadd <8 x float> %i.bwt, %i.bwo
  store <8 x float> %i.bwu, ptr %i.bwq, align 32, !tbaa !32
  %i.bwv = getelementptr inbounds [4 x i8], ptr %i.bwk, i64 %i.bsk
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 32 ; 2 uses
  %i.bwx = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bsk
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwx, i64 32 ; 2 uses
  %i.bwz = load <8 x float>, ptr %i.bww, align 32, !tbaa !32
  %i.bxa = fadd <8 x float> %i.bwn, %i.bwz
  store <8 x float> %i.bxa, ptr %i.bww, align 32, !tbaa !32
  %i.bxb = load <8 x float>, ptr %i.bwy, align 32, !tbaa !32
  %i.bxc = fadd <8 x float> %i.bxb, %i.bwo
  store <8 x float> %i.bxc, ptr %i.bwy, align 32, !tbaa !32
  %i.bxd = getelementptr inbounds [4 x i8], ptr %i.bwk, i64 %i.bsu
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 64 ; 2 uses
  %i.bxf = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bsu
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 64 ; 2 uses
  %i.bxh = load <8 x float>, ptr %i.bxe, align 32, !tbaa !32
  %i.bxi = fadd <8 x float> %i.bwn, %i.bxh
  store <8 x float> %i.bxi, ptr %i.bxe, align 32, !tbaa !32
  %i.bxj = load <8 x float>, ptr %i.bxg, align 32, !tbaa !32
  %i.bxk = fadd <8 x float> %i.bxj, %i.bwo
  store <8 x float> %i.bxk, ptr %i.bxg, align 32, !tbaa !32
  %i.bxl = getelementptr inbounds [4 x i8], ptr %i.bwk, i64 %i.bte
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxl, i64 96 ; 2 uses
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bte
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 96 ; 2 uses
  %i.bxp = load <8 x float>, ptr %i.bxm, align 32, !tbaa !32
  %i.bxq = fadd <8 x float> %i.bwn, %i.bxp
  store <8 x float> %i.bxq, ptr %i.bxm, align 32, !tbaa !32
  %i.bxr = load <8 x float>, ptr %i.bxo, align 32, !tbaa !32
  %i.bxs = fadd <8 x float> %i.bxr, %i.bwo
  store <8 x float> %i.bxs, ptr %i.bxo, align 32, !tbaa !32
  %i.bxt = fadd <16 x float> %i.bnj, %i.bqm
  %i.bxu = fmul <16 x float> %i.bkp, %i.bxt       ; 3 uses
  %i.bxv = fadd <16 x float> %i.bnk, %i.bqq
  %i.bxw = fmul <16 x float> %i.bkq, %i.bxv       ; 3 uses
  %i.bxx = fmul <16 x float> %i.bjg, %i.bxu       ; 2 uses
  %i.bxy = fmul <16 x float> %i.bjh, %i.bxw       ; 2 uses
  %i.bxz = fmul <16 x float> %i.bji, %i.bxu       ; 2 uses
  %i.bya = fmul <16 x float> %i.bjj, %i.bxw       ; 2 uses
  %i.byb = fmul <16 x float> %i.bjk, %i.bxu       ; 2 uses
  %i.byc = fmul <16 x float> %i.bjl, %i.bxw       ; 2 uses
  %i.byd = fadd <16 x float> %.sroa.03846.34558, %i.bxx ; 2 uses
  %i.bye = fadd <16 x float> %.sroa.163853.34559, %i.bxy ; 2 uses
  %i.byf = fadd <16 x float> %.sroa.03828.34556, %i.bxz ; 2 uses
  %i.byg = fadd <16 x float> %.sroa.163835.34557, %i.bya ; 2 uses
  %i.byh = fadd <16 x float> %.sroa.03811.34554, %i.byb ; 2 uses
  %i.byi = fadd <16 x float> %.sroa.16.34555, %i.byc ; 2 uses
  %i.byj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bik ; 4 uses
  %i.byk = fadd <16 x float> %i.bxx, %i.bxy       ; 2 uses
  %i.byl = fadd <16 x float> %i.bxz, %i.bya       ; 2 uses
  %i.bym = fadd <16 x float> %i.byb, %i.byc       ; 2 uses
  %i.byn = load <8 x float>, ptr %i.byj, align 32, !tbaa !32
  %i.byo = shufflevector <16 x float> %i.byk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.byp = shufflevector <16 x float> %i.byk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.byq = fadd <8 x float> %i.byo, %i.byp
  %i.byr = fsub <8 x float> %i.byn, %i.byq
  store <8 x float> %i.byr, ptr %i.byj, align 32, !tbaa !32
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byj, i64 32 ; 2 uses
  %i.byt = load <8 x float>, ptr %i.bys, align 32, !tbaa !32
  %i.byu = shufflevector <16 x float> %i.byl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.byv = shufflevector <16 x float> %i.byl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.byw = fadd <8 x float> %i.byu, %i.byv
  %i.byx = fsub <8 x float> %i.byt, %i.byw
  store <8 x float> %i.byx, ptr %i.bys, align 32, !tbaa !32
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byj, i64 64 ; 2 uses
  %i.byz = load <8 x float>, ptr %i.byy, align 32, !tbaa !32
  %i.bza = shufflevector <16 x float> %i.bym, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzb = shufflevector <16 x float> %i.bym, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzc = fadd <8 x float> %i.bza, %i.bzb
  %i.bzd = fsub <8 x float> %i.byz, %i.bzc
  store <8 x float> %i.bzd, ptr %i.byy, align 32, !tbaa !32
  %indvars.iv.next4658 = add nsw i64 %indvars.iv4657, 1 ; 2 uses
  %exitcond4661.not = icmp eq i64 %indvars.iv.next4658, %wide.trip.count4660
  br i1 %exitcond4661.not, label %.loopexit, label %bb.l, !llvm.loop !20

bb.m:                                             ; preds = %.lr.ph, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv = phi i64 [ %i.fq, %.lr.ph ], [ %indvars.iv.next, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163853.44497 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cka, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03846.44496 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cjz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163835.44495 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03828.44494 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.44493 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cke, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03811.44492 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.bze = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bzf = getelementptr inbounds nuw [8 x i8], ptr %i.bze, i64 %indvars.iv
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 4
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !86
  %.not = icmp eq i32 %i.bzh, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.m
  %i.bzi = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.bzj = load i32, ptr %i.bzi, align 4, !tbaa !94 ; 4 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzi, i64 4
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !120
  %i.bzm = insertelement <16 x i32> poison, i32 %i.bzl, i64 0
  %i.bzn = shufflevector <16 x i32> %i.bzm, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bzo = and <16 x i32> %.sroa.04715.0.copyload, %i.bzn
  %.not4783 = icmp eq <16 x i32> %i.bzo, zeroinitializer ; 3 uses
  %i.bzp = and <16 x i32> %.sroa.6.0.copyload, %i.bzn
  %.not4784 = icmp eq <16 x i32> %i.bzp, zeroinitializer ; 3 uses
  %i.bzq = shl nsw i32 %i.bzj, 3
  %i.bzr = mul nsw i32 %i.bzj, 24
  %i.bzs = sext i32 %i.bzr to i64                 ; 2 uses
  %i.bzt = getelementptr [4 x i8], ptr %i.bi, i64 %i.bzs ; 3 uses
  %.val6914938 = load <8 x float>, ptr %i.bzt, align 32, !tbaa !32
  %i.bzu = shufflevector <8 x float> %.val6914938, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bzv = getelementptr i8, ptr %i.bzt, i64 32
  %.val6924939 = load <8 x float>, ptr %i.bzv, align 32, !tbaa !32
  %i.bzw = shufflevector <8 x float> %.val6924939, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bzx = getelementptr i8, ptr %i.bzt, i64 64
  %.val6934940 = load <8 x float>, ptr %i.bzx, align 32, !tbaa !32
  %i.bzy = shufflevector <8 x float> %.val6934940, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bzz = fsub <16 x float> %i.km, %i.bzu        ; 3 uses
  %i.caa = fsub <16 x float> %i.ks, %i.bzu        ; 3 uses
  %i.cab = fsub <16 x float> %i.kz, %i.bzw        ; 3 uses
  %i.cac = fsub <16 x float> %i.lf, %i.bzw        ; 3 uses
  %i.cad = fsub <16 x float> %i.lm, %i.bzy        ; 3 uses
  %i.cae = fsub <16 x float> %i.ls, %i.bzy        ; 3 uses
  %i.caf = fmul <16 x float> %i.bzz, %i.bzz
  %i.cag = fmul <16 x float> %i.cab, %i.cab
  %i.cah = fadd <16 x float> %i.caf, %i.cag
  %i.cai = fmul <16 x float> %i.cad, %i.cad
  %i.caj = fadd <16 x float> %i.cah, %i.cai       ; 2 uses
  %i.cak = fmul <16 x float> %i.caa, %i.caa
  %i.cal = fmul <16 x float> %i.cac, %i.cac
  %i.cam = fadd <16 x float> %i.cak, %i.cal
  %i.can = fmul <16 x float> %i.cae, %i.cae
  %i.cao = fadd <16 x float> %i.cam, %i.can       ; 2 uses
  %i.cap = fcmp olt <16 x float> %i.caj, %i.be    ; 2 uses
  %i.caq = bitcast <16 x i1> %i.cap to i16        ; 2 uses
  %i.car = fcmp olt <16 x float> %i.cao, %i.be    ; 2 uses
  %i.cas = bitcast <16 x i1> %i.car to i16        ; 2 uses
  %i.cat = shl nsw i32 %i.bzj, 1                  ; 3 uses
  %i.cau = icmp eq i32 %i.cat, %i.cr
  br i1 %i.cau, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.cav = and i16 %i.caq, %i.v
  %i.caw = and i16 %i.cas, %i.w
  %13 = bitcast i16 %i.cav to <16 x i1>
  %14 = bitcast i16 %i.caw to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.cax = or disjoint i32 %i.cat, 1
  %i.cay = icmp eq i32 %i.cax, %i.cr
  br i1 %i.cay, label %bb.p, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %bb.o
  %i.caz = and i16 %i.caq, %i.x
  %i.cba = and i16 %i.cas, %i.y
  %15 = bitcast i16 %i.caz to <16 x i1>
  %16 = bitcast i16 %i.cba to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.10.0 = phi <16 x i1> [ %14, %bb.n ], [ %16, %bb.p ], [ %i.car, %bb.o ] ; 3 uses
  %.sroa.04468.0 = phi <16 x i1> [ %13, %bb.n ], [ %15, %bb.p ], [ %i.cap, %bb.o ] ; 3 uses
  %i.cbb = sext i32 %i.bzq to i64
  %i.cbc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cbb
  %.val7004467 = load <8 x i32>, ptr %i.cbc, align 32, !tbaa !32 ; 4 uses
  %i.cbd = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mm, <8 x i32> %.val7004467, <8 x i1> splat (i1 true), i32 8)
  %i.cbe = bitcast <8 x double> %i.cbd to <16 x float> ; 2 uses
  %i.cbf = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ms, <8 x i32> %.val7004467, <8 x i1> splat (i1 true), i32 8)
  %i.cbg = bitcast <8 x double> %i.cbf to <16 x float> ; 2 uses
  %i.cbh = shufflevector <16 x float> %i.cbe, <16 x float> %i.cbg, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cbi = shufflevector <16 x float> %i.cbe, <16 x float> %i.cbg, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cbj = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.my, <8 x i32> %.val7004467, <8 x i1> splat (i1 true), i32 8)
  %i.cbk = bitcast <8 x double> %i.cbj to <16 x float> ; 2 uses
  %i.cbl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.ne, <8 x i32> %.val7004467, <8 x i1> splat (i1 true), i32 8)
  %i.cbm = bitcast <8 x double> %i.cbl to <16 x float> ; 2 uses
  %i.cbn = shufflevector <16 x float> %i.cbk, <16 x float> %i.cbm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cbo = shufflevector <16 x float> %i.cbk, <16 x float> %i.cbm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cbp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.caj, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.cbq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.cao, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.cbr = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cbp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.cbs = fmul <16 x float> %i.cbp, %i.cbr
  %i.cbt = fmul <16 x float> %i.cbr, splat (float -5.000000e-01)
  %i.cbu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbs, <16 x float> %i.cbr, <16 x float> splat (float -3.000000e+00))
  %i.cbv = fmul <16 x float> %i.cbt, %i.cbu
  %i.cbw = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cbq, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.cbx = fmul <16 x float> %i.cbq, %i.cbw
  %i.cby = fmul <16 x float> %i.cbw, splat (float -5.000000e-01)
  %i.cbz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbx, <16 x float> %i.cbw, <16 x float> splat (float -3.000000e+00))
  %i.cca = fmul <16 x float> %i.cby, %i.cbz
  %i.ccb = select <16 x i1> %.sroa.04468.0, <16 x float> %i.cbv, <16 x float> zeroinitializer ; 2 uses
  %i.ccc = select <16 x i1> %.sroa.10.0, <16 x float> %i.cca, <16 x float> zeroinitializer ; 2 uses
  %i.ccd = fmul <16 x float> %i.ccb, %i.ccb       ; 4 uses
  %i.cce = fmul <16 x float> %i.ccc, %i.ccc       ; 4 uses
  %i.ccf = shl nsw i32 %i.bzj, 4
  %i.ccg = fmul <16 x float> %i.ccd, %i.ccd
  %i.cch = fmul <16 x float> %i.ccd, %i.ccg       ; 4 uses
  %i.cci = fmul <16 x float> %i.cce, %i.cce
  %i.ccj = fmul <16 x float> %i.cce, %i.cci       ; 4 uses
  %i.cck = select <16 x i1> %.not4783, <16 x float> zeroinitializer, <16 x float> %i.cch ; 3 uses
  %i.ccl = select <16 x i1> %.not4784, <16 x float> zeroinitializer, <16 x float> %i.ccj ; 3 uses
  %i.ccm = fmul <16 x float> %i.cck, %i.cck
  %i.ccn = fmul <16 x float> %i.ccl, %i.ccl
  %i.cco = fmul <16 x float> %i.cck, %i.cbh       ; 2 uses
  %i.ccp = fmul <16 x float> %i.ccl, %i.cbn       ; 2 uses
  %i.ccq = fmul <16 x float> %i.ccm, %i.cbi       ; 2 uses
  %i.ccr = fmul <16 x float> %i.ccn, %i.cbo       ; 2 uses
  %i.ccs = fsub <16 x float> %i.ccq, %i.cco
  %i.cct = fsub <16 x float> %i.ccr, %i.ccp
  %i.ccu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbh, <16 x float> %i.an, <16 x float> %i.cco)
  %i.ccv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbn, <16 x float> %i.an, <16 x float> %i.ccp)
  %i.ccw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbi, <16 x float> %i.aq, <16 x float> %i.ccq)
  %i.ccx = fmul <16 x float> %i.ccu, splat (float f0xBE2AAAAB)
  %i.ccy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccw, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ccx)
  %i.ccz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbo, <16 x float> %i.aq, <16 x float> %i.ccr)
  %i.cda = fmul <16 x float> %i.ccv, splat (float f0xBE2AAAAB)
  %i.cdb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccz, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cda)
  %i.cdc = select <16 x i1> %.not4783, <16 x float> zeroinitializer, <16 x float> %i.ccy
  %i.cdd = select <16 x i1> %.not4784, <16 x float> zeroinitializer, <16 x float> %i.cdb
  %i.cde = sext i32 %i.ccf to i64
  %i.cdf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cde
  %.val6944941 = load <8 x float>, ptr %i.cdf, align 32, !tbaa !32
  %i.cdg = shufflevector <8 x float> %.val6944941, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cdh = fmul <16 x float> %i.nk, %i.cdg        ; 2 uses
  %i.cdi = fmul <16 x float> %i.np, %i.cdg        ; 2 uses
  %i.cdj = select <16 x i1> %.sroa.04468.0, <16 x float> %i.cbp, <16 x float> zeroinitializer
  %i.cdk = fmul <16 x float> %i.ay, %i.cdj        ; 3 uses
  %i.cdl = bitcast <16 x float> %i.cdk to <8 x i64>
  %i.cdm = select <16 x i1> %.sroa.10.0, <16 x float> %i.cbq, <16 x float> zeroinitializer
  %i.cdn = fmul <16 x float> %i.ay, %i.cdm        ; 3 uses
  %i.cdo = bitcast <16 x float> %i.cdn to <8 x i64>
  %i.cdp = xor <8 x i64> %i.cdl, splat (i64 -9223372034707292160)
  %i.cdq = bitcast <8 x i64> %i.cdp to <16 x float> ; 2 uses
  %i.cdr = fmul <16 x float> %i.cdq, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cds = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cdr, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cdt = shl <16 x i32> %i.cds, splat (i32 23)
  %i.cdu = add <16 x i32> %i.cdt, splat (i32 1065353216)
  %i.cdv = bitcast <16 x i32> %i.cdu to <16 x float> ; 2 uses
  %i.cdw = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cdr, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.cdx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdw, <16 x float> splat (float f0xBF317200), <16 x float> %i.cdq)
  %i.cdy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdw, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.cdx) ; 7 uses
  %i.cdz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdy, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cea = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdz, <16 x float> %i.cdy, <16 x float> splat (float f0x3D2AAF4C))
  %i.ceb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cea, <16 x float> %i.cdy, <16 x float> splat (float f0x3E2AAA5E))
  %i.cec = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceb, <16 x float> %i.cdy, <16 x float> splat (float f0x3EFFFFFB))
  %i.ced = fmul <16 x float> %i.cdy, %i.cdy
  %i.cee = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ced, <16 x float> %i.cec, <16 x float> %i.cdy)
  %i.cef = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cee, <16 x float> %i.cdv, <16 x float> %i.cdv)
  %i.ceg = xor <8 x i64> %i.cdo, splat (i64 -9223372034707292160)
  %i.ceh = bitcast <8 x i64> %i.ceg to <16 x float> ; 2 uses
  %i.cei = fmul <16 x float> %i.ceh, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cej = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cei, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cek = shl <16 x i32> %i.cej, splat (i32 23)
  %i.cel = add <16 x i32> %i.cek, splat (i32 1065353216)
  %i.cem = bitcast <16 x i32> %i.cel to <16 x float> ; 2 uses
  %i.cen = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cei, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ceo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cen, <16 x float> splat (float f0xBF317200), <16 x float> %i.ceh)
  %i.cep = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cen, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ceo) ; 7 uses
  %i.ceq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cep, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cer = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceq, <16 x float> %i.cep, <16 x float> splat (float f0x3D2AAF4C))
  %i.ces = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cer, <16 x float> %i.cep, <16 x float> splat (float f0x3E2AAA5E))
  %i.cet = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ces, <16 x float> %i.cep, <16 x float> splat (float f0x3EFFFFFB))
  %i.ceu = fmul <16 x float> %i.cep, %i.cep
  %i.cev = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceu, <16 x float> %i.cet, <16 x float> %i.cep)
  %i.cew = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cev, <16 x float> %i.cem, <16 x float> %i.cem)
  %i.cex = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdk, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cey = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cex, <16 x float> %i.cdk, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cez = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdn, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cfa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cez, <16 x float> %i.cdn, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cfb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cch, <16 x float> %i.cey, <16 x float> %i.ba)
  %i.cfc = fneg <16 x float> %i.cef               ; 2 uses
  %i.cfd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfc, <16 x float> %i.cfb, <16 x float> %i.cch)
  %i.cfe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdh, <16 x float> %i.cfd, <16 x float> %i.ccs)
  %i.cff = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccj, <16 x float> %i.cfa, <16 x float> %i.ba)
  %i.cfg = fneg <16 x float> %i.cew               ; 2 uses
  %i.cfh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfg, <16 x float> %i.cff, <16 x float> %i.ccj)
  %i.cfi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdi, <16 x float> %i.cfh, <16 x float> %i.cct)
  %i.cfj = select <16 x i1> %.not4783, <16 x float> zeroinitializer, <16 x float> %i.bd
  %i.cfk = select <16 x i1> %.not4784, <16 x float> zeroinitializer, <16 x float> %i.bd
  %i.cfl = fmul <16 x float> %i.cdh, splat (float f0x3E2AAAAB)
  %i.cfm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfc, <16 x float> %i.cey, <16 x float> splat (float 1.000000e+00))
  %i.cfn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cch, <16 x float> %i.cfm, <16 x float> %i.cfj)
  %i.cfo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfl, <16 x float> %i.cfn, <16 x float> %i.cdc)
  %i.cfp = fmul <16 x float> %i.cdi, splat (float f0x3E2AAAAB)
  %i.cfq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfg, <16 x float> %i.cfa, <16 x float> splat (float 1.000000e+00))
  %i.cfr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccj, <16 x float> %i.cfq, <16 x float> %i.cfk)
  %i.cfs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfp, <16 x float> %i.cfr, <16 x float> %i.cdd)
  %i.cft = select <16 x i1> %.sroa.04468.0, <16 x float> %i.cfo, <16 x float> zeroinitializer ; 2 uses
  %i.cfu = select <16 x i1> %.sroa.10.0, <16 x float> %i.cfs, <16 x float> zeroinitializer ; 2 uses
  %i.cfv = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.cfw = load i32, ptr %i.cf, align 8, !tbaa !121
  %i.cfx = sext i32 %i.cat to i64
  %i.cfy = getelementptr inbounds [4 x i8], ptr %i.cfv, i64 %i.cfx
  %i.cfz = load i32, ptr %i.cg, align 4, !tbaa !122
  %i.cga = load i32, ptr %i.cb, align 8, !tbaa !95
  %i.cgb = load <2 x i32>, ptr %i.cfy, align 4, !tbaa !86 ; 2 uses
  %i.cgc = insertelement <2 x i32> poison, i32 %i.cfw, i64 0
  %i.cgd = shufflevector <2 x i32> %i.cgb, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cge = shufflevector <2 x i32> %i.cgb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cgf = shufflevector <2 x i32> %i.cgc, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cgg = ashr <4 x i32> %i.cge, %i.cgf
  %i.cgh = shufflevector <4 x i32> %i.cgg, <4 x i32> %i.cgd, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.cgi = insertelement <4 x i32> poison, i32 %i.cfz, i64 0
  %i.cgj = shufflevector <4 x i32> %i.cgi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cgk = and <4 x i32> %i.cgh, %i.cgj
  %i.cgl = insertelement <4 x i32> poison, i32 %i.cga, i64 0
  %i.cgm = shufflevector <4 x i32> %i.cgl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cgn = mul nsw <4 x i32> %i.cgk, %i.cgm       ; 4 uses
  %i.cgo = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !92 ; 4 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgo, i64 8
  %i.cgr = load ptr, ptr %i.cgq, align 8, !tbaa !92 ; 4 uses
  %i.cgs = shufflevector <16 x float> %i.cft, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cgt = shufflevector <16 x float> %i.cft, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cgu = extractelement <4 x i32> %i.cgn, i64 0
  %i.cgv = sext i32 %i.cgu to i64                 ; 4 uses
  %i.cgw = getelementptr inbounds [4 x i8], ptr %i.cgp, i64 %i.cgv ; 2 uses
  %i.cgx = getelementptr inbounds [4 x i8], ptr %i.cgr, i64 %i.cgv ; 2 uses
  %i.cgy = load <8 x float>, ptr %i.cgw, align 32, !tbaa !32
  %i.cgz = fadd <8 x float> %i.cgy, %i.cgs
  store <8 x float> %i.cgz, ptr %i.cgw, align 32, !tbaa !32
  %i.cha = load <8 x float>, ptr %i.cgx, align 32, !tbaa !32
  %i.chb = fadd <8 x float> %i.cha, %i.cgt
  store <8 x float> %i.chb, ptr %i.cgx, align 32, !tbaa !32
  %i.chc = extractelement <4 x i32> %i.cgn, i64 1
  %i.chd = sext i32 %i.chc to i64                 ; 4 uses
  %i.che = getelementptr inbounds [4 x i8], ptr %i.cgp, i64 %i.chd
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 32 ; 2 uses
  %i.chg = getelementptr inbounds [4 x i8], ptr %i.cgr, i64 %i.chd
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 32 ; 2 uses
  %i.chi = load <8 x float>, ptr %i.chf, align 32, !tbaa !32
  %i.chj = fadd <8 x float> %i.cgs, %i.chi
  store <8 x float> %i.chj, ptr %i.chf, align 32, !tbaa !32
  %i.chk = load <8 x float>, ptr %i.chh, align 32, !tbaa !32
  %i.chl = fadd <8 x float> %i.chk, %i.cgt
  store <8 x float> %i.chl, ptr %i.chh, align 32, !tbaa !32
  %i.chm = extractelement <4 x i32> %i.cgn, i64 2
  %i.chn = sext i32 %i.chm to i64                 ; 4 uses
  %i.cho = getelementptr inbounds [4 x i8], ptr %i.cgp, i64 %i.chn
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 64 ; 2 uses
  %i.chq = getelementptr inbounds [4 x i8], ptr %i.cgr, i64 %i.chn
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 64 ; 2 uses
  %i.chs = load <8 x float>, ptr %i.chp, align 32, !tbaa !32
  %i.cht = fadd <8 x float> %i.cgs, %i.chs
  store <8 x float> %i.cht, ptr %i.chp, align 32, !tbaa !32
  %i.chu = load <8 x float>, ptr %i.chr, align 32, !tbaa !32
  %i.chv = fadd <8 x float> %i.chu, %i.cgt
  store <8 x float> %i.chv, ptr %i.chr, align 32, !tbaa !32
  %i.chw = extractelement <4 x i32> %i.cgn, i64 3
  %i.chx = sext i32 %i.chw to i64                 ; 4 uses
  %i.chy = getelementptr inbounds [4 x i8], ptr %i.cgp, i64 %i.chx
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 96 ; 2 uses
  %i.cia = getelementptr inbounds [4 x i8], ptr %i.cgr, i64 %i.chx
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 96 ; 2 uses
  %i.cic = load <8 x float>, ptr %i.chz, align 32, !tbaa !32
  %i.cid = fadd <8 x float> %i.cgs, %i.cic
  store <8 x float> %i.cid, ptr %i.chz, align 32, !tbaa !32
  %i.cie = load <8 x float>, ptr %i.cib, align 32, !tbaa !32
  %i.cif = fadd <8 x float> %i.cie, %i.cgt
  store <8 x float> %i.cif, ptr %i.cib, align 32, !tbaa !32
  %i.cig = load ptr, ptr %i.bz, align 8, !tbaa !91 ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cii = load ptr, ptr %i.cih, align 8, !tbaa !92 ; 4 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cig, i64 24
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !92 ; 4 uses
  %i.cil = shufflevector <16 x float> %i.cfu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cim = shufflevector <16 x float> %i.cfu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cin = getelementptr inbounds [4 x i8], ptr %i.cii, i64 %i.cgv ; 2 uses
  %i.cio = getelementptr inbounds [4 x i8], ptr %i.cik, i64 %i.cgv ; 2 uses
  %i.cip = load <8 x float>, ptr %i.cin, align 32, !tbaa !32
  %i.ciq = fadd <8 x float> %i.cil, %i.cip
  store <8 x float> %i.ciq, ptr %i.cin, align 32, !tbaa !32
  %i.cir = load <8 x float>, ptr %i.cio, align 32, !tbaa !32
  %i.cis = fadd <8 x float> %i.cir, %i.cim
  store <8 x float> %i.cis, ptr %i.cio, align 32, !tbaa !32
  %i.cit = getelementptr inbounds [4 x i8], ptr %i.cii, i64 %i.chd
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 32 ; 2 uses
  %i.civ = getelementptr inbounds [4 x i8], ptr %i.cik, i64 %i.chd
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 32 ; 2 uses
  %i.cix = load <8 x float>, ptr %i.ciu, align 32, !tbaa !32
  %i.ciy = fadd <8 x float> %i.cil, %i.cix
  store <8 x float> %i.ciy, ptr %i.ciu, align 32, !tbaa !32
  %i.ciz = load <8 x float>, ptr %i.ciw, align 32, !tbaa !32
  %i.cja = fadd <8 x float> %i.ciz, %i.cim
  store <8 x float> %i.cja, ptr %i.ciw, align 32, !tbaa !32
  %i.cjb = getelementptr inbounds [4 x i8], ptr %i.cii, i64 %i.chn
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cjb, i64 64 ; 2 uses
  %i.cjd = getelementptr inbounds [4 x i8], ptr %i.cik, i64 %i.chn
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjd, i64 64 ; 2 uses
  %i.cjf = load <8 x float>, ptr %i.cjc, align 32, !tbaa !32
  %i.cjg = fadd <8 x float> %i.cil, %i.cjf
  store <8 x float> %i.cjg, ptr %i.cjc, align 32, !tbaa !32
  %i.cjh = load <8 x float>, ptr %i.cje, align 32, !tbaa !32
  %i.cji = fadd <8 x float> %i.cjh, %i.cim
  store <8 x float> %i.cji, ptr %i.cje, align 32, !tbaa !32
  %i.cjj = getelementptr inbounds [4 x i8], ptr %i.cii, i64 %i.chx
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cjj, i64 96 ; 2 uses
  %i.cjl = getelementptr inbounds [4 x i8], ptr %i.cik, i64 %i.chx
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 96 ; 2 uses
  %i.cjn = load <8 x float>, ptr %i.cjk, align 32, !tbaa !32
  %i.cjo = fadd <8 x float> %i.cil, %i.cjn
  store <8 x float> %i.cjo, ptr %i.cjk, align 32, !tbaa !32
  %i.cjp = load <8 x float>, ptr %i.cjm, align 32, !tbaa !32
  %i.cjq = fadd <8 x float> %i.cjp, %i.cim
  store <8 x float> %i.cjq, ptr %i.cjm, align 32, !tbaa !32
  %i.cjr = fmul <16 x float> %i.ccd, %i.cfe       ; 3 uses
  %i.cjs = fmul <16 x float> %i.cce, %i.cfi       ; 3 uses
  %i.cjt = fmul <16 x float> %i.bzz, %i.cjr       ; 2 uses
  %i.cju = fmul <16 x float> %i.caa, %i.cjs       ; 2 uses
  %i.cjv = fmul <16 x float> %i.cab, %i.cjr       ; 2 uses
  %i.cjw = fmul <16 x float> %i.cac, %i.cjs       ; 2 uses
  %i.cjx = fmul <16 x float> %i.cad, %i.cjr       ; 2 uses
  %i.cjy = fmul <16 x float> %i.cae, %i.cjs       ; 2 uses
  %i.cjz = fadd <16 x float> %.sroa.03846.44496, %i.cjt ; 2 uses
  %i.cka = fadd <16 x float> %.sroa.163853.44497, %i.cju ; 2 uses
  %i.ckb = fadd <16 x float> %.sroa.03828.44494, %i.cjv ; 2 uses
  %i.ckc = fadd <16 x float> %.sroa.163835.44495, %i.cjw ; 2 uses
  %i.ckd = fadd <16 x float> %.sroa.03811.44492, %i.cjx ; 2 uses
  %i.cke = fadd <16 x float> %.sroa.16.44493, %i.cjy ; 2 uses
  %i.ckf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bzs ; 4 uses
  %i.ckg = fadd <16 x float> %i.cjt, %i.cju       ; 2 uses
  %i.ckh = fadd <16 x float> %i.cjv, %i.cjw       ; 2 uses
  %i.cki = fadd <16 x float> %i.cjx, %i.cjy       ; 2 uses
  %i.ckj = load <8 x float>, ptr %i.ckf, align 32, !tbaa !32
  %i.ckk = shufflevector <16 x float> %i.ckg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckl = shufflevector <16 x float> %i.ckg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ckm = fadd <8 x float> %i.ckk, %i.ckl
  %i.ckn = fsub <8 x float> %i.ckj, %i.ckm
  store <8 x float> %i.ckn, ptr %i.ckf, align 32, !tbaa !32
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckf, i64 32 ; 2 uses
  %i.ckp = load <8 x float>, ptr %i.cko, align 32, !tbaa !32
  %i.ckq = shufflevector <16 x float> %i.ckh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckr = shufflevector <16 x float> %i.ckh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cks = fadd <8 x float> %i.ckq, %i.ckr
  %i.ckt = fsub <8 x float> %i.ckp, %i.cks
  store <8 x float> %i.ckt, ptr %i.cko, align 32, !tbaa !32
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckf, i64 64 ; 2 uses
  %i.ckv = load <8 x float>, ptr %i.cku, align 32, !tbaa !32
  %i.ckw = shufflevector <16 x float> %i.cki, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckx = shufflevector <16 x float> %i.cki, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cky = fadd <8 x float> %i.ckw, %i.ckx
  %i.ckz = fsub <8 x float> %i.ckv, %i.cky
  store <8 x float> %i.ckz, ptr %i.cku, align 32, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.m
  %i.cla = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader4479
  %.sroa.03811.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.03811.44492, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.16.44493, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03828.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.03828.44494, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163835.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.163835.44495, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03846.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.03846.44496, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163853.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4479 ], [ %.sroa.163853.44497, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.cm, %.preheader4479 ], [ %i.cla, %.critedge5.loopexit ] ; 2 uses
  %i.clb = icmp slt i32 %.4.lcssa, %i.co
  br i1 %i.clb, label %.lr.ph4521, label %.loopexit

.lr.ph4521:                                       ; preds = %.critedge5
  %i.clc = sext i32 %.4.lcssa to i64
  %wide.trip.count4641 = sext i32 %i.co to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph4521, %bb.q
  %indvars.iv4638 = phi i64 [ %i.clc, %.lr.ph4521 ], [ %indvars.iv.next4639, %bb.q ] ; 2 uses
  %.sroa.163853.54519 = phi <16 x float> [ %.sroa.163853.4.lcssa, %.lr.ph4521 ], [ %i.cva, %bb.q ]
  %.sroa.03846.54518 = phi <16 x float> [ %.sroa.03846.4.lcssa, %.lr.ph4521 ], [ %i.cuz, %bb.q ]
  %.sroa.163835.54517 = phi <16 x float> [ %.sroa.163835.4.lcssa, %.lr.ph4521 ], [ %i.cvc, %bb.q ]
  %.sroa.03828.54516 = phi <16 x float> [ %.sroa.03828.4.lcssa, %.lr.ph4521 ], [ %i.cvb, %bb.q ]
  %.sroa.16.54515 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph4521 ], [ %i.cve, %bb.q ]
  %.sroa.03811.54514 = phi <16 x float> [ %.sroa.03811.4.lcssa, %.lr.ph4521 ], [ %i.cvd, %bb.q ]
  %i.cld = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv4638
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !94 ; 4 uses
  %i.clf = shl nsw i32 %i.cle, 3
  %i.clg = mul nsw i32 %i.cle, 24
  %i.clh = sext i32 %i.clg to i64                 ; 2 uses
  %i.cli = getelementptr [4 x i8], ptr %i.bi, i64 %i.clh ; 3 uses
  %.val6954942 = load <8 x float>, ptr %i.cli, align 32, !tbaa !32
  %i.clj = getelementptr i8, ptr %i.cli, i64 32
  %.val6964943 = load <8 x float>, ptr %i.clj, align 32, !tbaa !32
  %i.clk = getelementptr i8, ptr %i.cli, i64 64
  %.val6974944 = load <8 x float>, ptr %i.clk, align 32, !tbaa !32
  %i.cll = sext i32 %i.clf to i64
  %i.clm = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cll
  %.val6994469 = load <8 x i32>, ptr %i.clm, align 32, !tbaa !32 ; 4 uses
end_hunk_2
