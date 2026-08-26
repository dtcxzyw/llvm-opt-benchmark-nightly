Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE:bb.a
  %i.w = icmp ult i64 %.0.i, 1073741825
  %i.x = icmp ult i64 %.030.i, 1073741825
  %or.cond3.i = and i1 %i.x, %i.w
  br i1 %or.cond3.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw nsw i64 %.0.i, %.030.i           ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, 64
  %i.aa = trunc nuw i64 %i.y to i32
  %i.ab = add i32 %i.aa, -1
  %i.ac = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ab, i1 true)
  %i.ad = sub nuw nsw i32 32, %i.ac
  %i.ae = select i1 %i.z, i32 6, i32 %i.ad
  %spec.store.select40.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.0.0.copyload, i32 %i.ae)
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp eq i64 %.0.i, -1
  br i1 %.not.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ %spec.store.select40.i, %bb.i ], [ %.sroa.0.sroa.0.0.copyload, %bb.j ] ; 4 uses
  %i.ag = icmp eq i64 %.030.i, 0
  br i1 %i.ag, label %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw i64 1, %i.ah                    ; 2 uses
  %i.aj = add i64 %i.ai, %.030.i                  ; 2 uses
  %i.ak = add i64 %.0.i, %.030.i
  %.not.i.i = icmp ult i64 %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.l, label %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ugt i64 %i.aj, 2147483647
  br i1 %i.al, label %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = trunc nuw nsw i64 %i.aj to i32
  %i.an = add nsw i32 %i.am, -1
  %i.ao = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.an, i1 true)
  %i.ap = sub nuw nsw i32 32, %i.ao
  br label %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i

_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %.thread.i
  %.1.i.i = phi i32 [ %i.af, %.thread.i ], [ %i.ap, %bb.m ], [ %i.af, %bb.k ], [ 31, %bb.l ] ; 3 uses
  %i.aq = icmp ugt i32 %.sroa.5.0.copyload, 5
  %.neg.i.i = sext i1 %i.aq to i32                ; 2 uses
  %i.ar = add i32 %.sroa.0.sroa.4.0.copyload, %.neg.i.i
  %i.as = add i32 %.1.i.i, 1
  %spec.store.select41.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.5.0.copyload, i32 %i.as)
  %i.at = icmp ugt i32 %i.ar, %.1.i.i
  %i.au = sub i32 %.1.i.i, %.neg.i.i
  %spec.select42 = select i1 %i.at, i32 %i.au, i32 %.sroa.0.sroa.4.0.copyload
  br label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i, %bb.j
  %.sroa.7.0 = phi i32 [ %.sroa.0.sroa.4.0.copyload, %bb.j ], [ %spec.select42, %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i ] ; 3 uses
  %.sroa.11.0 = phi i32 [ %.sroa.0.sroa.5.0.copyload, %bb.j ], [ %spec.store.select41.i, %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i ] ; 3 uses
  %i.av = phi i32 [ %.sroa.0.sroa.0.0.copyload, %bb.j ], [ %i.af, %_ZN11duckdb_zstdL21ZSTD_dictAndWindowLogEjmm.exit.i ]
  %i.aw = icmp ne i32 %4, 2
  %i.ax = add i32 %.sroa.5.0.copyload, -3
  %narrow.i.i = icmp ult i32 %i.ax, -2
  %or.cond = select i1 %i.aw, i1 true, i1 %narrow.i.i
  br i1 %or.cond, label %._crit_edge.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.n
  %spec.store.select43.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0, i32 24)
  %spec.store.select45.i = tail call i32 @llvm.umin.i32(i32 %.sroa.7.0, i32 24)
  br label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit

._crit_edge.i:                                    ; preds = %bb.n
  %i.ay = add i32 %.sroa.5.0.copyload, -6
  %i.az = icmp ult i32 %i.ay, -3
  br i1 %i.az, label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ba = tail call i32 @llvm.umax.i32(i32 %.sroa.0.sroa.6.0.copyload, i32 4)
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 6)
  %i.bc = or disjoint i32 %i.bb, 24
  %spec.store.select44.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0, i32 %i.bc)
  br label %_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit

