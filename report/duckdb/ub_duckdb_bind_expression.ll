inline.NumInlined: 7467
inline.NumDeleted: 3072
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EEptEv:bb.a
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !226

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.168, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb17BoundParameterMap23BindParameterExpressionERNS_19ParameterExpressionE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.976") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16ExpressionBinder23BindPositionalReferenceERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmb(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BindResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::unique_ptr.746", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb14BaseExpression4CastINS_29PositionalReferenceExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !55     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39, !nonnull !40, !align !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @_ZN6duckdb11BindContext16PositionToColumnERNS_29PositionalReferenceExpressionE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.746") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
  %i.l = load ptr, ptr %7, align 8, !tbaa !480
  store ptr null, ptr %7, align 8, !tbaa !480
  %i.m = load ptr, ptr %2, align 8, !tbaa !43     ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !43
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #23, !inline_history !518
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.g
  %i.q = load ptr, ptr %1, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr dead_on_unwind writable sret(%"struct.duckdb::BindResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0, i1 noundef zeroext %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.t = load ptr, ptr %7, align 8, !tbaa !480    ; 3 uses
  %.not.i17 = icmp eq ptr %i.t, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %bb.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(80) %i.t) #23, !inline_history !494
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %7, align 8, !tbaa !480    ; 3 uses
  %.not.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit20, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i19

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i19: ; preds = %bb.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(80) %i.y) #23, !inline_history !494
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit20

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit20: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %.pn24, %bb.f ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit20 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb11BindContext16PositionToColumnERNS_29PositionalReferenceExpressionE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.746") align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder29ReplaceUnpackedStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(265) %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.1269", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::vector.192", align 16 ; 8 uses
  %10 = alloca %"class.duckdb::vector.192", align 16 ; 12 uses
  %11 = alloca %"class.duckdb::vector.192", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.duckdb::optional_ptr.985", align 8 ; 2 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator", align 1   ; 5 uses
  %17 = alloca %"class.std::function.763", align 8 ; 12 uses
  store ptr %4, ptr %14, align 8
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !357
  switch i8 %i.c, label %bb.ay [
    i8 9, label %bb.b
    i8 10, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = tail call noundef nonnull align 8 dereferenceable(209) ptr @_ZN6duckdb14BaseExpression4CastINS_18FunctionExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !449  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !449  ; 2 uses
  %.not6369.i = icmp eq ptr %i.g, %i.i
  br i1 %.not6369.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !70 ; 4 uses
  %.pre83.i = load ptr, ptr %i.h, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.phi.trans.insert86.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre87.i = load ptr, ptr %.phi.trans.insert86.i, align 16, !tbaa !450
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load <2 x ptr>, ptr %10, align 16, !tbaa !449
  store <2 x ptr> %i.l, ptr %i.f, align 8, !tbaa !449
  store ptr %.pre87.i, ptr %i.k, align 8, !tbaa !450
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre83.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #23, !inline_history !999
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %.pre83.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !448

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i, %._crit_edge.i, %._crit_edge.thread.i
  %i.r = phi ptr [ %i.j, %._crit_edge.thread.i ], [ %.phi.trans.insert.i, %._crit_edge.i ], [ %.phi.trans.insert.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ]
  %i.s = phi ptr [ %i.g, %._crit_edge.thread.i ], [ %.pre.i, %._crit_edge.i ], [ %.pre.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #25
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit.i

_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %.not64.i = icmp eq ptr %i.u, null
  br i1 %.not64.i, label %_ZN6duckdbL17ReplaceInFunctionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE.exit, label %bb.f

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.057.070.i = phi ptr [ %i.v, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  invoke fastcc void @_ZN6duckdbL8AddChildERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEES9_RNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.057.070.i, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(265) %3, ptr %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.057.070.i, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.v, %i.i
  br i1 %.not63.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.x = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 2 uses
  %.not6571.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6571.i, label %._crit_edge75.i, label %.lr.ph74.i

._crit_edge75.i:                                  ; preds = %bb.i, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = load ptr, ptr %11, align 8, !tbaa !70
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph74.i:                                       ; preds = %bb.g, %bb.i
  %.sroa.053.072.i = phi ptr [ %i.ai, %bb.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.053.072.i, i64 8
  invoke fastcc void @_ZN6duckdbL8AddChildERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEES9_RNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(265) %3, ptr %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph74.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.053.072.i, i64 16 ; 2 uses
  %.not65.i = icmp eq ptr %i.ai, %i.ab
  br i1 %.not65.i, label %._crit_edge75.i, label %.lr.ph74.i

bb.j:                                             ; preds = %.lr.ph74.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %._crit_edge75.i
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4
  %.not.i = icmp eq i64 %i.an, %i.av
  br i1 %.not.i, label %.preheader.i, label %bb.l

.preheader.i:                                     ; preds = %bb.k
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !70   ; 2 uses
  %.not80.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not80.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.163, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.aa unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge75.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %.027.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bc = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.027.i, label %bb.q, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.027.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn62.i = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ay) #23
  br label %bb.w

._crit_edge78.i:                                  ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %.preheader.i
  %.lcssa67.i = phi ptr [ %i.aw, %.preheader.i ], [ %i.bw, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %i.bx, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %.lcssa.i, %.lcssa67.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge78.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %.lcssa.i, %._crit_edge78.i ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #23, !inline_history !1000
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, %.lcssa67.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !448

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge78.i
  %i.bk = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.lcssa.i, %._crit_edge78.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #25
  %.pre89.pre.i = load ptr, ptr %i.r, align 8, !tbaa !67
  br label %bb.x

.lr.ph77.i:                                       ; preds = %.preheader.i, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %.02676.i = phi i64 [ %i.bv, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %.02676.i)
          to label %bb.s unwind label %bb.v       ; 2 uses

bb.s:                                             ; preds = %.lr.ph77.i
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.02676.i)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !43
  store ptr null, ptr %i.bl, align 8, !tbaa !43
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !43
  %.not.i.i.i.i.i39.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i39.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i40.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i40.i: ; preds = %bb.u
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(56) %i.br) #23, !inline_history !1001
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i40.i, %bb.u
  %i.bv = add nuw i64 %.02676.i, 1                ; 2 uses
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.bx = load ptr, ptr %11, align 8, !tbaa !70   ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp ult i64 %i.bv, %i.cb
  br i1 %i.cc, label %.lr.ph77.i, label %._crit_edge78.i, !llvm.loop !1002

bb.v:                                             ; preds = %bb.t, %bb.s, %.lr.ph77.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o, %bb.j, %bb.h
  %.pn34.pn.i = phi { ptr, i32 } [ %i.az, %bb.o ], [ %.pn62.i, %bb.q ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cd, %bb.v ], [ %i.aj, %bb.j ], [ %i.ag, %bb.h ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.z

bb.x:                                             ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  %.pre89.i = phi ptr [ null, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %.pre89.pre.i, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pre88.i = load ptr, ptr %10, align 16, !tbaa !70 ; 4 uses
  %.not4.i.i.i41.i = icmp eq ptr %.pre88.i, %.pre89.i
  br i1 %.not4.i.i.i41.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i50.i, label %.lr.ph.i.i.i42.i

.lr.ph.i.i.i42.i:                                 ; preds = %bb.x, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i
  %.05.i.i.i43.i = phi ptr [ %i.ci, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i ], [ %.pre88.i, %bb.x ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i43.i, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i44.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i44.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i45.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i45.i: ; preds = %.lr.ph.i.i.i42.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(56) %i.ce) #23, !inline_history !1000
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i45.i, %.lr.ph.i.i.i42.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i43.i, i64 8 ; 2 uses
  %.not.i.i.i47.i = icmp eq ptr %i.ci, %.pre89.i
  br i1 %.not.i.i.i47.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i50.i, label %.lr.ph.i.i.i42.i, !llvm.loop !448

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i50.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i46.i, %bb.x
  %.not.i.i1.i51.i = icmp eq ptr %.pre88.i, null
  br i1 %.not.i.i1.i51.i, label %_ZN6duckdbL17ReplaceInFunctionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i50.i
  call void @_ZdlPv(ptr noundef nonnull %.pre88.i) #25
  br label %_ZN6duckdbL17ReplaceInFunctionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE.exit

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit43, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.i, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %.pn37.i, %bb.z ], [ %.pn33.i, %.body.i ], [ %i.ew, %_ZNSt14_Function_baseD2Ev.exit43 ], [ %.pn47, %bb.ag ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.w, %bb.e
  %.pn37.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn34.pn.i, %bb.w ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume

bb.aa:                                            ; preds = %bb.n
  unreachable

_ZN6duckdbL17ReplaceInFunctionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEERNS_6vectorIS4_Lb1ESaIS4_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEE.exit: ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i50.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ay

bb.ab:                                            ; preds = %bb.a
  %i.cj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ck = tail call noundef zeroext i1 @_ZN6duckdb14StarExpression17IsColumnsUnpackedERKNS_16ParsedExpressionE(ptr noundef nonnull align 8 dereferenceable(56) %i.cj)
  br i1 %i.ck, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.bf unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.016 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.co = load ptr, ptr %15, align 8, !tbaa !55   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.co) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.016, label %bb.ag, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.016, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cl) #23
  br label %common.resume

bb.ah:                                            ; preds = %bb.ab
  %i.cr = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.cs = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cr) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ct = tail call noalias noundef nonnull dereferenceable(3) ptr @_Znwm(i64 noundef 3) #26 ; 5 uses
  store ptr %i.ct, ptr %5, align 8, !tbaa !1003
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !1005
  store i8 -104, ptr %i.ct, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 35, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i8 36, ptr %.sroa.6.0..sroa_idx.i, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1006
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  br label %bb.ai

._crit_edge.i24:                                  ; preds = %bb.aj
  br i1 %i.db, label %bb.aq, label %.critedge.i

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.02962.i = phi i64 [ 0, %bb.ah ], [ %i.dc, %bb.aj ] ; 2 uses
  %i.cy = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN6duckdb6vectorINS_14ExpressionTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.02962.i)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load i8, ptr %i.cx, align 8, !tbaa !106
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !612
  %i.db = icmp eq i8 %i.cz, %i.da                 ; 2 uses
  %i.dc = add nuw i64 %.02962.i, 1                ; 2 uses
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !1006
  %i.de = load ptr, ptr %5, align 8, !tbaa !1003
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp uge i64 %i.dc, %i.dh
  %.not30.i = select i1 %i.di, i1 true, i1 %i.db
  br i1 %.not30.i, label %._crit_edge.i24, label %bb.ai, !llvm.loop !1007

