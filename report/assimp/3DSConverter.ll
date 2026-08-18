inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.s
  %.153.i.i = phi ptr [ %.2.i.i, %bb.u ], [ %i.a, %bb.s ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.u ], [ false, %bb.s ]
  %.03051.i.i = phi i32 [ %i.je, %bb.u ], [ 1000000000, %bb.s ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.u ], [ %i.it, %bb.s ] ; 3 uses
  %i.iv = sdiv i32 %.13849.i.i, %.03051.i.i       ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = icmp eq i32 %.03051.i.i, 1              ; 2 uses
  %i.iy = or i1 %i.ix, %i.iw
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.iy ; 2 uses
  br i1 %or.cond3.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.iz = trunc i32 %i.iv to i8
  %i.ja = add i8 %i.iz, 48
  %i.jb = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.153.i.i, align 1
  %i.jc = add nuw nsw i32 %.13350.i.i, 1
  %i.jd = mul i32 %i.iv, %.03051.i.i              ; 0 uses
  br i1 %i.ix, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.239.i.i = phi i32 [ %.recomposed, %bb.t ], [ %.13849.i.i, %.lr.ph.i.i ]
  %.234.i.i = phi i32 [ %i.jc, %bb.t ], [ %.13350.i.i, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.jb, %bb.t ], [ %.153.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.je = sdiv i32 %.03051.i.i, 10
  %i.jf = icmp ult i32 %.234.i.i, 12
  br i1 %i.jf, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit:   ; preds = %bb.t, %bb.u
  %.4.i.i = phi ptr [ %.2.i.i, %bb.u ], [ %i.jb, %bb.t ]
  store i8 0, ptr %.4.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !26
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !26 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.jk, ptr %6, align 8, !alias.scope !29
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.jl, align 8, !alias.scope !29
  store i8 0, ptr %i.jk, align 8, !alias.scope !29
  %i.jm = add i64 %i.jj, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.jm)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit
  %i.jn = load i64, ptr %i.jl, align 8, !alias.scope !29
  %i.jo = sub i64 4611686018427387903, %i.jn
  %i.jp = icmp ult i64 %i.jo, %i.jj
  br i1 %i.jp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.jh, i64 noundef %i.jj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jr = load i64, ptr %i.jl, align 8, !alias.scope !29
  %i.js = add i64 %i.jr, -4611686018427387898
  %i.jt = icmp ult i64 %i.js, 6
  br i1 %i.jt, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.cont.i.i unwind label %bb.w

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ju = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.26, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %6, align 8, !alias.scope !29 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jk
  br i1 %i.jx, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.jy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24 ; 2 uses
  %i.jz = load i64, ptr %i.jl, align 8
  %i.ka = sub i64 4611686018427387903, %i.jz
  %i.kb = icmp ult i64 %i.ka, %i.jy
  br i1 %i.kb, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc260 unwind label %bb.z

