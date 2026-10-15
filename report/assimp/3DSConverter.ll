Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSConverter?download=true
inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.ie, %bb.n ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %._crit_edge434, %._crit_edge
  %.sroa.0357.0.lcssa552 = phi ptr [ %.sroa.0357.1, %._crit_edge ], [ %.sroa.0357.1, %._crit_edge434 ], [ %i.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.28.0.lcssa548 = phi ptr [ %.sroa.28.1, %._crit_edge ], [ %.sroa.28.1, %._crit_edge434 ], [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.it = load i32, ptr %i.is, align 8            ; 2 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.s
  %.02653.i.i = phi i1 [ %or.cond3.i.i, %bb.u ], [ false, %bb.s ]
  %.02752.i.i = phi i32 [ %i.je, %bb.u ], [ 1000000000, %bb.s ] ; 5 uses
  %.13051.i.i = phi i32 [ %.231.i.i, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.u ], [ %i.it, %bb.s ] ; 3 uses
  %.13749.i.i = phi ptr [ %.238.i.i, %bb.u ], [ %i.a, %bb.s ] ; 3 uses
  %i.iv = sdiv i32 %.13350.i.i, %.02752.i.i       ; 3 uses
  %.recomposed = srem i32 %.13350.i.i, %.02752.i.i
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = icmp eq i32 %.02752.i.i, 1              ; 2 uses
  %i.iy = or i1 %i.ix, %i.iw
  %or.cond3.i.i = select i1 %.02653.i.i, i1 true, i1 %i.iy ; 2 uses
  br i1 %or.cond3.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.iz = trunc i32 %i.iv to i8
  %i.ja = add i8 %i.iz, 48
  %i.jb = getelementptr inbounds nuw i8, ptr %.13749.i.i, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.13749.i.i, align 1
  %i.jc = add nuw nsw i32 %.13051.i.i, 1
  %i.jd = mul i32 %i.iv, %.02752.i.i              ; 0 uses
  br i1 %i.ix, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.jb, %bb.t ], [ %.13749.i.i, %.lr.ph.i.i ] ; 2 uses
  %.234.i.i = phi i32 [ %.recomposed, %bb.t ], [ %.13350.i.i, %.lr.ph.i.i ]
  %.231.i.i = phi i32 [ %i.jc, %bb.t ], [ %.13051.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.je = sdiv i32 %.02752.i.i, 10
  %i.jf = icmp ult i32 %.231.i.i, 12
  br i1 %i.jf, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit:   ; preds = %bb.t, %bb.u
  %.440.i.i = phi ptr [ %.238.i.i, %bb.u ], [ %i.jb, %bb.t ]
  store i8 0, ptr %.440.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !39
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !39 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.jk, ptr %6, align 8, !alias.scope !40
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.jl, align 8, !alias.scope !40
  store i8 0, ptr %i.jk, align 8, !alias.scope !40
  %i.jm = add i64 %i.jj, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.jm)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit
  %i.jn = load i64, ptr %i.jl, align 8, !alias.scope !40
  %i.jo = sub i64 4611686018427387903, %i.jn
  %i.jp = icmp ult i64 %i.jo, %i.jj
  br i1 %i.jp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.jh, i64 noundef %i.jj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jr = load i64, ptr %i.jl, align 8, !alias.scope !40
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
  %i.jw = load ptr, ptr %6, align 8, !alias.scope !40 ; 2 uses
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
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 9 uses
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = load ptr, ptr %i.kz, align 8            ; 2 uses
  %.not237 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not237, label %bb.ac, label %.lr.ph437

._crit_edge438:                                   ; preds = %.lr.ph437
  %.pre477 = load ptr, ptr %i.kz, align 8         ; 2 uses
  %.phi.trans.insert483 = getelementptr inbounds nuw i8, ptr %.pre477, i64 8
  %.phi.trans.insert481 = getelementptr inbounds nuw i8, ptr %.pre477, i64 12 ; 2 uses
  %7 = load <3 x float>, ptr %.phi.trans.insert481, align 4, !noalias !41 ; 5 uses
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %10 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ld = load <2 x float>, ptr %.phi.trans.insert483, align 4, !noalias !41 ; 3 uses
  %.pre482 = load float, ptr %.phi.trans.insert481, align 4, !noalias !41 ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0
  %11 = fneg float %i.le                          ; 2 uses
  %12 = insertelement <4 x float> %9, float %11, i64 1
  %13 = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 4 uses
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %15 = fmul <4 x float> %9, %14                  ; 2 uses
  %16 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %10, <4 x float> %15) ; 3 uses
  %17 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %18 = shufflevector <4 x float> %15, <4 x float> %17, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %19 = shufflevector <4 x float> %18, <4 x float> %13, <4 x i32> <i32 0, i32 5, i32 2, i32 5>
  %20 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %11, i64 1
  %21 = shufflevector <4 x float> %20, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %22 = fmul <4 x float> %19, %21
  %23 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %24 = shufflevector <2 x float> %i.ld, <2 x float> %23, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %25 = shufflevector <4 x float> %17, <4 x float> %13, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %26 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> %25, <4 x float> %22) ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %8, %8
  %27 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.lf = call float @llvm.fmuladd.f32(float %.pre482, float %.pre482, float %27)
  %28 = call float @llvm.fmuladd.f32(float %i.lf, float -2.000000e+00, float 1.000000e+00)
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.lg = insertelement <4 x float> %16, float 1.000000e+00, i64 3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %30 = shufflevector <4 x float> %16, <4 x float> %26, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %31 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> <float -2.000000e+00, float -2.000000e+00, float poison, float poison>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>) ; 2 uses
  %32 = shufflevector <4 x float> %31, <4 x float> %i.lg, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.lh = fmul <4 x float> %32, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %i.lh, ptr %29, align 4
  %33 = shufflevector <4 x float> %16, <4 x float> %26, <4 x i32> <i32 3, i32 poison, i32 5, i32 poison>
  %34 = insertelement <4 x float> %33, float 1.000000e+00, i64 3
  %35 = shufflevector <4 x float> %34, <4 x float> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %36 = fmul <4 x float> %35, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  store <4 x float> %36, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %37 = shufflevector <4 x float> %26, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.li = fmul <2 x float> %37, splat (float 2.000000e+00)
  store <2 x float> %i.li, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %28, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14328.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.15329.0..sroa_idx, align 4
  br label %bb.ae

