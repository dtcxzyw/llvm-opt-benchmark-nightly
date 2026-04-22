inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0
@_ZTVN5glTF29AnimationE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5glTF29AnimationE, ptr @_ZNK5glTF26Object9IsSpecialEv, ptr @_ZN5glTF29AnimationD2Ev, ptr @_ZN5glTF29AnimationD0Ev] }, comdat, align 8
@_ZTIN5glTF29AnimationE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5glTF29AnimationE, ptr @_ZTIN5glTF26ObjectE }, comdat, align 8
@_ZTSN5glTF29AnimationE = linkonce_odr hidden constant [19 x i8] c"N5glTF29AnimationE\00", comdat, align 1
@switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 poison, i32 4, i32 4], align 4

@_ZN6Assimp13glTF2ExporterC1EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN6Assimp13glTF2ExporterC2EPKcPNS_8IOSystemEPK7aiScenePKNS_16ExportPropertiesEb
@_ZN6Assimp13glTF2ExporterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp13glTF2ExporterD2Ev
end_hunk_0
begin_hunk_1_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a

switch.lookup:                                    ; preds = %bb.av
  %i.ma = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb, i64 %i.ma
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.mb = shl i64 %i.lo, 1
  %i.mc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %switch.load, i1 true)
end_hunk_1
begin_hunk_2_@_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.t = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb, i64 %i.t
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_2
begin_hunk_3_@_Z16ExportDataSparseRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetESE_:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb, i64 %i.v
  %switch.load = load i32, ptr %switch.gep, align 4 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
end_hunk_3
begin_hunk_4_@_ZN5glTF28Accessor9WriteDataEmPKvm:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb, i64 %i.an
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ao = mul i32 %switch.load, %i.q
  %i.ap = zext i32 %i.ao to i64                   ; 14 uses
end_hunk_4
begin_hunk_5_@_ZN5glTF28Accessor17WriteSparseValuesEmPKvm:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 296
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb, i64 %i.ap
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.aq = mul i32 %switch.load, %i.s
  %i.ar = zext i32 %i.aq to i64                   ; 14 uses
end_hunk_5