_ZN11duckdb_zstdL27ZSTD_adjustCParams_internalENS_26ZSTD_compressionParametersEymNS_17ZSTD_cParamMode_eENS_18ZSTD_paramSwitch_eE.exit: ; preds = %._crit_edge.i.thread, %._crit_edge.i, %bb.o
  %.sroa.7.140 = phi i32 [ %.sroa.7.0, %._crit_edge.i ], [ %.sroa.7.0, %bb.o ], [ %spec.store.select45.i, %._crit_edge.i.thread ]
  %.sroa.11.2 = phi i32 [ %.sroa.11.0, %._crit_edge.i ], [ %spec.store.select44.i, %bb.o ], [ %spec.store.select43.i, %._crit_edge.i.thread ]
  %spec.store.select42.i = tail call i32 @llvm.umax.i32(i32 %i.av, i32 10)
  %i.bd = icmp slt i32 %1, 0
  %spec.select41 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %i.be = sub nsw i32 0, %spec.select41
  %.sroa.4.0 = select i1 %i.bd, i32 %i.be, i32 %.sroa.4.0.copyload
  store i32 %spec.store.select42.i, ptr %0, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.140, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.11.2, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !3
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.u, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.4.0, ptr %.sroa.1835.0..sroa_idx, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.5.0.copyload, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %1, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %i.e = add i32 %i.d, -6
  %i.f = icmp ult i32 %i.e, -3
  br i1 %i.f, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !96
  %i.h = icmp ugt i32 %i.g, 14
  %spec.select.i = select i1 %i.h, i32 1, i32 2
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.b, %bb.a ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !131
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.n = icmp ne ptr %.val, null
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load i64, ptr %i.p, align 8, !tbaa !94
  %i.r = call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %1, ptr noundef nonnull %i.l, i32 noundef 1, i32 noundef %.0.i, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.o, i64 noundef %i.q)
  br label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit, %bb.d
  %.0 = phi i64 [ %i.r, %bb.d ], [ -1, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 2, 1) %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i64 noundef %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %"struct.duckdb_zstd::ldmParams_t", align 8 ; 2 uses
  %10 = alloca %"struct.duckdb_zstd::ldmParams_t", align 8 ; 2 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !96
  %.fr40.i = freeze i32 %i.a                      ; 2 uses
  %i.b = icmp eq i64 %6, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %.fr40.i to i64
  %i.d = shl nuw i64 1, %i.c
  %. = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %6)
  %i.e = icmp eq i64 %8, 0
  %..i = select i1 %i.e, i64 131072, i64 %8
  %spec.select = tail call i64 @llvm.umin.i64(i64 %..i, i64 %.)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ 1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !101  ; 4 uses
  %.not4.i.i = icmp eq i32 %i.j, 1
  br i1 %.not4.i.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i: ; preds = %.thread
  %i.k = add i32 %i.j, -3
  %i.l = icmp ult i32 %i.k, 3
  %i.m = icmp eq i32 %3, 1
  %.not8.i.not.i = and i1 %i.m, %i.l
  br i1 %.not8.i.not.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl i64 4, %i.p
  br label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %.thread
  %i.r = phi i64 [ %i.q, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i ], [ 0, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i ], [ 0, %.thread ]
  %i.s = icmp eq i32 %i.h, 3                      ; 2 uses
  %i.t = icmp ne i32 %7, 0
  %i.u = or i1 %i.t, %i.s
  %11 = udiv i64 %i.f, 3                          ; 2 uses
  %12 = lshr i64 %i.f, 2
  %13 = select i1 %i.u, i64 %11, i64 %12          ; 2 uses
  %i.v = shl i64 %13, 3
  %i.w = add i64 %i.v, 56
  %i.x = and i64 %i.w, -64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !98
  %spec.select30.i = tail call i32 @llvm.umin.i32(i32 %.fr40.i, i32 17)
  %.fr.i = select i1 %i.s, i32 %spec.select30.i, i32 0 ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = add i32 %i.j, -6
  %i.ad = icmp ult i32 %i.ac, -3
  %i.ae = icmp ne i32 %3, 1
  %.not39.i = or i1 %i.ae, %i.ad
  %i.af = add nuw i64 %i.ab, 63
  %i.ag = and i64 %i.af, -64
  %i.ah = select i1 %.not39.i, i64 0, i64 %i.ag
  %i.ai = icmp slt i32 %i.j, 7
  %i.aj = shl i64 4, %i.aa
  %.not27.i = icmp eq i32 %.fr.i, 0
  %i.ak = zext nneg i32 %.fr.i to i64
  %i.al = shl nuw nsw i64 4, %i.ak
  %i.am = select i1 %.not27.i, i64 0, i64 %i.al
  %i.an = select i1 %i.ai, i64 128, i64 149376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !153
  %i.ao = tail call noundef i64 @_ZN11duckdb_zstd21ZSTD_ldm_getTableSizeENS_11ldmParams_tE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ldmParams_t") align 8 %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !153
  %i.ap = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ldmParams_t") align 8 %10, i64 noundef %i.f)
  %i.aq = load i32, ptr %1, align 4, !tbaa !154
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = mul i64 %i.ap, 12
  %i.at = add i64 %i.as, 60
  %i.au = and i64 %i.at, -64
  %i.av = select i1 %i.ar, i64 %i.au, i64 0
  %.not = icmp eq i32 %2, 0
  %i.aw = lshr i64 %i.f, 10
  %i.ax = add nuw nsw i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, %11
  %.not43 = icmp eq i32 %7, 0
  %i.az = shl i64 %i.ay, 4
  %i.ba = add i64 %i.az, 48
  %i.bb = and i64 %i.ba, -64
  %i.bc = select i1 %.not43, i64 0, i64 %i.bb
  %i.bd = mul nuw nsw i64 %13, 3
  %i.be = select i1 %.not, i64 20184, i64 25432
  %i.bf = add i64 %4, 32
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = add i64 %i.bg, %5
  %i.bi = add i64 %i.bh, %i.f
  %i.bj = add i64 %i.bi, %i.an
  %i.bk = add i64 %i.bj, %i.bd
  %i.bl = add i64 %i.bk, %i.am
  %i.bm = add i64 %i.bl, %i.x
  %i.bn = add i64 %i.bm, %i.bc
  %i.bo = add i64 %i.bn, %i.r
  %i.bp = add i64 %i.bo, %i.aj
  %i.bq = add i64 %i.bp, %i.ao
  %i.br = add i64 %i.bq, %i.ah
  %i.bs = add i64 %i.br, %i.av
  ret i64 %i.bs
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 4 uses
  %2 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 5 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 5 uses
  %4 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 8 ; 8 uses
  %5 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false), !alias.scope !155
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store i32 3, ptr %i.a, align 4, !tbaa !58, !alias.scope !155
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !59, !alias.scope !155
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !155 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 6
  %i.h = load i32, ptr %4, align 8, !noalias !155
  %i.i = icmp ugt i32 %i.h, 26
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  store i32 2, ptr %i.d, align 8, !tbaa !93, !alias.scope !155
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 140
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !93, !alias.scope !155
  call void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 %4)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !92, !alias.scope !155 ; 2 uses
  %.not.i1.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i1.i, label %._crit_edge, label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !155
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread.i
  %i.k = phi i32 [ %i.f, %.thread.i ], [ %.pre, %._crit_edge ]
  %i.l = phi ptr [ %i.j, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %i.m = icmp sgt i32 %i.k, 6
  br i1 %i.m, label %bb.d, label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %4, align 8, !tbaa !96, !noalias !155
  %i.o = icmp ugt i32 %i.n, 16
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.q = phi ptr [ %.phi.trans.insert.i, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  %.0.i2.i = phi i32 [ %.pre.i, %bb.b ], [ 2, %bb.c ], [ %i.p, %bb.d ]
  store i32 %.0.i2.i, ptr %i.q, align 4, !tbaa !92, !alias.scope !155
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91, !alias.scope !155 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.s, 0
  br i1 %.not.i3.i, label %bb.e, label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit

bb.e:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i
  %i.t = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !155
  %i.u = add i32 %i.t, -6
  %i.v = icmp ult i32 %i.u, -3
  br i1 %i.v, label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %4, align 8, !tbaa !96, !noalias !155
  %i.x = icmp ugt i32 %i.w, 14
  %spec.select.i.i = select i1 %i.x, i32 1, i32 2
  br label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit

_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit: ; preds = %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i, %bb.e, %bb.f
  %.0.i4.i = phi i32 [ %i.s, %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i ], [ %spec.select.i.i, %bb.f ], [ 2, %bb.e ] ; 2 uses
  store i32 %.0.i4.i, ptr %i.r, align 8, !tbaa !91, !alias.scope !155
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94, !alias.scope !155 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %..i.i = select i1 %i.aa, i64 131072, i64 %i.z  ; 3 uses
  store i64 %..i.i, ptr %i.y, align 8, !tbaa !94, !alias.scope !155
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95, !alias.scope !155 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !58, !alias.scope !155
  %.not.i5.i = icmp eq i32 %i.ac, 0
  %i.ae = icmp slt i32 %i.ad, 10
  %..i6.i = select i1 %i.ae, i32 2, i32 1
  %.0.i7.i = select i1 %.not.i5.i, i32 %..i6.i, i32 %i.ac
  store i32 %.0.i7.i, ptr %i.ab, align 8, !tbaa !95, !alias.scope !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %i.ah = add i32 %i.ag, -6
  %i.ai = icmp ult i32 %i.ah, -3
  br i1 %i.ai, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i14, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i: ; preds = %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit
  store i32 2, ptr %i.r, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %3, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !131
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7.thread, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7.thread: ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  br label %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7: ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !152
  %i.an = icmp ne ptr %.val.i, null
  %i.ao = zext i1 %i.an to i32
  %i.ap = call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.d, i32 noundef 1, i32 noundef 2, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.ao, i64 noundef %..i.i)
  %.pr = load i32, ptr %i.aj, align 4, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store i32 1, ptr %i.r, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %2, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.aq = icmp sgt i32 %.pr, 0
  br i1 %i.aq, label %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7
  %.val.i9 = load ptr, ptr %i.am, align 8, !tbaa !152
  %i.ar = icmp ne ptr %.val.i9, null
  %i.as = zext i1 %i.ar to i32
  %i.at = load i64, ptr %i.y, align 8, !tbaa !94
  %i.au = call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.d, i32 noundef 1, i32 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.as, i64 noundef %i.at)
  %i.av = call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.au)
  br label %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12

_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12: ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7.thread, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7, %bb.g
  %.0.i21 = phi i64 [ %i.av, %bb.g ], [ -1, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7 ], [ -1, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i7.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i14: ; preds = %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %1, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !131
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit19, label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i14
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 192
  %.val.i16 = load ptr, ptr %i.az, align 8, !tbaa !152
  %i.ba = icmp ne ptr %.val.i16, null
  %i.bb = zext i1 %i.ba to i32
  %i.bc = call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.d, i32 noundef 1, i32 noundef %.0.i4.i, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.bb, i64 noundef %..i.i)
  br label %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit19