.noexc260:                                        ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.kc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.a, i64 noundef %i.jy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.kd = load i64, ptr %i.jl, align 8            ; 5 uses
  %i.ke = icmp ugt i64 %i.kd, 1023
  %.pre = load ptr, ptr %6, align 8               ; 3 uses
  br i1 %i.ke, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.kf = trunc nuw nsw i64 %i.kd to i32
  store i32 %i.kf, ptr %2, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kg, ptr align 1 %.pre, i64 %i.kd, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kd
  store i8 0, ptr %i.kh, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.y
  %i.ki = icmp eq ptr %.pre, %i.jk
  br i1 %i.ki, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.kj = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.kj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.kk = load i64, ptr %i.jk, align 8
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.kl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.x
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %6, align 8               ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jk
  br i1 %i.ko, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.z, %bb.w
  %.sink = phi ptr [ %i.jw, %bb.w ], [ %i.kn, %bb.z ]
  %.pn235.ph = phi { ptr, i32 } [ %i.jv, %bb.w ], [ %i.km, %bb.z ]
  %i.kp = load i64, ptr %i.jk, align 8
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kq) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.z, %bb.w
  %.pn235 = phi { ptr, i32 } [ %i.jv, %bb.w ], [ %i.km, %bb.z ], [ %.pn235.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.aa:                                            ; preds = %._crit_edge.thread
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ks = load i64, ptr %i.kr, align 8            ; 4 uses
  %i.kt = icmp ugt i64 %i.ks, 1023
  br i1 %i.kt, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kv = trunc nuw nsw i64 %i.ks to i32
  store i32 %i.kv, ptr %2, align 4
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.kx = load ptr, ptr %i.ku, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kw, ptr align 1 %i.kx, i64 %i.ks, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ks
  store i8 0, ptr %i.ky, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = load ptr, ptr %i.kz, align 8            ; 2 uses
  %.not237 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not237, label %bb.ac, label %.lr.ph425

._crit_edge426:                                   ; preds = %.lr.ph425
  %.pre465 = load ptr, ptr %i.kz, align 8         ; 4 uses
  %.phi.trans.insert471 = getelementptr inbounds nuw i8, ptr %.pre465, i64 8
  %.pre472 = load float, ptr %.phi.trans.insert471, align 4, !noalias !32 ; 4 uses
  %.phi.trans.insert469 = getelementptr inbounds nuw i8, ptr %.pre465, i64 12
  %.phi.trans.insert467 = getelementptr inbounds nuw i8, ptr %.pre465, i64 20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre465, i64 16
  %i.ld = fneg float %.pre472                     ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.lf = load <2 x float>, ptr %.phi.trans.insert469, align 4, !noalias !32 ; 5 uses
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.lh = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.lg, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.li = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lj = insertelement <4 x float> %i.li, float -0.000000e+00, i64 3
  %i.lk = extractelement <2 x float> %i.lf, i64 0 ; 5 uses
  %i.ll = fmul float %i.lk, %i.ld
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.lm = load <2 x float>, ptr %.phi.trans.insert, align 4, !noalias !32 ; 7 uses
  %.pre468 = load float, ptr %.phi.trans.insert467, align 4, !noalias !32 ; 4 uses
  %i.ln = fmul float %.pre468, %.pre468           ; 2 uses
  %i.lo = fmul float %.pre468, %.pre472
  %7 = extractelement <2 x float> %i.lm, i64 0    ; 2 uses
  %8 = call float @llvm.fmuladd.f32(float %7, float %7, float %i.ln)
  %9 = insertelement <2 x float> poison, float %.pre468, i64 0 ; 2 uses
  %10 = insertelement <2 x float> %9, float %.pre472, i64 1
  %11 = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %12 = insertelement <2 x float> %11, float %i.ld, i64 0
  %13 = fmul <2 x float> %10, %12
  %i.lp = insertelement <4 x float> %i.lj, float %8, i64 0
  %i.lq = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.lr = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %14, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ls = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lh, <4 x float> %i.lr, <4 x float> %15)
  %i.lt = fmul <4 x float> %i.ls, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.lu = call float @llvm.fmuladd.f32(float %i.lk, float %i.lk, float %i.ln)
  %i.lv = shufflevector <4 x float> %i.lg, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.lx = insertelement <4 x float> %i.lq, float -0.000000e+00, i64 3
  %i.ly = insertelement <4 x float> %i.lx, float %i.lu, i64 1
  %i.lz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.lo, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.ll, i64 2
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.ly, <4 x float> %i.ma)
  %i.mc = fmul <4 x float> %i.mb, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %foldExtExtBinop = fmul <2 x float> %i.lm, %i.lm
  %i.md = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.me = call float @llvm.fmuladd.f32(float %i.lk, float %i.lk, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %i.me, float -2.000000e+00, float 1.000000e+00)
  store <4 x float> %i.lt, ptr %i.le, align 4
  store <4 x float> %i.mc, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.mg = shufflevector <2 x float> %i.lm, <2 x float> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.mh = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %.pre472, i64 1
  %i.mj = fmul <2 x float> %i.mg, %i.mi
  %i.mk = shufflevector <2 x float> %i.lf, <2 x float> %i.lm, <2 x i32> <i32 0, i32 2>
  %i.ml = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.ml, <2 x float> %i.mj)
  %i.mn = fmul <2 x float> %i.mm, splat (float 2.000000e+00)
  store <2 x float> %i.mn, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %i.mf, ptr %.sroa.13320.0..sroa_idx, align 4
  %.sroa.14321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14321.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  br label %bb.ae

