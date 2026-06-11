inline.NumInlined: 13629
inline.NumDeleted: 7416
begin_hunk_0_@_ZN6duckdb24CheckOnConflictConditionERNS_16ExecutionContextERNS_9DataChunkERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEES3_:bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #30
  br label %.body

.body:                                            ; preds = %.body18.thread, %.body18, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.n, %.body18.thread ], [ %i.k, %.body18 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.pn15 = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn.pn, %.loopexit ]
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1586   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

declare void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1625 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1628 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1629 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1631 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.f) #30, !inline_history !1638
  br label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #31
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1634

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !1625
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !1635   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #31
  br label %_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6duckdb10ExpressionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb14PhysicalInsert18OnConflictHandlingERNS_17TableCatalogEntryERNS_16ExecutionContextERNS_17InsertGlobalStateERNS_16InsertLocalStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(592) %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::Vector>>, std::allocator<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::Vector>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::Vector>>, std::allocator<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::Vector>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %9 = alloca %"class.std::unordered_map.2630", align 8 ; 21 uses
  %10 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::vector.2644", align 8 ; 12 uses
  %12 = alloca %"class.duckdb::vector.2644", align 8 ; 11 uses
  %13 = alloca %"struct.std::__detail::_AllocNode.3040", align 8 ; 4 uses
  %14 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 5 uses
  %15 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 5 uses
  %16 = alloca %"struct.std::__detail::_AllocNode.3040", align 8 ; 4 uses
  %17 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 5 uses
  %18 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 5 uses
  %19 = alloca %"class.duckdb::unique_ptr.876", align 8 ; 6 uses
  %20 = alloca %"class.duckdb::ConflictInfo", align 8 ; 8 uses
  %21 = alloca %"class.std::unordered_set.1873", align 8 ; 16 uses
  %22 = alloca %"class.duckdb::TableIndexIterationHelper", align 8 ; 9 uses
  %23 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 8 uses
  %24 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 6 uses
  %25 = alloca %"class.std::reference_wrapper.1896", align 8 ; 6 uses
  %26 = alloca %"class.duckdb::TableIndexIterationHelper", align 8 ; 9 uses
  %27 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 8 uses
  %28 = alloca %"class.duckdb::TableIndexIterationHelper<duckdb::Index>::TableIndexIterator", align 8 ; 6 uses
  %29 = alloca %"class.std::reference_wrapper.1896", align 8 ; 6 uses
  %30 = alloca %"class.std::map.1905", align 8    ; 13 uses
  %31 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %32 = alloca %"struct.duckdb::ValidityMask", align 8 ; 10 uses
  %33 = alloca %"class.std::set", align 8         ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::allocator", align 1   ; 5 uses
  %36 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(124) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(448) %1) ; 6 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !306, !nonnull !264, !align !265
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !938, !nonnull !264, !align !265
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb12LocalStorage3GetERNS_13ClientContextERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(512) %i.f, ptr noundef nonnull align 8 dereferenceable(408) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 217 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1583
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !937
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb16InsertLocalState18GetConstraintStateERNS_9DataTableERNS_17TableCatalogEntryE.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1610, !nonnull !264, !align !265
  call void @_ZN6duckdb9DataTable25InitializeConstraintStateERNS_17TableCatalogEntryERKNS_6vectorINS_10unique_ptrINS_15BoundConstraintESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.876") align 8 %19, ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %i.q = load ptr, ptr %19, align 8, !tbaa !937
  store ptr null, ptr %19, align 8, !tbaa !937
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !937  ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !937
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15ConstraintStateESt14default_deleteIS1_EED2Ev.exit.i, label %_ZN6duckdb10unique_ptrINS_15ConstraintStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_15ConstraintStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.r) #31
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !937 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb15ConstraintStateESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_15ConstraintStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #31
  br label %_ZNSt10unique_ptrIN6duckdb15ConstraintStateESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb15ConstraintStateESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15ConstraintStateEEclEPS1_.exit.i.i, %_ZN6duckdb10unique_ptrINS_15ConstraintStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZN6duckdb16InsertLocalState18GetConstraintStateERNS_9DataTableERNS_17TableCatalogEntryE.exit