_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit19: ; preds = %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i14, %bb.h
  %.0.i17 = phi i64 [ %i.bc, %bb.h ], [ -1, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit19, %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12
  %.0 = phi i64 [ %.0.i21, %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit12 ], [ %.0.i17, %_ZN11duckdb_zstd37ZSTD_estimateCCtxSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21ZSTD_estimateCCtxSizeEi(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 8 ; 25 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %.sroa.7.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.sroa.11.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.17.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.sroa.1835.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %.sroa.19.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit
  %.0112 = phi i32 [ %i.a, %bb.a ], [ %i.aw, %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit ] ; 9 uses
  %.010111 = phi i64 [ 0, %bb.a ], [ %spec.select, %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.b = icmp eq i32 %.0112, 0                    ; 2 uses
  br i1 %i.b, label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit106, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %.0112, 0
  br i1 %i.c, label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit106, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL21ZSTD_writeFrameHeaderEPvmPKNS_18ZSTD_CCtx_params_sEmj:bb.a
bb.o:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  %i.bi = trunc i64 %3 to i16
  %i.bj = add i16 %i.bi, -256
  store i16 %i.bj, ptr %i.bh, align 1, !tbaa !256
  %i.bk = add nuw nsw i64 %.2, 2
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  %i.bm = trunc i64 %3 to i32
  store i32 %i.bm, ptr %i.bl, align 1, !tbaa !3
  %i.bn = add nuw nsw i64 %.2, 4
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.2
  store i64 %3, ptr %i.bo, align 1, !tbaa !78
  %i.bp = add nuw nsw i64 %.2, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.n, %bb.m, %bb.c
  %.061 = phi i64 [ -70, %bb.c ], [ %i.bf, %bb.n ], [ %.2, %bb.m ], [ %i.bp, %bb.q ], [ %i.bk, %bb.o ], [ %i.bn, %bb.p ]
  ret i64 %.061
}

declare noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_flushStreamEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !409
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !363, !noalias !409
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = select i1 %i.c, ptr %i.d, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !409
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !232
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd14ZSTD_endStreamEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !363, !noalias !412
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = select i1 %i.c, ptr %i.d, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !412
  %i.f = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.i = load i32, ptr %i.h, align 4, !tbaa !325
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3612
  %i.l = load i32, ptr %i.k, align 4, !tbaa !375
  %.not17 = icmp eq i32 %i.l, 0                   ; 2 uses
  %i.m = select i1 %.not17, i64 3, i64 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.o = load i32, ptr %i.n, align 4, !tbaa !270
  %i.p = shl nsw i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.s = add nuw i64 %i.m, %i.f
  %i.t = add i64 %i.s, %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.1 = phi i64 [ %i.f, %bb.a ], [ %i.t, %bb.e ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11duckdb_zstd18ZSTD_defaultCLevelEv() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd15ZSTD_getCParamsEiym(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.a, i64 -1, i64 %2
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %spec.store.select, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4 captures(none) initializes((0, 40)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.a, i64 -1, i64 %2
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind noalias nonnull writable align 4 %0, i32 noundef %1, i64 noundef %spec.store.select, i64 noundef %3, i32 noundef 3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 4, !alias.scope !415
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.c, align 4, !tbaa !418, !alias.scope !415
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd29ZSTD_registerSequenceProducerEPNS_11ZSTD_CCtx_sEPvPFmS2_PNS_13ZSTD_SequenceEmPKvmS6_mimE(ptr nofree noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %.not.i, ptr null, ptr %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %spec.select.i, ptr %i.b, align 8, !tbaa !420
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd40ZSTD_CCtxParams_registerSequenceProducerEPNS_18ZSTD_CCtx_params_sEPvPFmS2_PNS_13ZSTD_SequenceEmPKvmS6_mimE(ptr nofree noundef writeonly captures(none) initializes((184, 200)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %2, null
  %spec.select = select i1 %.not, ptr null, ptr %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %2, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %spec.select, ptr %i.b, align 8, !tbaa !420
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_ldm_getTableSizeENS_11ldmParams_tE(ptr noundef byval(%"struct.duckdb_zstd::ldmParams_t") align 8) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef byval(%"struct.duckdb_zstd::ldmParams_t") align 8, i64 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE(ptr noundef initializes((232, 448), (944, 948)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i32 1, ptr %i.b, align 8, !tbaa !272
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 216, i1 false), !tbaa.struct !133
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236
  tail call void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = icmp eq i64 %2, 0
  %. = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %2)
  %spec.select304 = select i1 %i.l, i64 1, i64 %. ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %.189 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %spec.select304) ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.p = load i32, ptr %i.o, align 4, !tbaa !109
  %i.q = getelementptr i8, ptr %0, i64 424        ; 3 uses
  %.val196 = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.r = icmp ne ptr %.val196, null
  %i.s = icmp eq i32 %i.p, 3
  %i.t = or i1 %i.s, %i.r
  %6 = udiv i64 %.189, 3                          ; 2 uses
  %7 = lshr i64 %.189, 2
  %8 = select i1 %i.t, i64 %6, i64 %7             ; 8 uses
  %i.u = icmp eq i32 %5, 1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.w = load i32, ptr %i.v, align 8, !tbaa !125
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit, label %bb.e

_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit:      ; preds = %bb.d
  %i.y = lshr i64 %.189, 8
  %i.z = add nuw i64 %i.y, %.189
  %i.aa = icmp ult i64 %.189, 131072
  %i.ab = sub nuw nsw i64 131072, %.189
  %i.ac = lshr i64 %i.ab, 11
  %i.ad = select i1 %i.aa, i64 %i.ac, i64 0
  %i.ae = add nuw i64 %i.z, %i.ad
  %.fr.i = freeze i64 %i.ae                       ; 2 uses
  %i.af = icmp eq i64 %.fr.i, 0
  %i.ag = add i64 %.fr.i, 1
  %i.ah = select i1 %i.af, i64 -71, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit
  %.ph = phi i64 [ 0, %bb.d ], [ %i.ah, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = add i64 %.189, %spec.select304
  %spec.select = select i1 %i.ak, i64 %i.al, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.am = phi i64 [ %.ph, %bb.e ], [ 0, %bb.c ]   ; 5 uses
  %i.an = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ao = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ldmParams_t") align 8 %i.d, i64 noundef %.189) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !207
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !207
  %i.ar = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.as = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 3741319169
  %i.av = icmp ult i64 %3, 536870912
  %.not309 = and i1 %i.av, %i.au
  br i1 %.not309, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !421
  %.not = icmp eq i32 %i.ax, 0
  %i.ay = zext i1 %.not to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i32 [ %i.ay, %bb.g ], [ 1, %bb.f ]  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !65
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !91
  %.val195 = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.bg = icmp ne ptr %.val195, null
  %i.bh = zext i1 %i.bg to i32
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !94
  %i.bj = tail call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, i32 noundef %i.bd, i32 noundef %i.bf, i64 noundef %i.an, i64 noundef %i.am, i64 noundef %2, i32 noundef %i.bh, i64 noundef %i.bi) ; 10 uses
  %i.bk = icmp ult i64 %i.bj, -119
  br i1 %i.bk, label %bb.i, label %.thread290

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !65
  %.not184 = icmp eq i64 %i.bl, 0                 ; 2 uses
  br i1 %.not184, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !422
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !422
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.val = load ptr, ptr %i.a, align 8, !tbaa !73  ; 4 uses
  %i.bp = getelementptr i8, ptr %0, i64 688       ; 13 uses
  %.val193 = load ptr, ptr %i.bp, align 8, !tbaa !74
  %i.bq = ptrtoint ptr %.val193 to i64            ; 2 uses
  %i.br = ptrtoint ptr %.val to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bj               ; 2 uses
  %i.bu = getelementptr i8, ptr %0, i64 704       ; 28 uses
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.bv = getelementptr i8, ptr %0, i64 720       ; 25 uses
  %.val2.i = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.bw = mul i64 %i.bj, 3
  %i.bx = ptrtoint ptr %.val2.i to i64
  %i.by = ptrtoint ptr %.val.i to i64
  %i.bz = sub i64 %i.bx, %i.by
  %.not3.i = icmp ult i64 %i.bz, %i.bw
  br i1 %.not3.i, label %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit, label %.split

.split:                                           ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !422
  %i.cc = icmp sgt i32 %i.cb, 128
  %i.cd = or i1 %i.bt, %i.cc
  br i1 %i.cd, label %bb.l, label %.thread294

_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit: ; preds = %bb.k
  br i1 %i.bt, label %bb.l, label %.thread294

bb.l:                                             ; preds = %.split, %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit
  br i1 %.not184, label %bb.m, label %.thread290

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.2275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.sroa.2275.0.copyload = load ptr, ptr %.sroa.2275.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.sroa.3276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.3276.0.copyload = load ptr, ptr %.sroa.3276.0..sroa_idx, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not4.i.i = icmp eq ptr %.sroa.2275.0.copyload, null
  br i1 %.not4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %.sroa.2275.0.copyload(ptr noundef %.sroa.3276.0.copyload, ptr noundef nonnull %.val), !inline_history !355
  br label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit

bb.p:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %.val) #27
  br label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.sroa.0280.0.copyload = load ptr, ptr %i.ce, align 8, !tbaa !62 ; 2 uses
  %.not.i.i199 = icmp eq ptr %.sroa.0280.0.copyload, null
  br i1 %.not.i.i199, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit
  %.sroa.3282.0.copyload = load ptr, ptr %.sroa.3276.0..sroa_idx, align 8, !tbaa !62
  %i.cf = tail call noundef ptr %.sroa.0280.0.copyload(ptr noundef %.sroa.3282.0.copyload, i64 noundef %i.bj), !inline_history !424
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.r:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.bj) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.cf, %bb.q ], [ %i.cg, %bb.r ] ; 10 uses
  %i.ch = icmp eq ptr %.0.i.i, null
  br i1 %i.ch, label %.thread290, label %bb.s

bb.s:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bj ; 2 uses
  store ptr %i.ci, ptr %i.bp, align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %.0.i.i, ptr %i.cj, align 8, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %.0.i.i, ptr %i.ck, align 8, !tbaa !69
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = and i64 %i.cl, -64
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !425
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 0, ptr %i.cp, align 8, !tbaa !353
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 0, ptr %i.cq, align 4, !tbaa !426
  store ptr %.0.i.i, ptr %i.bu, align 8, !tbaa !68
  store ptr %i.cn, ptr %i.bv, align 8, !tbaa !423
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  store i8 0, ptr %i.cr, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 0, ptr %i.cs, align 4, !tbaa !422
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5632 ; 4 uses
  %i.cu = icmp samesign ult i64 %i.bj, 5632
  br i1 %i.cu, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.t

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.s
  store i8 1, ptr %i.cr, align 8, !tbaa !66
  store ptr null, ptr %i.ap, align 8, !tbaa !70
  br label %.thread290

bb.t:                                             ; preds = %bb.s
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !67
  store ptr %i.ct, ptr %i.bu, align 8, !tbaa !68
  store ptr %i.ct, ptr %i.ck, align 8, !tbaa !69
  store ptr %.0.i.i, ptr %i.ap, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 11264 ; 4 uses
  %i.cw = icmp samesign ult i64 %i.bj, 11264
  br i1 %i.cw, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread, label %bb.u

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread: ; preds = %bb.t
  store i8 1, ptr %i.cr, align 8, !tbaa !66
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr null, ptr %i.cx, align 8, !tbaa !71
  br label %.thread290

bb.u:                                             ; preds = %bb.t
  store ptr %i.cv, ptr %i.cj, align 8, !tbaa !67
  store ptr %i.cv, ptr %i.bu, align 8, !tbaa !68
  store ptr %i.cv, ptr %i.ck, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %i.ct, ptr %i.cy, align 8, !tbaa !71
  %i.cz = icmp samesign ult i64 %i.bj, 20184
  br i1 %i.cz, label %.thread300, label %.thread294.thread

.thread300:                                       ; preds = %bb.u
  store i8 1, ptr %i.cr, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store ptr null, ptr %i.da, align 8, !tbaa !72
  br label %.thread290

.thread294.thread:                                ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20184 ; 3 uses
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !67
  store ptr %i.db, ptr %i.ck, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store ptr %i.cv, ptr %i.dc, align 8, !tbaa !72
  store ptr %i.db, ptr %i.bu, align 8, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  store i8 0, ptr %i.dd, align 8, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit

.thread294:                                       ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit, %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  %.phi.trans.insert313 = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre314 = load i32, ptr %.phi.trans.insert313, align 8, !tbaa !353
  %.pre316 = and i64 %i.bq, -64
  %.pre318 = inttoptr i64 %.pre316 to ptr
  %i.df = icmp sgt i32 %.pre314, 1
  store ptr %.pre, ptr %i.bu, align 8, !tbaa !68
  store ptr %.pre318, ptr %i.bv, align 8, !tbaa !423
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  store i8 0, ptr %i.dg, align 8, !tbaa !66
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  br i1 %i.df, label %bb.v, label %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit

bb.v:                                             ; preds = %.thread294
  store i32 1, ptr %i.dh, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit

_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit: ; preds = %.thread294.thread, %.thread294, %bb.v
  %i.di = phi ptr [ %i.de, %.thread294.thread ], [ %i.dh, %.thread294 ], [ %i.dh, %bb.v ] ; 14 uses
  %i.dj = phi ptr [ %i.dd, %.thread294.thread ], [ %i.dg, %.thread294 ], [ %i.dg, %bb.v ] ; 11 uses
  %.1172298374 = phi i32 [ 1, %.thread294.thread ], [ %i.az, %.thread294 ], [ %i.az, %bb.v ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 22 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 3472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dl, ptr noundef nonnull align 4 dereferenceable(28) %i.h, i64 28, i1 false), !tbaa.struct !89
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !129
  %i.do = icmp eq i32 %i.dn, 1
  %i.dp = zext i1 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3512
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !427
  %i.dr = add i64 %2, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !139
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.du = icmp eq i64 %2, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.dv, align 8, !tbaa !428
  br label %bb.x

bb.x:                                             ; preds = %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit, %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i64 %.189, ptr %i.dw, align 8, !tbaa !268
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.dy = tail call noundef i32 @_ZN11duckdb_zstd11XXH64_resetEPNS_13XXH64_state_sEy(ptr noundef nonnull %i.dx, i64 noundef 0) ; 0 uses
  store i32 1, ptr %0, align 8, !tbaa !195
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 0, ptr %i.dz, align 8, !tbaa !208
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 0, ptr %i.ea, align 8, !tbaa !209
  %i.eb = load ptr, ptr %i.ap, align 8, !tbaa !70 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ec, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false), !tbaa !3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 2056
  store i32 0, ptr %i.ed, align 8, !tbaa !191
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 5604
  store i32 0, ptr %i.ee, align 4, !tbaa !192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 5608
  store i32 0, ptr %i.ef, align 8, !tbaa !193
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 5612
  store i32 0, ptr %i.eg, align 4, !tbaa !194
  %i.eh = load i32, ptr %i.be, align 8, !tbaa !91
  %i.ei = tail call fastcc noundef i64 @_ZN11duckdb_zstdL21ZSTD_reset_matchStateEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eENS_22ZSTD_compResetPolicy_eENS_23ZSTD_indexResetPolicy_eENS_18ZSTD_resetTarget_eE(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef %i.eh, i32 noundef %4, i32 noundef %.1172298374, i32 noundef 1) ; 2 uses
  %i.ej = icmp ult i64 %i.ei, -119
  br i1 %i.ej, label %bb.y, label %.thread290

bb.y:                                             ; preds = %bb.x
  %i.ek = shl i64 %8, 3
  %i.el = add i64 %i.ek, 56
  %i.em = and i64 %i.el, -64                      ; 2 uses
  %i.en = load i32, ptr %i.di, align 8, !tbaa !353 ; 4 uses
  %i.eo = icmp slt i32 %i.en, 2
  br i1 %i.eo, label %bb.z, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i

bb.z:                                             ; preds = %bb.y
  %.not.i209 = icmp eq i32 %i.en, 1
  br i1 %.not.i209, label %.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !69
  %.val.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.er = ptrtoint ptr %.val.i.i.i to i64
  %i.es = and i64 %i.er, -64
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !425
  %i.ev = ptrtoint ptr %i.ep to i64
  %i.ew = sub i64 0, %i.ev
  %i.ex = and i64 %i.ew, 63                       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ex ; 4 uses
  %i.ez = icmp ugt ptr %i.ey, %.val.i.i.i
  br i1 %i.ez, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ey, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.ey, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ey, ptr %i.eq, align 8, !tbaa !69
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ac, %bb.ab, %bb.z
  store i32 2, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i: ; preds = %.thread.i.i.i, %bb.y
  %i.fa = phi i32 [ 2, %.thread.i.i.i ], [ %i.en, %bb.y ] ; 3 uses
  %i.fb = icmp eq i64 %i.em, 0
  br i1 %i.fb, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i
  %i.fc = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.fd = sub i64 0, %i.em
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %i.fd ; 5 uses
  %i.ff = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.fg = icmp ult ptr %i.fe, %i.ff
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit

bb.af:                                            ; preds = %bb.ad
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !69
  %i.fj = icmp ult ptr %i.fe, %i.fi
  br i1 %i.fj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !69
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store ptr %i.fe, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit: ; preds = %bb.aa, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i, %bb.ae, %bb.ah
  %i.fk = phi i32 [ %i.fa, %bb.ah ], [ %i.fa, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i ], [ %i.fa, %bb.ae ], [ %i.en, %bb.aa ] ; 2 uses
  %.0.i.i208 = phi ptr [ %i.fe, %bb.ah ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i ], [ null, %bb.ae ], [ null, %bb.aa ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr %.0.i.i208, ptr %i.fl, align 8, !tbaa !275
  %i.fm = load i32, ptr %i.d, align 8, !tbaa !93
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.ai, label %bb.ba

bb.ai:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !118
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 8, %i.fq                        ; 2 uses
  %i.fs = add nuw i64 %i.fr, 56
  %i.ft = and i64 %i.fs, -64                      ; 2 uses
  %i.fu = icmp slt i32 %i.fk, 2
  br i1 %i.fu, label %bb.aj, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210

bb.aj:                                            ; preds = %bb.ai
  %i.fv = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !69
  %.val.i.i.i213 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.fx = ptrtoint ptr %.val.i.i.i213 to i64
  %i.fy = and i64 %i.fx, -64
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !425
  %i.gb = ptrtoint ptr %i.fv to i64
  %i.gc = sub i64 0, %i.gb
  %i.gd = and i64 %i.gc, 63                       ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gd ; 4 uses
  %i.gf = icmp ugt ptr %i.ge, %.val.i.i.i213
  br i1 %i.gf, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ge, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.ge, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i214 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i214, label %.thread.i.i.i215, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ge, ptr %i.fw, align 8, !tbaa !69
  br label %.thread.i.i.i215

.thread.i.i.i215:                                 ; preds = %bb.al, %bb.ak
  store i32 2, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210: ; preds = %.thread.i.i.i215, %bb.ai
  %i.gg = icmp eq i64 %i.ft, 0
  br i1 %i.gg, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216, label %bb.am

bb.am:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210
  %i.gh = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.gi = sub i64 0, %i.ft
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi ; 5 uses
  %i.gk = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.gl = icmp ult ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216

bb.ao:                                            ; preds = %bb.am
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !69
  %i.go = icmp ult ptr %i.gj, %i.gn
  br i1 %i.go, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !69
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  store ptr %i.gj, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216: ; preds = %bb.aj, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210, %bb.an, %bb.aq
  %.0.i.i211 = phi ptr [ %i.gj, %bb.aq ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i210 ], [ null, %bb.an ], [ null, %bb.aj ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %.0.i.i211, ptr %i.gq, align 8, !tbaa !429
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i211, i8 0, i64 %i.fr, i1 false)
  %i.gr = mul i64 %i.ao, 12
  %i.gs = add i64 %i.gr, 60
  %i.gt = and i64 %i.gs, -64                      ; 2 uses
  %i.gu = load i32, ptr %i.di, align 8, !tbaa !353 ; 4 uses
  %i.gv = icmp slt i32 %i.gu, 2
  br i1 %i.gv, label %bb.ar, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216
  %.not.i219 = icmp eq i32 %i.gu, 1
  br i1 %.not.i219, label %.thread.i.i.i222, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !69
  %.val.i.i.i220 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.gy = ptrtoint ptr %.val.i.i.i220 to i64
  %i.gz = and i64 %i.gy, -64
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !425
  %i.hc = ptrtoint ptr %i.gw to i64
  %i.hd = sub i64 0, %i.hc
  %i.he = and i64 %i.hd, 63                       ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.he ; 4 uses
  %i.hg = icmp ugt ptr %i.hf, %.val.i.i.i220
  br i1 %i.hg, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hf, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.hf, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i221 = icmp eq i64 %i.he, 0
  br i1 %.not.i.i.i221, label %.thread.i.i.i222, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.hf, ptr %i.gx, align 8, !tbaa !69
  br label %.thread.i.i.i222

.thread.i.i.i222:                                 ; preds = %bb.au, %bb.at, %bb.ar
  store i32 2, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217: ; preds = %.thread.i.i.i222, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216
  %i.hh = phi i32 [ 2, %.thread.i.i.i222 ], [ %i.gu, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit216 ] ; 3 uses
  %i.hi = icmp eq i64 %i.gt, 0
  br i1 %i.hi, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, label %bb.av

bb.av:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217
  %i.hj = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.hk = sub i64 0, %i.gt
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk ; 5 uses
  %i.hm = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.hn = icmp ult ptr %i.hl, %i.hm
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223

bb.ax:                                            ; preds = %bb.av
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !69
  %i.hq = icmp ult ptr %i.hl, %i.hp
  br i1 %i.hq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !69
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.hl, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223: ; preds = %bb.as, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217, %bb.aw, %bb.az
  %i.hr = phi i32 [ %i.hh, %bb.az ], [ %i.hh, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217 ], [ %i.hh, %bb.aw ], [ %i.gu, %bb.as ]
  %.0.i.i218 = phi ptr [ %i.hl, %bb.az ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i217 ], [ null, %bb.aw ], [ null, %bb.as ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store ptr %.0.i.i218, ptr %i.hs, align 8, !tbaa !430
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i64 %i.ao, ptr %i.ht, align 8, !tbaa !431
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 0, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr @.str, ptr %i.hv, align 8, !tbaa !265
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @.str, ptr %i.hw, align 8, !tbaa !262
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 2, ptr %i.hx, align 8, !tbaa !264
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store i32 2, ptr %i.hy, align 4, !tbaa !263
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %i.gp, align 8, !tbaa !261
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 0, ptr %i.hz, align 8, !tbaa !432
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit
  %i.ia = phi i32 [ %i.hr, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit223 ], [ %i.fk, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit ] ; 4 uses
  %.val194 = load ptr, ptr %i.q, align 8, !tbaa !152
  %.not311 = icmp eq ptr %.val194, null
  br i1 %.not311, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = lshr i64 %.189, 10
  %i.ic = add nuw nsw i64 %i.ib, 2
  %i.id = add nuw nsw i64 %i.ic, %6               ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 5240
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !433
  %i.if = shl i64 %i.id, 4
  %i.ig = add i64 %i.if, 48
  %i.ih = and i64 %i.ig, -64                      ; 2 uses
  %i.ii = icmp slt i32 %i.ia, 2
  br i1 %i.ii, label %bb.bc, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224

bb.bc:                                            ; preds = %bb.bb
  %i.ij = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !69
  %.val.i.i.i227 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.il = ptrtoint ptr %.val.i.i.i227 to i64
  %i.im = and i64 %i.il, -64
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.in, ptr %i.io, align 8, !tbaa !425
  %i.ip = ptrtoint ptr %i.ij to i64
  %i.iq = sub i64 0, %i.ip
  %i.ir = and i64 %i.iq, 63                       ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ir ; 4 uses
  %i.it = icmp ugt ptr %i.is, %.val.i.i.i227
  br i1 %i.it, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.is, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.is, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i228 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i.i228, label %.thread.i.i.i229, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.is, ptr %i.ik, align 8, !tbaa !69
  br label %.thread.i.i.i229

.thread.i.i.i229:                                 ; preds = %bb.be, %bb.bd
  store i32 2, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224: ; preds = %.thread.i.i.i229, %bb.bb
  %i.iu = phi i32 [ 2, %.thread.i.i.i229 ], [ %i.ia, %bb.bb ] ; 3 uses
  %i.iv = icmp eq i64 %i.ih, 0
  br i1 %i.iv, label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, label %bb.bf

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224
  %i.iw = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.ix = sub i64 0, %i.ih
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 %i.ix ; 5 uses
  %i.iz = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.ja = icmp ult ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230

bb.bh:                                            ; preds = %bb.bf
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !69
  %i.jd = icmp ult ptr %i.iy, %i.jc
  br i1 %i.jd, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.iy, ptr %i.jb, align 8, !tbaa !69
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store ptr %i.iy, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230

_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230: ; preds = %bb.bc, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224, %bb.bg, %bb.bj
  %i.je = phi i32 [ %i.iu, %bb.bj ], [ %i.iu, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224 ], [ %i.iu, %bb.bg ], [ %i.ia, %bb.bc ]
  %.0.i.i225 = phi ptr [ %i.iy, %bb.bj ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i224 ], [ null, %bb.bg ], [ null, %bb.bc ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 5232
  store ptr %.0.i.i225, ptr %i.jf, align 8, !tbaa !434
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230, %bb.ba
  %i.jg = phi i32 [ %i.je, %_ZN11duckdb_zstdL26ZSTD_cwksp_reserve_alignedEPNS_10ZSTD_cwkspEm.exit230 ], [ %i.ia, %bb.ba ] ; 4 uses
  %i.jh = icmp slt i32 %i.jg, 3
  br i1 %i.jh, label %bb.bl, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231

bb.bl:                                            ; preds = %bb.bk
  %i.ji = icmp slt i32 %i.jg, 1
  br i1 %i.ji, label %bb.bm, label %.thread.i.i.i233

bb.bm:                                            ; preds = %bb.bl
  %i.jj = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !69
  %.val.i.i.i234 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.jl = ptrtoint ptr %.val.i.i.i234 to i64
  %i.jm = and i64 %i.jl, -64
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !425
  %i.jp = ptrtoint ptr %i.jj to i64
  %i.jq = sub i64 0, %i.jp
  %i.jr = and i64 %i.jq, 63                       ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jr ; 4 uses
  %i.jt = icmp ugt ptr %i.js, %.val.i.i.i234
  br i1 %i.jt, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.js, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.js, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i235 = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i.i235, label %.thread.i.i.i233, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.js, ptr %i.jk, align 8, !tbaa !69
  br label %.thread.i.i.i233

.thread.i.i.i233:                                 ; preds = %bb.bo, %bb.bn, %bb.bl
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231: ; preds = %bb.bk, %.thread.i.i.i233
  %i.ju = phi i32 [ %i.jg, %bb.bk ], [ 3, %.thread.i.i.i233 ]
  %i.jv = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.jw = sub nuw i64 -32, %.189
  %i.jx = getelementptr inbounds i8, ptr %i.jv, i64 %i.jw ; 5 uses
  %i.jy = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.jz = icmp ult ptr %i.jx, %i.jy
  br i1 %i.jz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i231
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !69
  %i.kc = icmp ult ptr %i.jx, %i.kb
  br i1 %i.kc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !69
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store ptr %i.jx, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.bs, %bb.bp
  %.0.i.i232.ph = phi ptr [ null, %bb.bp ], [ %i.jx, %bb.bs ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr %.0.i.i232.ph, ptr %i.kd, align 8, !tbaa !435
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %.189, ptr %i.ke, align 8, !tbaa !436
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %5, ptr %i.kf, align 8, !tbaa !196
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store i64 %i.an, ptr %i.kg, align 8, !tbaa !323
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236

bb.bt:                                            ; preds = %bb.bm
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr null, ptr %i.kh, align 8, !tbaa !435
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %.189, ptr %i.ki, align 8, !tbaa !436
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store i32 %5, ptr %i.kj, align 8, !tbaa !196
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store i64 %i.an, ptr %i.kk, align 8, !tbaa !323
  %i.kl = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !69
  %.val.i.i.i239 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.kn = ptrtoint ptr %.val.i.i.i239 to i64
  %i.ko = and i64 %i.kn, -64
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !425
  %i.kr = ptrtoint ptr %i.kl to i64
  %i.ks = sub i64 0, %i.kr
  %i.kt = and i64 %i.ks, 63                       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kt ; 4 uses
  %i.kv = icmp ugt ptr %i.ku, %.val.i.i.i239
  br i1 %i.kv, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.ku, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.ku, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i240 = icmp eq i64 %i.kt, 0
  br i1 %.not.i.i.i240, label %.thread.i.i.i238, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.ku, ptr %i.km, align 8, !tbaa !69
  br label %.thread.i.i.i238

.thread.i.i.i238:                                 ; preds = %bb.bv, %bb.bu
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread, %.thread.i.i.i238
  %i.kw = phi i32 [ 3, %.thread.i.i.i238 ], [ %i.ju, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit.thread ]
  %i.kx = icmp eq i64 %i.an, 0
  br i1 %i.kx, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread, label %bb.bw

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236
  %i.ky = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.kz = sub i64 0, %i.an
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 %i.kz ; 5 uses
  %i.lb = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.lc = icmp ult ptr %i.la, %i.lb
  br i1 %i.lc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread

bb.by:                                            ; preds = %bb.bw
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !69
  %i.lf = icmp ult ptr %i.la, %i.le
  br i1 %i.lf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr %i.la, ptr %i.ld, align 8, !tbaa !69
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store ptr %i.la, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread: ; preds = %bb.ca, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236, %bb.bx
  %.0.i.i237.ph = phi ptr [ null, %bb.bx ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i236 ], [ %i.la, %bb.ca ]
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store ptr %.0.i.i237.ph, ptr %i.lg, align 8, !tbaa !179
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i64 %i.am, ptr %i.lh, align 8, !tbaa !324
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242

bb.cb:                                            ; preds = %bb.bt
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store ptr null, ptr %i.li, align 8, !tbaa !179
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 3584
  store i64 %i.am, ptr %i.lj, align 8, !tbaa !324
  %i.lk = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !69
  %.val.i.i.i245 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.lm = ptrtoint ptr %.val.i.i.i245 to i64
  %i.ln = and i64 %i.lm, -64
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !425
  %i.lq = ptrtoint ptr %i.lk to i64
  %i.lr = sub i64 0, %i.lq
  %i.ls = and i64 %i.lr, 63                       ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ls ; 4 uses
  %i.lu = icmp ugt ptr %i.lt, %.val.i.i.i245
  br i1 %i.lu, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.lt, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.lt, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i246 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i.i246, label %.thread.i.i.i244, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.lt, ptr %i.ll, align 8, !tbaa !69
  br label %.thread.i.i.i244

.thread.i.i.i244:                                 ; preds = %bb.cd, %bb.cc
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread, %.thread.i.i.i244
  %i.lv = phi i32 [ 3, %.thread.i.i.i244 ], [ %i.kw, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit241.thread ] ; 3 uses
  %i.lw = icmp eq i64 %i.am, 0
  br i1 %i.lw, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247, label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242
  %i.lx = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.ly = sub i64 0, %i.am
  %i.lz = getelementptr inbounds i8, ptr %i.lx, i64 %i.ly ; 5 uses
  %i.ma = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.mb = icmp ult ptr %i.lz, %i.ma
  br i1 %i.mb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247

bb.cg:                                            ; preds = %bb.ce
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !69
  %i.me = icmp ult ptr %i.lz, %i.md
  br i1 %i.me, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr %i.lz, ptr %i.mc, align 8, !tbaa !69
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr %i.lz, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247: ; preds = %bb.cb, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242, %bb.cf, %bb.ci
  %i.mf = phi i32 [ %i.lv, %bb.ci ], [ %i.lv, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242 ], [ %i.lv, %bb.cf ], [ %i.jg, %bb.cb ] ; 2 uses
  %.0.i.i243 = phi ptr [ %i.lz, %bb.ci ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i242 ], [ null, %bb.cf ], [ null, %bb.cb ]
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store ptr %.0.i.i243, ptr %i.mg, align 8, !tbaa !376
  %i.mh = load i32, ptr %i.d, align 8, !tbaa !93
  %i.mi = icmp eq i32 %i.mh, 1
  br i1 %i.mi, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !118
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !120
  %i.mn = sub i32 %i.mk, %i.mm
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = shl nuw i64 1, %i.mo                    ; 2 uses
  %i.mq = icmp slt i32 %i.mf, 3
  br i1 %i.mq, label %bb.ck, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248

bb.ck:                                            ; preds = %bb.cj
  %i.mr = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !69
  %.val.i.i.i251 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.mt = ptrtoint ptr %.val.i.i.i251 to i64
  %i.mu = and i64 %i.mt, -64
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.mv, ptr %i.mw, align 8, !tbaa !425
  %i.mx = ptrtoint ptr %i.mr to i64
  %i.my = sub i64 0, %i.mx
  %i.mz = and i64 %i.my, 63                       ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mz ; 4 uses
  %i.nb = icmp ugt ptr %i.na, %.val.i.i.i251
  br i1 %i.nb, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.na, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.na, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i252 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i252, label %.thread.i.i.i250, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store ptr %i.na, ptr %i.ms, align 8, !tbaa !69
  br label %.thread.i.i.i250

.thread.i.i.i250:                                 ; preds = %bb.cm, %bb.cl
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248: ; preds = %.thread.i.i.i250, %bb.cj
  %i.nc = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.nd = sub i64 0, %i.mp
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %i.nd ; 5 uses
  %i.nf = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.ng = icmp ult ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253

bb.co:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i248
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !69
  %i.nj = icmp ult ptr %i.ne, %i.ni
  br i1 %i.nj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr %i.ne, ptr %i.nh, align 8, !tbaa !69
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  store ptr %i.ne, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253: ; preds = %bb.ck, %bb.cn, %bb.cq
  %.0.i.i249 = phi ptr [ %i.ne, %bb.cq ], [ null, %bb.ck ], [ null, %bb.cn ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store ptr %.0.i.i249, ptr %i.nk, align 8, !tbaa !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i249, i8 0, i64 %i.mp, i1 false)
  %.pre315 = load i32, ptr %i.di, align 8, !tbaa !353
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247
  %i.nl = phi i32 [ %.pre315, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit253 ], [ %i.mf, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit247 ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nm, i8 0, i64 40, i1 false)
  store i64 %8, ptr %i.nn, align 8, !tbaa !388
  %i.no = icmp slt i32 %i.nl, 3
  br i1 %i.no, label %bb.cs, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254

bb.cs:                                            ; preds = %bb.cr
  %i.np = icmp slt i32 %i.nl, 1
  br i1 %i.np, label %bb.ct, label %.thread.i.i.i256

bb.ct:                                            ; preds = %bb.cs
  %i.nq = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !69
  %.val.i.i.i257 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.ns = ptrtoint ptr %.val.i.i.i257 to i64
  %i.nt = and i64 %i.ns, -64
  %i.nu = inttoptr i64 %i.nt to ptr
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !425
  %i.nw = ptrtoint ptr %i.nq to i64
  %i.nx = sub i64 0, %i.nw
  %i.ny = and i64 %i.nx, 63                       ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ny ; 4 uses
  %i.oa = icmp ugt ptr %i.nz, %.val.i.i.i257
  br i1 %i.oa, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.nz, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.nz, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i258 = icmp eq i64 %i.ny, 0
  br i1 %.not.i.i.i258, label %.thread.i.i.i256, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.nz, ptr %i.nr, align 8, !tbaa !69
  br label %.thread.i.i.i256

.thread.i.i.i256:                                 ; preds = %bb.cv, %bb.cu, %bb.cs
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254: ; preds = %.thread.i.i.i256, %bb.cr
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit259.thread, label %bb.cw

bb.cw:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254
  %i.ob = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.oc = sub nsw i64 0, %8
  %i.od = getelementptr inbounds i8, ptr %i.ob, i64 %i.oc ; 5 uses
  %i.oe = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.of = icmp ult ptr %i.od, %i.oe
  br i1 %i.of, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit259.thread

bb.cy:                                            ; preds = %bb.cw
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !69
  %i.oi = icmp ult ptr %i.od, %i.oh
  br i1 %i.oi, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.od, ptr %i.og, align 8, !tbaa !69
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store ptr %i.od, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit259.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit259.thread: ; preds = %bb.da, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254, %bb.cx
  %.0.i.i255.ph = phi ptr [ null, %bb.cx ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i254 ], [ %i.od, %bb.da ]
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %.0.i.i255.ph, ptr %i.oj, align 8, !tbaa !438
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260

bb.db:                                            ; preds = %bb.ct
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr null, ptr %i.ok, align 8, !tbaa !438
  %i.ol = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !69
  %.val.i.i.i263 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.on = ptrtoint ptr %.val.i.i.i263 to i64
  %i.oo = and i64 %i.on, -64
  %i.op = inttoptr i64 %i.oo to ptr
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !425
  %i.or = ptrtoint ptr %i.ol to i64
  %i.os = sub i64 0, %i.or
  %i.ot = and i64 %i.os, 63                       ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ot ; 4 uses
  %i.ov = icmp ugt ptr %i.ou, %.val.i.i.i263
  br i1 %i.ov, label %bb.dj, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store ptr %i.ou, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.ou, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i264 = icmp eq i64 %i.ot, 0
  br i1 %.not.i.i.i264, label %.thread.i.i.i262, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.ou, ptr %i.om, align 8, !tbaa !69
  br label %.thread.i.i.i262

.thread.i.i.i262:                                 ; preds = %bb.dd, %bb.dc
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit259.thread, %.thread.i.i.i262
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit265.thread, label %bb.de

bb.de:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260
  %i.ow = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.ox = sub nsw i64 0, %8
  %i.oy = getelementptr inbounds i8, ptr %i.ow, i64 %i.ox ; 5 uses
  %i.oz = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.pa = icmp ult ptr %i.oy, %i.oz
  br i1 %i.pa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit265.thread

bb.dg:                                            ; preds = %bb.de
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !69
  %i.pd = icmp ult ptr %i.oy, %i.pc
  br i1 %i.pd, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store ptr %i.oy, ptr %i.pb, align 8, !tbaa !69
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  store ptr %i.oy, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit265.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit265.thread: ; preds = %bb.di, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260, %bb.df
  %.0.i.i261.ph = phi ptr [ null, %bb.df ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i260 ], [ %i.oy, %bb.di ]
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %.0.i.i261.ph, ptr %i.pe, align 8, !tbaa !439
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266

bb.dj:                                            ; preds = %bb.db
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr null, ptr %i.pf, align 8, !tbaa !439
  %i.pg = load ptr, ptr %i.dk, align 8, !tbaa !67 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !69
  %.val.i.i.i269 = load ptr, ptr %i.bp, align 8, !tbaa !74 ; 2 uses
  %i.pi = ptrtoint ptr %.val.i.i.i269 to i64
  %i.pj = and i64 %i.pi, -64
  %i.pk = inttoptr i64 %i.pj to ptr
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !425
  %i.pm = ptrtoint ptr %i.pg to i64
  %i.pn = sub i64 0, %i.pm
  %i.po = and i64 %i.pn, 63                       ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.po ; 4 uses
  %i.pq = icmp ugt ptr %i.pp, %.val.i.i.i269
  br i1 %i.pq, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.pp, ptr %i.dk, align 8, !tbaa !67
  store ptr %i.pp, ptr %i.bu, align 8, !tbaa !68
  %.not.i.i.i270 = icmp eq i64 %i.po, 0
  br i1 %.not.i.i.i270, label %.thread.i.i.i268, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store ptr %i.pp, ptr %i.ph, align 8, !tbaa !69
  br label %.thread.i.i.i268

.thread.i.i.i268:                                 ; preds = %bb.dl, %bb.dk
  store i32 3, ptr %i.di, align 8, !tbaa !353
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266: ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit265.thread, %.thread.i.i.i268
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271, label %bb.dm

bb.dm:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266
  %i.pr = load ptr, ptr %i.bv, align 8, !tbaa !423
  %i.ps = sub nsw i64 0, %8
  %i.pt = getelementptr inbounds i8, ptr %i.pr, i64 %i.ps ; 5 uses
  %i.pu = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.pv = icmp ult ptr %i.pt, %i.pu
  br i1 %i.pv, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i8 1, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271

bb.do:                                            ; preds = %bb.dm
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !69
  %i.py = icmp ult ptr %i.pt, %i.px
  br i1 %i.py, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store ptr %i.pt, ptr %i.pw, align 8, !tbaa !69
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  store ptr %i.pt, ptr %i.bv, align 8, !tbaa !423
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271: ; preds = %bb.dj, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266, %bb.dn, %bb.dq
  %.0.i.i267 = phi ptr [ %i.pt, %bb.dq ], [ null, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.i.i266 ], [ null, %bb.dn ], [ null, %bb.dj ]
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %.0.i.i267, ptr %i.pz, align 8, !tbaa !440
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 948
  store i32 1, ptr %i.qa, align 4, !tbaa !421
  br label %.thread290

.thread290:                                       ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, %bb.l, %.thread300, %bb.x, %bb.h, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271
  %.5 = phi i64 [ 0, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_bufferEPNS_10ZSTD_cwkspEm.exit271 ], [ %i.ei, %bb.x ], [ -64, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ], [ %i.bj, %bb.h ], [ -64, %.thread300 ], [ -64, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread ], [ -64, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread ], [ -64, %bb.l ]
  ret i64 %.5
}

declare noundef i32 @_ZN11duckdb_zstd11XXH64_resetEPNS_13XXH64_state_sEy(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstdL21ZSTD_reset_matchStateEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eENS_22ZSTD_compResetPolicy_eENS_23ZSTD_indexResetPolicy_eENS_18ZSTD_resetTarget_eE(ptr nofree noundef captures(none) initializes((24, 32), (40, 52), (112, 136), (196, 200), (248, 256), (300, 304)) %0, ptr nofree noundef initializes((24, 32)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !441
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp ne i32 %6, 0                        ; 4 uses
  %.not160 = or i1 %i.f, %i.e
  br i1 %.not160, label %bb.b, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155

bb.b:                                             ; preds = %bb.a
  %.not4.i = icmp eq i32 %i.b, 1
  br i1 %.not4.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit: ; preds = %bb.b
  %i.g = add i32 %i.b, -3
  %i.h = icmp ult i32 %i.g, 3
  %i.i = icmp eq i32 %3, 1
  %.not8.i.not = and i1 %i.i, %i.h
  br i1 %.not8.i.not, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155: ; preds = %bb.a, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 4, %i.l
  br label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread: ; preds = %bb.b, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155
  %i.n = phi i64 [ %i.m, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155 ], [ 0, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !98
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !100
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %2, align 4, !tbaa !96
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.v, i32 17)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread, %bb.c
  %i.w = phi i32 [ %spec.select, %bb.d ], [ 0, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread ], [ 0, %bb.c ] ; 3 uses
  %.not74 = icmp eq i32 %i.w, 0                   ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %.not75 = icmp eq i32 %5, 0
  br i1 %.not75, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !261
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre165 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !265
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre167 = load ptr, ptr %.phi.trans.insert166, align 8, !tbaa !67
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %i.z, align 8, !tbaa !265
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.aa, align 8, !tbaa !262
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %0, align 8, !tbaa !261
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ae = phi ptr [ %.pre167, %._crit_edge ], [ %i.ac, %bb.f ] ; 6 uses
  %i.af = phi ptr [ %.pre165, %._crit_edge ], [ @.str, %bb.f ]
  %i.ag = phi ptr [ %.pre, %._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @.str, i64 2), %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.w, ptr %i.ah, align 8, !tbaa !442
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.ai, align 4, !tbaa !443
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !263
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !264
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !266
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.aq, align 8, !tbaa !444
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.ar, align 4, !tbaa !445
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.as, align 8, !tbaa !446
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 22 uses
  store ptr %i.ae, ptr %i.au, align 8, !tbaa !68
  %i.av = shl i64 4, %i.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 14 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !353
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.ae, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.ba, align 8, !tbaa !74 ; 2 uses
  %i.bb = ptrtoint ptr %.val.i.i to i64
  %i.bc = and i64 %i.bb, -64
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !425
  %i.bf = ptrtoint ptr %i.ae to i64
  %i.bg = sub i64 0, %i.bf
  %i.bh = and i64 %i.bg, 63                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bh ; 5 uses
  %i.bj = icmp ugt ptr %i.bi, %.val.i.i
  br i1 %i.bj, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bi, ptr %i.at, align 8, !tbaa !67
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !68
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bi, ptr %i.az, align 8, !tbaa !69
  br label %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.thread.i

_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.thread.i: ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.aw, align 8, !tbaa !353
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.thread.i
  %i.bk = phi ptr [ %i.bi, %_ZN11duckdb_zstdL33ZSTD_cwksp_internal_advance_phaseEPNS_10ZSTD_cwkspENS_24ZSTD_cwksp_alloc_phase_eE.exit.thread.i ], [ %i.ae, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.av ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !423
  %i.bo = icmp ugt ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.bp, align 8, !tbaa !66
  br label %._crit_edge.i83

bb.l:                                             ; preds = %._crit_edge.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !68
  br label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %bb.l, %bb.k
  %.pre.i85.ph = phi ptr [ %i.bk, %bb.k ], [ %i.bl, %bb.l ]
  %.0.i.ph = phi ptr [ null, %bb.k ], [ %i.bk, %bb.l ]
end_hunk_1
