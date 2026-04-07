inline.NumInlined: 6273
inline.NumDeleted: 3206
begin_hunk_0_@_ZN6duckdb10LogicalGet11DeserializeERNS_12DeserializerE:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRT_.exit164 unwind label %bb.aq

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEEvtPKcRT_.exit164: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit.i160
  %i.dz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10LogicalGetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
end_hunk_0
