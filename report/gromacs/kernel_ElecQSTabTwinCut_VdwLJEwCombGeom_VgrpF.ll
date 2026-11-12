Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1805
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4898.preheader
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.pre-phi5240
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !90
  %.reass.3 = mul i32 %i.kd, %factor.op.mul
  %i.ke = sext i32 %.reass.3 to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !43
  %i.kh = fdiv float %i.kg, 6.000000e+00
  %i.ki = fpext float %i.kh to double
  %i.kj = fmul double %i.ki, 5.000000e-01
  %i.kk = fmul double %i.kj, %i.cn
  %i.kl = fptrunc double %i.kk to float
  %i.km = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %.pre-phi5252 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !43
  %i.ko = fadd float %i.kn, %i.kl
  store float %i.ko, ptr %i.km, align 4, !tbaa !43
  br label %.loopexit4895

.loopexit4895:                                    ; preds = %.loopexit4897, %bb.a
  %i.kp = add nsw i32 %i.dy, 8
  %i.kq = add nsw i32 %i.dy, 16
  %i.kr = sext i32 %i.dy to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.kr ; 4 uses
  %.val.i = load float, ptr %i.ks, align 1, !tbaa !32, !noalias !120
  %i.kt = getelementptr i8, ptr %i.ks, i64 4
  %.val3.i = load float, ptr %i.kt, align 1, !tbaa !32, !noalias !120
  %i.ku = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.kv = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.kw = shufflevector <4 x float> %i.ku, <4 x float> %i.kv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kx = fadd <16 x float> %i.dh, %i.kw          ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.val.i775 = load float, ptr %i.ky, align 1, !tbaa !32, !noalias !120
  %i.kz = getelementptr i8, ptr %i.ks, i64 12
  %.val3.i776 = load float, ptr %i.kz, align 1, !tbaa !32, !noalias !120
  %i.la = insertelement <4 x float> poison, float %.val.i775, i64 0
  %i.lb = insertelement <4 x float> poison, float %.val3.i776, i64 0
  %i.lc = shufflevector <4 x float> %i.la, <4 x float> %i.lb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ld = fadd <16 x float> %i.dh, %i.lc          ; 6 uses
  %i.le = sext i32 %i.kp to i64                   ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.le ; 4 uses
  %.val.i778 = load float, ptr %i.lf, align 1, !tbaa !32, !noalias !121
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  %.val3.i779 = load float, ptr %i.lg, align 1, !tbaa !32, !noalias !121
  %i.lh = insertelement <4 x float> poison, float %.val.i778, i64 0
  %i.li = insertelement <4 x float> poison, float %.val3.i779, i64 0
  %i.lj = shufflevector <4 x float> %i.lh, <4 x float> %i.li, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lk = fadd <16 x float> %i.dn, %i.lj          ; 6 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.val.i781 = load float, ptr %i.ll, align 1, !tbaa !32, !noalias !121
  %i.lm = getelementptr i8, ptr %i.lf, i64 12
  %.val3.i782 = load float, ptr %i.lm, align 1, !tbaa !32, !noalias !121
  %i.ln = insertelement <4 x float> poison, float %.val.i781, i64 0
  %i.lo = insertelement <4 x float> poison, float %.val3.i782, i64 0
  %i.lp = shufflevector <4 x float> %i.ln, <4 x float> %i.lo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lq = fadd <16 x float> %i.dn, %i.lp          ; 6 uses
  %i.lr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.lr ; 4 uses
  %.val.i784 = load float, ptr %i.ls, align 1, !tbaa !32, !noalias !122
  %i.lt = getelementptr i8, ptr %i.ls, i64 4
  %.val3.i785 = load float, ptr %i.lt, align 1, !tbaa !32, !noalias !122
  %i.lu = insertelement <4 x float> poison, float %.val.i784, i64 0
  %i.lv = insertelement <4 x float> poison, float %.val3.i785, i64 0
  %i.lw = shufflevector <4 x float> %i.lu, <4 x float> %i.lv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lx = fadd <16 x float> %i.dt, %i.lw          ; 6 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.val.i787 = load float, ptr %i.ly, align 1, !tbaa !32, !noalias !122
  %i.lz = getelementptr i8, ptr %i.ls, i64 12
  %.val3.i788 = load float, ptr %i.lz, align 1, !tbaa !32, !noalias !122
  %i.ma = insertelement <4 x float> poison, float %.val.i787, i64 0
  %i.mb = insertelement <4 x float> poison, float %.val3.i788, i64 0
  %i.mc = shufflevector <4 x float> %i.ma, <4 x float> %i.mb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.md = fadd <16 x float> %i.dt, %i.mc          ; 6 uses
  %i.me = sext i32 %i.du to i64                   ; 5 uses
  br i1 %i.ec, label %bb.c, label %.preheader4894

bb.c:                                             ; preds = %.loopexit4895
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.me ; 4 uses
  %.val.i790 = load float, ptr %i.mf, align 1, !tbaa !32, !noalias !123
  %i.mg = getelementptr i8, ptr %i.mf, i64 4
  %.val2.i = load float, ptr %i.mg, align 1, !tbaa !32, !noalias !123
  %i.mh = insertelement <4 x float> poison, float %.val.i790, i64 0
  %i.mi = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mk = fmul <16 x float> %i.co, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.val.i791 = load float, ptr %i.ml, align 1, !tbaa !32, !noalias !123
  %i.mm = getelementptr i8, ptr %i.mf, i64 12
  %.val2.i792 = load float, ptr %i.mm, align 1, !tbaa !32, !noalias !123
  %i.mn = insertelement <4 x float> poison, float %.val.i791, i64 0
  %i.mo = insertelement <4 x float> poison, float %.val2.i792, i64 0
  %i.mp = shufflevector <4 x float> %i.mn, <4 x float> %i.mo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mq = fmul <16 x float> %i.co, %i.mp
  br label %.preheader4894

.preheader4894:                                   ; preds = %.loopexit4895, %bb.c
  %.sroa.04464.0 = phi <16 x float> [ %i.mk, %bb.c ], [ undef, %.loopexit4895 ] ; 4 uses
  %.sroa.74468.0 = phi <16 x float> [ %i.mq, %bb.c ], [ undef, %.loopexit4895 ] ; 4 uses
  %i.mr = load i32, ptr %1, align 8, !tbaa !119
  %i.ms = shl i32 %i.mr, 1                        ; 4 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.me
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !90
  %i.mv = mul i32 %i.ms, %i.mu
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mw ; 6 uses
  %i.my = getelementptr [4 x i8], ptr %i.j, i64 %i.me
  %i.mz = getelementptr i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !90
  %i.nb = mul i32 %i.ms, %i.na
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nc ; 6 uses
  %i.ne = getelementptr [4 x i8], ptr %i.j, i64 %i.me
  %i.nf = getelementptr i8, ptr %i.ne, i64 8
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !90
  %i.nh = mul i32 %i.ms, %i.ng
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ni ; 4 uses
  %i.nk = getelementptr [4 x i8], ptr %i.j, i64 %i.me
  %i.nl = getelementptr i8, ptr %i.nk, i64 12
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !90
  %i.nn = mul i32 %i.ms, %i.nm
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.no ; 4 uses
  %i.nq = sext i32 %i.ea to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nq ; 4 uses
  %.val738 = load float, ptr %i.nr, align 1, !tbaa !32
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %.val739 = load float, ptr %i.ns, align 1, !tbaa !32
  %i.nt = insertelement <4 x float> poison, float %.val738, i64 0
  %i.nu = insertelement <4 x float> poison, float %.val739, i64 0
  %i.nv = shufflevector <4 x float> %i.nt, <4 x float> %i.nu, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.val738.1 = load float, ptr %i.nw, align 1, !tbaa !32
  %i.nx = getelementptr i8, ptr %i.nr, i64 12
  %.val739.1 = load float, ptr %i.nx, align 1, !tbaa !32
  %i.ny = insertelement <4 x float> poison, float %.val738.1, i64 0
  %i.nz = insertelement <4 x float> poison, float %.val739.1, i64 0
  %i.oa = shufflevector <4 x float> %i.ny, <4 x float> %i.nz, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.ob = icmp slt i32 %i.cx, %i.cz               ; 3 uses
  br i1 %i.ee, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader4894
  br i1 %i.ob, label %.lr.ph4996, label %.critedge

