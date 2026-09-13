Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_table_func_system?download=true
inline.NumInlined: 14721
inline.NumDeleted: 5969
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZSt16__do_uninit_copyIPKN6duckdb13TableFunctionEPS1_ET0_T_S6_S5_:bb.a
  %.not = icmp eq ptr %i.p, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2423

bb.f:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #26 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb13TableFunctionEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %2, %bb.f ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(544) %.05.i.i) #26, !inline_history !50
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 544 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb13TableFunctionEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZSt8_DestroyIPN6duckdb13TableFunctionEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %bb.f
  invoke void @__cxa_rethrow() #28
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb13TableFunctionEEvT_S3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #30
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6duckdb13TableFunctionEEvT_S3_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb27DuckDBExternalFileCacheDataD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb27DuckDBExternalFileCacheDataE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !381
  br label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb21CachedFileInformationESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt6vectorIN6duckdb21CachedFileInformationESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb21CachedFileInformationESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN6duckdb24GlobalTableFunctionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb27DuckDBExternalFileCacheDataD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb27DuckDBExternalFileCacheDataE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #29, !inline_history !2424
  br label %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb21CachedFileInformationEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !381
  br label %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb27DuckDBExternalFileCacheDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29, !inline_history !2424
  br label %_ZN6duckdb27DuckDBExternalFileCacheDataD2Ev.exit

_ZN6duckdb27DuckDBExternalFileCacheDataD2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb21CachedFileInformationES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZN6duckdb24GlobalTableFunctionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !2424
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

declare noundef ptr @_ZN6duckdb16WindowExpression15WindowFunctionsEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DuckDBFunctionsDataD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb19DuckDBFunctionsDataE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6duckdb24GlobalTableFunctionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19DuckDBFunctionsDataD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb19DuckDBFunctionsDataE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19DuckDBFunctionsDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29, !inline_history !2425
  br label %_ZN6duckdb19DuckDBFunctionsDataD2Ev.exit

_ZN6duckdb19DuckDBFunctionsDataD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZN6duckdb24GlobalTableFunctionStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #26, !inline_history !2425
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph53

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.do, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph53, !llvm.loop !2426

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.es, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load ptr, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.sroa.01.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.w, align 8
  %.sroa.0.0.copyload.i.i.us.i.i.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.us.i.i.i, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !185
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.us.i.i.i, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !185
  %i.ad = icmp ult i8 %i.aa, %i.ac
  %spec.select.i.us.i.i.i = select i1 %i.ad, i64 %i.x, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ah, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2427

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.ai = getelementptr i8, ptr %.sroa.03.0.copyload.us.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load i8, ptr %i.ai, align 8, !tbaa !185
  %.sroa.01.0.copyload.i.i.i.us.i.i.i = load ptr, ptr %i.aj, align 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.us.i.i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !185
  %i.am = icmp ult i8 %i.al, %.val.val.i.i.us.i.i.i
  br i1 %i.am, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.an = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.us.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !2428

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  %i.ar = ptrtoint ptr %.sroa.03.0.copyload.us.i.i.i to i64
  store i64 %i.ar, ptr %i.aq, align 8
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.as = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !2429

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bw, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.at, align 8 ; 2 uses
  %i.au = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ay
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.ax, align 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !185
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !185
  %i.be = icmp ult i8 %i.bb, %i.bd
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2427

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load i64, ptr %i.q, align 8
  store i64 %i.bk, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %.val.val.i.i.i.i.i = load i8, ptr %i.bm, align 8, !tbaa !185
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !185
  %i.bq = icmp ult i8 %i.bp, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bt, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !2428

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  %i.bv = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.bv, ptr %i.bu, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bw = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !2429

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bx, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.bx, align 8 ; 2 uses
  %i.by = load i64, ptr %.fr27, align 8
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.a                     ; 3 uses
  %i.cb = ashr exact i64 %i.ca, 3                 ; 3 uses
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = icmp sgt i64 %i.cb, 2
  br i1 %i.ce, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i20.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i20.i
  %.036.i.i.i21.i = phi i64 [ %spec.select.i.i.i24.i, %.lr.ph.i.i.i20.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cf = shl i64 %.036.i.i.i21.i, 1              ; 2 uses
  %i.cg = add i64 %i.cf, 2                        ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cg
  %i.ci = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ci
  %.sroa.01.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ch, align 8
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i22.i, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !185
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i23.i, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !185
  %i.co = icmp ult i8 %i.cl, %i.cn
  %spec.select.i.i.i24.i = select i1 %i.co, i64 %i.ci, i64 %i.cg ; 4 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i24.i
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i21.i
  %i.cr = load i64, ptr %i.cp, align 8
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = icmp slt i64 %spec.select.i.i.i24.i, %i.cd
  br i1 %i.cs, label %.lr.ph.i.i.i20.i, label %._crit_edge.i.i.i11.i, !llvm.loop !2427

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i20.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i24.i, %.lr.ph.i.i.i20.i ] ; 5 uses
  %i.ct = and i64 %i.ca, 8
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cv = add nsw i64 %i.cb, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.cw
  br i1 %i.cx, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.dc = load i64, ptr %i.da, align 8
  store i64 %i.dc, ptr %i.db, align 8
  br label %.lr.ph.i.i.i.i14.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cz, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.j ]
  %i.dd = getelementptr i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i14.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i14.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %.val.val.i.i.i.i17.i = load i8, ptr %i.dd, align 8, !tbaa !185
  %.sroa.01.0.copyload.i.i.i.i.i18.i = load ptr, ptr %i.de, align 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i18.i, i64 16
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !185
  %i.dh = icmp ult i8 %i.dg, %.val.val.i.i.i.i17.i
  br i1 %i.dh, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.di = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i.i18.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i64 %i.di, ptr %i.dj, align 8
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %bb.k, !llvm.loop !2428

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i19.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.dk = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i19.i
  %i.dl = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.dl, ptr %i.dk, align 8
  %i.dm = icmp sgt i64 %i.ca, 8
  br i1 %i.dm, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !2430

