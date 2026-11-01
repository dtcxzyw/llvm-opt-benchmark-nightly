Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaExporter?download=true
inline.NumInlined: 3741
inline.NumDeleted: 859
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp15ColladaExporter21WriteAnimationLibraryEm:bb.a
  store ptr %i.dx, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dx, ptr noundef nonnull align 1 dereferenceable(14) @.str.296, i64 14, i1 false)
  store i64 14, ptr %i.dy, align 8
  store i8 0, ptr %i.eo, align 2
  %i.jf = load i64, ptr %i.ds, align 8
  %i.jg = add i64 %i.jf, -4611686018427387890
  %i.jh = icmp ult i64 %i.jg, 14
  br i1 %i.jh, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc251 unwind label %.loopexit.split-lp822.loopexit.split-lp.loopexit.split-lp

.noexc251:                                        ; preds = %bb.ak
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  %i.ji = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.dx, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253 unwind label %.loopexit.split-lp822.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250
  %i.jj = load ptr, ptr %10, align 8              ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.dx
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253
  %i.jl = load i64, ptr %i.dx, align 8
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.jn = load i32, ptr %i.gw, align 4            ; 2 uses
  %i.jo = shl i32 %i.jn, 4                        ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %.not793 = icmp eq i32 %i.jo, 0
  br i1 %.not793, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #30
          to label %.noexc257 unwind label %bb.ao ; 5 uses

.noexc257:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.js = load ptr, ptr %11, align 8              ; 4 uses
  %i.jt = load ptr, ptr %i.ea, align 8
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, 0
  br i1 %i.jx, label %bb.al, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.al:                                            ; preds = %.noexc257
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jr, ptr align 4 %i.js, i64 %i.jw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.al, %.noexc257
  %.not.i8.i = icmp eq ptr %i.js, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.jy = load ptr, ptr %i.dz, align 8
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.ka) #27
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.am, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.jr, ptr %11, align 8
  store ptr %i.jr, ptr %i.ea, align 8
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jp
  store ptr %i.kb, ptr %i.dz, align 8
  %.pre = load i32, ptr %i.gw, align 4
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i
  %i.kc = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.jr, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ] ; 2 uses
  %i.kd = phi i32 [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pre, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ]
  %.not1349 = icmp eq i32 %i.kd, 0
  br i1 %.not1349, label %._crit_edge1335, label %.lr.ph1334

.lr.ph1334:                                       ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gu, i64 1064
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gu, i64 1048
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gu, i64 1032
  br label %_ZN12aiMatrix4x4tIfEixEj.exit268

._crit_edge1335.loopexit:                         ; preds = %bb.ap
  %.pre1419 = load ptr, ptr %11, align 8
  %.pre1420 = load ptr, ptr %i.ea, align 8
  br label %._crit_edge1335

._crit_edge1335:                                  ; preds = %._crit_edge1335.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.kh = phi ptr [ %.pre1420, %._crit_edge1335.loopexit ], [ %i.kc, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %i.ki = phi ptr [ %.pre1419, %._crit_edge1335.loopexit ], [ %i.kc, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 2 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 2
  %i.kn = lshr i64 %i.km, 4
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 4, ptr noundef %i.ki, i64 noundef %i.kn)
          to label %bb.ar unwind label %bb.ao

.loopexit.split-lp807.loopexit:                   ; preds = %._crit_edge
  %lpad.loopexit818 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp807

.loopexit.split-lp807.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ag
  %lpad.loopexit.split-lp1759 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp807

.loopexit.split-lp807:                            ; preds = %.loopexit.split-lp807.loopexit, %.loopexit.split-lp807.loopexit.split-lp.loopexit.split-lp
  %.sroa.18780.01076 = phi ptr [ %.sroa.11776.01327, %.loopexit.split-lp807.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.18780.0.lcssa, %.loopexit.split-lp807.loopexit ]
  %.sroa.0770.01048 = phi ptr [ %.sroa.0770.01328, %.loopexit.split-lp807.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0770.0.lcssa, %.loopexit.split-lp807.loopexit ] ; 3 uses
  %lpad.phi810 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1759, %.loopexit.split-lp807.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit818, %.loopexit.split-lp807.loopexit ] ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %.sroa.0770.01048, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp807
  %i.ko = ptrtoint ptr %.sroa.18780.01076 to i64
  %i.kp = ptrtoint ptr %.sroa.0770.01048 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.01048, i64 noundef %i.kq) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

