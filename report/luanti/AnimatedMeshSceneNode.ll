Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/AnimatedMeshSceneNode?download=true
inline.NumInlined: 1647
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene21AnimatedMeshSceneNode21updateJointSceneNodesERKSt6vectorISt7variantIJN4core9TransformENS3_8CMatrix4IfEEEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = load ptr, ptr %1, align 8, !tbaa !175    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit ] ; 2 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [68 x i8], ptr %i.e, i64 %.016 ; 5 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.016
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 8 uses
  %.not.i.i = icmp ne ptr %i.e, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !243 ; 2 uses
  %i.j = icmp eq i8 %.pre, 0
  %or.cond = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit, label %._crit_edge17

_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.i, ptr noundef nonnull align 4 dereferenceable(40) %i.f), !inline_history !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(308) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.p), !inline_history !183
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store i8 0, ptr %i.t, align 8, !tbaa !137
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

._crit_edge17:                                    ; preds = %bb.b
  switch i8 %.pre, label %bb.c [
    i8 1, label %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !245

bb.c:                                             ; preds = %._crit_edge17
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.13, ptr %i.v, align 8, !tbaa !246
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %._crit_edge17
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.12, ptr %i.x, align 8, !tbaa !246
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge17
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 304 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !137, !range !92, !noundef !93
  %i.ab = trunc nuw i8 %i.aa to i1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.y, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false)
  br i1 %i.ab, label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit
  store i8 1, ptr %i.z, align 4, !tbaa !137
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.d, %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit
  %i.ac = add nuw i64 %.016, 1                    ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.ae = load ptr, ptr %1, align 8, !tbaa !175   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 68
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !272
}

