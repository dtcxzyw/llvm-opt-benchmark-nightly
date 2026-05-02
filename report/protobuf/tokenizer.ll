inline.NumInlined: 657
inline.NumDeleted: 223
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer21set_report_whitespaceEb:bb.a
  store i8 %i.a, ptr %i.b, align 2, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 191 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !38, !noundef !39
  %2 = icmp ne i8 %i.d, 0
  %3 = and i1 %1, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.c, align 1, !tbaa !52
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf2io9Tokenizer15report_newlinesEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io9Tokenizer19set_report_newlinesEb(ptr noundef nonnull align 8 captures(none) dereferenceable(192) initializes((191, 192)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.a, ptr %i.b, align 1, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !51, !range !38, !noundef !39
  %2 = or i8 %i.d, %i.a
  store i8 %2, ptr %i.c, align 2, !tbaa !51
  ret void
}

end_hunk_1
