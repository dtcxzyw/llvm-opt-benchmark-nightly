inline.NumInlined: 961
inline.NumDeleted: 441
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
bb.p:                                             ; preds = %bb.o, %._crit_edge408
  br i1 %or.cond5, label %bb.q, label %.loopexit385

bb.q:                                             ; preds = %bb.p
  %i.io = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not234415 = icmp eq ptr %i.io, %i.cz
  br i1 %.not234415, label %.loopexit385, label %.lr.ph418

.lr.ph418:                                        ; preds = %bb.q, %.lr.ph418
  %.2219416 = phi ptr [ %i.iu, %.lr.ph418 ], [ %i.io, %bb.q ] ; 4 uses
  %i.ip = load <2 x float>, ptr %.2219416, align 4
  %i.iq = fsub <2 x float> %i.ip, %i.bh
  store <2 x float> %i.iq, ptr %.2219416, align 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.2219416, i64 8 ; 2 uses
  %i.is = load float, ptr %i.ir, align 4
  %i.it = fsub float %i.is, %.sroa.8330.0.copyload
  store float %i.it, ptr %i.ir, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %.2219416, i64 12 ; 2 uses
  %.not234 = icmp eq ptr %i.iu, %i.cz
  br i1 %.not234, label %.loopexit385, label %.lr.ph418, !llvm.loop !24

.loopexit385:                                     ; preds = %.lr.ph418, %bb.q, %bb.k, %bb.p
  store ptr inttoptr (i64 1 to ptr), ptr %i.cr, align 8
  %i.iv = load ptr, ptr %i.br, align 8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ck
  store i32 %i.cm, ptr %i.iw, align 4
  %i.ix = add i32 %.0214419, 1                    ; 2 uses
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = icmp ugt i64 %i.bl, %i.iy
  br i1 %i.iz, label %bb.k, label %._crit_edge422, !llvm.loop !25

