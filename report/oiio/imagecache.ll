begin_hunk_0
  br label %.thread933

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit362.thread
  switch i64 %i.ic, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread [
    i64 25, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502
    i64 27, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread
  %bcmp.i503 = call i32 @bcmp(ptr %i.ib, ptr nonnull @.str.222, i64 %i.ic)
end_hunk_0
begin_hunk_1
  store i64 %i.lq, ptr %3, align 8, !tbaa !67
  br label %.thread933

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i382, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread
  %bcmp.i511 = call i32 @bcmp(ptr %i.ib, ptr nonnull @.str.223, i64 %i.ic)
  %.not.i.i512 = icmp eq i32 %bcmp.i511, 0
  br i1 %.not.i.i512, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.bn

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i494, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i502, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit506, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i486, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit490, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i478, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit482, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i470, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit474, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit442, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i422, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit426, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i414, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i406, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit410, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i374, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit378, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit498.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit514, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i510
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.bn

end_hunk_2
