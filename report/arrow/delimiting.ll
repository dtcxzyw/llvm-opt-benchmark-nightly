inline.NumInlined: 327
inline.NumDeleted: 149
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader, %bb.b
  %lsr.iv33 = phi i64 [ 1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader ], [ %lsr.iv.next34, %bb.b ] ; 2 uses
  %lsr.iv = phi i64 [ %i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.preheader ], [ %lsr.iv.next, %bb.b ] ; 4 uses
  %scevgep = getelementptr i8, ptr %3, i64 %lsr.iv
  %i.b = load i8, ptr %scevgep, align 1, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a
  br i1 %.not17.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.thread.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !173

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.1.i.i.lcssa = phi i64 [ %lsr.iv, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %lsr.iv, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.c = icmp ult i64 %.1.i.i.lcssa, %2
  br i1 %i.c, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.preheader, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_121NewlineBoundaryFinder8FindLastESt17basic_string_viewIcSt11char_traitsIcEEPl:bb.a
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7:    ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.preheader, %bb.c
  %lsr.iv35 = phi i64 [ %lsr.iv33, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.preheader ], [ %lsr.iv.next36, %bb.c ]
  %.0710.i.i = phi i64 [ %i.f, %bb.c ], [ %.1.i.i.lcssa, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.preheader ] ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 %.0710.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
end_hunk_2
