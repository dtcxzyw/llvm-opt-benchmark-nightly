inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.u = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.i unwind label %bb.o       ; 13 uses

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0171.0177 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0171.1, %bb.h ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

_ZN12aiMatrix4x4tIfEixEj.exit.3.3:                ; preds = %bb.x, %bb.v, %bb.al, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ab, %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit122, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit118, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit114, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit110, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit106, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit, %bb.t, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.fm = getelementptr inbounds nuw i8, ptr %i.u, i64 1028
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.fo = getelementptr inbounds nuw i8, ptr %i.u, i64 1060
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1084
end_hunk_1
begin_hunk_2_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1100
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 1108
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 1116
  %i.fu = load <2 x float>, ptr %i.fl, align 4
  %i.fv = load <2 x float>, ptr %i.fp, align 4
  %i.fw = load <2 x float>, ptr %i.fr, align 4
  %i.fx = load <2 x float>, ptr %i.ft, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.ga = shufflevector <8 x float> %i.fy, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 4, i32 5, i32 9, i32 poison>
  %i.gb = shufflevector <2 x float> %i.fx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <8 x float> %i.ga, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 9>
  store <8 x float> %i.gc, ptr %i.fm, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 1124
  %i.ge = load <2 x float>, ptr %i.fn, align 4
  %i.gf = load <2 x float>, ptr %i.fq, align 4
end_hunk_3
begin_hunk_4_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a

bb.bd:                                            ; preds = %_ZN12aiMatrix4x4tIfEixEj.exit.3.3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.gn, i64 64, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %i.u, i64 1028 ; 2 uses
  %i.go = load <4 x float>, ptr %8, align 16
  %.sroa.7133.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gp = load <4 x float>, ptr %.sroa.7133.0..sroa_idx134, align 4
end_hunk_4
begin_hunk_5_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 1044 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 1060 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 1076 ; 2 uses
  %i.he = load <4 x float>, ptr %10, align 4      ; 4 uses
  %i.hf = load <4 x float>, ptr %i.hb, align 4    ; 4 uses
  %i.hg = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fmul <4 x float> %i.hg, %i.hf
end_hunk_5
begin_hunk_6_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.hn = load <4 x float>, ptr %i.hd, align 4    ; 4 uses
  %i.ho = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> %i.ho, <4 x float> %i.hm)
  store <4 x float> %i.hp, ptr %10, align 4
  %i.hq = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fmul <4 x float> %i.hq, %i.hf
  %i.hs = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_6