.loopexit.split-lp822.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250, %bb.ak
  %lpad.loopexit.split-lp1768 = landingpad { ptr, i32 }
          cleanup
  %i.kr = load ptr, ptr %10, align 8              ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.dx
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.loopexit.split-lp822.loopexit.split-lp.loopexit.split-lp
  %i.kt = load i64, ptr %i.dx, align 8
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %.loopexit.split-lp822.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %._crit_edge1335
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZN12aiMatrix4x4tIfEixEj.exit268:                 ; preds = %.lr.ph1334, %bb.ap
  %.0771333 = phi i64 [ 0, %.lr.ph1334 ], [ %i.qw, %bb.ap ] ; 4 uses
  %i.kw = load ptr, ptr %i.ke, align 8
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.kw, i64 %.0771333 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.kf, align 8
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %.0771333 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.sroa.0749.0.copyload = load float, ptr %i.lb, align 8 ; 3 uses
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.la, i64 12 ; 2 uses
  %i.lc = fneg float %.sroa.0749.0.copyload       ; 3 uses
  %i.ld = load <3 x float>, ptr %.sroa.5750.0..sroa_idx, align 4 ; 6 uses
  %i.le = shufflevector <3 x float> %i.ld, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %.sroa.5750.0.copyload = load float, ptr %.sroa.5750.0..sroa_idx, align 4 ; 7 uses
  %i.lf = shufflevector <3 x float> %i.ld, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %i.lg = insertelement <4 x float> %i.lf, float %i.lc, i64 1
  %i.lh = insertelement <4 x float> %i.lg, float %.sroa.0749.0.copyload, i64 2
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.lj = fmul <4 x float> %i.lf, %i.li           ; 2 uses
  %i.lk = shufflevector <3 x float> %i.ld, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ll = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lk, <4 x float> %i.lj) ; 3 uses
  %i.lm = extractelement <4 x float> %i.ll, i64 3
  %i.ln = extractelement <4 x float> %i.lj, i64 0
  %i.lo = call float @llvm.fmuladd.f32(float %.sroa.5750.0.copyload, float %.sroa.5750.0.copyload, float %i.ln)
  %i.lp = fmul float %.sroa.5750.0.copyload, %i.lc
  %i.lq = extractelement <3 x float> %i.ld, i64 1 ; 2 uses
  %i.lr = extractelement <3 x float> %i.ld, i64 2
  %i.ls = call float @llvm.fmuladd.f32(float %i.lq, float %i.lr, float %i.lp)
  %i.lt = fmul float %i.lq, %i.lc
  %i.lu = fmul float %.sroa.0749.0.copyload, %.sroa.5750.0.copyload
  %foldExtExtBinop = fmul <4 x float> %i.le, %i.le
  %i.lv = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.lw = call float @llvm.fmuladd.f32(float %.sroa.5750.0.copyload, float %.sroa.5750.0.copyload, float %i.lv)
  %i.lx = load ptr, ptr %i.kg, align 8
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %i.lx, i64 %.0771333 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.sroa.022.0.copyload = load float, ptr %i.lz, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  %i.ma = fadd float %.sroa.022.0.copyload, 0.000000e+00
  %i.mb = shufflevector <3 x float> %i.ld, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> %i.ll, <4 x i32> <i32 poison, i32 2, i32 poison, i32 4>
  %i.md = insertelement <4 x float> %i.mc, float %.sroa.5750.0.copyload, i64 0
  %i.me = insertelement <4 x float> %i.md, float %i.lw, i64 2
  %i.mf = shufflevector <4 x float> %i.mb, <4 x float> <float poison, float poison, float -2.000000e+00, float -2.000000e+00>, <4 x i32> <i32 2, i32 1, i32 6, i32 7>
  %i.mg = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.lt, i64 0
  %i.mh = insertelement <4 x float> %i.mg, float %i.lu, i64 1
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %i.mf, <4 x float> %i.mh) ; 6 uses
  %i.mj = insertelement <4 x float> %i.ll, float 1.000000e+00, i64 3
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %i.mi, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ml = fmul <4 x float> %i.mk, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 3 uses
  %i.mm = fmul float %i.lm, 2.000000e+00          ; 2 uses
  %i.mn = fmul <4 x float> %i.mi, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 5 uses
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mp = insertelement <2 x float> %i.mo, float %.sroa.022.0.copyload, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mr = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.ms = fadd <2 x float> %i.mr, zeroinitializer ; 2 uses
  %i.mt = fmul float %i.mm, 0.000000e+00
  %i.mu = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.mv = shufflevector <4 x float> %i.mi, <4 x float> %i.ml, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.mw = insertelement <4 x float> %i.mv, float -0.000000e+00, i64 3
  %36 = shufflevector <4 x float> %i.mn, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.mx = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = load <2 x float>, ptr %i.ky, align 8
  %i.na = call float @llvm.fmuladd.f32(float %i.lo, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %i.nb = insertelement <3 x float> <float poison, float 1.000000e+00, float poison>, float %i.ls, i64 0
  %i.nc = insertelement <3 x float> %i.nb, float %i.na, i64 2
  %i.nd = fmul <3 x float> %i.nc, <float 2.000000e+00, float -0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ne = shufflevector <3 x float> %i.nd, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nf = insertelement <2 x float> %i.ne, float %i.na, i64 0
  %i.ng = fmul <2 x float> %i.nf, zeroinitializer
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.mu, <4 x float> %i.nh, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.nj = insertelement <4 x float> %i.ni, float %i.mm, i64 3
  %i.nk = fadd <4 x float> %i.ml, %i.nj
  %i.nl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mn, <4 x float> zeroinitializer, <4 x float> %i.nk)
  %i.nm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> zeroinitializer, <4 x float> %i.nl) ; 5 uses
  %i.nn = shufflevector <4 x float> %i.ml, <4 x float> %i.nm, <3 x i32> <i32 2, i32 7, i32 1>
  %i.no = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nn, <3 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <3 x float> %i.nd)
  %37 = shufflevector <4 x float> %i.mi, <4 x float> %i.mn, <3 x i32> <i32 2, i32 poison, i32 5>
  %i.np = insertelement <3 x float> %37, float -0.000000e+00, i64 1
  %i.nq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.np, <3 x float> zeroinitializer, <3 x float> %i.no)
  %i.nr = shufflevector <2 x float> %i.mr, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ns = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nr, <3 x float> zeroinitializer, <3 x float> %i.nq) ; 3 uses
  %i.nt = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.nu = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.nt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nv = shufflevector <4 x float> %36, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nw = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.nt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.nx = shufflevector <3 x float> %i.ns, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ny = fmul <4 x float> %i.nw, %i.nx
  %i.nz = shufflevector <4 x float> %i.nt, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.oa = shufflevector <3 x float> %i.ns, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ob = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> %i.oa, <4 x float> %i.ny)
  %i.oc = shufflevector <3 x float> %i.ns, <3 x float> poison, <4 x i32> zeroinitializer
  %i.od = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> zeroinitializer
  %i.oe = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.of = load <2 x float>, ptr %.sroa.524.0..sroa_idx, align 4 ; 3 uses
  %.sroa.625.0.copyload = load float, ptr %.sroa.625.0..sroa_idx, align 8
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oh = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.oi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oh, <4 x float> %i.oc, <4 x float> %i.ob)
  %i.oj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.oi)
  %i.ok = shufflevector <4 x float> %i.mn, <4 x float> %i.mi, <3 x i32> <i32 0, i32 1, i32 6>
  %i.ol = shufflevector <2 x float> %i.mr, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.om = shufflevector <4 x float> %i.nm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.on = insertelement <2 x float> %i.of, float 0.000000e+00, i64 1
  %i.oo = fmul <2 x float> %i.om, %i.on           ; 2 uses
  %i.op = shufflevector <2 x float> %i.oo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oq = shufflevector <4 x float> %i.ni, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> zeroinitializer, <4 x float> %i.oq) ; 2 uses
  %i.os = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nu, <4 x float> %i.nv, <4 x float> %i.or) ; 2 uses
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ou = shufflevector <4 x float> %i.or, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ov = fadd <3 x float> %i.ok, %i.ou
  %i.ow = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ol, <3 x float> zeroinitializer, <3 x float> %i.ov) ; 3 uses
  %i.ox = shufflevector <4 x float> %i.nm, <4 x float> poison, <2 x i32> zeroinitializer
  %i.oy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ox, <2 x float> zeroinitializer, <2 x float> %i.oo)
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pa = shufflevector <4 x float> %i.ot, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.pb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oh, <4 x float> %i.oe, <4 x float> %i.pa)
  %i.pc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.my, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.pb)
  %i.pd = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.og, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.pe = shufflevector <3 x float> %i.ow, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pf = fmul <4 x float> %i.pd, %i.pe
  %i.pg = shufflevector <3 x float> %i.ow, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ph = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> %i.pg, <4 x float> %i.pf)
  %i.pi = shufflevector <3 x float> %i.ow, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oh, <4 x float> %i.pi, <4 x float> %i.ph)
  %i.pk = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pk, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.pj)
  store <4 x float> %i.pc, ptr %12, align 16
  store <4 x float> %i.oj, ptr %.sroa.13.0..sroa_idx682, align 16
  store <4 x float> %i.pl, ptr %.sroa.21.0..sroa_idx690, align 16
  %i.pm = shufflevector <4 x float> %i.os, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.pn = fadd <3 x float> %i.pm, zeroinitializer ; 3 uses
  %i.po = shufflevector <2 x float> %i.of, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.pp = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.po, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.pq = shufflevector <3 x float> %i.pn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pr = fmul <4 x float> %i.pp, %i.pq
  %i.ps = shufflevector <3 x float> %i.pn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.pt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> %i.ps, <4 x float> %i.pr)
  %i.pu = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.625.0.copyload, i64 2
  %i.pv = shufflevector <3 x float> %i.pn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pu, <4 x float> %i.pv, <4 x float> %i.pt)
  %i.px = fadd <4 x float> %i.pw, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.px, ptr %.sroa.29.0..sroa_idx698, align 16
  %i.py = load ptr, ptr %i.ea, align 8
  %i.pz = load ptr, ptr %11, align 8              ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = getelementptr inbounds i8, ptr %i.pz, i64 %i.qc
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qd, ptr noundef nonnull %12, ptr noundef nonnull %i.ep)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.1 unwind label %bb.aq

