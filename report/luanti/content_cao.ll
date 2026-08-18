inline.NumInlined: 3123
inline.NumDeleted: 1535
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZNSt17_Function_handlerIFvfEZN10GenericCAO10addToSceneEP14ITextureSourcePN5scene13ISceneManagerEE3$_0E9_M_invokeERKSt9_Any_dataOf":bb.a
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i, i64 24 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !48
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSB_10_Hash_nodeIS9_Lb1EEEm.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.07.i.i.i, i64 noundef 168) #35
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !994
  %i.cj = add i64 %i.ci, -1
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !994
  br label %bb.u, !llvm.loop !995

_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i: ; preds = %_ZNK12BoneOverride10isIdentityEv.exit.i.i.i, %bb.h, %bb.g, %bb.f, %_ZNK4core10quaternioneqERKS0_.exit.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !292
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.cm = call noundef ptr @_ZN5scene21AnimatedMeshSceneNode12getJointNodeEPKc(ptr noundef nonnull align 8 dereferenceable(432) %i.ck, ptr noundef %i.cl) ; 13 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK12BoneOverride10isIdentityEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 216
  %i.cp = load ptr, ptr %i.co, align 8
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
  %.0 = select nsz i1 %or.cond, float 1.000000e+00, float %i.f ; 7 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.211.0.copyload = load <2 x float>, ptr %.sroa.211.0..sroa_idx, align 4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 4 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.29.0.copyload = load <2 x float>, ptr %.sroa.29.0..sroa_idx, align 4 ; 3 uses
  %.sroa.047.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %.sroa.036.0.vec.extract.i.a = extractelement <2 x float> %.sroa.08.0.copyload, i64 0 ; 2 uses
  %.sroa.036.4.vec.extract.i = extractelement <2 x float> %.sroa.08.0.copyload, i64 1
  %foldExtExtBinop = fmul nsz <2 x float> %.sroa.010.0.copyload, %.sroa.08.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %.sroa.047.0.vec.extract.i, float %.sroa.036.0.vec.extract.i.a, float %i.j)
  %.sroa.10.8.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 0 ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i, float %.sroa.6.8.vec.extract.i, float %i.k)
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %.sroa.211.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.29.0.copyload, i64 1 ; 2 uses
  %i.m = tail call nsz noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i, float %.sroa.6.12.vec.extract.i, float %i.l) ; 3 uses
  %i.n = fcmp nsz olt float %i.m, 0.000000e+00    ; 3 uses
  %i.o = fneg nsz <2 x float> %.sroa.010.0.copyload
  %i.p = fneg nsz <2 x float> %.sroa.211.0.copyload
  %i.q = fneg nsz float %i.m
  %.sroa.047.0.i = select nsz i1 %i.n, <2 x float> %i.o, <2 x float> %.sroa.010.0.copyload ; 3 uses
  %.sroa.10.0.i = select nsz i1 %i.n, <2 x float> %i.p, <2 x float> %.sroa.211.0.copyload ; 3 uses
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
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = fmul nsz <2 x float> %.sroa.08.0.copyload, %i.ag
  %i.ai = fadd nsz <2 x float> %i.ae, %i.ah
  %i.aj = fmul nsz <2 x float> %.sroa.10.0.i, %i.ad
  %i.ak = fmul nsz <2 x float> %.sroa.29.0.copyload, %i.ag
  %i.al = fadd nsz <2 x float> %i.aj, %i.ak
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.am = fsub nsz float 1.000000e+00, %.0        ; 4 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 0
  %3 = fmul nsz float %i.am, %.sroa.024.0.vec.extract.i.i
  %.sroa.024.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.i, i64 1
  %4 = fmul nsz float %i.am, %.sroa.024.4.vec.extract.i.i
  %.sroa.325.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 0
  %5 = fmul nsz float %i.am, %.sroa.325.8.vec.extract.i.i
  %.sroa.325.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.i, i64 1
  %6 = fmul nsz float %i.am, %.sroa.325.12.vec.extract.i.i
  %7 = fmul nsz float %.sroa.036.0.vec.extract.i.a, %.0
  %8 = fmul nsz float %.sroa.036.4.vec.extract.i, %.0
  %9 = fmul nsz float %.0, %.sroa.6.8.vec.extract.i
  %10 = fmul nsz float %.0, %.sroa.6.12.vec.extract.i
  %11 = fadd nsz float %7, %3                     ; 3 uses
  %12 = fadd nsz float %8, %4                     ; 3 uses
  %13 = fadd nsz float %9, %5                     ; 3 uses
  %14 = fadd nsz float %10, %6                    ; 3 uses
  %15 = fmul nsz float %12, %12
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %11, float %11, float %15)
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %13, float %13, float %i.an)
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %14, float %14, float %i.ao)
  %i.aq = fpext nsz float %i.ap to double
  %i.ar = tail call nsz double @llvm.sqrt.f64(double %i.aq)
  %i.as = fdiv nsz double 1.000000e+00, %i.ar
  %i.at = fptrunc nsz double %i.as to float       ; 4 uses
  %16 = fmul nsz float %11, %i.at
  %17 = insertelement <2 x float> poison, float %16, i64 0
  %18 = fmul nsz float %12, %i.at
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %17, float %18, i64 1
  %19 = fmul nsz float %13, %i.at
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = fmul nsz float %14, %i.at
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %20, float %21, i64 1
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.c ], [ %i.ai, %bb.b ] ; 6 uses
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %.sroa.8.12.vec.insert.i.i, %bb.c ], [ %i.al, %bb.b ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.av = load i8, ptr %i.au, align 4, !tbaa !1003, !range !31, !noundef !32
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %i.ax = fmul nsz float %2, f0x3C8EFA35
  %i.ay = fmul nsz <2 x float> %1, splat (float f0x3C8EFA35)
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fmul nsz <2 x double> %i.az, splat (double 5.000000e-01)
  %i.bb = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ba) ; 2 uses
  %i.bc = extractvalue { <2 x double>, <2 x double> } %i.bb, 0 ; 5 uses
  %i.bd = extractvalue { <2 x double>, <2 x double> } %i.bb, 1 ; 5 uses
  %i.be = fpext nsz float %i.ax to double
  %i.bf = fmul nsz double %i.be, 5.000000e-01
  %sincos37.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bf) ; 2 uses
  %sin38.i.i = extractvalue { double, double } %sincos37.i.i, 0
  %cos39.i.i = extractvalue { double, double } %sincos37.i.i, 1
  %.sroa.1036.12.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 1 ; 4 uses
  %i.bg = shufflevector <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.029.0.vec.extract = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 0 ; 2 uses
  %i.bh = fneg nsz float %.sroa.029.0.vec.extract
  %.sroa.1036.8.vec.extract = extractelement <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, i64 0 ; 3 uses
  %i.bi = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bj = insertelement <2 x double> poison, double %cos39.i.i, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul nsz <2 x double> %i.bi, %i.bk      ; 3 uses
  %i.bm = shufflevector <2 x double> %i.bd, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bn = insertelement <2 x double> poison, double %sin38.i.i, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul nsz <2 x double> %i.bm, %i.bo      ; 3 uses
  %i.bq = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul nsz <2 x double> %i.bq, %i.bp
  %i.bs = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bl, <2 x double> %i.br)
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float> ; 4 uses
  %foldExtExtBinop46.a = fmul nsz <2 x float> %i.bu, %i.bu
  %i.bv = extractelement <2 x float> %foldExtExtBinop46.a, i64 0
  %i.bw = shufflevector <2 x double> %i.bp, <2 x double> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.bx = fneg nsz <2 x double> %i.bw
  %i.by = shufflevector <2 x double> %i.bd, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bz = fmul nsz <2 x double> %i.by, %i.bx
  %i.ca = shufflevector <2 x double> %i.bc, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <2 x double> %i.bl, <2 x double> %i.bp, <2 x i32> <i32 1, i32 2>
  %i.cc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.bz) ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  %i.ce = fptrunc nsz double %i.cd to float       ; 3 uses
  %i.cf = extractelement <2 x double> %i.cc, i64 0
  %i.cg = fptrunc nsz double %i.cf to float       ; 3 uses
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.bv)
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ch)
  %i.cj = extractelement <2 x float> %i.bu, i64 1 ; 2 uses
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = fpext nsz float %i.ck to double
  %i.cm = tail call nsz double @llvm.sqrt.f64(double %i.cl)
  %i.cn = fdiv nsz double 1.000000e+00, %i.cm
  %i.co = fptrunc nsz double %i.cn to float       ; 3 uses
  %i.cp = fmul nsz float %i.ce, %i.co             ; 3 uses
  %i.cq = fmul nsz float %i.cg, %i.co             ; 4 uses
  %i.cr = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul nsz <2 x float> %i.cs, %i.bu       ; 4 uses
  %i.cu = fmul nsz float %i.cq, %i.bh
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = fneg nsz float %i.cv                    ; 2 uses
  %i.cx = fneg nsz float %i.cp                    ; 2 uses
  %i.cy = fmul nsz float %i.cq, %.sroa.1036.12.vec.extract
  %i.cz = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %.sroa.1036.12.vec.extract, float %i.cu)
  %i.db = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x float> %i.db, float %i.cw, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.da, i64 1
  %i.df = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x float> %i.de) ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 1
  %i.dh = tail call nsz float @llvm.fmuladd.f32(float %i.cx, float %.sroa.1036.8.vec.extract, float %i.dg)
  %i.di = fmul nsz float %i.cv, %.sroa.1036.12.vec.extract
  %i.dj = shufflevector <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, <2 x i32> <i32 0, i32 3>
  %i.dk = insertelement <2 x float> %i.df, float %i.di, i64 1
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.dj, <2 x float> %i.dk)
  %i.dm = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cp, i64 1
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.bg, <2 x float> %i.dl) ; 2 uses
  %i.dp = fneg nsz float %i.cq
  %i.dq = extractelement <2 x float> %i.do, i64 1
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.dp, float %.sroa.1036.8.vec.extract, float %i.dq)
  %.sroa.0.4.vec.insert.i20 = insertelement <2 x float> %i.do, float %i.dr, i64 1
  %i.ds = fmul nsz float %i.cp, %.sroa.1036.12.vec.extract
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %.sroa.1036.8.vec.extract, float %i.ds)
  %i.du = extractelement <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, i64 1
  %i.dv = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.du, float %i.dt)
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %.sroa.029.0.vec.extract, float %i.dv)
  %i.dx = insertelement <2 x float> poison, float %i.dw, i64 0
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> %i.dx, float %i.dh, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4core10quaternion5slerpES0_S0_ff.exit
  %.sroa.029.0 = phi nsz <2 x float> [ %.sroa.0.4.vec.insert.i29.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.0.4.vec.insert.i20, %bb.d ] ; 7 uses
  %.sroa.1036.0 = phi nsz <2 x float> [ %.sroa.3.12.vec.insert.i31.sink.i, %_ZN4core10quaternion5slerpES0_S0_ff.exit ], [ %.sroa.5.8.vec.insert.i, %bb.d ] ; 7 uses
  %.sroa.1036.12.vec.extract42 = extractelement <2 x float> %.sroa.1036.0, i64 1 ; 5 uses
  %i.dy = fmul nsz float %.sroa.1036.12.vec.extract42, %.sroa.1036.12.vec.extract42
  %i.dz = fpext nsz float %i.dy to double         ; 2 uses
  %.sroa.029.0.vec.extract32 = extractelement <2 x float> %.sroa.029.0, i64 0 ; 3 uses
  %foldExtExtBinop48 = fmul nsz <2 x float> %.sroa.029.0, %.sroa.029.0
  %i.ea = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %i.eb = fpext nsz float %i.ea to double         ; 2 uses
  %.sroa.029.4.vec.extract35 = extractelement <2 x float> %.sroa.029.0, i64 1 ; 3 uses
  %i.ec = fmul nsz float %.sroa.029.4.vec.extract35, %.sroa.029.4.vec.extract35
  %i.ed = fpext nsz float %i.ec to double         ; 2 uses
  %.sroa.1036.8.vec.extract39 = extractelement <2 x float> %.sroa.1036.0, i64 0
  %foldExtExtBinop50 = fmul nsz <2 x float> %.sroa.1036.0, %.sroa.1036.0
  %i.ee = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.ef = fpext nsz float %i.ee to double         ; 2 uses
  %i.eg = fneg nsz float %.sroa.1036.8.vec.extract39
  %i.eh = fmul nsz float %.sroa.029.0.vec.extract32, %i.eg
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %.sroa.029.4.vec.extract35, float %.sroa.1036.12.vec.extract42, float %i.eh)
  %i.ej = fpext nsz float %i.ei to double
  %i.ek = fmul nsz double %i.ej, 2.000000e+00     ; 4 uses
  %i.el = fadd nsz double %i.ek, -1.000000e+00
  %i.em = tail call nsz noundef double @llvm.fabs.f64(double %i.el)
  %i.en = fcmp nsz ugt double %i.em, f0x3EB0C6F7A0B5ED8D
  br i1 %i.en, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eo = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.ep = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.eq = tail call nsz double @llvm.atan2.f64(double %i.eo, double %i.ep)
  %i.er = fmul nsz double %i.eq, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.g:                                             ; preds = %bb.e
  %i.es = fadd nsz double %i.ek, 1.000000e+00
  %i.et = tail call nsz noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp nsz ugt double %i.et, f0x3EB0C6F7A0B5ED8D
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ev = fpext nsz float %.sroa.029.0.vec.extract32 to double
  %i.ew = fpext nsz float %.sroa.1036.12.vec.extract42 to double
  %i.ex = tail call nsz double @llvm.atan2.f64(double %i.ev, double %i.ew)
  %i.ey = fmul nsz double %i.ex, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ez = shufflevector <2 x float> %.sroa.1036.0, <2 x float> %.sroa.029.0, <2 x i32> <i32 1, i32 2>
  %i.fa = fmul nsz <2 x float> %i.ez, %.sroa.1036.0
  %i.fb = fsub nsz double %i.eb, %i.ed
  %i.fc = fsub nsz double %i.fb, %i.ef
  %i.fd = fadd nsz double %i.fc, %i.dz
  %i.fe = shufflevector <2 x float> %.sroa.029.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = shufflevector <2 x float> %.sroa.029.0, <2 x float> %.sroa.1036.0, <2 x i32> <i32 0, i32 2>
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fa)
  %i.fh = fpext <2 x float> %i.fg to <2 x double>
  %i.fi = fmul nsz <2 x double> %i.fh, splat (double 2.000000e+00) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  %i.fk = tail call nsz double @llvm.atan2.f64(double %i.fj, double %i.fd)
  %i.fl = fadd nsz double %i.eb, %i.ed
  %i.fm = fsub nsz double %i.ef, %i.fl
  %i.fn = fadd nsz double %i.fm, %i.dz
  %i.fo = extractelement <2 x double> %i.fi, i64 1
  %i.fp = tail call nsz double @llvm.atan2.f64(double %i.fo, double %i.fn)
  %i.fq = fcmp nsz olt double %i.ek, -1.000000e+00
  %i.fr = select i1 %i.fq, double -1.000000e+00, double %i.ek ; 2 uses
  %i.fs = fcmp nsz olt double %i.fr, 1.000000e+00
  %i.ft = select i1 %i.fs, double %i.fr, double 1.000000e+00
  %i.fu = tail call nsz double @llvm.asin.f64(double %i.ft)
  %i.fv = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1
  %i.fx = fptrunc <2 x double> %i.fw to <2 x float>
  %i.fy = fmul nsz <2 x float> %i.fx, splat (float f0x42652EE0)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.10.0.in = phi double [ %i.fk, %bb.i ], [ %i.ey, %bb.h ], [ %i.er, %bb.f ]
  %i.fz = phi <2 x float> [ %i.fy, %bb.i ], [ <float 0.000000e+00, float -9.000000e+01>, %bb.h ], [ <float 0.000000e+00, float 9.000000e+01>, %bb.f ]
  %.sroa.10.0 = fptrunc double %.sroa.10.0.in to float
  %i.ga = fmul nsz float %.sroa.10.0, f0x42652EE0
  %.fca.0.insert.i25 = insertvalue { <2 x float>, float } poison, <2 x float> %i.fz, 0
  %.fca.1.insert.i26 = insertvalue { <2 x float>, float } %.fca.0.insert.i25, float %i.ga, 1
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
