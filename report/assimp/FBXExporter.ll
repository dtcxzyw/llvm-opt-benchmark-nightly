inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
._crit_edge.i.i2519:                              ; preds = %._crit_edge.i.i2519.loopexit, %bb.uh
  %i.dto = phi i32 [ %i.dtk, %bb.uh ], [ %.pre15481.a, %._crit_edge.i.i2519.loopexit ]
  %.sroa.48.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.48.2, %._crit_edge.i.i2519.loopexit ] ; 4 uses
  %.sroa.215503.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.215503.1, %._crit_edge.i.i2519.loopexit ] ; 2 uses
  %.sroa.05492.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.05492.2, %._crit_edge.i.i2519.loopexit ] ; 9 uses
  %.sroa.28.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.28.6, %._crit_edge.i.i2519.loopexit ] ; 4 uses
  %.sroa.145532.0.lcssa = phi ptr [ null, %bb.uh ], [ %.sroa.145532.3, %._crit_edge.i.i2519.loopexit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %.sroa.145532.013863 = phi ptr [ null, %.lr.ph13867 ], [ %.sroa.145532.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 6 uses
  %.sroa.28.013862 = phi ptr [ null, %.lr.ph13867 ], [ %.sroa.28.6, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 4 uses
  %.sroa.05492.013861 = phi ptr [ null, %.lr.ph13867 ], [ %.sroa.05492.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 16 uses
  %.sroa.215503.013860 = phi ptr [ null, %.lr.ph13867 ], [ %.sroa.215503.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 12 uses
  %.sroa.48.013859 = phi ptr [ null, %.lr.ph13867 ], [ %.sroa.48.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606 ] ; 6 uses
  %i.due = load ptr, ptr %i.dtl, align 8
  %i.duf = getelementptr inbounds nuw [4 x i8], ptr %i.djk, i64 %i.dud ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a

bb.vp:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2595
  store float %i.dyd, ptr %.sroa.215503.3, align 4
  %257 = getelementptr inbounds nuw i8, ptr %.sroa.215503.3, i64 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606

bb.vq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2595
end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2601

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i2601: ; preds = %bb.vs, %.noexc2605
  %258 = getelementptr inbounds nuw i8, ptr %i.dzt, i64 4
  %.not.i17.i.i2602 = icmp eq ptr %.sroa.05492.6, null
  br i1 %.not.i17.i.i2602, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2603, label %bb.vt

end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a

bb.wf:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit2621
  store float 0.000000e+00, ptr %.sroa.215503.6, align 4
  %259 = getelementptr inbounds nuw i8, ptr %.sroa.215503.6, i64 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606

bb.wg:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit2621
end_hunk_4
begin_hunk_5_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i2626

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i2626: ; preds = %bb.wi, %.noexc2630
  %260 = getelementptr inbounds nuw i8, ptr %i.ebl, i64 4
  %.not.i17.i.i.i2627 = icmp eq ptr %.sroa.05492.9, null
  br i1 %.not.i17.i.i.i2627, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i2628, label %bb.wj

end_hunk_5
begin_hunk_6_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a

_ZNSt6vectorIfSaIfEE9push_backERKf.exit2606:      ; preds = %bb.wf, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i2628, %bb.vp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2603
  %.sroa.48.2 = phi ptr [ %.sroa.48.6, %bb.vp ], [ %i.dzv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2603 ], [ %i.ebn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i2628 ], [ %.sroa.48.9, %bb.wf ] ; 2 uses
  %.sroa.215503.1 = phi ptr [ %257, %bb.vp ], [ %258, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2603 ], [ %260, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i2628 ], [ %259, %bb.wf ] ; 2 uses
  %.sroa.05492.2 = phi ptr [ %.sroa.05492.6, %bb.vp ], [ %i.dzs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i2603 ], [ %i.ebk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i2628 ], [ %.sroa.05492.9, %bb.wf ] ; 2 uses
  %i.ebo = add i32 %.064913865, 1                 ; 2 uses
  %i.ebp = zext i32 %i.ebo to i64                 ; 2 uses
  %i.ebq = icmp ugt i64 %i.djr, %i.ebp
end_hunk_6
begin_hunk_7_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
bb.s:                                             ; preds = %.lr.ph2369, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.02402368 = phi i64 [ 0, %.lr.ph2369 ], [ %i.li, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.01381.12367 = phi ptr [ %.sroa.01381.02430, %.lr.ph2369 ], [ %.sroa.01381.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 14 uses
  %.sroa.18.12366 = phi ptr [ %.sroa.18.02429, %.lr.ph2369 ], [ %.sroa.18.2.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 12 uses
  %.sroa.34.12365 = phi ptr [ %.sroa.34.02428, %.lr.ph2369 ], [ %.sroa.34.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.014072364 = phi i32 [ 0, %.lr.ph2369 ], [ %.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
end_hunk_7
begin_hunk_8_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i, %bb.w, %bb.u
  %.sink.i.i.i = phi i64 [ 24, %bb.x ], [ 16, %bb.w ], [ 16, %bb.u ], [ 16, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.x ], [ %.012.i.i.i, %bb.w ], [ %.012.i.i.i, %bb.u ], [ %.012.i.i.i, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i ] ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.hx, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %bb.t, !llvm.loop !708
end_hunk_8
begin_hunk_9_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  %.sroa.34.9 = phi ptr [ %i.ix, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.34.12365, %bb.ad ] ; 3 uses
  %.pn1421 = phi ptr [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.12366, %bb.ad ]
  %.sroa.01381.9 = phi ptr [ %i.iu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.01381.12367, %bb.ad ] ; 3 uses
  %.sroa.18.4 = getelementptr inbounds nuw i8, ptr %.pn1421, i64 4
  %i.iy = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i
end_hunk_9
begin_hunk_10_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i, %bb.al, %bb.aj
  %.sink.i.i.i.i = phi i64 [ 24, %bb.am ], [ 16, %bb.al ], [ 16, %bb.aj ], [ 16, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0811.i.i.i.i, %bb.am ], [ %.012.i.i.i.i, %bb.al ], [ %.012.i.i.i.i, %bb.aj ], [ %.012.i.i.i.i, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i ] ; 12 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.jo, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapI10aiVector3tIfEmSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit.i, label %bb.ai, !llvm.loop !708
end_hunk_10
begin_hunk_11_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

bb.aw:                                            ; preds = %bb.av
  store i32 %i.kt, ptr %.sroa.18.12366, align 4
  %78 = getelementptr inbounds nuw i8, ptr %.sroa.18.12366, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ax:                                            ; preds = %bb.av
end_hunk_11
begin_hunk_12_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.az, %.noexc427
  %79 = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.01381.12367, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ba

end_hunk_12
begin_hunk_13_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.at
  %.1 = phi i32 [ %i.kp, %bb.at ], [ %.014072364, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.014072364, %bb.aw ]
  %.sroa.34.3 = phi ptr [ %.sroa.34.9, %bb.at ], [ %i.lh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.34.12365, %bb.aw ] ; 2 uses
  %.sroa.18.2.a = phi ptr [ %.sroa.18.4, %bb.at ], [ %79, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %78, %bb.aw ] ; 2 uses
  %.sroa.01381.3 = phi ptr [ %.sroa.01381.9, %bb.at ], [ %i.le, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.01381.12367, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.li = add nuw nsw i64 %.02402368, 1           ; 2 uses
  %i.lj = load i32, ptr %i.hd, align 4
end_hunk_13
begin_hunk_14_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

.loopexit1465:                                    ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, %.preheader1464
  %.sroa.34.6 = phi ptr [ %.sroa.34.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.34.02428, %.preheader1464 ], [ %.sroa.34.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.34.11, %bb.bn ] ; 20 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.6, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.18.02429, %.preheader1464 ], [ %.sroa.18.2.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.18.6, %bb.bn ] ; 2 uses
  %.sroa.01381.6 = phi ptr [ %.sroa.01381.11, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit ], [ %.sroa.01381.02430, %.preheader1464 ], [ %.sroa.01381.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.sroa.01381.11, %bb.bn ] ; 21 uses
  %i.nt = load ptr, ptr %i.ek, align 8, !nonnull !28, !align !698
  %i.nu = load ptr, ptr %i.nt, align 8
end_hunk_14
begin_hunk_15_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a

bb.em:                                            ; preds = %bb.er, %.lr.ph.i.i.i536
  %.012.i.i.i537 = phi ptr [ %i.aev, %.lr.ph.i.i.i536 ], [ %.1.i.i.i541, %bb.er ] ; 7 uses
  %.0811.i.i.i538 = phi ptr [ %i.es, %.lr.ph.i.i.i536 ], [ %.19.i.i.i540, %bb.er ]
  %i.afb = getelementptr inbounds nuw i8, ptr %.012.i.i.i537, i64 32
  %i.afc = load float, ptr %i.afb, align 4        ; 2 uses
  %i.afd = fcmp une float %i.afc, %i.aew
end_hunk_15
begin_hunk_16_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i545, %bb.ep, %bb.en
  %.sink.i.i.i539 = phi i64 [ 24, %bb.eq ], [ 16, %bb.ep ], [ 16, %bb.en ], [ 16, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i545 ]
  %.19.i.i.i540 = phi ptr [ %.0811.i.i.i538, %bb.eq ], [ %.012.i.i.i537, %bb.ep ], [ %.012.i.i.i537, %bb.en ], [ %.012.i.i.i537, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i545 ] ; 6 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.012.i.i.i537, i64 %.sink.i.i.i539
  %.1.i.i.i541 = load ptr, ptr %i.afm, align 8    ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %.1.i.i.i541, null
  br i1 %.not.i.i.i542, label %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %bb.em, !llvm.loop !741

_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %bb.er
  %i.afn = icmp eq ptr %.19.i.i.i540, %i.es
  br i1 %i.afn, label %.lr.ph.i.i.i.i547.preheader, label %bb.es

bb.es:                                            ; preds = %_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.19.i.i.i540, i64 32
  %i.afp = load float, ptr %i.afo, align 4        ; 2 uses
  %i.afq = fcmp une float %i.aew, %i.afp
  br i1 %i.afq, label %bb.et, label %bb.eu
end_hunk_16
begin_hunk_17_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br i1 %i.afr, label %.lr.ph.i.i.i.i547.preheader, label %bb.gb

bb.eu:                                            ; preds = %bb.es
  %i.afs = getelementptr inbounds nuw i8, ptr %.19.i.i.i540, i64 36
  %i.aft = load float, ptr %i.afs, align 4        ; 2 uses
  %i.afu = fcmp une float %i.aey, %i.aft
  br i1 %i.afu, label %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i544, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.afv = getelementptr inbounds nuw i8, ptr %.19.i.i.i540, i64 40
  %i.afw = load float, ptr %i.afv, align 4
  %i.afx = fcmp olt float %i.afa, %i.afw
  br i1 %i.afx, label %.lr.ph.i.i.i.i547.preheader, label %bb.gb
end_hunk_17
begin_hunk_18_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i558, %bb.ey, %bb.ew
  %.sink.i.i.i.i550 = phi i64 [ 24, %bb.ez ], [ 16, %bb.ey ], [ 16, %bb.ew ], [ 16, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i558 ]
  %.19.i.i.i.i551 = phi ptr [ %.0811.i.i.i.i549, %bb.ez ], [ %.012.i.i.i.i548, %bb.ey ], [ %.012.i.i.i.i548, %bb.ew ], [ %.012.i.i.i.i548, %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i.i.i558 ] ; 12 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i548, i64 %.sink.i.i.i.i550
  %.1.i.i.i.i552 = load ptr, ptr %i.agk, align 8  ; 2 uses
  %.not.i.i.i.i553 = icmp eq ptr %.1.i.i.i.i552, null
  br i1 %.not.i.i.i.i553, label %_ZNSt3mapI10aiVector3tIfEiSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i547, !llvm.loop !741
end_hunk_18
begin_hunk_19_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  br label %.body1246

bb.gb:                                            ; preds = %_ZNKSt4lessI10aiVector3tIfEEclERKS1_S4_.exit.i.i544, %bb.ev, %bb.et
  %i.ajs = getelementptr inbounds nuw i8, ptr %.19.i.i.i540, i64 44 ; 2 uses
  %i.ajt = load ptr, ptr %i.aec, align 8          ; 3 uses
  %i.aju = load ptr, ptr %i.aed, align 8
  %.not.i576 = icmp eq ptr %i.ajt, %i.aju
end_hunk_19
