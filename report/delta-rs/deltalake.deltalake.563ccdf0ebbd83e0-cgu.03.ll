inline.NumInlined: 8450
inline.NumDeleted: 2899
begin_hunk_0_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCs7p2uQeJxui2_9deltalake:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13969, !noalias !13972, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

end_hunk_1
begin_hunk_2_@_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %exitcond.not, label %._RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 1, ptr %i.g, align 1, !alias.scope !13972, !noalias !13969
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !13972, !noalias !13969
  br label %bb.d

end_hunk_2