.lr.ph437:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, %.lr.ph437
  %.sroa.0331.0436 = phi ptr [ %i.lm, %.lr.ph437 ], [ %i.lc, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0331.0436, i64 8 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 8
  %i.ll = fneg float %i.lk
  store float %i.ll, ptr %i.lj, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0331.0436, i64 32 ; 2 uses
  %i.ln = load ptr, ptr %i.la, align 8
  %.not390 = icmp eq ptr %i.lm, %i.ln
  br i1 %.not390, label %._crit_edge438, label %.lr.ph437, !llvm.loop !32

bb.ac:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = load ptr, ptr %i.lo, align 8            ; 2 uses
  %.not238 = icmp eq ptr %i.lq, %i.lr
  br i1 %.not238, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load float, ptr %i.ls, align 8
  %i.lu = fmul float %i.lt, f0xBC8EFA35           ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 1036
  store i64 0, ptr %i.lw, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.lx = call noundef float @cosf(float noundef %i.lu) #24 ; 2 uses
  store float %i.lx, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.lx, ptr %i.lv, align 4
  %i.ly = call noundef float @sinf(float noundef %i.lu) #24 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 1044
  store float %i.ly, ptr %i.lz, align 4
  %i.ma = fneg float %i.ly
  store float %i.ma, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge438
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = load ptr, ptr %i.mb, align 8            ; 4 uses
  %.not239 = icmp eq ptr %i.md, %i.me
  br i1 %.not239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 3 uses
  %i.mh = load float, ptr %i.mg, align 4
  %i.mi = load float, ptr %i.mf, align 4
  %i.mj = fmul float %i.mh, %i.mi
  store float %i.mj, ptr %i.mf, align 4
  %i.mk = load float, ptr %i.mg, align 4
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 1044 ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4
  %i.mn = fmul float %i.mk, %i.mm
  store float %i.mn, ptr %i.ml, align 4
  %i.mo = load float, ptr %i.mg, align 4
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 1060 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4
  %i.mr = fmul float %i.mo, %i.mq
  store float %i.mr, ptr %i.mp, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 12 ; 3 uses
  %i.mt = load float, ptr %i.ms, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4
  %i.mw = fmul float %i.mt, %i.mv
  store float %i.mw, ptr %i.mu, align 4
  %i.mx = load float, ptr %i.ms, align 4
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4
  %i.na = fmul float %i.mx, %i.mz
  store float %i.na, ptr %i.my, align 4
  %i.nb = load float, ptr %i.ms, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4
  %i.ne = fmul float %i.nb, %i.nd
  store float %i.ne, ptr %i.nc, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 3 uses
  %i.ng = load float, ptr %i.nf, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4
  %i.nj = fmul float %i.ng, %i.ni
  store float %i.nj, ptr %i.nh, align 4
  %i.nk = load float, ptr %i.nf, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 1052 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fmul float %i.nk, %i.nm
  store float %i.nn, ptr %i.nl, align 4
  %i.no = load float, ptr %i.nf, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 1068 ; 2 uses
  %i.nq = load float, ptr %i.np, align 4
  %i.nr = fmul float %i.no, %i.nq
  store float %i.nr, ptr %i.np, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8            ; 3 uses
  %i.nv = load ptr, ptr %i.ns, align 8            ; 4 uses
  %.not240 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not240, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load float, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = fadd float %i.nx, %i.nz
  store float %i.oa, ptr %i.ny, align 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 2 uses
  %i.oe = load float, ptr %i.od, align 4
  %i.of = fadd float %i.oc, %i.oe
  store float %i.of, ptr %i.od, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oh = load float, ptr %i.og, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 1072 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4
  %i.ok = fadd float %i.oh, %i.oj
  store float %i.ok, ptr %i.oi, align 4
  %.pre485 = load ptr, ptr %i.nt, align 8
  %.pre486 = load ptr, ptr %i.ns, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ol = phi ptr [ %.pre486, %bb.ah ], [ %i.nu, %bb.ag ]
  %i.om = phi ptr [ %.pre485, %bb.ah ], [ %i.nu, %bb.ag ]
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = sdiv exact i64 %i.op, 24
  %i.or = icmp ugt i64 %i.oq, 1
  br i1 %i.or, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.os = load ptr, ptr %i.la, align 8
  %i.ot = load ptr, ptr %i.kz, align 8
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = icmp ugt i64 %i.ow, 32
  br i1 %i.ox, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oy = load ptr, ptr %i.mc, align 8
  %i.oz = load ptr, ptr %i.mb, align 8
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = sdiv exact i64 %i.pc, 24
  %i.pe = icmp ugt i64 %i.pd, 1
  br i1 %i.pe, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = load ptr, ptr %i.pf, align 8
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = icmp ugt i64 %i.pl, 16
  br i1 %i.pm, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = load ptr, ptr %i.pn, align 8
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = sdiv exact i64 %i.pt, 24
  %i.pv = icmp ugt i64 %i.pu, 1
  br i1 %i.pv, label %bb.an, label %bb.bo

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 4 uses
end_hunk_0