.lr.ph53:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2452 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02551 = phi i64 [ %i.do, %bb.b ], [ %2, %.lr.ph ]
  %i.dn = phi i64 [ %i.et, %bb.b ], [ %i.d, %.lr.ph ]
  %i.do = add nsw i64 %.02551, -1                 ; 3 uses
  %i.dp = lshr i64 %i.dn, 1
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %storemerge2452, i64 -8 ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dq, align 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !185 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !185 ; 3 uses
  %i.dw = icmp ult i8 %i.dt, %i.dv
  %i.dx = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.01.0.copyload.i.i.i to i64 ; 2 uses
  %.sroa.0.0.copyload.i27.i.i = load ptr, ptr %i.dr, align 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i27.i.i, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !185 ; 4 uses
  %i.eb = ptrtoint ptr %.sroa.0.0.copyload.i27.i.i to i64 ; 2 uses
  br i1 %i.dw, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph53
  %i.ec = icmp ult i8 %i.dv, %i.ea
  br i1 %i.ec, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr27, align 8
  store i64 %i.dx, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.dq, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.ed = icmp ult i8 %i.dt, %i.ea
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %.fr27, align 8 ; 2 uses
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.eb, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.dr, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store i64 %i.dy, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph53
  %i.ee = icmp ult i8 %i.dt, %i.ea
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr27, align 8
  store i64 %i.dy, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ef = icmp ult i8 %i.dv, %i.ea
  %.sroa.0.0.copyload.i.i37.i.i = load ptr, ptr %.fr27, align 8 ; 2 uses
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.eb, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.dr, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store i64 %i.dx, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i37.i.i, ptr %i.dq, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.el, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2452, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.copyload.i.i13.i = load ptr, ptr %.fr27, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i13.i, i64 16
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !185 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.el, %bb.w ] ; 8 uses
  %.sroa.01.0.copyload.i.i14.i = load ptr, ptr %.sroa.012.1.i.i, align 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i14.i, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !185
  %i.ek = icmp ult i8 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ek, label %bb.w, label %.preheader.i.i, !llvm.loop !2431

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.sroa.0.0.copyload.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i.i, i64 16
  %i.en = load i8, ptr %i.em, align 8, !tbaa !185
  %i.eo = icmp ult i8 %i.eh, %i.en
  br i1 %i.eo, label %.preheader.i.i, label %bb.x, !llvm.loop !2432

bb.x:                                             ; preds = %.preheader.i.i
  %i.ep = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ep, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEET_SJ_SJ_T0_.exit"

