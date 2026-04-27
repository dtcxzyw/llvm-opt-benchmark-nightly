inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051210SimpleAtofESt17basic_string_viewIcSt11char_traitsIcEEPf:bb.a
  store float 0.000000e+00, ptr %2, align 4, !tbaa !7
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051210SimpleAtofESt17basic_string_viewIcSt11char_traitsIcEEPf:bb.a
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !9
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd:bb.a
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd:bb.a
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !9
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l
end_hunk_3