bb.ak:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.critedge.i:                                      ; preds = %._crit_edge.i24
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.164, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread.i

bb.al:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dl = load i8, ptr %i.cx, align 8, !tbaa !106
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_14ExpressionTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef zeroext %i.dl)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i25

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ax unwind label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread.i: ; preds = %.critedge.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.026.i = phi i1 [ false, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.do = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.do) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dr = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i25: ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dv = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i25
  call void @_ZdlPv(ptr noundef %i.dv) #25
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27
  call void @_ZdlPv(ptr noundef %i.dr) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.026.i, label %bb.ap, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.026.i, label %bb.ap, label %bb.av

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread.i
  %.pn.pn49.ph.i = phi { ptr, i32 } [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.thread.i ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.thread.i ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  %.pn.pn49.i = phi { ptr, i32 } [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ], [ %.pn.pn49.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.dk) #23
  br label %bb.av

bb.aq:                                            ; preds = %._crit_edge.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 4 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !449 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !449 ; 2 uses
  %.not64.i28 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not64.i28, label %._crit_edge68.thread.i, label %.lr.ph67.i

._crit_edge68.thread.i:                           ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i39

._crit_edge68.i:                                  ; preds = %bb.at
  %.pre.i30 = load ptr, ptr %i.dy, align 8, !tbaa !70 ; 4 uses
  %.pre69.i = load ptr, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %9, i64 16
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1012   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !226

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.168, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14StarExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !541  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !542

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !532
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !534
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !532    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb6Binder27GetResolvedColumnExpressionERNS_16ParsedExpressionE(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %storemerge2 = ptrtoint ptr %0 to i64
  store i64 %storemerge2, ptr %1, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  call void @_ZNK6duckdb12optional_ptrINS_16ParsedExpressionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !106
  %i.d = icmp eq i8 %i.c, -53
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNK6duckdb12optional_ptrINS_16ParsedExpressionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !tbaa !718
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !106
  %i.h = icmp eq i8 %i.g, -104
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @_ZNK6duckdb12optional_ptrINS_16ParsedExpressionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.i = load ptr, ptr %1, align 8, !tbaa !718
  %i.j = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb14BaseExpression4CastINS_18OperatorExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %storemerge = ptrtoint ptr %i.m to i64
  store i64 %storemerge, ptr %1, align 8, !tbaa !43
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1062

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.01.0 = phi ptr [ null, %bb.d ], [ %i.a, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret ptr %.sroa.01.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder20ExpandStarExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 11 uses
  %5 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %7 = alloca %"class.duckdb::vector.192", align 8 ; 26 uses
  %8 = alloca %"class.duckdb::unique_ptr.1067", align 8 ; 13 uses
  %9 = alloca %"class.duckdb::TableFunctionBinder", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.duckdb::unique_ptr.198", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::allocator", align 1   ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.duckdb::vector.192", align 8 ; 9 uses
  %25 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 6 uses
  %26 = alloca %"class.duckdb::vector.267", align 8 ; 8 uses
  %27 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::allocator", align 1   ; 4 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::allocator", align 1   ; 4 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %42 = alloca %"class.duckdb::vector.192", align 8 ; 10 uses
  %43 = alloca %"class.std::unordered_map.1077", align 8 ; 15 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::allocator", align 1   ; 5 uses
  %46 = alloca %"struct.std::pair.1097", align 8  ; 13 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::allocator", align 1   ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::allocator", align 1   ; 5 uses
  %52 = alloca %"class.duckdb::unique_ptr.198", align 8 ; 7 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::allocator", align 1   ; 5 uses
  %55 = alloca %"class.duckdb::unique_ptr.198", align 8 ; 14 uses
  %56 = alloca %"class.duckdb::optional_ptr.762", align 8 ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN6duckdb20TryTransformStarLikeERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8, !tbaa !1012
  %i.d = call noundef zeroext i8 @_ZN6duckdb6Binder18FindStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEPPNS_14StarExpressionEbb(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !450
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %1, align 8, !tbaa !43
  store i64 %i.j, ptr %i.g, align 8, !tbaa !43
  store ptr null, ptr %1, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !67
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !70     ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.150) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i64, ptr %1, align 8, !tbaa !43
  store i64 %i.y, ptr %i.x, align 8, !tbaa !43
  store ptr null, ptr %1, align 8, !tbaa !43
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = sub i64 %i.m, %i.n
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check889 = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check889, label %.lr.ph.i.i.i.i.i.i.i.preheader904, label %vector.memcheck882

vector.memcheck882:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep883 = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep884 = getelementptr i8, ptr %i.l, i64 %i.ag
  %bound0885 = icmp ult ptr %i.w, %scevgep884
  %bound1886 = icmp ult ptr %i.l, %scevgep883
  %found.conflict887 = and i1 %bound0885, %bound1886
  br i1 %found.conflict887, label %.lr.ph.i.i.i.i.i.i.i.preheader904, label %vector.ph890

vector.ph890:                                     ; preds = %vector.memcheck882
  %n.vec892 = and i64 %i.ac, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec892, 3                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ah
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph890
  %index894 = phi i64 [ 0, %vector.ph890 ], [ %index.next899, %vector.body893 ] ; 2 uses
  %i.ak = shl i64 %index894, 3                    ; 2 uses
  %next.gep895 = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep896 = getelementptr i8, ptr %i.l, i64 %i.ak ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.al = getelementptr i8, ptr %next.gep896, i64 16
  %wide.load897 = load <2 x i64>, ptr %next.gep896, align 8, !tbaa !43, !alias.scope !1068, !noalias !1063
  %wide.load898 = load <2 x i64>, ptr %i.al, align 8, !tbaa !43, !alias.scope !1068, !noalias !1063
  %i.am = getelementptr i8, ptr %next.gep895, i64 16
  store <2 x i64> %wide.load897, ptr %next.gep895, align 8, !tbaa !43, !alias.scope !1071, !noalias !1068
  store <2 x i64> %wide.load898, ptr %i.am, align 8, !tbaa !43, !alias.scope !1071, !noalias !1068
  %i.an = getelementptr i8, ptr %next.gep896, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep896, align 8, !tbaa !43, !alias.scope !1068, !noalias !1063
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !43, !alias.scope !1068, !noalias !1063
  %index.next899 = add nuw i64 %index894, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next899, %n.vec892
  br i1 %i.ao, label %middle.block900, label %vector.body893, !llvm.loop !1073

middle.block900:                                  ; preds = %vector.body893
  %cmp.n901 = icmp eq i64 %i.ac, %n.vec892
  br i1 %cmp.n901, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader904

.lr.ph.i.i.i.i.i.i.i.preheader904:                ; preds = %vector.memcheck882, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block900
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck882 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block900 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck882 ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block900 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader904, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader904 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader904 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !1066, !noalias !1063
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !1063, !noalias !1066
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !1066, !noalias !1063
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1074

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block900, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ai, %middle.block900 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.l) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.w, ptr %2, align 8, !tbaa !70
  store ptr %i.as, ptr %i.f, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.h, align 8, !tbaa !450
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !1012
  invoke void @_ZN6duckdb11BindContext28GenerateAllColumnExpressionsERNS_14StarExpressionERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.au, ptr noundef nonnull align 8 dereferenceable(265) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr null, ptr %8, align 8, !tbaa !1075
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !1012 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.ga, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !545, !nonnull !40, !align !41
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !120
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !51
  store i8 0, ptr %i.bb, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bd, ptr %11, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bd, ptr noundef nonnull align 1 dereferenceable(14) @.str.106, i64 14, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 14, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 30
  store i8 0, ptr %i.bf, align 2, !tbaa !119
  invoke void @_ZN6duckdb19TableFunctionBinderC1ERNS_6BinderERNS_13ClientContextENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(169) %9, ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(512) %i.ba, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bg = load ptr, ptr %11, align 8, !tbaa !55   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bd
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Binder20ExpandStarExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEE:bb.a
bb.ec:                                            ; preds = %bb.dq
  %i.ml = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.ed unwind label %bb.ee     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  %i.mm = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  store ptr %i.mm, ptr %43, align 8, !tbaa !1103
  %i.mn = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  store i64 1, ptr %i.mn, align 8, !tbaa !1105
  %i.mo = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %43, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mp, align 8, !tbaa !535
  %i.mq = getelementptr inbounds nuw i8, ptr %43, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i8 0, i64 16, i1 false)
  %i.mr = load ptr, ptr %i.ml, align 8, !tbaa !87 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !87 ; 2 uses
  %.not534591 = icmp eq ptr %i.mr, %i.mt
  br i1 %.not534591, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ed
  %i.mu = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %46, i64 32
  br label %bb.ef

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit, %bb.ed
  %i.mx = load ptr, ptr %7, align 8, !tbaa !449   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !449 ; 2 uses
  %.not535593 = icmp eq ptr %i.mx, %i.mz
  br i1 %.not535593, label %._crit_edge597, label %.lr.ph596

.lr.ph596:                                        ; preds = %._crit_edge
  %i.na = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.et

bb.ee:                                            ; preds = %bb.ec
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ef:                                            ; preds = %.lr.ph, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit
  %.sroa.0487.0592 = phi ptr [ %i.mr, %.lr.ph ], [ %i.of, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0487.0592, i64 24
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !411, !range !82, !noundef !40
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.nj = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.nk = load ptr, ptr %i.c, align 8, !tbaa !1012
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %45)
          to label %bb.eh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6duckdb15BinderExceptionC2IJEEERKNS_16ParsedExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, ptr noundef nonnull align 8 dereferenceable(56) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  invoke void @__cxa_throw(ptr nonnull %i.nj, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.il unwind label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread: ; preds = %bb.eg
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0115 = phi i1 [ false, %bb.ei ], [ true, %bb.eh ] ; 2 uses
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nn = load ptr, ptr %44, align 8, !tbaa !55   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.np = icmp eq ptr %i.nn, %i.no
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.ej
  call void @_ZdlPv(ptr noundef %i.nn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br i1 %.0115, label %bb.ek, label %bb.fr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br i1 %.0115, label %bb.ek, label %bb.fr

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %.pn130515 = phi { ptr, i32 } [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.thread ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ]
  call void @__cxa_free_exception(ptr %i.nj) #23
  br label %bb.fr

bb.el:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.nq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0487.0592)
          to label %bb.em unwind label %bb.eq     ; 2 uses

bb.em:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  store ptr %i.mu, ptr %46, align 8, !tbaa !120, !alias.scope !1106
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !55, !noalias !1106 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !51, !noalias !1106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1106
  store i64 %i.nt, ptr %i.b, align 8, !tbaa !7, !noalias !1106
  %i.nu = icmp ugt i64 %i.nt, 15
  br i1 %i.nu, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.em
  %i.nv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc318 unwind label %bb.er ; 2 uses

.noexc318:                                        ; preds = %.noexc.i.i.i
  store ptr %i.nv, ptr %46, align 8, !tbaa !55, !alias.scope !1106
  %i.nw = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !1106
  store i64 %i.nw, ptr %i.mu, align 8, !tbaa !119, !alias.scope !1106
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc318, %bb.em
  %i.nx = phi ptr [ %i.nv, %.noexc318 ], [ %i.mu, %bb.em ] ; 2 uses
  switch i64 %i.nt, label %bb.eo [
    i64 1, label %bb.en
    i64 0, label %bb.ep
  ]

bb.en:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ny = load i8, ptr %i.nr, align 1, !tbaa !119
  store i8 %i.ny, ptr %i.nx, align 1, !tbaa !119
  br label %bb.ep

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nx, ptr align 1 %i.nr, i64 %i.nt, i1 false)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %._crit_edge.i.i.i.i
  %i.nz = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !1106 ; 2 uses
  store i64 %i.nz, ptr %i.mv, align 8, !tbaa !51, !alias.scope !1106
  %i.oa = load ptr, ptr %46, align 8, !tbaa !55, !alias.scope !1106
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nz
  store i8 0, ptr %i.ob, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1106
  store i8 0, ptr %i.mw, align 8, !tbaa !1109, !alias.scope !1106
  %i.oc = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS6_IS5_bEEEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %43, ptr noundef nonnull align 8 dereferenceable(33) %46)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE6insertIS9_IS5_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit unwind label %bb.es ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE6insertIS9_IS5_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit: ; preds = %bb.ep
  %i.od = load ptr, ptr %46, align 8, !tbaa !55   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.mu
  br i1 %i.oe, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE6insertIS9_IS5_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit
  call void @_ZdlPv(ptr noundef %i.od) #25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE6insertIS9_IS5_bEEENSt9enable_ifIXsr16is_constructibleISB_OT_EE5valueES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEE4typeESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0487.0592, i64 64 ; 2 uses
  %.not534 = icmp eq ptr %i.of, %i.mt
  br i1 %.not534, label %._crit_edge, label %bb.ef

