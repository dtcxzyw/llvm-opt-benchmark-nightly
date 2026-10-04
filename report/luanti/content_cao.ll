Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E9_M_invokeERKSt9_Any_dataOf":bb.a
  %.fca.1.extract12.i.i.i = extractvalue { <2 x float>, float } %i.ee, 1
  %i.ef = call { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %i.h, <2 x float> %.fca.0.extract11.i.i.i, float %.fca.1.extract12.i.i.i) ; 2 uses
  %.fca.0.extract5.i.i.i = extractvalue { <2 x float>, float } %i.ef, 0
  %.fca.1.extract6.i.i.i = extractvalue { <2 x float>, float } %i.ef, 1
  store <2 x float> %.fca.0.extract5.i.i.i, ptr %3, align 8
  store float %.fca.1.extract6.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %i.eg = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 208
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(308) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %3), !inline_history !999
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ej = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef nonnull align 4 dereferenceable(12) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !999 ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load <2 x float>, ptr %i.em, align 4, !tbaa !48
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.24.0.copyload.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i, align 4, !tbaa !48
  %i.en = load float, ptr %i.i, align 4, !tbaa !671
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 124
  %i.ep = load float, ptr %i.q, align 8, !tbaa !1007 ; 2 uses
  %i.eq = fdiv nsz float %i.en, %i.ep             ; 2 uses
  %i.er = fcmp nsz ogt float %i.eq, 1.000000e+00
  %i.es = fcmp nsz oeq float %i.ep, 0.000000e+00
  %or.cond.i41.i.i.i = or i1 %i.es, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 136
  %i.eu = fpext nsz float %i.eq to double
  %i.ev = select i1 %or.cond.i41.i.i.i, double 1.000000e+00, double %i.eu ; 3 uses
  %i.ew = fsub nsz double 1.000000e+00, %i.ev     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 132
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !149
  %i.ez = fpext nsz float %i.ey to double
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 144
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !149
  %i.fc = fpext nsz float %i.fb to double
  %i.fd = fmul nsz double %i.ev, %i.fc
  %i.fe = call nsz double @llvm.fmuladd.f64(double %i.ez, double %i.ew, double %i.fd)
  %i.ff = fptrunc nsz double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 148
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !1004, !range !46, !noundef !47
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  %.sroa.7.0.i42.i.i.i = select nsz i1 %i.fi, float 1.000000e+00, float %.sroa.24.0.copyload.i.i.i
  %.sroa.0.0.i43.i.i.i = select nsz i1 %i.fi, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.03.0.copyload.i.i.i
  %i.fj = load <2 x float>, ptr %i.eo, align 4, !tbaa !48
  %i.fk = fpext <2 x float> %i.fj to <2 x double>
  %i.fl = load <2 x float>, ptr %i.et, align 8, !tbaa !48
  %i.fm = fpext <2 x float> %i.fl to <2 x double>
  %i.fn = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fmul nsz <2 x double> %i.fo, %i.fm
  %i.fq = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fr, <2 x double> %i.fp)
  %i.ft = fptrunc <2 x double> %i.fs to <2 x float>
  %i.fu = fmul nsz <2 x float> %.sroa.0.0.i43.i.i.i, %i.ft
  %i.fv = fmul nsz float %.sroa.7.0.i42.i.i.i, %i.ff
  store <2 x float> %i.fu, ptr %4, align 8
  store float %i.fv, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.fw = load ptr, ptr %i.cm, align 8, !tbaa !55
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(218) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %4), !inline_history !999
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i
  %i.fz = load ptr, ptr %.sroa.01.07.i.i.i, align 8, !tbaa !41
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i
  %.sroa.01.1.i.i.i = phi ptr [ %i.cc, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i ], [ %i.fz, %bb.t ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.sroa.01.1.i.i.i, null
  br i1 %.not5.i.i.i, label %"_ZSt10__invoke_rIvRZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0JfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.b

"_ZSt10__invoke_rIvRZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0JfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.u, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0", ptr %0, align 8, !tbaa !1009
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !587
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !527
  store i64 %.val.i, ptr %0, align 8, !tbaa !527
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %0, <2 x float> %1, float %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load float, ptr %i.a, align 4, !tbaa !671
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load float, ptr %i.d, align 4, !tbaa !1010 ; 2 uses
  %i.f = fdiv nsz float %i.b, %i.e                ; 2 uses
  %i.g = fcmp nsz ogt float %i.f, 1.000000e+00
  %i.h = fcmp nsz oeq float %i.e, 0.000000e+00
  %or.cond = or i1 %i.h, %i.g
  %.0 = select nsz i1 %or.cond, float 1.000000e+00, float %i.f ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.c, align 4, !tbaa !48 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.211.0.copyload = load <2 x float>, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.i, align 4, !tbaa !48 ; 4 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.29.0.copyload = load <2 x float>, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !48 ; 4 uses
  %.sroa.047.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i = extractelement <2 x float> %.sroa.08.0.copyload, i64 0
  %foldExtExtBinop = fmul nsz <2 x float> %.sroa.010.0.copyload, %.sroa.08.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i, float %.sroa.036.0.vec.extract.i, float %i.j)
  %.sroa.10.8.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 0
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i, float %.sroa.6.8.vec.extract.i, float %i.k)
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 1
  %i.m = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i, float %.sroa.6.12.vec.extract.i, float %i.l) ; 3 uses
  %i.n = fcmp nsz olt float %i.m, 0.000000e+00    ; 3 uses
  %i.o = fneg nsz <2 x float> %.sroa.010.0.copyload
  %i.p = fneg nsz <2 x float> %.sroa.211.0.copyload
  %i.q = fneg nsz float %i.m
  %.sroa.047.0.i = select nsz i1 %i.n, <2 x float> %i.o, <2 x float> %.sroa.010.0.copyload ; 2 uses
  %.sroa.10.0.i = select nsz i1 %i.n, <2 x float> %i.p, <2 x float> %.sroa.211.0.copyload ; 2 uses
  %.020.i = select nsz i1 %i.n, float %i.q, float %i.m ; 2 uses
  %i.r = fcmp nsz ugt float %.020.i, 9.990000e-01
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call nsz float @llvm.acos.f32(float %.020.i) ; 3 uses
  %i.t = tail call nsz float @llvm.sin.f32(float %i.s)
  %i.u = fdiv nsz float 1.000000e+00, %i.t        ; 2 uses
  %i.v = fsub nsz float 1.000000e+00, %.0
  %i.w = fmul nsz float %i.v, %i.s
  %i.x = tail call nsz float @llvm.sin.f32(float %i.w)
  %i.y = fmul nsz float %i.x, %i.u
  %i.z = fmul nsz float %.0, %i.s
  %i.aa = tail call nsz float @llvm.sin.f32(float %i.z)
  %i.ab = fmul nsz float %i.aa, %i.u
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fmul nsz <2 x float> %.sroa.047.0.i, %i.ad
  %i.af = fmul nsz <2 x float> %.sroa.10.0.i, %i.ad
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ah
  %i.aj = fmul nsz <2 x float> %.sroa.29.0.copyload, %i.ah
  %i.ak = fadd nsz <2 x float> %i.ae, %i.ai
  %i.al = fadd nsz <2 x float> %i.af, %i.aj
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.am = fsub nsz float 1.000000e+00, %.0
  %i.an = insertelement <2 x float> poison, float %.0, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ao
  %i.aq = fmul nsz <2 x float> %i.ao, %.sroa.29.0.copyload
  %i.ar = insertelement <2 x float> poison, float %i.am, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = fmul nsz <2 x float> %i.as, %.sroa.10.0.i
  %i.au = fadd nsz <2 x float> %i.aq, %i.at       ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ax = fmul nsz <2 x float> %i.as, %.sroa.047.0.i
  %i.ay = fadd nsz <2 x float> %i.ap, %i.ax       ; 4 uses
  %foldExtExtBinop46 = fmul nsz <2 x float> %i.ay, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop46, i64 1
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.bb)
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bc)
  %i.be = fpext nsz float %i.bd to double
  %i.bf = tail call nsz double @llvm.sqrt.f64(double %i.be)
  %i.bg = fdiv nsz double 1.000000e+00, %i.bf
  %i.bh = fptrunc nsz double %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul nsz <2 x float> %i.ay, %i.bj
  %i.bl = fmul nsz <2 x float> %i.au, %i.bj
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %i.bk, %bb.c ], [ %i.ak, %bb.b ] ; 6 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %i.bl, %bb.c ], [ %i.al, %bb.b ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1011, !range !46, !noundef !47
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.bp = fmul nsz float %2, f0x3C8EFA35
  %i.bq = fmul nsz <2 x float> %1, splat (float f0x3C8EFA35)
  %i.br = fpext <2 x float> %i.bq to <2 x double>
  %i.bs = fmul nsz <2 x double> %i.br, splat (double 5.000000e-01)
  %i.bt = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.bs) ; 2 uses
  %i.bu = extractvalue { <2 x double>, <2 x double> } %i.bt, 0 ; 5 uses
  %i.bv = extractvalue { <2 x double>, <2 x double> } %i.bt, 1 ; 5 uses
  %i.bw = fpext nsz float %i.bp to double
  %i.bx = fmul nsz double %i.bw, 5.000000e-01
  %sincos37.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bx) ; 2 uses
  %sin38.i.i = extractvalue { double, double } %sincos37.i.i, 0
  %cos39.i.i = extractvalue { double, double } %sincos37.i.i, 1
  %.sroa.1036.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 4 uses
  %3 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.029.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 2 uses
  %i.by = fneg nsz float %.sroa.029.0.vec.extract
  %.sroa.1036.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0 ; 3 uses
  %i.bz = shufflevector <2 x double> %i.bu, <2 x double> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.ca = insertelement <2 x double> poison, double %cos39.i.i, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul nsz <2 x double> %i.bz, %i.cb      ; 3 uses
  %4 = shufflevector <2 x double> %i.bv, <2 x double> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.cd = insertelement <2 x double> poison, double %sin38.i.i, i64 0
  %5 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul nsz <2 x double> %4, %5               ; 3 uses
  %7 = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul nsz <2 x double> %7, %6
  %8 = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.cc, <2 x double> %i.ce)
  %9 = fptrunc <2 x double> %i.cf to <2 x float>  ; 4 uses
  %foldExtExtBinop48 = fmul nsz <2 x float> %9, %9
  %10 = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %11 = shufflevector <2 x double> %6, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %12 = fneg nsz <2 x double> %11
  %13 = shufflevector <2 x double> %i.bv, <2 x double> %i.bu, <2 x i32> <i32 0, i32 2>
  %14 = fmul nsz <2 x double> %13, %12
  %15 = shufflevector <2 x double> %i.bu, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %16 = shufflevector <2 x double> %i.cc, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %17 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %16, <2 x double> %14) ; 2 uses
  %18 = extractelement <2 x double> %17, i64 1
  %19 = fptrunc nsz double %18 to float           ; 3 uses
  %20 = extractelement <2 x double> %17, i64 0
  %i.cg = fptrunc nsz double %20 to float         ; 3 uses
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %10)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %19, float %19, float %i.ch)
  %21 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %21, float %21, float %i.ci)
  %i.ck = fpext nsz float %i.cj to double
  %i.cl = tail call nsz double @llvm.sqrt.f64(double %i.ck)
  %i.cm = fdiv nsz double 1.000000e+00, %i.cl
  %i.cn = fptrunc nsz double %i.cm to float       ; 3 uses
  %i.co = fmul nsz float %i.cg, %i.cn             ; 4 uses
  %i.cp = fmul nsz float %19, %i.cn               ; 3 uses
  %22 = insertelement <2 x float> poison, float %i.cn, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul nsz <2 x float> %23, %9              ; 4 uses
  %i.cq = fmul nsz float %i.co, %i.by
  %25 = extractelement <2 x float> %24, i64 1     ; 2 uses
  %i.cr = tail call nsz float @llvm.fmuladd.f32(float %25, float %.sroa.1036.12.vec.extract, float %i.cq)
  %26 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %i.cs = fneg nsz float %26                      ; 2 uses
  %i.ct = fneg nsz float %i.cp                    ; 2 uses
  %i.cu = fmul nsz float %i.co, %.sroa.1036.12.vec.extract
  %27 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x float> %27, float %i.cs, i64 1
  %i.cw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cr, i64 1
  %i.cy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %i.cx) ; 2 uses
  %28 = extractelement <2 x float> %i.cy, i64 1
  %29 = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %.sroa.1036.8.vec.extract, float %28)
  %30 = fmul nsz float %26, %.sroa.1036.12.vec.extract
  %31 = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 0, i32 3>
  %32 = insertelement <2 x float> %i.cy, float %30, i64 1
  %33 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %31, <2 x float> %32)
  %i.cz = insertelement <2 x float> poison, float %i.ct, i64 0
  %34 = insertelement <2 x float> %i.cz, float %i.cp, i64 1
  %35 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %3, <2 x float> %33) ; 2 uses
  %36 = fneg nsz float %i.co
  %37 = extractelement <2 x float> %35, i64 1
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %36, float %.sroa.1036.8.vec.extract, float %37)
  %.sroa.0.4.vec.insert.i20 = insertelement <2 x float> %35, float %i.da, i64 1
  %i.db = fmul nsz float %i.cp, %.sroa.1036.12.vec.extract
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %25, float %.sroa.1036.8.vec.extract, float %i.db)
  %38 = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.co, float %38, float %i.dc)
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %.sroa.029.0.vec.extract, float %i.dd)
  %39 = insertelement <2 x float> poison, float %i.de, i64 0
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> %39, float %29, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %.sroa.029.0 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i29.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.0.4.vec.insert.i20, %bb.d ] ; 7 uses
  %.sroa.1036.0 = phi nsz <2 x float> [ %.sroa.3.12.vec.insert.i31.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.5.8.vec.insert.i, %bb.d ] ; 7 uses
  %.sroa.1036.12.vec.extract42 = extractelement <2 x float> %.sroa.1036.0, i64 1 ; 5 uses
  %i.df = fmul nsz float %.sroa.1036.12.vec.extract42, %.sroa.1036.12.vec.extract42
  %i.dg = fpext nsz float %i.df to double         ; 2 uses
  %.sroa.029.0.vec.extract32 = extractelement <2 x float> %.sroa.029.0, i64 0 ; 3 uses
  %foldExtExtBinop50.a = fmul nsz <2 x float> %.sroa.029.0, %.sroa.029.0
  %i.dh = extractelement <2 x float> %foldExtExtBinop50.a, i64 0
  %i.di = fpext nsz float %i.dh to double         ; 2 uses
  %.sroa.029.4.vec.extract35 = extractelement <2 x float> %.sroa.029.0, i64 1 ; 3 uses
  %i.dj = fmul nsz float %.sroa.029.4.vec.extract35, %.sroa.029.4.vec.extract35
  %i.dk = fpext nsz float %i.dj to double         ; 2 uses
  %.sroa.1036.8.vec.extract39 = extractelement <2 x float> %.sroa.1036.0, i64 0
  %foldExtExtBinop52 = fmul nsz <2 x float> %.sroa.1036.0, %.sroa.1036.0
  %i.dl = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.dm = fpext nsz float %i.dl to double         ; 2 uses
  %i.dn = fneg nsz float %.sroa.1036.8.vec.extract39
  %i.do = fmul nsz float %.sroa.029.0.vec.extract32, %i.dn
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.4.vec.extract35, float %.sroa.1036.12.vec.extract42, float %i.do)
  %i.dq = fpext nsz float %i.dp to double
  %i.dr = fmul nsz double %i.dq, 2.000000e+00     ; 4 uses
  %i.ds = fadd nsz double %i.dr, -1.000000e+00
  %i.dt = tail call nsz noundef double @llvm.fabs.f64(double %i.ds)
  %i.du = fcmp nsz ugt double %i.dt, f0x3EB0C6F7A0B5ED8D
  br i1 %i.du, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dv = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.dw = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.dx = tail call nsz double @llvm.atan2.f64(double %i.dv, double %i.dw)
  %i.dy = fmul nsz double %i.dx, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.g:                                             ; preds = %bb.e
  %i.dz = fadd nsz double %i.dr, 1.000000e+00
  %i.ea = tail call nsz noundef double @llvm.fabs.f64(double %i.dz)
  %i.eb = fcmp nsz ugt double %i.ea, f0x3EB0C6F7A0B5ED8D
  br i1 %i.eb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ec = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.ed = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.ee = tail call nsz double @llvm.atan2.f64(double %i.ec, double %i.ed)
  %i.ef = fmul nsz double %i.ee, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.i:                                             ; preds = %bb.g
  %i.eg = shufflevector <2 x float> %.sroa.1036.0, <2 x float> %.sroa.029.0, <2 x i32> <i32 1, i32 2>
  %i.eh = fmul nsz <2 x float> %i.eg, %.sroa.1036.0
  %i.ei = fsub nsz double %i.di, %i.dk
  %i.ej = fsub nsz double %i.ei, %i.dm
  %i.ek = fadd nsz double %i.ej, %i.dg
  %i.el = shufflevector <2 x float> %.sroa.029.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.em = shufflevector <2 x float> %.sroa.029.0, <2 x float> %.sroa.1036.0, <2 x i32> <i32 0, i32 2>
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.eh)
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  %i.ep = fmul nsz <2 x double> %i.eo, splat (double 2.000000e+00) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = tail call nsz double @llvm.atan2.f64(double %i.eq, double %i.ek)
  %i.es = fadd nsz double %i.di, %i.dk
  %i.et = fsub nsz double %i.dm, %i.es
  %i.eu = fadd nsz double %i.et, %i.dg
  %i.ev = extractelement <2 x double> %i.ep, i64 1
  %i.ew = tail call nsz double @llvm.atan2.f64(double %i.ev, double %i.eu)
  %i.ex = fcmp nsz olt double %i.dr, -1.000000e+00
  %i.ey = select i1 %i.ex, double -1.000000e+00, double %i.dr ; 2 uses
  %i.ez = fcmp nsz olt double %i.ey, 1.000000e+00
  %i.fa = select i1 %i.ez, double %i.ey, double 1.000000e+00
  %i.fb = tail call nsz double @llvm.asin.f64(double %i.fa)
  %i.fc = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  %i.fe = fptrunc <2 x double> %i.fd to <2 x float>
  %i.ff = fmul nsz <2 x float> %i.fe, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.10.0.in = phi double [ %i.er, %bb.i ], [ %i.ef, %bb.h ], [ %i.dy, %bb.f ]
  %i.fg = phi <2 x float> [ %i.ff, %bb.i ], [ <float 0.000000e+00, float -9.000000e+01>, %bb.h ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.f ]
  %.sroa.10.0 = fptrunc double %.sroa.10.0.in to float
  %i.fh = fmul nsz float %.sroa.10.0, f0x42652EE0
  %.fca.0.insert.i25 = insertvalue { <2 x float>, float } poison, <2 x float> %i.fg, 0
  %.fca.1.insert.i26 = insertvalue { <2 x float>, float } %.fca.0.insert.i25, float %i.fh, 1
  ret { <2 x float>, float } %.fca.1.insert.i26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !673
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !41 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !1012

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !41 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !1012

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !126  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !609 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !611 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_12BoneOverrideENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
end_hunk_0