_ZN6duckdb16InsertLocalState18GetConstraintStateERNS_9DataTableERNS_17TableCatalogEntryE.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb15ConstraintStateESt14default_deleteIS1_EED2Ev.exit.i
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb10unique_ptrINS_15ConstraintStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.t = call ptr @_ZN6duckdb12LocalStorage10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(124) %i.e)
  %i.u = load ptr, ptr %2, align 8, !tbaa !306, !nonnull !264, !align !265
  call void @_ZN6duckdb9DataTable23VerifyAppendConstraintsERNS_15ConstraintStateERNS_13ClientContextERNS_9DataChunkENS_12optional_ptrINS_17LocalTableStorageELb1EEENS7_INS_15ConflictManagerELb1EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(512) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr %i.t, ptr null)
  br label %bb.fl

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  store ptr %i.v, ptr %20, align 8, !tbaa !1639
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i8 1, ptr %i.w, align 8, !tbaa !1641
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  store ptr %i.x, ptr %21, align 8, !tbaa !1643
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 1, ptr %i.y, align 8, !tbaa !1645
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !419
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1587
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.bg

bb.e:                                             ; preds = %bb.d
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9DataTable16GetDataTableInfoEv(ptr noundef nonnull align 8 dereferenceable(124) %i.e)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNK6duckdb14TableIndexList7IndexesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::TableIndexIterationHelper") align 8 %22, ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.ai = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1368, !nonnull !264, !align !265
  invoke void @_ZN6duckdb25TableIndexIterationHelperINS_5IndexEE18TableIndexIteratorC1ENS_12optional_ptrIKNS_6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS7_ELb1EEELb1ESaISA_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr nonnull %i.aj)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %.fca.0.load.i = load ptr, ptr %18, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  store ptr %.fca.0.load.i, ptr %23, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.fca.1.load.i, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  invoke void @_ZN6duckdb25TableIndexIterationHelperINS_5IndexEE18TableIndexIteratorC1ENS_12optional_ptrIKNS_6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS7_ELb1EEELb1ESaISA_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr null)
          to label %bb.j unwind label %.loopexit.split-lp225

bb.j:                                             ; preds = %bb.i
  %.fca.0.load.i136 = load ptr, ptr %17, align 8
  %.fca.1.gep.i138 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.fca.1.load.i139 = load i64, ptr %.fca.1.gep.i138, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  store ptr %.fca.0.load.i136, ptr %24, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %.fca.1.load.i139, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.ab, %bb.j
  %i.am = invoke noundef zeroext i1 @_ZNK6duckdb25TableIndexIterationHelperINS_5IndexEE18TableIndexIteratorneERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.l unwind label %.loopexit224

bb.l:                                             ; preds = %bb.k
  br i1 %i.am, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !1371, !range !323, !noundef !264
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.n, label %_ZN6duckdb25TableIndexIterationHelperINS_5IndexEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %22, align 8, !tbaa !1372 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN6duckdb25TableIndexIterationHelperINS_5IndexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #30 ; 0 uses
  br label %_ZN6duckdb25TableIndexIterationHelperINS_5IndexEED2Ev.exit

_ZN6duckdb25TableIndexIterationHelperINS_5IndexEED2Ev.exit: ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.as = load ptr, ptr %2, align 8, !tbaa !306, !nonnull !264, !align !265
  %i.at = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb12LocalStorage10GetIndexesERNS_13ClientContextERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(512) %i.as, ptr noundef nonnull align 8 dereferenceable(124) %i.e)
          to label %bb.ag unwind label %bb.ap

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.q:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.r:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit224:                                     ; preds = %bb.k, %bb.ab
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp225:                            ; preds = %bb.i
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %bb.l
  %i.ax = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb25TableIndexIterationHelperINS_5IndexEE18TableIndexIteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.t unwind label %bb.v       ; 4 uses

