inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.ie, %bb.n ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %._crit_edge422, %._crit_edge
  %.sroa.0349.0.lcssa530 = phi ptr [ %.sroa.0349.1, %._crit_edge ], [ %.sroa.0349.1, %._crit_edge422 ], [ %i.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.26.0.lcssa526 = phi ptr [ %.sroa.26.1, %._crit_edge ], [ %.sroa.26.1, %._crit_edge422 ], [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.it = load i32, ptr %i.is, align 8            ; 2 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i

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
  %.phi.trans.insert469.a = getelementptr inbounds nuw i8, ptr %.pre465, i64 20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre465, i64 16
  %i.ld = fneg float %.pre472                     ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %7 = load <2 x float>, ptr %.phi.trans.insert469, align 4, !noalias !32 ; 5 uses
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %9 = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %8, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %11 = insertelement <4 x float> %10, float -0.000000e+00, i64 3
  %12 = extractelement <2 x float> %7, i64 0      ; 5 uses
  %13 = fmul float %12, %i.ld
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.lf = load <2 x float>, ptr %.phi.trans.insert, align 4, !noalias !32 ; 6 uses
  %.pre468 = load float, ptr %.phi.trans.insert469.a, align 4, !noalias !32 ; 5 uses
  %14 = fmul float %.pre468, %.pre468             ; 2 uses
  %15 = fmul float %.pre468, %i.ld
  %16 = fmul float %.pre468, %.pre472
  %i.lg = extractelement <2 x float> %i.lf, i64 0 ; 3 uses
  %i.lh = call float @llvm.fmuladd.f32(float %i.lg, float %i.lg, float %14)
  %17 = fmul float %i.lg, %.pre472
  %18 = insertelement <4 x float> %11, float %i.lh, i64 0
  %19 = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %20 = shufflevector <4 x float> %18, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %21 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, float %15, i64 1
  %22 = insertelement <4 x float> %21, float %17, i64 2
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %20, <4 x float> %22)
  %24 = fmul <4 x float> %23, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.li = call float @llvm.fmuladd.f32(float %12, float %12, float %14)
  %25 = shufflevector <4 x float> %8, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %26 = shufflevector <4 x float> %25, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %27 = insertelement <4 x float> %19, float -0.000000e+00, i64 3
  %28 = insertelement <4 x float> %27, float %i.li, i64 1
  %29 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %16, i64 0
  %30 = insertelement <4 x float> %29, float %13, i64 2
  %31 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %28, <4 x float> %30)
  %32 = fmul <4 x float> %31, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.lj = fmul <2 x float> %i.lf, %i.lf
  %i.lk = extractelement <2 x float> %i.lj, i64 0
  %i.ll = call float @llvm.fmuladd.f32(float %12, float %12, float %i.lk)
  %i.lm = call float @llvm.fmuladd.f32(float %i.ll, float -2.000000e+00, float 1.000000e+00)
  store <4 x float> %24, ptr %i.le, align 4
  store <4 x float> %32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %33 = shufflevector <2 x float> %i.lf, <2 x float> %7, <2 x i32> <i32 0, i32 2>
  %34 = insertelement <2 x float> poison, float %i.ld, i64 0
  %35 = insertelement <2 x float> %34, float %.pre472, i64 1
  %36 = fmul <2 x float> %33, %35
  %37 = shufflevector <2 x float> %7, <2 x float> %i.lf, <2 x i32> <i32 0, i32 2>
  %38 = insertelement <2 x float> poison, float %.pre468, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %39, <2 x float> %36)
  %41 = fmul <2 x float> %40, splat (float 2.000000e+00)
  store <2 x float> %41, ptr %.sroa.8317.0..sroa_idx, align 4
  %.sroa.13320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %i.lm, ptr %.sroa.13320.0..sroa_idx, align 4
  %.sroa.14321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14321.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  br label %bb.ae