bb.eq:                                            ; preds = %bb.el
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322

bb.er:                                            ; preds = %.noexc.i.i.i
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322

bb.es:                                            ; preds = %bb.ep
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %46, align 8, !tbaa !55   ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.mu
  br i1 %i.ok, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320: ; preds = %bb.es
  call void @_ZdlPv(ptr noundef %i.oj) #25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322: ; preds = %bb.es, %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320, %bb.eq
  %.pn127.pn = phi { ptr, i32 } [ %i.og, %bb.eq ], [ %i.oh, %bb.er ], [ %i.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320 ], [ %i.oi, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  br label %bb.fr

._crit_edge597:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, %._crit_edge
  %i.ol = phi ptr [ null, %._crit_edge ], [ %i.rt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ]
  %i.om = phi ptr [ null, %._crit_edge ], [ %i.ru, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ]
  %i.on = load ptr, ptr %i.mo, align 8, !tbaa !1111 ; 2 uses
  %.not536598 = icmp eq ptr %i.on, null
  br i1 %.not536598, label %._crit_edge602, label %.lr.ph601

bb.et:                                            ; preds = %.lr.ph596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353
  %i.oo = phi ptr [ null, %.lr.ph596 ], [ %i.rt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ] ; 10 uses
  %i.op = phi ptr [ null, %.lr.ph596 ], [ %i.ru, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ] ; 8 uses
  %.sroa.0483.0594 = phi ptr [ %i.mx, %.lr.ph596 ], [ %i.rx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.oq = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0483.0594)
          to label %bb.eu unwind label %bb.fi     ; 4 uses

bb.eu:                                            ; preds = %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load i8, ptr %i.or, align 8, !tbaa !106, !noalias !1112
  %i.ot = icmp eq i8 %i.os, -53
  br i1 %i.ot, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.ou = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb14BaseExpression4CastINS_19ColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.oq)
          to label %.noexc323 unwind label %bb.fi

