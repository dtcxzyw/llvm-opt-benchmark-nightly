inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb6Vector9SerializeERNS_10SerializerEmb:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  invoke void %i.lj(ptr noundef nonnull align 8 dereferenceable(680) %1)
          to label %_ZN6duckdb10Serializer13WritePropertyIlEEvtPKcRKT_.exit unwind label %bb.cy

_ZN6duckdb10Serializer13WritePropertyIlEEvtPKcRKT_.exit: ; preds = %.noexc240
  %i.lk = load ptr, ptr %1, align 8, !tbaa !413
end_hunk_0
