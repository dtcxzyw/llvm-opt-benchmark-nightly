inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a
bb.br:                                            ; preds = %bb.bq
  %i.py = load i64, ptr %i.px, align 8
  store i64 %i.py, ptr %.sroa.15.1773, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.bs:                                            ; preds = %bb.bq
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.bu, %.noexc414
  %.not.i17.i.i = icmp eq ptr %.sroa.0580.2774, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.bv

end_hunk_1
begin_hunk_2_@_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.by
  %.sroa.28.16 = phi ptr [ %i.rj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.28.2772, %bb.by ] ; 6 uses
  %.pn = phi ptr [ %i.rh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1773, %bb.by ] ; 3 uses
  %.sroa.0580.16 = phi ptr [ %i.rg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0580.2774, %bb.by ] ; 6 uses
  %i.rk = load ptr, ptr %i.ai, align 8
  %i.rl = load ptr, ptr %i.ah, align 8
  %i.rm = ptrtoint ptr %i.rk to i64
end_hunk_2
begin_hunk_3_@_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread, %bb.cs, %bb.ct, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.br
  %.sroa.28.5 = phi ptr [ %.sroa.28.2772, %bb.br ], [ %i.qn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.28.16, %bb.ct ], [ %.sroa.28.16, %bb.cs ], [ %.sroa.28.16, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread ]
  %.sroa.15.2.a = phi ptr [ %.sroa.15.1773, %bb.br ], [ %i.qk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.pn, %bb.ct ], [ %.pn, %bb.cs ], [ %.pn, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread ]
  %.sroa.0580.5 = phi ptr [ %.sroa.0580.2774, %bb.br ], [ %i.qj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0580.16, %bb.ct ], [ %.sroa.0580.16, %bb.cs ], [ %.sroa.0580.16, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread ]
  %.190 = phi i64 [ %.089775, %bb.br ], [ %.089775, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.us, %bb.ct ], [ %i.us, %bb.cs ], [ %i.us, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread ]
  %.187 = phi i64 [ %.086776, %bb.br ], [ %.086776, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.uu, %bb.ct ], [ %i.uu, %bb.cs ], [ %i.uu, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit464.thread ]
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.sroa.15.2.a, i64 8
  %i.wd = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.ac
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i465
end_hunk_3
begin_hunk_4_@_ZN6Assimp13ColladaLoader18BuildMeshesForNodeERKNS_13ColladaParserEPKNS_7Collada4NodeEP6aiNode:bb.a
  %i.wp = phi ptr [ %i.dt, %bb.q ], [ %.pre847, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.wq = phi ptr [ %i.du, %bb.q ], [ %.pre846, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.28.6 = phi ptr [ %.sroa.28.2772, %bb.q ], [ %.sroa.28.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.1773, %bb.q ], [ %.sroa.15.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.0580.6 = phi ptr [ %.sroa.0580.2774, %bb.q ], [ %.sroa.0580.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.291 = phi i64 [ %.089775, %bb.q ], [ %.190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.288 = phi i64 [ %.086776, %bb.q ], [ %.187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
end_hunk_4