.noexc323:                                        ; preds = %bb.ev
  %i.ov = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb19ColumnRefExpression13GetColumnNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.ou)
          to label %.noexc324 unwind label %bb.fi ; 2 uses

.noexc324:                                        ; preds = %.noexc323
  store ptr %i.na, ptr %47, align 8, !tbaa !120, !alias.scope !1112
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !55 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !51 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1112
  store i64 %i.oy, ptr %i.a, align 8, !tbaa !7, !noalias !1112
  %i.oz = icmp ugt i64 %i.oy, 15
  br i1 %i.oz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc324
  %i.pa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc325 unwind label %bb.fi ; 2 uses

.noexc325:                                        ; preds = %.noexc.i.i
  store ptr %i.pa, ptr %47, align 8, !tbaa !55, !alias.scope !1112
  %i.pb = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !1112
  store i64 %i.pb, ptr %i.na, align 8, !tbaa !119, !alias.scope !1112
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc325, %.noexc324
  %i.pc = phi ptr [ %i.pa, %.noexc325 ], [ %i.na, %.noexc324 ] ; 2 uses
  switch i64 %i.oy, label %bb.ex [
    i64 1, label %bb.ew
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ew:                                            ; preds = %._crit_edge.i.i.i
  %i.pd = load i8, ptr %i.ow, align 1, !tbaa !119
  store i8 %i.pd, ptr %i.pc, align 1, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ex:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pc, ptr align 1 %i.ow, i64 %i.oy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ex, %bb.ew, %._crit_edge.i.i.i
  %i.pe = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !1112 ; 2 uses
  store i64 %i.pe, ptr %i.nb, align 8, !tbaa !51, !alias.scope !1112
  %i.pf = load ptr, ptr %47, align 8, !tbaa !55, !alias.scope !1112
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pe
  store i8 0, ptr %i.pg, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1112
  br label %_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit

bb.ey:                                            ; preds = %bb.eu
  %i.ph = load ptr, ptr %i.oq, align 8, !tbaa !83, !noalias !1112
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %i.pj = load ptr, ptr %i.pi, align 8, !noalias !1112
  invoke void %i.pj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(56) %i.oq)
          to label %_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit unwind label %bb.fi, !inline_history !1027