.lr.ph425:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, %.lr.ph425
  %.sroa.0323.0424 = phi ptr [ %i.lq, %.lr.ph425 ], [ %i.lc, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 8 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8
  %i.lp = fneg float %i.lo
  store float %i.lp, ptr %i.ln, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 32 ; 2 uses
  %i.lr = load ptr, ptr %i.la, align 8
  %.not378 = icmp eq ptr %i.lq, %i.lr
  br i1 %.not378, label %._crit_edge426, label %.lr.ph425, !llvm.loop !35

bb.ac:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = load ptr, ptr %i.ls, align 8            ; 2 uses
  %.not238 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not238, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load float, ptr %i.lw, align 8
  %i.ly = fmul float %i.lx, f0xBC8EFA35           ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 1036
  store i64 0, ptr %i.ma, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.mb = call noundef float @cosf(float noundef %i.ly) #24 ; 2 uses
  store float %i.mb, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.mb, ptr %i.lz, align 4
  %i.mc = call noundef float @sinf(float noundef %i.ly) #24 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 1044
  store float %i.mc, ptr %i.md, align 4
  %i.me = fneg float %i.mc
  store float %i.me, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge426
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = load ptr, ptr %i.mf, align 8            ; 4 uses
  %.not239 = icmp eq ptr %i.mh, %i.mi
  br i1 %.not239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 3 uses
  %i.ml = load float, ptr %i.mk, align 4
  %i.mm = load float, ptr %i.mj, align 4
  %i.mn = fmul float %i.ml, %i.mm
  store float %i.mn, ptr %i.mj, align 4
  %i.mo = load float, ptr %i.mk, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 1044 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4
  %i.mr = fmul float %i.mo, %i.mq
  store float %i.mr, ptr %i.mp, align 4
  %i.ms = load float, ptr %i.mk, align 4
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 1060 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4
  %i.mv = fmul float %i.ms, %i.mu
  store float %i.mv, ptr %i.mt, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mi, i64 12 ; 3 uses
  %i.mx = load float, ptr %i.mw, align 4
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4
  %i.na = fmul float %i.mx, %i.mz
  store float %i.na, ptr %i.my, align 4
  %i.nb = load float, ptr %i.mw, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4
  %i.ne = fmul float %i.nb, %i.nd
  store float %i.ne, ptr %i.nc, align 4
  %i.nf = load float, ptr %i.mw, align 4
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4
  %i.ni = fmul float %i.nf, %i.nh
  store float %i.ni, ptr %i.ng, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 3 uses
  %i.nk = load float, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fmul float %i.nk, %i.nm
  store float %i.nn, ptr %i.nl, align 4
  %i.no = load float, ptr %i.nj, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 1052 ; 2 uses
  %i.nq = load float, ptr %i.np, align 4
  %i.nr = fmul float %i.no, %i.nq
  store float %i.nr, ptr %i.np, align 4
  %i.ns = load float, ptr %i.nj, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 1068 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = fmul float %i.ns, %i.nu
  store float %i.nv, ptr %i.nt, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8            ; 3 uses
  %i.nz = load ptr, ptr %i.nw, align 8            ; 4 uses
  %.not240 = icmp eq ptr %i.ny, %i.nz
  br i1 %.not240, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load float, ptr %i.oa, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4
  %i.oe = fadd float %i.ob, %i.od
  store float %i.oe, ptr %i.oc, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.og = load float, ptr %i.of, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = fadd float %i.og, %i.oi
  store float %i.oj, ptr %i.oh, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 1072 ; 2 uses
  %i.on = load float, ptr %i.om, align 4
  %i.oo = fadd float %i.ol, %i.on
  store float %i.oo, ptr %i.om, align 4
  %.pre473 = load ptr, ptr %i.nx, align 8
  %.pre474 = load ptr, ptr %i.nw, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.op = phi ptr [ %.pre474, %bb.ah ], [ %i.ny, %bb.ag ]
  %i.oq = phi ptr [ %.pre473, %bb.ah ], [ %i.ny, %bb.ag ]
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = ptrtoint ptr %i.op to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = sdiv exact i64 %i.ot, 24
  %i.ov = icmp ugt i64 %i.ou, 1
  br i1 %i.ov, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ow = load ptr, ptr %i.la, align 8
  %i.ox = load ptr, ptr %i.kz, align 8
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = icmp ugt i64 %i.pa, 32
  br i1 %i.pb, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pc = load ptr, ptr %i.mg, align 8
  %i.pd = load ptr, ptr %i.mf, align 8
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = sdiv exact i64 %i.pg, 24
  %i.pi = icmp ugt i64 %i.ph, 1
  br i1 %i.pi, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = load ptr, ptr %i.pj, align 8
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = icmp ugt i64 %i.pp, 16
  br i1 %i.pq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ps = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.pt = load ptr, ptr %i.ps, align 8
  %i.pu = load ptr, ptr %i.pr, align 8
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = sdiv exact i64 %i.px, 24
  %i.pz = icmp ugt i64 %i.py, 1
  br i1 %i.pz, label %bb.an, label %bb.bq

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = load ptr, ptr %i.qb, align 8            ; 2 uses
end_hunk_0
