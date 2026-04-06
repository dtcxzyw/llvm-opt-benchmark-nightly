begin_hunk_0_@_ZN4abslL11ReportErrorB5cxx11EPNS_13cord_internal7CordRepES2_:bb.a
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i32 %i.ch to i64
  %i.ci = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i to ptr
  store ptr %4, ptr %3, align 8, !alias.scope !117
  store ptr %i.ci, ptr %i.aj, align 8
  store ptr @_ZN4absl19str_format_internal13FormatArgImpl8DispatchIjEEbNS1_4DataENS0_24FormatConversionSpecImplEPv, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  store i64 2, ptr %i.ai, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4absl19str_format_internal10Streamable5PrintERSo(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  %i.ck = load i64, ptr %i.ai, align 8
  %i.cl = trunc i64 %i.ck to i1
end_hunk_0