_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.ey
  %i.pk = load i64, ptr %i.nc, align 8, !tbaa !1115
  %.not.not.i.i = icmp eq i64 %i.pk, 0
  br i1 %.not.not.i.i, label %.preheader560, label %bb.fa

.preheader560:                                    ; preds = %_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit, %.noexc329
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %.noexc329 ], [ %i.mo, %_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !113 ; 4 uses
  %.not.i.i328 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i328, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %.preheader560
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.pm = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(48) %i.pl)
          to label %.noexc329 unwind label %.loopexit561

.noexc329:                                        ; preds = %bb.ez
  br i1 %i.pm, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread517, label %.preheader560, !llvm.loop !1116

bb.fa:                                            ; preds = %_ZN6duckdb21GetColumnsStringValueB5cxx11ERNS_16ParsedExpressionE.exit
  %i.pn = invoke noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %.noexc330 unwind label %.loopexit.split-lp562.loopexit.split-lp.loopexit ; 2 uses

.noexc330:                                        ; preds = %bb.fa
  %i.po = load i64, ptr %i.mn, align 8, !tbaa !1105
  %i.pp = urem i64 %i.pn, %i.po                   ; 2 uses
  %i.pq = load ptr, ptr %43, align 8, !tbaa !1103
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pp
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i327 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i327, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, label %bb.fb