declare void @_ZN5scene11SkinnedMesh11animateMeshEf(ptr dead_on_unwind writable sret(%"class.std::vector.86") align 8, ptr noundef nonnull align 8 dereferenceable(152), float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4core9Transform11interpolateES0_f(ptr dead_on_unwind noalias writable sret(%"struct.core::Transform") align 4 %0, ptr noundef nonnull align 4 dereferenceable(40) %1, ptr noundef byval(%"struct.core::Transform") align 8 %2, float noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.28.0.copyload = load <2 x float>, ptr %.sroa.28.0..sroa_idx, align 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.26.0.copyload = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.047.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.05.0.copyload
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i, float %.sroa.036.0.vec.extract.i, float %i.c)
  %.sroa.10.8.vec.extract.i = extractelement <2 x float> %.sroa.28.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i = extractelement <2 x float> %.sroa.26.0.copyload, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i, float %.sroa.6.8.vec.extract.i, float %i.d)
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %.sroa.28.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.26.0.copyload, i64 1
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i, float %.sroa.6.12.vec.extract.i, float %i.e) ; 3 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00        ; 3 uses
  %i.h = fneg <2 x float> %.sroa.07.0.copyload
  %i.i = fneg <2 x float> %.sroa.28.0.copyload
  %i.j = fneg float %i.f
  %.sroa.047.0.i = select i1 %i.g, <2 x float> %i.h, <2 x float> %.sroa.07.0.copyload ; 2 uses
  %.sroa.10.0.i = select i1 %i.g, <2 x float> %i.i, <2 x float> %.sroa.28.0.copyload ; 2 uses
  %.020.i = select i1 %i.g, float %i.j, float %i.f ; 2 uses
  %i.k = fcmp ugt float %.020.i, 9.990000e-01
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call float @acosf(float noundef %.020.i) #31 ; 3 uses
  %i.m = tail call float @sinf(float noundef %i.l) #31
  %i.n = fdiv float 1.000000e+00, %i.m            ; 2 uses
  %i.o = fsub float 1.000000e+00, %3
  %i.p = fmul float %i.o, %i.l
  %i.q = tail call float @sinf(float noundef %i.p) #31
  %i.r = fmul float %i.q, %i.n
  %i.s = fmul float %3, %i.l
  %i.t = tail call float @sinf(float noundef %i.s) #31
  %i.u = fmul float %i.n, %i.t
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fmul <2 x float> %.sroa.047.0.i, %i.w
  %i.y = insertelement <2 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <2 x float> %.sroa.05.0.copyload, %i.z
  %i.ab = fadd <2 x float> %i.x, %i.aa
  %i.ac = fmul <2 x float> %.sroa.10.0.i, %i.w
  %i.ad = fmul <2 x float> %.sroa.26.0.copyload, %i.z
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.af = fsub float 1.000000e+00, %3
  %i.ag = insertelement <2 x float> poison, float %3, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul <2 x float> %i.ah, %.sroa.05.0.copyload
  %i.aj = fmul <2 x float> %i.ah, %.sroa.26.0.copyload
  %i.ak = insertelement <2 x float> poison, float %i.af, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fmul <2 x float> %i.al, %.sroa.10.0.i
  %i.an = fadd <2 x float> %i.aj, %i.am           ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0 ; 2 uses
  %i.ap = extractelement <2 x float> %i.an, i64 1 ; 2 uses
  %i.aq = fmul <2 x float> %i.al, %.sroa.047.0.i
  %i.ar = fadd <2 x float> %i.ai, %i.aq           ; 4 uses
  %foldExtExtBinop17 = fmul <2 x float> %i.ar, %i.ar
  %i.as = extractelement <2 x float> %foldExtExtBinop17, i64 1
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.av)
  %i.ax = fpext float %i.aw to double
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i.i.i
  %i.az = fptrunc double %i.ay to float
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %i.ar, %i.bb
  %i.bd = fmul <2 x float> %i.an, %i.bb
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %i.bc, %bb.c ], [ %i.ab, %bb.b ]
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %i.bd, %bb.c ], [ %i.ae, %bb.b ]
  %i.be = fpext float %3 to double                ; 2 uses
  %i.bf = fsub double 1.000000e+00, %i.be
  %i.bg = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = load <2 x float>, ptr %2, align 8, !tbaa !13
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bj
  %i.bn = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bo, <2 x double> %i.bm)
  %i.bq = fptrunc <2 x double> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load <4 x float>, ptr %i.br, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load <4 x float>, ptr %i.bs, align 8
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  store <2 x float> %i.bq, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, ptr %i.bv, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, ptr %.sroa.6.0..sroa_idx, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !13
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !13
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %i.cd = fmul <2 x double> %i.bl, %i.cc
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.bo, <2 x double> %i.cd)
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !273
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !273
  %i.ck = insertelement <2 x float> %5, float %i.ch, i64 1
  %i.cl = fpext <2 x float> %i.ck to <2 x double>
  %i.cm = insertelement <2 x float> %i.bu, float %i.cj, i64 1
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fmul <2 x double> %i.bl, %i.cn
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.bo, <2 x double> %i.co)
  %i.cq = fptrunc <2 x double> %i.cp to <2 x float> ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  store float %i.cr, ptr %.sroa.24.0..sroa_idx, align 4
  store <2 x float> %i.cf, ptr %i.bw, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cs = extractelement <2 x float> %i.cq, i64 1
  store float %i.cs, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5scene21AnimatedMeshSceneNode5cloneEPNS_10ISceneNodeEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.b, ptr %1         ; 2 uses
  %.not32 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.029 = select i1 %.not32, ptr %i.d, ptr %2     ; 4 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #34 ; 33 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  invoke void @_ZN5scene21AnimatedMeshSceneNodeC1EPNS_13IAnimatedMeshEPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEESB_SB_(ptr noundef nonnull align 8 dereferenceable(432) %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef %.029, i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.l)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %.0, null
  br i1 %.not33, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef nonnull %.0)
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.w, ptr %i.t, align 8, !tbaa !83
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #31, !inline_history !85
  br label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 448) #30
  resume { ptr, i32 } %i.aa

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.e, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false), !tbaa.struct !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !15
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.am = load <2 x i16>, ptr %i.ak, align 4, !tbaa !242
  store <2 x i16> %i.am, ptr %i.al, align 4, !tbaa !242
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !47, !range !92, !noundef !93
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !48, !range !92, !noundef !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 217
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !48
  %.not.i34 = icmp eq ptr %.029, null
  br i1 %.not.i34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK17IReferenceCounted4dropEv.exit
  %.sink.i = phi ptr [ %i.at, %bb.h ], [ %.029, %_ZNK17IReferenceCounted4dropEv.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr %.sink.i, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.017.021.i = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %.not2022.i = icmp eq ptr %.sroa.017.021.i, %i.av
  br i1 %.not2022.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %.sroa.017.0.i, %.lr.ph.i ], [ %.sroa.017.021.i, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !133 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(218) %i.ax, ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef %.029), !inline_history !274 ; 0 uses
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !20 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.017.0.i, %i.av
  br i1 %.not20.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i, !llvm.loop !275

