Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaExporter?download=true
inline.NumInlined: 3741
inline.NumDeleted: 859
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp15ColladaExporter21WriteAnimationLibraryEm:bb.a
.loopexit.split-lp797:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp799 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0770.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.ix = ptrtoint ptr %.sroa.18780.0.lcssa to i64
  %i.iy = sub i64 %i.ix, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.0.lcssa, i64 noundef %i.iy) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.ak
  store i64 0, ptr %i.ds, align 8
  %i.iz = load ptr, ptr %8, align 8
  store i8 0, ptr %i.iz, align 1
  %i.ja = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #25 ; 2 uses
  %i.jb = load i64, ptr %i.ds, align 8
  %i.jc = sub i64 4611686018427387903, %i.jb
  %i.jd = icmp ult i64 %i.jc, %i.ja
  br i1 %i.jd, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.je = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.hd, i64 noundef %i.ja)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245 unwind label %.loopexit801 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i242
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.dx, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dx, ptr noundef nonnull align 1 dereferenceable(14) @.str.296, i64 14, i1 false)
  store i64 14, ptr %i.dy, align 8
  store i8 0, ptr %i.eo, align 2
  %i.jf = load i64, ptr %i.ds, align 8
  %i.jg = add i64 %i.jf, -4611686018427387890
  %i.jh = icmp ult i64 %i.jg, 14
  br i1 %i.jh, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.355) #26
          to label %.noexc251 unwind label %.loopexit.split-lp812

.noexc251:                                        ; preds = %bb.al
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit245
  %i.ji = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.dx, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253 unwind label %.loopexit811 ; 0 uses

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
          to label %.noexc257 unwind label %bb.as ; 5 uses

.noexc257:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.js = load ptr, ptr %11, align 8              ; 4 uses
  %i.jt = load ptr, ptr %i.ea, align 8
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, 0
  br i1 %i.jx, label %bb.am, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.am:                                            ; preds = %.noexc257
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jr, ptr align 4 %i.js, i64 %i.jw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.am, %.noexc257
  %.not.i8.i = icmp eq ptr %i.js, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.jy = load ptr, ptr %i.dz, align 8
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.ka) #27
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.an, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.jr, ptr %11, align 8
  store ptr %i.jr, ptr %i.ea, align 8
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jp
  store ptr %i.kb, ptr %i.dz, align 8
  %.pre = load i32, ptr %i.gw, align 4
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i
  %i.kc = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.jr, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ] ; 2 uses
  %i.kd = phi i32 [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pre, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ]
  %.not1341 = icmp eq i32 %i.kd, 0
  br i1 %.not1341, label %._crit_edge1327, label %.lr.ph1326

.lr.ph1326:                                       ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gu, i64 1064
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gu, i64 1048
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gu, i64 1032
  br label %_ZN12aiMatrix4x4tIfEixEj.exit268

._crit_edge1327.loopexit:                         ; preds = %bb.at
  %.pre1407 = load ptr, ptr %11, align 8
  %.pre1408 = load ptr, ptr %i.ea, align 8
  br label %._crit_edge1327

