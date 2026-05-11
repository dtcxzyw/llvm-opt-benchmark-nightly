inline.NumInlined: 481
inline.NumDeleted: 273
begin_hunk_0_@_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !noalias !8 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !8
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !8
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE:bb.a
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !8 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !11

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !8
  br label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !8
  %.fr.i.i.i = freeze i32 %i.l
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.m = load ptr, ptr %i.b, align 8, !noalias !8
  br i1 %.not.i.i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i, label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.a
  br label %_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit

_ZNKSt8weak_ptrIN6Assimp7Blender6ObjectEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i
  %7 = phi ptr [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.thread.i.i.i ], [ %i.m, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ] ; 4 uses
  store ptr %7, ptr %6, align 8, !alias.scope !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE:bb.a
.lr.ph175:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 106 ; 2 uses
  %.not138 = icmp eq ptr %7, null
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 1116
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 1124
  br label %bb.j

._crit_edge176:                                   ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
end_hunk_2
begin_hunk_3_@_ZN6Assimp7Blender22BlenderModifier_Mirror4DoItER6aiNodeRNS0_14ConversionDataERKNS0_8ElemBaseERKNS0_5SceneERKNS0_6ObjectE:bb.a
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %8 = load ptr, ptr %i.c, align 8                ; 8 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp7Blender6ObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

end_hunk_3