bb.t:                                             ; preds = %bb.s
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef zeroext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(104) %i.ax)
          to label %bb.u unwind label %bb.v, !inline_history !1374

bb.u:                                             ; preds = %bb.t
  %i.bc = add i8 %i.bb, -1
  %i.bd = icmp ult i8 %i.bc, 2
  br i1 %i.bd, label %bb.w, label %bb.ab

bb.v:                                             ; preds = %bb.t, %bb.w, %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZNK6duckdb14PhysicalInsert18OnConflictHandlingERNS_17TableCatalogEntryERNS_16ExecutionContextERNS_17InsertGlobalStateERNS_16InsertLocalStateERNS_9DataChunkE:bb.a

bb.cv:                                            ; preds = %bb.ct
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ji, %bb.cu ], [ %i.js, %bb.cv ]
  %i.jt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jt, label %bb.cw, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !46

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #30
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cs, %.loopexit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !1650
  %i.ju = load ptr, ptr %i.cz, align 8, !tbaa !1694, !noalias !1650 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i76.i

.lr.ph.i.i.i.i76.i:                               ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.jv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ju, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 3 uses
  %i.jv = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1673 ; 3 uses
  %.not.i.i.i.i.i.i.i77.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i.i.i77.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i76.i
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.jx) #30
  call void @_ZdlPv(ptr noundef nonnull %i.jx) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i76.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #31
  %.not.i.i.i.i78.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i78.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i76.i, !llvm.loop !1695

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  %i.jy = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650
  %i.jz = load i64, ptr %i.cy, align 8, !tbaa !1655, !noalias !1650
  %i.ka = shl i64 %i.jz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jy, i8 0, i64 %i.ka, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !noalias !1650
  %i.kb = load ptr, ptr %9, align 8, !tbaa !1653, !noalias !1650 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.cx
  br i1 %i.kc, label %bb.dh, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.kb) #31
  br label %bb.dh

bb.cy:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit74.i, %bb.cc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40.i, %bb.bj
  %.pn28.pn.pn.i = phi { ptr, i32 } [ %i.gs, %bb.cc ], [ %.pn.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit74.i ], [ %.pn28.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6VectorEESaIS3_EED2Ev.exit40.i ], [ %i.dr, %bb.bj ]
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i194 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i194, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 4 uses
  %i.kg = load atomic i64, ptr %i.kf acquire, align 8 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 4294967297
  %i.ki = trunc i64 %i.kg to i32                  ; 2 uses
  br i1 %i.kh, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.kf, align 8, !tbaa !40
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 0, ptr %i.kj, align 4, !tbaa !42
  %i.kk = load ptr, ptr %i.ke, align 8, !tbaa !43
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #30, !inline_history !188
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !43
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #30, !inline_history !188
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198

bb.db:                                            ; preds = %bb.cz
  %i.kq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i195 = icmp eq i8 %i.kq, 0
  br i1 %.not.i.i.i.i.i195, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kr = add nsw i32 %i.ki, -1
  store i32 %i.kr, ptr %i.kf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i196

bb.dd:                                            ; preds = %bb.db
  %i.ks = atomicrmw volatile add ptr %i.kf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i196

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i196: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i.i.i.i197 = phi i32 [ %i.ki, %bb.dc ], [ %i.ks, %bb.dd ]
  %i.kt = icmp eq i32 %.0.i.i.i.i.i.i197, 1
  br i1 %i.kt, label %bb.de, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198, !prof !46

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i196
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #30
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198: ; preds = %bb.cy, %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i196, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !1650
  %i.ku = load ptr, ptr %i.cz, align 8, !tbaa !1694 ; 2 uses
  %.not5.i.i.i.i190 = icmp eq ptr %i.ku, null
  br i1 %.not5.i.i.i.i190, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i191

