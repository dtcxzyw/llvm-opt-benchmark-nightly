inline.NumInlined: 5894
inline.NumDeleted: 2006
begin_hunk_0
@_ZTVN6Assimp12BaseImporterE = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.256 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@switch.table._ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4], align 4
@switch.table._ZNK6Assimp12glTFImporter12ImportLightsERN4glTF5AssetE = private unnamed_addr constant [4 x i32] [i32 4, i32 1, i32 2, i32 3], align 4
@switch.table._ZN9rapidjson16GetParseError_EnENS_14ParseErrorCodeE = private unnamed_addr constant [18 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167], align 8
@switch.table._ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 poison, i32 4, i32 4], align 4

@_ZN6Assimp12glTFImporterC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp12glTFImporterC2Ev

end_hunk_0
begin_hunk_1_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load i32, ptr %i.un, align 8
  %i.up = zext nneg i32 %switch.tableidx to i64
  %switch.gep1738 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE, i64 %i.up
  %switch.load1739 = load i32, ptr %switch.gep1738, align 4
  %i.uq = mul i32 %switch.load1739, %i.uo         ; 2 uses
  %i.ur = zext i32 %i.uq to i64                   ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load i32, ptr %i.aad, align 8, !noalias !30
  %i.aaf = zext nneg i32 %switch.tableidx1740 to i64
  %switch.gep1746 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE, i64 %i.aaf
  %switch.load1747 = load i32, ptr %switch.gep1746, align 4
  %i.aag = mul i32 %switch.load1747, %i.aae
  %i.aah = zext i32 %i.aag to i64                 ; 18 uses
end_hunk_2
begin_hunk_3_@_ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE, i64 %i.v
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

end_hunk_3