.lr.ph4996:                                       ; preds = %.preheader
  %wide.trip.count5108 = sext i32 %i.cz to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4996, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620
  %indvars.iv5105 = phi i64 [ %i.gb, %.lr.ph4996 ], [ %indvars.iv.next5106, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 4 uses
  %.sroa.04213.04994 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aal, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %.sroa.16.04993 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aam, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %.sroa.04230.04992 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aaj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %.sroa.164237.04991 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aak, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %.sroa.04248.04990 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aah, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %.sroa.164255.04989 = phi <16 x float> [ zeroinitializer, %.lr.ph4996 ], [ %i.aai, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620 ] ; 2 uses
  %i.oc = load ptr, ptr %i.bt, align 8, !tbaa !72
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv5105
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !90
  %.not606 = icmp eq i32 %i.of, -1
  br i1 %.not606, label %.critedge.loopexit, label %.critedge608

.critedge608:                                     ; preds = %bb.d
  %i.og = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %indvars.iv5105 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !98 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !124
  %i.ok = insertelement <16 x i32> poison, i32 %i.oj, i64 0
  %i.ol = shufflevector <16 x i32> %i.ok, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.om = and <16 x i32> %.sroa.05162.0.copyload, %i.ol
  %.not5274 = icmp eq <16 x i32> %i.om, zeroinitializer ; 5 uses
  %i.on = and <16 x i32> %.sroa.6.0.copyload, %i.ol
  %.not5275 = icmp eq <16 x i32> %i.on, zeroinitializer ; 2 uses
  %i.oo = shl nsw i32 %i.oh, 3
  %i.op = mul nsw i32 %i.oh, 24
  %i.oq = sext i32 %i.op to i64                   ; 2 uses
  %i.or = getelementptr [4 x i8], ptr %i.bs, i64 %i.oq ; 3 uses
  %.val7405441 = load <8 x float>, ptr %i.or, align 32, !tbaa !32
  %i.os = shufflevector <8 x float> %.val7405441, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ot = getelementptr i8, ptr %i.or, i64 32
  %.val7415442 = load <8 x float>, ptr %i.ot, align 32, !tbaa !32
  %i.ou = shufflevector <8 x float> %.val7415442, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ov = getelementptr i8, ptr %i.or, i64 64
  %.val7425443 = load <8 x float>, ptr %i.ov, align 32, !tbaa !32
  %i.ow = shufflevector <8 x float> %.val7425443, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ox = fsub <16 x float> %i.kx, %i.os          ; 3 uses
  %i.oy = fsub <16 x float> %i.ld, %i.os          ; 3 uses
  %i.oz = fsub <16 x float> %i.lk, %i.ou          ; 3 uses
  %i.pa = fsub <16 x float> %i.lq, %i.ou          ; 3 uses
  %i.pb = fsub <16 x float> %i.lx, %i.ow          ; 3 uses
  %i.pc = fsub <16 x float> %i.md, %i.ow          ; 3 uses
  %i.pd = fmul <16 x float> %i.ox, %i.ox
  %i.pe = fmul <16 x float> %i.oz, %i.oz
  %i.pf = fadd <16 x float> %i.pd, %i.pe
  %i.pg = fmul <16 x float> %i.pb, %i.pb
  %i.ph = fadd <16 x float> %i.pf, %i.pg          ; 2 uses
  %i.pi = fmul <16 x float> %i.oy, %i.oy
  %i.pj = fmul <16 x float> %i.pa, %i.pa
  %i.pk = fadd <16 x float> %i.pi, %i.pj
  %i.pl = fmul <16 x float> %i.pc, %i.pc
  %i.pm = fadd <16 x float> %i.pk, %i.pl          ; 2 uses
  %i.pn = fcmp olt <16 x float> %i.ph, %i.bj
  %i.po = bitcast <16 x i1> %i.pn to i16          ; 3 uses
  %i.pp = fcmp olt <16 x float> %i.pm, %i.bj
  %i.pq = bitcast <16 x i1> %i.pp to i16          ; 3 uses
  %i.pr = shl nsw i32 %i.oh, 1                    ; 3 uses
  %i.ps = icmp eq i32 %i.pr, %i.dc
  br i1 %i.ps, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge608
  %i.pt = and i16 %i.po, %i.v
  %i.pu = and i16 %i.pq, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620

bb.f:                                             ; preds = %.critedge608
  %i.pv = or disjoint i32 %i.pr, 1
  %i.pw = icmp eq i32 %i.pv, %i.dc
  br i1 %i.pw, label %bb.g, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620

bb.g:                                             ; preds = %bb.f
  %i.px = and i16 %i.po, %i.x
  %i.py = and i16 %i.pq, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit620: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.10.0 = phi i16 [ %i.pu, %bb.e ], [ %i.py, %bb.g ], [ %i.pq, %bb.f ]
  %.sroa.0.0 = phi i16 [ %i.pt, %bb.e ], [ %i.px, %bb.g ], [ %i.po, %bb.f ]
  %i.pz = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ph, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.qa = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pm, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.qb = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pz, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.qc = fmul <16 x float> %i.pz, %i.qb
  %i.qd = fmul <16 x float> %i.qb, splat (float -5.000000e-01)
  %i.qe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qc, <16 x float> %i.qb, <16 x float> splat (float -3.000000e+00))
  %i.qf = fmul <16 x float> %i.qd, %i.qe
  %i.qg = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.qa, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.qh = fmul <16 x float> %i.qa, %i.qg
  %i.qi = fmul <16 x float> %i.qg, splat (float -5.000000e-01)
  %i.qj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qh, <16 x float> %i.qg, <16 x float> splat (float -3.000000e+00))
  %i.qk = fmul <16 x float> %i.qi, %i.qj
  %i.ql = sext i32 %i.oo to i64                   ; 2 uses
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ql
  %.val7435444 = load <8 x float>, ptr %i.qm, align 32, !tbaa !32
  %5 = bitcast i16 %.sroa.0.0 to <16 x i1>        ; 3 uses
  %i.qn = select <16 x i1> %5, <16 x float> %i.qf, <16 x float> zeroinitializer ; 4 uses
  %6 = bitcast i16 %.sroa.10.0 to <16 x i1>       ; 2 uses
  %i.qo = select <16 x i1> %6, <16 x float> %i.qk, <16 x float> zeroinitializer ; 4 uses
  %i.qp = fmul <16 x float> %i.pz, %i.qn          ; 2 uses
  %i.qq = fmul <16 x float> %i.qa, %i.qo          ; 2 uses
  %i.qr = fmul <16 x float> %i.ad, %i.qp          ; 2 uses
  %i.qs = fmul <16 x float> %i.ad, %i.qq          ; 2 uses
  %i.qt = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qr, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.qs, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.qv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.qt, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cr, <16 x i32> %i.qt, <16 x i1> splat (i1 true), i32 4)
  %i.qx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.qt, <16 x i1> splat (i1 true), i32 4)
  %i.qy = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.qu, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.qz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cr, <16 x i32> %i.qu, <16 x i1> splat (i1 true), i32 4)
  %i.ra = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.qu, <16 x i1> splat (i1 true), i32 4)
  %i.rb = shufflevector <8 x float> %.val7435444, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.rc = fmul <16 x float> %.sroa.04464.0, %i.rb ; 2 uses
  %i.rd = fmul <16 x float> %.sroa.74468.0, %i.rb ; 2 uses
  %i.re = fmul <16 x float> %i.qn, %i.qn          ; 4 uses
  %i.rf = fmul <16 x float> %i.qo, %i.qo
  %i.rg = select <16 x i1> %.not5274, <16 x float> zeroinitializer, <16 x float> %i.qn ; 2 uses
  %i.rh = select <16 x i1> %.not5275, <16 x float> zeroinitializer, <16 x float> %i.qo ; 2 uses
  %i.ri = sitofp <16 x i32> %i.qt to <16 x float>
  %i.rj = sitofp <16 x i32> %i.qu to <16 x float>
  %i.rk = fsub <16 x float> %i.qr, %i.ri          ; 2 uses
  %i.rl = fsub <16 x float> %i.qs, %i.rj          ; 2 uses
  %i.rm = fsub <16 x float> %i.qw, %i.qv
  %i.rn = fsub <16 x float> %i.qz, %i.qy
  %i.ro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rk, <16 x float> %i.rm, <16 x float> %i.qv) ; 2 uses
  %i.rp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> %i.rn, <16 x float> %i.qy) ; 2 uses
  %i.rq = fneg <16 x float> %i.ro
  %i.rr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rq, <16 x float> %i.qp, <16 x float> %i.rg)
  %i.rs = fneg <16 x float> %i.rp
  %i.rt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rs, <16 x float> %i.qq, <16 x float> %i.rh)
  %i.ru = fmul <16 x float> %i.ag, %i.rk
  %i.rv = fadd <16 x float> %i.qv, %i.ro
  %i.rw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ru, <16 x float> %i.rv, <16 x float> %i.qx)
  %i.rx = fmul <16 x float> %i.ag, %i.rl
  %i.ry = fadd <16 x float> %i.qy, %i.rp
  %i.rz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rx, <16 x float> %i.ry, <16 x float> %i.ra)
  %i.sa = fmul <16 x float> %i.rc, %i.rr
  %i.sb = fmul <16 x float> %i.rd, %i.rt
  %i.sc = select <16 x i1> %.not5274, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.sd = fadd <16 x float> %i.sc, %i.rw
  %i.se = select <16 x i1> %.not5275, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.sf = fadd <16 x float> %i.se, %i.rz
  %i.sg = fsub <16 x float> %i.rg, %i.sd
  %i.sh = fmul <16 x float> %i.rc, %i.sg
  %i.si = fsub <16 x float> %i.rh, %i.sf
  %i.sj = fmul <16 x float> %i.rd, %i.si
  %i.sk = select <16 x i1> %5, <16 x float> %i.sh, <16 x float> zeroinitializer ; 2 uses
  %i.sl = select <16 x i1> %6, <16 x float> %i.sj, <16 x float> zeroinitializer ; 2 uses
  %i.sm = fcmp olt <16 x float> %i.pz, %i.bo      ; 2 uses
  %i.sn = shl nsw i32 %i.oh, 4
  %i.so = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ql
  %.val7734885 = load <8 x i32>, ptr %i.so, align 32, !tbaa !32 ; 2 uses
  %i.sp = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mx, <8 x i32> %.val7734885, <8 x i1> splat (i1 true), i32 8)
  %i.sq = bitcast <8 x double> %i.sp to <16 x float> ; 2 uses
  %i.sr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nd, <8 x i32> %.val7734885, <8 x i1> splat (i1 true), i32 8)
  %i.ss = bitcast <8 x double> %i.sr to <16 x float> ; 2 uses
  %i.st = shufflevector <16 x float> %i.sq, <16 x float> %i.ss, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.su = shufflevector <16 x float> %i.sq, <16 x float> %i.ss, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.sv = fmul <16 x float> %i.re, %i.re
  %i.sw = fmul <16 x float> %i.re, %i.sv          ; 4 uses
  %i.sx = select <16 x i1> %.not5274, <16 x float> zeroinitializer, <16 x float> %i.sw ; 3 uses
  %i.sy = fmul <16 x float> %i.sx, %i.sx
  %i.sz = fmul <16 x float> %i.sx, %i.st          ; 2 uses
  %i.ta = fmul <16 x float> %i.sy, %i.su          ; 2 uses
  %i.tb = fsub <16 x float> %i.ta, %i.sz
  %i.tc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.st, <16 x float> %i.as, <16 x float> %i.sz)
  %i.td = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.su, <16 x float> %i.av, <16 x float> %i.ta)
  %i.te = fmul <16 x float> %i.tc, splat (float f0xBE2AAAAB)
  %i.tf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.td, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.te)
  %i.tg = select <16 x i1> %.not5274, <16 x float> zeroinitializer, <16 x float> %i.tf
  %i.th = sext i32 %i.sn to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.th
  %.val7445445 = load <8 x float>, ptr %i.ti, align 32, !tbaa !32
  %i.tj = shufflevector <8 x float> %.val7445445, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tk = fmul <16 x float> %i.nv, %i.tj          ; 2 uses
  %i.tl = select <16 x i1> %5, <16 x float> %i.pz, <16 x float> zeroinitializer
  %i.tm = fmul <16 x float> %i.bd, %i.tl          ; 3 uses
  %i.tn = bitcast <16 x float> %i.tm to <8 x i64>
  %i.to = xor <8 x i64> %i.tn, splat (i64 -9223372034707292160)
  %i.tp = bitcast <8 x i64> %i.to to <16 x float> ; 2 uses
  %i.tq = fmul <16 x float> %i.tp, splat (float f0x3FB8AA3B) ; 2 uses
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.tq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ts = shl <16 x i32> %i.tr, splat (i32 23)
  %i.tt = add <16 x i32> %i.ts, splat (i32 1065353216)
  %i.tu = bitcast <16 x i32> %i.tt to <16 x float> ; 2 uses
  %i.tv = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.tq, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.tw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tv, <16 x float> splat (float f0xBF317200), <16 x float> %i.tp)
  %i.tx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tv, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.tw) ; 7 uses
  %i.ty = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tx, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.tz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ty, <16 x float> %i.tx, <16 x float> splat (float f0x3D2AAF4C))
  %i.ua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tz, <16 x float> %i.tx, <16 x float> splat (float f0x3E2AAA5E))
  %i.ub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ua, <16 x float> %i.tx, <16 x float> splat (float f0x3EFFFFFB))
  %i.uc = fmul <16 x float> %i.tx, %i.tx
  %i.ud = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uc, <16 x float> %i.ub, <16 x float> %i.tx)
  %i.ue = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ud, <16 x float> %i.tu, <16 x float> %i.tu)
  %i.uf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tm, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.ug = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uf, <16 x float> %i.tm, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.uh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sw, <16 x float> %i.ug, <16 x float> %i.bf)
  %i.ui = fneg <16 x float> %i.ue                 ; 2 uses
  %i.uj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ui, <16 x float> %i.uh, <16 x float> %i.sw)
  %i.uk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tk, <16 x float> %i.uj, <16 x float> %i.tb)
  %i.ul = select <16 x i1> %.not5274, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.um = fmul <16 x float> %i.tk, splat (float f0x3E2AAAAB)
  %i.un = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ui, <16 x float> %i.ug, <16 x float> splat (float 1.000000e+00))
  %i.uo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sw, <16 x float> %i.un, <16 x float> %i.ul)
  %i.up = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.um, <16 x float> %i.uo, <16 x float> %i.tg)
  %i.uq = select <16 x i1> %i.sm, <16 x float> %i.uk, <16 x float> zeroinitializer
  %i.ur = select <16 x i1> %i.sm, <16 x float> %i.up, <16 x float> zeroinitializer ; 2 uses
  %i.us = load ptr, ptr %i.cb, align 8, !tbaa !89
  %i.ut = load i32, ptr %i.cp, align 8, !tbaa !125
  %i.uu = sext i32 %i.pr to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.uu
  %i.uw = load i32, ptr %i.cq, align 4, !tbaa !126
  %i.ux = load i32, ptr %i.cl, align 8, !tbaa !99
  %i.uy = load <2 x i32>, ptr %i.uv, align 4, !tbaa !90 ; 2 uses
  %i.uz = insertelement <2 x i32> poison, i32 %i.ut, i64 0
  %i.va = shufflevector <2 x i32> %i.uy, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.vb = shufflevector <2 x i32> %i.uy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.vc = shufflevector <2 x i32> %i.uz, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.vd = ashr <4 x i32> %i.vb, %i.vc
  %i.ve = shufflevector <4 x i32> %i.vd, <4 x i32> %i.va, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.vf = insertelement <4 x i32> poison, i32 %i.uw, i64 0
  %i.vg = shufflevector <4 x i32> %i.vf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vh = and <4 x i32> %i.ve, %i.vg
  %i.vi = insertelement <4 x i32> poison, i32 %i.ux, i64 0
  %i.vj = shufflevector <4 x i32> %i.vi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vk = mul nsw <4 x i32> %i.vh, %i.vj          ; 4 uses
  %i.vl = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !96 ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !96 ; 4 uses
  %i.vp = shufflevector <16 x float> %i.sk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vq = shufflevector <16 x float> %i.sk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vr = extractelement <4 x i32> %i.vk, i64 0
  %i.vs = sext i32 %i.vr to i64                   ; 6 uses
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.vs ; 2 uses
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vs ; 2 uses
  %i.vv = load <8 x float>, ptr %i.vt, align 32, !tbaa !32
  %i.vw = fadd <8 x float> %i.vp, %i.vv
  store <8 x float> %i.vw, ptr %i.vt, align 32, !tbaa !32
  %i.vx = load <8 x float>, ptr %i.vu, align 32, !tbaa !32
  %i.vy = fadd <8 x float> %i.vx, %i.vq
  store <8 x float> %i.vy, ptr %i.vu, align 32, !tbaa !32
  %i.vz = extractelement <4 x i32> %i.vk, i64 1
  %i.wa = sext i32 %i.vz to i64                   ; 6 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 32 ; 2 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.wa
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 32 ; 2 uses
  %i.wf = load <8 x float>, ptr %i.wc, align 32, !tbaa !32
  %i.wg = fadd <8 x float> %i.vp, %i.wf
  store <8 x float> %i.wg, ptr %i.wc, align 32, !tbaa !32
  %i.wh = load <8 x float>, ptr %i.we, align 32, !tbaa !32
  %i.wi = fadd <8 x float> %i.wh, %i.vq
  store <8 x float> %i.wi, ptr %i.we, align 32, !tbaa !32
  %i.wj = extractelement <4 x i32> %i.vk, i64 2
  %i.wk = sext i32 %i.wj to i64                   ; 6 uses
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 64 ; 2 uses
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.wk
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 64 ; 2 uses
  %i.wp = load <8 x float>, ptr %i.wm, align 32, !tbaa !32
  %i.wq = fadd <8 x float> %i.vp, %i.wp
  store <8 x float> %i.wq, ptr %i.wm, align 32, !tbaa !32
  %i.wr = load <8 x float>, ptr %i.wo, align 32, !tbaa !32
  %i.ws = fadd <8 x float> %i.wr, %i.vq
  store <8 x float> %i.ws, ptr %i.wo, align 32, !tbaa !32
  %i.wt = extractelement <4 x i32> %i.vk, i64 3
  %i.wu = sext i32 %i.wt to i64                   ; 6 uses
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 96 ; 2 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.wu
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 96 ; 2 uses
  %i.wz = load <8 x float>, ptr %i.ww, align 32, !tbaa !32
  %i.xa = fadd <8 x float> %i.vp, %i.wz
  store <8 x float> %i.xa, ptr %i.ww, align 32, !tbaa !32
  %i.xb = load <8 x float>, ptr %i.wy, align 32, !tbaa !32
  %i.xc = fadd <8 x float> %i.xb, %i.vq
  store <8 x float> %i.xc, ptr %i.wy, align 32, !tbaa !32
  %i.xd = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !96 ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !96 ; 4 uses
  %i.xi = shufflevector <16 x float> %i.sl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xj = shufflevector <16 x float> %i.sl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.vs ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.vs ; 2 uses
  %i.xm = load <8 x float>, ptr %i.xk, align 32, !tbaa !32
  %i.xn = fadd <8 x float> %i.xi, %i.xm
  store <8 x float> %i.xn, ptr %i.xk, align 32, !tbaa !32
  %i.xo = load <8 x float>, ptr %i.xl, align 32, !tbaa !32
  %i.xp = fadd <8 x float> %i.xo, %i.xj
  store <8 x float> %i.xp, ptr %i.xl, align 32, !tbaa !32
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.wa
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 32 ; 2 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.wa
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32 ; 2 uses
  %i.xu = load <8 x float>, ptr %i.xr, align 32, !tbaa !32
  %i.xv = fadd <8 x float> %i.xi, %i.xu
  store <8 x float> %i.xv, ptr %i.xr, align 32, !tbaa !32
  %i.xw = load <8 x float>, ptr %i.xt, align 32, !tbaa !32
  %i.xx = fadd <8 x float> %i.xw, %i.xj
  store <8 x float> %i.xx, ptr %i.xt, align 32, !tbaa !32
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.wk
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 64 ; 2 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.wk
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 64 ; 2 uses
  %i.yc = load <8 x float>, ptr %i.xz, align 32, !tbaa !32
  %i.yd = fadd <8 x float> %i.xi, %i.yc
  store <8 x float> %i.yd, ptr %i.xz, align 32, !tbaa !32
  %i.ye = load <8 x float>, ptr %i.yb, align 32, !tbaa !32
  %i.yf = fadd <8 x float> %i.ye, %i.xj
  store <8 x float> %i.yf, ptr %i.yb, align 32, !tbaa !32
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.wu
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 96 ; 2 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.wu
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 96 ; 2 uses
  %i.yk = load <8 x float>, ptr %i.yh, align 32, !tbaa !32
  %i.yl = fadd <8 x float> %i.xi, %i.yk
  store <8 x float> %i.yl, ptr %i.yh, align 32, !tbaa !32
  %i.ym = load <8 x float>, ptr %i.yj, align 32, !tbaa !32
  %i.yn = fadd <8 x float> %i.ym, %i.xj
  store <8 x float> %i.yn, ptr %i.yj, align 32, !tbaa !32
  %i.yo = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !96 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !96 ; 4 uses
  %i.ys = shufflevector <16 x float> %i.ur, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.yt = shufflevector <16 x float> %i.ur, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.vs ; 2 uses
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.vs ; 2 uses
  %i.yw = load <8 x float>, ptr %i.yu, align 32, !tbaa !32
  %i.yx = fadd <8 x float> %i.ys, %i.yw
  store <8 x float> %i.yx, ptr %i.yu, align 32, !tbaa !32
  %i.yy = load <8 x float>, ptr %i.yv, align 32, !tbaa !32
  %i.yz = fadd <8 x float> %i.yy, %i.yt
  store <8 x float> %i.yz, ptr %i.yv, align 32, !tbaa !32
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.wa
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 32 ; 2 uses
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.wa
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 32 ; 2 uses
  %i.ze = load <8 x float>, ptr %i.zb, align 32, !tbaa !32
  %i.zf = fadd <8 x float> %i.ys, %i.ze
  store <8 x float> %i.zf, ptr %i.zb, align 32, !tbaa !32
  %i.zg = load <8 x float>, ptr %i.zd, align 32, !tbaa !32
  %i.zh = fadd <8 x float> %i.zg, %i.yt
  store <8 x float> %i.zh, ptr %i.zd, align 32, !tbaa !32
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.wk
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 64 ; 2 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.wk
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 64 ; 2 uses
  %i.zm = load <8 x float>, ptr %i.zj, align 32, !tbaa !32
  %i.zn = fadd <8 x float> %i.ys, %i.zm
  store <8 x float> %i.zn, ptr %i.zj, align 32, !tbaa !32
  %i.zo = load <8 x float>, ptr %i.zl, align 32, !tbaa !32
  %i.zp = fadd <8 x float> %i.zo, %i.yt
  store <8 x float> %i.zp, ptr %i.zl, align 32, !tbaa !32
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.wu
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 96 ; 2 uses
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.wu
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 96 ; 2 uses
  %i.zu = load <8 x float>, ptr %i.zr, align 32, !tbaa !32
  %i.zv = fadd <8 x float> %i.ys, %i.zu
  store <8 x float> %i.zv, ptr %i.zr, align 32, !tbaa !32
  %i.zw = load <8 x float>, ptr %i.zt, align 32, !tbaa !32
  %i.zx = fadd <8 x float> %i.zw, %i.yt
  store <8 x float> %i.zx, ptr %i.zt, align 32, !tbaa !32
  %i.zy = fadd <16 x float> %i.sa, %i.uq
  %i.zz = fmul <16 x float> %i.re, %i.zy          ; 3 uses
  %i.aaa = fmul <16 x float> %i.rf, %i.sb         ; 3 uses
  %i.aab = fmul <16 x float> %i.ox, %i.zz         ; 2 uses
  %i.aac = fmul <16 x float> %i.oy, %i.aaa        ; 2 uses
  %i.aad = fmul <16 x float> %i.oz, %i.zz         ; 2 uses
  %i.aae = fmul <16 x float> %i.pa, %i.aaa        ; 2 uses
  %i.aaf = fmul <16 x float> %i.pb, %i.zz         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4898.preheader
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !96 ; 4 uses
  %i.ajr = shufflevector <16 x float> %i.aew, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ajs = shufflevector <16 x float> %i.aew, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.aib ; 2 uses
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.aib ; 2 uses
  %i.ajv = load <8 x float>, ptr %i.ajt, align 32, !tbaa !32
  %i.ajw = fadd <8 x float> %i.ajr, %i.ajv
  store <8 x float> %i.ajw, ptr %i.ajt, align 32, !tbaa !32
  %i.ajx = load <8 x float>, ptr %i.aju, align 32, !tbaa !32
  %i.ajy = fadd <8 x float> %i.ajx, %i.ajs
  store <8 x float> %i.ajy, ptr %i.aju, align 32, !tbaa !32
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.aij
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 32 ; 2 uses
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.aij
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 32 ; 2 uses
  %i.akd = load <8 x float>, ptr %i.aka, align 32, !tbaa !32
  %i.ake = fadd <8 x float> %i.ajr, %i.akd
  store <8 x float> %i.ake, ptr %i.aka, align 32, !tbaa !32
  %i.akf = load <8 x float>, ptr %i.akc, align 32, !tbaa !32
  %i.akg = fadd <8 x float> %i.akf, %i.ajs
  store <8 x float> %i.akg, ptr %i.akc, align 32, !tbaa !32
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.ait
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 64 ; 2 uses
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ait
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 64 ; 2 uses
  %i.akl = load <8 x float>, ptr %i.aki, align 32, !tbaa !32
  %i.akm = fadd <8 x float> %i.ajr, %i.akl
  store <8 x float> %i.akm, ptr %i.aki, align 32, !tbaa !32
  %i.akn = load <8 x float>, ptr %i.akk, align 32, !tbaa !32
  %i.ako = fadd <8 x float> %i.akn, %i.ajs
  store <8 x float> %i.ako, ptr %i.akk, align 32, !tbaa !32
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.ajd
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 96 ; 2 uses
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ajd
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 96 ; 2 uses
  %i.akt = load <8 x float>, ptr %i.akq, align 32, !tbaa !32
  %i.aku = fadd <8 x float> %i.ajr, %i.akt
  store <8 x float> %i.aku, ptr %i.akq, align 32, !tbaa !32
  %i.akv = load <8 x float>, ptr %i.aks, align 32, !tbaa !32
  %i.akw = fadd <8 x float> %i.akv, %i.ajs
  store <8 x float> %i.akw, ptr %i.aks, align 32, !tbaa !32
  %i.akx = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !96 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !96 ; 4 uses
  %i.alb = shufflevector <16 x float> %i.agz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.alc = shufflevector <16 x float> %i.agz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.aib ; 2 uses
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.aib ; 2 uses
  %i.alf = load <8 x float>, ptr %i.ald, align 32, !tbaa !32
  %i.alg = fadd <8 x float> %i.alb, %i.alf
  store <8 x float> %i.alg, ptr %i.ald, align 32, !tbaa !32
  %i.alh = load <8 x float>, ptr %i.ale, align 32, !tbaa !32
  %i.ali = fadd <8 x float> %i.alh, %i.alc
  store <8 x float> %i.ali, ptr %i.ale, align 32, !tbaa !32
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.aij
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 32 ; 2 uses
  %i.all = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.aij
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 32 ; 2 uses
  %i.aln = load <8 x float>, ptr %i.alk, align 32, !tbaa !32
  %i.alo = fadd <8 x float> %i.alb, %i.aln
  store <8 x float> %i.alo, ptr %i.alk, align 32, !tbaa !32
  %i.alp = load <8 x float>, ptr %i.alm, align 32, !tbaa !32
  %i.alq = fadd <8 x float> %i.alp, %i.alc
  store <8 x float> %i.alq, ptr %i.alm, align 32, !tbaa !32
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ait
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 64 ; 2 uses
  %i.alt = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.ait
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 64 ; 2 uses
  %i.alv = load <8 x float>, ptr %i.als, align 32, !tbaa !32
  %i.alw = fadd <8 x float> %i.alb, %i.alv
  store <8 x float> %i.alw, ptr %i.als, align 32, !tbaa !32
  %i.alx = load <8 x float>, ptr %i.alu, align 32, !tbaa !32
  %i.aly = fadd <8 x float> %i.alx, %i.alc
  store <8 x float> %i.aly, ptr %i.alu, align 32, !tbaa !32
  %i.alz = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ajd
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 96 ; 2 uses
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.ajd
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 96 ; 2 uses
  %i.amd = load <8 x float>, ptr %i.ama, align 32, !tbaa !32
  %i.ame = fadd <8 x float> %i.alb, %i.amd
  store <8 x float> %i.ame, ptr %i.ama, align 32, !tbaa !32
  %i.amf = load <8 x float>, ptr %i.amc, align 32, !tbaa !32
  %i.amg = fadd <8 x float> %i.amf, %i.alc
  store <8 x float> %i.amg, ptr %i.amc, align 32, !tbaa !32
  %i.amh = fadd <16 x float> %i.aen, %i.agy
  %i.ami = fmul <16 x float> %i.adt, %i.amh       ; 3 uses
  %i.amj = fmul <16 x float> %i.adu, %i.aeo       ; 3 uses
  %i.amk = fmul <16 x float> %i.abw, %i.ami       ; 2 uses
  %i.aml = fmul <16 x float> %i.abx, %i.amj       ; 2 uses
  %i.amm = fmul <16 x float> %i.aby, %i.ami       ; 2 uses
  %i.amn = fmul <16 x float> %i.abz, %i.amj       ; 2 uses
  %i.amo = fmul <16 x float> %i.aca, %i.ami       ; 2 uses
  %i.amp = fmul <16 x float> %i.acb, %i.amj       ; 2 uses
  %i.amq = fadd <16 x float> %.sroa.04248.15015, %i.amk ; 2 uses
  %i.amr = fadd <16 x float> %.sroa.164255.15014, %i.aml ; 2 uses
  %i.ams = fadd <16 x float> %.sroa.04230.15017, %i.amm ; 2 uses
  %i.amt = fadd <16 x float> %.sroa.164237.15016, %i.amn ; 2 uses
  %i.amu = fadd <16 x float> %.sroa.04213.15019, %i.amo ; 2 uses
  %i.amv = fadd <16 x float> %.sroa.16.15018, %i.amp ; 2 uses
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abp ; 4 uses
  %i.amx = fadd <16 x float> %i.aml, %i.amk       ; 2 uses
  %i.amy = fadd <16 x float> %i.amn, %i.amm       ; 2 uses
  %i.amz = fadd <16 x float> %i.amp, %i.amo       ; 2 uses
  %i.ana = load <8 x float>, ptr %i.amw, align 32, !tbaa !32
  %i.anb = shufflevector <16 x float> %i.amx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anc = shufflevector <16 x float> %i.amx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.and = fadd <8 x float> %i.anb, %i.anc
  %i.ane = fsub <8 x float> %i.ana, %i.and
  store <8 x float> %i.ane, ptr %i.amw, align 32, !tbaa !32
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amw, i64 32 ; 2 uses
  %i.ang = load <8 x float>, ptr %i.anf, align 32, !tbaa !32
  %i.anh = shufflevector <16 x float> %i.amy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ani = shufflevector <16 x float> %i.amy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anj = fadd <8 x float> %i.anh, %i.ani
  %i.ank = fsub <8 x float> %i.ang, %i.anj
  store <8 x float> %i.ank, ptr %i.anf, align 32, !tbaa !32
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amw, i64 64 ; 2 uses
  %i.anm = load <8 x float>, ptr %i.anl, align 32, !tbaa !32
  %i.ann = shufflevector <16 x float> %i.amz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ano = shufflevector <16 x float> %i.amz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anp = fadd <8 x float> %i.ann, %i.ano
  %i.anq = fsub <8 x float> %i.anm, %i.anp
  store <8 x float> %i.anq, ptr %i.anl, align 32, !tbaa !32
  %indvars.iv.next5117 = add nsw i64 %indvars.iv5116, 1 ; 2 uses
  %exitcond5120.not = icmp eq i64 %indvars.iv.next5117, %wide.trip.count5119
  br i1 %exitcond5120.not, label %.loopexit, label %.critedge610, !llvm.loop !18