.lr.ph.i.i.i.i191:                                ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i192 = phi ptr [ %i.kv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.ku, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198 ] ; 3 uses
  %i.kv = load ptr, ptr %.06.i.i.i.i192, align 8, !tbaa !179 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i192, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !1673 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i191
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.kx) #30
  call void @_ZdlPv(ptr noundef nonnull %i.kx) #31
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i191
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i192) #31
  %.not.i.i.i.i193 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i193, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i191, !llvm.loop !1695

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_6VectorESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit198
  %i.ky = load ptr, ptr %9, align 8, !tbaa !1653
  %i.kz = load i64, ptr %i.cy, align 8, !tbaa !1655
  %i.la = shl i64 %i.kz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ky, i8 0, i64 %i.la, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.lb = load ptr, ptr %9, align 8, !tbaa !1653  ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.cx
  br i1 %i.lc, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.lb) #31
  br label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !1650
  %i.ld = load ptr, ptr %i.ct, align 8, !tbaa !579
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.ld)
          to label %.body unwind label %bb.dg

bb.dg:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #34
  unreachable

bb.dh:                                            ; preds = %bb.cx, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_6VectorESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !1650
  %i.lg = load i64, ptr %i.dc, align 8, !tbaa !345 ; 4 uses
  %i.lh = load i64, ptr %i.cw, align 8, !tbaa !366
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %bb.fd, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.lj = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %i.lg)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.lj) #30
  br label %.body165

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.ll = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 24, i1 false)
  store i64 %i.lg, ptr %i.ll, align 8, !tbaa !1656
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.lm = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 8 uses
  store i32 0, ptr %i.lm, align 8, !tbaa !639
  %i.ln = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  store ptr null, ptr %i.ln, align 8, !tbaa !579
  %i.lo = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 3 uses
  store ptr %i.lm, ptr %i.lo, align 8, !tbaa !371
  %i.lp = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %i.lm, ptr %i.lp, align 8, !tbaa !640
  %i.lq = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 4 uses
  store i64 0, ptr %i.lq, align 8, !tbaa !366
  %.not260 = icmp eq i64 %i.lg, 0
  br i1 %.not260, label %._crit_edge, label %.lr.ph253

._crit_edge:                                      ; preds = %bb.dt, %bb.dk
  %.0105.lcssa = phi i64 [ 0, %bb.dk ], [ %.1106, %bb.dt ] ; 2 uses
  %i.lr = load i8, ptr %i.j, align 1, !tbaa !1583
  %i.ls = icmp eq i8 %i.lr, 2
  br i1 %i.ls, label %bb.du, label %bb.em