._crit_edge1327:                                  ; preds = %._crit_edge1327.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.kh = phi ptr [ %.pre1408, %._crit_edge1327.loopexit ], [ %i.kc, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %i.ki = phi ptr [ %.pre1407, %._crit_edge1327.loopexit ], [ %i.kc, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 2 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 2
  %i.kn = lshr i64 %i.km, 4
  invoke void @_ZN6Assimp15ColladaExporter15WriteFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13FloatDataTypeEPKfm(ptr noundef nonnull align 8 dereferenceable(1248) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 4, ptr noundef %i.ki, i64 noundef %i.kn)
          to label %bb.av unwind label %bb.as

bb.ao:                                            ; preds = %._crit_edge
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit796, %.loopexit.split-lp797, %bb.ao
  %.sroa.18780.01068 = phi ptr [ %.sroa.18780.0.lcssa, %bb.ao ], [ %.sroa.11776.01319, %.loopexit796 ], [ %.sroa.11776.01319, %.loopexit.split-lp797 ]
  %.sroa.0770.01040 = phi ptr [ %.sroa.0770.0.lcssa, %bb.ao ], [ %.sroa.0770.01320, %.loopexit796 ], [ %.sroa.0770.01320, %.loopexit.split-lp797 ] ; 3 uses
  %.pn178 = phi { ptr, i32 } [ %i.ko, %bb.ao ], [ %lpad.loopexit798, %.loopexit796 ], [ %lpad.loopexit.split-lp799, %.loopexit.split-lp797 ] ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %.sroa.0770.01040, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kp = ptrtoint ptr %.sroa.18780.01068 to i64
  %i.kq = ptrtoint ptr %.sroa.0770.01040 to i64
  %i.kr = sub i64 %i.kp, %i.kq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0770.01040, i64 noundef %i.kr) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

.loopexit811:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250
  %lpad.loopexit813 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp812:                            ; preds = %bb.al
  %lpad.loopexit.split-lp814 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp812, %.loopexit811
  %lpad.phi815 = phi { ptr, i32 } [ %lpad.loopexit813, %.loopexit811 ], [ %lpad.loopexit.split-lp814, %.loopexit.split-lp812 ]
  %i.ks = load ptr, ptr %10, align 8              ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.dx
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.ar
  %i.ku = load i64, ptr %i.dx, align 8
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.as:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %._crit_edge1327
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN12aiMatrix4x4tIfEixEj.exit268:                 ; preds = %.lr.ph1326, %bb.at
  %.0771325 = phi i64 [ 0, %.lr.ph1326 ], [ %i.qg, %bb.at ] ; 4 uses
  %i.kx = load ptr, ptr %i.ke, align 8
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %.0771325 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kf, align 8
  %i.lb = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %.0771325 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.sroa.0749.0.copyload = load float, ptr %i.lc, align 8 ; 4 uses
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %.sroa.7752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 20
  %.sroa.7752.0.copyload = load float, ptr %.sroa.7752.0..sroa_idx, align 4 ; 6 uses
  %i.ld = fneg float %.sroa.0749.0.copyload       ; 3 uses
  %i.le = fmul float %.sroa.7752.0.copyload, %i.ld
  %i.lf = load ptr, ptr %i.kg, align 8
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.lf, i64 %.0771325 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %.sroa.022.0.copyload = load float, ptr %i.lh, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.li = fadd float %.sroa.022.0.copyload, 0.000000e+00
  %i.lj = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.lk = fadd <2 x float> %i.lj, zeroinitializer ; 2 uses
  %i.ll = load <1 x float>, ptr %i.kz, align 8
  %i.lm = insertelement <3 x float> <float -2.000000e+00, float poison, float poison>, float %.sroa.7752.0.copyload, i64 1
  %i.ln = load <2 x float>, ptr %.sroa.5750.0..sroa_idx, align 4 ; 9 uses
  %36 = shufflevector <2 x float> %i.ln, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %37 = shufflevector <2 x float> %i.ln, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.lp = shufflevector <2 x float> %i.ln, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.lq = extractelement <2 x float> %i.ln, i64 1 ; 4 uses
  %i.lr = fmul float %.sroa.0749.0.copyload, %i.lq
  %i.ls = shufflevector <3 x float> %i.lm, <3 x float> %i.lp, <3 x i32> <i32 0, i32 1, i32 4>
  %i.lt = insertelement <3 x float> <float 1.000000e+00, float poison, float poison>, float %i.lr, i64 1
  %i.lu = insertelement <3 x float> %i.lt, float %i.le, i64 2
  %i.lv = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lw = insertelement <2 x float> %i.lv, float %.sroa.0749.0.copyload, i64 0
  %i.lx = insertelement <2 x float> poison, float %.sroa.7752.0.copyload, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %i.ld, i64 1
  %i.lz = fmul <2 x float> %i.lw, %i.ly
  %38 = shufflevector <2 x float> %i.ln, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison> ; 2 uses
  %39 = shufflevector <3 x float> %38, <3 x float> %37, <3 x i32> <i32 0, i32 4, i32 poison>
  %40 = insertelement <3 x float> <float poison, float poison, float -2.000000e+00>, float %i.lq, i64 0
  %41 = insertelement <3 x float> %40, float %.sroa.7752.0.copyload, i64 1
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.mb = insertelement <3 x float> %i.ma, float 1.000000e+00, i64 2
  %i.mc = insertelement <2 x float> poison, float %.sroa.0749.0.copyload, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.ld, i64 1
  %i.me = fmul <2 x float> %i.ln, %i.md
  %i.mf = insertelement <2 x float> %i.ln, float %.sroa.7752.0.copyload, i64 0 ; 2 uses
  %i.mg = fmul <2 x float> %i.mf, %i.mf           ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.mh)
  %i.mj = insertelement <3 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <3 x float> %i.mj, <3 x float> %i.lo, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.ml = shufflevector <3 x float> %i.mk, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.mm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ml, <3 x float> %i.ls, <3 x float> %i.lu) ; 3 uses
  %i.mn = fmul <3 x float> %i.mm, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00> ; 3 uses
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lv, <2 x float> %i.mg)
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.mq = shufflevector <3 x float> %39, <3 x float> %i.mp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.mr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mq, <3 x float> %41, <3 x float> %i.mb) ; 2 uses
  %i.ms = fmul <3 x float> %i.mr, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %42 = shufflevector <3 x float> %38, <3 x float> %i.mp, <3 x i32> <i32 0, i32 4, i32 poison>
  %43 = shufflevector <3 x float> %42, <3 x float> %36, <3 x i32> <i32 0, i32 1, i32 4>
  %44 = insertelement <3 x float> <float poison, float -2.000000e+00, float poison>, float %.sroa.7752.0.copyload, i64 0
  %45 = shufflevector <3 x float> %44, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.mt = shufflevector <2 x float> %i.me, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.mu = insertelement <3 x float> %i.mt, float 1.000000e+00, i64 1
  %i.mv = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %43, <3 x float> %45, <3 x float> %i.mu) ; 3 uses
  %i.mw = fmul <3 x float> %i.mv, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 3 uses
  %i.mx = fmul <3 x float> %i.ms, zeroinitializer ; 2 uses
  %i.my = fadd <3 x float> %i.mn, %i.mx
  %i.mz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mw, <3 x float> zeroinitializer, <3 x float> %i.my)
  %i.na = insertelement <3 x float> poison, float %.sroa.022.0.copyload, i64 0
  %i.nb = shufflevector <3 x float> %i.na, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nb, <3 x float> zeroinitializer, <3 x float> %i.mz) ; 3 uses
  %i.nd = shufflevector <1 x float> %i.ll, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.nf = shufflevector <3 x float> %i.nc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ng = shufflevector <3 x float> %i.nc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nh = insertelement <4 x float> poison, float %i.li, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = load <2 x float>, ptr %.sroa.524.0..sroa_idx, align 4 ; 3 uses
  %.sroa.625.0.copyload = load float, ptr %.sroa.625.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.nk = shufflevector <3 x float> %i.mn, <3 x float> %i.mm, <3 x i32> <i32 1, i32 3, i32 2>
  %i.nl = shufflevector <3 x float> %i.ms, <3 x float> %i.mr, <3 x i32> <i32 1, i32 0, i32 5>
  %i.nm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nk, <3 x float> zeroinitializer, <3 x float> %i.nl)
  %i.nn = shufflevector <3 x float> %i.mv, <3 x float> %i.mw, <3 x i32> <i32 1, i32 3, i32 5>
  %i.no = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.nn, <3 x float> zeroinitializer, <3 x float> %i.nm)
  %i.np = shufflevector <2 x float> %i.lj, <2 x float> poison, <3 x i32> zeroinitializer
  %i.nq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.np, <3 x float> zeroinitializer, <3 x float> %i.no) ; 3 uses
  %i.nr = shufflevector <3 x float> %i.nc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ns = shufflevector <2 x float> %i.nj, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 2, i32 2>
  %i.nt = fmul <4 x float> %i.nr, %i.ns
  %i.nu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ne, <4 x float> %i.nf, <4 x float> %i.nt)
  %i.nv = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.nw = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.nv, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.nx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nw, <4 x float> %i.ng, <4 x float> %i.nu)
  %i.ny = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ni, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.nx)
  %i.nz = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.nv, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.oa = shufflevector <3 x float> %i.nq, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ob = fmul <4 x float> %i.nz, %i.oa
  %i.oc = shufflevector <3 x float> %i.nq, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ne, <4 x float> %i.oc, <4 x float> %i.ob)
  %i.oe = shufflevector <3 x float> %i.nq, <3 x float> poison, <4 x i32> zeroinitializer
  %i.of = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nw, <4 x float> %i.oe, <4 x float> %i.od)
  %i.og = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.oh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.og, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.of)
  store <4 x float> %i.ny, ptr %12, align 16
  store <4 x float> %i.oh, ptr %.sroa.13.0..sroa_idx682, align 16
  %i.oi = shufflevector <3 x float> %i.mm, <3 x float> %i.mn, <3 x i32> <i32 0, i32 4, i32 5>
  %i.oj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.oi, <3 x float> zeroinitializer, <3 x float> %i.mx) ; 2 uses
  %i.ok = shufflevector <3 x float> %i.mw, <3 x float> %i.mv, <3 x i32> <i32 0, i32 4, i32 2> ; 2 uses
  %i.ol = fadd <3 x float> %i.ok, %i.oj
  %i.om = shufflevector <2 x float> %i.lj, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.on = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.om, <3 x float> zeroinitializer, <3 x float> %i.ol) ; 3 uses
  %i.oo = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.op = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.oo, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.oq = shufflevector <3 x float> %i.on, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.or = fmul <4 x float> %i.op, %i.oq
  %i.os = shufflevector <3 x float> %i.on, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ne, <4 x float> %i.os, <4 x float> %i.or)
  %i.ou = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.625.0.copyload, i64 2 ; 2 uses
  %i.ov = shufflevector <3 x float> %i.on, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ow = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> %i.ov, <4 x float> %i.ot)
  %i.ox = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.oy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ow)
  store <4 x float> %i.oy, ptr %.sroa.21.0..sroa_idx690, align 16
  %i.oz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ok, <3 x float> zeroinitializer, <3 x float> %i.oj)
  %i.pa = fadd <3 x float> %i.oz, zeroinitializer ; 3 uses
  %i.pb = shufflevector <3 x float> %i.pa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pc = fmul <4 x float> %i.op, %i.pb
  %i.pd = shufflevector <3 x float> %i.pa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.pe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ne, <4 x float> %i.pd, <4 x float> %i.pc)
  %i.pf = shufflevector <3 x float> %i.pa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> %i.pf, <4 x float> %i.pe)
  %i.ph = fadd <4 x float> %i.pg, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ph, ptr %.sroa.29.0..sroa_idx698, align 16
  %i.pi = load ptr, ptr %i.ea, align 8
  %i.pj = load ptr, ptr %11, align 8              ; 2 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = ptrtoint ptr %i.pj to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = getelementptr inbounds i8, ptr %i.pj, i64 %i.pm
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.pn, ptr noundef nonnull %12, ptr noundef nonnull %i.ep)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.1 unwind label %bb.au

