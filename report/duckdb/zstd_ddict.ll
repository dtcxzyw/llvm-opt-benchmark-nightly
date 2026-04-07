begin_hunk_0_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
bb.c:                                             ; preds = %bb.b
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.217.0.copyload = load ptr, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !47
  %i.e = tail call noundef ptr %i.a(ptr noundef %.sroa.217.0.copyload, i64 noundef 27352), !inline_history !48
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 27328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !49
  %i.i = icmp ne i32 %2, 1
  %i.j = icmp ne ptr %0, null                     ; 2 uses
  %i.k = icmp ne i64 %1, 0
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
  br i1 %or.cond3.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %.0.i, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %0, ptr %i.m, align 8, !tbaa !7
  %spec.select.i = select i1 %i.j, i64 %1, i64 0
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
bb.h:                                             ; preds = %bb.g
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 27344
  %.sroa.237.0.copyload.i = load ptr, ptr %.sroa.237.0..sroa_idx.i, align 8, !tbaa !47
  %i.n = tail call noundef ptr %.sroa.0.0.copyload.i(ptr noundef %.sroa.237.0.copyload.i, i64 noundef range(i64 1, 0) %1), !inline_history !51
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.i:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.n, %bb.h ], [ %i.o, %bb.i ] ; 4 uses
  store ptr %.0.i.i, ptr %.0.i, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.0.i.i, ptr %i.p, align 8, !tbaa !7
  %.not.i15 = icmp eq ptr %.0.i.i, null
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
  br i1 %.not44.i, label %_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread, label %_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE.exit

_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread: ; preds = %_ZN11duckdb_zstdL26ZSTD_loadEntropy_intoDDictEPNS_12ZSTD_DDict_sENS_22ZSTD_dictContentType_eE.exit.i, %bb.l, %bb.n
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !50  ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 27336
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !47 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 27344
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
  br i1 %.not4.i8.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15.i: ; preds = %bb.p
  tail call void %.sroa.5.0.copyload.i(ptr noundef %.sroa.7.0.copyload.i, ptr noundef nonnull %.pr), !inline_history !52
  br label %bb.q

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i: ; preds = %bb.p
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstd25ZSTD_createDDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_14ZSTD_customMemE:bb.a
bb.q:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread.thread, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15.i
  %.sroa.7.0.copyload.i35 = phi ptr [ %.sroa.7.0.copyload.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i ], [ %.sroa.7.0.copyload.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15.i ], [ %.sroa.7.0.copyload.i30, %_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread.thread ]
  %.sroa.5.0.copyload.i33 = phi ptr [ %.sroa.5.0.copyload.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i ], [ %.sroa.5.0.copyload.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15.i ], [ %.sroa.5.0.copyload.i28, %_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread.thread ]
  tail call void %.sroa.5.0.copyload.i33(ptr noundef %.sroa.7.0.copyload.i35, ptr noundef nonnull %.0.i), !inline_history !52
  br label %_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE.exit

bb.r:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_initDDict_internalEPNS_12ZSTD_DDict_sEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE.exit.thread.thread, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE:bb.a
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27344
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %.not4.i8 = icmp eq ptr %.sroa.5.0.copyload, null ; 2 uses
  br i1 %.not.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.c
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE:bb.a
  br i1 %.not4.i8, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15: ; preds = %bb.c
  tail call void %.sroa.5.0.copyload(ptr noundef %.sroa.7.0.copyload, ptr noundef nonnull %i.b), !inline_history !53
  br label %bb.d

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread: ; preds = %bb.c
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE:bb.a
  br i1 %.not4.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread15, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  tail call void %.sroa.5.0.copyload(ptr noundef %.sroa.7.0.copyload, ptr noundef nonnull %0), !inline_history !53
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit9

bb.e:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstd20ZSTD_initStaticDDictEPvmPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eE:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.016 = phi ptr [ %i.h, %bb.d ], [ %2, %bb.c ]  ; 5 uses
  %.not18 = icmp eq ptr %.016, null
  store ptr null, ptr %0, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.016, ptr %i.i, align 8, !tbaa !7
  %spec.select.i = select i1 %.not18, i64 0, i64 %3 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstd17ZSTD_sizeof_DDictEPKNS_12ZSTD_DDict_sE:bb.a
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !50
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_12
begin_hunk_13_@free
!45 = !{!12, !9, i64 0}
!46 = !{!12, !9, i64 8}
!47 = !{!9, !9, i64 0}
!48 = distinct !{null}
!49 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!50 = !{!8, !9, i64 0}
!51 = distinct !{null, null}
!52 = distinct !{ptr @_ZN11duckdb_zstd14ZSTD_freeDDictEPNS_12ZSTD_DDict_sE, null}
!53 = distinct !{null}
end_hunk_13
