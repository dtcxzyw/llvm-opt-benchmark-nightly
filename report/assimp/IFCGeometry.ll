Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jt = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.ju = load ptr, ptr %i.bk, align 8
  %.not.i.i247.us = icmp eq ptr %i.jt, %i.ju
  br i1 %.not.i.i247.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4, ptr %i.jt, align 4
  %i.jv = load ptr, ptr %i.da, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.jw, ptr %i.da, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.ak:                                            ; preds = %bb.ai
  %i.jx = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.jy = ptrtoint ptr %i.jt to i64
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775804
  br i1 %i.kb, label %.split511.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.ak
  %i.kc = ashr exact i64 %i.ka, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i248.us = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i248.us, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 2305843009213693951)
  %i.kg = select i1 %i.ke, i64 2305843009213693951, i64 %i.kf ; 3 uses
  %.not.i.i.i.i249.us = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249.us)
  %i.kh = shl nuw nsw i64 %i.kg, 2
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #28
          to label %.noexc251.us unwind label %.loopexit390.split.us ; 4 uses

.noexc251.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store i32 4, ptr %i.kj, align 4
  %i.kk = icmp sgt i64 %i.ka, 0
  br i1 %i.kk, label %bb.al, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.al:                                            ; preds = %.noexc251.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr align 4 %i.jx, i64 %i.ka, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.al, %.noexc251.us
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.jx, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.km = load ptr, ptr %i.bk, align 8
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.ko) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.ki, ptr %i.bf, align 8
  store ptr %i.kl, ptr %i.da, align 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.kp, ptr %i.bk, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.aj
  br i1 %.not594, label %._crit_edge498.us, label %bb.t, !llvm.loop !103

.lr.ph494.us:                                     ; preds = %.lr.ph500, %._crit_edge498.us
  %.0131499.us = phi i64 [ %i.kx, %._crit_edge498.us ], [ 0, %.lr.ph500 ] ; 3 uses
  %i.kq = mul i64 %.0131499.us, %i.ad
  %i.kr = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa602, i64 %i.kq ; 4 uses
  %i.ks = load <2 x double>, ptr %i.kr, align 8
  %i.kt = fptrunc <2 x double> %i.ks to <2 x float> ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kv = load double, ptr %i.ku, align 8
  %i.kw = fptrunc double %i.kv to float
  %i.kx = add nuw i64 %.0131499.us, 1             ; 3 uses
  %i.ky = mul i64 %i.kx, %i.ad                    ; 2 uses
  %i.kz = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa602, i64 %i.ky
  br label %bb.s

