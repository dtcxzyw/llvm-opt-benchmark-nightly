inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstd16ZSTD_freeCStreamEPNS_11ZSTD_CCtx_sE:bb.a
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp uge ptr %0, %i.g
  br label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i

_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i: ; preds = %bb.d, %bb.c
  %.not9.i = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ]
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !62 ; 2 uses
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.34.0.copyload.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  %.not4.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  br i1 %.not4.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.2.0.copyload.i.i(ptr noundef %.sroa.34.0.copyload.i.i, ptr noundef nonnull %i.i), !inline_history !363
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i

_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i: ; preds = %bb.g, %bb.f, %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit.i
  br i1 %.not9.i, label %bb.h, label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

bb.h:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i
  %.sroa.1.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.1.0.copyload.i, null
  br i1 %.not4.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !tbaa !62
  tail call void %.sroa.1.0.copyload.i(ptr noundef %.sroa.2.0.copyload.i, ptr noundef nonnull %0), !inline_history !364
  br label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %0) #27
  br label %_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE.exit: ; preds = %bb.a, %bb.b, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i, %bb.i, %bb.j
  %.0.i = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit.i ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN11duckdb_zstd18ZSTD_CStreamInSizeEv() local_unnamed_addr #0 {
bb.a:
  ret i64 131072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 8, 7) i64 @_ZN11duckdb_zstd19ZSTD_CStreamOutSizeEv() local_unnamed_addr #0 {
