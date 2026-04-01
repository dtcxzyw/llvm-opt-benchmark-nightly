begin_hunk_0
  %i.e = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !27
  %i.f = sext i8 %i.e to i32
  %i.g = ptrtoint ptr %i.d to i64
  %invariant.op = sub i64 1, %i.b
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.033.i.i.i.i.i.i = phi i64 [ %.val2, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %.02132.i.i.i.i.i.i = phi ptr [ %.val3, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %i.h = add i64 %.033.i.i.i.i.i.i, %invariant.op ; 2 uses
  %.not26.i.i.i.i.i.i.a = icmp eq i64 %i.h, 0
  br i1 %.not26.i.i.i.i.i.i.a, label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS2_10HelpFormatES7_E3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a
  %2 = tail call ptr @memchr(ptr noundef %.02132.i.i.i.i.i.i, i32 noundef %i.f, i64 noundef %i.h) #24 ; 4 uses
  %.not26.i.i.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not26.i.i.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS2_10HelpFormatES7_E3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %2, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.d
end_hunk_0
begin_hunk_1
  %.not25.i.i.i.i.i.i = icmp ult i64 %i.p, %i.b
  br i1 %.not25.i.i.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS2_10HelpFormatES7_E3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a, !llvm.loop !168

"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS2_10HelpFormatES7_E3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, %bb.d, %bb.a, %bb.b, %bb.c
  %3 = phi i1 [ true, %bb.a ], [ %i.m, %bb.c ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a ]
  ret i1 %3
}

end_hunk_1
begin_hunk_2
  %i.l = load i8, ptr %i.g, align 1, !tbaa !27
  %i.m = sext i8 %i.l to i32
  %i.n = ptrtoint ptr %i.k to i64
  %invariant.op = sub i64 1, %i.i
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.033.i.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %.02132.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.o = add i64 %.033.i.i.i.i.i.i, %invariant.op ; 2 uses
  %.not26.i.i.i.i.i.i.a = icmp eq i64 %i.o, 0
  br i1 %.not26.i.i.i.i.i.i.a, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a
  %4 = tail call ptr @memchr(ptr noundef %.02132.i.i.i.i.i.i, i32 noundef %i.m, i64 noundef %i.o) #24 ; 4 uses
  %.not26.i.i.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not26.i.i.i.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %4, ptr nonnull %i.g, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i, label %bb.c
end_hunk_2
begin_hunk_3
  %.not.i.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i, label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKNS1_15CommandLineFlagEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i: ; preds = %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i.a, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.w = load ptr, ptr %1, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
end_hunk_3
begin_hunk_4
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.aj = sext i8 %i.ai to i32
  %i.ak = ptrtoint ptr %i.ah to i64
  %invariant.op37 = sub i64 1, %i.af
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i20.i.i.i
  %.033.i.i.i22.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i20.i.i.i ], [ %i.at, %bb.f ]
  %.02132.i.i.i23.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i20.i.i.i ], [ %i.ar, %bb.f ]
  %i.al = add i64 %.033.i.i.i22.i.i.i, %invariant.op37 ; 2 uses
  %.not26.i.i.i25.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not26.i.i.i25.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit30.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i25.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i25.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i
  %5 = call ptr @memchr(ptr noundef %.02132.i.i.i23.i.i.i, i32 noundef %i.aj, i64 noundef %i.al) #24 ; 4 uses
  %.not26.i.i.i26.i.i.i = icmp eq ptr %5, null
  br i1 %.not26.i.i.i26.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit30.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i25.i.i.i
  %bcmp.i.i.i27.i.i.i = call i32 @bcmp(ptr nonnull %5, ptr nonnull %i.ad, i64 %i.af)
  %i.am = icmp eq i32 %bcmp.i.i.i27.i.i.i, 0
  br i1 %i.am, label %bb.e, label %bb.f
end_hunk_4
begin_hunk_5
  %.not25.i.i.i28.i.i.i = icmp ult i64 %i.at, %i.af
  br i1 %.not25.i.i.i28.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit30.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i, !llvm.loop !168

_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit30.i.i.i: ; preds = %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i25.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i, %bb.e, %bb.d, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i
  %.1.i.i.i30.i.i.i = phi i1 [ true, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i ], [ false, %bb.d ], [ %i.aq, %bb.e ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i21.i.i.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i25.i.i.i ], [ false, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.z, %i.au
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_5
begin_hunk_6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.1.i.i.i30.i.i.i, label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKNS1_15CommandLineFlagEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
end_hunk_6
begin_hunk_7
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bm = sext i8 %i.bl to i32
  %i.bn = ptrtoint ptr %i.bk to i64
  %invariant.op38 = sub i64 1, %i.bi
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i36.i.i.i
  %.033.i.i.i38.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i36.i.i.i ], [ %i.bw, %bb.j ]
  %.02132.i.i.i39.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i36.i.i.i ], [ %i.bu, %bb.j ]
  %i.bo = add i64 %.033.i.i.i38.i.i.i, %invariant.op38 ; 2 uses
  %.not26.i.i.i41.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not26.i.i.i41.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit46.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i
  %6 = call ptr @memchr(ptr noundef %.02132.i.i.i39.i.i.i, i32 noundef %i.bm, i64 noundef %i.bo) #24 ; 4 uses
  %.not26.i.i.i43.i.i.i = icmp eq ptr %6, null
  br i1 %.not26.i.i.i43.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit46.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42.i.i.i
  %bcmp.i.i.i43.i.i.i = call i32 @bcmp(ptr nonnull %6, ptr nonnull %i.bg, i64 %i.bi)
  %i.bp = icmp eq i32 %bcmp.i.i.i43.i.i.i, 0
  br i1 %i.bp, label %bb.i, label %bb.j
end_hunk_7
begin_hunk_8
  %.not25.i.i.i44.i.i.i = icmp ult i64 %i.bw, %i.bi
  br i1 %.not25.i.i.i44.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit46.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i, !llvm.loop !168

_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit46.i.i.i: ; preds = %bb.j, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i, %bb.i, %bb.h, %bb.g
  %.1.i.i.i47.i.i.i = phi i1 [ true, %bb.g ], [ false, %bb.h ], [ %i.bt, %bb.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i37.i.i.i ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42.i.i.i ], [ false, %bb.j ]
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bc, %i.bx
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i.i
end_hunk_8
begin_hunk_9
  br label %"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKNS1_15CommandLineFlagEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIbRZN4absl12lts_2025051214flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRKNS1_15CommandLineFlagEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %bb.a, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i
  %.0.i.i.i = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ true, %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i ], [ %.1.i.i.i47.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i ], [ true, %bb.a ]
  ret i1 %.0.i.i.i
}

end_hunk_9