bb.fb:                                            ; preds = %.noexc330
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !113 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !125
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fd, %bb.fb
  %i.pu = phi i64 [ %.pre.i.i.i.i, %bb.fb ], [ %i.qb, %bb.fd ]
  %.015.i.i.i.i = phi ptr [ %i.ps, %bb.fb ], [ %.0.i.i.i.i, %bb.fd ]
  %.0.i.i.i.i = phi ptr [ %i.pt, %bb.fb ], [ %i.py, %bb.fd ] ; 3 uses
  %i.pv = icmp eq i64 %i.pn, %i.pu
  br i1 %i.pv, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i: ; preds = %bb.fc
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.px = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(48) %i.pw)
          to label %.noexc331 unwind label %.loopexit.split-lp562.loopexit

.noexc331:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i
  br i1 %i.px, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc331, %bb.fc
  %i.py = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !113 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.py, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i
  %i.pz = load i64, ptr %i.mn, align 8, !tbaa !1105
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 48
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !125 ; 2 uses
  %i.qc = urem i64 %i.qb, %i.pz
  %.not19.i.i.i.i = icmp eq i64 %i.qc, %i.pp
  br i1 %.not19.i.i.i.i, label %bb.fc, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, !llvm.loop !1117

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit: ; preds = %.noexc331
  %i.qd = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %.not537 = icmp eq ptr %i.qd, null
  br i1 %.not537, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread517

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread517: ; preds = %.noexc329, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit
  %.sroa.06.1.i.i519 = phi ptr [ %i.qd, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit ], [ %.sroa.06.0.i.i, %.noexc329 ]
  %.not.i.i332 = icmp eq ptr %i.op, %i.oo
  br i1 %.not.i.i332, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread517
  %i.qe = load i64, ptr %.sroa.0483.0594, align 8, !tbaa !43
  store i64 %i.qe, ptr %i.op, align 8, !tbaa !43
  store ptr null, ptr %.sroa.0483.0594, align 8, !tbaa !43
  %i.qf = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  store ptr %i.qf, ptr %i.nd, align 8, !tbaa !67
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347

bb.ff:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread517
  %58 = load ptr, ptr %42, align 8, !tbaa !70     ; 10 uses
  %i.qg = ptrtoint ptr %i.oo to i64               ; 3 uses
  %i.qh = ptrtoint ptr %58 to i64                 ; 3 uses
  %i.qi = sub i64 %i.qg, %i.qh                    ; 3 uses
  %i.qj = icmp eq i64 %i.qi, 9223372036854775800
  br i1 %i.qj, label %bb.fg, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i333

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.150) #24
          to label %.noexc345 unwind label %.loopexit.split-lp562.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %bb.fg
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i333: ; preds = %bb.ff
  %i.qk = ashr exact i64 %i.qi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i334 = call i64 @llvm.umax.i64(i64 %i.qk, i64 1)
  %i.ql = add nsw i64 %.sroa.speculated.i.i.i.i334, %i.qk ; 2 uses
  %i.qm = icmp ult i64 %i.ql, %i.qk
  %i.qn = call i64 @llvm.umin.i64(i64 %i.ql, i64 1152921504606846975)
  %i.qo = select i1 %i.qm, i64 1152921504606846975, i64 %i.qn ; 3 uses
  %.not.i.i.i.i335 = icmp ne i64 %i.qo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i335)
  %i.qp = shl nuw nsw i64 %i.qo, 3
  %i.qq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #26
          to label %.noexc346 unwind label %.loopexit.split-lp562.loopexit.split-lp.loopexit ; 10 uses

.noexc346:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i333
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qi
  %i.qs = load i64, ptr %.sroa.0483.0594, align 8, !tbaa !43
  store i64 %i.qs, ptr %i.qr, align 8, !tbaa !43
  store ptr null, ptr %.sroa.0483.0594, align 8, !tbaa !43
  %.not10.i.i.i.i.i.i.i336 = icmp eq ptr %58, %i.oo
  br i1 %.not10.i.i.i.i.i.i.i336, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341, label %.lr.ph.i.i.i.i.i.i.i337.preheader

.lr.ph.i.i.i.i.i.i.i337.preheader:                ; preds = %.noexc346
  %i.qt = sub i64 %i.qg, %i.qh
  %i.qu = add i64 %i.qt, -8                       ; 2 uses
  %i.qv = lshr i64 %i.qu, 3
  %i.qw = add nuw nsw i64 %i.qv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.qu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i337.preheader920, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i337.preheader
  %scevgep = getelementptr i8, ptr %i.qq, i64 8
  %i.qx = add i64 %i.qg, -8
  %i.qy = sub i64 %i.qx, %i.qh
  %i.qz = and i64 %i.qy, -8                       ; 2 uses
  %scevgep806 = getelementptr i8, ptr %scevgep, i64 %i.qz
  %scevgep807 = getelementptr i8, ptr %58, i64 8
  %scevgep808 = getelementptr i8, ptr %scevgep807, i64 %i.qz
  %bound0 = icmp ult ptr %i.qq, %scevgep808
  %bound1 = icmp ult ptr %58, %scevgep806
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i337.preheader920, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qw, 4611686018427387900     ; 3 uses
  %i.ra = shl i64 %n.vec, 3                       ; 2 uses
  %i.rb = getelementptr i8, ptr %i.qq, i64 %i.ra  ; 2 uses
  %i.rc = getelementptr i8, ptr %58, i64 %i.ra
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qq, i64 %i.rd ; 2 uses
  %next.gep809 = getelementptr i8, ptr %58, i64 %i.rd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.re = getelementptr i8, ptr %next.gep809, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep809, align 8, !tbaa !43, !alias.scope !1123, !noalias !1118
  %wide.load810 = load <2 x i64>, ptr %i.re, align 8, !tbaa !43, !alias.scope !1123, !noalias !1118
  %i.rf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !1126, !noalias !1123
  store <2 x i64> %wide.load810, ptr %i.rf, align 8, !tbaa !43, !alias.scope !1126, !noalias !1123
  %i.rg = getelementptr i8, ptr %next.gep809, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep809, align 8, !tbaa !43, !alias.scope !1123, !noalias !1118
  store <2 x ptr> splat (ptr null), ptr %i.rg, align 8, !tbaa !43, !alias.scope !1123, !noalias !1118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rh = icmp eq i64 %index.next, %n.vec
  br i1 %i.rh, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341, label %.lr.ph.i.i.i.i.i.i.i337.preheader920

