Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstdmt_compress?download=true
inline.NumInlined: 124
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ZSTDMT_createBufferPool:bb.a
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.b, %bb.f, %bb.e, %ZSTD_customCalloc.exit, %bb.i, %bb.h
  %.0 = phi ptr [ %.1.i26293341, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %ZSTD_customCalloc.exit ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @ZSTDMT_createCCtxPool(i32 noundef %0, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %.val20 = load ptr, ptr %1, align 8, !tbaa !91  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val21 = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i = icmp eq ptr %.val20, null             ; 2 uses
  br i1 %.not.i, label %ZSTD_customCalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %.val20(ptr noundef %.val21, i64 noundef 80) #14, !inline_history !6 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ZSTD_customFree.exit, label %ZSTD_customCalloc.exit.thread30

ZSTD_customCalloc.exit.thread30:                  ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  br label %bb.c

ZSTD_customCalloc.exit:                           ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #15 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %ZSTD_customFree.exit, label %bb.c

bb.c:                                             ; preds = %ZSTD_customCalloc.exit.thread30, %ZSTD_customCalloc.exit
  %.1.i33 = phi ptr [ %i.b, %ZSTD_customCalloc.exit.thread30 ], [ %i.d, %ZSTD_customCalloc.exit ] ; 12 uses
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.1.i33, ptr noundef null) #14
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val22 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.val22, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.val22(ptr noundef %.val21, ptr noundef nonnull %.1.i33) #14, !inline_history !2
  br label %ZSTD_customFree.exit

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %.1.i33) #14
  br label %ZSTD_customFree.exit

bb.g:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.1.i33, i64 40
  store i32 %0, ptr %i.g, align 8, !tbaa !63
  %i.h = sext i32 %0 to i64
  %i.i = shl nsw i64 %i.h, 3                      ; 3 uses
  br i1 %.not.i, label %ZSTD_customCalloc.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr %.val20(ptr noundef %.val21, i64 noundef range(i64 -17179869184, 1958505086521) %i.i) #14, !inline_history !6 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ZSTD_customCalloc.exit27.thread, label %ZSTD_customCalloc.exit27.thread36

ZSTD_customCalloc.exit27.thread:                  ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i33, i64 72
  store ptr null, ptr %i.l, align 8, !tbaa !62
  br label %bb.i

ZSTD_customCalloc.exit27.thread36:                ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 range(i64 -17179869184, 1958505086521) %i.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i33, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !62
  br label %bb.j

ZSTD_customCalloc.exit27:                         ; preds = %bb.g
  %i.n = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1958505086521) %i.i) #15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i33, i64 72 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !62
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ZSTD_customCalloc.exit27.thread, %ZSTD_customCalloc.exit27
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.1.i33)
  br label %ZSTD_customFree.exit

bb.j:                                             ; preds = %ZSTD_customCalloc.exit27.thread36, %ZSTD_customCalloc.exit27
  %i.p = phi ptr [ %i.m, %ZSTD_customCalloc.exit27.thread36 ], [ %i.o, %ZSTD_customCalloc.exit27 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i33, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !81
  %i.r = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #14 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !62
  store ptr %i.r, ptr %i.s, align 8, !tbaa !65
  %.not18 = icmp eq ptr %i.r, null
  br i1 %.not18, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.1.i33)
  br label %ZSTD_customFree.exit

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i33, i64 44
  store i32 1, ptr %i.t, align 4, !tbaa !113
  br label %ZSTD_customFree.exit

ZSTD_customFree.exit:                             ; preds = %bb.b, %bb.f, %bb.e, %ZSTD_customCalloc.exit, %bb.l, %bb.k, %bb.i
  %.0 = phi ptr [ null, %bb.f ], [ %.1.i33, %bb.l ], [ null, %bb.k ], [ null, %bb.i ], [ null, %ZSTD_customCalloc.exit ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @ZSTD_CCtxParams_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i64 @ZSTD_sizeof_CCtx(ptr noundef) local_unnamed_addr #1

declare i32 @POOL_resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ZSTD_cycleLog(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(address), i64 noundef) local_unnamed_addr #1

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @POOL_tryAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_compressionJob(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ZSTD_CCtx_params_s, align 8 ; 10 uses
  %2 = alloca %struct.RawSeqStore_t, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false), !tbaa.struct !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 6 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef %i.c) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113  ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #14 ; 0 uses
  br label %ZSTDMT_getCCtx.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %i.o) #14
  br label %ZSTDMT_getCCtx.exit