bb.h:                                             ; preds = %.preheader4894
  br i1 %i.ec, label %.preheader4891, label %.preheader4893

.preheader4893:                                   ; preds = %bb.h
  br i1 %i.ob, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4893
  %wide.trip.count = sext i32 %i.cz to i64
  br label %bb.m

.preheader4891:                                   ; preds = %bb.h
  br i1 %i.ob, label %.lr.ph4953, label %.critedge3

.lr.ph4953:                                       ; preds = %.preheader4891
  %wide.trip.count5080 = sext i32 %i.cz to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph4953, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619
  %indvars.iv5077 = phi i64 [ %i.gb, %.lr.ph4953 ], [ %indvars.iv.next5078, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 4 uses
  %.sroa.04213.24951 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdn, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %.sroa.16.24950 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdo, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %.sroa.04230.24949 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %.sroa.164237.24948 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %.sroa.04248.24947 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %.sroa.164255.24946 = phi <16 x float> [ zeroinitializer, %.lr.ph4953 ], [ %i.bdk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619 ] ; 2 uses
  %i.anr = load ptr, ptr %i.bt, align 8, !tbaa !72
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.anr, i64 %indvars.iv5077
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !90
  %.not605 = icmp eq i32 %i.anu, -1
  br i1 %.not605, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614: ; preds = %bb.i
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %indvars.iv5077 ; 2 uses
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !98 ; 4 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anv, i64 4
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !124
  %i.anz = insertelement <16 x i32> poison, i32 %i.any, i64 0
  %i.aoa = shufflevector <16 x i32> %i.anz, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aob = and <16 x i32> %.sroa.05162.0.copyload, %i.aoa
  %.not5272 = icmp eq <16 x i32> %i.aob, zeroinitializer ; 5 uses
  %i.aoc = and <16 x i32> %.sroa.6.0.copyload, %i.aoa
  %.not5273 = icmp eq <16 x i32> %i.aoc, zeroinitializer ; 5 uses
  %i.aod = shl nsw i32 %i.anw, 3
  %i.aoe = mul nsw i32 %i.anw, 24
  %i.aof = sext i32 %i.aoe to i64                 ; 2 uses
  %i.aog = getelementptr [4 x i8], ptr %i.bs, i64 %i.aof ; 3 uses
  %.val7505431 = load <8 x float>, ptr %i.aog, align 32, !tbaa !32
  %i.aoh = shufflevector <8 x float> %.val7505431, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aoi = getelementptr i8, ptr %i.aog, i64 32
  %.val7515432 = load <8 x float>, ptr %i.aoi, align 32, !tbaa !32
  %i.aoj = shufflevector <8 x float> %.val7515432, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aog, i64 64
  %.val7525433 = load <8 x float>, ptr %i.aok, align 32, !tbaa !32
  %i.aol = shufflevector <8 x float> %.val7525433, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aom = fsub <16 x float> %i.kx, %i.aoh        ; 3 uses
  %i.aon = fsub <16 x float> %i.ld, %i.aoh        ; 3 uses
  %i.aoo = fsub <16 x float> %i.lk, %i.aoj        ; 3 uses
  %i.aop = fsub <16 x float> %i.lq, %i.aoj        ; 3 uses
  %i.aoq = fsub <16 x float> %i.lx, %i.aol        ; 3 uses
  %i.aor = fsub <16 x float> %i.md, %i.aol        ; 3 uses
  %i.aos = fmul <16 x float> %i.aom, %i.aom
  %i.aot = fmul <16 x float> %i.aoo, %i.aoo
  %i.aou = fadd <16 x float> %i.aos, %i.aot
  %i.aov = fmul <16 x float> %i.aoq, %i.aoq
  %i.aow = fadd <16 x float> %i.aou, %i.aov       ; 2 uses
  %i.aox = fmul <16 x float> %i.aon, %i.aon
  %i.aoy = fmul <16 x float> %i.aop, %i.aop
  %i.aoz = fadd <16 x float> %i.aox, %i.aoy
  %i.apa = fmul <16 x float> %i.aor, %i.aor
  %i.apb = fadd <16 x float> %i.aoz, %i.apa       ; 2 uses
  %i.apc = fcmp olt <16 x float> %i.aow, %i.bj
  %i.apd = bitcast <16 x i1> %i.apc to i16        ; 3 uses
  %i.ape = fcmp olt <16 x float> %i.apb, %i.bj
  %i.apf = bitcast <16 x i1> %i.ape to i16        ; 3 uses
  %i.apg = shl nsw i32 %i.anw, 1                  ; 3 uses
  %i.aph = icmp eq i32 %i.apg, %i.dc
  br i1 %i.aph, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.api = and i16 %i.apd, %i.v
  %i.apj = and i16 %i.apf, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.apk = or disjoint i32 %i.apg, 1
  %i.apl = icmp eq i32 %i.apk, %i.dc
  br i1 %i.apl, label %bb.l, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619

bb.l:                                             ; preds = %bb.k
  %i.apm = and i16 %i.apd, %i.x
  %i.apn = and i16 %i.apf, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit619: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.104868.0 = phi i16 [ %i.apj, %bb.j ], [ %i.apn, %bb.l ], [ %i.apf, %bb.k ]
  %.sroa.04865.0 = phi i16 [ %i.api, %bb.j ], [ %i.apm, %bb.l ], [ %i.apd, %bb.k ]
  %i.apo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aow, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.app = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.apb, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.apq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.apo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.apr = fmul <16 x float> %i.apo, %i.apq
  %i.aps = fmul <16 x float> %i.apq, splat (float -5.000000e-01)
  %i.apt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apr, <16 x float> %i.apq, <16 x float> splat (float -3.000000e+00))
  %i.apu = fmul <16 x float> %i.aps, %i.apt
  %i.apv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.app, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.apw = fmul <16 x float> %i.app, %i.apv
  %i.apx = fmul <16 x float> %i.apv, splat (float -5.000000e-01)
  %i.apy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apw, <16 x float> %i.apv, <16 x float> splat (float -3.000000e+00))
  %i.apz = fmul <16 x float> %i.apx, %i.apy
  %i.aqa = sext i32 %i.aod to i64                 ; 2 uses
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.aqa
  %.val7535434 = load <8 x float>, ptr %i.aqb, align 32, !tbaa !32
  %7 = bitcast i16 %.sroa.04865.0 to <16 x i1>    ; 3 uses
  %i.aqc = select <16 x i1> %7, <16 x float> %i.apu, <16 x float> zeroinitializer ; 4 uses
  %8 = bitcast i16 %.sroa.104868.0 to <16 x i1>   ; 3 uses
  %i.aqd = select <16 x i1> %8, <16 x float> %i.apz, <16 x float> zeroinitializer ; 4 uses
  %i.aqe = fmul <16 x float> %i.apo, %i.aqc       ; 2 uses
  %i.aqf = fmul <16 x float> %i.app, %i.aqd       ; 2 uses
  %i.aqg = fmul <16 x float> %i.ad, %i.aqe        ; 2 uses
  %i.aqh = fmul <16 x float> %i.ad, %i.aqf        ; 2 uses
  %i.aqi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aqg, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aqj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aqh, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aqk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.aqi, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aql = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cr, <16 x i32> %i.aqi, <16 x i1> splat (i1 true), i32 4)
  %i.aqm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.aqi, <16 x i1> splat (i1 true), i32 4)
  %i.aqn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.aqj, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aqo = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cr, <16 x i32> %i.aqj, <16 x i1> splat (i1 true), i32 4)
  %i.aqp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.aqj, <16 x i1> splat (i1 true), i32 4)
  %i.aqq = fsub <16 x float> %i.aql, %i.aqk
  %i.aqr = fsub <16 x float> %i.aqo, %i.aqn
  %i.aqs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aqa
  %.val7714880 = load <8 x i32>, ptr %i.aqs, align 32, !tbaa !32 ; 4 uses
  %i.aqt = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mx, <8 x i32> %.val7714880, <8 x i1> splat (i1 true), i32 8)
  %i.aqu = bitcast <8 x double> %i.aqt to <16 x float> ; 2 uses
  %i.aqv = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nd, <8 x i32> %.val7714880, <8 x i1> splat (i1 true), i32 8)
  %i.aqw = bitcast <8 x double> %i.aqv to <16 x float> ; 2 uses
  %i.aqx = shufflevector <16 x float> %i.aqu, <16 x float> %i.aqw, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.aqy = shufflevector <16 x float> %i.aqu, <16 x float> %i.aqw, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.aqz = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nj, <8 x i32> %.val7714880, <8 x i1> splat (i1 true), i32 8)
  %i.ara = bitcast <8 x double> %i.aqz to <16 x float> ; 2 uses
  %i.arb = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.np, <8 x i32> %.val7714880, <8 x i1> splat (i1 true), i32 8)
  %i.arc = bitcast <8 x double> %i.arb to <16 x float> ; 2 uses
  %i.ard = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.are = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.arf = shufflevector <8 x float> %.val7535434, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arg = fmul <16 x float> %.sroa.04464.0, %i.arf ; 2 uses
  %i.arh = fmul <16 x float> %.sroa.74468.0, %i.arf ; 2 uses
  %i.ari = fmul <16 x float> %i.aqc, %i.aqc       ; 4 uses
  %i.arj = fmul <16 x float> %i.aqd, %i.aqd       ; 4 uses
  %i.ark = select <16 x i1> %.not5272, <16 x float> zeroinitializer, <16 x float> %i.aqc ; 2 uses
  %i.arl = select <16 x i1> %.not5273, <16 x float> zeroinitializer, <16 x float> %i.aqd ; 2 uses
  %i.arm = sitofp <16 x i32> %i.aqi to <16 x float>
  %i.arn = sitofp <16 x i32> %i.aqj to <16 x float>
  %i.aro = fsub <16 x float> %i.aqg, %i.arm       ; 2 uses
  %i.arp = fsub <16 x float> %i.aqh, %i.arn       ; 2 uses
  %i.arq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aro, <16 x float> %i.aqq, <16 x float> %i.aqk) ; 2 uses
  %i.arr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arp, <16 x float> %i.aqr, <16 x float> %i.aqn) ; 2 uses
  %i.ars = fneg <16 x float> %i.arq
  %i.art = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ars, <16 x float> %i.aqe, <16 x float> %i.ark)
  %i.aru = fneg <16 x float> %i.arr
  %i.arv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aru, <16 x float> %i.aqf, <16 x float> %i.arl)
  %i.arw = fmul <16 x float> %i.ag, %i.aro
  %i.arx = fadd <16 x float> %i.aqk, %i.arq
  %i.ary = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arw, <16 x float> %i.arx, <16 x float> %i.aqm)
  %i.arz = fmul <16 x float> %i.ag, %i.arp
  %i.asa = fadd <16 x float> %i.aqn, %i.arr
  %i.asb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arz, <16 x float> %i.asa, <16 x float> %i.aqp)
  %i.asc = fmul <16 x float> %i.arg, %i.art
  %i.asd = fmul <16 x float> %i.arh, %i.arv
  %i.ase = select <16 x i1> %.not5272, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.asf = fadd <16 x float> %i.ase, %i.ary
  %i.asg = select <16 x i1> %.not5273, <16 x float> zeroinitializer, <16 x float> %i.ap
  %i.ash = fadd <16 x float> %i.asg, %i.asb
  %i.asi = fsub <16 x float> %i.ark, %i.asf
  %i.asj = fmul <16 x float> %i.arg, %i.asi
  %i.ask = fsub <16 x float> %i.arl, %i.ash
  %i.asl = fmul <16 x float> %i.arh, %i.ask
  %i.asm = select <16 x i1> %7, <16 x float> %i.asj, <16 x float> zeroinitializer ; 2 uses
  %i.asn = select <16 x i1> %8, <16 x float> %i.asl, <16 x float> zeroinitializer ; 2 uses
  %i.aso = fcmp olt <16 x float> %i.apo, %i.bo    ; 2 uses
  %i.asp = fcmp olt <16 x float> %i.app, %i.bo    ; 2 uses
  %i.asq = shl nsw i32 %i.anw, 4
  %i.asr = fmul <16 x float> %i.ari, %i.ari
  %i.ass = fmul <16 x float> %i.ari, %i.asr       ; 4 uses
  %i.ast = fmul <16 x float> %i.arj, %i.arj
  %i.asu = fmul <16 x float> %i.arj, %i.ast       ; 4 uses
  %i.asv = select <16 x i1> %.not5272, <16 x float> zeroinitializer, <16 x float> %i.ass ; 3 uses
  %i.asw = select <16 x i1> %.not5273, <16 x float> zeroinitializer, <16 x float> %i.asu ; 3 uses
  %i.asx = fmul <16 x float> %i.asv, %i.asv
  %i.asy = fmul <16 x float> %i.asw, %i.asw
  %i.asz = fmul <16 x float> %i.asv, %i.aqx       ; 2 uses
  %i.ata = fmul <16 x float> %i.asw, %i.ard       ; 2 uses
  %i.atb = fmul <16 x float> %i.asx, %i.aqy       ; 2 uses
  %i.atc = fmul <16 x float> %i.asy, %i.are       ; 2 uses
  %i.atd = fsub <16 x float> %i.atb, %i.asz
  %i.ate = fsub <16 x float> %i.atc, %i.ata
  %i.atf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqx, <16 x float> %i.as, <16 x float> %i.asz)
  %i.atg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ard, <16 x float> %i.as, <16 x float> %i.ata)
  %i.ath = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqy, <16 x float> %i.av, <16 x float> %i.atb)
  %i.ati = fmul <16 x float> %i.atf, splat (float f0xBE2AAAAB)
  %i.atj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ath, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ati)
  %i.atk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.are, <16 x float> %i.av, <16 x float> %i.atc)
  %i.atl = fmul <16 x float> %i.atg, splat (float f0xBE2AAAAB)
  %i.atm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atk, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.atl)
  %i.atn = select <16 x i1> %.not5272, <16 x float> zeroinitializer, <16 x float> %i.atj
  %i.ato = select <16 x i1> %.not5273, <16 x float> zeroinitializer, <16 x float> %i.atm
  %i.atp = sext i32 %i.asq to i64
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.atp
  %.val7545435 = load <8 x float>, ptr %i.atq, align 32, !tbaa !32
  %i.atr = shufflevector <8 x float> %.val7545435, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ats = fmul <16 x float> %i.nv, %i.atr        ; 2 uses
  %i.att = fmul <16 x float> %i.oa, %i.atr        ; 2 uses
  %i.atu = select <16 x i1> %7, <16 x float> %i.apo, <16 x float> zeroinitializer
  %i.atv = fmul <16 x float> %i.bd, %i.atu        ; 3 uses
  %i.atw = bitcast <16 x float> %i.atv to <8 x i64>
  %i.atx = select <16 x i1> %8, <16 x float> %i.app, <16 x float> zeroinitializer
  %i.aty = fmul <16 x float> %i.bd, %i.atx        ; 3 uses
  %i.atz = bitcast <16 x float> %i.aty to <8 x i64>
  %i.aua = xor <8 x i64> %i.atw, splat (i64 -9223372034707292160)
  %i.aub = bitcast <8 x i64> %i.aua to <16 x float> ; 2 uses
  %i.auc = fmul <16 x float> %i.aub, splat (float f0x3FB8AA3B) ; 2 uses
  %i.aud = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.auc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aue = shl <16 x i32> %i.aud, splat (i32 23)
  %i.auf = add <16 x i32> %i.aue, splat (i32 1065353216)
  %i.aug = bitcast <16 x i32> %i.auf to <16 x float> ; 2 uses
  %i.auh = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.auc, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.aui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auh, <16 x float> splat (float f0xBF317200), <16 x float> %i.aub)
  %i.auj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auh, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.aui) ; 7 uses
  %i.auk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auj, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auk, <16 x float> %i.auj, <16 x float> splat (float f0x3D2AAF4C))
  %i.aum = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aul, <16 x float> %i.auj, <16 x float> splat (float f0x3E2AAA5E))
  %i.aun = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aum, <16 x float> %i.auj, <16 x float> splat (float f0x3EFFFFFB))
  %i.auo = fmul <16 x float> %i.auj, %i.auj
  %i.aup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auo, <16 x float> %i.aun, <16 x float> %i.auj)
  %i.auq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> %i.aug, <16 x float> %i.aug)
  %i.aur = xor <8 x i64> %i.atz, splat (i64 -9223372034707292160)
  %i.aus = bitcast <8 x i64> %i.aur to <16 x float> ; 2 uses
  %i.aut = fmul <16 x float> %i.aus, splat (float f0x3FB8AA3B) ; 2 uses
  %i.auu = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aut, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.auv = shl <16 x i32> %i.auu, splat (i32 23)
  %i.auw = add <16 x i32> %i.auv, splat (i32 1065353216)
  %i.aux = bitcast <16 x i32> %i.auw to <16 x float> ; 2 uses
  %i.auy = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aut, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auy, <16 x float> splat (float f0xBF317200), <16 x float> %i.aus)
  %i.ava = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auy, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.auz) ; 7 uses
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ava, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.avc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avb, <16 x float> %i.ava, <16 x float> splat (float f0x3D2AAF4C))
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avc, <16 x float> %i.ava, <16 x float> splat (float f0x3E2AAA5E))
  %i.ave = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avd, <16 x float> %i.ava, <16 x float> splat (float f0x3EFFFFFB))
  %i.avf = fmul <16 x float> %i.ava, %i.ava
  %i.avg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avf, <16 x float> %i.ave, <16 x float> %i.ava)
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avg, <16 x float> %i.aux, <16 x float> %i.aux)
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atv, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avi, <16 x float> %i.atv, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.avk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.avl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avk, <16 x float> %i.aty, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.avm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ass, <16 x float> %i.avj, <16 x float> %i.bf)
  %i.avn = fneg <16 x float> %i.auq               ; 2 uses
  %i.avo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avn, <16 x float> %i.avm, <16 x float> %i.ass)
  %i.avp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ats, <16 x float> %i.avo, <16 x float> %i.atd)
  %i.avq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asu, <16 x float> %i.avl, <16 x float> %i.bf)
  %i.avr = fneg <16 x float> %i.avh               ; 2 uses
  %i.avs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.avq, <16 x float> %i.asu)
  %i.avt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.att, <16 x float> %i.avs, <16 x float> %i.ate)
  %i.avu = select <16 x i1> %.not5272, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.avv = select <16 x i1> %.not5273, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.avw = fmul <16 x float> %i.ats, splat (float f0x3E2AAAAB)
  %i.avx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avn, <16 x float> %i.avj, <16 x float> splat (float 1.000000e+00))
  %i.avy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ass, <16 x float> %i.avx, <16 x float> %i.avu)
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avw, <16 x float> %i.avy, <16 x float> %i.atn)
  %i.awa = fmul <16 x float> %i.att, splat (float f0x3E2AAAAB)
  %i.awb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.avl, <16 x float> splat (float 1.000000e+00))
  %i.awc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asu, <16 x float> %i.awb, <16 x float> %i.avv)
  %i.awd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awa, <16 x float> %i.awc, <16 x float> %i.ato)
  %i.awe = select <16 x i1> %i.aso, <16 x float> %i.avp, <16 x float> zeroinitializer
  %i.awf = select <16 x i1> %i.asp, <16 x float> %i.avt, <16 x float> zeroinitializer
  %i.awg = select <16 x i1> %i.aso, <16 x float> %i.avz, <16 x float> zeroinitializer ; 2 uses
  %i.awh = select <16 x i1> %i.asp, <16 x float> %i.awd, <16 x float> zeroinitializer ; 2 uses
  %i.awi = load ptr, ptr %i.cb, align 8, !tbaa !89
  %i.awj = load i32, ptr %i.cp, align 8, !tbaa !125
  %i.awk = sext i32 %i.apg to i64
  %i.awl = getelementptr inbounds [4 x i8], ptr %i.awi, i64 %i.awk
  %i.awm = load i32, ptr %i.cq, align 4, !tbaa !126
  %i.awn = load i32, ptr %i.cl, align 8, !tbaa !99
  %i.awo = load <2 x i32>, ptr %i.awl, align 4, !tbaa !90 ; 2 uses
  %i.awp = insertelement <2 x i32> poison, i32 %i.awj, i64 0
  %i.awq = shufflevector <2 x i32> %i.awo, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.awr = shufflevector <2 x i32> %i.awo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aws = shufflevector <2 x i32> %i.awp, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.awt = ashr <4 x i32> %i.awr, %i.aws
  %i.awu = shufflevector <4 x i32> %i.awt, <4 x i32> %i.awq, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.awv = insertelement <4 x i32> poison, i32 %i.awm, i64 0
  %i.aww = shufflevector <4 x i32> %i.awv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awx = and <4 x i32> %i.awu, %i.aww
  %i.awy = insertelement <4 x i32> poison, i32 %i.awn, i64 0
  %i.awz = shufflevector <4 x i32> %i.awy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axa = mul nsw <4 x i32> %i.awx, %i.awz       ; 4 uses
  %i.axb = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !96 ; 4 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !96 ; 4 uses
  %i.axf = shufflevector <16 x float> %i.asm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.axg = shufflevector <16 x float> %i.asm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.axh = extractelement <4 x i32> %i.axa, i64 0
  %i.axi = sext i32 %i.axh to i64                 ; 8 uses
  %i.axj = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.axi ; 2 uses
  %i.axk = getelementptr inbounds [4 x i8], ptr %i.axe, i64 %i.axi ; 2 uses
  %i.axl = load <8 x float>, ptr %i.axj, align 32, !tbaa !32
  %i.axm = fadd <8 x float> %i.axf, %i.axl
  store <8 x float> %i.axm, ptr %i.axj, align 32, !tbaa !32
  %i.axn = load <8 x float>, ptr %i.axk, align 32, !tbaa !32
  %i.axo = fadd <8 x float> %i.axn, %i.axg
  store <8 x float> %i.axo, ptr %i.axk, align 32, !tbaa !32
  %i.axp = extractelement <4 x i32> %i.axa, i64 1
  %i.axq = sext i32 %i.axp to i64                 ; 8 uses
  %i.axr = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 32 ; 2 uses
  %i.axt = getelementptr inbounds [4 x i8], ptr %i.axe, i64 %i.axq
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 32 ; 2 uses
  %i.axv = load <8 x float>, ptr %i.axs, align 32, !tbaa !32
  %i.axw = fadd <8 x float> %i.axf, %i.axv
  store <8 x float> %i.axw, ptr %i.axs, align 32, !tbaa !32
  %i.axx = load <8 x float>, ptr %i.axu, align 32, !tbaa !32
  %i.axy = fadd <8 x float> %i.axx, %i.axg
  store <8 x float> %i.axy, ptr %i.axu, align 32, !tbaa !32
  %i.axz = extractelement <4 x i32> %i.axa, i64 2
  %i.aya = sext i32 %i.axz to i64                 ; 8 uses
  %i.ayb = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 64 ; 2 uses
  %i.ayd = getelementptr inbounds [4 x i8], ptr %i.axe, i64 %i.aya
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 64 ; 2 uses
  %i.ayf = load <8 x float>, ptr %i.ayc, align 32, !tbaa !32
  %i.ayg = fadd <8 x float> %i.axf, %i.ayf
  store <8 x float> %i.ayg, ptr %i.ayc, align 32, !tbaa !32
  %i.ayh = load <8 x float>, ptr %i.aye, align 32, !tbaa !32
  %i.ayi = fadd <8 x float> %i.ayh, %i.axg
  store <8 x float> %i.ayi, ptr %i.aye, align 32, !tbaa !32
  %i.ayj = extractelement <4 x i32> %i.axa, i64 3
  %i.ayk = sext i32 %i.ayj to i64                 ; 8 uses
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.axc, i64 %i.ayk
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 96 ; 2 uses
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.axe, i64 %i.ayk
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 96 ; 2 uses
  %i.ayp = load <8 x float>, ptr %i.aym, align 32, !tbaa !32
  %i.ayq = fadd <8 x float> %i.axf, %i.ayp
  store <8 x float> %i.ayq, ptr %i.aym, align 32, !tbaa !32
  %i.ayr = load <8 x float>, ptr %i.ayo, align 32, !tbaa !32
  %i.ays = fadd <8 x float> %i.ayr, %i.axg
  store <8 x float> %i.ays, ptr %i.ayo, align 32, !tbaa !32
  %i.ayt = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 16
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !96 ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 24
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !96 ; 4 uses
  %i.ayy = shufflevector <16 x float> %i.asn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ayz = shufflevector <16 x float> %i.asn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aza = getelementptr inbounds [4 x i8], ptr %i.ayv, i64 %i.axi ; 2 uses
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.ayx, i64 %i.axi ; 2 uses
  %i.azc = load <8 x float>, ptr %i.aza, align 32, !tbaa !32
  %i.azd = fadd <8 x float> %i.ayy, %i.azc
  store <8 x float> %i.azd, ptr %i.aza, align 32, !tbaa !32
  %i.aze = load <8 x float>, ptr %i.azb, align 32, !tbaa !32
  %i.azf = fadd <8 x float> %i.aze, %i.ayz
  store <8 x float> %i.azf, ptr %i.azb, align 32, !tbaa !32
  %i.azg = getelementptr inbounds [4 x i8], ptr %i.ayv, i64 %i.axq
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 32 ; 2 uses
  %i.azi = getelementptr inbounds [4 x i8], ptr %i.ayx, i64 %i.axq
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 32 ; 2 uses
  %i.azk = load <8 x float>, ptr %i.azh, align 32, !tbaa !32
  %i.azl = fadd <8 x float> %i.ayy, %i.azk
  store <8 x float> %i.azl, ptr %i.azh, align 32, !tbaa !32
  %i.azm = load <8 x float>, ptr %i.azj, align 32, !tbaa !32
  %i.azn = fadd <8 x float> %i.azm, %i.ayz
  store <8 x float> %i.azn, ptr %i.azj, align 32, !tbaa !32
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.ayv, i64 %i.aya
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 64 ; 2 uses
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.ayx, i64 %i.aya
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 64 ; 2 uses
  %i.azs = load <8 x float>, ptr %i.azp, align 32, !tbaa !32
  %i.azt = fadd <8 x float> %i.ayy, %i.azs
  store <8 x float> %i.azt, ptr %i.azp, align 32, !tbaa !32
  %i.azu = load <8 x float>, ptr %i.azr, align 32, !tbaa !32
  %i.azv = fadd <8 x float> %i.azu, %i.ayz
  store <8 x float> %i.azv, ptr %i.azr, align 32, !tbaa !32
  %i.azw = getelementptr inbounds [4 x i8], ptr %i.ayv, i64 %i.ayk
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 96 ; 2 uses
  %i.azy = getelementptr inbounds [4 x i8], ptr %i.ayx, i64 %i.ayk
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 96 ; 2 uses
  %i.baa = load <8 x float>, ptr %i.azx, align 32, !tbaa !32
  %i.bab = fadd <8 x float> %i.ayy, %i.baa
  store <8 x float> %i.bab, ptr %i.azx, align 32, !tbaa !32
  %i.bac = load <8 x float>, ptr %i.azz, align 32, !tbaa !32
  %i.bad = fadd <8 x float> %i.bac, %i.ayz
  store <8 x float> %i.bad, ptr %i.azz, align 32, !tbaa !32
  %i.bae = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !96 ; 4 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !96 ; 4 uses
  %i.bai = shufflevector <16 x float> %i.awg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.baj = shufflevector <16 x float> %i.awg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bak = getelementptr inbounds [4 x i8], ptr %i.baf, i64 %i.axi ; 2 uses
  %i.bal = getelementptr inbounds [4 x i8], ptr %i.bah, i64 %i.axi ; 2 uses
  %i.bam = load <8 x float>, ptr %i.bak, align 32, !tbaa !32
  %i.ban = fadd <8 x float> %i.bai, %i.bam
  store <8 x float> %i.ban, ptr %i.bak, align 32, !tbaa !32
  %i.bao = load <8 x float>, ptr %i.bal, align 32, !tbaa !32
  %i.bap = fadd <8 x float> %i.bao, %i.baj
  store <8 x float> %i.bap, ptr %i.bal, align 32, !tbaa !32
  %i.baq = getelementptr inbounds [4 x i8], ptr %i.baf, i64 %i.axq
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 32 ; 2 uses
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.bah, i64 %i.axq
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 32 ; 2 uses
  %i.bau = load <8 x float>, ptr %i.bar, align 32, !tbaa !32
  %i.bav = fadd <8 x float> %i.bai, %i.bau
  store <8 x float> %i.bav, ptr %i.bar, align 32, !tbaa !32
  %i.baw = load <8 x float>, ptr %i.bat, align 32, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4898.preheader
  %i.bpn = load <8 x float>, ptr %i.bpk, align 32, !tbaa !32
  %i.bpo = fadd <8 x float> %i.bpn, %i.bos
  store <8 x float> %i.bpo, ptr %i.bpk, align 32, !tbaa !32
  %i.bpp = getelementptr inbounds [4 x i8], ptr %i.boo, i64 %i.bod
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 96 ; 2 uses
  %i.bpr = getelementptr inbounds [4 x i8], ptr %i.boq, i64 %i.bod
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 96 ; 2 uses
  %i.bpt = load <8 x float>, ptr %i.bpq, align 32, !tbaa !32
  %i.bpu = fadd <8 x float> %i.bor, %i.bpt
  store <8 x float> %i.bpu, ptr %i.bpq, align 32, !tbaa !32
  %i.bpv = load <8 x float>, ptr %i.bps, align 32, !tbaa !32
  %i.bpw = fadd <8 x float> %i.bpv, %i.bos
  store <8 x float> %i.bpw, ptr %i.bps, align 32, !tbaa !32
  %i.bpx = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !96 ; 4 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpx, i64 8
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !96 ; 4 uses
  %i.bqb = shufflevector <16 x float> %i.bly, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bqc = shufflevector <16 x float> %i.bly, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.bpy, i64 %i.bnb ; 2 uses
  %i.bqe = getelementptr inbounds [4 x i8], ptr %i.bqa, i64 %i.bnb ; 2 uses
  %i.bqf = load <8 x float>, ptr %i.bqd, align 32, !tbaa !32
  %i.bqg = fadd <8 x float> %i.bqb, %i.bqf
  store <8 x float> %i.bqg, ptr %i.bqd, align 32, !tbaa !32
  %i.bqh = load <8 x float>, ptr %i.bqe, align 32, !tbaa !32
  %i.bqi = fadd <8 x float> %i.bqh, %i.bqc
  store <8 x float> %i.bqi, ptr %i.bqe, align 32, !tbaa !32
  %i.bqj = getelementptr inbounds [4 x i8], ptr %i.bpy, i64 %i.bnj
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 32 ; 2 uses
  %i.bql = getelementptr inbounds [4 x i8], ptr %i.bqa, i64 %i.bnj
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 32 ; 2 uses
  %i.bqn = load <8 x float>, ptr %i.bqk, align 32, !tbaa !32
  %i.bqo = fadd <8 x float> %i.bqb, %i.bqn
  store <8 x float> %i.bqo, ptr %i.bqk, align 32, !tbaa !32
  %i.bqp = load <8 x float>, ptr %i.bqm, align 32, !tbaa !32
  %i.bqq = fadd <8 x float> %i.bqp, %i.bqc
  store <8 x float> %i.bqq, ptr %i.bqm, align 32, !tbaa !32
  %i.bqr = getelementptr inbounds [4 x i8], ptr %i.bpy, i64 %i.bnt
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 64 ; 2 uses
  %i.bqt = getelementptr inbounds [4 x i8], ptr %i.bqa, i64 %i.bnt
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 64 ; 2 uses
  %i.bqv = load <8 x float>, ptr %i.bqs, align 32, !tbaa !32
  %i.bqw = fadd <8 x float> %i.bqb, %i.bqv
  store <8 x float> %i.bqw, ptr %i.bqs, align 32, !tbaa !32
  %i.bqx = load <8 x float>, ptr %i.bqu, align 32, !tbaa !32
  %i.bqy = fadd <8 x float> %i.bqx, %i.bqc
  store <8 x float> %i.bqy, ptr %i.bqu, align 32, !tbaa !32
  %i.bqz = getelementptr inbounds [4 x i8], ptr %i.bpy, i64 %i.bod
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 96 ; 2 uses
  %i.brb = getelementptr inbounds [4 x i8], ptr %i.bqa, i64 %i.bod
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 96 ; 2 uses
  %i.brd = load <8 x float>, ptr %i.bra, align 32, !tbaa !32
  %i.bre = fadd <8 x float> %i.bqb, %i.brd
  store <8 x float> %i.bre, ptr %i.bra, align 32, !tbaa !32
  %i.brf = load <8 x float>, ptr %i.brc, align 32, !tbaa !32
  %i.brg = fadd <8 x float> %i.brf, %i.bqc
  store <8 x float> %i.brg, ptr %i.brc, align 32, !tbaa !32
  %i.brh = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 16
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !96 ; 4 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brh, i64 24
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !96 ; 4 uses
  %i.brm = shufflevector <16 x float> %i.blz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.brn = shufflevector <16 x float> %i.blz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bro = getelementptr inbounds [4 x i8], ptr %i.brj, i64 %i.bnb ; 2 uses
  %i.brp = getelementptr inbounds [4 x i8], ptr %i.brl, i64 %i.bnb ; 2 uses
  %i.brq = load <8 x float>, ptr %i.bro, align 32, !tbaa !32
  %i.brr = fadd <8 x float> %i.brm, %i.brq
  store <8 x float> %i.brr, ptr %i.bro, align 32, !tbaa !32
  %i.brs = load <8 x float>, ptr %i.brp, align 32, !tbaa !32
  %i.brt = fadd <8 x float> %i.brs, %i.brn
  store <8 x float> %i.brt, ptr %i.brp, align 32, !tbaa !32
  %i.bru = getelementptr inbounds [4 x i8], ptr %i.brj, i64 %i.bnj
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 32 ; 2 uses
  %i.brw = getelementptr inbounds [4 x i8], ptr %i.brl, i64 %i.bnj
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 32 ; 2 uses
  %i.bry = load <8 x float>, ptr %i.brv, align 32, !tbaa !32
  %i.brz = fadd <8 x float> %i.brm, %i.bry
  store <8 x float> %i.brz, ptr %i.brv, align 32, !tbaa !32
  %i.bsa = load <8 x float>, ptr %i.brx, align 32, !tbaa !32
  %i.bsb = fadd <8 x float> %i.bsa, %i.brn
  store <8 x float> %i.bsb, ptr %i.brx, align 32, !tbaa !32
  %i.bsc = getelementptr inbounds [4 x i8], ptr %i.brj, i64 %i.bnt
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 64 ; 2 uses
  %i.bse = getelementptr inbounds [4 x i8], ptr %i.brl, i64 %i.bnt
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 64 ; 2 uses
  %i.bsg = load <8 x float>, ptr %i.bsd, align 32, !tbaa !32
  %i.bsh = fadd <8 x float> %i.brm, %i.bsg
  store <8 x float> %i.bsh, ptr %i.bsd, align 32, !tbaa !32
  %i.bsi = load <8 x float>, ptr %i.bsf, align 32, !tbaa !32
  %i.bsj = fadd <8 x float> %i.bsi, %i.brn
  store <8 x float> %i.bsj, ptr %i.bsf, align 32, !tbaa !32
  %i.bsk = getelementptr inbounds [4 x i8], ptr %i.brj, i64 %i.bod
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 96 ; 2 uses
  %i.bsm = getelementptr inbounds [4 x i8], ptr %i.brl, i64 %i.bod
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsm, i64 96 ; 2 uses
  %i.bso = load <8 x float>, ptr %i.bsl, align 32, !tbaa !32
  %i.bsp = fadd <8 x float> %i.brm, %i.bso
  store <8 x float> %i.bsp, ptr %i.bsl, align 32, !tbaa !32
  %i.bsq = load <8 x float>, ptr %i.bsn, align 32, !tbaa !32
  %i.bsr = fadd <8 x float> %i.bsq, %i.brn
  store <8 x float> %i.bsr, ptr %i.bsn, align 32, !tbaa !32
  %i.bss = fadd <16 x float> %i.bic, %i.blw
  %i.bst = fmul <16 x float> %i.bhk, %i.bss       ; 3 uses
  %i.bsu = fadd <16 x float> %i.bid, %i.blx
  %i.bsv = fmul <16 x float> %i.bhl, %i.bsu       ; 3 uses
  %i.bsw = fmul <16 x float> %i.bey, %i.bst       ; 2 uses
  %i.bsx = fmul <16 x float> %i.bez, %i.bsv       ; 2 uses
  %i.bsy = fmul <16 x float> %i.bfa, %i.bst       ; 2 uses
  %i.bsz = fmul <16 x float> %i.bfb, %i.bsv       ; 2 uses
  %i.bta = fmul <16 x float> %i.bfc, %i.bst       ; 2 uses
  %i.btb = fmul <16 x float> %i.bfd, %i.bsv       ; 2 uses
  %i.btc = fadd <16 x float> %.sroa.04248.34973, %i.bsw ; 2 uses
  %i.btd = fadd <16 x float> %.sroa.164255.34972, %i.bsx ; 2 uses
  %i.bte = fadd <16 x float> %.sroa.04230.34975, %i.bsy ; 2 uses
  %i.btf = fadd <16 x float> %.sroa.164237.34974, %i.bsz ; 2 uses
  %i.btg = fadd <16 x float> %.sroa.04213.34977, %i.bta ; 2 uses
  %i.bth = fadd <16 x float> %.sroa.16.34976, %i.btb ; 2 uses
  %i.bti = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ber ; 4 uses
  %i.btj = fadd <16 x float> %i.bsw, %i.bsx       ; 2 uses
  %i.btk = fadd <16 x float> %i.bsy, %i.bsz       ; 2 uses
  %i.btl = fadd <16 x float> %i.bta, %i.btb       ; 2 uses
  %i.btm = load <8 x float>, ptr %i.bti, align 32, !tbaa !32
  %i.btn = shufflevector <16 x float> %i.btj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bto = shufflevector <16 x float> %i.btj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btp = fadd <8 x float> %i.btn, %i.bto
  %i.btq = fsub <8 x float> %i.btm, %i.btp
  store <8 x float> %i.btq, ptr %i.bti, align 32, !tbaa !32
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bti, i64 32 ; 2 uses
  %i.bts = load <8 x float>, ptr %i.btr, align 32, !tbaa !32
  %i.btt = shufflevector <16 x float> %i.btk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btu = shufflevector <16 x float> %i.btk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btv = fadd <8 x float> %i.btt, %i.btu
  %i.btw = fsub <8 x float> %i.bts, %i.btv
  store <8 x float> %i.btw, ptr %i.btr, align 32, !tbaa !32
  %i.btx = getelementptr inbounds nuw i8, ptr %i.bti, i64 64 ; 2 uses
  %i.bty = load <8 x float>, ptr %i.btx, align 32, !tbaa !32
  %i.btz = shufflevector <16 x float> %i.btl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bua = shufflevector <16 x float> %i.btl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bub = fadd <8 x float> %i.btz, %i.bua
  %i.buc = fsub <8 x float> %i.bty, %i.bub
  store <8 x float> %i.buc, ptr %i.btx, align 32, !tbaa !32
  %indvars.iv.next5092 = add nsw i64 %indvars.iv5091, 1 ; 2 uses
  %exitcond5095.not = icmp eq i64 %indvars.iv.next5092, %wide.trip.count5094
  br i1 %exitcond5095.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit, !llvm.loop !20