_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit: ; preds = %.lr.ph.i, %bb.i
  %i.bc = icmp eq ptr %i.e, %0
  br i1 %i.bc, label %_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.be, ptr noundef nonnull align 8 dereferenceable(25) %i.bd) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !51, !range !92, !noundef !93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !51
  br label %_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit

_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit:  ; preds = %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !86
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.bp = load <4 x float>, ptr %i.bn, align 8, !tbaa !13
  store <4 x float> %i.bp, ptr %i.bo, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !91, !range !92, !noundef !93
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !127
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !127
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.by = load <2 x float>, ptr %i.bw, align 8, !tbaa !13
  store <2 x float> %i.by, ptr %i.bx, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !80, !range !92, !noundef !93
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 321
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !131, !range !92, !noundef !93
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 322
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !131
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !130
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.ck = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ci) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %i.cn = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt8optionalIN4core9TransformEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 323
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !193, !range !92, !noundef !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 323
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !193
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  store <8 x float> %i.z, ptr %i.o, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store float %i.aa, ptr %i.ab, align 4, !tbaa !273
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ad = extractelement <4 x float> %i.x, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !290
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = extractelement <4 x float> %i.y, i64 3  ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store float %i.aa, ptr %i.ag, align 4, !tbaa !273
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %foldExtExtBinop10 = fsub <4 x float> %i.v, %i.w ; 2 uses
  %i.ai = extractelement <4 x float> %foldExtExtBinop10, i64 0
  %i.aj = shufflevector <4 x float> %foldExtExtBinop10, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.z, <8 x i32> <i32 0, i32 9, i32 10, i32 0, i32 12, i32 10, i32 0, i32 9>
  store <8 x float> %i.ak, ptr %i.ah, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.aa, ptr %i.al, align 4, !tbaa !273
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !290
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.af, ptr %i.an, align 4, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.aa, ptr %i.ao, align 4, !tbaa !273
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.e:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  ret void

