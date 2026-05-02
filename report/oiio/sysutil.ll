inline.NumInlined: 2621
inline.NumDeleted: 648
begin_hunk_0_@_ZN11OpenImageIO4v3_17Sysutil4TermC2ERKSo:bb.a
  %i.t = icmp eq i64 %.fr21, 0
  br i1 %i.t, label %.split19.us.a, label %.split

.split19.us:                                      ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %5 = load i8, ptr %0, align 1, !tbaa !29, !range !32, !noundef !33
  %spec.select = select i1 %i.x, i8 %5, i8 0
  br label %.split19.us.a

.split19.us.a:                                    ; preds = %.split19.us, %bb.g
  %6 = phi i8 [ 0, %bb.g ], [ %spec.select, %.split19.us ]
  store i8 %6, ptr %0, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_17Sysutil4TermC2ERKSo:bb.a
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %i.u, i64 %.fr21)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  %spec.select20 = select i1 %.not.i.i, i1 true, i1 %.017
  %7 = freeze i1 %spec.select20
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.x = phi i1 [ %.017, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ], [ %7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.017, %.split ] ; 2 uses
  %.010.add = add nuw nsw i64 %.010.idx16, 8      ; 2 uses
  %.not12 = icmp eq i64 %.010.add, 160
  br i1 %.not12, label %.split19.us, label %.split
}

; Function Attrs: mustprogress uwtable
end_hunk_1