bb.m:                                             ; preds = %.lr.ph, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv = phi i64 [ %i.gb, %.lr.ph ], [ %indvars.iv.next, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.04213.44911 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cfg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.44910 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cfh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04230.44909 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cfe, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.164237.44908 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cff, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04248.44907 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cfc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.164255.44906 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cfd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.bud = load ptr, ptr %i.bt, align 8, !tbaa !72
  %i.bue = getelementptr inbounds nuw [8 x i8], ptr %i.bud, i64 %indvars.iv
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 4
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !90
  %.not = icmp eq i32 %i.bug, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.m
  %i.buh = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.bui = load i32, ptr %i.buh, align 4, !tbaa !98 ; 4 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.buh, i64 4
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !124
  %i.bul = insertelement <16 x i32> poison, i32 %i.buk, i64 0
  %i.bum = shufflevector <16 x i32> %i.bul, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bun = and <16 x i32> %.sroa.05162.0.copyload, %i.bum
  %.not5270 = icmp eq <16 x i32> %i.bun, zeroinitializer ; 3 uses
  %i.buo = and <16 x i32> %.sroa.6.0.copyload, %i.bum
  %.not5271 = icmp eq <16 x i32> %i.buo, zeroinitializer ; 3 uses
  %i.bup = shl nsw i32 %i.bui, 3
  %i.buq = mul nsw i32 %i.bui, 24
  %i.bur = sext i32 %i.buq to i64                 ; 2 uses
  %i.bus = getelementptr [4 x i8], ptr %i.bs, i64 %i.bur ; 3 uses
  %.val7605423 = load <8 x float>, ptr %i.bus, align 32, !tbaa !32
  %i.but = shufflevector <8 x float> %.val7605423, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buu = getelementptr i8, ptr %i.bus, i64 32
  %.val7615424 = load <8 x float>, ptr %i.buu, align 32, !tbaa !32
  %i.buv = shufflevector <8 x float> %.val7615424, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buw = getelementptr i8, ptr %i.bus, i64 64
  %.val7625425 = load <8 x float>, ptr %i.buw, align 32, !tbaa !32
  %i.bux = shufflevector <8 x float> %.val7625425, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buy = fsub <16 x float> %i.kx, %i.but        ; 3 uses
  %i.buz = fsub <16 x float> %i.ld, %i.but        ; 3 uses
  %i.bva = fsub <16 x float> %i.lk, %i.buv        ; 3 uses
  %i.bvb = fsub <16 x float> %i.lq, %i.buv        ; 3 uses
  %i.bvc = fsub <16 x float> %i.lx, %i.bux        ; 3 uses
  %i.bvd = fsub <16 x float> %i.md, %i.bux        ; 3 uses
  %i.bve = fmul <16 x float> %i.buy, %i.buy
  %i.bvf = fmul <16 x float> %i.bva, %i.bva
  %i.bvg = fadd <16 x float> %i.bve, %i.bvf
  %i.bvh = fmul <16 x float> %i.bvc, %i.bvc
  %i.bvi = fadd <16 x float> %i.bvg, %i.bvh       ; 2 uses
  %i.bvj = fmul <16 x float> %i.buz, %i.buz
  %i.bvk = fmul <16 x float> %i.bvb, %i.bvb
  %i.bvl = fadd <16 x float> %i.bvj, %i.bvk
  %i.bvm = fmul <16 x float> %i.bvd, %i.bvd
  %i.bvn = fadd <16 x float> %i.bvl, %i.bvm       ; 2 uses
  %i.bvo = fcmp olt <16 x float> %i.bvi, %i.bj
  %i.bvp = bitcast <16 x i1> %i.bvo to i16        ; 3 uses
  %i.bvq = fcmp olt <16 x float> %i.bvn, %i.bj
  %i.bvr = bitcast <16 x i1> %i.bvq to i16        ; 3 uses
  %i.bvs = shl nsw i32 %i.bui, 1                  ; 3 uses
  %i.bvt = icmp eq i32 %i.bvs, %i.dc
  br i1 %i.bvt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvu = and i16 %i.bvp, %i.v
  %i.bvv = and i16 %i.bvr, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvw = or disjoint i32 %i.bvs, 1
  %i.bvx = icmp eq i32 %i.bvw, %i.dc
  br i1 %i.bvx, label %bb.p, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %bb.o
  %i.bvy = and i16 %i.bvp, %i.x
  %i.bvz = and i16 %i.bvr, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.9.0 = phi i16 [ %i.bvv, %bb.n ], [ %i.bvz, %bb.p ], [ %i.bvr, %bb.o ]
  %.sroa.04856.0 = phi i16 [ %i.bvu, %bb.n ], [ %i.bvy, %bb.p ], [ %i.bvp, %bb.o ]
  %i.bwa = sext i32 %i.bup to i64
  %i.bwb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bwa
  %.val7694877 = load <8 x i32>, ptr %i.bwb, align 32, !tbaa !32 ; 4 uses
  %i.bwc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mx, <8 x i32> %.val7694877, <8 x i1> splat (i1 true), i32 8)
  %i.bwd = bitcast <8 x double> %i.bwc to <16 x float> ; 2 uses
  %i.bwe = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nd, <8 x i32> %.val7694877, <8 x i1> splat (i1 true), i32 8)
  %i.bwf = bitcast <8 x double> %i.bwe to <16 x float> ; 2 uses
  %i.bwg = shufflevector <16 x float> %i.bwd, <16 x float> %i.bwf, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bwh = shufflevector <16 x float> %i.bwd, <16 x float> %i.bwf, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bwi = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nj, <8 x i32> %.val7694877, <8 x i1> splat (i1 true), i32 8)
  %i.bwj = bitcast <8 x double> %i.bwi to <16 x float> ; 2 uses
  %i.bwk = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.np, <8 x i32> %.val7694877, <8 x i1> splat (i1 true), i32 8)
  %i.bwl = bitcast <8 x double> %i.bwk to <16 x float> ; 2 uses
  %i.bwm = shufflevector <16 x float> %i.bwj, <16 x float> %i.bwl, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bwn = shufflevector <16 x float> %i.bwj, <16 x float> %i.bwl, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bwo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bvi, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.bwp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bvn, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.bwq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bwo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bwr = fmul <16 x float> %i.bwo, %i.bwq
  %i.bws = fmul <16 x float> %i.bwq, splat (float -5.000000e-01)
  %i.bwt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwr, <16 x float> %i.bwq, <16 x float> splat (float -3.000000e+00))
  %i.bwu = fmul <16 x float> %i.bws, %i.bwt
  %i.bwv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bwp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bww = fmul <16 x float> %i.bwp, %i.bwv
  %i.bwx = fmul <16 x float> %i.bwv, splat (float -5.000000e-01)
  %i.bwy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bww, <16 x float> %i.bwv, <16 x float> splat (float -3.000000e+00))
  %i.bwz = fmul <16 x float> %i.bwx, %i.bwy
  %9 = bitcast i16 %.sroa.04856.0 to <16 x i1>    ; 2 uses
  %i.bxa = select <16 x i1> %9, <16 x float> %i.bwu, <16 x float> zeroinitializer ; 2 uses
  %10 = bitcast i16 %.sroa.9.0 to <16 x i1>       ; 2 uses
  %i.bxb = select <16 x i1> %10, <16 x float> %i.bwz, <16 x float> zeroinitializer ; 2 uses
  %i.bxc = fmul <16 x float> %i.bxa, %i.bxa       ; 4 uses
  %i.bxd = fmul <16 x float> %i.bxb, %i.bxb       ; 4 uses
  %i.bxe = fcmp olt <16 x float> %i.bwo, %i.bo    ; 2 uses
  %i.bxf = fcmp olt <16 x float> %i.bwp, %i.bo    ; 2 uses
  %i.bxg = shl nsw i32 %i.bui, 4
  %i.bxh = fmul <16 x float> %i.bxc, %i.bxc
  %i.bxi = fmul <16 x float> %i.bxc, %i.bxh       ; 4 uses
  %i.bxj = fmul <16 x float> %i.bxd, %i.bxd
  %i.bxk = fmul <16 x float> %i.bxd, %i.bxj       ; 4 uses
  %i.bxl = select <16 x i1> %.not5270, <16 x float> zeroinitializer, <16 x float> %i.bxi ; 3 uses
  %i.bxm = select <16 x i1> %.not5271, <16 x float> zeroinitializer, <16 x float> %i.bxk ; 3 uses
  %i.bxn = fmul <16 x float> %i.bxl, %i.bxl
  %i.bxo = fmul <16 x float> %i.bxm, %i.bxm
  %i.bxp = fmul <16 x float> %i.bxl, %i.bwg       ; 2 uses
  %i.bxq = fmul <16 x float> %i.bxm, %i.bwm       ; 2 uses
  %i.bxr = fmul <16 x float> %i.bxn, %i.bwh       ; 2 uses
  %i.bxs = fmul <16 x float> %i.bxo, %i.bwn       ; 2 uses
  %i.bxt = fsub <16 x float> %i.bxr, %i.bxp
  %i.bxu = fsub <16 x float> %i.bxs, %i.bxq
  %i.bxv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwg, <16 x float> %i.as, <16 x float> %i.bxp)
  %i.bxw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwm, <16 x float> %i.as, <16 x float> %i.bxq)
  %i.bxx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwh, <16 x float> %i.av, <16 x float> %i.bxr)
  %i.bxy = fmul <16 x float> %i.bxv, splat (float f0xBE2AAAAB)
  %i.bxz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxx, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bxy)
  %i.bya = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwn, <16 x float> %i.av, <16 x float> %i.bxs)
  %i.byb = fmul <16 x float> %i.bxw, splat (float f0xBE2AAAAB)
  %i.byc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bya, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.byb)
  %i.byd = select <16 x i1> %.not5270, <16 x float> zeroinitializer, <16 x float> %i.bxz
  %i.bye = select <16 x i1> %.not5271, <16 x float> zeroinitializer, <16 x float> %i.byc
  %i.byf = sext i32 %i.bxg to i64
  %i.byg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.byf
  %.val7635426 = load <8 x float>, ptr %i.byg, align 32, !tbaa !32
  %i.byh = shufflevector <8 x float> %.val7635426, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.byi = fmul <16 x float> %i.nv, %i.byh        ; 2 uses
  %i.byj = fmul <16 x float> %i.oa, %i.byh        ; 2 uses
  %i.byk = select <16 x i1> %9, <16 x float> %i.bwo, <16 x float> zeroinitializer
  %i.byl = fmul <16 x float> %i.bd, %i.byk        ; 3 uses
  %i.bym = bitcast <16 x float> %i.byl to <8 x i64>
  %i.byn = select <16 x i1> %10, <16 x float> %i.bwp, <16 x float> zeroinitializer
  %i.byo = fmul <16 x float> %i.bd, %i.byn        ; 3 uses
  %i.byp = bitcast <16 x float> %i.byo to <8 x i64>
  %i.byq = xor <8 x i64> %i.bym, splat (i64 -9223372034707292160)
  %i.byr = bitcast <8 x i64> %i.byq to <16 x float> ; 2 uses
  %i.bys = fmul <16 x float> %i.byr, splat (float f0x3FB8AA3B) ; 2 uses
  %i.byt = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bys, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.byu = shl <16 x i32> %i.byt, splat (i32 23)
  %i.byv = add <16 x i32> %i.byu, splat (i32 1065353216)
  %i.byw = bitcast <16 x i32> %i.byv to <16 x float> ; 2 uses
  %i.byx = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bys, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.byy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byx, <16 x float> splat (float f0xBF317200), <16 x float> %i.byr)
  %i.byz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byx, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.byy) ; 7 uses
  %i.bza = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byz, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.bzb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bza, <16 x float> %i.byz, <16 x float> splat (float f0x3D2AAF4C))
  %i.bzc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzb, <16 x float> %i.byz, <16 x float> splat (float f0x3E2AAA5E))
  %i.bzd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzc, <16 x float> %i.byz, <16 x float> splat (float f0x3EFFFFFB))
  %i.bze = fmul <16 x float> %i.byz, %i.byz
  %i.bzf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bze, <16 x float> %i.bzd, <16 x float> %i.byz)
  %i.bzg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzf, <16 x float> %i.byw, <16 x float> %i.byw)
  %i.bzh = xor <8 x i64> %i.byp, splat (i64 -9223372034707292160)
  %i.bzi = bitcast <8 x i64> %i.bzh to <16 x float> ; 2 uses
  %i.bzj = fmul <16 x float> %i.bzi, splat (float f0x3FB8AA3B) ; 2 uses
  %i.bzk = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bzj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bzl = shl <16 x i32> %i.bzk, splat (i32 23)
  %i.bzm = add <16 x i32> %i.bzl, splat (i32 1065353216)
  %i.bzn = bitcast <16 x i32> %i.bzm to <16 x float> ; 2 uses
  %i.bzo = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bzj, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.bzp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> splat (float f0xBF317200), <16 x float> %i.bzi)
  %i.bzq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzo, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.bzp) ; 7 uses
  %i.bzr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzq, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.bzs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzr, <16 x float> %i.bzq, <16 x float> splat (float f0x3D2AAF4C))
  %i.bzt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzs, <16 x float> %i.bzq, <16 x float> splat (float f0x3E2AAA5E))
  %i.bzu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzt, <16 x float> %i.bzq, <16 x float> splat (float f0x3EFFFFFB))
  %i.bzv = fmul <16 x float> %i.bzq, %i.bzq
  %i.bzw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzv, <16 x float> %i.bzu, <16 x float> %i.bzq)
  %i.bzx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzw, <16 x float> %i.bzn, <16 x float> %i.bzn)
  %i.bzy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byl, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bzz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzy, <16 x float> %i.byl, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.caa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byo, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cab = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.caa, <16 x float> %i.byo, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cac = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxi, <16 x float> %i.bzz, <16 x float> %i.bf)
  %i.cad = fneg <16 x float> %i.bzg               ; 2 uses
  %i.cae = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cad, <16 x float> %i.cac, <16 x float> %i.bxi)
  %i.caf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byi, <16 x float> %i.cae, <16 x float> %i.bxt)
  %i.cag = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxk, <16 x float> %i.cab, <16 x float> %i.bf)
  %i.cah = fneg <16 x float> %i.bzx               ; 2 uses
  %i.cai = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cah, <16 x float> %i.cag, <16 x float> %i.bxk)
  %i.caj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byj, <16 x float> %i.cai, <16 x float> %i.bxu)
  %i.cak = select <16 x i1> %.not5270, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.cal = select <16 x i1> %.not5271, <16 x float> zeroinitializer, <16 x float> %i.bi
  %i.cam = fmul <16 x float> %i.byi, splat (float f0x3E2AAAAB)
  %i.can = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cad, <16 x float> %i.bzz, <16 x float> splat (float 1.000000e+00))
  %i.cao = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxi, <16 x float> %i.can, <16 x float> %i.cak)
  %i.cap = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cam, <16 x float> %i.cao, <16 x float> %i.byd)
  %i.caq = fmul <16 x float> %i.byj, splat (float f0x3E2AAAAB)
  %i.car = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cah, <16 x float> %i.cab, <16 x float> splat (float 1.000000e+00))
  %i.cas = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxk, <16 x float> %i.car, <16 x float> %i.cal)
  %i.cat = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.caq, <16 x float> %i.cas, <16 x float> %i.bye)
  %i.cau = select <16 x i1> %i.bxe, <16 x float> %i.caf, <16 x float> zeroinitializer
  %i.cav = select <16 x i1> %i.bxf, <16 x float> %i.caj, <16 x float> zeroinitializer
  %i.caw = select <16 x i1> %i.bxe, <16 x float> %i.cap, <16 x float> zeroinitializer ; 2 uses
  %i.cax = select <16 x i1> %i.bxf, <16 x float> %i.cat, <16 x float> zeroinitializer ; 2 uses
  %i.cay = load ptr, ptr %i.cb, align 8, !tbaa !89
  %i.caz = load i32, ptr %i.cp, align 8, !tbaa !125
  %i.cba = sext i32 %i.bvs to i64
  %i.cbb = getelementptr inbounds [4 x i8], ptr %i.cay, i64 %i.cba
  %i.cbc = load i32, ptr %i.cq, align 4, !tbaa !126
  %i.cbd = load i32, ptr %i.cl, align 8, !tbaa !99
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
  %i.cbr = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !96 ; 4 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8
  %i.cbu = load ptr, ptr %i.cbt, align 8, !tbaa !96 ; 4 uses
  %i.cbv = shufflevector <16 x float> %i.caw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cbw = shufflevector <16 x float> %i.caw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cbx = extractelement <4 x i32> %i.cbq, i64 0
  %i.cby = sext i32 %i.cbx to i64                 ; 4 uses
  %i.cbz = getelementptr inbounds [4 x i8], ptr %i.cbs, i64 %i.cby ; 2 uses
  %i.cca = getelementptr inbounds [4 x i8], ptr %i.cbu, i64 %i.cby ; 2 uses
  %i.ccb = load <8 x float>, ptr %i.cbz, align 32, !tbaa !32
  %i.ccc = fadd <8 x float> %i.ccb, %i.cbv
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
  %i.cdj = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 2 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 16
  %i.cdl = load ptr, ptr %i.cdk, align 8, !tbaa !96 ; 4 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdj, i64 24
  %i.cdn = load ptr, ptr %i.cdm, align 8, !tbaa !96 ; 4 uses
  %i.cdo = shufflevector <16 x float> %i.cax, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cdp = shufflevector <16 x float> %i.cax, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
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
  %i.ceu = fmul <16 x float> %i.bxc, %i.cau       ; 3 uses
  %i.cev = fmul <16 x float> %i.bxd, %i.cav       ; 3 uses
  %i.cew = fmul <16 x float> %i.buy, %i.ceu       ; 2 uses
  %i.cex = fmul <16 x float> %i.buz, %i.cev       ; 2 uses
  %i.cey = fmul <16 x float> %i.bva, %i.ceu       ; 2 uses
  %i.cez = fmul <16 x float> %i.bvb, %i.cev       ; 2 uses
  %i.cfa = fmul <16 x float> %i.bvc, %i.ceu       ; 2 uses
  %i.cfb = fmul <16 x float> %i.bvd, %i.cev       ; 2 uses
  %i.cfc = fadd <16 x float> %.sroa.04248.44907, %i.cew ; 2 uses
  %i.cfd = fadd <16 x float> %.sroa.164255.44906, %i.cex ; 2 uses
  %i.cfe = fadd <16 x float> %.sroa.04230.44909, %i.cey ; 2 uses
  %i.cff = fadd <16 x float> %.sroa.164237.44908, %i.cez ; 2 uses
  %i.cfg = fadd <16 x float> %.sroa.04213.44911, %i.cfa ; 2 uses
  %i.cfh = fadd <16 x float> %.sroa.16.44910, %i.cfb ; 2 uses
  %i.cfi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bur ; 4 uses
  %i.cfj = fadd <16 x float> %i.cew, %i.cex       ; 2 uses
  %i.cfk = fadd <16 x float> %i.cey, %i.cez       ; 2 uses
  %i.cfl = fadd <16 x float> %i.cfa, %i.cfb       ; 2 uses
  %i.cfm = load <8 x float>, ptr %i.cfi, align 32, !tbaa !32
  %i.cfn = shufflevector <16 x float> %i.cfj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfo = shufflevector <16 x float> %i.cfj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfp = fadd <8 x float> %i.cfn, %i.cfo
end_hunk_2
