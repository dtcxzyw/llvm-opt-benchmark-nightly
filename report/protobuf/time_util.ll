inline.NumInlined: 352
inline.NumDeleted: 135
begin_hunk_0_@_ZN6google8protobuf4util8TimeUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_9TimestampE:bb.a
  unreachable

_ZN6google8protobuf9TimestampaSEOS1_.exit:        ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_125CreateNormalizedTimestampEli.exit, %bb.i, %bb.j
  call void @_ZN6google8protobuf9TimestampD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.l
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util8TimeUtil10FromStringESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 %0
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %.not = icmp eq i8 %i.h, 115
  br i1 %.not, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  %i.j = icmp eq i8 %i.i, 45                      ; 3 uses
  %i.k = zext i1 %i.j to i64                      ; 6 uses
end_hunk_1