.lr.ph425:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, %.lr.ph425
  %.sroa.0323.0424 = phi ptr [ %i.mr, %.lr.ph425 ], [ %i.lc, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265 ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 8 ; 2 uses
  %i.mp = load float, ptr %i.mo, align 8
  %i.mq = fneg float %i.mp
  store float %i.mq, ptr %i.mo, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 32 ; 2 uses
  %i.ms = load ptr, ptr %i.la, align 8
  %.not378 = icmp eq ptr %i.mr, %i.ms
  br i1 %.not378, label %._crit_edge426, label %.lr.ph425, !llvm.loop !35

bb.ac:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = load ptr, ptr %i.mt, align 8            ; 2 uses
  %.not238 = icmp eq ptr %i.mv, %i.mw
  br i1 %.not238, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load float, ptr %i.mx, align 8
  %i.mz = fmul float %i.my, f0xBC8EFA35           ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 1036
  store i64 0, ptr %i.nb, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.nc = call noundef float @cosf(float noundef %i.mz) #24 ; 2 uses
  store float %i.nc, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.nc, ptr %i.na, align 4
  %i.nd = call noundef float @sinf(float noundef %i.mz) #24 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 1044
  store float %i.nd, ptr %i.ne, align 4
  %i.nf = fneg float %i.nd
  store float %i.nf, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge426
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = load ptr, ptr %i.ng, align 8            ; 4 uses
  %.not239 = icmp eq ptr %i.ni, %i.nj
  br i1 %.not239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = load float, ptr %i.nk, align 4
  %i.no = fmul float %i.nm, %i.nn
  store float %i.no, ptr %i.nk, align 4
  %i.np = load float, ptr %i.nl, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 1044 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = fmul float %i.np, %i.nr
  store float %i.ns, ptr %i.nq, align 4
  %i.nt = load float, ptr %i.nl, align 4
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 1060 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4
  %i.nw = fmul float %i.nt, %i.nv
  store float %i.nw, ptr %i.nu, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 12 ; 3 uses
  %i.ny = load float, ptr %i.nx, align 4
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4
  %i.ob = fmul float %i.ny, %i.oa
  store float %i.ob, ptr %i.nz, align 4
  %i.oc = load float, ptr %i.nx, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 2 uses
  %i.oe = load float, ptr %i.od, align 4
  %i.of = fmul float %i.oc, %i.oe
  store float %i.of, ptr %i.od, align 4
  %i.og = load float, ptr %i.nx, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = fmul float %i.og, %i.oi
  store float %i.oj, ptr %i.oh, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nj, i64 16 ; 3 uses
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  %i.on = load float, ptr %i.om, align 4
  %i.oo = fmul float %i.ol, %i.on
  store float %i.oo, ptr %i.om, align 4
  %i.op = load float, ptr %i.ok, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 1052 ; 2 uses
  %i.or = load float, ptr %i.oq, align 4
  %i.os = fmul float %i.op, %i.or
  store float %i.os, ptr %i.oq, align 4
  %i.ot = load float, ptr %i.ok, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 1068 ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4
  %i.ow = fmul float %i.ot, %i.ov
  store float %i.ow, ptr %i.ou, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.oz = load ptr, ptr %i.oy, align 8            ; 3 uses
  %i.pa = load ptr, ptr %i.ox, align 8            ; 4 uses
  %.not240 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not240, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load float, ptr %i.pb, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4
  %i.pf = fadd float %i.pc, %i.pe
  store float %i.pf, ptr %i.pd, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  %i.ph = load float, ptr %i.pg, align 4
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4
  %i.pk = fadd float %i.ph, %i.pj
  store float %i.pk, ptr %i.pi, align 4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pm = load float, ptr %i.pl, align 4
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 1072 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4
  %i.pp = fadd float %i.pm, %i.po
  store float %i.pp, ptr %i.pn, align 4
  %.pre473 = load ptr, ptr %i.oy, align 8
  %.pre474 = load ptr, ptr %i.ox, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.pq = phi ptr [ %.pre474, %bb.ah ], [ %i.oz, %bb.ag ]
  %i.pr = phi ptr [ %.pre473, %bb.ah ], [ %i.oz, %bb.ag ]
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pq to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = sdiv exact i64 %i.pu, 24
  %i.pw = icmp ugt i64 %i.pv, 1
  br i1 %i.pw, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.px = load ptr, ptr %i.la, align 8
  %i.py = load ptr, ptr %i.kz, align 8
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = icmp ugt i64 %i.qb, 32
  br i1 %i.qc, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.qd = load ptr, ptr %i.nh, align 8
  %i.qe = load ptr, ptr %i.ng, align 8
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 24
  %i.qj = icmp ugt i64 %i.qi, 1
  br i1 %i.qj, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = load ptr, ptr %i.qk, align 8
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = icmp ugt i64 %i.qq, 16
  br i1 %i.qr, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = load ptr, ptr %i.qs, align 8
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 24
  %i.ra = icmp ugt i64 %i.qz, 1
  br i1 %i.ra, label %bb.an, label %bb.bq

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
end_hunk_0
