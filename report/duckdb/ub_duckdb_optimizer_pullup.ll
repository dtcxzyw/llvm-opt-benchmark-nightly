inline.NumInlined: 548
inline.NumDeleted: 287
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv:bb.a
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.duckdb::unique_ptr.20", align 8 ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZN6duckdbL24ReplaceExpressionBindingERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERS2_m:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %2, ptr %i.ae, align 8, !tbaa !144
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !24  ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !25    ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
end_hunk_1