ZSTDMT_getCCtx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.p, %bb.c ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46, !noalias !188
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTDMT_getCCtx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !alias.scope !188
  br label %ZSTDMT_getSeq.exit

bb.e:                                             ; preds = %ZSTDMT_getCCtx.exit
  %i.v = tail call fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef nonnull %i.r), !noalias !188 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !189
  store ptr %i.w, ptr %2, align 8, !tbaa !191, !alias.scope !189
  %i.z = udiv i64 %i.x, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !192, !alias.scope !189
  %i.ab = icmp eq ptr %i.w, null
  br label %ZSTDMT_getSeq.exit

ZSTDMT_getSeq.exit:                               ; preds = %bb.d, %bb.e
  %i.ac = phi i1 [ true, %bb.d ], [ %i.ab, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ae = icmp eq ptr %.0.i, null                 ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ZSTDMT_getSeq.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.af) #14 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.ah, align 8, !tbaa !76
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %.thread193

bb.g:                                             ; preds = %ZSTDMT_getSeq.exit
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !58
  %.sroa.058.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.058.0.copyload, null
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112
  %i.am = tail call fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %i.al) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ap) #14 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.ar, align 8, !tbaa !76
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ap) #14 ; 0 uses
  br label %.thread193

bb.j:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !48
  store i64 %i.at, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0 = phi i64 [ %i.at, %bb.j ], [ %.sroa.9.0.copyload, %bb.g ] ; 2 uses
  %.sroa.058.0 = phi ptr [ %i.an, %bb.j ], [ %.sroa.058.0.copyload, %bb.g ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !85
  %i.aw = icmp eq i32 %i.av, 1
  %or.cond = select i1 %i.aw, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ax) #14 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.az, align 8, !tbaa !76
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ax) #14 ; 0 uses
  br label %.thread193

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !109 ; 4 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.bd, align 4, !tbaa !96
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 2, ptr %i.au, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %i.be, align 4, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !108 ; 21 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = tail call i32 @pthread_mutex_lock(ptr noundef %i.bg) #14 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2512 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !95 ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %i.bc
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bq = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg) #14 ; 0 uses
  %i.br = load i32, ptr %i.bm, align 8, !tbaa !95 ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bc
  br i1 %i.bs, label %bb.p, label %._crit_edge.i, !llvm.loop !184

._crit_edge.i:                                    ; preds = %bb.p, %bb.o
  %.lcssa.i = phi i32 [ %i.bn, %bb.o ], [ %i.br, %bb.p ]
  %i.bt = icmp eq i32 %.lcssa.i, %i.bc
  br i1 %i.bt, label %bb.q, label %ZSTDMT_serialState_genSequences.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 184 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !193
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 312 ; 4 uses
  %i.by = icmp eq i64 %i.bk, 0
  br i1 %i.by, label %ZSTD_window_update.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.bz
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.s
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 328
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !98
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 340
  %.pre46.i.i = load i32, ptr %.phi.trans.insert45.i.i, align 4, !tbaa !100
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 336
  %.pre48.i.i = load i32, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !99
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 320 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !97 ; 4 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 336 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !99 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 340 ; 2 uses
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !100
  %i.ci = trunc i64 %i.ce to i32                  ; 6 uses
  store i32 %i.ci, ptr %i.cf, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 328
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !98
  %i.ck = sub i64 0, %i.ce
  %i.cl = getelementptr inbounds i8, ptr %i.bi, i64 %i.ck
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !97
  %i.cm = sub i32 %i.ci, %i.cg
  %i.cn = icmp ult i32 %i.cm, 8
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !100
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i
  %i.co = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ]
  %i.cp = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.ci, %bb.u ], [ %i.cg, %bb.t ]
  %i.cq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cb, %bb.u ], [ %i.cb, %bb.t ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 3 uses
  store ptr %i.cr, ptr %i.bx, align 8, !tbaa !101
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = icmp ugt ptr %i.cr, %i.ct
  %i.cv = zext i32 %i.co to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = icmp ult ptr %i.bi, %i.cw
  %i.cy = and i1 %i.cu, %i.cx
  br i1 %i.cy, label %bb.w, label %ZSTD_window_update.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 340
  %i.da = ptrtoint ptr %i.cr to i64
  %i.db = ptrtoint ptr %i.cq to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cv)
  %i.de = trunc nuw i64 %i.dd to i32
  store i32 %i.de, ptr %i.cz, align 4, !tbaa !100
  br label %ZSTD_window_update.exit.i

