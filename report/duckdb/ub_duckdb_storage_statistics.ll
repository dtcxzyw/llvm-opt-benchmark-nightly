inline.NumInlined: 3702
inline.NumDeleted: 1232
begin_hunk_0_@_ZN6duckdb13GeometryStats11DeserializeERNS_12DeserializerERNS_14BaseStatisticsE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %.noexc28 unwind label %bb.d, !inline_history !705

.noexc28:                                         ; preds = %.noexc27
  %i.bd = load ptr, ptr %0, align 8, !tbaa !40
end_hunk_0
begin_hunk_1_@_ZN6duckdb13GeometryStats11DeserializeERNS_12DeserializerERNS_14BaseStatisticsE:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %.noexc29
  store i32 %i.bj, ptr %i.m, align 4, !tbaa !3
end_hunk_1
