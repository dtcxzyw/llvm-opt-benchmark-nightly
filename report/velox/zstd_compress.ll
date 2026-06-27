inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@ZSTD_getCParams_internal:bb.a
  %.030.i = phi i64 [ %3, %bb.e ], [ 0, %bb.g ], [ %3, %bb.f ] ; 5 uses
  %.0.i = phi i64 [ %2, %bb.e ], [ %2, %bb.g ], [ %spec.store.select4.i, %bb.f ] ; 4 uses
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
  br i1 %i.ag, label %ZSTD_dictAndWindowLog.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = shl nuw i64 1, %i.ah                    ; 2 uses
  %i.aj = add i64 %i.ai, %.030.i                  ; 2 uses
  %i.ak = add i64 %.0.i, %.030.i
  %.not.i.i = icmp ult i64 %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.l, label %ZSTD_dictAndWindowLog.exit.i

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ugt i64 %i.aj, 2147483647
  br i1 %i.al, label %ZSTD_dictAndWindowLog.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = trunc nuw nsw i64 %i.aj to i32
  %i.an = add nsw i32 %i.am, -1
  %i.ao = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.an, i1 true)
  %i.ap = sub nuw nsw i32 32, %i.ao
  br label %ZSTD_dictAndWindowLog.exit.i

ZSTD_dictAndWindowLog.exit.i:                     ; preds = %bb.m, %bb.l, %bb.k, %.thread.i
  %.1.i.i = phi i32 [ %i.af, %.thread.i ], [ %i.ap, %bb.m ], [ %i.af, %bb.k ], [ 31, %bb.l ] ; 3 uses
  %i.aq = icmp ugt i32 %.sroa.5.0.copyload, 5
  %.neg.i.i = sext i1 %i.aq to i32                ; 2 uses
  %i.ar = add i32 %.sroa.0.sroa.4.0.copyload, %.neg.i.i
  %i.as = add i32 %.1.i.i, 1
  %spec.store.select41.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.5.0.copyload, i32 %i.as)
  %i.at = icmp ugt i32 %i.ar, %.1.i.i
  %i.au = sub i32 %.1.i.i, %.neg.i.i
  %spec.select41 = select i1 %i.at, i32 %i.au, i32 %.sroa.0.sroa.4.0.copyload
  br label %bb.n

bb.n:                                             ; preds = %ZSTD_dictAndWindowLog.exit.i, %bb.j
  %.sroa.7.0 = phi i32 [ %.sroa.0.sroa.4.0.copyload, %bb.j ], [ %spec.select41, %ZSTD_dictAndWindowLog.exit.i ] ; 3 uses
  %.sroa.11.0 = phi i32 [ %.sroa.0.sroa.5.0.copyload, %bb.j ], [ %spec.store.select41.i, %ZSTD_dictAndWindowLog.exit.i ] ; 3 uses
  %i.av = phi i32 [ %.sroa.0.sroa.0.0.copyload, %bb.j ], [ %i.af, %ZSTD_dictAndWindowLog.exit.i ]
  %i.aw = icmp ne i32 %4, 2
  %i.ax = add i32 %.sroa.5.0.copyload, -3
  %narrow.i.i = icmp ult i32 %i.ax, -2
  %or.cond = select i1 %i.aw, i1 true, i1 %narrow.i.i
  br i1 %or.cond, label %._crit_edge.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.n
  %spec.store.select43.i.a = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0, i32 24)
  %spec.store.select45.i.a = tail call i32 @llvm.umin.i32(i32 %.sroa.7.0, i32 24)
  br label %ZSTD_adjustCParams_internal.exit

._crit_edge.i:                                    ; preds = %bb.n
  %i.ay = add i32 %.sroa.5.0.copyload, -6
  %i.az = icmp ult i32 %i.ay, -3
  br i1 %i.az, label %ZSTD_adjustCParams_internal.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ba = tail call i32 @llvm.umax.i32(i32 %.sroa.0.sroa.6.0.copyload, i32 4)
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 6)
  %i.bc = or disjoint i32 %i.bb, 24
  %spec.store.select44.i = tail call i32 @llvm.umin.i32(i32 %.sroa.11.0, i32 %i.bc)
  br label %ZSTD_adjustCParams_internal.exit

ZSTD_adjustCParams_internal.exit:                 ; preds = %._crit_edge.i.thread, %._crit_edge.i, %bb.o
  %.sroa.7.139 = phi i32 [ %.sroa.7.0, %._crit_edge.i ], [ %.sroa.7.0, %bb.o ], [ %spec.store.select45.i.a, %._crit_edge.i.thread ]
  %.sroa.11.2 = phi i32 [ %.sroa.11.0, %._crit_edge.i ], [ %spec.store.select44.i, %bb.o ], [ %spec.store.select43.i.a, %._crit_edge.i.thread ]
  %spec.store.select42.i = tail call i32 @llvm.umax.i32(i32 %i.av, i32 10)
  %i.bd = icmp slt i32 %1, 0
  %spec.select40 = tail call i32 @llvm.umax.i32(i32 %1, i32 -131072)
  %i.be = sub nsw i32 0, %spec.select40
  %.sroa.4.0 = select i1 %i.bd, i32 %i.be, i32 %.sroa.4.0.copyload
  store i32 %spec.store.select42.i, ptr %0, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.139, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !3
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.11.2, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !3
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i32> %i.u, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.4.0, ptr %.sroa.1834.0..sroa_idx, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.5.0.copyload, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_estimateCCtxSize_usingCCtxParams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.ZSTD_compressionParameters, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %1, ptr noundef %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %ZSTD_resolveRowMatchFinderMode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = add i32 %i.d, -6
  %i.f = icmp ult i32 %i.e, -3
  br i1 %i.f, label %ZSTD_resolveRowMatchFinderMode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4, !tbaa !68
  %i.h = icmp ugt i32 %i.g, 14
  %spec.select.i = select i1 %i.h, i32 1, i32 2
  br label %ZSTD_resolveRowMatchFinderMode.exit

ZSTD_resolveRowMatchFinderMode.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.b, %bb.a ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !110
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ZSTD_resolveRowMatchFinderMode.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.n = icmp ne ptr %.val, null
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79
  %i.r = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %1, ptr noundef nonnull %i.l, i32 noundef 1, i32 noundef %.0.i, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.o, i64 noundef %i.q)
  br label %bb.e

bb.e:                                             ; preds = %ZSTD_resolveRowMatchFinderMode.exit, %bb.d
  %.0 = phi i64 [ %i.r, %bb.d ], [ -1, %ZSTD_resolveRowMatchFinderMode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i64 noundef %4, i64 noundef range(i64 2, 1) %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i64 noundef %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.ldmParams_t, align 8        ; 4 uses
  %10 = alloca %struct.ldmParams_t, align 8       ; 4 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !68
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73   ; 4 uses
  %.not4.i.i = icmp eq i32 %i.j, 1
  br i1 %.not4.i.i, label %ZSTD_allocateChainTable.exit.thread.i, label %ZSTD_allocateChainTable.exit.i

ZSTD_allocateChainTable.exit.i:                   ; preds = %.thread
  %i.k = add i32 %i.j, -3
  %i.l = icmp ult i32 %i.k, 3
  %i.m = icmp eq i32 %3, 1
  %.not8.i.not.i = and i1 %i.m, %i.l
  br i1 %.not8.i.not.i, label %ZSTD_allocateChainTable.exit.thread.i, label %ZSTD_allocateChainTable.exit.thread32.i

ZSTD_allocateChainTable.exit.thread32.i:          ; preds = %ZSTD_allocateChainTable.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl i64 4, %i.p
  br label %ZSTD_allocateChainTable.exit.thread.i

ZSTD_allocateChainTable.exit.thread.i:            ; preds = %ZSTD_allocateChainTable.exit.thread32.i, %ZSTD_allocateChainTable.exit.i, %.thread
  %i.r = phi i64 [ %i.q, %ZSTD_allocateChainTable.exit.thread32.i ], [ 0, %ZSTD_allocateChainTable.exit.i ], [ 0, %.thread ]
  %i.s = icmp eq i32 %i.h, 3                      ; 2 uses
  %11 = trunc nuw i32 %7 to i1
  %i.t = or i1 %i.s, %11
  %i.u = select i1 %i.t, i64 3, i64 4
  %i.v = udiv i64 %i.f, %i.u                      ; 2 uses
  %i.w = shl i64 %i.v, 3
  %i.x = add i64 %i.w, 56
  %i.y = and i64 %i.x, -64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !70
  %spec.select30.i = tail call i32 @llvm.umin.i32(i32 %.fr40.i, i32 17)
  %.fr.i = select i1 %i.s, i32 %spec.select30.i, i32 0 ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = add i32 %i.j, -6
  %i.ae = icmp ult i32 %i.ad, -3
  %i.af = icmp ne i32 %3, 1
  %.not39.i = or i1 %i.af, %i.ae
  %i.ag = add nuw i64 %i.ac, 63
  %i.ah = and i64 %i.ag, -64
  %i.ai = select i1 %.not39.i, i64 0, i64 %i.ah
  %i.aj = icmp ult i32 %i.j, 7
  %i.ak = shl i64 4, %i.ab
  %.not27.i = icmp eq i32 %.fr.i, 0
  %i.al = zext nneg i32 %.fr.i to i64
  %i.am = shl nuw nsw i64 4, %i.al
  %i.an = select i1 %.not27.i, i64 0, i64 %i.am
  %i.ao = select i1 %i.aj, i64 128, i64 149376
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !128
  %i.ap = tail call i64 @ZSTD_ldm_getTableSize(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !128
  %i.aq = tail call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef nonnull byval(%struct.ldmParams_t) align 8 %10, i64 noundef %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ar = load i32, ptr %1, align 4, !tbaa !129
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = mul i64 %i.aq, 12
  %i.au = add i64 %i.at, 60
  %i.av = and i64 %i.au, -64
  %i.aw = select i1 %i.as, i64 %i.av, i64 0
  %.not = icmp eq i32 %2, 0
  %i.ax = udiv i64 %i.f, 3
  %i.ay = lshr i64 %i.f, 10
  %i.az = add nuw nsw i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, %i.ax
  %.not43 = icmp eq i32 %7, 0
  %i.bb = shl i64 %i.ba, 4
  %i.bc = add i64 %i.bb, 48
  %i.bd = and i64 %i.bc, -64
  %i.be = select i1 %.not43, i64 0, i64 %i.bd
  %i.bf = mul nuw nsw i64 %i.v, 3
  %i.bg = select i1 %.not, i64 20184, i64 25432
  %i.bh = add i64 %4, 32
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = add i64 %i.bi, %5
  %i.bk = add i64 %i.bj, %i.f
  %i.bl = add i64 %i.bk, %i.ao
  %i.bm = add i64 %i.bl, %i.an
  %i.bn = add i64 %i.bm, %i.be
  %i.bo = add i64 %i.bn, %i.r
  %i.bp = add i64 %i.bo, %i.bf
  %i.bq = add i64 %i.bp, %i.y
  %i.br = add i64 %i.bq, %i.ak
  %i.bs = add i64 %i.br, %i.ap
  %i.bt = add i64 %i.bs, %i.ai
  %i.bu = add i64 %i.bt, %i.aw
  ret i64 %i.bu
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_estimateCCtxSize_usingCParams(ptr nofree noundef readonly byval(%struct.ZSTD_compressionParameters) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.ZSTD_compressionParameters, align 4 ; 4 uses
  %2 = alloca %struct.ZSTD_compressionParameters, align 4 ; 5 uses
  %3 = alloca %struct.ZSTD_compressionParameters, align 4 ; 5 uses
  %4 = alloca %struct.ZSTD_compressionParameters, align 8 ; 8 uses
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false), !alias.scope !130
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  store i32 3, ptr %i.a, align 4, !tbaa !43, !alias.scope !130
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !44, !alias.scope !130
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73, !noalias !130 ; 2 uses
  %i.g = icmp ugt i32 %i.f, 6
  %i.h = load i32, ptr %4, align 8, !noalias !130
  %i.i = icmp ugt i32 %i.h, 26
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  store i32 2, ptr %i.d, align 8, !tbaa !78, !alias.scope !130
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 140
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !78, !alias.scope !130
  call void @ZSTD_ldm_adjustParameters(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 %4) #28
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !77, !alias.scope !130 ; 2 uses
  %.not.i1.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i1.i, label %._crit_edge, label %ZSTD_resolveBlockSplitterMode.exit.i

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.e, align 8, !tbaa !73, !noalias !130
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread.i
  %i.k = phi i32 [ %i.f, %.thread.i ], [ %.pre, %._crit_edge ]
  %i.l = phi ptr [ %i.j, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %i.m = icmp ugt i32 %i.k, 6
  br i1 %i.m, label %bb.d, label %ZSTD_resolveBlockSplitterMode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %4, align 8, !tbaa !68, !noalias !130
  %i.o = icmp ugt i32 %i.n, 16
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %ZSTD_resolveBlockSplitterMode.exit.i

ZSTD_resolveBlockSplitterMode.exit.i:             ; preds = %bb.d, %bb.c, %bb.b
  %i.q = phi ptr [ %.phi.trans.insert.i, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  %.0.i2.i = phi i32 [ %.pre.i, %bb.b ], [ 2, %bb.c ], [ %i.p, %bb.d ]
  store i32 %.0.i2.i, ptr %i.q, align 4, !tbaa !77, !alias.scope !130
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76, !alias.scope !130 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.s, 0
  br i1 %.not.i3.i, label %bb.e, label %ZSTD_makeCCtxParamsFromCParams.exit

bb.e:                                             ; preds = %ZSTD_resolveBlockSplitterMode.exit.i
  %i.t = load i32, ptr %i.e, align 8, !tbaa !73, !noalias !130
  %i.u = add i32 %i.t, -6
  %i.v = icmp ult i32 %i.u, -3
  br i1 %i.v, label %ZSTD_makeCCtxParamsFromCParams.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %4, align 8, !tbaa !68, !noalias !130
  %i.x = icmp ugt i32 %i.w, 14
  %spec.select.i.i = select i1 %i.x, i32 1, i32 2
  br label %ZSTD_makeCCtxParamsFromCParams.exit

ZSTD_makeCCtxParamsFromCParams.exit:              ; preds = %ZSTD_resolveBlockSplitterMode.exit.i, %bb.e, %bb.f
  %.0.i4.i = phi i32 [ %i.s, %ZSTD_resolveBlockSplitterMode.exit.i ], [ %spec.select.i.i, %bb.f ], [ 2, %bb.e ] ; 2 uses
  store i32 %.0.i4.i, ptr %i.r, align 8, !tbaa !76, !alias.scope !130
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !79, !alias.scope !130 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %..i.i = select i1 %i.aa, i64 131072, i64 %i.z  ; 3 uses
  store i64 %..i.i, ptr %i.y, align 8, !tbaa !79, !alias.scope !130
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80, !alias.scope !130 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !43, !alias.scope !130
  %.not.i5.i = icmp eq i32 %i.ac, 0
  %i.ae = icmp slt i32 %i.ad, 10
  %..i6.i = select i1 %i.ae, i32 2, i32 1
  %.0.i7.i = select i1 %.not.i5.i, i32 %..i6.i, i32 %i.ac
  store i32 %.0.i7.i, ptr %i.ab, align 8, !tbaa !80, !alias.scope !130
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !73
  %i.ah = add i32 %i.ag, -6
  %i.ai = icmp ult i32 %i.ah, -3
  br i1 %i.ai, label %ZSTD_resolveRowMatchFinderMode.exit.i14, label %ZSTD_resolveRowMatchFinderMode.exit.i

ZSTD_resolveRowMatchFinderMode.exit.i:            ; preds = %ZSTD_makeCCtxParamsFromCParams.exit
  store i32 2, ptr %i.r, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %3, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !110
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %ZSTD_resolveRowMatchFinderMode.exit.i7.thread, label %ZSTD_resolveRowMatchFinderMode.exit.i7

ZSTD_resolveRowMatchFinderMode.exit.i7.thread:    ; preds = %ZSTD_resolveRowMatchFinderMode.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br label %ZSTD_estimateCCtxSize_usingCCtxParams.exit12

ZSTD_resolveRowMatchFinderMode.exit.i7:           ; preds = %ZSTD_resolveRowMatchFinderMode.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !127
  %i.an = icmp ne ptr %.val.i, null
  %i.ao = zext i1 %i.an to i32
  %i.ap = call fastcc i64 @ZSTD_estimateCCtxSize_usingCCtxParams_internal(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.d, i32 noundef 1, i32 noundef 2, i64 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %i.ao, i64 noundef %..i.i)
  %.pr = load i32, ptr %i.aj, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store i32 1, ptr %i.r, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @ZSTD_getCParamsFromCCtxParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_compressionParameters) align 4 %2, ptr noundef nonnull readonly %5, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.aq = icmp sgt i32 %.pr, 0
  br i1 %i.aq, label %ZSTD_estimateCCtxSize_usingCCtxParams.exit12, label %bb.g

bb.g:                                             ; preds = %ZSTD_resolveRowMatchFinderMode.exit.i7
  %.val.i9 = load ptr, ptr %i.am, align 8, !tbaa !127
  %i.ar = icmp ne ptr %.val.i9, null
end_hunk_0
begin_hunk_1_@ZSTD_copyCCtx:bb.a
ZSTD_allocateChainTable.exit.i:                   ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !174
  %i.ab = add i32 %i.y, -3
  %i.ac = icmp ult i32 %i.ab, 3
  %i.ad = icmp eq i32 %i.aa, 1
  %.not8.i.not.i = and i1 %i.ac, %i.ad
  br i1 %.not8.i.not.i, label %ZSTD_allocateChainTable.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %ZSTD_allocateChainTable.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !175
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 4, %i.ag
  br label %ZSTD_allocateChainTable.exit.thread.i

ZSTD_allocateChainTable.exit.thread.i:            ; preds = %bb.c, %ZSTD_allocateChainTable.exit.i, %bb.b
  %i.ai = phi i64 [ %i.ah, %bb.c ], [ 0, %ZSTD_allocateChainTable.exit.i ], [ 0, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !176
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 3216
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !177 ; 2 uses
  %.not47.i = icmp eq i32 %i.ap, 0
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !178
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !178
  %i.ax = shl i64 4, %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.aw, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3344
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %i.bb, i64 %i.ai, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !180
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3336
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !180
  %i.bg = shl i64 4, %i.aq
  %i.bh = select i1 %.not47.i, i64 0, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bd, ptr align 4 %i.bf, i64 %i.bh, i1 false)
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52 ; 2 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.d, label %ZSTD_cwksp_mark_tables_clean.exit.i

bb.d:                                             ; preds = %ZSTD_allocateChainTable.exit.thread.i
  store ptr %i.bk, ptr %i.w, align 8, !tbaa !53
  br label %ZSTD_cwksp_mark_tables_clean.exit.i

ZSTD_cwksp_mark_tables_clean.exit.i:              ; preds = %bb.d, %ZSTD_allocateChainTable.exit.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.an, i64 40, i1 false), !tbaa.struct !181
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 3256
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %i.bo = load <2 x i32>, ptr %i.bm, align 8, !tbaa !3
  store <2 x i32> %i.bo, ptr %i.bn, align 8, !tbaa !3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !183
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !183
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !184
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !184
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %i.bv, ptr noundef nonnull align 8 dereferenceable(5632) %i.bw, i64 5632, i1 false)
  br label %ZSTD_copyCCtx_internal.exit

ZSTD_copyCCtx_internal.exit:                      ; preds = %bb.a, %ZSTD_cwksp_mark_tables_clean.exit.i
  %.0.i = phi i64 [ 0, %ZSTD_cwksp_mark_tables_clean.exit.i ], [ -60, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @ZSTD_seqToCodes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = and i64 %i.l, 34359738360
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = lshr exact i64 %i.l, 3
  %wide.trip.count = and i64 %i.n, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ZSTD_MLcode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ZSTD_MLcode.exit ] ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i16, ptr %i.p, align 4, !tbaa !190  ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !193
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !194  ; 3 uses
  %i.v = zext i16 %i.u to i32
  %i.w = icmp ugt i16 %i.q, 63
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = zext i16 %i.q to i32
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.x, i1 true)
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = sub nuw nsw i8 50, %i.z
  br label %ZSTD_LLcode.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ab = zext nneg i16 %i.q to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !195
  br label %ZSTD_LLcode.exit