_ZN12aiMatrix4x4tIfEixEj.exit268.1:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268
  %i.qe = load ptr, ptr %i.ea, align 8
  %i.qf = load ptr, ptr %11, align 8              ; 2 uses
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = getelementptr inbounds i8, ptr %i.qf, i64 %i.qi
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qj, ptr noundef nonnull %.sroa.13.0..sroa_idx682, ptr noundef nonnull %i.eq)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.2 unwind label %bb.aq

_ZN12aiMatrix4x4tIfEixEj.exit268.2:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.1
  %i.qk = load ptr, ptr %i.ea, align 8
  %i.ql = load ptr, ptr %11, align 8              ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.ql, i64 %i.qo
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qp, ptr noundef nonnull %.sroa.21.0..sroa_idx690, ptr noundef nonnull %i.er)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.3 unwind label %bb.aq

_ZN12aiMatrix4x4tIfEixEj.exit268.3:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.2
  %i.qq = load ptr, ptr %i.ea, align 8
  %i.qr = load ptr, ptr %11, align 8              ; 2 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = getelementptr inbounds i8, ptr %i.qr, i64 %i.qu
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qv, ptr noundef nonnull %.sroa.29.0..sroa_idx698, ptr noundef nonnull %i.es)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.qw = add nuw nsw i64 %.0771333, 1            ; 2 uses
  %i.qx = load i32, ptr %i.gw, align 4
  %i.qy = zext i32 %i.qx to i64
  %i.qz = icmp samesign ult i64 %i.qw, %i.qy
  br i1 %i.qz, label %_ZN12aiMatrix4x4tIfEixEj.exit268, label %._crit_edge1335.loopexit, !llvm.loop !344

