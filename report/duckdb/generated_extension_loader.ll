inline.NumInlined: 229
inline.NumDeleted: 111
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ExtensionHelper17LoadAllExtensionsERNS_6DuckDBE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN6duckdb16LinkedExtensionsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !30    ; 4 uses
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !34 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre10
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ExtensionHelper17LoadAllExtensionsERNS_6DuckDBE:bb.a

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %.pre10
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.a, %._crit_edge
  %.pr.i18 = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge ], [ %.pre, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i18, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pr.i18) #16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
end_hunk_1
begin_hunk_2_@_ZN6duckdb15ExtensionHelper17LoadAllExtensionsERNS_6DuckDBE:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
end_hunk_2