bb.r:                                             ; preds = %bb.j, %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.i ], [ %i.im, %bb.n ], [ %i.cj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %._crit_edge422, %._crit_edge
  %.sroa.0349.0.lcssa530 = phi ptr [ %.sroa.0349.1, %._crit_edge ], [ %.sroa.0349.1, %._crit_edge422 ], [ %i.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.26.0.lcssa526 = phi ptr [ %.sroa.26.1, %._crit_edge ], [ %.sroa.26.1, %._crit_edge422 ], [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 7 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.jb = load i32, ptr %i.ja, align 8            ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.s
  %.153.i.i = phi ptr [ %.2.i.i, %bb.u ], [ %i.a, %bb.s ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.u ], [ false, %bb.s ]
  %.03051.i.i = phi i32 [ %i.jm, %bb.u ], [ 1000000000, %bb.s ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.u ], [ %i.jb, %bb.s ] ; 3 uses
  %i.jd = sdiv i32 %.13849.i.i, %.03051.i.i       ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.je = icmp ne i32 %i.jd, 0
  %i.jf = icmp eq i32 %.03051.i.i, 1              ; 2 uses
  %i.jg = or i1 %i.jf, %i.je
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.jg ; 2 uses
  br i1 %or.cond3.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.jh = trunc i32 %i.jd to i8
  %i.ji = add i8 %i.jh, 48
  %i.jj = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.153.i.i, align 1
  %i.jk = add nuw nsw i32 %.13350.i.i, 1
  %i.jl = mul i32 %i.jd, %.03051.i.i              ; 0 uses
  br i1 %i.jf, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.239.i.i = phi i32 [ %.recomposed, %bb.t ], [ %.13849.i.i, %.lr.ph.i.i ]
  %.234.i.i = phi i32 [ %i.jk, %bb.t ], [ %.13350.i.i, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.jj, %bb.t ], [ %.153.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.jm = sdiv i32 %.03051.i.i, 10
  %i.jn = icmp ult i32 %.234.i.i, 12
  br i1 %i.jn, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit:   ; preds = %bb.t, %bb.u
  %.4.i.i = phi ptr [ %.2.i.i, %bb.u ], [ %i.jj, %bb.t ]
  store i8 0, ptr %.4.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !26
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !26 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.js, ptr %6, align 8, !alias.scope !29
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.jt, align 8, !alias.scope !29
  store i8 0, ptr %i.js, align 8, !alias.scope !29
  %i.ju = add i64 %i.jr, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ju)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit
  %i.jv = load i64, ptr %i.jt, align 8, !alias.scope !29
  %i.jw = sub i64 4611686018427387903, %i.jv
  %i.jx = icmp ult i64 %i.jw, %i.jr
  br i1 %i.jx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.v
  %i.jy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.jp, i64 noundef %i.jr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jz = load i64, ptr %i.jt, align 8, !alias.scope !29
  %i.ka = add i64 %i.jz, -4611686018427387898
  %i.kb = icmp ult i64 %i.ka, 6
  br i1 %i.kb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.cont.i.i unwind label %bb.w

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.kc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.26, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %6, align 8, !alias.scope !29 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.js
  br i1 %i.kf, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.kg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24 ; 2 uses
  %i.kh = load i64, ptr %i.jt, align 8
  %i.ki = sub i64 4611686018427387903, %i.kh
  %i.kj = icmp ult i64 %i.ki, %i.kg
  br i1 %i.kj, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #27
          to label %.noexc260 unwind label %bb.z

.noexc260:                                        ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.kk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.a, i64 noundef %i.kg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.kl = load i64, ptr %i.jt, align 8            ; 5 uses
  %i.km = icmp ugt i64 %i.kl, 1023
  %.pre = load ptr, ptr %6, align 8               ; 3 uses
  br i1 %i.km, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.kn = trunc nuw nsw i64 %i.kl to i32
  store i32 %i.kn, ptr %2, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ko, ptr align 1 %.pre, i64 %i.kl, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kl
  store i8 0, ptr %i.kp, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.y
  %i.kq = icmp eq ptr %.pre, %i.js
  br i1 %i.kq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.kr = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.kr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ks = load i64, ptr %i.js, align 8
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.kt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.x
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = load ptr, ptr %6, align 8               ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.js
  br i1 %i.kw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.z, %bb.w
  %.sink = phi ptr [ %i.ke, %bb.w ], [ %i.kv, %bb.z ]
  %.pn235.ph = phi { ptr, i32 } [ %i.kd, %bb.w ], [ %i.ku, %bb.z ]
  %i.kx = load i64, ptr %i.js, align 8
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ky) #26
  br label %.body

.body:                                            ; preds = %bb.w, %bb.z, %.body.sink.split
  %.pn235 = phi { ptr, i32 } [ %.pn235.ph, %.body.sink.split ], [ %i.kd, %bb.w ], [ %i.ku, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.aa:                                            ; preds = %._crit_edge.thread
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.la = load i64, ptr %i.kz, align 8            ; 4 uses
  %i.lb = icmp ugt i64 %i.la, 1023
  br i1 %i.lb, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ld = trunc nuw nsw i64 %i.la to i32
  store i32 %i.ld, ptr %2, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.lf = load ptr, ptr %i.lc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.le, ptr align 1 %i.lf, i64 %i.la, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.la
  store i8 0, ptr %i.lg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 8 uses
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 6 uses
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = load ptr, ptr %i.lh, align 8            ; 2 uses
  %.not237 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not237, label %bb.ac, label %.lr.ph425

._crit_edge426:                                   ; preds = %.lr.ph425
  %.pre465 = load ptr, ptr %i.lh, align 8         ; 3 uses
  %.phi.trans.insert471 = getelementptr inbounds nuw i8, ptr %.pre465, i64 8
  %.pre472 = load float, ptr %.phi.trans.insert471, align 4, !noalias !32 ; 3 uses
  %.phi.trans.insert469 = getelementptr inbounds nuw i8, ptr %.pre465, i64 12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre465, i64 16
  %i.ll = fneg float %.pre472                     ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.ln = load <2 x float>, ptr %.phi.trans.insert469, align 4, !noalias !32 ; 7 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lp = load <2 x float>, ptr %.phi.trans.insert, align 4, !noalias !32 ; 6 uses
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = extractelement <2 x float> %i.lp, i64 1 ; 2 uses
  %i.ls = fmul <2 x float> %i.lp, %i.lp
  %i.lt = extractelement <2 x float> %i.ls, i64 1 ; 2 uses
  %i.lu = extractelement <2 x float> %i.ln, i64 1 ; 4 uses
  %i.lv = call float @llvm.fmuladd.f32(float %i.lu, float %i.lu, float %i.lt)
  %i.lw = call float @llvm.fmuladd.f32(float %i.lv, float -2.000000e+00, float 1.000000e+00)
  %i.lx = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %.pre472, i64 1 ; 2 uses
  %i.lz = fmul <2 x float> %i.lq, %i.ly
  %i.ma = shufflevector <2 x float> %i.ln, <2 x float> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.ma, <2 x float> %i.lz)
  %i.mc = fmul float %i.lr, %.pre472
  %i.md = extractelement <2 x float> %i.ln, i64 0 ; 6 uses
  %i.me = call float @llvm.fmuladd.f32(float %i.md, float %i.lu, float %i.mc)
  %i.mf = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.me, i64 3
  %i.mg = shufflevector <2 x float> %i.mb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mi = fmul <4 x float> %i.mh, <float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00>
  %i.mj = call float @llvm.fmuladd.f32(float %i.md, float %i.md, float %i.lt)
  %i.mk = call float @llvm.fmuladd.f32(float %i.mj, float -2.000000e+00, float 1.000000e+00)
  %i.ml = fmul float %i.md, %i.ll
  %i.mm = call float @llvm.fmuladd.f32(float %i.lu, float %i.lr, float %i.ml)
  %i.mn = fmul <2 x float> %i.ln, %i.ln
  %i.mo = extractelement <2 x float> %i.mn, i64 1
  %i.mp = call float @llvm.fmuladd.f32(float %i.md, float %i.md, float %i.mo)
  %i.mq = call float @llvm.fmuladd.f32(float %i.mp, float -2.000000e+00, float 1.000000e+00)
  store float %i.lw, ptr %i.lm, align 4
  store <4 x float> %i.mi, ptr %.sroa.4314.0..sroa_idx, align 4
  %.sroa.8317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1048
  store float %i.mk, ptr %.sroa.8317.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1052
  %i.mr = fmul <2 x float> %i.lo, %i.ly
  %i.ms = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.ms, <2 x float> %i.mr)
  %i.mu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.mm, i64 0
  %i.mv = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mx = fmul <4 x float> %i.mw, <float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store <4 x float> %i.mx, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float %i.mq, ptr %.sroa.13320.0..sroa_idx, align 4
  %.sroa.14321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14321.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 4
  br label %bb.ae

.lr.ph425:                                        ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265, %.lr.ph425
  %.sroa.0323.0424 = phi ptr [ %i.nb, %.lr.ph425 ], [ %i.lk, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265 ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 8 ; 2 uses
  %i.mz = load float, ptr %i.my, align 8
  %i.na = fneg float %i.mz
  store float %i.na, ptr %i.my, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0323.0424, i64 32 ; 2 uses
  %i.nc = load ptr, ptr %i.li, align 8
  %.not378 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not378, label %._crit_edge426, label %.lr.ph425, !llvm.loop !35

bb.ac:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit265
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = load ptr, ptr %i.nd, align 8            ; 2 uses
  %.not238 = icmp eq ptr %i.nf, %i.ng
  br i1 %.not238, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load float, ptr %i.nh, align 8
  %i.nj = fmul float %i.ni, f0xBC8EFA35           ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 1036
  store i64 0, ptr %i.nl, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.nm = call noundef float @cosf(float noundef %i.nj) #24 ; 2 uses
  store float %i.nm, ptr %.sroa.5.0..sroa_idx.i, align 4
  store float %i.nm, ptr %i.nk, align 4
  %i.nn = call noundef float @sinf(float noundef %i.nj) #24 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 1044
  store float %i.nn, ptr %i.no, align 4
  %i.np = fneg float %i.nn
  store float %i.np, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge426
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 3 uses
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = load ptr, ptr %i.nq, align 8            ; 4 uses
  %.not239 = icmp eq ptr %i.ns, %i.nt
  br i1 %.not239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 3 uses
  %i.nw = load float, ptr %i.nv, align 4
  %i.nx = load float, ptr %i.nu, align 4
  %i.ny = fmul float %i.nw, %i.nx
  store float %i.ny, ptr %i.nu, align 4
  %i.nz = load float, ptr %i.nv, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 1044 ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4
  %i.oc = fmul float %i.nz, %i.ob
  store float %i.oc, ptr %i.oa, align 4
  %i.od = load float, ptr %i.nv, align 4
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 1060 ; 2 uses
  %i.of = load float, ptr %i.oe, align 4
  %i.og = fmul float %i.od, %i.of
  store float %i.og, ptr %i.oe, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 12 ; 3 uses
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 1032 ; 2 uses
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = fmul float %i.oi, %i.ok
  store float %i.ol, ptr %i.oj, align 4
  %i.om = load float, ptr %i.oh, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 2 uses
  %i.oo = load float, ptr %i.on, align 4
  %i.op = fmul float %i.om, %i.oo
  store float %i.op, ptr %i.on, align 4
  %i.oq = load float, ptr %i.oh, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 1064 ; 2 uses
  %i.os = load float, ptr %i.or, align 4
  %i.ot = fmul float %i.oq, %i.os
  store float %i.ot, ptr %i.or, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 3 uses
  %i.ov = load float, ptr %i.ou, align 4
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4
  %i.oy = fmul float %i.ov, %i.ox
  store float %i.oy, ptr %i.ow, align 4
  %i.oz = load float, ptr %i.ou, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 1052 ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4
  %i.pc = fmul float %i.oz, %i.pb
  store float %i.pc, ptr %i.pa, align 4
  %i.pd = load float, ptr %i.ou, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 1068 ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4
  %i.pg = fmul float %i.pd, %i.pf
  store float %i.pg, ptr %i.pe, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.pj = load ptr, ptr %i.pi, align 8            ; 3 uses
  %i.pk = load ptr, ptr %i.ph, align 8            ; 4 uses
  %.not240 = icmp eq ptr %i.pj, %i.pk
end_hunk_0
begin_hunk_1_@_ZN6Assimp11CountTracksEPNS_4D3DS4NodeERj:bb.a
  %i.aq = icmp ugt i64 %i.ap, 1
  br i1 %i.aq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ar = load i32, ptr %1, align 4               ; 2 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %1, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = add i32 %i.ar, 2
  store i32 %i.bc, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.bg
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  ret void

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.bh = phi ptr [ %i.bo, %.lr.ph ], [ %i.bg, %bb.h ]
  %i.bi = phi i64 [ %i.bm, %.lr.ph ], [ 0, %bb.h ]
  %.014 = phi i32 [ %i.bl, %.lr.ph ], [ 0, %bb.h ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @_ZN6Assimp11CountTracksEPNS_4D3DS4NodeERj(ptr noundef %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.bl = add i32 %.014, 1                        ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.be, align 8
  %i.bo = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ugt i64 %i.bs, %i.bm
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter17GenerateNodeGraphEP7aiScene(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull @.str.28)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, %i.w
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add i32 %i.m, %i.ag
  %i.ai = load ptr, ptr %i.c, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1104
  store i32 %i.ah, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1104
  %i.am = load i32, ptr %i.al, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1112
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.c, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.as, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, ptr noundef nonnull align 1 dereferenceable(14) @.str.29, i64 14, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.au, align 2
  store i32 14, ptr %i.ar, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load ptr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.av, ptr noundef nonnull align 1 dereferenceable(14) %i.aw, i64 14, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  store i8 0, ptr %i.ax, align 2
  %.pre = load ptr, ptr %2, align 8               ; 2 uses
  %i.ay = icmp eq ptr %.pre, %i.as
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.az = load i64, ptr %i.as, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bb = load i32, ptr %i.l, align 8
  %.not117 = icmp eq i32 %i.bb, 0
  br i1 %.not117, label %.preheader101, label %.lr.ph

.preheader101:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.067.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %indvars129, %bb.d ] ; 2 uses
  %i.bc = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, 34359738360
  %.not118 = icmp eq i64 %i.bk, 0
  br i1 %.not118, label %.preheader, label %.lr.ph110

bb.c:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1144) #26
  br label %bb.r

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.bm = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bm)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %indvars130 = trunc i64 %indvars.iv to i32      ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1112
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store ptr %i.bm, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1112
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1096
  store ptr %i.br, ptr %i.bw, align 8
  %i.bx = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #28 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1128
  store ptr %i.bx, ptr %i.by, align 8
  store i32 %indvars130, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1120
  store i32 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ca, i64 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef %indvars130) #24
  store i32 %i.cb, ptr %i.bv, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars129 = trunc i64 %indvars.iv.next to i32 ; 2 uses
  %i.cc = load i32, ptr %i.l, align 8
  %i.cd = icmp ugt i32 %i.cc, %indvars129
  br i1 %i.cd, label %.lr.ph, label %.preheader101, !llvm.loop !44