bb.y:                                             ; preds = %bb.x
  %i.eq = ptrtoint ptr %.sroa.0.0.copyload.i9.i.i to i64
  store i64 %i.eq, ptr %.sroa.012.1.i.i, align 8
  store ptr %.sroa.01.0.copyload.i.i14.i, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !2433

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2452, i64 noundef %i.do)
  %i.er = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.es = sub i64 %i.er, %i.a                     ; 2 uses
  %i.et = ashr exact i64 %i.es, 3                 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, 16
  br i1 %i.eu, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !2426

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_19DuckDBFunctionsInitERNS3_13ClientContextERNS3_22TableFunctionInitInputEE3$_0EEEvT_SJ_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc i64 @_ZN6duckdbL27GetFunctionDescriptionIndexERNS_6vectorINS_19FunctionDescriptionELb1ESaIS1_EEERNS0_INS_11LogicalTypeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::optional_idx", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !395  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !394    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 128
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.m = load ptr, ptr %1, align 8, !tbaa !127
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19FunctionDescriptionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !127
  %.not42.not = icmp eq ptr %i.t, %i.u
  br i1 %.not42.not, label %.critedge31, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b, %.critedge.thread
  %.02643 = phi i64 [ %i.ae, %.critedge.thread ], [ 0, %bb.b ] ; 5 uses
  %i.v = icmp ult i64 %.02643, %i.q
  br i1 %i.v, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph45
  %i.w = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19FunctionDescriptionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.x = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %.02643)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 3)
  %i.y = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge.thread34, label %bb.e

.critedge.thread34:                               ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19FunctionDescriptionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.02643)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02643)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.ac, label %.critedge.thread, label %.critedge31

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.n, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.n ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.g, %bb.f, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.critedge.thread:                                 ; preds = %.lr.ph45, %.critedge.thread34, %.critedge
  %i.ae = add nuw i64 %.02643, 1                  ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19FunctionDescriptionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !128
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 24
  %.not = icmp ult i64 %i.ae, %i.am
  br i1 %.not, label %.lr.ph45, label %.critedge31, !llvm.loop !2434

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 -1, ptr %5, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 -1, ptr %6, align 8, !tbaa !571
  %.not48 = icmp eq ptr %i.e, %i.f
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.k

._crit_edge:                                      ; preds = %bb.v, %bb.j
  %.sroa.0.0.lcssa = phi i64 [ -1, %bb.j ], [ %.sroa.0.1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge31

bb.k:                                             ; preds = %.lr.ph, %bb.v
  %.040 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.v ] ; 3 uses
  %.sroa.0.039 = phi i64 [ -1, %.lr.ph ], [ %.sroa.0.1, %bb.v ] ; 3 uses
  %i.ao = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19FunctionDescriptionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.040) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128 ; 3 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !127 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !128
  %i.aw = load ptr, ptr %1, align 8, !tbaa !127
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.au, %i.az
  br i1 %.not.i, label %.preheader.i, label %_ZN6duckdbL26CalcDescriptionSpecificityERNS_19FunctionDescriptionERKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEE.exit.thread

.preheader.i:                                     ; preds = %bb.k
  %.not1517.not.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not1517.not.i, label %_ZN6duckdbL26CalcDescriptionSpecificityERNS_19FunctionDescriptionERKNS_6vectorINS_11LogicalTypeELb1ESaIS3_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.r
  %i.ba = phi ptr [ %i.bx, %bb.r ], [ %i.ar, %.preheader.i ] ; 3 uses
  %i.bb = phi ptr [ %i.by, %bb.r ], [ %i.aq, %.preheader.i ] ; 2 uses
  %.01319.i = phi i64 [ %i.bz, %bb.r ], [ 0, %.preheader.i ] ; 6 uses
  %.01418.i = phi i64 [ %.1.i, %bb.r ], [ 0, %.preheader.i ] ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.01319.i, ptr %i.b, align 8, !tbaa !117
  store i64 %i.bf, ptr %i.c, align 8, !tbaa !117
  %.not.i.i.i = icmp ult i64 %.01319.i, %i.bf
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm.exit, label %.noexc.i, !prof !278

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 55, ptr %i.a, align 8, !tbaa !117
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bi, ptr %2, align 8, !tbaa !97
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !117 ; 3 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bi, ptr noundef nonnull align 1 dereferenceable(55) @.str.212, i64 55, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !119
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !97    ; 2 uses
end_hunk_0