ZSTD_window_update.exit.i:                        ; preds = %bb.w, %bb.v, %bb.r
  %i.df = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %i.bx, ptr noundef nonnull %2, ptr noundef nonnull %i.bu, ptr noundef %i.bi, i64 noundef %i.bk) #14 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 2520 ; 2 uses
  %i.dh = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dg) #14 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 2608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i64 40, i1 false), !tbaa.struct !103
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2560
  %i.dk = call i32 @pthread_cond_signal(ptr noundef nonnull %i.dj) #14 ; 0 uses
  %i.dl = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dg) #14 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %ZSTD_window_update.exit.i, %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = icmp ne i64 %i.bk, 0
  %or.cond.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i, label %bb.y, label %ZSTDMT_serialState_genSequences.exit

bb.y:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@llvm.assume
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !49}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !{!3, !49}
!4 = distinct !{!4, !49}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"p1 _ZTS10POOL_ctx_s", !16, i64 0}
!18 = !{!"p1 _ZTS19ZSTDMT_bufferPool_s", !16, i64 0}
!19 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!20 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!21 = !{!"long", !11, i64 0}
!22 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!23 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!24 = !{!"ZSTD_CCtx_params_s", !12, i64 0, !19, i64 4, !20, i64 32, !12, i64 44, !12, i64 48, !21, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !21, i64 80, !12, i64 88, !12, i64 92, !22, i64 96, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !21, i64 152, !12, i64 160, !12, i64 164, !23, i64 168, !12, i64 192, !12, i64 196, !16, i64 200, !16, i64 208, !12, i64 216}
!25 = !{!"", !16, i64 0, !21, i64 8}
!26 = !{!"buffer_s", !16, i64 0, !21, i64 8}
!27 = !{!"", !25, i64 0, !26, i64 16, !21, i64 32}
!28 = !{!"p1 omnipotent char", !16, i64 0}
!29 = !{!"", !28, i64 0, !21, i64 8, !21, i64 16}
!30 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!31 = !{!"", !30, i64 0, !16, i64 40, !12, i64 48, !28, i64 56, !11, i64 64, !11, i64 576}
!32 = !{!"XXH64_state_s", !21, i64 0, !11, i64 8, !11, i64 40, !12, i64 72, !12, i64 76, !21, i64 80}
!33 = !{!"", !11, i64 0, !11, i64 40, !24, i64 88, !31, i64 312, !32, i64 2424, !12, i64 2512, !11, i64 2520, !11, i64 2560, !30, i64 2608}
!34 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16}
!35 = !{!"long long", !11, i64 0}
!36 = !{!"p1 _ZTS12ZSTD_CDict_s", !16, i64 0}
!37 = !{!"ZSTDMT_CCtx_s", !17, i64 0, !16, i64 8, !18, i64 16, !16, i64 24, !18, i64 32, !24, i64 40, !21, i64 264, !21, i64 272, !12, i64 280, !27, i64 288, !29, i64 328, !33, i64 352, !34, i64 3000, !12, i64 3024, !12, i64 3028, !12, i64 3032, !12, i64 3036, !12, i64 3040, !35, i64 3048, !35, i64 3056, !35, i64 3064, !23, i64 3072, !36, i64 3096, !36, i64 3104, !12, i64 3112}
!38 = !{!37, !12, i64 3040}
!39 = !{!37, !17, i64 0}
!40 = !{!37, !16, i64 8}
!41 = !{!37, !12, i64 3024}
!42 = !{!37, !18, i64 16}
!43 = !{!37, !16, i64 24}
!44 = !{!"p1 _ZTS8buffer_s", !16, i64 0}
!45 = !{!"ZSTDMT_bufferPool_s", !11, i64 0, !21, i64 40, !12, i64 48, !12, i64 52, !23, i64 56, !44, i64 80}
!46 = !{!45, !21, i64 40}
!47 = !{!37, !18, i64 32}
!48 = !{!16, !16, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!33, !16, i64 352}
!51 = !{!33, !28, i64 368}
!52 = !{!37, !36, i64 3096}
!53 = !{!37, !28, i64 328}
!54 = !{!11, !11, i64 0}
!55 = !{!45, !12, i64 52}
!56 = !{!45, !12, i64 48}
!57 = !{!45, !44, i64 80}
!58 = !{!21, !21, i64 0}
!59 = !{!"any p2 pointer", !16, i64 0}
!60 = !{!"p2 _ZTS11ZSTD_CCtx_s", !59, i64 0}
!61 = !{!"", !11, i64 0, !12, i64 40, !12, i64 44, !23, i64 48, !60, i64 72}
!62 = !{!61, !60, i64 72}
!63 = !{!61, !12, i64 40}
!64 = !{!"p1 _ZTS11ZSTD_CCtx_s", !16, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!37, !21, i64 336}
!67 = !{!37, !12, i64 44}
!68 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15}
!69 = !{!37, !35, i64 3056}
!70 = !{!37, !21, i64 320}
!71 = !{!37, !35, i64 3064}
!72 = !{!37, !12, i64 3032}
!73 = !{!37, !12, i64 280}
!74 = !{!37, !12, i64 3028}
!75 = !{!"", !21, i64 0, !21, i64 8, !11, i64 16, !11, i64 56, !16, i64 104, !18, i64 112, !18, i64 120, !16, i64 128, !26, i64 136, !25, i64 152, !25, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !24, i64 200, !36, i64 424, !35, i64 432, !21, i64 440, !12, i64 448}
!76 = !{!75, !21, i64 8}
!77 = !{!75, !21, i64 440}
!78 = !{!75, !21, i64 176}
!79 = !{!75, !21, i64 0}
!80 = !{!24, !12, i64 76}
!81 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !48}
!82 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !15, i64 40, i64 4, !15, i64 44, i64 4, !15, i64 48, i64 4, !15, i64 56, i64 8, !58, i64 64, i64 4, !15, i64 68, i64 4, !15, i64 72, i64 4, !15, i64 76, i64 4, !15, i64 80, i64 8, !58, i64 88, i64 4, !15, i64 92, i64 4, !15, i64 96, i64 4, !15, i64 100, i64 4, !15, i64 104, i64 4, !15, i64 108, i64 4, !15, i64 112, i64 4, !15, i64 116, i64 4, !15, i64 120, i64 4, !15, i64 124, i64 4, !15, i64 128, i64 4, !15, i64 132, i64 4, !15, i64 136, i64 4, !15, i64 140, i64 4, !15, i64 144, i64 4, !15, i64 152, i64 8, !58, i64 160, i64 4, !15, i64 164, i64 4, !15, i64 168, i64 8, !48, i64 176, i64 8, !48, i64 184, i64 8, !48, i64 192, i64 4, !15, i64 196, i64 4, !15, i64 200, i64 8, !48, i64 208, i64 8, !48, i64 216, i64 4, !15}
!83 = !{!37, !35, i64 3048}
!84 = !{!37, !36, i64 3104}
!85 = !{!24, !12, i64 96}
!86 = !{!37, !21, i64 272}
!87 = !{!37, !21, i64 264}
!88 = !{!37, !21, i64 3008}
!89 = !{!37, !21, i64 3016}
!90 = !{!37, !12, i64 136}
!91 = !{!23, !16, i64 0}
!92 = !{!37, !21, i64 344}
!93 = !{!37, !16, i64 288}
!94 = !{!37, !21, i64 296}
!95 = !{!33, !12, i64 2512}
!96 = !{!24, !12, i64 36}
!97 = !{!30, !28, i64 8}
!98 = !{!30, !28, i64 16}
!99 = !{!30, !12, i64 24}
!100 = !{!30, !12, i64 28}
!101 = !{!30, !28, i64 0}
!102 = !{!28, !28, i64 0}
!103 = !{i64 0, i64 8, !102, i64 8, i64 8, !102, i64 16, i64 8, !102, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15}
!104 = !{!75, !16, i64 168}
!105 = !{!75, !36, i64 424}
!106 = !{!75, !35, i64 432}
!107 = !{!75, !18, i64 120}
!108 = !{!75, !16, i64 128}
!109 = !{!75, !12, i64 184}
!110 = !{!75, !12, i64 188}
!111 = !{!75, !12, i64 192}
!112 = !{!75, !18, i64 112}
!113 = !{!61, !12, i64 44}
!114 = distinct !{null, null}
!115 = distinct !{null, null}
!116 = distinct !{null, null}
!117 = distinct !{!117, !49}
!118 = !{i64 0, i64 40, !54}
!119 = !{i64 0, i64 48, !54}
!120 = distinct !{!120, !49}
!121 = !{!26, !16, i64 0}
!122 = distinct !{!122, !49}
!123 = distinct !{!123, !49, !129, !130}
!124 = distinct !{!124, !49, !130, !129}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49, !129, !130}
!127 = distinct !{!127, !49, !130, !129}
!128 = !{!26, !21, i64 8}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!24, !12, i64 44}
!132 = !{!37, !12, i64 84}
!133 = !{!19, !12, i64 0}
!134 = distinct !{!134, !49}
!135 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !12, i64 32, !12, i64 36}
!136 = !{!135, !12, i64 32}
!137 = distinct !{null, null, null, null}
!138 = distinct !{null, null}
!139 = distinct !{null, null}
!140 = !{!37, !12, i64 116}
!141 = !{!24, !21, i64 80}
!142 = !{!24, !12, i64 88}
!143 = !{!24, !12, i64 28}
!144 = !{!24, !12, i64 4}
!145 = !{!24, !12, i64 8}
!146 = !{!24, !12, i64 92}
!147 = !{!37, !21, i64 3000}
!148 = !{!24, !12, i64 100}
!149 = !{!24, !12, i64 104}
!150 = !{!33, !12, i64 188}
!151 = !{!33, !12, i64 192}
!152 = !{!33, !12, i64 360}
!153 = !{!24, !12, i64 48}
!154 = !{!33, !28, i64 320}
!155 = !{!33, !21, i64 168}
!156 = distinct !{!156, !49}
!157 = distinct !{!157, !49}
!158 = distinct !{!158, !49}
!159 = distinct !{!159, !170}
!160 = distinct !{!160, !170}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49}
!163 = distinct !{null, null, null}
!164 = !{!37, !12, i64 3036}
!165 = !{!"ZSTD_inBuffer_s", !16, i64 0, !21, i64 8, !21, i64 16}
!166 = !{!165, !21, i64 8}
!167 = !{!165, !21, i64 16}
!168 = !{!37, !16, i64 304}
!169 = !{!37, !12, i64 132}
!170 = !{!"llvm.loop.unroll.disable"}
!171 = !{i64 0, i64 8, !48, i64 8, i64 8, !58}
!172 = !{!37, !12, i64 76}
!173 = !{!75, !12, i64 448}
!174 = !{!75, !16, i64 136}
!175 = !{!"ZSTD_outBuffer_s", !16, i64 0, !21, i64 8, !21, i64 16}
!176 = !{!175, !21, i64 8}
!177 = !{!175, !21, i64 16}
!178 = !{!175, !16, i64 0}
!179 = distinct !{!179, !49}
!180 = distinct !{!180, i1 false, !"ZSTDMT_getSeq"}
!181 = distinct !{!181, !180, !"ZSTDMT_getSeq: argument 0"}
!182 = distinct !{!182, i1 false, !"bufferToSeq"}
!183 = distinct !{!183, !182, !"bufferToSeq: argument 0"}
!184 = distinct !{!184, !49}
!185 = distinct !{!185, !49}
!186 = distinct !{null, null, null}
!187 = !{!75, !16, i64 104}
!188 = !{!181}
!189 = !{!183, !181}
!190 = !{!"", !16, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
!191 = !{!190, !16, i64 0}
!192 = !{!190, !21, i64 32}
!193 = !{!33, !12, i64 184}
!194 = !{!33, !12, i64 124}
!195 = !{!75, !16, i64 152}
!196 = !{!75, !21, i64 160}
!197 = !{!190, !21, i64 24}
end_hunk_1