bb.e:                                             ; preds = %.lr.ph
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.preheader:                                       ; preds = %_ZN8aiStringaSERKS_.exit, %.preheader101
  %i.cf = phi ptr [ %i.bc, %.preheader101 ], [ %i.cw, %_ZN8aiStringaSERKS_.exit ] ; 2 uses
  %.168.lcssa = phi i32 [ %.067.lcssa, %.preheader101 ], [ %i.di, %_ZN8aiStringaSERKS_.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = and i64 %i.cm, 34359738360
  %.not119 = icmp eq i64 %i.cn, 0
  br i1 %.not119, label %.loopexit, label %.lr.ph114

.lr.ph110:                                        ; preds = %.preheader101, %_ZN8aiStringaSERKS_.exit
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %_ZN8aiStringaSERKS_.exit ], [ 0, %.preheader101 ] ; 2 uses
  %.168109 = phi i32 [ %i.di, %_ZN8aiStringaSERKS_.exit ], [ %.067.lcssa, %.preheader101 ] ; 2 uses
  %i.co = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 7 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.co)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.lr.ph110
  %i.cp = load ptr, ptr %i.c, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1112
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = zext i32 %.168109 to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  store ptr %i.co, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.c, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 1096
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv131
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = icmp eq ptr %i.co, %i.da
  br i1 %i.db, label %_ZN8aiStringaSERKS_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = load i32, ptr %i.da, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.dc, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.co, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.df = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr nonnull align 4 %i.de, i64 %i.df, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  store i8 0, ptr %i.dg, align 1
  %.pre140 = load ptr, ptr %i.cx, align 8
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.f, %bb.g
  %i.dh = phi ptr [ %i.cy, %bb.f ], [ %.pre140, %bb.g ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.di = add i32 %.168109, 1                     ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dh to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 3
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = icmp samesign ult i64 %indvars.iv.next132, %i.dp
  br i1 %i.dq, label %.lr.ph110, label %.preheader, !llvm.loop !45

bb.h:                                             ; preds = %.lr.ph110
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph114:                                        ; preds = %.preheader, %_ZN8aiStringaSERKS_.exit75
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %_ZN8aiStringaSERKS_.exit75 ], [ 0, %.preheader ] ; 2 uses
  %.2112 = phi i32 [ %i.em, %_ZN8aiStringaSERKS_.exit75 ], [ %.168.lcssa, %.preheader ] ; 2 uses
  %i.ds = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 7 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ds)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.lr.ph114
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1112
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = zext i32 %.2112 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw
  store ptr %i.ds, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.c, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 1096
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv134
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = icmp eq ptr %i.ds, %i.ee
  br i1 %i.ef, label %_ZN8aiStringaSERKS_.exit75, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eg = load i32, ptr %i.ee, align 4
  %spec.select.i74 = call i32 @llvm.umin.i32(i32 %i.eg, i32 1023) ; 2 uses
  store i32 %spec.select.i74, ptr %i.ds, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ej = zext nneg i32 %spec.select.i74 to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 4 %i.ei, i64 %i.ej, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  store i8 0, ptr %i.ek, align 1
  %.pre141 = load ptr, ptr %i.eb, align 8
  br label %_ZN8aiStringaSERKS_.exit75

