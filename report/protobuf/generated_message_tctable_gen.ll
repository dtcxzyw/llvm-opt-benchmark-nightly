inline.NumInlined: 1028
inline.NumDeleted: 519
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.es) #19
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit: ; preds = %bb.ai, %bb.aj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre234 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.et = icmp eq ptr %.pre234, null
  br i1 %i.et, label %_ZN6google8protobuf8internal14GetEndGroupTagEPKNS0_10DescriptorE.exit, label %.preheader.i

end_hunk_0
