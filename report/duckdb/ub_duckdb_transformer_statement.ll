Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_transformer_statement?download=true
inline.NumInlined: 9726
inline.NumDeleted: 5291
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !268    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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

_ZN6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1447 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !638    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !285

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !268    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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

_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1448 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !285

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.182, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !268    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb11Transformer19TransformStringListB5cxx11EPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind writable sret(%"class.duckdb::vector") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

declare void @_ZN6duckdb10ColumnList9AddColumnENS_16ColumnDefinitionE(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef) local_unnamed_addr #4

declare void @_ZN6duckdb16ColumnDefinitionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer24TransformIndexParametersERN17duckdb_libpgquery6PGListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.62") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !1466 {
bb.a:
  %4 = alloca %"class.duckdb::optional_ptr.736", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %9 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr.110", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.019.in98 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.01999 = load ptr, ptr %.019.in98, align 8, !tbaa !254 ; 2 uses
  %.not100 = icmp eq ptr %.01999, null
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %i.c = phi ptr [ null, %.lr.ph ], [ %i.eb, %bb.ai ] ; 6 uses
  %i.d = phi ptr [ null, %.lr.ph ], [ %i.ec, %bb.ai ] ; 5 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.ed, %bb.ai ] ; 6 uses
  %.019101 = phi ptr [ %.01999, %.lr.ph ], [ %.019, %bb.ai ] ; 2 uses
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ee, %bb.ai ] ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = load ptr, ptr %.019101, align 8, !tbaa !255
  store ptr %i.g, ptr %4, align 8
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGIndexElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %4, align 8, !tbaa !652
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !656
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %0, align 8
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ak unwind label %bb.h

bb.g:                                             ; preds = %bb.q, %bb.j, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.010 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !268    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.010, label %bb.i, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.010, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2975 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #23
  br label %bb.aj

bb.j:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGIndexElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %4, align 8, !tbaa !652
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !657
  %.not21 = icmp eq ptr %i.t, null
  br i1 %.not21, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.f, ptr %0, align 8
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ak unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread: ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !268    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0, label %bb.p, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn2778 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ]
  call void @__cxa_free_exception(ptr %i.u) #23
  br label %bb.aj

bb.q:                                             ; preds = %bb.k
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGIndexElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.g

bb.r:                                             ; preds = %bb.q
  %i.aa = load ptr, ptr %4, align 8, !tbaa !652
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !658
  %.not22 = icmp eq ptr %i.ac, null
  br i1 %.not22, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGIndexElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ad = load ptr, ptr %4, align 8, !tbaa !652
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.238") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr %9, align 8, !tbaa !421   ; 5 uses
  store ptr null, ptr %9, align 8, !tbaa !421
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %bb.v, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.u
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !362
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !359
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ai = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.aj = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  store ptr %i.f, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #25
          to label %.noexc38 unwind label %.loopexit ; 11 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.af to i64
  store i64 %i.au, ptr %i.at, align 8, !tbaa !362
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc38
  %i.av = add i64 %i.ai, -8
  %i.aw = sub i64 %i.av, %i.aj                    ; 3 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.aw, 56
  br i1 %min.iters.check174, label %.lr.ph.i.i.i.i.i.i.i.preheader193, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.az = and i64 %i.aw, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.f, i64 %i.ba
  %bound0176 = icmp ult ptr %i.as, %i.bc
  %bound1177 = icmp ult ptr %i.f, %i.bb
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %.lr.ph.i.i.i.i.i.i.i.preheader193, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck175
  %n.vec180 = and i64 %i.ay, 4611686018427387900  ; 3 uses
  %i.bd = shl i64 %n.vec180, 3                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.f, i64 %i.bd
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.bg = shl i64 %index182, 3                    ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.as, i64 %i.bg ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.f, i64 %i.bg ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.bh = getelementptr i8, ptr %next.gep184, i64 16 ; 2 uses
  %wide.load185 = load <2 x i64>, ptr %next.gep184, align 8, !tbaa !362, !alias.scope !1469
  %wide.load186 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !362, !alias.scope !1469
  %i.bi = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x i64> %wide.load185, ptr %next.gep183, align 8, !tbaa !362, !alias.scope !1470, !noalias !1471
  store <2 x i64> %wide.load186, ptr %i.bi, align 8, !tbaa !362, !alias.scope !1470, !noalias !1471
  store <2 x ptr> splat (ptr null), ptr %next.gep184, align 8, !tbaa !362, !alias.scope !1469
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !362, !alias.scope !1469
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.bj, label %middle.block188, label %vector.body181, !llvm.loop !1455

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.ay, %n.vec180
  br i1 %cmp.n189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader193