._crit_edge498.us:                                ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %exitcond547.not = icmp eq i64 %i.kx, %.pre-phi555599
  br i1 %exitcond547.not, label %._crit_edge501, label %.lr.ph494.us, !llvm.loop !104

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit390.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit392.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %.lr.ph487, %._crit_edge
  %.0135485 = phi i64 [ 0, %.lr.ph487 ], [ %i.oy, %._crit_edge ] ; 3 uses
  %.0136484 = phi i32 [ 0, %.lr.ph487 ], [ %.1137, %._crit_edge ] ; 3 uses
  %.sroa.0353.1483 = phi ptr [ %.sroa.17.2, %.lr.ph487 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.17.0482 = phi ptr [ %.sroa.17.2, %.lr.ph487 ], [ %.sroa.17.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.24.1481 = phi ptr [ %.sroa.24.6, %.lr.ph487 ], [ %.sroa.24.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.14351.0480 = phi double [ %.sroa.14351.0.copyload, %.lr.ph487 ], [ %.sroa.8333.1, %._crit_edge ] ; 3 uses
  %.sroa.9343.0477 = phi double [ %.sroa.14351.0.copyload, %.lr.ph487 ], [ %.sroa.14351.0480, %._crit_edge ] ; 2 uses
  %.sroa.12.0473 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.nq, %._crit_edge ] ; 4 uses
  %.sroa.8.0470 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.pa, %._crit_edge ] ; 4 uses
  %.sroa.0324.0466 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.oz, %._crit_edge ] ; 4 uses
  %.sroa.8333.0465 = phi double [ 0.000000e+00, %.lr.ph487 ], [ %.sroa.8333.1, %._crit_edge ]
  %i.la = phi <2 x double> [ %i.cw, %.lr.ph487 ], [ %i.lh, %._crit_edge ] ; 3 uses
  %i.lb = phi <2 x double> [ zeroinitializer, %.lr.ph487 ], [ %i.lh, %._crit_edge ]
  %i.lc = phi <2 x double> [ %i.cw, %.lr.ph487 ], [ %i.la, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0135485, %i.cx
  br i1 %.not152, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ld = load ptr, ptr %3, align 8
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %.0135485 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load <2 x double>, ptr %i.lf, align 8
  %.sroa.8333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %.sroa.8333.0.copyload = load double, ptr %.sroa.8333.0..sroa_idx, align 8
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.an, %bb.ao
  %.sroa.8333.1 = phi double [ %.sroa.8333.0465, %bb.an ], [ %.sroa.8333.0.copyload, %bb.ao ] ; 3 uses
  %i.lh = phi <2 x double> [ %i.lb, %bb.an ], [ %i.lg, %bb.ao ] ; 3 uses
  %i.li = fsub <2 x double> %i.la, %i.lc
  %i.lj = fsub double %.sroa.14351.0480, %.sroa.9343.0477
  %i.lk = fsub <2 x double> %i.lh, %i.lc
  %i.ll = fsub double %.sroa.8333.1, %.sroa.9343.0477
  %i.lm = fadd double %i.lj, %i.ll                ; 4 uses
  %i.ln = fadd <2 x double> %i.li, %i.lk          ; 5 uses
  %foldExtExtBinop634 = fmul <2 x double> %i.ln, %i.ln
  %i.lo = extractelement <2 x double> %foldExtExtBinop634, i64 1
  %i.lp = extractelement <2 x double> %i.ln, i64 0 ; 2 uses
  %i.lq = call double @llvm.fmuladd.f64(double %i.lp, double %i.lp, double %i.lo)
  %i.lr = call noundef double @llvm.fmuladd.f64(double %i.lm, double %i.lm, double %i.lq)
  %i.ls = call noundef double @sqrt(double noundef %i.lr) #30 ; 2 uses
  %i.lt = fcmp oeq double %i.ls, 0.000000e+00     ; 2 uses
  %i.lu = fdiv double 1.000000e+00, %i.ls         ; 2 uses
  %i.lv = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x double> %i.ln, %i.lw
  %i.ly = fmul double %i.lm, %i.lu
  %.sroa.19.0 = select i1 %i.lt, double %i.lm, double %i.ly
  %.sroa.19.0.fr = freeze double %.sroa.19.0      ; 8 uses
  %i.lz = insertelement <2 x i1> poison, i1 %i.lt, i64 0
  %i.ma = shufflevector <2 x i1> %i.lz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mb = select <2 x i1> %i.ma, <2 x double> %i.ln, <2 x double> %i.lx
  %i.mc = freeze <2 x double> %i.mb               ; 12 uses
  %i.md = icmp eq i32 %.0136484, 1
  %i.me = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mc)
  %i.mf = fcmp ogt <2 x double> %i.me, splat (double f0x3EB0C6F7A0000000) ; 3 uses
  %i.mg = icmp ne i32 %.0136484, 2                ; 3 uses
  %i.mh = call double @llvm.fabs.f64(double %.sroa.19.0.fr)
  %i.mi = fcmp ule double %i.mh, f0x3EB0C6F7A0000000 ; 3 uses
  %i.mj = extractelement <2 x i1> %i.mf, i64 0
  br i1 %i.mj, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge614 = or i1 %i.mg, %i.mi
  %i.mk = extractelement <2 x i1> %i.mf, i64 1
  %or.cond = and i1 %i.mk, %brmerge614
  br i1 %or.cond, label %.split.us.split, label %.split421.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.ml = icmp eq i32 %.0136484, 0
  br i1 %i.ml, label %.split422, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mm = extractelement <2 x i1> %i.mf, i64 1
  br i1 %i.mm, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge617 = or i1 %i.mg, %i.mi
  br i1 %brmerge617, label %.split422, label %.split421.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.md, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge620 = or i1 %i.mg, %i.mi
  br i1 %brmerge620, label %.split422, label %.split421.us

.split422:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mn = fmul double %.sroa.12.0473, %.sroa.19.0.fr
  %i.mo = extractelement <2 x double> %i.mc, i64 1
  %i.mp = call double @llvm.fmuladd.f64(double %i.mo, double %.sroa.8.0470, double %i.mn)
  %i.mq = fneg double %i.mp
  %i.mr = extractelement <2 x double> %i.mc, i64 0
  %i.ms = fdiv double %i.mq, %i.mr
  br label %.loopexit401

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.mt = fmul double %.sroa.12.0473, %.sroa.19.0.fr
  %i.mu = extractelement <2 x double> %i.mc, i64 0
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %.sroa.0324.0466, double %i.mt)
  %i.mw = fneg double %i.mv
  %i.mx = extractelement <2 x double> %i.mc, i64 1
  %i.my = fdiv double %i.mw, %i.mx
  br label %.loopexit401