ZSTD_LLcode.exit:                                 ; preds = %bb.b, %bb.c
  %i.ae = phi i8 [ %i.aa, %bb.b ], [ %i.ad, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !195
  %i.ag = trunc nuw nsw i32 %i.s to i8
  %i.ah = xor i8 %i.ag, 31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !195
  %i.aj = icmp ugt i16 %i.u, 127
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_LLcode.exit
  %i.ak = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.v, i1 true)
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = sub nuw nsw i8 67, %i.al
  br label %ZSTD_MLcode.exit

bb.e:                                             ; preds = %ZSTD_LLcode.exit
  %i.an = zext nneg i16 %i.u to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !195
  br label %ZSTD_MLcode.exit

ZSTD_MLcode.exit:                                 ; preds = %bb.d, %bb.e
  %i.aq = phi i8 [ %i.am, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !195
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !196

._crit_edge:                                      ; preds = %ZSTD_MLcode.exit, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !197 ; 2 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ax
  store i8 35, ptr %i.ay, align 1, !tbaa !195
  %.pr = load i32, ptr %i.as, align 8, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.az = phi i32 [ %.pr, %bb.f ], [ %i.at, %._crit_edge ]
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !198
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bd
  store i8 52, ptr %i.be, align 1, !tbaa !195
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ZSTD_selectBlockCompressor(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -6
  %i.b = icmp ult i32 %i.a, -3
  %i.c = icmp ne i32 %1, 1
  %.not8 = or i1 %i.c, %i.b
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.d
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = getelementptr inbounds [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.d
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %.0.in = select i1 %.not8, ptr %i.k, ptr %i.h
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !48
  ret ptr %.0
}

declare i64 @ZSTD_compressBlock_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_doubleFast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btlazy2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btopt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btultra(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btultra2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_fast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_doubleFast_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btlazy2_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_fast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_doubleFast_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btlazy2_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_extDict_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_dictMatchState_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_greedy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare i64 @ZSTD_compressBlock_lazy2_dedicatedDictSearch_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ZSTD_resetSeqStore(ptr nofree noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !200
  %i.d = load ptr, ptr %0, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 2, 6166929089745999191) i64 @ZSTD_sequenceBound(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %0, 3
  %i.b = lshr i64 %0, 10
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, %i.a
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_generateSequences(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZSTD_outBuffer_s, align 8   ; 6 uses
  %6 = alloca %struct.ZSTD_inBuffer_s, align 8    ; 6 uses
  %i.a = icmp ugt i64 %4, -71777214294589697
  br i1 %i.a, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %4, 8
  %i.c = add nuw i64 %i.b, %4
  %i.d = icmp ult i64 %4, 131072
  %i.e = sub nuw nsw i64 131072, %4
  %i.f = lshr i64 %i.e, 11
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  %i.h = add i64 %i.c, %i.g
  %.fr.i = freeze i64 %i.h                        ; 2 uses
  %i.i = icmp eq i64 %.fr.i, 0
  br i1 %i.i, label %.thread.i, label %ZSTD_customMalloc.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  br label %ZSTD_customMalloc.exit

ZSTD_customMalloc.exit:                           ; preds = %bb.b, %.thread.i
  %i.j = phi i64 [ -72, %.thread.i ], [ %.fr.i, %bb.b ] ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !101
  %i.n = and i64 %i.m, 4294967295
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %bb.c, label %bb.f

bb.c:                                             ; preds = %ZSTD_customMalloc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !110
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq ptr %i.k, null
  br i1 %i.q, label %bb.f, label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 1, ptr %i.r, align 8, !tbaa !3
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !113
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.u, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.v, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.k, ptr %5, align 8, !tbaa !201
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.w, align 8, !tbaa !203
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !204
  store ptr %3, ptr %6, align 8, !tbaa !205
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.y, align 8, !tbaa !206
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.z, align 8, !tbaa !207
  %i.aa = load <2 x i32>, ptr %i.s, align 4, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !208
  store i32 1, ptr %i.t, align 8, !tbaa !209
  %i.ab = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2) ; 3 uses
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !204
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store <2 x i32> %i.aa, ptr %i.s, align 4, !tbaa !3
  %i.ad = icmp ult i64 %i.ab, -119
  %.not20.i = icmp eq i64 %i.ab, 0
  %spec.select.i = select i1 %.not20.i, i64 %i.ac, i64 -70
  %.1.i = select i1 %i.ad, i64 %spec.select.i, i64 %i.ab ; 2 uses
  tail call void @free(ptr noundef nonnull %i.k) #28
end_hunk_1
begin_hunk_2_@ZSTD_buildBlockEntropyStats:bb.a

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.a, align 4, !tbaa !3
  %i.av = call i64 @HUF_estimateCompressedSize(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %i.au) #28 ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.h
  br i1 %i.aw, label %bb.k, label %.thread116.i

bb.k:                                             ; preds = %bb.j
  %i.ax = add i64 %i.at, %i.aq
  %.not110.i = icmp ugt i64 %i.av, %i.ax
  %i.ay = add i64 %i.at, 12
  %.not111.i = icmp ult i64 %i.ay, %i.h
  %or.cond.i = and i1 %.not111.i, %.not110.i
  br i1 %or.cond.i, label %.thread116.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %ZSTD_buildBlockEntropyStats_literals.exit.thread

.thread116.i:                                     ; preds = %bb.k, %bb.j, %bb.i
  %i.az = add i64 %i.at, %i.aq
  %.not112.i = icmp ult i64 %i.az, %i.h
  br i1 %.not112.i, label %ZSTD_buildBlockEntropyStats_literals.exit, label %bb.m

bb.m:                                             ; preds = %.thread116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %2, ptr noundef nonnull align 8 dereferenceable(2064) %1, i64 2064, i1 false)
  br label %ZSTD_buildBlockEntropyStats_literals.exit.thread

ZSTD_buildBlockEntropyStats_literals.exit.thread: ; preds = %bb.e, %bb.d, %bb.c, %ZSTD_literalsCompressionIsDisabled.exit, %ZSTD_literalsCompressionIsDisabled.exit.thread39, %bb.l, %bb.m
  %.sink = phi i32 [ 0, %bb.c ], [ 0, %ZSTD_literalsCompressionIsDisabled.exit ], [ 3, %bb.l ], [ 0, %bb.m ], [ 1, %bb.d ], [ 0, %ZSTD_literalsCompressionIsDisabled.exit.thread39 ], [ 0, %bb.e ]
  store i32 %.sink, ptr %4, align 8, !tbaa !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %i.ba, align 8, !tbaa !220
  br label %bb.n

ZSTD_buildBlockEntropyStats_literals.exit.thread47: ; preds = %.critedge.i, %bb.h
  %.6.i.ph = phi i64 [ %i.am, %bb.h ], [ %i.ab, %.critedge.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %.6.i.ph, ptr %i.bb, align 8, !tbaa !220
  br label %bb.q

ZSTD_buildBlockEntropyStats_literals.exit:        ; preds = %.thread116.i
  store i32 2, ptr %4, align 8, !tbaa !219
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 2056
  store i32 1, ptr %i.bc, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %i.at, ptr %i.bd, align 8, !tbaa !220
  %i.be = icmp ult i64 %i.at, -119
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %ZSTD_buildBlockEntropyStats_literals.exit.thread, %ZSTD_buildBlockEntropyStats_literals.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !189 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !185   ; 2 uses
  %.not.i34 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i34, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 5612
  store i32 0, ptr %i.bj, align 4, !tbaa !221, !noalias !222
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 5604
  store i32 0, ptr %i.bk, align 4, !tbaa !225, !noalias !222
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 5608
  store i32 0, ptr %i.bl, align 4, !tbaa !226, !noalias !222
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 2064
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = ptrtoint ptr %i.bh to i64
  %i.bq = sub i64 %i.bp, %i.bo
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = add i64 %6, -212
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 289
  %i.bw = load i32, ptr %i.i, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call fastcc void @ZSTD_buildSequencesStatistics(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly %0, i64 noundef %i.br, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, i32 noundef %i.bw, ptr noundef %5, ptr noundef nonnull %i.bt, i64 noundef %i.bs)
  %i.bx = load <2 x i32>, ptr %7, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.710.0.copyload.i = load i64, ptr %.sroa.710.0..sroa_idx.i, align 8, !tbaa !113 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.by = icmp ult i64 %.sroa.710.0.copyload.i, -119
  br i1 %i.by, label %bb.p, label %ZSTD_buildBlockEntropyStats_sequences.exit

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sroa.6.056.i = phi i32 [ 0, %.thread.i ], [ %.sroa.6.0.copyload.i, %bb.o ]
  %.sroa.710.055.i = phi i64 [ 0, %.thread.i ], [ %.sroa.710.0.copyload.i, %bb.o ]
  %.sroa.9.053.i = phi i64 [ 0, %.thread.i ], [ %.sroa.9.0.copyload.i, %bb.o ]
  %i.bz = phi <2 x i32> [ zeroinitializer, %.thread.i ], [ %i.bx, %bb.o ]
  store <2 x i32> %i.bz, ptr %i.bf, align 8, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 %.sroa.6.056.i, ptr %i.ca, align 8, !tbaa !227
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 304
  store i64 %.sroa.9.053.i, ptr %i.cb, align 8, !tbaa !228
  br label %ZSTD_buildBlockEntropyStats_sequences.exit

ZSTD_buildBlockEntropyStats_sequences.exit:       ; preds = %bb.o, %bb.p
  %.sroa.710.054.i = phi i64 [ %.sroa.710.0.copyload.i, %bb.o ], [ %.sroa.710.055.i, %bb.p ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i64 %.sroa.710.054.i, ptr %i.cc, align 8, !tbaa !229
  %i.cd = icmp ult i64 %.sroa.710.054.i, -119
  %spec.select = select i1 %i.cd, i64 0, i64 %.sroa.710.054.i
  br label %bb.q

bb.q:                                             ; preds = %ZSTD_buildBlockEntropyStats_literals.exit.thread47, %ZSTD_buildBlockEntropyStats_sequences.exit, %ZSTD_buildBlockEntropyStats_literals.exit
  %.2 = phi i64 [ %i.at, %ZSTD_buildBlockEntropyStats_literals.exit ], [ %spec.select, %ZSTD_buildBlockEntropyStats_sequences.exit ], [ %.6.i.ph, %ZSTD_buildBlockEntropyStats_literals.exit.thread47 ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -72, 4294967304) i64 @ZSTD_writeSkippableFrame(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = add i64 %3, 8                            ; 2 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 4294967295
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i32 %4, 15
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = or disjoint i32 %4, 407710288
  store i32 %i.e, ptr %0, align 1, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = trunc nuw i64 %3 to i32
  store i32 %i.g, ptr %i.f, align 1, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i64 [ %i.a, %bb.d ], [ -70, %bb.a ], [ -72, %bb.b ], [ -42, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -70, 4) i64 @ZSTD_writeLastEmptyBlock(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %1, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %0, align 1, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !195
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 3, %bb.b ], [ -70, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ZSTD_referenceExternalSequences(ptr nofree noundef writeonly captures(none) initializes((3160, 3200)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3160
  store ptr %1, ptr %i.a, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store i64 %2, ptr %i.b, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192
  store i64 %2, ptr %i.c, align 8, !tbaa !233
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressContinue_public(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.seqStoreSplits, align 8     ; 6 uses
  %8 = alloca %struct.repcodes_s, align 4         ; 6 uses
  %9 = alloca %struct.repcodes_s, align 4         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ZSTD_compress_frameChunk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = trunc nuw i32 %5 to i1                  ; 2 uses
  %i.d = icmp eq i32 %i.b, 1
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.g = load i64, ptr %i.f, align 8, !tbaa !114
  %i.h = add i64 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load i32, ptr %i.i, align 8, !tbaa !183
  %i.k = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.e, i64 noundef %i.h, i32 noundef %i.j) ; 5 uses
  %i.l = icmp ult i64 %i.k, -119
  br i1 %i.l, label %bb.d, label %ZSTD_compress_frameChunk.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = sub i64 %2, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i32 2, ptr %0, align 8, !tbaa !170
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.069 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.b ]   ; 2 uses
  %.066 = phi i64 [ %i.m, %bb.d ], [ %2, %bb.b ]  ; 2 uses
  %.065 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.b ]  ; 4 uses
  %.not73 = icmp eq i64 %4, 0
  br i1 %.not73, label %ZSTD_compress_frameChunk.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !234
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !235  ; 2 uses
  %i.r = icmp ne ptr %3, %i.q
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i = or i1 %i.s, %i.r                   ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !236
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %0, i64 3244
  %.pre46.i = load i32, ptr %.phi.trans.insert45.i, align 4, !tbaa !237
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %0, i64 3240
  %.pre48.i = load i32, ptr %.phi.trans.insert47.i, align 8, !tbaa !238
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !239  ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !238  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3244 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !237
  %i.ab = trunc i64 %i.x to i32                   ; 6 uses
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !238
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3232
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !236
  %i.ad = sub i64 0, %i.x
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !239
  %i.af = sub i32 %i.ab, %i.z
  %i.ag = icmp ult i32 %i.af, 8
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !237
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i
  %i.ah = phi i32 [ %.pre48.i, %._crit_edge.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ai = phi i32 [ %.pre46.i, %._crit_edge.i ], [ %i.ab, %bb.h ], [ %i.z, %bb.g ]
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.u, %bb.h ], [ %i.u, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 7 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !235
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = icmp ugt ptr %i.ak, %i.am
  %i.ao = zext i32 %i.ah to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = icmp ult ptr %3, %i.ap
  %i.ar = and i1 %i.an, %i.aq
  br i1 %i.ar, label %bb.j, label %ZSTD_window_update.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3244
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.av, i64 %i.ao)
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !237
  br label %ZSTD_window_update.exit

ZSTD_window_update.exit:                          ; preds = %bb.i, %bb.j
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ZSTD_window_update.exit
  store i32 0, ptr %i.o, align 8, !tbaa !234
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3260
  store i32 %i.ah, ptr %i.ay, align 4, !tbaa !240
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %ZSTD_window_update.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !241
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %ZSTD_window_update.exit87

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !235 ; 2 uses
  %.not94 = icmp eq ptr %3, %i.be
  br i1 %.not94, label %._crit_edge.i78, label %bb.n

._crit_edge.i78:                                  ; preds = %bb.m
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %.pre.i80 = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !236
  %.phi.trans.insert45.i81 = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %.pre46.i82 = load i32, ptr %.phi.trans.insert45.i81, align 4, !tbaa !237
  %.phi.trans.insert47.i83 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.pre48.i84 = load i32, ptr %.phi.trans.insert47.i83, align 8, !tbaa !238
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !239 ; 4 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !238 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !237
  %i.bn = trunc i64 %i.bj to i32                  ; 6 uses
  store i32 %i.bn, ptr %i.bk, align 8, !tbaa !238
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !236
  %i.bp = sub i64 0, %i.bj
  %i.bq = getelementptr inbounds i8, ptr %3, i64 %i.bp
  store ptr %i.bq, ptr %i.bf, align 8, !tbaa !239
  %i.br = sub i32 %i.bn, %i.bl
  %i.bs = icmp ult i32 %i.br, 8
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !237
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i78
  %i.bt = phi i32 [ %.pre48.i84, %._crit_edge.i78 ], [ %i.bn, %bb.o ], [ %i.bn, %bb.n ]
  %i.bu = phi i32 [ %.pre46.i82, %._crit_edge.i78 ], [ %i.bn, %bb.o ], [ %i.bl, %bb.n ]
  %i.bv = phi ptr [ %.pre.i80, %._crit_edge.i78 ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ] ; 3 uses
  store ptr %i.ak, ptr %i.bd, align 8, !tbaa !235
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = icmp ugt ptr %i.ak, %i.bx
  %i.bz = zext i32 %i.bt to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = icmp ult ptr %3, %i.ca
  %i.cc = and i1 %i.by, %i.cb
  br i1 %i.cc, label %bb.q, label %ZSTD_window_update.exit87

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.ce = ptrtoint ptr %i.ak to i64
  %i.cf = ptrtoint ptr %i.bv to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 %i.bz)
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !237
  br label %ZSTD_window_update.exit87

ZSTD_window_update.exit87:                        ; preds = %bb.q, %bb.p, %bb.l
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %ZSTD_window_update.exit87
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.az, ptr noundef %3, ptr noundef nonnull %i.ak)
  %i.ck = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef %.065, i64 noundef %.066, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  br label %ZSTD_compress_frameChunk.exit

.critedge:                                        ; preds = %ZSTD_window_update.exit87
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !242
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !243
  %i.cp = shl nuw i32 1, %i.co                    ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !244
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ct = tail call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(none) %i.cs, ptr noundef captures(none) %3, i64 noundef range(i64 1, 0) %4) #28 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge
end_hunk_2
begin_hunk_3_@ZSTD_compressContinue_internal:bb.a
.lr.ph.i91.i.i.i.preheader:                       ; preds = %.epil.preheader147, %bb.br, %.lr.ph.i91.i.i.i.preheader.unr-lcssa
  %.1.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.1, %.lr.ph.i91.i.i.i.preheader.unr-lcssa ], [ %i.kw, %.epil.preheader147 ], [ %spec.select.i.i.i.i.epil, %bb.br ]
  %i.lb = icmp eq i64 %i.kb, 0
  br i1 %i.lb, label %.lr.ph.i91.i.i.i.epil.preheader, label %.lr.ph.i91.i.i.i.preheader.new

.lr.ph.i91.i.i.i.preheader.new:                   ; preds = %.lr.ph.i91.i.i.i.preheader
  %unroll_iter158 = and i64 %i.jy, -2
  br label %.lr.ph.i91.i.i.i

.lr.ph.i91.i.i.i:                                 ; preds = %bb.bu, %.lr.ph.i91.i.i.i.preheader.new
  %.014.i92.i.i.i = phi i64 [ 0, %.lr.ph.i91.i.i.i.preheader.new ], [ %.1.i96.i.i.i.1, %bb.bu ]
  %.01213.i93.i.i.i = phi i64 [ 0, %.lr.ph.i91.i.i.i.preheader.new ], [ %i.lt, %bb.bu ] ; 4 uses
  %niter159 = phi i64 [ 0, %.lr.ph.i91.i.i.i.preheader.new ], [ %niter159.next.1, %bb.bu ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.01213.i93.i.i.i
  %.sroa.3.0..sroa_idx.i94.i.i.i = getelementptr inbounds nuw i8, ptr %i.lc, i64 6
  %.sroa.3.0.copyload.i95.i.i.i = load i16, ptr %.sroa.3.0..sroa_idx.i94.i.i.i, align 2, !tbaa !230
  %i.ld = zext i16 %.sroa.3.0.copyload.i95.i.i.i to i64
  %i.le = add i64 %.014.i92.i.i.i, 3
  %i.lf = add i64 %i.le, %i.ld                    ; 3 uses
  %i.lg = icmp eq i64 %.01213.i93.i.i.i, %i.ka
  br i1 %i.lg, label %bb.bs, label %.lr.ph.i91.i.i.i.1

bb.bs:                                            ; preds = %.lr.ph.i91.i.i.i
  %i.lh = load i32, ptr %i.dq, align 8, !tbaa !197
  %i.li = icmp eq i32 %i.lh, 2
  %i.lj = add i64 %i.lf, 65536
  %spec.select.i99.i.i.i = select i1 %i.li, i64 %i.lj, i64 %i.lf
  br label %.lr.ph.i91.i.i.i.1

.lr.ph.i91.i.i.i.1:                               ; preds = %bb.bs, %.lr.ph.i91.i.i.i
  %.1.i96.i.i.i = phi i64 [ %i.lf, %.lr.ph.i91.i.i.i ], [ %spec.select.i99.i.i.i, %bb.bs ]
  %i.lk = or disjoint i64 %.01213.i93.i.i.i, 1    ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.lk
  %.sroa.3.0..sroa_idx.i94.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ll, i64 6
  %.sroa.3.0.copyload.i95.i.i.i.1 = load i16, ptr %.sroa.3.0..sroa_idx.i94.i.i.i.1, align 2, !tbaa !230
  %i.lm = zext i16 %.sroa.3.0.copyload.i95.i.i.i.1 to i64
  %i.ln = add i64 %.1.i96.i.i.i, 3
  %i.lo = add i64 %i.ln, %i.lm                    ; 3 uses
  %i.lp = icmp eq i64 %i.lk, %i.ka
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i91.i.i.i.1
  %i.lq = load i32, ptr %i.dq, align 8, !tbaa !197
  %i.lr = icmp eq i32 %i.lq, 2
  %i.ls = add i64 %i.lo, 65536
  %spec.select.i99.i.i.i.1 = select i1 %i.lr, i64 %i.ls, i64 %i.lo
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i91.i.i.i.1
  %.1.i96.i.i.i.1 = phi i64 [ %i.lo, %.lr.ph.i91.i.i.i.1 ], [ %spec.select.i99.i.i.i.1, %bb.bt ] ; 3 uses
  %i.lt = add nuw i64 %.01213.i93.i.i.i, 2        ; 2 uses
  %niter159.next.1 = add i64 %niter159, 2         ; 2 uses
  %niter159.ncmp.1 = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1, label %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i91.i.i.i, !llvm.loop !256

ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa: ; preds = %bb.bu
  %i.lu = and i64 %i.jx, 8
  %lcmp.mod155.not = icmp eq i64 %i.lu, 0
  br i1 %lcmp.mod155.not, label %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i, label %.lr.ph.i91.i.i.i.epil.preheader

.lr.ph.i91.i.i.i.epil.preheader:                  ; preds = %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa, %.lr.ph.i91.i.i.i.preheader
  %.014.i92.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i91.i.i.i.preheader ], [ %.1.i96.i.i.i.1, %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa ]
  %.01213.i93.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i91.i.i.i.preheader ], [ %i.lt, %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.jy to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.01213.i93.i.i.i.epil.init
  %.sroa.3.0..sroa_idx.i94.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.lv, i64 6
  %.sroa.3.0.copyload.i95.i.i.i.epil = load i16, ptr %.sroa.3.0..sroa_idx.i94.i.i.i.epil, align 2, !tbaa !230
  %i.lw = zext i16 %.sroa.3.0.copyload.i95.i.i.i.epil to i64
  %i.lx = add i64 %.014.i92.i.i.i.epil.init, 3
  %i.ly = add i64 %i.lx, %i.lw                    ; 3 uses
  %i.lz = icmp eq i64 %.01213.i93.i.i.i.epil.init, %i.ka
  br i1 %i.lz, label %bb.bv, label %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i91.i.i.i.epil.preheader
  %i.ma = load i32, ptr %i.dq, align 8, !tbaa !197
  %i.mb = icmp eq i32 %i.ma, 2
  %i.mc = add i64 %i.ly, 65536
  %spec.select.i99.i.i.i.epil = select i1 %i.mb, i64 %i.mc, i64 %i.ly
  br label %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i

ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i: ; preds = %.lr.ph.i91.i.i.i.epil.preheader, %bb.bv, %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa
  %.1.i96.i.i.i.lcssa = phi i64 [ %.1.i96.i.i.i.1, %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i.unr-lcssa ], [ %i.ly, %.lr.ph.i91.i.i.i.epil.preheader ], [ %spec.select.i99.i.i.i.epil, %bb.bv ]
  %i.md = add i64 %.1.i96.i.i.i.lcssa, %.1.i.i.i.i.lcssa
  br label %ZSTD_countSeqStoreMatchBytes.exit.i.i.i

ZSTD_countSeqStoreMatchBytes.exit.i.i.i:          ; preds = %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i, %ZSTD_deriveSeqStoreChunk.exit.i.i.i
  %i.me = phi i64 [ 0, %ZSTD_deriveSeqStoreChunk.exit.i.i.i ], [ %i.md, %ZSTD_countSeqStoreMatchBytes.exit.loopexit.i.i.i ] ; 2 uses
  %i.mf = add i64 %i.me, %.087103.i.i.i
  br i1 %i.js, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %ZSTD_countSeqStoreMatchBytes.exit.i.i.i
  %i.mg = sub i64 %spec.select.i, %.087103.i.i.i
  br label %bb.by

bb.bx:                                            ; preds = %ZSTD_countSeqStoreMatchBytes.exit.i.i.i
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.086104.i.i.i ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr i8, ptr %i.mh, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mm = zext i32 %i.ml to i64
  tail call fastcc void @ZSTD_deriveSeqStoreChunk(ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dd, i64 noundef %i.mj, i64 noundef %i.mm)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.074.i.i.i = phi i32 [ %i.dw, %bb.bw ], [ 0, %bb.bx ]
  %.073.i.i.i = phi i64 [ %i.mg, %bb.bw ], [ %i.me, %bb.bx ] ; 2 uses
  %i.mn = call fastcc i64 @ZSTD_compressSeqStore_singleBlock(ptr noundef nonnull %0, ptr noundef nonnull %i.dm, ptr noundef %8, ptr noundef %9, ptr noundef %.084105.i.i.i, i64 noundef %.075108.i.i.i, ptr noundef %.082106.i.i.i, i64 noundef %.073.i.i.i, i32 noundef %.074.i.i.i, i32 noundef 1) ; 5 uses
  %i.mo = icmp ult i64 %i.mn, -119
  br i1 %i.mo, label %bb.bz, label %ZSTD_compressBlock_splitBlock_internal.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.mp = getelementptr inbounds nuw i8, ptr %.082106.i.i.i, i64 %.073.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.084105.i.i.i, i64 %i.mn
  %i.mr = sub i64 %.075108.i.i.i, %i.mn
  %i.ms = add i64 %i.mn, %.077107.i.i.i           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(80) %i.dl, i64 80, i1 false), !tbaa.struct !253
  %i.mt = add i64 %.086104.i.i.i, 1               ; 2 uses
  %.not.i.i151.i = icmp ugt i64 %i.mt, %.0.i.i.i.i
  br i1 %.not.i.i151.i, label %bb.ca, label %ZSTD_deriveSeqStoreChunk.exit.i.i.i, !llvm.loop !257

bb.ca:                                            ; preds = %bb.bz
  %i.mu = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mv, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  br label %ZSTD_compressBlock_splitBlock_internal.exit.i.i

ZSTD_compressBlock_splitBlock_internal.exit.i.i:  ; preds = %bb.by, %bb.ca, %bb.ba
  %.4.i.i.i = phi i64 [ %i.ic, %bb.ba ], [ %i.ms, %bb.ca ], [ %i.mn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %ZSTD_compressBlock_splitBlock.exit.i

ZSTD_compressBlock_splitBlock.exit.i:             ; preds = %ZSTD_compressBlock_splitBlock_internal.exit.i.i, %bb.ax
  %.4.i.i = phi i64 [ %.4.i.i.i, %ZSTD_compressBlock_splitBlock_internal.exit.i.i ], [ %i.he, %bb.ax ] ; 3 uses
  %i.mw = icmp ult i64 %.4.i.i, -119
  br i1 %i.mw, label %ZSTD_compressBlock_targetCBlockSize.exit.i, label %ZSTD_compress_frameChunk.exit.thread

bb.cb:                                            ; preds = %bb.aq
  %i.mx = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 3 ; 2 uses
  %i.my = add i64 %.0113179.i, -3
  %i.mz = tail call fastcc i64 @ZSTD_compressBlock_internal(ptr noundef nonnull %0, ptr noundef nonnull %i.mx, i64 noundef %i.my, ptr noundef %.0122176.i, i64 noundef %spec.select.i, i32 noundef 1) ; 5 uses
  %i.na = icmp ult i64 %i.mz, -119
  br i1 %i.na, label %bb.cc, label %ZSTD_compress_frameChunk.exit.thread

bb.cc:                                            ; preds = %bb.cb
  switch i64 %i.mz, label %bb.ce [
    i64 0, label %bb.cd
    i64 1, label %bb.cf
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.nb = add i64 %spec.select.i, 3               ; 4 uses
  %i.nc = icmp ugt i64 %i.nb, %.0113179.i
  br i1 %i.nc, label %ZSTD_compress_frameChunk.exit.thread, label %ZSTD_noCompressBlock.exit.i

ZSTD_noCompressBlock.exit.i:                      ; preds = %bb.cd
  %.tr.i.i = trunc i64 %spec.select.i to i32
  %i.nd = shl i32 %.tr.i.i, 3                     ; 2 uses
  %i.ne = or disjoint i32 %i.nd, %i.dw
  %i.nf = trunc i32 %i.ne to i16
  store i16 %i.nf, ptr %.0132173.i, align 1, !tbaa !230
  %i.ng = lshr i32 %i.nd, 16
  %i.nh = trunc i32 %i.ng to i8
  %i.ni = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 2
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !195
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mx, ptr readonly align 1 %.0122176.i, i64 %spec.select.i, i1 false)
  %i.nj = icmp ult i64 %i.nb, -119
  br i1 %i.nj, label %ZSTD_compressBlock_targetCBlockSize.exit.i, label %ZSTD_compress_frameChunk.exit.thread

bb.ce:                                            ; preds = %bb.cc
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %.sink.i = phi i64 [ %i.mz, %bb.ce ], [ %spec.select.i, %bb.cc ]
  %.sink213.i = phi i32 [ 4, %bb.ce ], [ 2, %bb.cc ]
  %.tr.i = trunc i64 %.sink.i to i32
  %i.nk = shl i32 %.tr.i, 3                       ; 2 uses
  %i.nl = or disjoint i32 %.sink213.i, %i.dw
  %i.nm = or disjoint i32 %i.nl, %i.nk
  %i.nn = trunc i32 %i.nm to i16
  store i16 %i.nn, ptr %.0132173.i, align 1, !tbaa !230
  %i.no = lshr i32 %i.nk, 16
  %i.np = trunc i32 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 2
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !195
  %i.nr = add nuw i64 %i.mz, 3
  br label %ZSTD_compressBlock_targetCBlockSize.exit.i

ZSTD_compressBlock_targetCBlockSize.exit.i:       ; preds = %bb.cf, %ZSTD_noCompressBlock.exit.i, %ZSTD_compressBlock_splitBlock.exit.i, %bb.ap, %ZSTD_compressBlock_targetCBlockSize_body.exit.thread.i.i
  %.0125.i = phi i64 [ %i.nr, %bb.cf ], [ %.4.i.i, %ZSTD_compressBlock_splitBlock.exit.i ], [ %i.nb, %ZSTD_noCompressBlock.exit.i ], [ %.4.i28.i.i, %ZSTD_compressBlock_targetCBlockSize_body.exit.thread.i.i ], [ %.4.i28.i.i, %bb.ap ] ; 2 uses
  %i.ns = sub i64 %.0119177.i, %spec.select.i     ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0132173.i, i64 %.0125.i ; 3 uses
  %i.nu = sub i64 %.0113179.i, %.0125.i
  store i32 0, ptr %i.dc, align 8, !tbaa !246
  %.not138.i = icmp eq i64 %i.ns, 0
  br i1 %.not138.i, label %bb.cg, label %bb.u, !llvm.loop !258

bb.cg:                                            ; preds = %ZSTD_compressBlock_targetCBlockSize.exit.i
  %.not139.i = trunc nuw i32 %6 to i1
  %i.nv = icmp ugt ptr %i.nt, %.065
  %or.cond.i89 = select i1 %.not139.i, i1 %i.nv, i1 false
  br i1 %or.cond.i89, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 3, ptr %0, align 8, !tbaa !170
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.nw = ptrtoint ptr %i.nt to i64
  %i.nx = ptrtoint ptr %.065 to i64
  %i.ny = sub i64 %i.nw, %i.nx
  br label %ZSTD_compress_frameChunk.exit

ZSTD_compress_frameChunk.exit:                    ; preds = %bb.ci, %bb.r
  %i.nz = phi i64 [ %i.ck, %bb.r ], [ %i.ny, %bb.ci ] ; 3 uses
  %i.oa = icmp ult i64 %i.nz, -119
  br i1 %i.oa, label %bb.cj, label %ZSTD_compress_frameChunk.exit.thread

bb.cj:                                            ; preds = %ZSTD_compress_frameChunk.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !157
  %i.od = add i64 %i.oc, %4                       ; 2 uses
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !157
  %i.oe = add nuw i64 %i.nz, %.069                ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !161
  %i.oh = add i64 %i.og, %i.oe
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !161
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !114 ; 2 uses
  %.not76 = icmp ne i64 %i.oj, 0
  %i.ok = add i64 %i.od, 1
  %i.ol = icmp ugt i64 %i.ok, %i.oj
  %or.cond93 = select i1 %.not76, i1 %i.ol, i1 false
  %spec.select = select i1 %or.cond93, i64 -72, i64 %i.oe
  br label %ZSTD_compress_frameChunk.exit.thread

ZSTD_compress_frameChunk.exit.thread:             ; preds = %bb.u, %bb.af, %bb.cb, %ZSTD_noCompressBlock.exit.i, %ZSTD_compressBlock_splitBlock.exit.i, %bb.cd, %bb.am, %.critedge.thread.i.i.i, %ZSTD_compressBlock_targetCBlockSize_body.exit.i.i, %bb.aw, %bb.av, %bb.ar, %bb.cj, %ZSTD_compress_frameChunk.exit, %bb.e, %bb.a, %bb.c
  %.4 = phi i64 [ %i.k, %bb.c ], [ %.069, %bb.e ], [ -60, %bb.a ], [ %i.nz, %ZSTD_compress_frameChunk.exit ], [ %spec.select, %bb.cj ], [ %i.gw, %bb.ar ], [ -106, %bb.av ], [ -70, %bb.aw ], [ %i.gi, %ZSTD_compressBlock_targetCBlockSize_body.exit.i.i ], [ -70, %.critedge.thread.i.i.i ], [ %i.fw, %bb.am ], [ -70, %bb.cd ], [ %.4.i.i, %ZSTD_compressBlock_splitBlock.exit.i ], [ %i.nb, %ZSTD_noCompressBlock.exit.i ], [ %i.mz, %bb.cb ], [ %i.ew, %bb.af ], [ -70, %bb.u ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, -9223372036854775807) i64 @ZSTD_getBlockSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val1 = load i64, ptr %i.b, align 8, !tbaa !172
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val1, i64 %i.d)
  ret i64 %..i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_deprecated(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val10 = load i64, ptr %i.b, align 8, !tbaa !172
  %i.c = zext nneg i32 %.val to i64
  %i.d = shl nuw i64 1, %i.c
  %..i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10, i64 %i.d)
  %.not = icmp ugt i64 %4, %..i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 236
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr i8, ptr %0, i64 432
  %.val10.i = load i64, ptr %i.b, align 8, !tbaa !172
  %i.c = zext nneg i32 %.val.i to i64
  %i.d = shl nuw i64 1, %i.c
  %..i.i = tail call range(i64 0, -9223372036854775807) i64 @llvm.umin.i64(i64 %.val10.i, i64 %i.d)
  %.not.i = icmp ugt i64 %4, %..i.i
  br i1 %.not.i, label %ZSTD_compressBlock_deprecated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @ZSTD_compressContinue_internal(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ZSTD_compressBlock_deprecated.exit

ZSTD_compressBlock_deprecated.exit:               ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.e, %bb.b ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_loadCEntropy(ptr noundef initializes((2056, 2060)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [53 x i16], align 16              ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [36 x i16], align 16              ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 31, ptr %i.b, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 255, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 1, ptr %i.d, align 4, !tbaa !3
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %gepdiff = add i64 %3, -8                       ; 3 uses
  %i.p = call i64 @HUF_readCTable(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, i64 noundef %gepdiff, ptr noundef nonnull %i.d) #28 ; 4 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, 0
  %i.s = load i32, ptr %i.c, align 4
  %i.t = icmp eq i32 %i.s, 255
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.n, align 8, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = icmp ult i64 %i.p, -119
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %gepdiff125 = sub i64 %gepdiff, %i.p
  %i.w = call i64 @FSE_readNCount(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.v, i64 noundef %gepdiff125) #28 ; 3 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.z = icmp ugt i32 %i.y, 8
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ab = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a, i32 noundef 31, i32 noundef %i.y, ptr noundef %1, i64 noundef 8704) #28
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i32 52, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  %i.ae = add i64 %i.p, %i.w
  %gepdiff126 = sub i64 %gepdiff, %i.ae
  %i.af = call i64 @FSE_readNCount(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ad, i64 noundef %gepdiff126) #28 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -119
  br i1 %i.ag, label %bb.h, label %.critedge102

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !3   ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 9
  br i1 %i.ai, label %.critedge102, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !3
  %i.al = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.f, i32 noundef %i.ak, i32 noundef %i.ah, ptr noundef %1, i64 noundef 8704) #28
  %i.am = icmp ult i64 %i.al, -119
  br i1 %i.am, label %ZSTD_dictNCountRepeat.exit, label %.critedge102

ZSTD_dictNCountRepeat.exit:                       ; preds = %bb.i
  %i.an = load i32, ptr %i.g, align 4, !tbaa !3
  %i.ao = icmp ult i32 %i.an, 52
  %i.ap = load <48 x i16>, ptr %i.f, align 16
end_hunk_3
begin_hunk_4_@ZSTD_compressBegin_internal:bb.a
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %ZSTD_copyCDictTableIntoCCtx.exit.i.i, label %vector.body, !llvm.loop !277

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.01.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.fv, %.lr.ph.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.01.i.i.i
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = or disjoint i64 %.01.i.i.i, 1           ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = lshr i32 %i.fi, 8
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fg
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = or disjoint i64 %.01.i.i.i, 2           ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = lshr i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = or disjoint i64 %.01.i.i.i, 3           ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fq
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !3
  %i.fv = add nuw i64 %.01.i.i.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !278

bb.y:                                             ; preds = %ZSTD_allocateChainTable.exit.thread.i.i, %ZSTD_allocateChainTable.exit.thread.thread.i.i
  %i.fw = phi ptr [ %i.dv, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.ek, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.fx = phi ptr [ %i.dt, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.ei, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.fy = phi ptr [ %i.dr, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.eg, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.fz = phi ptr [ %i.dq, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.ef, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.ga = phi i64 [ %i.dp, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.ee, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.gb = phi i64 [ %i.do, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.ed, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.gc = phi i64 [ 0, %ZSTD_allocateChainTable.exit.thread.thread.i.i ], [ %i.dz, %ZSTD_allocateChainTable.exit.thread.i.i ]
  %i.gd = shl i64 4, %i.gb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fx, ptr readonly align 4 %i.fw, i64 %i.gd, i1 false)
  br label %ZSTD_copyCDictTableIntoCCtx.exit.i.i

ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_copyCDictTableIntoCCtx.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.fv, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.01.i.i.i.epil = phi i64 [ %i.gi, %.lr.ph.i.i.i.epil ], [ %.01.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01.i.i.i.epil
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.01.i.i.i.epil
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !3
  %i.gi = add nuw i64 %.01.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZSTD_copyCDictTableIntoCCtx.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !279

ZSTD_copyCDictTableIntoCCtx.exit.i.i:             ; preds = %vector.body, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.y
  %i.gj = phi ptr [ %i.fy, %bb.y ], [ %i.en, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa ], [ %i.en, %.lr.ph.i.i.i.epil ], [ %i.en, %vector.body ]
  %i.gk = phi ptr [ %i.fz, %bb.y ], [ %i.eo, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i.i.i.epil ], [ %i.eo, %vector.body ]
  %i.gl = phi i64 [ %i.ga, %bb.y ], [ %i.ep, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph.i.i.i.epil ], [ %i.ep, %vector.body ]
  %i.gm = phi i64 [ %i.gc, %bb.y ], [ %i.eq, %ZSTD_copyCDictTableIntoCCtx.exit.i.i.loopexit.unr-lcssa ], [ %i.eq, %.lr.ph.i.i.i.epil ], [ %i.eq, %vector.body ] ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !173 ; 2 uses
  %.not4.i61.i.i = icmp eq i32 %i.go, 1
  br i1 %.not4.i61.i.i, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %ZSTD_allocateChainTable.exit63.i.i

ZSTD_allocateChainTable.exit63.i.i:               ; preds = %ZSTD_copyCDictTableIntoCCtx.exit.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !174
  %i.gr = add i32 %i.go, -3
  %i.gs = icmp ult i32 %i.gr, 3
  %i.gt = icmp eq i32 %i.gq, 1
  %.not8.i62.not.i.i = and i1 %i.gs, %i.gt
  br i1 %.not8.i62.not.i.i, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %bb.z

bb.z:                                             ; preds = %ZSTD_allocateChainTable.exit63.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 3344
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !179 ; 8 uses
  %i.gw = ptrtoaddr ptr %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !281 ; 8 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %.val.i.i = load i32, ptr %i.t, align 8, !tbaa !73
  %i.ha = add i32 %.val.i.i, -3
  %narrow.i.i64.i.i = icmp ult i32 %i.ha, -2
  br i1 %narrow.i.i64.i.i, label %bb.aa, label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %bb.z
  %.not.i.i15.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i15.i, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %.lr.ph.i66.i.i.preheader

.lr.ph.i66.i.i.preheader:                         ; preds = %.preheader.i65.i.i
  %min.iters.check92 = icmp ult i64 %i.gm, 8
  %i.hb = sub i64 %i.gw, %i.gz
  %diff.check90 = icmp ult i64 %i.hb, 32
  %or.cond107 = select i1 %min.iters.check92, i1 true, i1 %diff.check90
  br i1 %or.cond107, label %.lr.ph.i66.i.i.preheader108, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.i66.i.i.preheader
  %n.vec95 = and i64 %i.gm, -8                    ; 3 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body96 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index97 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load98 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !3
  %wide.load99 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !3
  %i.he = lshr <4 x i32> %wide.load98, splat (i32 8)
  %i.hf = lshr <4 x i32> %wide.load99, splat (i32 8)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index97 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x i32> %i.he, ptr %i.hg, align 4, !tbaa !3
  store <4 x i32> %i.hf, ptr %i.hh, align 4, !tbaa !3
  %index.next100 = add nuw i64 %index97, 8        ; 2 uses
  %i.hi = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.hi, label %middle.block101, label %vector.body96, !llvm.loop !282

middle.block101:                                  ; preds = %vector.body96
  %cmp.n102 = icmp eq i64 %i.gm, %n.vec95
  br i1 %cmp.n102, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %.lr.ph.i66.i.i.preheader108

.lr.ph.i66.i.i.preheader108:                      ; preds = %.lr.ph.i66.i.i.preheader, %middle.block101
  %.01.i67.i.i.ph = phi i64 [ 0, %.lr.ph.i66.i.i.preheader ], [ %n.vec95, %middle.block101 ] ; 3 uses
  %xtraiter111 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i66.i.i.prol.loopexit, label %.lr.ph.i66.i.i.prol

.lr.ph.i66.i.i.prol:                              ; preds = %.lr.ph.i66.i.i.preheader108, %.lr.ph.i66.i.i.prol
  %.01.i67.i.i.prol = phi i64 [ %i.hn, %.lr.ph.i66.i.i.prol ], [ %.01.i67.i.i.ph, %.lr.ph.i66.i.i.preheader108 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i66.i.i.prol ], [ 0, %.lr.ph.i66.i.i.preheader108 ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01.i67.i.i.prol
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = lshr i32 %i.hk, 8
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.01.i67.i.i.prol
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !3
  %i.hn = add nuw i64 %.01.i67.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter111
  br i1 %prol.iter.cmp.not, label %.lr.ph.i66.i.i.prol.loopexit, label %.lr.ph.i66.i.i.prol, !llvm.loop !283

.lr.ph.i66.i.i.prol.loopexit:                     ; preds = %.lr.ph.i66.i.i.prol, %.lr.ph.i66.i.i.preheader108
  %.01.i67.i.i.unr = phi i64 [ %.01.i67.i.i.ph, %.lr.ph.i66.i.i.preheader108 ], [ %i.hn, %.lr.ph.i66.i.i.prol ]
  %i.ho = sub i64 %.01.i67.i.i.ph, %i.gm
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %.lr.ph.i66.i.i

.lr.ph.i66.i.i:                                   ; preds = %.lr.ph.i66.i.i.prol.loopexit, %.lr.ph.i66.i.i
  %.01.i67.i.i = phi i64 [ %i.ij, %.lr.ph.i66.i.i ], [ %.01.i67.i.i.unr, %.lr.ph.i66.i.i.prol.loopexit ] ; 6 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01.i67.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = lshr i32 %i.hr, 8
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.01.i67.i.i
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !3
  %i.hu = add nuw i64 %.01.i67.i.i, 1             ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = lshr i32 %i.hw, 8
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hu
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !3
  %i.hz = add nuw i64 %.01.i67.i.i, 2             ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = lshr i32 %i.ib, 8
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hz
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !3
  %i.ie = add nuw i64 %.01.i67.i.i, 3             ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = lshr i32 %i.ig, 8
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.ie
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !3
  %i.ij = add nuw i64 %.01.i67.i.i, 4             ; 2 uses
  %exitcond.not.i68.i.i.3 = icmp eq i64 %i.ij, %i.gm
  br i1 %exitcond.not.i68.i.i.3, label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i, label %.lr.ph.i66.i.i, !llvm.loop !284

bb.aa:                                            ; preds = %bb.z
  %i.ik = shl i64 %i.gm, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gv, ptr readonly align 4 %i.gy, i64 %i.ik, i1 false)
  br label %ZSTD_copyCDictTableIntoCCtx.exit69.i.i

ZSTD_copyCDictTableIntoCCtx.exit69.i.i:           ; preds = %.lr.ph.i66.i.i.prol.loopexit, %.lr.ph.i66.i.i, %middle.block101, %bb.aa, %.preheader.i65.i.i, %ZSTD_allocateChainTable.exit63.i.i, %ZSTD_copyCDictTableIntoCCtx.exit.i.i
  %i.il = load i32, ptr %i.t, align 8, !tbaa !73
  %i.im = load i32, ptr %i.cp, align 8, !tbaa !266
  %i.in = add i32 %i.il, -6
  %i.io = icmp ult i32 %i.in, -3
  %i.ip = icmp ne i32 %i.im, 1
  %.not75.i.i = or i1 %i.ip, %i.io
  br i1 %.not75.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %ZSTD_copyCDictTableIntoCCtx.exit69.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !285
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !286
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 1 dereferenceable(1) %i.it, i64 %i.gl, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !287
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 3312
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !288
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %ZSTD_copyCDictTableIntoCCtx.exit69.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !177 ; 2 uses
  %.not59.i.i = icmp eq i32 %i.iy, 0
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !180
  %i.jc = shl i64 4, %i.iz
  %i.jd = select i1 %.not59.i.i, i64 0, i64 %i.jc
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jb, i8 0, i64 %i.jd, i1 false)
  %i.je = load ptr, ptr %i.cw, align 8, !tbaa !53
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !52 ; 2 uses
  %i.jh = icmp ult ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.ad, label %ZSTD_cwksp_mark_tables_clean.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.jg, ptr %i.cw, align 8, !tbaa !53
  br label %ZSTD_cwksp_mark_tables_clean.exit.i.i

ZSTD_cwksp_mark_tables_clean.exit.i.i:            ; preds = %bb.ad, %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !tbaa.struct !181
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %i.jk = load <2 x i32>, ptr %i.ji, align 8, !tbaa !3
  store <2 x i32> %i.jk, ptr %i.jj, align 8, !tbaa !3
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 6064
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !275
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %i.jm, ptr %i.jn, align 8, !tbaa !183
  %i.jo = load i64, ptr %i.g, align 8, !tbaa !262
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !184
  %i.jq = load ptr, ptr %i.gk, align 8, !tbaa !54
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5632) %i.jq, ptr noundef nonnull readonly align 8 dereferenceable(5632) %i.jr, i64 5632, i1 false)
  br label %ZSTD_resetCCtx_byCopyingCDict.exit.i

ZSTD_resetCCtx_byCopyingCDict.exit.i:             ; preds = %ZSTD_cwksp_mark_tables_clean.exit.i.i, %ZSTD_shouldAttachDict.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %ZSTD_resetCCtx_usingCDict.exit

bb.ae:                                            ; preds = %bb.f, %bb.i, %bb.j
  %i.js = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %i.c, i32 noundef 0, i32 noundef %8) ; 2 uses
  %i.jt = icmp ult i64 %i.js, -119
  br i1 %i.jt, label %bb.af, label %ZSTD_resetCCtx_usingCDict.exit

.thread:                                          ; preds = %bb.e
  %i.ju = tail call fastcc i64 @ZSTD_resetCCtx_internal(ptr noundef nonnull %0, ptr noundef %6, i64 noundef %7, i64 noundef %i.c, i32 noundef 0, i32 noundef %8) ; 2 uses
  %i.jv = icmp ult i64 %i.ju, -119
  br i1 %i.jv, label %.thread87, label %ZSTD_resetCCtx_usingCDict.exit

bb.af:                                            ; preds = %bb.ae
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kc = load ptr, ptr %5, align 8, !tbaa !289
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !262
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !290
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !56
  %i.kj = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jz, ptr noundef nonnull %i.ka, ptr noundef nonnull %i.kb, ptr noundef %i.kc, i64 noundef %i.ke, i32 noundef %i.kg, i32 noundef %4, i32 noundef 0, ptr noundef %i.ki)
  br label %bb.ag

.thread87:                                        ; preds = %.thread
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !54
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !56
  %i.ks = tail call fastcc i64 @ZSTD_compress_insertDictionary(ptr noundef %i.kl, ptr noundef nonnull %i.km, ptr noundef nonnull %i.kn, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kp, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %i.kr)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread87, %bb.af
  %i.kt = phi i64 [ %i.kj, %bb.af ], [ %i.ks, %.thread87 ] ; 3 uses
  %i.ku = icmp ult i64 %i.kt, -119
  br i1 %i.ku, label %bb.ah, label %ZSTD_resetCCtx_usingCDict.exit

bb.ah:                                            ; preds = %bb.ag
  %i.kv = trunc nuw i64 %i.kt to i32
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %i.kv, ptr %i.kw, align 8, !tbaa !183
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.c, ptr %i.kx, align 8, !tbaa !184
  br label %ZSTD_resetCCtx_usingCDict.exit

ZSTD_resetCCtx_usingCDict.exit:                   ; preds = %.thread, %bb.ah, %bb.ag, %ZSTD_resetCCtx_byCopyingCDict.exit.i, %ZSTD_resetCCtx_byAttachingCDict.exit.i, %bb.ae
  %.2 = phi i64 [ %i.cs, %ZSTD_resetCCtx_byCopyingCDict.exit.i ], [ %i.js, %bb.ae ], [ %i.bf, %ZSTD_resetCCtx_byAttachingCDict.exit.i ], [ %i.kt, %bb.ag ], [ 0, %bb.ah ], [ %i.ju, %.thread ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define range(i64 -119, 1) i64 @ZSTD_compressBegin_advanced(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%struct.ZSTD_parameters) align 8 captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !74
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !75
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = add i32 %i.f, -6
  %i.h = icmp ult i32 %i.g, -3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.d, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 2 uses
  %i.j = icmp ugt i32 %i.f, 6
  br i1 %i.j, label %bb.d, label %.thread7

.thread7:                                         ; preds = %bb.b
  store i32 2, ptr %i.i, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %3, align 8, !tbaa !68
  %i.l = icmp ugt i32 %i.k, 14
  %spec.select.i.i = select i1 %i.l, i32 1, i32 2
  store i32 %spec.select.i.i, ptr %i.d, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.m, align 4, !tbaa !77
  br label %ZSTD_CCtxParams_init_internal.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i32, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.o = icmp ugt i32 %i.n, 16
  %i.p = select i1 %i.o, i32 1, i32 2
  store i32 %i.p, ptr %i.i, align 4, !tbaa !77
  %i.q = icmp ugt i32 %i.n, 26
  %i.r = select i1 %i.q, i32 1, i32 2
  br label %ZSTD_CCtxParams_init_internal.exit

ZSTD_CCtxParams_init_internal.exit:               ; preds = %bb.c, %.thread7, %bb.d
  %.0.i25.i = phi i32 [ %i.r, %bb.d ], [ 2, %bb.c ], [ 2, %.thread7 ]
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i32 %.0.i25.i, ptr %i.s, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 131072, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 2, ptr %i.u, align 8, !tbaa !80
  %i.v = load <4 x i32>, ptr %i.a, align 4, !tbaa !3
  %.fr14 = freeze <4 x i32> %i.v
  %i.w = add <4 x i32> %.fr14, <i32 -32, i32 -31, i32 -31, i32 -31>
  %i.x = icmp ult <4 x i32> %i.w, <i32 -22, i32 -25, i32 -25, i32 -30>
  %i.y = bitcast <4 x i1> %i.x to i4
  %.not = icmp eq i4 %i.y, 0
  br i1 %.not, label %bb.e, label %ZSTD_compressBegin_advanced_internal.exit

bb.e:                                             ; preds = %ZSTD_CCtxParams_init_internal.exit
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !3
  %i.z = add i32 %.sroa.7.0.copyload.i, -3
  %narrow.i29.i.i = icmp ult i32 %i.z, 5
  %narrow.i35.i.i = icmp ult i32 %.sroa.8.0.copyload.i, 131073
  %or.cond.i.not17.i = select i1 %narrow.i29.i.i, i1 %narrow.i35.i.i, i1 false
  %i.aa = add i32 %.sroa.9.0.copyload.i, -1
  %narrow.i41.i.i = icmp ult i32 %i.aa, 9
  %or.cond16.i = select i1 %or.cond.i.not17.i, i1 %narrow.i41.i.i, i1 false
  br i1 %or.cond16.i, label %bb.f, label %ZSTD_compressBegin_advanced_internal.exit

bb.f:                                             ; preds = %bb.e
  %.not66.i = icmp eq ptr @ZSTD_trace_compress_begin, null
  br i1 %.not66.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @ZSTD_trace_compress_begin(ptr noundef %0) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_4
begin_hunk_5_@ZSTD_resetCCtx_internal:bb.a

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.oi, ptr %i.oa, align 8, !tbaa !53
  br label %.thread.i.i.i256

.thread.i.i.i256:                                 ; preds = %bb.cw, %bb.cv, %bb.ct
  store i32 3, ptr %i.do, align 8, !tbaa !325
  br label %ZSTD_cwksp_internal_advance_phase.exit.i.i254

ZSTD_cwksp_internal_advance_phase.exit.i.i254:    ; preds = %.thread.i.i.i256, %bb.cs
  %i.ok = icmp ugt i64 %i.u, %.189
  br i1 %i.ok, label %ZSTD_cwksp_reserve_buffer.exit259.thread, label %bb.cx

bb.cx:                                            ; preds = %ZSTD_cwksp_internal_advance_phase.exit.i.i254
  %i.ol = load ptr, ptr %i.by, align 8, !tbaa !394
  %i.om = sub nsw i64 0, %i.v
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 %i.om ; 5 uses
  %i.oo = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.op = icmp ult ptr %i.on, %i.oo
  br i1 %i.op, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i8 1, ptr %i.dp, align 8, !tbaa !50
  br label %ZSTD_cwksp_reserve_buffer.exit259.thread

bb.cz:                                            ; preds = %bb.cx
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !53
  %i.os = icmp ult ptr %i.on, %i.or
  br i1 %i.os, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store ptr %i.on, ptr %i.oq, align 8, !tbaa !53
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  store ptr %i.on, ptr %i.by, align 8, !tbaa !394
  br label %ZSTD_cwksp_reserve_buffer.exit259.thread

ZSTD_cwksp_reserve_buffer.exit259.thread:         ; preds = %bb.db, %ZSTD_cwksp_internal_advance_phase.exit.i.i254, %bb.cy
  %.0.i.i255.ph = phi ptr [ null, %bb.cy ], [ null, %ZSTD_cwksp_internal_advance_phase.exit.i.i254 ], [ %i.on, %bb.db ]
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %.0.i.i255.ph, ptr %i.ot, align 8, !tbaa !409
  br label %ZSTD_cwksp_internal_advance_phase.exit.i.i260

bb.dc:                                            ; preds = %bb.cu
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr null, ptr %i.ou, align 8, !tbaa !409
  %i.ov = load ptr, ptr %i.dq, align 8, !tbaa !51 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.ov, ptr %i.ow, align 8, !tbaa !53
  %.val.i.i.i263 = load ptr, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.ox = ptrtoint ptr %.val.i.i.i263 to i64
  %i.oy = and i64 %i.ox, -64
  %i.oz = inttoptr i64 %i.oy to ptr
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.oz, ptr %i.pa, align 8, !tbaa !396
  %i.pb = ptrtoint ptr %i.ov to i64
  %i.pc = sub i64 0, %i.pb
  %i.pd = and i64 %i.pc, 63                       ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pd ; 4 uses
  %i.pf = icmp ugt ptr %i.pe, %.val.i.i.i263
  br i1 %i.pf, label %bb.dk, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr %i.pe, ptr %i.dq, align 8, !tbaa !51
  store ptr %i.pe, ptr %i.bx, align 8, !tbaa !52
  %.not.i.i.i264 = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i.i264, label %.thread.i.i.i262, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr %i.pe, ptr %i.ow, align 8, !tbaa !53
  br label %.thread.i.i.i262

.thread.i.i.i262:                                 ; preds = %bb.de, %bb.dd
  store i32 3, ptr %i.do, align 8, !tbaa !325
  br label %ZSTD_cwksp_internal_advance_phase.exit.i.i260

ZSTD_cwksp_internal_advance_phase.exit.i.i260:    ; preds = %ZSTD_cwksp_reserve_buffer.exit259.thread, %.thread.i.i.i262
  %i.pg = icmp ugt i64 %i.u, %.189
  br i1 %i.pg, label %ZSTD_cwksp_reserve_buffer.exit265.thread, label %bb.df

bb.df:                                            ; preds = %ZSTD_cwksp_internal_advance_phase.exit.i.i260
  %i.ph = load ptr, ptr %i.by, align 8, !tbaa !394
  %i.pi = sub nsw i64 0, %i.v
  %i.pj = getelementptr inbounds i8, ptr %i.ph, i64 %i.pi ; 5 uses
  %i.pk = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.pl = icmp ult ptr %i.pj, %i.pk
  br i1 %i.pl, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i8 1, ptr %i.dp, align 8, !tbaa !50
  br label %ZSTD_cwksp_reserve_buffer.exit265.thread

bb.dh:                                            ; preds = %bb.df
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !53
  %i.po = icmp ult ptr %i.pj, %i.pn
  br i1 %i.po, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store ptr %i.pj, ptr %i.pm, align 8, !tbaa !53
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  store ptr %i.pj, ptr %i.by, align 8, !tbaa !394
  br label %ZSTD_cwksp_reserve_buffer.exit265.thread

ZSTD_cwksp_reserve_buffer.exit265.thread:         ; preds = %bb.dj, %ZSTD_cwksp_internal_advance_phase.exit.i.i260, %bb.dg
  %.0.i.i261.ph = phi ptr [ null, %bb.dg ], [ null, %ZSTD_cwksp_internal_advance_phase.exit.i.i260 ], [ %i.pj, %bb.dj ]
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %.0.i.i261.ph, ptr %i.pp, align 8, !tbaa !410
  br label %ZSTD_cwksp_internal_advance_phase.exit.i.i266

bb.dk:                                            ; preds = %bb.dc
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr null, ptr %i.pq, align 8, !tbaa !410
  %i.pr = load ptr, ptr %i.dq, align 8, !tbaa !51 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !53
  %.val.i.i.i269 = load ptr, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.pt = ptrtoint ptr %.val.i.i.i269 to i64
  %i.pu = and i64 %i.pt, -64
  %i.pv = inttoptr i64 %i.pu to ptr
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !396
  %i.px = ptrtoint ptr %i.pr to i64
  %i.py = sub i64 0, %i.px
  %i.pz = and i64 %i.py, 63                       ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pz ; 4 uses
  %i.qb = icmp ugt ptr %i.qa, %.val.i.i.i269
  br i1 %i.qb, label %ZSTD_cwksp_reserve_buffer.exit271, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store ptr %i.qa, ptr %i.dq, align 8, !tbaa !51
  store ptr %i.qa, ptr %i.bx, align 8, !tbaa !52
  %.not.i.i.i270 = icmp eq i64 %i.pz, 0
  br i1 %.not.i.i.i270, label %.thread.i.i.i268, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store ptr %i.qa, ptr %i.ps, align 8, !tbaa !53
  br label %.thread.i.i.i268

.thread.i.i.i268:                                 ; preds = %bb.dm, %bb.dl
  store i32 3, ptr %i.do, align 8, !tbaa !325
  br label %ZSTD_cwksp_internal_advance_phase.exit.i.i266

ZSTD_cwksp_internal_advance_phase.exit.i.i266:    ; preds = %ZSTD_cwksp_reserve_buffer.exit265.thread, %.thread.i.i.i268
  %i.qc = icmp ugt i64 %i.u, %.189
  br i1 %i.qc, label %ZSTD_cwksp_reserve_buffer.exit271, label %bb.dn

bb.dn:                                            ; preds = %ZSTD_cwksp_internal_advance_phase.exit.i.i266
  %i.qd = load ptr, ptr %i.by, align 8, !tbaa !394
  %i.qe = sub nsw i64 0, %i.v
  %i.qf = getelementptr inbounds i8, ptr %i.qd, i64 %i.qe ; 5 uses
  %i.qg = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.qh = icmp ult ptr %i.qf, %i.qg
  br i1 %i.qh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.dp, align 8, !tbaa !50
  br label %ZSTD_cwksp_reserve_buffer.exit271

bb.dp:                                            ; preds = %bb.dn
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !53
  %i.qk = icmp ult ptr %i.qf, %i.qj
  br i1 %i.qk, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store ptr %i.qf, ptr %i.qi, align 8, !tbaa !53
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  store ptr %i.qf, ptr %i.by, align 8, !tbaa !394
  br label %ZSTD_cwksp_reserve_buffer.exit271

ZSTD_cwksp_reserve_buffer.exit271:                ; preds = %bb.dk, %ZSTD_cwksp_internal_advance_phase.exit.i.i266, %bb.do, %bb.dr
  %.0.i.i267 = phi ptr [ %i.qf, %bb.dr ], [ null, %ZSTD_cwksp_internal_advance_phase.exit.i.i266 ], [ null, %bb.do ], [ null, %bb.dk ]
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %.0.i.i267, ptr %i.ql, align 8, !tbaa !411
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 948
  store i32 1, ptr %i.qm, align 4, !tbaa !392
  br label %.thread279

.thread279:                                       ; preds = %ZSTD_customMalloc.exit.i, %ZSTD_cwksp_reserve_object.exit207.thread, %ZSTD_cwksp_reserve_object.exit.thread, %bb.m, %.thread289, %bb.y, %bb.h, %ZSTD_cwksp_reserve_buffer.exit271
  %.5 = phi i64 [ 0, %ZSTD_cwksp_reserve_buffer.exit271 ], [ %i.eo, %bb.y ], [ -64, %ZSTD_customMalloc.exit.i ], [ %i.bm, %bb.h ], [ -64, %.thread289 ], [ -64, %ZSTD_cwksp_reserve_object.exit207.thread ], [ -64, %ZSTD_cwksp_reserve_object.exit.thread ], [ -64, %bb.m ]
  ret i64 %.5
}

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -64, 1) i64 @ZSTD_reset_matchState(ptr nofree noundef captures(none) initializes((24, 32), (40, 52), (112, 136), (196, 200), (248, 256), (300, 304)) %0, ptr nofree noundef initializes((24, 32)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !412
  %i.e = icmp eq i32 %i.d, 0
  %7 = trunc nuw i32 %6 to i1                     ; 4 uses
  %.not153 = or i1 %i.e, %7
  br i1 %.not153, label %bb.b, label %ZSTD_allocateChainTable.exit.thread148

bb.b:                                             ; preds = %bb.a
  %.not4.i = icmp eq i32 %i.b, 1
  br i1 %.not4.i, label %ZSTD_allocateChainTable.exit.thread, label %ZSTD_allocateChainTable.exit

ZSTD_allocateChainTable.exit:                     ; preds = %bb.b
  %i.f = add i32 %i.b, -3
  %i.g = icmp ult i32 %i.f, 3
  %i.h = icmp eq i32 %3, 1
  %.not8.i.not = and i1 %i.h, %i.g
  br i1 %.not8.i.not, label %ZSTD_allocateChainTable.exit.thread, label %ZSTD_allocateChainTable.exit.thread148

ZSTD_allocateChainTable.exit.thread148:           ; preds = %bb.a, %ZSTD_allocateChainTable.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl i64 4, %i.k
  br label %ZSTD_allocateChainTable.exit.thread

ZSTD_allocateChainTable.exit.thread:              ; preds = %bb.b, %ZSTD_allocateChainTable.exit, %ZSTD_allocateChainTable.exit.thread148
  %i.m = phi i64 [ %i.l, %ZSTD_allocateChainTable.exit.thread148 ], [ 0, %ZSTD_allocateChainTable.exit ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 2 uses
  br i1 %7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %ZSTD_allocateChainTable.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !72
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %2, align 4, !tbaa !68
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.u, i32 17)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ZSTD_allocateChainTable.exit.thread, %bb.c
  %i.v = phi i32 [ %spec.select, %bb.d ], [ 0, %ZSTD_allocateChainTable.exit.thread ], [ 0, %bb.c ] ; 3 uses
  %.not74 = icmp eq i32 %i.v, 0                   ; 2 uses
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %.not75 = icmp eq i32 %5, 0
  br i1 %.not75, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !235
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !239
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre160 = load ptr, ptr %.phi.trans.insert159, align 8, !tbaa !51
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str, ptr %i.y, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str, ptr %i.z, align 8, !tbaa !236
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %0, align 8, !tbaa !235
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi ptr [ %.pre160, %._crit_edge ], [ %i.ab, %bb.f ] ; 6 uses
  %i.ae = phi ptr [ %.pre158, %._crit_edge ], [ @.str, %bb.f ]
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @.str, i64 2), %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.v, ptr %i.ag, align 8, !tbaa !413
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.ah, align 4, !tbaa !414
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32                  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.al, ptr %i.am, align 4, !tbaa !237
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !240
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ap, align 8, !tbaa !415
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.aq, align 4, !tbaa !416
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.ar, align 8, !tbaa !417
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 22 uses
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !52
  %i.au = shl i64 4, %i.p
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 14 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !325
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.ay, align 8, !tbaa !53
  %i.az = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.az, align 8, !tbaa !58 ; 2 uses
  %i.ba = ptrtoint ptr %.val.i.i to i64
  %i.bb = and i64 %i.ba, -64
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !396
  %i.be = ptrtoint ptr %i.ad to i64
  %i.bf = sub i64 0, %i.be
  %i.bg = and i64 %i.bf, 63                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bg ; 5 uses
  %i.bi = icmp ugt ptr %i.bh, %.val.i.i
  br i1 %i.bi, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bh, ptr %i.as, align 8, !tbaa !51
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !52
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %ZSTD_cwksp_internal_advance_phase.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !53
  br label %ZSTD_cwksp_internal_advance_phase.exit.thread.i

ZSTD_cwksp_internal_advance_phase.exit.thread.i:  ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.av, align 8, !tbaa !325
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %ZSTD_cwksp_internal_advance_phase.exit.thread.i
  %i.bj = phi ptr [ %i.bh, %ZSTD_cwksp_internal_advance_phase.exit.thread.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.au ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !394
  %i.bn = icmp ugt ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.bo, align 8, !tbaa !50
  br label %._crit_edge.i83

bb.l:                                             ; preds = %._crit_edge.i
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !52
  br label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %bb.l, %bb.k
  %.pre.i85.ph = phi ptr [ %i.bj, %bb.k ], [ %i.bk, %bb.l ]
  %.0.i.ph = phi ptr [ null, %bb.k ], [ %i.bj, %bb.l ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i.ph, ptr %i.bp, align 8, !tbaa !418
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bq, align 8, !tbaa !418
  %i.br = load ptr, ptr %i.as, align 8, !tbaa !51 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !53
  %i.bt = getelementptr i8, ptr %1, i64 8
  %.val.i.i87 = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 2 uses
  %i.bu = ptrtoint ptr %.val.i.i87 to i64
  %i.bv = and i64 %i.bu, -64
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !396
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = sub i64 0, %i.by
  %i.ca = and i64 %i.bz, 63                       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ca ; 5 uses
  %i.cc = icmp ugt ptr %i.cb, %.val.i.i87
  br i1 %i.cc, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.cb, ptr %i.as, align 8, !tbaa !51
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !52
  %.not.i.i88 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i88, label %ZSTD_cwksp_internal_advance_phase.exit.thread.i89, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !53
  br label %ZSTD_cwksp_internal_advance_phase.exit.thread.i89

ZSTD_cwksp_internal_advance_phase.exit.thread.i89: ; preds = %bb.o, %bb.n
  store i32 1, ptr %i.av, align 8, !tbaa !325
  br label %bb.p

bb.p:                                             ; preds = %ZSTD_cwksp_internal_advance_phase.exit.thread.i89, %._crit_edge.i83
  %i.cd = phi ptr [ %.pre.i85.ph, %._crit_edge.i83 ], [ %i.cb, %ZSTD_cwksp_internal_advance_phase.exit.thread.i89 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.m ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !394
  %i.ch = icmp ugt ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_5
begin_hunk_6_@ZSTD_buildSequencesStatistics:bb.a
  %i.bt = ptrtoint ptr %6 to i64                  ; 3 uses
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bx = call i64 @ZSTD_buildCTable(ptr noundef %5, i64 noundef %i.bv, ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef %i.bs, ptr noundef %8, i32 noundef %i.bw, ptr noundef %i.i, i64 noundef %2, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef nonnull %i.br, i64 noundef 1316, ptr noundef %9, i64 noundef %10) #28 ; 5 uses
  %i.by = icmp ult i64 %i.bx, -119
  br i1 %i.by, label %bb.i, label %bb.k

bb.i:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.bz = icmp eq i32 %i.bs, 2
  br i1 %i.bz, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.l, align 8, !tbaa !431
  br label %bb.l

bb.k:                                             ; preds = %ZSTD_seqToCodes.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 31, ptr %i.b, align 4, !tbaa !3
  %i.cc = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %2, ptr noundef %9, i64 noundef %10) #28
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 29
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 3540
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !225
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 3540 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !225
  %i.cj = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.ci, ptr noundef %8, i32 noundef %i.cd, i64 noundef %i.cc, i64 noundef %2, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %i.cf, i32 noundef %7) #28 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !436
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.bt, %i.cl
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !3
  %i.co = call i64 @ZSTD_buildCTable(ptr noundef %i.cb, i64 noundef %i.cm, ptr noundef nonnull %4, i32 noundef 8, i32 noundef %i.cj, ptr noundef %8, i32 noundef %i.cn, ptr noundef %i.g, i64 noundef %2, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef nonnull %3, i64 noundef 772, ptr noundef %9, i64 noundef %10) #28 ; 5 uses
  %i.cp = icmp ult i64 %i.co, -119
  br i1 %i.cp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cj, 2
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.co, ptr %i.l, align 8, !tbaa !431
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 52, ptr %i.c, align 4, !tbaa !3
  %i.ct = call i64 @HIST_countFast_wksp(ptr noundef %8, ptr noundef nonnull %i.c, ptr noundef %i.k, i64 noundef %2, ptr noundef %9, i64 noundef %10) #28
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 3544
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !226
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 3544 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !226
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.cz = call i32 @ZSTD_selectEncodingType(ptr noundef nonnull %i.cw, ptr noundef %8, i32 noundef %i.cx, i64 noundef %i.ct, i64 noundef %2, i32 noundef 9, ptr noundef nonnull %i.cy, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %7) #28 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !437
  %i.db = ptrtoint ptr %i.cs to i64
  %i.dc = sub i64 %i.bt, %i.db
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !3
  %i.de = call i64 @ZSTD_buildCTable(ptr noundef %i.cs, i64 noundef %i.dc, ptr noundef nonnull %i.e, i32 noundef 9, i32 noundef %i.cz, ptr noundef %8, i32 noundef %i.dd, ptr noundef %i.k, i64 noundef %2, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef nonnull %i.cy, i64 noundef 1452, ptr noundef %9, i64 noundef %10) #28 ; 4 uses
  %i.df = icmp ult i64 %i.de, -119
  br i1 %i.df, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = icmp eq i32 %i.cz, 2
  br i1 %i.dg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i64 %i.de, ptr %i.l, align 8, !tbaa !431
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.de, ptr %i.dh, align 8, !tbaa !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.di = add nuw nsw i64 %i.co, %i.bx
  %i.dj = add nuw nsw i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !435
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.t
  ret void
}

declare i64 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_buildCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZSTD_overflowCorrectIfNeeded(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !239 ; 2 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %.val to i64                ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ult i32 %i.g, -536870911
  br i1 %i.h, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !84
  %i.k = shl nuw i32 1, %i.j
  %i.l = load i32, ptr %i.a, align 4, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !90
  %i.o = icmp ugt i32 %i.n, 5
  %.neg.i = sext i1 %i.o to i32
  %i.p = add i32 %i.l, %.neg.i
  %i.q = shl nuw i32 1, %i.p                      ; 3 uses
  %i.r = add i32 %i.q, -1
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.s, %i.e
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = and i32 %i.r, %i.u                       ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, 2
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.q, i32 2)
  %i.y = select i1 %i.w, i32 %i.x, i32 0
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.q)
  %i.aa = add nuw i32 %i.z, %i.v
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = sub i32 %i.u, %i.ab                     ; 9 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !239
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !236
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !236
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !237 ; 2 uses
  %i.ak = add i32 %i.ac, 2                        ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  %i.am = sub i32 %i.aj, %i.ac
  %storemerge.i = select i1 %i.al, i32 2, i32 %i.am
  store i32 %storemerge.i, ptr %i.ai, align 4, !tbaa !237
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !238 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ak
  %i.aq = sub i32 %i.ao, %i.ac
  %storemerge33.i = select i1 %i.ap, i32 2, i32 %i.aq
  store i32 %storemerge33.i, ptr %i.an, align 8, !tbaa !238
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !438
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !438
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !85
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !418
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bb, i32 noundef %i.az, i32 noundef %i.ac)
  %i.bc = load i32, ptr %i.m, align 4, !tbaa !90  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !412
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %ZSTD_allocateChainTable.exit.thread21.i

bb.c:                                             ; preds = %bb.b
  %.not4.i.i = icmp eq i32 %i.bc, 1
  br i1 %.not4.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.i

ZSTD_allocateChainTable.exit.i:                   ; preds = %bb.c
  %i.bh = add i32 %i.bc, -3
  %i.bi = icmp ult i32 %i.bh, 3
  %i.bj = icmp eq i32 %i.be, 1
  %.not8.i.not.i = and i1 %i.bj, %i.bi
  br i1 %.not8.i.not.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %ZSTD_allocateChainTable.exit.thread21.i

ZSTD_allocateChainTable.exit.thread21.i:          ; preds = %ZSTD_allocateChainTable.exit.i, %bb.b
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !86
  %i.bl = shl nuw i32 1, %i.bk                    ; 3 uses
  %i.bm = icmp eq i32 %i.bc, 6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !419 ; 2 uses
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  %i.bp = sdiv i32 %i.bl, 16
  %i.bq = icmp sgt i32 %i.bl, 15
  br i1 %i.bq, label %.preheader.i.i.preheader, label %ZSTD_reduceTable_btlazy2.exit.i

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.br = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bt = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.bu = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next7.i.i, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.021.i4.i.i = phi i32 [ %i.cx, %.preheader.i.i ], [ 0, %.preheader.i.i.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 5 uses
  %i.bw = load <4 x i32>, ptr %i.bv, align 4, !tbaa !3 ; 3 uses
  %i.bx = icmp eq <4 x i32> %i.bw, splat (i32 1)
  %i.by = icmp ult <4 x i32> %i.bw, %i.bs
  %i.bz = sub <4 x i32> %i.bw, %i.bu
  %i.ca = select <4 x i1> %i.by, <4 x i32> zeroinitializer, <4 x i32> %i.bz
  %i.cb = select <4 x i1> %i.bx, <4 x i32> splat (i32 1), <4 x i32> %i.ca
  store <4 x i32> %i.cb, ptr %i.bv, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.cd = load <4 x i32>, ptr %i.cc, align 4, !tbaa !3 ; 3 uses
  %i.ce = icmp eq <4 x i32> %i.cd, splat (i32 1)
  %i.cf = icmp ult <4 x i32> %i.cd, %i.bs
  %i.cg = sub <4 x i32> %i.cd, %i.bu
  %i.ch = select <4 x i1> %i.cf, <4 x i32> zeroinitializer, <4 x i32> %i.cg
  %i.ci = select <4 x i1> %i.ce, <4 x i32> splat (i32 1), <4 x i32> %i.ch
  store <4 x i32> %i.ci, ptr %i.cc, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.ck = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3 ; 3 uses
  %i.cl = icmp eq <4 x i32> %i.ck, splat (i32 1)
  %i.cm = icmp ult <4 x i32> %i.ck, %i.bs
  %i.cn = sub <4 x i32> %i.ck, %i.bu
  %i.co = select <4 x i1> %i.cm, <4 x i32> zeroinitializer, <4 x i32> %i.cn
  %i.cp = select <4 x i1> %i.cl, <4 x i32> splat (i32 1), <4 x i32> %i.co
  store <4 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !3 ; 3 uses
  %i.cs = icmp eq <4 x i32> %i.cr, splat (i32 1)
  %i.ct = icmp ult <4 x i32> %i.cr, %i.bs
  %i.cu = sub <4 x i32> %i.cr, %i.bu
  %i.cv = select <4 x i1> %i.ct, <4 x i32> zeroinitializer, <4 x i32> %i.cu
  %i.cw = select <4 x i1> %i.cs, <4 x i32> splat (i32 1), <4 x i32> %i.cv
  store <4 x i32> %i.cw, ptr %i.cq, align 4, !tbaa !3
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv.i.i, 16
  %i.cx = add nuw nsw i32 %.021.i4.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cx, %i.bp
  br i1 %exitcond.not.i.i, label %ZSTD_reduceTable_btlazy2.exit.i, label %.preheader.i.i, !llvm.loop !439

bb.e:                                             ; preds = %ZSTD_allocateChainTable.exit.thread21.i
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.bo, i32 noundef %i.bl, i32 noundef %i.ac)
  br label %ZSTD_reduceTable_btlazy2.exit.i

ZSTD_reduceTable_btlazy2.exit.i:                  ; preds = %.preheader.i.i, %bb.e, %bb.d, %ZSTD_allocateChainTable.exit.i, %bb.c
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !413 ; 2 uses
  %.not19.i = icmp eq i32 %i.cz, 0
  br i1 %.not19.i, label %ZSTD_reduceIndex.exit, label %bb.f

bb.f:                                             ; preds = %ZSTD_reduceTable_btlazy2.exit.i
  %i.da = shl nuw i32 1, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !420
  tail call fastcc void @ZSTD_reduceTable(ptr noundef %i.dc, i32 noundef %i.da, i32 noundef %i.ac)
  br label %ZSTD_reduceIndex.exit

ZSTD_reduceIndex.exit:                            ; preds = %ZSTD_reduceTable_btlazy2.exit.i, %bb.f
  %i.dd = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.g, label %ZSTD_cwksp_mark_tables_clean.exit

bb.g:                                             ; preds = %ZSTD_reduceIndex.exit
  store ptr %i.df, ptr %i.aw, align 8, !tbaa !53
  br label %ZSTD_cwksp_mark_tables_clean.exit

ZSTD_cwksp_mark_tables_clean.exit:                ; preds = %ZSTD_reduceIndex.exit, %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !240
  %storemerge = tail call i32 @llvm.usub.sat.i32(i32 %i.di, i32 %i.ac)
  store i32 %storemerge, ptr %i.dh, align 4, !tbaa !240
  store i32 0, ptr %i.b, align 8, !tbaa !415
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.dj, align 8, !tbaa !417
  br label %bb.h

bb.h:                                             ; preds = %ZSTD_cwksp_mark_tables_clean.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_buildSeqStore(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 3 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !247
  %.not53 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not53, label %.thread66, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  br i1 %.not53, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5616
  %i.j = tail call fastcc i64 @ZSTD_copyBlockSequences(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !48
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.g, align 8, !tbaa !48
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !10
  %i.u = tail call fastcc i64 @ZSTD_entropyCompressSeqStore(ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %i.r, i32 noundef %i.t) ; 4 uses
  %.not55 = icmp eq i32 %5, 0
  br i1 %.not55, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.w = load i32, ptr %i.v, align 8, !tbaa !246
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i64 %i.u, 25
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = tail call fastcc i32 @ZSTD_isRLE(ptr noundef %3, i64 noundef %4)
  %.not56 = icmp eq i32 %i.z, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %3, align 1, !tbaa !195
  store i8 %i.aa, ptr %1, align 1, !tbaa !195
  br label %.thread66

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = add i64 %i.u, -2
  %or.cond4 = icmp ult i64 %i.ab, -121
  br i1 %or.cond4, label %bb.l, label %.thread66

bb.l:                                             ; preds = %bb.k
  %i.ac = load <2 x ptr>, ptr %i.g, align 8, !tbaa !48
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ad, ptr %i.g, align 8, !tbaa !48
  br label %.thread66

.thread66:                                        ; preds = %bb.c, %bb.j, %bb.l, %bb.k
  %.15069 = phi i64 [ %i.u, %bb.k ], [ %i.u, %bb.l ], [ 0, %bb.c ], [ 1, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 5604 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !167
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %.thread66
  store i32 1, ptr %i.ag, align 4, !tbaa !167
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %.thread66, %bb.m, %bb.e, %bb.f
  %.3 = phi i64 [ %.15069, %.thread66 ], [ 0, %bb.f ], [ %i.j, %bb.e ], [ %.15069, %bb.m ], [ %i.a, %bb.a ], [ -106, %bb.c ]
  ret i64 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ZSTD_reduceTable(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
end_hunk_6
begin_hunk_7_@ZSTD_buildSeqStore:bb.a
  %i.bw = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %i.bv, ptr noundef nonnull %3, ptr noundef nonnull %i.bl, ptr noundef %1, i64 noundef %2) #28 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, -119
  br i1 %i.bx, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.1.ph = phi i64 [ -41, %bb.m ], [ %i.bw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.thread163

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5616
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !174
  %i.cc = call i64 @ZSTD_ldm_blockCompress(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bz, i32 noundef %i.cb, ptr noundef %1, i64 noundef %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.z

bb.p:                                             ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %0, i64 424
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !127 ; 2 uses
  %.not166 = icmp eq ptr %.val, null
  br i1 %.not166, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !243
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !447
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5232 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !405
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 5240 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !404
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !448
  %i.co = zext i32 %i.cf to i64
  %i.cp = tail call i64 %.val(ptr noundef %i.ch, ptr noundef %i.cj, i64 noundef %i.cl, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, i32 noundef %i.cn, i64 noundef %i.co) #28 ; 5 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !404 ; 2 uses
  %i.cr = add i64 %i.cp, -1
  %or.cond.not.i = icmp ult i64 %i.cr, %i.cq
  br i1 %or.cond.not.i, label %bb.r, label %ZSTD_postProcessSequenceProducerResult.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !405
  %i.ct = getelementptr [16 x i8], ptr %i.cs, i64 %i.cp ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.cu, align 4, !tbaa !3
  %.sroa.45.0..sroa_idx.i = getelementptr i8, ptr %i.ct, i64 -8
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4, !tbaa !3
  %i.cv = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.cw = icmp eq i32 %.sroa.45.0.copyload.i, 0
  %or.cond4.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond4.i, label %ZSTD_postProcessSequenceProducerResult.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cx, label %ZSTD_postProcessSequenceProducerResult.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cy = add i64 %i.cp, 1
  br label %ZSTD_postProcessSequenceProducerResult.exit

ZSTD_postProcessSequenceProducerResult.exit:      ; preds = %bb.r, %bb.t
  %.1.i = phi i64 [ %i.cy, %bb.t ], [ %i.cp, %bb.r ] ; 7 uses
  %i.cz = icmp ult i64 %.1.i, -119
  br i1 %i.cz, label %bb.u, label %ZSTD_postProcessSequenceProducerResult.exit.thread

bb.u:                                             ; preds = %ZSTD_postProcessSequenceProducerResult.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !405 ; 6 uses
  %.not.i147 = icmp eq i64 %.1.i, 0
  br i1 %.not.i147, label %ZSTD_fastSequenceLengthSum.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.u
  %xtraiter = and i64 %.1.i, 3                    ; 3 uses
  %i.db = icmp ult i64 %.1.i, 4
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.1.i, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.em, %.lr.ph.i ] ; 5 uses
  %.01013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.eh, %.lr.ph.i ]
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.el, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !214
  %i.df = zext i32 %i.de to i64
  %i.dg = add i64 %.01013.i, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !213
  %i.dj = zext i32 %i.di to i64
  %i.dk = add i64 %.01112.i, %i.dj
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !214
  %i.do = zext i32 %i.dn to i64
  %i.dp = add i64 %i.dg, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !213
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add i64 %i.dk, %i.ds
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !214
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add i64 %i.dp, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !213
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add i64 %i.dt, %i.eb
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !214
  %i.eg = zext i32 %i.ef to i64
  %i.eh = add i64 %i.dy, %i.eg                    ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !213
  %i.ek = zext i32 %i.ej to i64
  %i.el = add i64 %i.ec, %i.ek                    ; 3 uses
  %i.em = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZSTD_fastSequenceLengthSum.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !449

ZSTD_fastSequenceLengthSum.exit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_fastSequenceLengthSum.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZSTD_fastSequenceLengthSum.exit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.em, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.ew, %.lr.ph.i.epil ], [ %.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01013.i.epil = phi i64 [ %i.er, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01112.i.epil = phi i64 [ %i.ev, %.lr.ph.i.epil ], [ %.01112.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i.epil ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !214
  %i.eq = zext i32 %i.ep to i64
  %i.er = add i64 %.01013.i.epil, %i.eq           ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !213
  %i.eu = zext i32 %i.et to i64
  %i.ev = add i64 %.01112.i.epil, %i.eu           ; 2 uses
  %i.ew = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZSTD_fastSequenceLengthSum.exit, label %.lr.ph.i.epil, !llvm.loop !450

ZSTD_fastSequenceLengthSum.exit:                  ; preds = %.lr.ph.i.epil, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa
  %.lcssa180 = phi i64 [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.er, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.ev, %.lr.ph.i.epil ]
  %i.ex = add i64 %.lcssa, %.lcssa180
  %i.ey = icmp ugt i64 %i.ex, %2
  br i1 %i.ey, label %bb.w, label %ZSTD_fastSequenceLengthSum.exit.thread

ZSTD_fastSequenceLengthSum.exit.thread:           ; preds = %bb.u, %ZSTD_fastSequenceLengthSum.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !374
  %i.fb = call i64 @ZSTD_copySequencesToSeqStoreExplicitBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.da, i64 noundef %.1.i, ptr noundef %1, i64 noundef %2, i32 noundef %i.fa) ; 2 uses
  %i.fc = icmp ult i64 %i.fb, -119
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fd, align 8, !tbaa !451
  br label %bb.w

bb.w:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit, %ZSTD_fastSequenceLengthSum.exit.thread, %bb.v
  %.3 = phi i64 [ %i.fb, %ZSTD_fastSequenceLengthSum.exit.thread ], [ 0, %bb.v ], [ -107, %ZSTD_fastSequenceLengthSum.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread163

ZSTD_postProcessSequenceProducerResult.exit.thread: ; preds = %bb.q, %bb.s, %ZSTD_postProcessSequenceProducerResult.exit
  %.1.i156 = phi i64 [ %.1.i, %ZSTD_postProcessSequenceProducerResult.exit ], [ -106, %bb.s ], [ -106, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !452
  %.not140 = icmp eq i32 %i.ff, 0
  br i1 %.not140, label %.thread163, label %bb.x

bb.x:                                             ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !173 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !174
  %i.fk = add i32 %i.fh, -6
  %i.fl = icmp ult i32 %i.fk, -3
  %i.fm = icmp ne i32 %i.fj, 1
  %.not8.i = or i1 %i.fm, %i.fl
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.fo = zext nneg i32 %i.fh to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.fs = sext i32 %i.fh to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %.0.in.i = select i1 %.not8.i, ptr %i.ft, ptr %i.fq
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !48
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.fu, align 8, !tbaa !451
  %i.fv = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 5616
  %i.fx = tail call i64 %.0.i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.fw, ptr noundef %1, i64 noundef %2) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !173 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !174
  %i.gc = add i32 %i.fz, -6
  %i.gd = icmp ult i32 %i.gc, -3
  %i.ge = icmp ne i32 %i.gb, 1
  %.not8.i148 = or i1 %i.ge, %i.gd
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.gg = zext nneg i32 %i.fz to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -24
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.gk = sext i32 %i.fz to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gk
  %.0.in.i149 = select i1 %.not8.i148, ptr %i.gl, ptr %i.gi
  %.0.i150 = load ptr, ptr %.0.in.i149, align 8, !tbaa !48
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store ptr null, ptr %i.gm, align 8, !tbaa !451
  %i.gn = tail call i64 %.0.i150(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, ptr noundef %1, i64 noundef %2) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.o, %bb.y, %bb.k
  %.2133 = phi i64 [ %i.bk, %bb.k ], [ %i.cc, %bb.o ], [ %i.fx, %bb.x ], [ %i.gn, %bb.y ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gp = sub i64 0, %.2133
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %i.gp
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull readonly align 1 %i.gq, i64 %.2133, i1 false)
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !200
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.2133
  store ptr %i.gt, ptr %i.n, align 8, !tbaa !200
  br label %.thread163

.thread163:                                       ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread, %bb.w, %bb.j, %.thread, %bb.z, %bb.c, %bb.d
  %.7 = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.z ], [ -41, %bb.j ], [ %.1.ph, %.thread ], [ %.1.i156, %ZSTD_postProcessSequenceProducerResult.exit.thread ], [ %.3, %bb.w ]
  ret i64 %.7
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @ZSTD_isRLE(ptr noundef %0, i64 noundef %1) unnamed_addr #21 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !195
  %i.b = zext i8 %i.a to i64
  %i.c = mul nuw i64 %i.b, 72340172838076673      ; 4 uses
  %i.d = and i64 %1, 31                           ; 5 uses
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -7
  %i.i = icmp samesign ugt i64 %i.d, 8
  br i1 %i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %.val60.i = load i64, ptr %0, align 1, !tbaa !113 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 1, !tbaa !113 ; 2 uses
  %.not.i = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i, label %.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = xor i64 %.val.i, %.val60.i
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %i.l = lshr i64 %i.k, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.d, %bb.f
  %.pn.i = phi ptr [ %.049.i, %bb.f ], [ %0, %bb.d ]
  %.pn67.i = phi ptr [ %.045.i, %bb.f ], [ %i.f, %bb.d ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 5 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 3 uses
  %i.m = icmp ult ptr %.045.i, %i.h
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %.preheader.i
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !113 ; 2 uses
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !113 ; 2 uses
  %.not59.i = icmp eq i64 %.049.val.i, %.045.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.f
  %i.n = xor i64 %.045.val.i, %.049.val.i
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.n, i1 true)
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %.045.i, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.f to i64
  %i.t = sub i64 %i.r, %i.s
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %.251.i = phi ptr [ %0, %bb.c ], [ %.049.i, %.preheader.i ] ; 4 uses
  %.247.i = phi ptr [ %i.f, %bb.c ], [ %.045.i, %.preheader.i ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.v = icmp ult ptr %.247.i, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !3
  %i.w = icmp eq i32 %.251.val.i, %.247.val.i
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.loopexit.i
  %.352.i = phi ptr [ %i.y, %bb.h ], [ %.251.i, %bb.g ], [ %.251.i, %.loopexit.i ] ; 4 uses
  %.348.i = phi ptr [ %i.x, %bb.h ], [ %.247.i, %bb.g ], [ %.247.i, %.loopexit.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.aa = icmp ult ptr %.348.i, %i.z
  br i1 %i.aa, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !230
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !230
  %i.ab = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.453.i = phi ptr [ %i.ad, %bb.k ], [ %.352.i, %bb.j ], [ %.352.i, %bb.i ]
  %.4.i = phi ptr [ %i.ac, %bb.k ], [ %.348.i, %bb.j ], [ %.348.i, %bb.i ] ; 4 uses
  %i.ae = icmp ult ptr %.4.i, %i.g
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %.453.i, align 1, !tbaa !195
  %i.ag = load i8, ptr %.4.i, align 1, !tbaa !195
  %i.ah = icmp eq i8 %i.af, %i.ag
  %spec.select.idx.i = zext i1 %i.ah to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %.4.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %i.ai = ptrtoint ptr %.5.i to i64
  %i.aj = ptrtoint ptr %i.f to i64
  %i.ak = sub i64 %i.ai, %i.aj
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.e, %.thread63.i, %bb.n
  %.3.i = phi i64 [ %i.t, %.thread63.i ], [ %i.ak, %bb.n ], [ %i.l, %bb.e ]
  %i.al = add nsw i64 %i.d, -1
  %.not27 = icmp eq i64 %.3.i, %i.al
  br i1 %.not27, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %ZSTD_count.exit, %bb.b
  %.not2834 = icmp ult i64 %1, 32
  br i1 %.not2834, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %.critedge
  %.02335 = phi i64 [ %i.aq, %.critedge ], [ %i.d, %bb.o ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.02335 ; 4 uses
  %.val = load i64, ptr %i.am, align 1, !tbaa !113
  %.not29 = icmp eq i64 %.val, %i.c
  br i1 %.not29, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.1 = load i64, ptr %i.an, align 1, !tbaa !113
  %.not29.1 = icmp eq i64 %.val.1, %i.c
  br i1 %.not29.1, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.2 = load i64, ptr %i.ao, align 1, !tbaa !113
  %.not29.2 = icmp eq i64 %.val.2, %i.c
  br i1 %.not29.2, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val.3 = load i64, ptr %i.ap, align 1, !tbaa !113
  %.not29.3 = icmp eq i64 %.val.3, %i.c
  br i1 %.not29.3, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.r
  %i.aq = add i64 %.02335, 32                     ; 2 uses
  %.not28 = icmp eq i64 %i.aq, %1
  br i1 %.not28, label %.loopexit, label %.preheader, !llvm.loop !453

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.p, %bb.q, %bb.r, %bb.o, %ZSTD_count.exit, %bb.a
  %.2 = phi i32 [ 0, %ZSTD_count.exit ], [ 1, %bb.a ], [ 1, %bb.o ], [ 1, %.critedge ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %.preheader ]
  ret i32 %.2
}

declare i64 @ZSTD_compressSuperBlock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

end_hunk_7
begin_hunk_8_@ZSTD_copyBlockSequences:bb.a
bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.aw = phi i32 [ %i.aj, %bb.d ], [ %i.au, %bb.e ], [ %i.aj, %bb.f ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !193 ; 8 uses
  %i.ay = add i32 %i.ax, -1
  %or.cond = icmp ult i32 %i.ay, 3
  br i1 %or.cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !465
  %.not80 = icmp eq i32 %i.aw, 0
  br i1 %.not80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr [4 x i8], ptr %3, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %i.ax, 3
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = add i32 %i.af, -1
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %bb.k
  %.1.ph = phi i32 [ %i.bh, %bb.l ], [ %i.be, %bb.k ], [ %i.bc, %bb.i ]
  store i32 %.1.ph, ptr %i.ak, align 4, !tbaa !211
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.bi = add i32 %i.ax, -3                       ; 2 uses
  store i32 %i.bi, ptr %i.ak, align 4, !tbaa !211
  %i.bj = icmp ugt i32 %i.ax, 3
  br i1 %i.bj, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.in = icmp ne i16 %i.ai, 0
  %i.bk = sext i1 %.in to i32
  %i.bl = add nsw i32 %i.ax, %i.bk                ; 3 uses
  switch i32 %i.bl, label %bb.p [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bm = add i32 %i.af, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i32 [ %i.bm, %bb.o ], [ %i.bp, %bb.p ]
  %.not22.i = icmp eq i32 %i.bl, 1
  %i.br = select i1 %.not22.i, i32 %i.ad, i32 %i.ae
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.q
  %storemerge = phi i32 [ %i.br, %bb.q ], [ %i.ae, %bb.m ] ; 2 uses
  %.sink.i = phi i32 [ %i.bq, %bb.q ], [ %i.bi, %bb.m ] ; 2 uses
  store i32 %storemerge, ptr %i.ac, align 4, !tbaa !3
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !3
  store i32 %.sink.i, ptr %3, align 4, !tbaa !3
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %bb.n, %.sink.split.i
  %i.bs = phi i32 [ %i.ad, %bb.n ], [ %storemerge, %.sink.split.i ]
  %i.bt = phi i32 [ %i.ae, %bb.n ], [ %i.af, %.sink.split.i ]
  %i.bu = phi i32 [ %i.af, %bb.n ], [ %.sink.i, %.sink.split.i ]
  %i.bv = zext nneg i32 %i.aw to i64
  %i.bw = add i64 %.07285, %i.bv                  ; 2 uses
  %i.bx = add nuw i64 %.07484, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !466

._crit_edge:                                      ; preds = %ZSTD_updateRep.exit, %bb.b
  %.072.lcssa = phi i64 [ 0, %bb.b ], [ %i.bw, %ZSTD_updateRep.exit ]
  %i.by = add i64 %.072.lcssa, %i.m
  %i.bz = sub i64 %i.l, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.g ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !214
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !213
  store i32 0, ptr %i.cb, align 4, !tbaa !211
  %i.ce = add i64 %i.s, %i.o
  store i64 %i.ce, ptr %i.n, align 8, !tbaa !462
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ 0, %._crit_edge ], [ -70, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

declare i64 @ZSTD_compressLiterals(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare i64 @ZSTD_encodeSequences(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare extern_weak i64 @ZSTD_trace_compress_begin(ptr noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, 4294967296) i64 @ZSTD_compress_insertDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9, ptr noundef %10) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp ult i64 %6, 8
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %7, 2
  %. = select i1 %i.c, i64 -32, i64 0
  br label %ZSTD_loadZstdDictionary.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store i32 0, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5604
  store i32 0, ptr %i.f, align 4, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5608
  store i32 0, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5612
  store i32 0, ptr %i.h, align 4, !tbaa !169
  %i.i = icmp eq i32 %7, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %ZSTD_loadZstdDictionary.exit

bb.e:                                             ; preds = %bb.c
  %.val = load i32, ptr %5, align 1, !tbaa !3
  %.not = icmp eq i32 %.val, -332356553
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %7, label %bb.h [
    i32 0, label %bb.g
    i32 2, label %ZSTD_loadZstdDictionary.exit
  ]

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %8, i32 noundef %9)
  br label %ZSTD_loadZstdDictionary.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !92
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val.i = load i32, ptr %i.l, align 1, !tbaa !3
  %i.m = zext i32 %.val.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = phi i64 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %5, i64 noundef range(i64 8, 0) %6) ; 4 uses
  %i.p = icmp ult i64 %i.o, -119
  br i1 %i.p, label %bb.k, label %ZSTD_loadZstdDictionary.exit

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %i.o
  %gepdiff.i = sub nsw i64 %6, %i.o
  tail call fastcc void @ZSTD_loadDictionaryContent(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %i.q, i64 noundef %gepdiff.i, i32 noundef %8, i32 noundef range(i32 0, 2) %9)
  br label %ZSTD_loadZstdDictionary.exit

ZSTD_loadZstdDictionary.exit:                     ; preds = %bb.k, %bb.j, %bb.f, %bb.b, %bb.g, %bb.d
  %.0 = phi i64 [ %., %bb.b ], [ -32, %bb.f ], [ 0, %bb.d ], [ 0, %bb.g ], [ %i.o, %bb.j ], [ %i.n, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_loadDictionaryContent(ptr noundef initializes((40, 48), (136, 140)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = icmp eq i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %i.f = and i1 %i.e, %i.d                        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !73  ; 3 uses
  %i.h = add i32 %.val, -3
  %narrow.i = icmp ult i32 %i.h, -2
  %or.cond.not119 = icmp eq i32 %7, 0
  %or.cond.not = or i1 %or.cond.not119, %narrow.i ; 2 uses
  %spec.select.neg = select i1 %or.cond.not, i64 -3758096382, i64 -16777214
  %spec.select = select i1 %or.cond.not, i64 3758096382, i64 16777214 ; 2 uses
  %i.i = icmp ugt i64 %5, %spec.select
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %spec.select.neg
  %.093 = tail call i64 @llvm.umin.i64(i64 %5, i64 %spec.select) ; 4 uses
  %.092 = select i1 %i.i, ptr %i.j, ptr %4        ; 10 uses
  %i.k = icmp eq i64 %5, 0
  br i1 %i.k, label %ZSTD_window_update.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !235    ; 2 uses
  %.not119 = icmp eq ptr %.092, %i.l
  br i1 %.not119, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !236
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre46.i = load i32, ptr %.phi.trans.insert45.i, align 4, !tbaa !237
  %.phi.trans.insert47.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre48.i = load i32, ptr %.phi.trans.insert47.i, align 8, !tbaa !238
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !239  ; 4 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !238  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !237
  %i.u = trunc i64 %i.q to i32                    ; 6 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !238
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.v, align 8, !tbaa !236
  %i.w = sub i64 0, %i.q
  %i.x = getelementptr inbounds i8, ptr %.092, i64 %i.w
  store ptr %i.x, ptr %i.m, align 8, !tbaa !239
  %i.y = sub i32 %i.u, %i.s
  %i.z = icmp ult i32 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.u, ptr %i.t, align 4, !tbaa !237
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i
  %i.aa = phi i32 [ %.pre48.i, %._crit_edge.i ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %i.ab = phi i32 [ %.pre46.i, %._crit_edge.i ], [ %i.u, %bb.d ], [ %i.s, %bb.c ]
  %i.ac = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.092, i64 %.093 ; 6 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !235
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %i.ah = zext i32 %i.aa to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = icmp ult ptr %.092, %i.ai
  %i.ak = and i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.f, label %ZSTD_window_update.exit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.ah)
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !237
  br label %ZSTD_window_update.exit

ZSTD_window_update.exit:                          ; preds = %bb.e, %bb.f
  br i1 %i.f, label %bb.g, label %bb.n

ZSTD_window_update.exit.thread:                   ; preds = %bb.a
  br i1 %i.f, label %ZSTD_window_update.exit117, label %bb.n

bb.g:                                             ; preds = %ZSTD_window_update.exit
  %i.ar = load ptr, ptr %1, align 8, !tbaa !235   ; 2 uses
  %.not120 = icmp eq ptr %.092, %i.ar
  br i1 %.not120, label %._crit_edge.i108, label %bb.h

._crit_edge.i108:                                 ; preds = %bb.g
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i110 = load ptr, ptr %.phi.trans.insert.i109, align 8, !tbaa !236
  %.phi.trans.insert45.i111 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre46.i112 = load i32, ptr %.phi.trans.insert45.i111, align 4, !tbaa !237
  %.phi.trans.insert47.i113 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre48.i114 = load i32, ptr %.phi.trans.insert47.i113, align 8, !tbaa !238
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !239 ; 4 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !238 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !237
  %i.ba = trunc i64 %i.aw to i32                  ; 6 uses
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !238
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.at, ptr %i.bb, align 8, !tbaa !236
  %i.bc = sub i64 0, %i.aw
  %i.bd = getelementptr inbounds i8, ptr %.092, i64 %i.bc
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !239
  %i.be = sub i32 %i.ba, %i.ay
  %i.bf = icmp ult i32 %i.be, 8
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !237
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i108
  %i.bg = phi i32 [ %.pre48.i114, %._crit_edge.i108 ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ]
  %i.bh = phi i32 [ %.pre46.i112, %._crit_edge.i108 ], [ %i.ba, %bb.i ], [ %i.ay, %bb.h ]
  %i.bi = phi ptr [ %.pre.i110, %._crit_edge.i108 ], [ %i.at, %bb.i ], [ %i.at, %bb.h ] ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !235
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = icmp ugt ptr %i.ad, %i.bk
  %i.bm = zext i32 %i.bg to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = icmp ult ptr %.092, %i.bn
  %i.bp = and i1 %i.bl, %i.bo
  br i1 %i.bp, label %bb.k, label %ZSTD_window_update.exit117

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.br = ptrtoint ptr %i.ad to i64
  %i.bs = ptrtoint ptr %i.bi to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = tail call i64 @llvm.smin.i64(i64 %i.bt, i64 %i.bm)
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !237
  br label %ZSTD_window_update.exit117

ZSTD_window_update.exit117:                       ; preds = %ZSTD_window_update.exit.thread, %bb.j, %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !93
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %ZSTD_window_update.exit117
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !467
  %i.ca = ptrtoint ptr %i.a to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  br label %bb.m

bb.m:                                             ; preds = %ZSTD_window_update.exit117, %bb.l
  %i.ce = phi i32 [ %i.cd, %bb.l ], [ 0, %ZSTD_window_update.exit117 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !468
  tail call void @ZSTD_ldm_fillHashTable(ptr noundef nonnull %1, ptr noundef nonnull %.092, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28
  %.pre = load i32, ptr %i.g, align 4, !tbaa !90
  br label %bb.n

bb.n:                                             ; preds = %ZSTD_window_update.exit.thread, %bb.m, %ZSTD_window_update.exit
  %i.cg = phi i32 [ %.val, %ZSTD_window_update.exit.thread ], [ %.pre, %bb.m ], [ %.val, %ZSTD_window_update.exit ]
  %i.ch = icmp ult i32 %i.cg, 8
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !86
  %. = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.cl)
  %spec.select118 = tail call i32 @llvm.umin.i32(i32 %., i32 28)
  %i.cm = shl nuw i32 8, %spec.select118
  %i.cn = zext i32 %i.cm to i64                   ; 3 uses
  %i.co = icmp samesign ugt i64 %.093, %i.cn
  %i.cp = sub nsw i64 0, %i.cn
  %i.cq = getelementptr inbounds i8, ptr %i.a, i64 %i.cp
  %.195 = select i1 %i.co, ptr %i.cq, ptr %.092
  %.1 = tail call i64 @llvm.umin.i64(i64 %.093, i64 %i.cn)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.296 = phi ptr [ %.195, %bb.o ], [ %.092, %bb.n ] ; 2 uses
  %.2 = phi i64 [ %.1, %bb.o ], [ %.093, %bb.n ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !443
  %i.ct = ptrtoint ptr %.296 to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !240
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !93
  %.not105 = icmp eq i32 %i.cz, 0
  %i.da = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.db = sub i64 %i.da, %i.cu
end_hunk_8
