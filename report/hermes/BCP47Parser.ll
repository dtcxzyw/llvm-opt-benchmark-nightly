inline.NumInlined: 1092
inline.NumDeleted: 420
begin_hunk_0_@_ZN6hermes13platform_intl22isUnicodeExtensionTypeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a
  br i1 %i.l, label %bb.b, label %.lr.ph.i.i.i.i.i._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit_crit_edge

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 32 ; 2 uses
  %i.n = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #14, !inline_history !16
  br i1 %i.n, label %bb.c, label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplitsplit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 64 ; 2 uses
  %i.p = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.o) #14, !inline_history !16
  br i1 %i.p, label %bb.d, label %._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit_crit_edge

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 96 ; 2 uses
  %i.r = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.q) #14, !inline_history !16
  br i1 %i.r, label %bb.e, label %._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit_crit_edge

end_hunk_0
begin_hunk_1_@_ZN6hermes13platform_intl22isUnicodeExtensionTypeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplitsplit: ; preds = %bb.b
  %.sroa.032.042.i.i.i.i.i.lcssa11 = phi ptr [ %i.m, %bb.b ]
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit

._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit_crit_edge: ; preds = %bb.c
  %.sroa.032.042.i.i.i.i.i.lcssa12 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %bb.c ]
  %split16 = phi ptr [ %i.o, %bb.c ]              ; 0 uses
  %scevgep9 = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i.lcssa12, i64 64
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit

_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit: ; preds = %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplitsplit, %._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit_crit_edge
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph.ph.ph = phi ptr [ %scevgep9, %._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplit_crit_edge ], [ %.sroa.032.042.i.i.i.i.i.lcssa11, %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplitsplitsplit ]
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit

._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit_crit_edge: ; preds = %bb.d
  %.sroa.032.042.i.i.i.i.i.lcssa13 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %bb.d ]
  %split10 = phi ptr [ %i.q, %bb.d ]              ; 0 uses
  %scevgep8 = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i.lcssa13, i64 96
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit

end_hunk_1
begin_hunk_2_@_ZN6hermes13platform_intl22isUnicodeExtensionTypeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit

.lr.ph.i.i.i.i.i._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i.i.i
  %.sroa.032.042.i.i.i.i.i.lcssa = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.032.042.i.i.i.i.i.lcssa.a = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 0 uses
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit

_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit: ; preds = %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit, %.lr.ph.i.i.i.i.i._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit_crit_edge
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph = phi ptr [ %.sroa.032.042.i.i.i.i.i.lcssa, %.lr.ph.i.i.i.i.i._ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit_crit_edge ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph.ph, %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexitsplit ]
  br label %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit

_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit: ; preds = %_ZN4llvh6all_ofISt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS7_EEPFbRKS7_EEEbOT_T0_.exit.loopexit, %._crit_edge.i.i.i.i.i, %bb.f, %bb.h, %bb.j
end_hunk_2
