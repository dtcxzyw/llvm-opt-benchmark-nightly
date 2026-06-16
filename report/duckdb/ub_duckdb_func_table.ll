inline.NumInlined: 18938
inline.NumDeleted: 8313
begin_hunk_0_@_ZN6duckdb10AttachInfoD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(408) ptr @_ZNK6duckdb10shared_ptrINS_16AttachedDatabaseELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1826   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.142, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(448) ptr @_ZN6duckdb12DuckDBReader13GetTableEntryEv(ptr noundef nonnull align 8 dereferenceable(944) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZN6duckdb12DuckDBReader19GetAttachedDatabaseEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.c = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1828
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb16AttachedDatabase10GetCatalogEv(ptr noundef nonnull align 8 dereferenceable(408) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1837, !nonnull !114, !align !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.k = tail call ptr @_ZN6duckdb7Catalog8GetEntryINS_17TableCatalogEntryEEENS_12optional_ptrIT_Lb1EEERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_NS_15OnEntryNotFoundENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(512) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 noundef zeroext 0, i64 -1)
  %i.l = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !1876
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1828
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN6duckdb7Catalog8GetEntryINS_17TableCatalogEntryEEENS_12optional_ptrIT_Lb1EEERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_NS_15OnEntryNotFoundENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef zeroext %4, i64 %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::EntryLookupInfo", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_ptr.1120", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN6duckdb15EntryLookupInfoC1ENS_11CatalogTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = call ptr @_ZN6duckdb7Catalog8GetEntryERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_15EntryLookupInfoENS_15OnEntryNotFoundE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext %4) ; 2 uses
  store ptr %i.a, ptr %7, align 8
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.b = load ptr, ptr %7, align 8, !tbaa !1937
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1940
  %.not = icmp eq i8 %i.d, 1
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.246, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb16CatalogExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKcEEENS_17QueryErrorContextES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6duckdb17TableCatalogEntry4NameE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb16CatalogExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %8, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %.pn17, %bb.g ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %.pn16

