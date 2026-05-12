inline.NumInlined: 1263
inline.NumDeleted: 528
begin_hunk_0_@_ZNSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE17_M_default_appendEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp11ObjExporter10vertexDataESaIS2_EE17_M_default_appendEm:bb.a
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11ObjExporter10vertexDataES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.al = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10vertexDataESaIS2_EE13_M_deallocateEPS2_m.exit46

end_hunk_1
begin_hunk_2_@_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.z = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE17_M_default_appendEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE17_M_default_appendEm:bb.a
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11ObjExporter10FaceVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %2 = load ptr, ptr %i.h, align 8
  %3 = ptrtoint ptr %2 to i64
  %i.z = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #24
  br label %_ZNSt12_Vector_baseIN6Assimp11ObjExporter10FaceVertexESaIS2_EE13_M_deallocateEPS2_m.exit37

end_hunk_5
