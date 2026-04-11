inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporter12ConvertLightERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4LampERNS1_14ConversionDataE:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #27 ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.b, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp15BlenderImporter12ConvertLightERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4LampERNS1_14ConversionDataE:bb.a

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.l, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1076
  %6 = load float, ptr %i.ba, align 4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  %8 = load float, ptr %7, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1084
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1092
  %i.be = load float, ptr %i.bd, align 4          ; 3 uses
  %9 = fmul float %6, %i.be                       ; 3 uses
  %10 = fmul float %8, %i.be                      ; 3 uses
  %i.bf = fmul float %i.bc, %i.be                 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store float %9, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 1108
  store float %10, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store float %i.bf, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1092
  store float %9, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store float %10, ptr %i.bk, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 1100
  store float %i.bf, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store float %9, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 1084
  store float %10, ptr %13, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store float %i.bf, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 1108
end_hunk_1
