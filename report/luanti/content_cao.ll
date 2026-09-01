Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_cao?download=true
inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E9_M_invokeERKSt9_Any_dataOf":bb.a
  %i.cq = call noundef nonnull align 4 dereferenceable(12) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !996 ; 2 uses
  %.sroa.023.0.copyload.i.i.i = load <2 x float>, ptr %i.cq, align 4
  %.sroa.224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.224.0.copyload.i.i.i = load float, ptr %.sroa.224.0..sroa_idx.i.i.i, align 4, !tbaa !33
  %i.cr = load float, ptr %i.i, align 4, !tbaa !983
  %i.cs = load float, ptr %i.l, align 4, !tbaa !997 ; 2 uses
  %i.ct = fdiv nsz float %i.cr, %i.cs             ; 2 uses
  %i.cu = fcmp nsz ogt float %i.ct, 1.000000e+00
  %i.cv = fcmp nsz oeq float %i.cs, 0.000000e+00
  %or.cond.i40.i.i.i = or i1 %i.cv, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 52
  %i.cx = fpext nsz float %i.ct to double
  %i.cy = select i1 %or.cond.i40.i.i.i, double 1.000000e+00, double %i.cx ; 3 uses
  %i.cz = fsub nsz double 1.000000e+00, %i.cy     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 48
  %i.db = load float, ptr %i.da, align 8, !tbaa !146
  %i.dc = fpext nsz float %i.db to double
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 60
  %i.de = load float, ptr %i.dd, align 4, !tbaa !146
  %i.df = fpext nsz float %i.de to double
  %i.dg = fmul nsz double %i.cy, %i.df
  %i.dh = call nsz double @llvm.fmuladd.f64(double %i.dc, double %i.cz, double %i.dg)
  %i.di = fptrunc nsz double %i.dh to float
  %i.dj = load i8, ptr %i.w, align 8, !tbaa !998, !range !31, !noundef !32
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %.sroa.7.0.i.i.i.i = select nsz i1 %i.dk, float 0.000000e+00, float %.sroa.224.0.copyload.i.i.i
  %.sroa.0.0.i.i.i.i = select nsz i1 %i.dk, <2 x float> zeroinitializer, <2 x float> %.sroa.023.0.copyload.i.i.i
  %i.dl = load <2 x float>, ptr %i.h, align 8, !tbaa !33
  %i.dm = fpext <2 x float> %i.dl to <2 x double>
  %i.dn = load <2 x float>, ptr %i.cw, align 4, !tbaa !33
  %i.do = fpext <2 x float> %i.dn to <2 x double>
  %i.dp = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul nsz <2 x double> %i.dq, %i.do
  %i.ds = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dt, <2 x double> %i.dr)
  %i.dv = fptrunc <2 x double> %i.du to <2 x float>
  %i.dw = fadd nsz <2 x float> %.sroa.0.0.i.i.i.i, %i.dv
  %i.dx = fadd nsz float %.sroa.7.0.i.i.i.i, %i.di
  store <2 x float> %i.dw, ptr %2, align 8
  store float %i.dx, ptr %.sroa.220.0..sroa_idx.i.i.i, align 8
  %i.dy = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 224
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(218) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %2), !inline_history !996
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.eb = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call { <2 x float>, float } %i.ed(ptr noundef nonnull align 8 dereferenceable(308) %i.cm), !inline_history !996 ; 2 uses
  %.fca.0.extract11.i.i.i = extractvalue { <2 x float>, float } %i.ee, 0
  %.fca.1.extract12.i.i.i = extractvalue { <2 x float>, float } %i.ee, 1
  %i.ef = call { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %i.h, <2 x float> %.fca.0.extract11.i.i.i, float %.fca.1.extract12.i.i.i) ; 2 uses
  %.fca.0.extract5.i.i.i = extractvalue { <2 x float>, float } %i.ef, 0
  %.fca.1.extract6.i.i.i = extractvalue { <2 x float>, float } %i.ef, 1
  store <2 x float> %.fca.0.extract5.i.i.i, ptr %3, align 8
  store float %.fca.1.extract6.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %i.eg = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 208
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(308) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %3), !inline_history !996
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ej = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef nonnull align 4 dereferenceable(12) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(218) %i.cm), !inline_history !996 ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load <2 x float>, ptr %i.em, align 4
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.24.0.copyload.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i, align 4, !tbaa !33
  %i.en = load float, ptr %i.i, align 4, !tbaa !983
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 124
  %i.ep = load float, ptr %i.q, align 8, !tbaa !999 ; 2 uses
  %i.eq = fdiv nsz float %i.en, %i.ep             ; 2 uses
  %i.er = fcmp nsz ogt float %i.eq, 1.000000e+00
  %i.es = fcmp nsz oeq float %i.ep, 0.000000e+00
  %or.cond.i41.i.i.i = or i1 %i.es, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 136
  %i.eu = fpext nsz float %i.eq to double
  %i.ev = select i1 %or.cond.i41.i.i.i, double 1.000000e+00, double %i.eu ; 3 uses
  %i.ew = fsub nsz double 1.000000e+00, %i.ev     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 132
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !146
  %i.ez = fpext nsz float %i.ey to double
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 144
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !146
  %i.fc = fpext nsz float %i.fb to double
  %i.fd = fmul nsz double %i.ev, %i.fc
  %i.fe = call nsz double @llvm.fmuladd.f64(double %i.ez, double %i.ew, double %i.fd)
  %i.ff = fptrunc nsz double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 148
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !992, !range !31, !noundef !32
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  %.sroa.7.0.i42.i.i.i = select nsz i1 %i.fi, float 1.000000e+00, float %.sroa.24.0.copyload.i.i.i
  %.sroa.0.0.i43.i.i.i = select nsz i1 %i.fi, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.03.0.copyload.i.i.i
  %i.fj = load <2 x float>, ptr %i.eo, align 4, !tbaa !33
  %i.fk = fpext <2 x float> %i.fj to <2 x double>
  %i.fl = load <2 x float>, ptr %i.et, align 8, !tbaa !33
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
  %i.fw = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(218) %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %4), !inline_history !996
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i
  %i.fz = load ptr, ptr %.sroa.01.07.i.i.i, align 8, !tbaa !19
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
  store ptr @"_ZTIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0", ptr %0, align 8, !tbaa !1000
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !691
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !557
  store i64 %.val.i, ptr %0, align 8, !tbaa !557
  br label %"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK12BoneOverride19getRotationEulerDegEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(120) %0, <2 x float> %1, float %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load float, ptr %i.a, align 4, !tbaa !983
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load float, ptr %i.d, align 4, !tbaa !1002 ; 2 uses
  %i.f = fdiv nsz float %i.b, %i.e                ; 2 uses
  %i.g = fcmp nsz ogt float %i.f, 1.000000e+00
  %i.h = fcmp nsz oeq float %i.e, 0.000000e+00
  %or.cond = or i1 %i.h, %i.g
  %.0 = select nsz i1 %or.cond, float 1.000000e+00, float %i.f ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.211.0.copyload = load <2 x float>, ptr %.sroa.211.0..sroa_idx, align 4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 4 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.29.0.copyload = load <2 x float>, ptr %.sroa.29.0..sroa_idx, align 4 ; 4 uses
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
  %i.s = tail call nsz float @llvm.acos.f32(float %.020.i) ; 2 uses
  %i.t = tail call nsz float @llvm.sin.f32(float %i.s)
  %i.u = fdiv nsz float 1.000000e+00, %i.t
  %i.v = fsub nsz float 1.000000e+00, %.0
  %3 = insertelement <2 x float> poison, float %.0, i64 0
  %4 = insertelement <2 x float> %3, float %i.v, i64 1
  %5 = insertelement <2 x float> poison, float %i.s, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul nsz <2 x float> %4, %6
  %8 = tail call nsz <2 x float> @llvm.sin.v2f32(<2 x float> %7)
  %i.w = insertelement <2 x float> poison, float %i.u, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul nsz <2 x float> %8, %i.x            ; 2 uses
  %9 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = shufflevector <2 x float> %.sroa.08.0.copyload, <2 x float> %.sroa.10.0.i, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %11 = fmul nsz <4 x float> %10, %9
  %12 = shufflevector <2 x float> %.sroa.047.0.i, <2 x float> %.sroa.29.0.copyload, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %13 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %14 = fmul nsz <4 x float> %12, %13
  %15 = fadd nsz <4 x float> %11, %14             ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.z = fsub nsz float 1.000000e+00, %.0
  %i.aa = insertelement <2 x float> poison, float %.0, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ab
  %i.ad = fmul nsz <2 x float> %i.ab, %.sroa.29.0.copyload
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul nsz <2 x float> %i.af, %.sroa.10.0.i
  %i.ah = fadd nsz <2 x float> %i.ad, %i.ag       ; 3 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fmul nsz <2 x float> %i.af, %.sroa.047.0.i
  %i.al = fadd nsz <2 x float> %i.ac, %i.ak       ; 4 uses
  %foldExtExtBinop46 = fmul nsz <2 x float> %i.al, %i.al
  %i.am = extractelement <2 x float> %foldExtExtBinop46, i64 1
  %i.an = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ap)
  %i.ar = fpext nsz float %i.aq to double
  %i.as = tail call nsz double @llvm.sqrt.f64(double %i.ar)
  %i.at = fdiv nsz double 1.000000e+00, %i.as
  %i.au = fptrunc nsz double %i.at to float
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul nsz <2 x float> %i.al, %i.aw
  %i.ay = fmul nsz <2 x float> %i.ah, %i.aw
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %i.ax, %bb.c ], [ %16, %bb.b ] ; 6 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %i.ay, %bb.c ], [ %17, %bb.b ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !1003, !range !31, !noundef !32
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.bc = fmul nsz float %2, f0x3C8EFA35
  %i.bd = fmul nsz <2 x float> %1, splat (float f0x3C8EFA35)
  %i.be = fpext <2 x float> %i.bd to <2 x double>
  %i.bf = fmul nsz <2 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.bf) ; 2 uses
  %i.bh = extractvalue { <2 x double>, <2 x double> } %i.bg, 0 ; 5 uses
  %i.bi = extractvalue { <2 x double>, <2 x double> } %i.bg, 1 ; 5 uses
  %i.bj = fpext nsz float %i.bc to double
  %i.bk = fmul nsz double %i.bj, 5.000000e-01
  %sincos37.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bk) ; 2 uses
  %sin38.i.i = extractvalue { double, double } %sincos37.i.i, 0
  %cos39.i.i = extractvalue { double, double } %sincos37.i.i, 1
  %.sroa.1036.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 4 uses
  %i.bl = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.029.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 2 uses
  %i.bm = fneg nsz float %.sroa.029.0.vec.extract
  %.sroa.1036.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0 ; 3 uses
  %i.bn = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.bo = insertelement <2 x double> poison, double %cos39.i.i, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul nsz <2 x double> %i.bn, %i.bp      ; 3 uses
  %i.br = shufflevector <2 x double> %i.bi, <2 x double> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bs = insertelement <2 x double> poison, double %sin38.i.i, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul nsz <2 x double> %i.br, %i.bt      ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul nsz <2 x double> %i.bv, %i.bu
  %i.bx = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bq, <2 x double> %i.bw)
  %i.bz = fptrunc <2 x double> %i.by to <2 x float> ; 4 uses
  %foldExtExtBinop48 = fmul nsz <2 x float> %i.bz, %i.bz
  %i.ca = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %i.cb = shufflevector <2 x double> %i.bu, <2 x double> %i.bq, <2 x i32> <i32 1, i32 2>
  %i.cc = fneg nsz <2 x double> %i.cb
  %i.cd = shufflevector <2 x double> %i.bi, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.ce = fmul nsz <2 x double> %i.cd, %i.cc
  %i.cf = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.cg = shufflevector <2 x double> %i.bq, <2 x double> %i.bu, <2 x i32> <i32 1, i32 2>
  %i.ch = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.ce) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 1
  %i.cj = fptrunc nsz double %i.ci to float       ; 3 uses
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  %i.cl = fptrunc nsz double %i.ck to float       ; 3 uses
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ca)
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cm)
  %i.co = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cn)
  %i.cq = fpext nsz float %i.cp to double
  %i.cr = tail call nsz double @llvm.sqrt.f64(double %i.cq)
  %i.cs = fdiv nsz double 1.000000e+00, %i.cr
  %i.ct = fptrunc nsz double %i.cs to float       ; 3 uses
  %i.cu = fmul nsz float %i.cj, %i.ct             ; 3 uses
  %i.cv = fmul nsz float %i.cl, %i.ct             ; 4 uses
  %i.cw = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul nsz <2 x float> %i.cx, %i.bz       ; 4 uses
  %i.cz = fmul nsz float %i.cv, %i.bm
  %i.da = extractelement <2 x float> %i.cy, i64 0 ; 2 uses
  %i.db = fneg nsz float %i.da                    ; 2 uses
  %i.dc = fneg nsz float %i.cu                    ; 2 uses
  %i.dd = fmul nsz float %i.cv, %.sroa.1036.12.vec.extract
  %i.de = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.de, float %.sroa.1036.12.vec.extract, float %i.cz)
  %i.dg = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.db, i64 1
  %i.di = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.df, i64 1
  %i.dk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %i.dj) ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %.sroa.1036.8.vec.extract, float %i.dl)
  %i.dn = fmul nsz float %i.da, %.sroa.1036.12.vec.extract
  %i.do = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 0, i32 3>
  %i.dp = insertelement <2 x float> %i.dk, float %i.dn, i64 1
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.do, <2 x float> %i.dp)
  %i.dr = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.cu, i64 1
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.bl, <2 x float> %i.dq) ; 2 uses
  %i.du = fneg nsz float %i.cv
  %i.dv = extractelement <2 x float> %i.dt, i64 1
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.du, float %.sroa.1036.8.vec.extract, float %i.dv)
  %.sroa.0.4.vec.insert.i20 = insertelement <2 x float> %i.dt, float %i.dw, i64 1
  %i.dx = fmul nsz float %i.cu, %.sroa.1036.12.vec.extract
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %i.de, float %.sroa.1036.8.vec.extract, float %i.dx)
  %i.dz = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.dz, float %i.dy)
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.db, float %.sroa.029.0.vec.extract, float %i.ea)
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> %i.ec, float %i.dm, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %.sroa.029.0 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i29.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.0.4.vec.insert.i20, %bb.d ] ; 7 uses
  %.sroa.1036.0 = phi nsz <2 x float> [ %.sroa.3.12.vec.insert.i31.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.5.8.vec.insert.i, %bb.d ] ; 7 uses
  %.sroa.1036.12.vec.extract42 = extractelement <2 x float> %.sroa.1036.0, i64 1 ; 5 uses
  %i.ed = fmul nsz float %.sroa.1036.12.vec.extract42, %.sroa.1036.12.vec.extract42
  %i.ee = fpext nsz float %i.ed to double         ; 2 uses
  %.sroa.029.0.vec.extract32 = extractelement <2 x float> %.sroa.029.0, i64 0 ; 3 uses
  %foldExtExtBinop50 = fmul nsz <2 x float> %.sroa.029.0, %.sroa.029.0
  %i.ef = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.eg = fpext nsz float %i.ef to double         ; 2 uses
  %.sroa.029.4.vec.extract35 = extractelement <2 x float> %.sroa.029.0, i64 1 ; 3 uses
  %i.eh = fmul nsz float %.sroa.029.4.vec.extract35, %.sroa.029.4.vec.extract35
  %i.ei = fpext nsz float %i.eh to double         ; 2 uses
  %.sroa.1036.8.vec.extract39 = extractelement <2 x float> %.sroa.1036.0, i64 0
  %foldExtExtBinop52 = fmul nsz <2 x float> %.sroa.1036.0, %.sroa.1036.0
  %i.ej = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.ek = fpext nsz float %i.ej to double         ; 2 uses
  %i.el = fneg nsz float %.sroa.1036.8.vec.extract39
  %i.em = fmul nsz float %.sroa.029.0.vec.extract32, %i.el
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.4.vec.extract35, float %.sroa.1036.12.vec.extract42, float %i.em)
  %i.eo = fpext nsz float %i.en to double
  %i.ep = fmul nsz double %i.eo, 2.000000e+00     ; 4 uses
  %i.eq = fadd nsz double %i.ep, -1.000000e+00
  %i.er = tail call nsz noundef double @llvm.fabs.f64(double %i.eq)
  %i.es = fcmp nsz ugt double %i.er, f0x3EB0C6F7A0B5ED8D
  br i1 %i.es, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.et = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.eu = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.ev = tail call nsz double @llvm.atan2.f64(double %i.et, double %i.eu)
  %i.ew = fmul nsz double %i.ev, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.g:                                             ; preds = %bb.e
  %i.ex = fadd nsz double %i.ep, 1.000000e+00
  %i.ey = tail call nsz noundef double @llvm.fabs.f64(double %i.ex)
  %i.ez = fcmp nsz ugt double %i.ey, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ez, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.fb = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.fc = tail call nsz double @llvm.atan2.f64(double %i.fa, double %i.fb)
  %i.fd = fmul nsz double %i.fc, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.i:                                             ; preds = %bb.g
  %i.fe = shufflevector <2 x float> %.sroa.1036.0, <2 x float> %.sroa.029.0, <2 x i32> <i32 1, i32 2>
  %i.ff = fmul nsz <2 x float> %i.fe, %.sroa.1036.0
  %i.fg = fsub nsz double %i.eg, %i.ei
  %i.fh = fsub nsz double %i.fg, %i.ek
  %i.fi = fadd nsz double %i.fh, %i.ee
  %i.fj = shufflevector <2 x float> %.sroa.029.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fk = shufflevector <2 x float> %.sroa.029.0, <2 x float> %.sroa.1036.0, <2 x i32> <i32 0, i32 2>
  %i.fl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fk, <2 x float> %i.ff)
  %i.fm = fpext <2 x float> %i.fl to <2 x double>
  %i.fn = fmul nsz <2 x double> %i.fm, splat (double 2.000000e+00) ; 2 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0
  %i.fp = tail call nsz double @llvm.atan2.f64(double %i.fo, double %i.fi)
  %i.fq = fadd nsz double %i.eg, %i.ei
  %i.fr = fsub nsz double %i.ek, %i.fq
  %i.fs = fadd nsz double %i.fr, %i.ee
  %i.ft = extractelement <2 x double> %i.fn, i64 1
  %i.fu = tail call nsz double @llvm.atan2.f64(double %i.ft, double %i.fs)
  %i.fv = fcmp nsz olt double %i.ep, -1.000000e+00
  %i.fw = select i1 %i.fv, double -1.000000e+00, double %i.ep ; 2 uses
  %i.fx = fcmp nsz olt double %i.fw, 1.000000e+00
  %i.fy = select i1 %i.fx, double %i.fw, double 1.000000e+00
  %i.fz = tail call nsz double @llvm.asin.f64(double %i.fy)
  %i.ga = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1
  %i.gc = fptrunc <2 x double> %i.gb to <2 x float>
  %i.gd = fmul nsz <2 x float> %i.gc, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.10.0.in = phi double [ %i.fp, %bb.i ], [ %i.fd, %bb.h ], [ %i.ew, %bb.f ]
  %i.ge = phi <2 x float> [ %i.gd, %bb.i ], [ <float 0.000000e+00, float -9.000000e+01>, %bb.h ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.f ]
  %.sroa.10.0 = fptrunc double %.sroa.10.0.in to float
  %i.gf = fmul nsz float %.sroa.10.0, f0x42652EE0
  %.fca.0.insert.i25 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ge, 0
  %.fca.1.insert.i26 = insertvalue { <2 x float>, float } %.fca.0.insert.i25, float %i.gf, 1
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !994
  %.not = icmp ugt i64 %i.b, 20
