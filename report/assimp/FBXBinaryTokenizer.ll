inline.NumInlined: 348
inline.NumDeleted: 140
begin_hunk_0_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

_ZN6Assimp14StackAllocator8AllocateEm.exit:       ; preds = %bb.ap, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.au
  %storemerge.i = phi i64 [ %i.di, %bb.au ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ 40, %bb.ap ]
  %.0.i186 = phi ptr [ %i.ep, %bb.au ], [ %i.dn, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.dn, %bb.ap ] ; 7 uses
  store i64 %storemerge.i, ptr %i.dg, align 8
  %i.eq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.er = load ptr, ptr %i.d, align 8             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit210

_ZN6Assimp14StackAllocator8AllocateEm.exit210:    ; preds = %bb.df, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209, %bb.dk
  %storemerge.i200 = phi i64 [ %i.lj, %bb.dk ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209 ], [ 40, %bb.df ]
  %.0.i201 = phi ptr [ %i.mm, %bb.dk ], [ %i.lo, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i209 ], [ %i.lo, %bb.df ] ; 7 uses
  store i64 %storemerge.i200, ptr %i.dg, align 8
  %i.mn = load ptr, ptr %3, align 8               ; 2 uses
  %i.mo = icmp ugt ptr %2, %i.mn
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit230

_ZN6Assimp14StackAllocator8AllocateEm.exit230:    ; preds = %bb.ds, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229, %bb.dx
  %storemerge.i220 = phi i64 [ %i.nq, %bb.dx ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229 ], [ 40, %bb.ds ]
  %.0.i221 = phi ptr [ %i.ot, %bb.dx ], [ %i.nv, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i229 ], [ %i.nv, %bb.ds ] ; 7 uses
  store i64 %storemerge.i220, ptr %i.dg, align 8
  %i.ou = load ptr, ptr %3, align 8               ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit258

_ZN6Assimp14StackAllocator8AllocateEm.exit258:    ; preds = %bb.er, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257, %bb.ew
  %storemerge.i248 = phi i64 [ %i.qx, %bb.ew ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257 ], [ 40, %bb.er ]
  %.0.i249 = phi ptr [ %i.se, %bb.ew ], [ %i.rc, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i257 ], [ %i.rc, %bb.er ] ; 7 uses
  store i64 %storemerge.i248, ptr %i.dg, align 8
  %i.sf = load ptr, ptr %3, align 8               ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
end_hunk_3
begin_hunk_4_@_ZN6Assimp3FBX12_GLOBAL__N_19ReadScopeERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorEPKcRSC_SC_b:bb.a
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit279

_ZN6Assimp14StackAllocator8AllocateEm.exit279:    ; preds = %bb.fe, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278, %bb.fj
  %storemerge.i269 = phi i64 [ %i.tx, %bb.fj ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278 ], [ 40, %bb.fe ]
  %.0.i270 = phi ptr [ %i.ve, %bb.fj ], [ %i.uc, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i278 ], [ %i.uc, %bb.fe ] ; 7 uses
  store i64 %storemerge.i269, ptr %i.dg, align 8
  %i.vf = load ptr, ptr %3, align 8               ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
end_hunk_4
begin_hunk_5_@_ZN15DeadlyErrorBaseC2IJRA2_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.d unwind label %bb.e
end_hunk_5
