inline.NumInlined: 3957
inline.NumDeleted: 1703
begin_hunk_0_@_ZN6duckdb25ParquetMetadataLocalState10InitializeERNS_13ClientContextERNS_12OpenFileInfoEm:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(432) %i.l)
          to label %_ZN6duckdb28ParquetMetadataFileProcessor10InitializeERNS_13ClientContextERNS_13ParquetReaderE.exit unwind label %bb.j

_ZN6duckdb28ParquetMetadataFileProcessor10InitializeERNS_13ClientContextERNS_13ParquetReaderE.exit: ; preds = %bb.d
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28ParquetMetadataFileProcessorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
end_hunk_0
