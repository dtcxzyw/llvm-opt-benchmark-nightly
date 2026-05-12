inline.NumInlined: 522
inline.NumDeleted: 315
begin_hunk_0_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a
  br label %bb.aj

.lr.ph130.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.19.5 = phi ptr [ %.sroa.19.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ]
  %.sroa.018.5 = phi ptr [ %.sroa.018.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 5 uses
  %i.gc = phi ptr [ %i.gt, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %i.gd = phi ptr [ %.sroa.9.5, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a

bb.af:                                            ; preds = %.lr.ph130.i
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %.sroa.018.5 to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 6 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ag, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9

end_hunk_1
begin_hunk_2_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i17.i.i.i13, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.5, i64 noundef %i.gh) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
end_hunk_2