bb.aq:                                            ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.3, %_ZN12aiMatrix4x4tIfEixEj.exit268.2, %_ZN12aiMatrix4x4tIfEixEj.exit268.1, %_ZN12aiMatrix4x4tIfEixEj.exit268
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.at

bb.ar:                                            ; preds = %._crit_edge1335
  %i.rb = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i270 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i270, label %_ZNSt6vectorIfSaIfEED2Ev.exit271, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.rc = load ptr, ptr %i.dz, align 8
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = sub i64 %i.rd, %i.re
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rf) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit271

_ZNSt6vectorIfSaIfEED2Ev.exit271:                 ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.rg = load i32, ptr %i.gw, align 4
  %.not1350 = icmp eq i32 %i.rg, 0
  br i1 %.not1350, label %.noexc.i273, label %.lr.ph1337

.lr.ph1337:                                       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit271
  %i.rh = getelementptr inbounds nuw i8, ptr %i.gu, i64 1072
  %i.ri = getelementptr inbounds nuw i8, ptr %i.gu, i64 1076
  br label %bb.av

.noexc.i273:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit271
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.ed, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 21, ptr %i.c, align 8
  %i.rj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc274 unwind label %bb.bh ; 2 uses

.noexc274:                                        ; preds = %.noexc.i273
  store ptr %i.rj, ptr %15, align 8
  %i.rk = load i64, ptr %i.c, align 8             ; 3 uses
  store i64 %i.rk, ptr %i.ed, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.rj, ptr noundef nonnull align 1 dereferenceable(21) @.str.299, i64 21, i1 false)
  store i64 %i.rk, ptr %i.ee, align 8
  %i.rl = load ptr, ptr %15, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rk
  store i8 0, ptr %i.rm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.rn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #25, !noalias !371
  %i.ro = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.hd, i64 noundef %i.rn)
          to label %.noexc290 unwind label %bb.bi ; 6 uses