.lr.ph253:                                        ; preds = %bb.dk, %bb.dt
  %.pre282 = phi ptr [ %.pre282288, %bb.dt ], [ null, %bb.dk ] ; 6 uses
  %i.lt = phi ptr [ %i.nl, %bb.dt ], [ null, %bb.dk ] ; 4 uses
  %.0105252 = phi i64 [ %.1106, %bb.dt ], [ 0, %bb.dk ] ; 3 uses
  %storemerge251 = phi i64 [ %i.nw, %bb.dt ], [ 0, %bb.dk ] ; 6 uses
  %i.lu = load ptr, ptr %i.ct, align 8, !tbaa !579 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph253, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i167, %.lr.ph.i.i.i ], [ %i.lu, %.lr.ph253 ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cs, %.lr.ph253 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !98
  %i.lx = icmp ult i64 %i.lw, %storemerge251      ; 3 uses
  %.19.i.i.i = select i1 %i.lx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.lx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i167 = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !580 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %.1.i.i.i167, null
  br i1 %.not.i.i.i168, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1696

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ly = icmp eq ptr %.19.i.i.i, %i.cs
  br i1 %i.ly, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.lx, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.lz = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !98
  %i.ma = icmp ult i64 %storemerge251, %i.lz
  br i1 %i.ma, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !582 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48 ; 3 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !582 ; 2 uses
  %.not222249 = icmp eq ptr %i.mc, %i.me
  br i1 %.not222249, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dl, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %.pre282287 = phi ptr [ %.pre282285, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ %.pre282, %bb.dl ]
  %i.mf = phi ptr [ %i.nk, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ %i.me, %bb.dl ]
  %.sroa.0204.0250.a = phi ptr [ %38, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ %.pre282, %bb.dl ] ; 2 uses
  %.sroa.0204.0250 = phi ptr [ %i.mq, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ %i.mc, %bb.dl ] ; 3 uses
  %37 = load i64, ptr %.sroa.0204.0250, align 8, !tbaa !98 ; 2 uses
  %.not.i169 = icmp eq ptr %.sroa.0204.0250.a, null
  br i1 %.not.i169, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph
  %i.mg = load i64, ptr %i.ll, align 8, !tbaa !1656
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef %i.mg)
          to label %.noexc unwind label %bb.ds

.noexc:                                           ; preds = %bb.dm
  %.pre.i = load ptr, ptr %32, align 8, !tbaa !1697 ; 2 uses
  %.pre.a = load ptr, ptr %i.md, align 8, !tbaa !582
  br label %bb.dn

bb.dn:                                            ; preds = %.noexc, %.lr.ph
  %.pre282286 = phi ptr [ %.pre.i, %.noexc ], [ %.pre282287, %.lr.ph ] ; 2 uses
  %i.mh = phi ptr [ %.pre.a, %.noexc ], [ %i.mf, %.lr.ph ] ; 3 uses
  %i.mi = phi ptr [ %.pre.i, %.noexc ], [ %.sroa.0204.0250.a, %.lr.ph ] ; 3 uses
  %i.mj = lshr i64 %37, 6
  %i.mk = and i64 %37, 63
  %i.ml = shl nuw i64 1, %i.mk
  %i.mm = xor i64 %i.ml, -1
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mj ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !98
  %i.mp = and i64 %i.mo, %i.mm
  store i64 %i.mp, ptr %i.mn, align 8, !tbaa !98
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0204.0250, i64 8 ; 3 uses
  %i.mr = icmp eq ptr %i.mq, %i.mh
  br i1 %i.mr, label %bb.do, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

bb.do:                                            ; preds = %bb.dn
  %.02022.i.i.i = load ptr, ptr %i.ln, align 8, !tbaa !580 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  %.pre.i.pre.pre.i.i = load i64, ptr %.sroa.0204.0250, align 8, !tbaa !98 ; 4 uses
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i170

.lr.ph.i.i.i170:                                  ; preds = %bb.do, %.lr.ph.i.i.i170
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i170 ], [ %.02022.i.i.i, %bb.do ] ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !98 ; 2 uses
  %i.mu = icmp ult i64 %.pre.i.pre.pre.i.i, %i.mt ; 2 uses
  %.in.v.i.i.i = select i1 %i.mu, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !580 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i171, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i170, !llvm.loop !1698

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i170
  br i1 %i.mu, label %._crit_edge.thread.i.i.i, label %bb.dq

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.do
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.lm, %bb.do ] ; 4 uses
  %i.mv = load ptr, ptr %i.lo, align 8, !tbaa !371
  %i.mw = icmp eq ptr %.019.lcssa29.i.i.i, %i.mv
  br i1 %i.mw, label %select.unfold.i.i, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.mx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #35
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !98
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %._crit_edge.i.i.i
  %i.my = phi i64 [ %.pre.i.i, %bb.dp ], [ %i.mt, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.dp ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.mz = icmp ult i64 %i.my, %.pre.i.pre.pre.i.i
  br i1 %i.mz, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.dq, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.dq ] ; 3 uses
  %i.na = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.lm
  br i1 %i.na, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %select.unfold.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !98
  %i.nd = icmp ult i64 %.pre.i.pre.pre.i.i, %i.nc
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.dr, %select.unfold.i.i
  %i.ne = phi i1 [ %i.nd, %bb.dr ], [ true, %select.unfold.i.i ]
  %i.nf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc172 unwind label %bb.ds ; 2 uses