bb.i:                                             ; preds = %bb.b
  call void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.k = load ptr, ptr %7, align 8, !tbaa !1937
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi ptr [ %i.k, %bb.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret ptr %.sroa.0.0

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb12DuckDBReader17TryInitializeScanERNS_13ClientContextERNS_24GlobalTableFunctionStateERNS_23LocalTableFunctionStateE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::TableFunction", align 8 ; 14 uses
  %5 = alloca %"struct.duckdb::ColumnIndex", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %8 = alloca %"struct.duckdb::TableFunctionInitInput", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::vector.569", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::vector.116", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::unique_ptr.559", align 8 ; 7 uses
  %12 = alloca %"class.duckdb::ThreadContext", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::ExecutionContext", align 8 ; 7 uses
  %14 = alloca %"struct.duckdb::TableFunctionInitInput", align 8 ; 10 uses
  %15 = alloca %"class.duckdb::vector.569", align 8 ; 8 uses
  %16 = alloca %"class.duckdb::vector.116", align 8 ; 7 uses
  %17 = alloca %"class.duckdb::unique_ptr.587", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !129, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !1959
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !42
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !47
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29, !inline_history !1960
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29, !inline_history !1960
  br label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit, !prof !51

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #29
  br label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1877
  %.not109 = icmp eq ptr %i.w, null
  br i1 %.not109, label %bb.j, label %bb.bj

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !1959
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 8 uses
  store ptr null, ptr %i.y, align 8, !tbaa !42
  %.not.i.i.i.i37 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i37, label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aa, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !47
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #29, !inline_history !1960
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #29, !inline_history !1960
  br label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41

bb.m:                                             ; preds = %bb.k
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i38 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39

bb.o:                                             ; preds = %bb.m
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i40 = phi i32 [ %i.ad, %bb.n ], [ %i.an, %bb.o ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i40, 1
  br i1 %i.ao, label %bb.p, label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41, !prof !51

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #29
  br label %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41

_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39, %bb.p
  %i.ap = tail call noundef nonnull align 8 dereferenceable(448) ptr @_ZN6duckdb12DuckDBReader13GetTableEntryEv(ptr noundef nonnull align 8 dereferenceable(944) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::TableFunction") align 8 %4, ptr noundef nonnull align 8 dereferenceable(448) %i.ap, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(544) %i.au, ptr noundef nonnull align 8 dereferenceable(544) %4)
          to label %.noexc unwind label %bb.ai    ; 0 uses

.noexc:                                           ; preds = %_ZN6duckdb10shared_ptrINS_23AttachedDatabaseWrapperELb1EE5resetEv.exit41
  %18 = icmp eq ptr %4, %i.au
  br i1 %18, label %_ZN6duckdb28SimpleNamedParameterFunctionaSERKS0_.exit.i, label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 208
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.ax)
          to label %_ZN6duckdb28SimpleNamedParameterFunctionaSERKS0_.exit.i unwind label %bb.ai

_ZN6duckdb28SimpleNamedParameterFunctionaSERKS0_.exit.i: ; preds = %bb.q, %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.ay, ptr noundef nonnull align 8 dereferenceable(254) %i.az, i64 254, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 520 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 528
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.be, ptr %i.ba, align 8, !tbaa !166
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i42, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb28SimpleNamedParameterFunctionaSERKS0_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bg, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !47
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29, !inline_history !1591
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29, !inline_history !1591
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.u ], [ %i.bt, %bb.v ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.w, label %bb.x, !prof !51

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.s, %_ZN6duckdb28SimpleNamedParameterFunctionaSERKS0_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13TableFunctionE, i64 16), ptr %4, align 8, !tbaa !48
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 8 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i44, label %_ZN6duckdb13TableFunctionD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bz, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !47
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !inline_history !349
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !inline_history !349
  br label %_ZN6duckdb13TableFunctionD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i45 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

bb.ac:                                            ; preds = %bb.aa
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i47 = phi i32 [ %i.cc, %bb.ab ], [ %i.cm, %bb.ac ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i47, 1
  br i1 %i.cn, label %bb.ad, label %_ZN6duckdb13TableFunctionD2Ev.exit, !prof !51

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #29, !inline_history !350
  br label %_ZN6duckdb13TableFunctionD2Ev.exit

_ZN6duckdb13TableFunctionD2Ev.exit:               ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46, %bb.ad
  call void @_ZN6duckdb28SimpleNamedParameterFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(544) %4) #29, !inline_history !350
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1961 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1961 ; 3 uses
  %.not110117 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not110117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb13TableFunctionD2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ct = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 88
  br label %bb.aj

._crit_edge.loopexit:                             ; preds = %bb.av
  %.pre = load ptr, ptr %i.cq, align 8, !tbaa !1074
  %.pre119 = load ptr, ptr %i.co, align 8, !tbaa !1073
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb13TableFunctionD2Ev.exit
  %i.dc = phi ptr [ %.pre119, %._crit_edge.loopexit ], [ %i.cp, %_ZN6duckdb13TableFunctionD2Ev.exit ] ; 3 uses
  %i.dd = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cr, %_ZN6duckdb13TableFunctionD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i48 = icmp eq ptr %i.dd, %i.dc
  br i1 %.not.i.i.i.i.i48, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.di = sdiv exact i64 %i.dh, 104
  %i.dj = icmp ugt i64 %i.di, 88686269585142075
  br i1 %i.dj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #30, !inline_history !1962
  unreachable

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #32, !inline_history !1962
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %._crit_edge
  %i.dl = phi ptr [ null, %._crit_edge ], [ %i.dk, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.dl, ptr %9, align 8, !tbaa !1073
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !1074
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dh
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1963
  %i.dp = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.dc, ptr %i.dd, ptr noundef %i.dl)
          to label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.ag, !inline_history !1964

bb.ag:                                            ; preds = %bb.af
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !1073  ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i49, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.dr) #31, !inline_history !1962
  br label %common.resume

common.resume:                                    ; preds = %bb.al, %.body, %bb.bi, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dq, %bb.ag ], [ %i.dq, %bb.ah ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn34, %.body ], [ %i.du, %bb.ai ], [ %.pn, %bb.bi ], [ %.pn31105, %bb.au ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dx, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.af
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1067
  invoke void @_ZN6duckdb22TableFunctionInitInputC2ENS_12optional_ptrIKNS_12FunctionDataELb1EEENS_6vectorINS_11ColumnIndexELb1ESaIS6_EEERKNS5_ImLb1ESaImEEENS1_INS_14TableFilterSetELb1EEENS1_INS_13SampleOptionsELb1EEENS1_IKNS_16PhysicalOperatorELb1EEE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr %i.de, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.dt, ptr null, i64 0)
          to label %bb.aw unwind label %bb.bf

end_hunk_0