bb.f:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %indvars.iv = phi i64 [ 0, %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit ], [ %indvars.iv.next, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !285
  %i.ay = load ptr, ptr %1, align 8, !tbaa !288   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv
  br i1 %i.bd, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #32
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !290 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !291 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !273 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.ap, align 8, !tbaa !13
  %i.bl = load <2 x float>, ptr %i.aq, align 8, !tbaa !13
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bk, <2 x float> %i.bo)
  %i.bs = load <2 x float>, ptr %i.ar, align 8, !tbaa !13
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bs, <2 x float> %i.br)
  %i.bw = load <2 x float>, ptr %i.as, align 8, !tbaa !13
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = load float, ptr %i.at, align 8, !tbaa !13
  %i.bz = load float, ptr %i.au, align 8, !tbaa !13
  %i.ca = fmul float %i.bh, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.by, float %i.ca)
  %i.cc = load float, ptr %i.av, align 8, !tbaa !13
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cc, float %i.cb)
  %i.ce = load float, ptr %i.aw, align 8, !tbaa !13
  %i.cf = fadd float %i.ce, %i.cd
  store <2 x float> %i.bx, ptr %i.be, align 4
  store float %i.cf, ptr %i.bi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !292
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !290
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #31 ; 3 uses
  %i.k = tail call double @sin(double noundef %i.i) #31 ; 3 uses
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !13
  %i.m = fmul <2 x float> %i.l, splat (float f0x3C8EFA35)
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = tail call double @cos(double noundef %i.o) #31 ; 4 uses
  %i.q = tail call double @sin(double noundef %i.o) #31 ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.s = tail call double @cos(double noundef %i.r) #31 ; 5 uses
  %i.t = tail call double @sin(double noundef %i.r) #31 ; 5 uses
  %i.u = fmul double %i.p, %i.s
  %i.v = fptrunc double %i.u to float             ; 3 uses
  store float %i.v, ptr %0, align 4, !tbaa !13
  %i.w = fmul double %i.p, %i.t
  %i.x = fptrunc double %i.w to float             ; 3 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !13
  %i.y = fptrunc double %i.q to float
  %i.z = fneg float %i.y                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %i.ab = fmul double %i.k, %i.q
  %i.ac = fmul double %i.j, %i.q
  %i.ad = fneg double %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.s, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.s, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.t, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.aj)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  store <2 x float> %i.ap, ptr %i.ae, align 4, !tbaa !13
  %i.aq = fmul double %i.k, %i.p
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ar, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = fneg double %i.s
  %i.av = insertelement <2 x double> poison, double %i.k, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.t, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.az)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  store <2 x float> %i.bf, ptr %i.at, align 4, !tbaa !13
  %i.bg = fmul double %i.j, %i.p
  %i.bh = fptrunc double %i.bg to float           ; 4 uses
  store float %i.bh, ptr %i.d, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bl = load <2 x float>, ptr %i.bi, align 8, !tbaa !13 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  store float %i.bm, ptr %i.bj, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !13 ; 3 uses
  %i.bq = load float, ptr %i.bo, align 8, !tbaa !273 ; 3 uses
  %i.br = extractelement <2 x float> %i.bp, i64 0
  store float %i.br, ptr %i.bn, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bq, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !290 ; 3 uses
  %i.bv = fcmp oeq float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !291 ; 2 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !273
  %i.cb = fcmp une float %i.ca, 1.000000e+00
  br i1 %i.cb, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.cc = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bx, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %2 = load <4 x float>, ptr %i.cd, align 8
  %i.ce = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float 1.000000e+00, i64 3
  %i.cg = insertelement <4 x float> %i.cf, float %i.ar, i64 2 ; 2 uses
  %i.ch = fmul <4 x float> %i.cg, zeroinitializer ; 2 uses
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.x, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.z, i64 2
  %i.cl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bu, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.ch)
  %i.co = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cp = insertelement <4 x float> %i.co, float %i.bh, i64 2 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bu, i64 3
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer, <4 x float> %i.cn)
  %i.cs = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 0.000000e+00, i64 3
  %i.cu = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cr)
  store <4 x float> %i.cw, ptr %0, align 4, !tbaa !13
  %i.cx = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cc, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cz = fmul <4 x float> %i.cy, %i.cg
  %i.da = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.v, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.x, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.z, i64 2 ; 2 uses
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.cz)
  %i.de = insertelement <4 x float> %i.cp, float %i.cc, i64 3
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> zeroinitializer, <4 x float> %i.dd)
  %i.dg = shufflevector <2 x float> %i.bl, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.df)
  store <4 x float> %i.di, ptr %i.ae, align 4, !tbaa !13
  %i.dj = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 3
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.dj) ; 2 uses
  %i.dl = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3
  %i.dn = insertelement <4 x float> %i.dm, float %i.bh, i64 2
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk)
  %i.dp = insertelement <4 x float> %i.dh, float %i.bq, i64 2
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.do)
  store <4 x float> %i.dq, ptr %i.at, align 4, !tbaa !13
  %i.dr = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3
  %i.ds = insertelement <4 x float> %i.dr, float %i.bh, i64 2
  %i.dt = insertelement <4 x float> %i.dk, float 1.000000e+00, i64 3
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> zeroinitializer, <4 x float> %i.dt)
  %i.dv = insertelement <4 x float> %i.dg, float -0.000000e+00, i64 3
  %i.dw = insertelement <4 x float> %i.dv, float %i.bq, i64 2
  %i.dx = fadd <4 x float> %i.du, %i.dw
  store <4 x float> %i.dx, ptr %i.bj, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !92, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !92, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !83
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !133
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !220
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !220
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !24, !range !92, !noundef !93
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !24
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !219
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !20 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.a, ptr %i.d, align 8, !tbaa !16
  store ptr %i.a, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.e, align 8, !tbaa !21
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.06.011 = phi ptr [ %.sroa.06.0, %_ZNK17IReferenceCounted4dropEv.exit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store ptr null, ptr %i.h, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !133  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i8 0, ptr %i.j, align 8, !tbaa !24
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !83
  %.not.i = icmp eq i32 %i.r, 0
end_hunk_1