_ZN8aiStringaSERKS_.exit75:                       ; preds = %bb.i, %bb.j
  %i.el = phi ptr [ %i.ec, %bb.i ], [ %.pre141, %bb.j ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.em = add i32 %.2112, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = lshr exact i64 %i.er, 3
  %i.et = and i64 %i.es, 4294967295
  %i.eu = icmp samesign ult i64 %indvars.iv.next135, %i.et
  br i1 %i.eu, label %.lr.ph114, label %.loopexit, !llvm.loop !46

bb.k:                                             ; preds = %.lr.ph114
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @_ZN6Assimp11CountTracksEPNS_4D3DS4NodeERj(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ew = load i32, ptr %i.a, align 4             ; 2 uses
  %.not = icmp eq i32 %i.ew, 0
  br i1 %.not, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.l
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %i.ex, align 8
  %i.ey = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ey, ptr %i.ez, align 8
  %i.fa = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #28 ; 12 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1012) %i.fb, i8 0, i64 1012, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 1032
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 1048
  store i32 0, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1056 ; 2 uses
  store ptr null, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1064
  store i32 0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 1072
  store ptr null, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 1080
  store i32 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 1088
  store ptr null, ptr %i.fi, align 8
  store ptr %i.fa, ptr %i.ey, align 8
  store i32 13, ptr %i.fa, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.fj, ptr noundef nonnull align 1 dereferenceable(13) @.str.31, i64 13, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 17
  store i8 0, ptr %i.fk, align 1
  %i.fl = zext i32 %i.ew to i64
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #28
  store ptr %i.fn, ptr %i.fe, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.l
  %i.fo = load ptr, ptr %i.c, align 8
  %i.fp = load ptr, ptr %i.d, align 8
  tail call void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1, ptr noundef %i.fo, ptr noundef %i.fp, ptr nonnull align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8aiStringaSERKS_.exit75, %.preheader, %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8
  %.not120 = icmp eq i32 %i.fr, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %.loopexit
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %.loopexit
  %i.ft = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1028 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1044 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1060 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 1076 ; 2 uses
  %i.fy = load <4 x float>, ptr %i.fu, align 4    ; 3 uses
  %i.fz = load <4 x float>, ptr %i.fv, align 4    ; 2 uses
  %i.ga = fmul <4 x float> %i.fz, zeroinitializer ; 2 uses
  %i.gb = fadd <4 x float> %i.fy, %i.ga
  %i.gc = load <4 x float>, ptr %i.fw, align 4    ; 4 uses
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> zeroinitializer, <4 x float> %i.gb)
  %i.ge = load <4 x float>, ptr %i.fx, align 4    ; 4 uses
  %i.gf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> zeroinitializer, <4 x float> %i.gd)
  store <4 x float> %i.gf, ptr %i.fu, align 4
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> zeroinitializer, <4 x float> %i.ga) ; 2 uses
  %i.gh = fadd <4 x float> %i.gc, %i.gg
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> zeroinitializer, <4 x float> %i.gh)
  store <4 x float> %i.gi, ptr %i.fv, align 4
  %i.gj = fneg <4 x float> %i.fz
  %i.gk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> zeroinitializer, <4 x float> %i.gj)
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> zeroinitializer, <4 x float> %i.gk)
  %i.gm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> zeroinitializer, <4 x float> %i.gl)
  store <4 x float> %i.gm, ptr %i.fw, align 4
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> zeroinitializer, <4 x float> %i.gg)
  %i.go = fadd <4 x float> %i.ge, %i.gn
  store <4 x float> %i.go, ptr %i.fx, align 4
  %i.gp = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 3 uses
  %i.gr = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.gq, ptr noundef nonnull dereferenceable(1) @.str.32) #25
  %.not71 = icmp eq ptr %i.gr, null
  br i1 %.not71, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.n:                                             ; preds = %.lr.ph116, %bb.n
  %indvars.iv137 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next138, %bb.n ] ; 3 uses
  %i.gs = load ptr, ptr %i.fs, align 8
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv137
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store ptr null, ptr %i.gv, align 8
  %i.gw = load ptr, ptr %i.fs, align 8
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv137
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  store ptr null, ptr %i.gz, align 8
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ha = load i32, ptr %i.fq, align 8
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next138, %i.hb
  br i1 %i.hc, label %bb.n, label %._crit_edge, !llvm.loop !47