bb.at:                                            ; preds = %bb.aq, %bb.ao
  %.pn175.pn = phi { ptr, i32 } [ %i.ra, %bb.aq ], [ %i.kv, %bb.ao ]
  %i.rp = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i276 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorIfSaIfEED2Ev.exit277, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rq = load ptr, ptr %i.dz, align 8
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = ptrtoint ptr %i.rp to i64
  %i.rt = sub i64 %i.rr, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.rp, i64 noundef %i.rt) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit277

_ZNSt6vectorIfSaIfEED2Ev.exit277:                 ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.av:                                            ; preds = %.lr.ph1337, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit
  %.0751336 = phi i64 [ 0, %.lr.ph1337 ], [ %i.sk, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit ]
  %i.ru = load i32, ptr %i.rh, align 8
  switch i32 %i.ru, label %bb.az [
    i32 0, label %bb.aw
    i32 2, label %bb.aw
    i32 3, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av, %bb.av
  %i.rv = load ptr, ptr %i.eb, align 8            ; 6 uses
  %i.rw = load ptr, ptr %i.ec, align 8
  %.not.i = icmp eq ptr %i.rv, %i.rw
  br i1 %.not.i, label %bb.ax, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aw
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 2 uses
  store ptr %i.rx, ptr %i.rv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.rx, ptr noundef nonnull align 1 dereferenceable(7) @.str.297, i64 6, i1 false)
end_hunk_0