_ZN12aiMatrix4x4tIfEixEj.exit268.1:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268
  %i.po = load ptr, ptr %i.ea, align 8
  %i.pp = load ptr, ptr %11, align 8              ; 2 uses
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = getelementptr inbounds i8, ptr %i.pp, i64 %i.ps
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.pt, ptr noundef nonnull %.sroa.13.0..sroa_idx682, ptr noundef nonnull %i.eq)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.2 unwind label %bb.au

_ZN12aiMatrix4x4tIfEixEj.exit268.2:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.1
  %i.pu = load ptr, ptr %i.ea, align 8
  %i.pv = load ptr, ptr %11, align 8              ; 2 uses
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.pv, i64 %i.py
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.pz, ptr noundef nonnull %.sroa.21.0..sroa_idx690, ptr noundef nonnull %i.er)
          to label %_ZN12aiMatrix4x4tIfEixEj.exit268.3 unwind label %bb.au

_ZN12aiMatrix4x4tIfEixEj.exit268.3:               ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.2
  %i.qa = load ptr, ptr %i.ea, align 8
  %i.qb = load ptr, ptr %11, align 8              ; 2 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.qb, i64 %i.qe
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIPfEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.qf, ptr noundef nonnull %.sroa.29.0..sroa_idx698, ptr noundef nonnull %i.es)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.qg = add nuw nsw i64 %.0771325, 1            ; 2 uses
  %i.qh = load i32, ptr %i.gw, align 4
  %i.qi = zext i32 %i.qh to i64
  %i.qj = icmp samesign ult i64 %i.qg, %i.qi
  br i1 %i.qj, label %_ZN12aiMatrix4x4tIfEixEj.exit268, label %._crit_edge1327.loopexit, !llvm.loop !344

