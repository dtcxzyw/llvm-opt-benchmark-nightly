inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

bb.ab:                                            ; preds = %.lr.ph802, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.sroa.0575.0801 = phi ptr [ %i.hk, %.lr.ph802 ], [ %.sroa.0575.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 17 uses
  %.sroa.12.0800 = phi ptr [ %i.hk, %.lr.ph802 ], [ %.sroa.12.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 18 uses
  %.sroa.22.0799 = phi ptr [ %i.hl, %.lr.ph802 ], [ %.sroa.22.1, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 5 uses
  %.sroa.0571.0798 = phi ptr [ %.pre882, %.lr.ph802 ], [ %i.pv, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0571.0798, i64 32
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0800, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i216, %.noexc220
  %.0.lcssa.i.i.i.i.i218 = phi ptr [ %i.iz, %.noexc220 ], [ %i.jc, %.lr.ph.i.i.i.i.i216 ]
  %.not.i22.i.i = icmp eq ptr %.sroa.0575.0801, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ag

end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a
  store double %.sroa.7561.0, ptr %.sroa.7565.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0800, i64 16
  store double %.sroa.10562.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.aj:                                            ; preds = %._crit_edge796
end_hunk_3
begin_hunk_4_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i226, %.noexc232
  %.0.lcssa.i.i.i.i.i230 = phi ptr [ %i.lm, %.noexc232 ], [ %i.lp, %.lr.ph.i.i.i.i.i226 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0575.0801, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.al

end_hunk_4
begin_hunk_5_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.ai, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ad
  %.sroa.22.1 = phi ptr [ %.sroa.22.0799, %bb.ad ], [ %i.jd, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.lq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.22.0799, %bb.ai ] ; 2 uses
  %.sroa.12.1.a = phi ptr [ %.sroa.12.0800, %bb.ad ], [ %.0.lcssa.i.i.i.i.i218, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.0.lcssa.i.i.i.i.i230, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12.0800, %bb.ai ]
  %.sroa.0575.1 = phi ptr [ %.sroa.0575.0801, %bb.ad ], [ %i.iz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.lm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0575.0801, %bb.ai ] ; 2 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.sroa.12.1.a, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0571.0798, i64 88 ; 2 uses
  %.not670 = icmp eq ptr %i.pv, %.pre883
  br i1 %.not670, label %.thread654, label %bb.ab
end_hunk_5
begin_hunk_6_@_ZN6Assimp3IFC17TryQueryMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE:bb.a
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i, %bb.b
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.b ], [ %.013.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i ] ; 6 uses
  %.pn.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.pn.i.i.i
  %.1.i.i.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !232
end_hunk_6
begin_hunk_7_@_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE:bb.a
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i, %bb.b
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.b ], [ %.013.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %.pn.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.pn.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.m, align 8       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !232
end_hunk_7
begin_hunk_8_@_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE:bb.a
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i, %bb.e
  %.19.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.013.i.i.i.i.i, %bb.e ], [ %.013.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i ] ; 9 uses
  %.pn.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.e ], [ 16, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 %.pn.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.x, align 8     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !232
end_hunk_8
