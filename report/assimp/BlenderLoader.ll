inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 28 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4
  %.not455 = icmp eq i32 %i.pe, 0                 ; 2 uses
  %i.pf = select i1 %.not455, i32 3, i32 4
  store i32 %i.pf, ptr %i.pc, align 8
  %22 = select i1 %.not455, i64 12, i64 16
  %i.pg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %22) #26
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
end_hunk_0