bb.o:                                             ; preds = %._crit_edge
  %i.hd = load i8, ptr %i.gq, align 4
  %i.he = icmp eq i8 %i.hd, 36
  br i1 %i.he, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 5
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = icmp eq i8 %i.hg, 36
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.p, %._crit_edge
  store i32 9, ptr %i.gp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.gq, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gp, i64 13
  store i8 0, ptr %i.hi, align 1
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.p, %bb.o
  ret void

.sink.split:                                      ; preds = %bb.k, %bb.h, %bb.e
  %.lcssa153.sink = phi ptr [ %i.bm, %bb.e ], [ %i.co, %bb.h ], [ %i.ds, %bb.k ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ce, %bb.e ], [ %i.dr, %bb.h ], [ %i.ev, %bb.k ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa153.sink, i64 noundef 1144) #26
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.c ], [ %.pn.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter12ConvertSceneEP7aiScene(ptr noundef nonnull align 8 captures(address) dereferenceable(168) %0, ptr noundef captures(none) initializes((32, 36), (40, 48)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 696                 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = shl nsw i64 %i.i, 3
  %i.m = and i64 %i.l, 34359738360
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @_ZN6Assimp19Discreet3DSImporter13ConvertMeshesEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.y, ptr %i.z, align 8
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge._crit_edge, label %bb.d

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.aa = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [696 x i8], ptr %i.ac, i64 %indvars.iv
  tail call void @_ZN6Assimp19Discreet3DSImporter15ConvertMaterialERNS_4D3DS8MaterialER10aiMaterial(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(689) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store ptr %i.aa, ptr %i.af, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.k, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !48

bb.c:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 16) #26
  resume { ptr, i32 } %i.aj

bb.d:                                             ; preds = %._crit_edge
  %i.ak = and i64 %i.w, 34359738360               ; 2 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ap, i64 %i.ak, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge._crit_edge, %bb.d
  %i.aq = phi ptr [ %.pre, %._crit_edge._crit_edge ], [ %i.an, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.ar, align 8
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.az, ptr %i.ba, align 8
  %.not28 = icmp eq i32 %i.az, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = and i64 %i.ax, 34359738360              ; 2 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #28 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bg, i64 %i.bb, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialD0Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 696) #26
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #24
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #24
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !58
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !58
  store i8 0, ptr %i.a, align 8, !alias.scope !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !58 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !58 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !58 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !58 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #26
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %.body.sink.split
  %.pn = phi { ptr, i32 } [ %.pn.ph, %.body.sink.split ], [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(689) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
  unreachable

_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 696                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 13251971317320080)
  %i.l = select i1 %i.j, i64 13251971317320080, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 696                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %i.q, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #24 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i) #24, !inline_history !60
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp4D3DS8MaterialEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 696 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 696, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ac, %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(689) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 696 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 696 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #24 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 696
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i.i.i34, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i.i.i.i.i34) #24, !inline_history !60
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 696 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ai, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #27
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp4D3DS8MaterialEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43 ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i, align 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i) #24, !inline_history !62
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 696 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !61

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp4D3DS8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #26
  br label %_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp4D3DS8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialEEvT_S4_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8
end_hunk_1