.split421.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.mz = extractelement <2 x double> %i.mc, i64 0
  %i.na = fmul double %.sroa.0324.0466, %i.mz
  %i.nb = extractelement <2 x double> %i.mc, i64 1
  %i.nc = call double @llvm.fmuladd.f64(double %i.nb, double %.sroa.8.0470, double %i.na)
  %i.nd = fneg double %i.nc
  %i.ne = fdiv double %i.nd, %.sroa.19.0.fr
  br label %.loopexit401

.loopexit401:                                     ; preds = %.split421.us, %.split.us.split, %.split422
  %.sroa.0290.0 = phi double [ %i.ms, %.split422 ], [ %.sroa.0324.0466, %.split.us.split ], [ %.sroa.0324.0466, %.split421.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0470, %.split422 ], [ %i.my, %.split.us.split ], [ %.sroa.8.0470, %.split421.us ] ; 3 uses
  %.sroa.23297.0 = phi double [ %.sroa.12.0473, %.split422 ], [ %.sroa.12.0473, %.split.us.split ], [ %i.ne, %.split421.us ] ; 3 uses
  %.1137 = phi i32 [ 0, %.split422 ], [ 1, %.split.us.split ], [ 2, %.split421.us ]
  %i.nf = load double, ptr %i.cy, align 8
  %i.ng = fmul double %.sroa.14.0, %.sroa.14.0
  %i.nh = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.ng)
  %i.ni = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.nh)
  %i.nj = call noundef double @sqrt(double noundef %i.ni) #30
  %i.nk = fdiv double %i.nf, %i.nj                ; 2 uses
  %i.nl = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = insertelement <2 x double> poison, double %.sroa.0290.0, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %.sroa.14.0, i64 1
  %i.np = fmul <2 x double> %i.no, %i.nm          ; 3 uses
  %i.nq = fmul double %.sroa.23297.0, %i.nk       ; 2 uses
  %i.nr = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.ns = call double @sin(double noundef %i.o) #30 ; 3 uses
  %i.nt = fsub double 1.000000e+00, %i.nr         ; 2 uses
  %i.nu = fmul double %.sroa.19.0.fr, %i.ns       ; 2 uses
  %i.nv = fneg double %i.nu
  %i.nw = extractelement <2 x double> %i.mc, i64 1
  %i.nx = fmul double %i.nw, %i.ns                ; 2 uses
  %i.ny = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nz = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x double> %i.mc, %i.nz          ; 4 uses
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.od = insertelement <2 x double> %i.oc, double %i.nu, i64 1
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.mc, <2 x double> %i.od)
  %i.of = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.og = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.oh = insertelement <2 x double> %i.og, double %i.nr, i64 1
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.of, <2 x double> %i.oh)
  %i.oj = extractelement <2 x double> %i.mc, i64 0
  %i.ok = fmul double %i.oj, %i.ns                ; 2 uses
  %i.ol = fneg double %i.ok
  %i.om = insertelement <2 x double> poison, double %.sroa.19.0.fr, i64 0
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oo = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.ol, i64 1
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.on, <2 x double> %i.op)
  %i.or = fneg double %i.nx
  %i.os = insertelement <2 x double> poison, double %i.or, i64 0
  %i.ot = insertelement <2 x double> %i.os, double %i.ok, i64 1
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.on, <2 x double> %i.ot) ; 2 uses
  %i.ov = fmul double %.sroa.19.0.fr, %i.nt
  %i.ow = call double @llvm.fmuladd.f64(double %i.ov, double %.sroa.19.0.fr, double %i.nr)
  br i1 %.not514, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit401
  %i.ox = extractelement <2 x double> %i.ou, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit401
  %.sroa.24.2.lcssa = phi ptr [ %.sroa.24.1481, %.loopexit401 ], [ %.sroa.24.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0482, %.loopexit401 ], [ %.sroa.17.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1483, %.loopexit401 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.oy = add nuw i64 %.0135485, 1                ; 2 uses
  %exitcond539.not = icmp eq i64 %i.oy, %i.ac
  %i.oz = extractelement <2 x double> %i.np, i64 0
  %i.pa = extractelement <2 x double> %i.np, i64 1
  br i1 %exitcond539.not, label %.preheader395, label %bb.an, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0132459 = phi i32 [ %i.pt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2458 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1483, %.lr.ph.preheader ] ; 8 uses
  %.sroa.17.1457 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.17.0482, %.lr.ph.preheader ] ; 9 uses
  %.sroa.24.2456 = phi ptr [ %.sroa.24.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.24.1481, %.lr.ph.preheader ] ; 2 uses
  %.sroa.23297.1455 = phi double [ %i.qg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.nq, %.lr.ph.preheader ] ; 3 uses
  %i.pb = phi <2 x double> [ %i.qb, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.np, %.lr.ph.preheader ] ; 5 uses
  %i.pc = fadd <2 x double> %i.la, %i.pb          ; 2 uses
  %i.pd = fadd double %.sroa.14351.0480, %.sroa.23297.1455 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.1457, %.sroa.24.2456
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  store <2 x double> %i.pc, ptr %.sroa.17.1457, align 8
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.1457, i64 16
  store double %i.pd, ptr %.sroa.7284.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %.lr.ph
  %i.pe = ptrtoint ptr %.sroa.17.1457 to i64
  %i.pf = ptrtoint ptr %.sroa.0353.2458 to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 4 uses
  %i.ph = icmp eq i64 %i.pg, 9223372036854775800
  br i1 %i.ph, label %bb.ar, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc183 unwind label %.loopexit.split-lp397