.lr.ph.i.i.i.i.i.i.i337.preheader920:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i337.preheader, %middle.block
  %.012.i.i.i.i.i.i.i338.ph = phi ptr [ %i.qq, %vector.memcheck ], [ %i.qq, %.lr.ph.i.i.i.i.i.i.i337.preheader ], [ %i.rb, %middle.block ]
  %.0911.i.i.i.i.i.i.i339.ph = phi ptr [ %58, %vector.memcheck ], [ %58, %.lr.ph.i.i.i.i.i.i.i337.preheader ], [ %i.rc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i337

.lr.ph.i.i.i.i.i.i.i337:                          ; preds = %.lr.ph.i.i.i.i.i.i.i337.preheader920, %.lr.ph.i.i.i.i.i.i.i337
  %.012.i.i.i.i.i.i.i338 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i.i.i337 ], [ %.012.i.i.i.i.i.i.i338.ph, %.lr.ph.i.i.i.i.i.i.i337.preheader920 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i339 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i337 ], [ %.0911.i.i.i.i.i.i.i339.ph, %.lr.ph.i.i.i.i.i.i.i337.preheader920 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.ri = load i64, ptr %.0911.i.i.i.i.i.i.i339, align 8, !tbaa !43, !alias.scope !1121, !noalias !1118
  store i64 %i.ri, ptr %.012.i.i.i.i.i.i.i338, align 8, !tbaa !43, !alias.scope !1118, !noalias !1121
  store ptr null, ptr %.0911.i.i.i.i.i.i.i339, align 8, !tbaa !43, !alias.scope !1121, !noalias !1118
  %i.rj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i339, i64 8 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i338, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i340 = icmp eq ptr %i.rj, %i.oo
  br i1 %.not.i.i.i.i.i.i.i340, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341, label %.lr.ph.i.i.i.i.i.i.i337, !llvm.loop !1129

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341: ; preds = %.lr.ph.i.i.i.i.i.i.i337, %middle.block, %.noexc346
  %.0.lcssa.i.i.i.i.i.i.i342 = phi ptr [ %i.qq, %.noexc346 ], [ %i.rb, %middle.block ], [ %i.rk, %.lr.ph.i.i.i.i.i.i.i337 ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i342, i64 8 ; 2 uses
  %.not.i23.i.i.i343 = icmp eq ptr %58, null
  br i1 %.not.i23.i.i.i343, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341
  call void @_ZdlPv(ptr noundef nonnull %58) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344: ; preds = %bb.fh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i341
  store ptr %i.qq, ptr %42, align 8, !tbaa !70
  store ptr %i.rl, ptr %i.nd, align 8, !tbaa !67
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qo ; 2 uses
  store ptr %i.rm, ptr %i.ne, align 8, !tbaa !450
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344, %bb.fe
  %i.rn = phi ptr [ %i.rm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344 ], [ %i.oo, %bb.fe ]
  %i.ro = phi ptr [ %i.rl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i344 ], [ %i.qf, %bb.fe ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i519, i64 40
  store i8 1, ptr %i.rp, align 8, !tbaa !1130
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread

bb.fi:                                            ; preds = %bb.ey, %.noexc.i.i, %.noexc323, %bb.ev, %bb.et
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

.loopexit561:                                     ; preds = %bb.ez
  %lpad.loopexit563 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp562

.loopexit.split-lp562.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit566 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp562

.loopexit.split-lp562.loopexit.split-lp.loopexit: ; preds = %bb.fa, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i333
  %lpad.loopexit570 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp562

.loopexit.split-lp562.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fg
  %lpad.loopexit.split-lp571 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp562

.loopexit.split-lp562:                            ; preds = %.loopexit.split-lp562.loopexit, %.loopexit.split-lp562.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp562.loopexit.split-lp.loopexit, %.loopexit561
  %lpad.phi565 = phi { ptr, i32 } [ %lpad.loopexit563, %.loopexit561 ], [ %lpad.loopexit566, %.loopexit.split-lp562.loopexit ], [ %lpad.loopexit570, %.loopexit.split-lp562.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp571, %.loopexit.split-lp562.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.rr = load ptr, ptr %47, align 8, !tbaa !55   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.na
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %.loopexit.split-lp562
  call void @_ZdlPv(ptr noundef %i.rr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i, %bb.fd, %.preheader560, %.noexc330, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit
  %i.rt = phi ptr [ %i.oo, %.preheader560 ], [ %i.oo, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit ], [ %i.oo, %.noexc330 ], [ %i.rn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347 ], [ %i.oo, %bb.fd ], [ %i.oo, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i ] ; 2 uses
  %i.ru = phi ptr [ %i.op, %.preheader560 ], [ %i.op, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit ], [ %i.op, %.noexc330 ], [ %i.ro, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit347 ], [ %i.op, %bb.fd ], [ %i.op, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i ] ; 2 uses
  %i.rv = load ptr, ptr %47, align 8, !tbaa !55   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.na
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread
  call void @_ZdlPv(ptr noundef %i.rv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEE4findERSA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0483.0594, i64 8 ; 2 uses
  %.not535 = icmp eq ptr %i.rx, %i.mz
  br i1 %.not535, label %._crit_edge597, label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %.loopexit.split-lp562, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.fi
  %.pn125 = phi { ptr, i32 } [ %i.rq, %bb.fi ], [ %lpad.phi565, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %lpad.phi565, %.loopexit.split-lp562 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %bb.fr

._crit_edge602:                                   ; preds = %bb.fq, %._crit_edge597
  %i.ry = load ptr, ptr %7, align 8, !tbaa !70    ; 4 uses
  %i.rz = load ptr, ptr %i.my, align 8, !tbaa !67 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %59 = load ptr, ptr %42, align 8, !tbaa !70
  store ptr %59, ptr %7, align 8, !tbaa !70
  store ptr %i.om, ptr %i.my, align 8, !tbaa !67
  store ptr %i.ol, ptr %i.sa, align 8, !tbaa !450
  %.not4.i.i.i.i.i.i354 = icmp eq ptr %i.ry, %i.rz
  br i1 %.not4.i.i.i.i.i.i354, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i361, label %.lr.ph.i.i.i.i.i.i355

.lr.ph.i.i.i.i.i.i355:                            ; preds = %._crit_edge602, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359
  %.05.i.i.i.i.i.i356 = phi ptr [ %i.sf, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359 ], [ %i.ry, %._crit_edge602 ] ; 2 uses
  %i.sb = load ptr, ptr %.05.i.i.i.i.i.i356, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i357 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i.i.i.i.i.i357, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i358

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i358: ; preds = %.lr.ph.i.i.i.i.i.i355
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !83
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(56) %i.sb) #23, !inline_history !930
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i358, %.lr.ph.i.i.i.i.i.i355
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i356, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i360 = icmp eq ptr %i.sf, %i.rz
  br i1 %.not.i.i.i.i.i.i360, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i361, label %.lr.ph.i.i.i.i.i.i355, !llvm.loop !448

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i361: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i359, %._crit_edge602
  %.not.i.i1.i.i.i.i362 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i1.i.i.i.i362, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i361
  call void @_ZdlPv(ptr noundef nonnull %i.ry) #25
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363

_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i361, %bb.fj
  %i.sg = load ptr, ptr %i.mo, align 8, !tbaa !1111 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.sh, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.sg, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363 ] ; 4 uses
  %i.sh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !55 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.sj) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #25
  %.not.i.i.i.i364 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i.i364, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1132

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit363
  %i.sm = load ptr, ptr %43, align 8, !tbaa !1103
  %i.sn = load i64, ptr %i.mn, align 8, !tbaa !1105
  %i.so = shl i64 %i.sn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sm, i8 0, i64 %i.so, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  %i.sp = load ptr, ptr %43, align 8, !tbaa !1103 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.mm
  br i1 %i.sq, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit376, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.sp) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit376

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit376: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.fx

.lr.ph601:                                        ; preds = %._crit_edge597, %bb.fq
  %.sroa.0476.0599 = phi ptr [ %i.tb, %bb.fq ], [ %i.on, %._crit_edge597 ] ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0476.0599, i64 40
  %i.ss = load i8, ptr %i.sr, align 8, !tbaa !1130, !range !82, !noundef !40
  %i.st = trunc nuw i8 %i.ss to i1
  br i1 %i.st, label %bb.fq, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph601
  %i.su = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.fm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.thread

bb.fm:                                            ; preds = %bb.fl
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0476.0599, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.su, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %i.sv)
          to label %bb.fn unwind label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  invoke void @__cxa_throw(ptr nonnull %i.su, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.il unwind label %bb.fo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.thread: ; preds = %bb.fl
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.059 = phi i1 [ false, %bb.fn ], [ true, %bb.fm ] ; 2 uses
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sy = load ptr, ptr %48, align 8, !tbaa !55   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %bb.fo
  call void @_ZdlPv(ptr noundef %i.sy) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br i1 %.059, label %bb.fp, label %bb.fr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br i1 %.059, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
  %.pn123523 = phi { ptr, i32 } [ %i.sw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379.thread ], [ %i.sx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %i.sx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377 ]
  call void @__cxa_free_exception(ptr %i.su) #23
  br label %bb.fr

bb.fq:                                            ; preds = %.lr.ph601
  %i.tb = load ptr, ptr %.sroa.0476.0599, align 8, !tbaa !113 ; 2 uses
  %.not536 = icmp eq ptr %i.tb, null
  br i1 %.not536, label %._crit_edge602, label %.lr.ph601

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  %.pn130.pn.pn = phi { ptr, i32 } [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %.pn130515, %bb.ek ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %.pn127.pn, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit322 ], [ %.pn123523, %bb.fp ], [ %i.sx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %i.sx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377 ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %.body

bb.fs:                                            ; preds = %bb.ag, %bb.dn
  %i.tc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.td = load ptr, ptr %i.c, align 8, !tbaa !1012
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @.str.116, ptr noundef nonnull align 1 dereferenceable(1) %51)
          to label %bb.ft unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN6duckdb15BinderExceptionC2IJEEERKNS_16ParsedExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, ptr noundef nonnull align 8 dereferenceable(56) %i.td, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  invoke void @__cxa_throw(ptr nonnull %i.tc, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.il unwind label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread: ; preds = %bb.fs
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.057 = phi i1 [ false, %bb.fu ], [ true, %bb.ft ] ; 2 uses
  %i.tf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tg = load ptr, ptr %50, align 8, !tbaa !55   ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ti = icmp eq ptr %i.tg, %i.th
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.fv
  call void @_ZdlPv(ptr noundef %i.tg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br i1 %.057, label %bb.fw, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br i1 %.057, label %bb.fw, label %.body

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %.pn121526 = phi { ptr, i32 } [ %i.te, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382.thread ], [ %i.tf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %i.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ]
  call void @__cxa_free_exception(ptr %i.tc) #23
  br label %.body

bb.fx:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit376, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.tj = load ptr, ptr %13, align 8, !tbaa !95   ; 3 uses
  %.not.i383 = icmp eq ptr %i.tj, null
  br i1 %.not.i383, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.fx
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !83
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(88) %i.tj) #23, !inline_history !132
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
end_hunk_2