bb.a:
  ret i64 131591
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd17ZSTD_resetCStreamEPNS_11ZSTD_CCtx_sEy(ptr noundef writeonly captures(none) initializes((760, 768), (3608, 3612)) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.d = add i64 %1, 1
  %i.e = select i1 %i.a, i64 0, i64 %i.d
  store i64 %i.e, ptr %i.c, align 8, !tbaa !139
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd25ZSTD_initCStream_internalEPNS_11ZSTD_CCtx_sEPKvmPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef captures(none) initializes((16, 232), (760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = add i64 %5, 1
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(216) %4, i64 216, i1 false), !tbaa.struct !133
  %.not28 = icmp eq ptr %1, null
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  br i1 %.not28, label %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %.not28.i.i = icmp eq i64 %i.g, 0
  br i1 %.not28.i.i, label %bb.c, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.230.0.copyload.i.i = load ptr, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.i = tail call noundef ptr %.sroa.0.0.copyload.i.i(ptr noundef %.sroa.230.0.copyload.i.i, i64 noundef %2), !inline_history !365
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %2) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 4 uses
  %i.k = icmp eq ptr %.0.i.i.i, null
  br i1 %i.k, label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %.0.i.i.i, ptr %i.l, align 8, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3664
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3672
  store i64 %2, ptr %i.n, align 8, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i32 0, ptr %i.o, align 8, !tbaa !143
  br label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit: ; preds = %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %3, ptr %i.p, align 8, !tbaa !132
  br label %_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread

_ZN11duckdb_zstd24ZSTD_CCtx_loadDictionaryEPNS_11ZSTD_CCtx_sEPKvm.exit.thread: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %bb.b, %bb.f, %bb.a, %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit
  %.4 = phi i64 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit ], [ -64, %bb.b ], [ -64, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ]
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd36ZSTD_initCStream_usingCDict_advancedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy(ptr noundef captures(none) initializes((48, 60), (760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr noundef %1, i64 %2, i32 %3, i64 noundef %4) local_unnamed_addr #2 {
_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = add i64 %4, 1
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %2, ptr %i.d, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !3
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %1, ptr %i.e, align 8, !tbaa !132
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd27ZSTD_initCStream_usingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef captures(none) initializes((760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.b, align 8, !tbaa !139
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr %1, ptr %i.c, align 8, !tbaa !132
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd25ZSTD_initCStream_advancedEPNS_11ZSTD_CCtx_sEPKvmNS_15ZSTD_parametersEy(ptr noundef captures(none) initializes((760, 768), (3608, 3612)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_parameters") align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit:
  %i.a = icmp eq i64 %4, 0
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.e, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.g = add i64 %4, 1
  %i.h = select i1 %or.cond, i64 0, i64 %i.g
  store i64 %i.h, ptr %i.f, align 8, !tbaa !139
  %i.i = load <4 x i32>, ptr %3, align 8, !tbaa !3
  %.fr44 = freeze <4 x i32> %i.i
  %i.j = add <4 x i32> %.fr44, <i32 -32, i32 -31, i32 -31, i32 -31>
  %i.k = icmp ult <4 x i32> %i.j, <i32 -22, i32 -25, i32 -25, i32 -30>
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not = icmp eq i4 %i.l, 0
  br i1 %.not, label %bb.a, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.a:                                             ; preds = %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load <3 x i32>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !220
  %.fr45 = freeze <3 x i32> %5
  %6 = add <3 x i32> %.fr45, <i32 -3, i32 0, i32 -1>
  %7 = icmp ugt <3 x i32> %6, <i32 4, i32 131072, i32 8>
  %8 = bitcast <3 x i1> %7 to i3
  %9 = icmp eq i3 %8, 0
  br i1 %9, label %bb.b, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !89
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !90
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.o, align 4, !tbaa !58
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.p = icmp eq ptr %1, null
  %i.q = icmp eq i64 %2, 0
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.s = load i64, ptr %i.r, align 8, !tbaa !65
  %.not28.i.i = icmp eq i64 %i.s, 0
  br i1 %.not28.i.i, label %bb.d, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.230.0.copyload.i.i = load ptr, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.u = tail call noundef ptr %.sroa.0.0.copyload.i.i(ptr noundef %.sroa.230.0.copyload.i.i, i64 noundef %2), !inline_history !365
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @malloc(i64 noundef %2) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 4 uses
  %i.w = icmp eq ptr %.0.i.i.i, null
  br i1 %i.w, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3664
  store ptr %.0.i.i.i, ptr %i.y, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3672
  store i64 %2, ptr %i.z, align 8, !tbaa !142
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i32 0, ptr %i.aa, align 8, !tbaa !143
  br label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread: ; preds = %bb.g, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %bb.c, %bb.b, %bb.a, %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit
  %.4 = phi i64 [ -42, %bb.a ], [ -42, %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit ], [ -64, %bb.c ], [ 0, %bb.b ], [ -64, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ], [ 0, %bb.g ]
  ret i64 %.4
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd26ZSTD_initCStream_usingDictEPNS_11ZSTD_CCtx_sEPKvmi(ptr noundef captures(none) initializes((60, 64), (760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.b, align 8, !tbaa !139
  %i.c = icmp slt i32 %3, -131072
  br i1 %i.c, label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit
  %i.d = icmp sgt i32 %3, 22
  br i1 %i.d, label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit, label %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i

_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i: ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  %spec.select25 = select i1 %i.e, i32 3, i32 %3
  br label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit

_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit: ; preds = %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i, %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit, %bb.a
  %.sink = phi i32 [ %spec.select25, %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i ], [ -131072, %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit ], [ 22, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sink, ptr %i.f, align 4, !tbaa !58
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.g = icmp eq ptr %1, null
  %i.h = icmp eq i64 %2, 0
  %or.cond.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65
  %.not28.i.i = icmp eq i64 %i.j, 0
  br i1 %.not28.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.230.0.copyload.i.i = load ptr, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !tbaa !62
  %i.l = tail call noundef ptr %.sroa.0.0.copyload.i.i(ptr noundef %.sroa.230.0.copyload.i.i, i64 noundef %2), !inline_history !365
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %2) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 4 uses
  %i.n = icmp eq ptr %.0.i.i.i, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store ptr %.0.i.i.i, ptr %i.o, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3664
  store ptr %.0.i.i.i, ptr %i.p, align 8, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3672
  store i64 %2, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i32 0, ptr %i.r, align 8, !tbaa !143
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %bb.b, %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit
  %spec.select = phi i64 [ 0, %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit ], [ -64, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ], [ 0, %bb.f ], [ -64, %bb.b ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -60, 1) i64 @_ZN11duckdb_zstd24ZSTD_initCStream_srcSizeEPNS_11ZSTD_CCtx_sEiy(ptr noundef captures(none) initializes((760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit:
  %i.a = icmp eq i64 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3608 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !139
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr null, ptr %i.d, align 8, !tbaa !132
  %i.e = load i32, ptr %i.b, align 8, !tbaa !102
  %.not.i30.not = icmp eq i32 %i.e, 0             ; 2 uses
  br i1 %.not.i30.not, label %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.f, align 4, !tbaa !103
  br label %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit

_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit: ; preds = %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit, %bb.a
  %i.g = icmp slt i32 %1, -131072
  br i1 %i.g, label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit
  %i.h = icmp sgt i32 %1, 22
  br i1 %i.h, label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit, label %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i

_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i: ; preds = %bb.b
  %i.i = icmp eq i32 %1, 0
  %spec.select34 = select i1 %i.i, i32 3, i32 %1
  br label %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit

_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit: ; preds = %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i, %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit, %bb.b
  %.1323.i.sink = phi i32 [ %spec.select34, %_ZN11duckdb_zstdL23ZSTD_cParam_clampBoundsENS_15ZSTD_cParameterEPi.exit.i ], [ -131072, %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit ], [ 22, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.1323.i.sink, ptr %i.j, align 4, !tbaa !58
  br i1 %.not.i30.not, label %bb.c, label %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit

bb.c:                                             ; preds = %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit
  %i.k = add i64 %2, 1
  %i.l = select i1 %i.a, i64 0, i64 %i.k
  store i64 %i.l, ptr %i.c, align 8, !tbaa !139
  br label %_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit

_ZN11duckdb_zstd27ZSTD_CCtx_setPledgedSrcSizeEPNS_11ZSTD_CCtx_sEy.exit: ; preds = %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit, %bb.c
  %spec.select = phi i64 [ 0, %bb.c ], [ -60, %_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi.exit ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_initCStreamEPNS_11ZSTD_CCtx_sEi(ptr noundef captures(none) initializes((760, 768), (3608, 3612), (3664, 3688), (3696, 3728)) %0, i32 noundef %1) local_unnamed_addr #2 {
_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3608 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.b, align 8, !tbaa !139
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store ptr null, ptr %i.c, align 8, !tbaa !132
  %i.d = load i32, ptr %i.a, align 8, !tbaa !102
  %.not.i20 = icmp eq i32 %i.d, 0
  br i1 %.not.i20, label %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstd18ZSTD_CCtx_refCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !103
  br label %_ZN11duckdb_zstd22ZSTD_CCtx_setParameterEPNS_11ZSTD_CCtx_sENS_15ZSTD_cParameterEi.exit

end_hunk_0