bb.au:                                            ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit268.3, %_ZN12aiMatrix4x4tIfEixEj.exit268.2, %_ZN12aiMatrix4x4tIfEixEj.exit268.1, %_ZN12aiMatrix4x4tIfEixEj.exit268
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge1327
  %i.ql = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i270 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i270, label %_ZNSt6vectorIfSaIfEED2Ev.exit271, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qm = load ptr, ptr %i.dz, align 8
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.ql to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qp) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit271

_ZNSt6vectorIfSaIfEED2Ev.exit271:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.qq = load i32, ptr %i.gw, align 4
  %.not1342 = icmp eq i32 %i.qq, 0
  br i1 %.not1342, label %.noexc.i273, label %.lr.ph1329

.lr.ph1329:                                       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit271
  %i.qr = getelementptr inbounds nuw i8, ptr %i.gu, i64 1072
  %i.qs = getelementptr inbounds nuw i8, ptr %i.gu, i64 1076
  br label %bb.az

.noexc.i273:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit271
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.ed, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 21, ptr %i.c, align 8
  %i.qt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc274 unwind label %bb.bm ; 2 uses

.noexc274:                                        ; preds = %.noexc.i273
  store ptr %i.qt, ptr %15, align 8
  %i.qu = load i64, ptr %i.c, align 8             ; 3 uses
  store i64 %i.qu, ptr %i.ed, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.qt, ptr noundef nonnull align 1 dereferenceable(21) @.str.299, i64 21, i1 false)
  store i64 %i.qu, ptr %i.ee, align 8
  %i.qv = load ptr, ptr %15, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qu
  store i8 0, ptr %i.qw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.qx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #25, !noalias !371
  %i.qy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.hd, i64 noundef %i.qx)
          to label %.noexc290 unwind label %bb.bn ; 6 uses

bb.ax:                                            ; preds = %bb.au, %bb.as
  %.pn175.pn = phi { ptr, i32 } [ %i.qk, %bb.au ], [ %i.kw, %bb.as ]
  %i.qz = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i276 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorIfSaIfEED2Ev.exit277, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ra = load ptr, ptr %i.dz, align 8
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.qz to i64
  %i.rd = sub i64 %i.rb, %i.rc
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.rd) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit277

_ZNSt6vectorIfSaIfEED2Ev.exit277:                 ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

bb.az:                                            ; preds = %.lr.ph1329, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit
  %.0751328 = phi i64 [ 0, %.lr.ph1329 ], [ %i.ru, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit ]
  %i.re = load i32, ptr %i.qr, align 8
  switch i32 %i.re, label %bb.bd [
    i32 0, label %bb.ba
    i32 2, label %bb.ba
    i32 3, label %bb.ba
  ]

end_hunk_0