.noexc172:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i64 %.pre.i.pre.pre.i.i, ptr %i.ng, align 8, !tbaa !98
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ne, ptr noundef nonnull %i.nf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lm) #30
  %i.nh = load i64, ptr %i.lq, align 8, !tbaa !366
  %i.ni = add i64 %i.nh, 1
  store i64 %i.ni, ptr %i.lq, align 8, !tbaa !366
  %.pre = load ptr, ptr %32, align 8, !tbaa !1697 ; 2 uses
  %.pre282.a = load ptr, ptr %i.md, align 8, !tbaa !582
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

bb.ds:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.dm
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %.noexc172, %bb.dq, %bb.dn
  %.pre282285 = phi ptr [ %.pre, %.noexc172 ], [ %.pre282286, %bb.dq ], [ %.pre282286, %bb.dn ] ; 2 uses
  %i.nk = phi ptr [ %.pre282.a, %.noexc172 ], [ %i.mh, %bb.dq ], [ %i.mh, %bb.dn ] ; 2 uses
  %38 = phi ptr [ %.pre, %.noexc172 ], [ %i.mi, %bb.dq ], [ %i.mi, %bb.dn ] ; 2 uses
  %.not222 = icmp eq ptr %i.mq, %i.nk
  br i1 %.not222, label %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph, !llvm.loop !1699