.lr.ph.i.i.i.i.i.i.i.preheader193:                ; preds = %vector.memcheck175, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block188
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck175 ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block188 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.f, %vector.memcheck175 ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block188 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader193, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader193 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader193 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !362, !alias.scope !1468
  store i64 %i.bk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !362, !alias.scope !1467
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !362, !alias.scope !1468
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1456

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block188, %.noexc38
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc38 ], [ %i.be, %middle.block188 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.f) #26
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.x
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !359
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq ; 5 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !360
  %.pre = load ptr, ptr %9, align 8, !tbaa !421   ; 3 uses
  %.not.i39 = icmp eq ptr %.pre, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bp = load ptr, ptr %.pre, align 8, !tbaa !275
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(80) %.pre) #23, !inline_history !14
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  %i.bs = phi ptr [ %i.f, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread ], [ %i.as, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.as, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i ]
  %i.bt = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread ], [ %i.bn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.bn, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i ]
  %i.bu = phi ptr [ %i.d, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread ], [ %i.bo, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.bo, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i ]
  %i.bv = phi ptr [ %i.c, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread ], [ %i.bo, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.bo, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ai

bb.y:                                             ; preds = %bb.s, %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i40 = icmp eq ptr %i.af, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41: ; preds = %bb.z
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !275
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %i.af) #23, !inline_history !5
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %bb.z, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41
  %i.ca = load ptr, ptr %9, align 8, !tbaa !421   ; 3 uses
  %.not.i43 = icmp eq ptr %i.ca, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i44: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !275
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(80) %i.ca) #23, !inline_history !14
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i44, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, %bb.y
  %.pn24 = phi { ptr, i32 } [ %i.bw, %bb.y ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42 ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

bb.aa:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery11PGIndexElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %4, align 8, !tbaa !652
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1472
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.110") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr %i.cg)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i48 = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i48, label %bb.ad, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread: ; preds = %bb.ac
  %i.ch = load i64, ptr %10, align 8, !tbaa !362
  store i64 %i.ch, ptr %i.e, align 8, !tbaa !362
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !359
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66

bb.ad:                                            ; preds = %bb.ac
  %i.cj = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.ck = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i49

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.f, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc61 unwind label %.loopexit.split-lp81

.noexc61:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i49: ; preds = %bb.ad
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i50 = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i50, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #25
          to label %.noexc62 unwind label %.loopexit80 ; 11 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  %i.cv = load i64, ptr %10, align 8, !tbaa !362
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !362
  store ptr null, ptr %10, align 8, !tbaa !362
  %.not10.i.i.i.i.i.i.i52 = icmp eq ptr %i.f, %i.c
  br i1 %.not10.i.i.i.i.i.i.i52, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57, label %.lr.ph.i.i.i.i.i.i.i53.preheader

.lr.ph.i.i.i.i.i.i.i53.preheader:                 ; preds = %.noexc62
  %i.cw = add i64 %i.cj, -8
  %i.cx = sub i64 %i.cw, %i.ck                    ; 3 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cx, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i53.preheader192, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i53.preheader
  %i.da = and i64 %i.cx, -8
  %i.db = add i64 %i.da, 8                        ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ct, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.f, i64 %i.db
  %bound0 = icmp ult ptr %i.ct, %i.dd
  %bound1 = icmp ult ptr %i.f, %i.dc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i53.preheader192, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, 4611686018427387900     ; 3 uses
  %i.de = shl i64 %n.vec, 3                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.ct, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.f, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dh ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.f, i64 %i.dh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.di = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep163, align 8, !tbaa !362, !alias.scope !1475
  %wide.load164 = load <2 x i64>, ptr %i.di, align 8, !tbaa !362, !alias.scope !1475
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !362, !alias.scope !1476, !noalias !1477
  store <2 x i64> %wide.load164, ptr %i.dj, align 8, !tbaa !362, !alias.scope !1476, !noalias !1477
  store <2 x ptr> splat (ptr null), ptr %next.gep163, align 8, !tbaa !362, !alias.scope !1475
  store <2 x ptr> splat (ptr null), ptr %i.di, align 8, !tbaa !362, !alias.scope !1475
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57, label %.lr.ph.i.i.i.i.i.i.i53.preheader192

.lr.ph.i.i.i.i.i.i.i53.preheader192:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i53.preheader, %middle.block
  %.012.i.i.i.i.i.i.i54.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i53.preheader ], [ %i.df, %middle.block ]
  %.0911.i.i.i.i.i.i.i55.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i53.preheader ], [ %i.dg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i.i53:                           ; preds = %.lr.ph.i.i.i.i.i.i.i53.preheader192, %.lr.ph.i.i.i.i.i.i.i53
  %.012.i.i.i.i.i.i.i54 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i53 ], [ %.012.i.i.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i.i.i53.preheader192 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i55 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i53 ], [ %.0911.i.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i.i53.preheader192 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i.i.i55, align 8, !tbaa !362, !alias.scope !1474
  store i64 %i.dl, ptr %.012.i.i.i.i.i.i.i54, align 8, !tbaa !362, !alias.scope !1473
  store ptr null, ptr %.0911.i.i.i.i.i.i.i55, align 8, !tbaa !362, !alias.scope !1474
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i54, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.dm, %i.c
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57, label %.lr.ph.i.i.i.i.i.i.i53, !llvm.loop !1464

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57: ; preds = %.lr.ph.i.i.i.i.i.i.i53, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i.i.i.i58 = phi ptr [ %i.ct, %.noexc62 ], [ %i.df, %middle.block ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i53 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i58, i64 8 ; 3 uses
  %.not.i23.i.i.i59 = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i59, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57
  call void @_ZdlPv(ptr noundef nonnull %i.f) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i57, %bb.af
  store ptr %i.do, ptr %i.a, align 8, !tbaa !359
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr ; 3 uses
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !360
  %.pr = load ptr, ptr %10, align 8, !tbaa !362   ; 3 uses
  %.not.i64 = icmp eq ptr %.pr, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63
  %i.dq = load ptr, ptr %.pr, align 8, !tbaa !275
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #23, !inline_history !5
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65
  %i.dt = phi ptr [ %i.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread ], [ %i.dp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63 ], [ %i.dp, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65 ] ; 2 uses
  %i.du = phi ptr [ %i.ci, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread ], [ %i.do, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63 ], [ %i.do, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65 ]
  %i.dv = phi ptr [ %i.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63.thread ], [ %i.ct, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit63 ], [ %i.ct, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ai

bb.ag:                                            ; preds = %bb.aa, %bb.ab
  %i.dw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69

.loopexit80:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i49
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.ah

.loopexit.split-lp81:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp81, %.loopexit80
  %lpad.phi84 = phi { ptr, i32 } [ %lpad.loopexit82, %.loopexit80 ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp81 ] ; 2 uses
  %i.dx = load ptr, ptr %10, align 8, !tbaa !362  ; 3 uses
  %.not.i67 = icmp eq ptr %i.dx, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68: ; preds = %bb.ah
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !275
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(56) %i.dx) #23, !inline_history !5
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.ag ], [ %lpad.phi84, %bb.ah ], [ %lpad.phi84, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.eb = phi ptr [ %i.dt, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66 ], [ %i.bv, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ec = phi ptr [ %i.dt, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66 ], [ %i.bu, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ed = phi ptr [ %i.du, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66 ], [ %i.bt, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ee = phi ptr [ %i.dv, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit66 ], [ %i.bs, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.019.in = getelementptr inbounds nuw i8, ptr %.019101, i64 8
  %.019 = load ptr, ptr %.019.in, align 8, !tbaa !254 ; 2 uses
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1465

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45, %bb.g
  %.pn29.pn = phi { ptr, i32 } [ %.pn2975, %bb.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn2778, %bb.p ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn24, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit45 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit69 ], [ %i.l, %bb.g ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn29.pn

._crit_edge:                                      ; preds = %bb.ai, %bb.a
  %.lcssa88 = phi ptr [ null, %bb.a ], [ %i.ee, %bb.ai ]
  store ptr %.lcssa88, ptr %0, align 8
  ret void

bb.ak:                                            ; preds = %bb.n, %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRPcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.238") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !guid !1478 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !257    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !264
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !266
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc8 unwind label %bb.k    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i
  store ptr %i.i, ptr %3, align 8, !tbaa !268
  %i.j = load i64, ptr %i.b, align 8, !tbaa !266
  store i64 %i.j, ptr %i.e, align 8, !tbaa !255
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc8, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc8 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
end_hunk_0