.noexc183:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.pi = sdiv exact i64 %i.pg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pi, i64 1)
  %i.pj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pi ; 2 uses
  %i.pk = icmp ult i64 %i.pj, %i.pi
  %i.pl = call i64 @llvm.umin.i64(i64 %i.pj, i64 384307168202282325)
  %i.pm = select i1 %i.pk, i64 384307168202282325, i64 %i.pl ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.pm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.pn = mul nuw nsw i64 %i.pm, 24
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #28
          to label %.noexc184 unwind label %.loopexit396 ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pg ; 2 uses
  store <2 x double> %i.pc, ptr %i.pp, align 8
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store double %i.pd, ptr %.sroa.7284.0..sroa_idx285, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0353.2458, %.sroa.17.1457
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc184, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.pr, %.lr.ph.i.i.i.i.i.i ], [ %i.po, %.noexc184 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.pq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0353.2458, %.noexc184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !118
  %i.pq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pq, %.sroa.17.1457
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc184
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.po, %.noexc184 ], [ %i.pr, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0353.2458, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.2458, i64 noundef %i.pg) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %i.po, i64 %i.pm
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ap
  %.sroa.24.7 = phi ptr [ %i.ps, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.24.2456, %bb.ap ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.1457, %bb.ap ]
  %.sroa.0353.7 = phi ptr [ %i.po, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0353.2458, %bb.ap ] ; 2 uses
  %.sroa.17.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.pt = add nuw i32 %.0132459, 1                ; 2 uses
  %i.pu = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pv = fmul <2 x double> %i.oi, %i.pu
  %i.pw = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.px = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.pw, <2 x double> %i.pv)
  %i.py = insertelement <2 x double> poison, double %.sroa.23297.1455, i64 0
  %i.pz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.pz, <2 x double> %i.px)
  %i.qb = fadd <2 x double> %i.qa, zeroinitializer
  %foldExtExtBinop636 = fmul <2 x double> %i.ou, %i.pb
  %i.qc = extractelement <2 x double> %foldExtExtBinop636, i64 1
  %i.qd = extractelement <2 x double> %i.pb, i64 0
  %i.qe = call double @llvm.fmuladd.f64(double %i.ox, double %i.qd, double %i.qc)
  %i.qf = call double @llvm.fmuladd.f64(double %i.ow, double %.sroa.23297.1455, double %i.qe)
  %i.qg = fadd double %i.qf, 0.000000e+00
  %exitcond.not = icmp eq i32 %i.pt, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

.loopexit396:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit398 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp397:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge501:                                   ; preds = %._crit_edge498.us, %.lr.ph500, %.preheader395
  %.sroa.0353.1.lcssa603 = phi ptr [ %.sroa.0353.2.lcssa, %.preheader395 ], [ %.sroa.0353.1.lcssa602, %.lr.ph500 ], [ %.sroa.0353.1.lcssa602, %._crit_edge498.us ] ; 3 uses
  %.sroa.24.1.lcssa601 = phi ptr [ %.sroa.24.2.lcssa, %.preheader395 ], [ %.sroa.24.1.lcssa600, %.lr.ph500 ], [ %.sroa.24.1.lcssa600, %._crit_edge498.us ] ; 3 uses
  %i.qh = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc185 unwind label %bb.ax

.noexc185:                                        ; preds = %._crit_edge501
  br i1 %i.qh, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.at

bb.at:                                            ; preds = %.noexc185
  %i.qi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc186 unwind label %bb.ax

.noexc186:                                        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.qj = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc187 unwind label %bb.ax

.noexc187:                                        ; preds = %.noexc186
end_hunk_0