_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, %bb.dl, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph253, %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %.pre282288 = phi ptr [ %.pre282, %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit ], [ %.pre282, %bb.dl ], [ %.pre282, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.pre282, %.lr.ph253 ], [ %.pre282285, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ]
  %i.nl = phi ptr [ %i.lt, %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit ], [ %i.lt, %bb.dl ], [ %i.lt, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %i.lt, %.lr.ph253 ], [ %38, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ] ; 3 uses
  %.not.i173 = icmp eq ptr %i.nl, null
  br i1 %.not.i173, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.nm = lshr i64 %storemerge251, 6
  %i.nn = and i64 %storemerge251, 63
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nm
  %i.np = load i64, ptr %i.no, align 8, !tbaa !98
  %i.nq = shl nuw i64 1, %i.nn
  %i.nr = and i64 %i.np, %i.nq
  %.not223 = icmp eq i64 %i.nr, 0
  br i1 %.not223, label %bb.dt, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNSt3mapImN6duckdb6vectorImLb1ESaImEEESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ns = trunc i64 %storemerge251 to i32
  %i.nt = load ptr, ptr %31, align 8, !tbaa !1409
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %.0105252
  store i32 %i.ns, ptr %i.nu, align 4, !tbaa !3
  %i.nv = add i64 %.0105252, 1
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.1106 = phi i64 [ %i.nv, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %.0105252, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.nw = add nuw i64 %storemerge251, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.nw, %i.lg
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph253, !llvm.loop !1700

bb.du:                                            ; preds = %._crit_edge
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1586
  %.not = icmp eq ptr %i.ny, null
  br i1 %.not, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nz = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.dw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  invoke void @__cxa_throw(ptr nonnull %i.nz, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.fm unwind label %bb.dy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.dv
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.081 = phi i1 [ false, %bb.dx ], [ true, %bb.dw ] ; 2 uses
  %i.ob = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.oc = load ptr, ptr %34, align 8, !tbaa !15   ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dy
  call void @_ZdlPv(ptr noundef %i.oc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br i1 %.081, label %bb.dz, label %bb.fc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br i1 %.081, label %bb.dz, label %bb.fc

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn109219 = phi { ptr, i32 } [ %i.oa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ob, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.nz) #30
  br label %bb.fc

bb.ea:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.of = load i64, ptr %i.lq, align 8, !tbaa !366
  %i.og = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %i.of)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit176 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.og) #30
  br label %.body174

_ZN6duckdb15SelectionVectorC2Em.exit176:          ; preds = %bb.ea
  %i.oi = load ptr, ptr %i.lo, align 8, !tbaa !371 ; 2 uses
  %.not220254 = icmp eq ptr %i.oi, %i.lm
  br i1 %.not220254, label %._crit_edge258, label %.lr.ph257

.lr.ph257:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit176
  %i.oj = load ptr, ptr %36, align 8, !tbaa !1409
  br label %bb.ec

._crit_edge258:                                   ; preds = %bb.ec, %_ZN6duckdb15SelectionVectorC2Em.exit176
  %.080.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit176 ], [ %i.op, %bb.ec ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  invoke void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ok, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.ed unwind label %bb.el

bb.ec:                                            ; preds = %.lr.ph257, %bb.ec
  %.080256 = phi i64 [ 0, %.lr.ph257 ], [ %i.op, %bb.ec ] ; 2 uses
  %.sroa.0199.0255 = phi ptr [ %i.oi, %.lr.ph257 ], [ %i.oq, %bb.ec ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0199.0255, i64 32
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !98
  %i.on = trunc i64 %i.om to i32
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %.080256
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !3
  %i.op = add i64 %.080256, 1                     ; 2 uses
  %i.oq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0199.0255) #35 ; 2 uses
  %.not220 = icmp eq ptr %i.oq, %i.lm
  br i1 %.not220, label %._crit_edge258, label %bb.ec

bb.ed:                                            ; preds = %._crit_edge258
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ok, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %.080.lcssa)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %bb.ed
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %.080.lcssa, ptr %i.or, align 8, !tbaa !345
  %i.os = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i177 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i.i177, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 4 uses
  %i.ov = load atomic i64, ptr %i.ou acquire, align 8 ; 2 uses
  %i.ow = icmp eq i64 %i.ov, 4294967297
  %i.ox = trunc i64 %i.ov to i32                  ; 2 uses
  br i1 %i.ow, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.ou, align 8, !tbaa !40
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  store i32 0, ptr %i.oy, align 4, !tbaa !42
  %i.oz = load ptr, ptr %i.ot, align 8, !tbaa !43
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(16) %i.ot) #30, !inline_history !1420
  %i.pc = load ptr, ptr %i.ot, align 8, !tbaa !43
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %i.ot) #30, !inline_history !1420
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.eh:                                            ; preds = %bb.ef
  %i.pf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i178 = icmp eq i8 %i.pf, 0
  br i1 %.not.i.i.i.i.i178, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pg = add nsw i32 %i.ox, -1
  store i32 %i.pg, ptr %i.ou, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.ph = atomicrmw volatile add ptr %i.ou, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i = phi i32 [ %i.ox, %bb.ei ], [ %i.ph, %bb.ej ]
  %i.pi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pi, label %bb.ek, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !46

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ot) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ee, %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.em

bb.el:                                            ; preds = %bb.ed, %._crit_edge258
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #30
  br label %.body174

.body174:                                         ; preds = %bb.eb, %bb.el
  %.pn.pn = phi { ptr, i32 } [ %i.pj, %bb.el ], [ %i.oh, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.fc

bb.em:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %.0105.lcssa)
          to label %bb.en unwind label %bb.fb

bb.en:                                            ; preds = %bb.em
  store i64 %.0105.lcssa, ptr %i.dc, align 8, !tbaa !345
  %i.pk = load ptr, ptr %i.ln, align 8, !tbaa !579
end_hunk_1
