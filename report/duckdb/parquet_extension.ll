inline.NumInlined: 4444
inline.NumDeleted: 2197
begin_hunk_0_@_ZN6duckdbL20ParquetCopySerializeERNS_10SerializerERKNS_12FunctionDataERKNS_12CopyFunctionE:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 168
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.fq)
          to label %.noexc62 unwind label %bb.ap

.noexc62:                                         ; preds = %_ZN6duckdb10Serializer10WriteValueENS_12optional_idxE.exit.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
end_hunk_0
