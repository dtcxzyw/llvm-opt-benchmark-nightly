inline.NumInlined: 1182
inline.NumDeleted: 406
begin_hunk_0_@_ZN6Assimp4Ogre12OgreImporter13ReadMaterialsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEP7aiScenePNS0_4MeshE:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %.sroa.0.2.lcssa121 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.11.2.lcssa = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.17.2.lcssa = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre12OgreImporter13ReadMaterialsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEP7aiScenePNS0_4MeshE:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i, %.noexc
  %.012.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %.noexc ] ; 3 uses
  %i.l = shl nuw nsw i64 %.012.i, 3
  %scevgep121 = getelementptr i8, ptr %.sroa.0.2.lcssa121, i64 %i.l
  %i.m = load ptr, ptr %scevgep121, align 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = shl nuw nsw i64 %.012.i, 3
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre12OgreImporter13ReadMaterialsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEP7aiScenePNS0_7MeshXmlE:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %.sroa.0.2.lcssa121 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.11.2.lcssa = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ]
  %.sroa.17.2.lcssa = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre12OgreImporter13ReadMaterialsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEP7aiScenePNS0_7MeshXmlE:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i, %.noexc
  %.012.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %.noexc ] ; 3 uses
  %i.l = shl nuw nsw i64 %.012.i, 3
  %scevgep121 = getelementptr i8, ptr %.sroa.0.2.lcssa121, i64 %i.l
  %i.m = load ptr, ptr %scevgep121, align 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = shl nuw nsw i64 %.012.i, 3
end_hunk_3
begin_hunk_4_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %lsr.iv192.lcssa = phi ptr [ %lsr.iv192, %bb.j ]
  %.lcssa185 = phi i64 [ %i.ac, %bb.j ]           ; 2 uses
  %.lcssa182 = phi ptr [ %lsr.iv, %bb.j ]         ; 3 uses
  store ptr %.lcssa182, ptr %i.a, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj:bb.a
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.lr.ph71
  %lsr.iv194 = phi ptr [ %lsr.iv192.lcssa, %.lr.ph71.preheader ], [ %scevgep195, %.lr.ph71 ] ; 3 uses
  store ptr %lsr.iv194, ptr %i.a, align 8
  %i.ag = load i8, ptr %lsr.iv194, align 1
  %i.ah = add i8 %i.ag, -48
end_hunk_5
