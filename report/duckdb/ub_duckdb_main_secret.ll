inline.NumInlined: 5469
inline.NumDeleted: 2421
begin_hunk_0_@_ZN6duckdb14KeyValueSecret11DeserializeIS0_EENS_10unique_ptrINS_10BaseSecretESt14default_deleteIS3_ELb1EEERNS_12DeserializerES3_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !471
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc44 unwind label %bb.ag

.noexc44:                                         ; preds = %.noexc43
  invoke void @_ZN6duckdb5Value11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
end_hunk_0
