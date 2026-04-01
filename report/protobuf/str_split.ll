begin_hunk_0
  br i1 %.not27.i.i.i.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 7 uses
  %.not.i.i.i.i = icmp ult i64 %3, %1
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

end_hunk_0
begin_hunk_1
  %i.z = load i8, ptr %i.s, align 1, !tbaa !15
  %i.aa = sext i8 %i.z to i32
  %i.ab = ptrtoint ptr %i.w to i64
  %invariant.op = sub i64 1, %i.b
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a: ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.ag, %bb.k ]
  %.02132.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.k ]
  %i.ac = add i64 %.033.i.i.i.i, %invariant.op    ; 2 uses
  %.not26.i.i.i.i.a = icmp eq i64 %i.ac, 0
  br i1 %.not26.i.i.i.i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a
  %4 = tail call ptr @memchr(ptr noundef %.02132.i.i.i.i, i32 noundef %i.aa, i64 noundef %i.ac) #11 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not26.i.i.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %4, ptr nonnull readonly %i.s, i64 %i.b)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ad, label %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i, label %bb.k
end_hunk_1
begin_hunk_2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i.i.i27.i
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZN4absl12lts_2025051212_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit: ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.016.0 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ 0, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %i.b, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ 0, %bb.k ]
  %.sroa.4.0 = phi ptr [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %i.r, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.w, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %i.ak, %_ZN4absl12lts_2025051212_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i ], [ %i.v, %bb.g ], [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ %2, %bb.h ], [ %i.w, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a ], [ %i.w, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ %i.w, %bb.k ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i64, ptr } %.fca.1.insert
end_hunk_2