end_hunk_0
begin_hunk_1_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_:bb.a

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #35
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !812

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1018
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !812

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !133
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !837
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !836  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !133
  store ptr %i.o, ptr %.02530, align 8, !tbaa !19
  store ptr %.02530, ptr %i.g, align 8, !tbaa !133
  store ptr %i.g, ptr %i.m, align 8, !tbaa !836
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !19
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !836
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !19
  store ptr %i.r, ptr %.02530, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !836
  store ptr %.02530, ptr %i.s, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1019

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !118
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !118
  store ptr %.0.i, ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_content_cao.cpp() #31 section ".text.startup" {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 48), ptr @_ZN18ClientActiveObject7m_typesE, align 8, !tbaa !22
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 8), align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 32), align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18ClientActiveObject7m_typesE, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapItPFSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEP6ClientP17ClientEnvironmentESt4hashItESt8equal_toItESaISt4pairIKtSA_EEED2Ev, ptr nonnull @_ZN18ClientActiveObject7m_typesE, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @_ZN10GenericCAOC2EP6ClientP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(1076) @_ZL16proto_GenericCAO, ptr noundef null, ptr noundef null)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10GenericCAOD2Ev, ptr nonnull @_ZL16proto_GenericCAO, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH11errorstream() #5

declare extern_weak void @_ZTH13warningstream() #5

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sin.v2f32(<2 x float>) #19

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind }
attributes #29 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !16, i64 16}
!10 = !{!"_ZTSSt10_HashtableItSt4pairIKtPFSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEP6ClientP17ClientEnvironmentEESaISD_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!11 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !7, i64 0}
!19 = !{!15, !16, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!10, !11, i64 0}
!23 = !{!10, !14, i64 8}
!24 = !{!25, !18, i64 16}
!25 = !{!"_ZTS16SmoothTranslatorIfE", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !26, i64 20}
!26 = !{!"bool", !7, i64 0}
!27 = !{!25, !18, i64 8}
!28 = !{!25, !18, i64 0}
!29 = !{!25, !18, i64 12}
!30 = !{!25, !26, i64 20}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!18, !18, i64 0}
!34 = !{!35, !18, i64 40}
!35 = !{!"_ZTS16SmoothTranslatorIN4core8vector3dIfEEE", !36, i64 0, !36, i64 12, !36, i64 24, !18, i64 36, !18, i64 40, !26, i64 44}
!36 = !{!"_ZTSN4core8vector3dIfEE", !18, i64 0, !18, i64 4, !18, i64 8}
!37 = !{!35, !18, i64 24}
!38 = !{!35, !18, i64 0}
!39 = !{!35, !18, i64 36}
!40 = !{!35, !26, i64 44}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !8, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!45 = !{!"p1 omnipotent char", !13, i64 0}
!46 = !{!47, !14, i64 8}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0, !14, i64 8, !7, i64 16}
!48 = !{!7, !7, i64 0}
!49 = !{!50, !26, i64 64}
!50 = !{!"_ZTS10GenericCAO", !51, i64 0, !47, i64 32, !26, i64 64, !26, i64 65, !56, i64 72, !82, i64 424, !54, i64 432, !67, i64 440, !83, i64 464, !84, i64 472, !85, i64 480, !86, i64 488, !87, i64 496, !88, i64 504, !89, i64 512, !26, i64 520, !69, i64 524, !26, i64 528, !90, i64 536, !95, i64 560, !36, i64 564, !36, i64 576, !36, i64 588, !36, i64 600, !53, i64 612, !35, i64 616, !96, i64 664, !97, i64 712, !74, i64 720, !26, i64 724, !26, i64 725, !26, i64 726, !97, i64 728, !18, i64 736, !18, i64 740, !6, i64 744, !6, i64 748, !18, i64 752, !18, i64 756, !98, i64 760, !53, i64 816, !100, i64 824, !47, i64 880, !36, i64 912, !36, i64 924, !26, i64 936, !26, i64 937, !102, i64 944, !18, i64 1000, !47, i64 1008, !47, i64 1040, !18, i64 1072}
!51 = !{!"_ZTS18ClientActiveObject", !52, i64 0, !54, i64 16, !55, i64 24}
!52 = !{!"_ZTS12ActiveObject", !53, i64 8}
!53 = !{!"short", !7, i64 0}
!54 = !{!"p1 _ZTS6Client", !13, i64 0}
!55 = !{!"p1 _ZTS17ClientEnvironment", !13, i64 0}
!56 = !{!"_ZTS16ObjectProperties", !57, i64 0, !62, i64 24, !67, i64 48, !67, i64 72, !68, i64 96, !47, i64 104, !47, i64 136, !47, i64 168, !47, i64 200, !47, i64 232, !36, i64 264, !69, i64 276, !70, i64 280, !74, i64 288, !74, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !18, i64 316, !75, i64 320, !79, i64 328, !53, i64 332, !53, i64 334, !7, i64 336, !80, i64 337, !26, i64 338, !26, i64 339, !26, i64 340, !26, i64 341, !26, i64 342, !26, i64 343, !26, i64 344, !26, i64 345, !26, i64 346, !26, i64 347, !26, i64 348, !26, i64 349, !81, i64 350}
!57 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!62 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN5video6SColorE", !13, i64 0}
!67 = !{!"_ZTSN4core8aabbox3dIfEE", !36, i64 0, !36, i64 12}
!68 = !{!"_ZTS12ObjectVisual", !7, i64 0}
!69 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!70 = !{!"_ZTSSt8optionalIN5video6SColorEE", !71, i64 0}
!71 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !72, i64 0}
!72 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !73, i64 0}
!73 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !7, i64 0, !26, i64 4}
!74 = !{!"_ZTSN4core8vector2dIsEE", !53, i64 0, !53, i64 2}
!75 = !{!"_ZTSSt8optionalIjE", !76, i64 0}
!76 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !77, i64 0}
!77 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !78, i64 0}
!78 = !{!"_ZTSSt22_Optional_payload_baseIjE", !7, i64 0, !26, i64 4}
!79 = !{!"_ZTS7MapNode", !53, i64 0, !7, i64 2, !7, i64 3}
!80 = !{!"_ZTS16PointabilityType", !7, i64 0}
!81 = !{!"_ZTS10StepUpMode", !7, i64 0}
!82 = !{!"p1 _ZTSN5scene13ISceneManagerE", !13, i64 0}
!83 = !{!"p1 _ZTSN5scene14IMeshSceneNodeE", !13, i64 0}
!84 = !{!"p1 _ZTSN5scene21AnimatedMeshSceneNodeE", !13, i64 0}
!85 = !{!"p1 _ZTS18WieldMeshSceneNode", !13, i64 0}
!86 = !{!"p1 _ZTSN5scene19IBillboardSceneNodeE", !13, i64 0}
!87 = !{!"p1 _ZTSN5scene29IDummyTransformationSceneNodeE", !13, i64 0}
!88 = !{!"p1 _ZTS7Nametag", !13, i64 0}
!89 = !{!"p1 _ZTS13MinimapMarker", !13, i64 0}
!90 = !{!"_ZTSSt6vectorI17MeshAnimationInfoSaIS0_EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE12_Vector_implE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseI17MeshAnimationInfoSaIS0_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 _ZTS17MeshAnimationInfo", !13, i64 0}
!95 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !7, i64 0}
!96 = !{!"_ZTS26SmoothTranslatorWrappedv3f", !35, i64 0}
!97 = !{!"_ZTSN4core8vector2dIfEE", !18, i64 0, !18, i64 4}
!98 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !99, i64 0}
!99 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!100 = !{!"_ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !101, i64 0}
!101 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!102 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !103, i64 0}
!103 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!104 = !{!50, !26, i64 65}
!105 = !{!69, !6, i64 0}
!106 = !{!50, !26, i64 528}
!107 = !{!50, !95, i64 560}
!108 = !{!50, !53, i64 612}
!109 = !{!50, !26, i64 726}
!110 = !{!50, !6, i64 744}
!111 = !{!50, !6, i64 748}
!112 = !{!99, !11, i64 0}
!113 = !{!99, !14, i64 8}
!114 = !{!17, !18, i64 0}
!115 = !{!101, !11, i64 0}
!116 = !{!101, !14, i64 8}
!117 = !{!103, !11, i64 0}
!118 = !{!103, !14, i64 8}
!119 = !{!50, !18, i64 1000}
!120 = !{!50, !18, i64 1072}
!121 = !{!47, !45, i64 0}
!122 = !{!50, !54, i64 432}
!123 = !{!93, !94, i64 0}
!124 = !{!93, !94, i64 16}
!125 = !{!14, !14, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZSt11make_uniqueI10GenericCAOJRP6ClientRP17ClientEnvironmentEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!128 = distinct !{!128, !"_ZSt11make_uniqueI10GenericCAOJRP6ClientRP17ClientEnvironmentEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!129 = distinct !{null}
!130 = !{!131, !132, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EP18ClientActiveObjectLb0EE", !132, i64 0}
!132 = !{!"p1 _ZTS18ClientActiveObject", !13, i64 0}
!133 = !{!103, !16, i64 16}
!134 = distinct !{!134, !21}
!135 = !{!101, !16, i64 16}
!136 = distinct !{!136, !21}
!137 = !{!99, !16, i64 16}
!138 = distinct !{!138, !21}
!139 = !{!65, !66, i64 0}
!140 = !{!65, !66, i64 16}
!141 = !{!60, !61, i64 0}
!142 = !{!60, !61, i64 8}
!143 = distinct !{!143, !21}
!144 = !{!60, !61, i64 16}
!145 = !{!50, !26, i64 410}
!146 = !{!36, !18, i64 8}
!147 = !{!50, !26, i64 411}
!148 = !{!149, !151, i64 32}
!149 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !150, i64 24, !151, i64 28, !151, i64 32, !152, i64 40, !153, i64 48, !7, i64 64, !6, i64 192, !154, i64 200, !155, i64 208}
!150 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!151 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!152 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!153 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !14, i64 8}
!154 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!155 = !{!"_ZTSSt6locale", !156, i64 0}
end_hunk_1
