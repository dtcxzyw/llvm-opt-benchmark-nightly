Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstdmt_compress?download=true
inline.NumInlined: 124
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ZSTDMT_createCCtxPool:bb.a
ZSTD_customCalloc.exit27.thread36:                ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 range(i64 -17179869184, 1958505086521) %i.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i33, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !63
  br label %bb.j

ZSTD_customCalloc.exit27:                         ; preds = %bb.g
  %i.n = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1958505086521) %i.i) #15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i33, i64 72 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !63
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ZSTD_customCalloc.exit27.thread, %ZSTD_customCalloc.exit27
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.1.i33)
  br label %ZSTD_customFree.exit

bb.j:                                             ; preds = %ZSTD_customCalloc.exit27.thread36, %ZSTD_customCalloc.exit27
  %i.p = phi ptr [ %i.m, %ZSTD_customCalloc.exit27.thread36 ], [ %i.o, %ZSTD_customCalloc.exit27 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i33, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !102
  %i.r = tail call ptr @ZSTD_createCCtx_advanced(ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #14 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.r, ptr %i.s, align 8, !tbaa !68
  %.not18 = icmp eq ptr %i.r, null
  br i1 %.not18, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef nonnull %.1.i33)
  br label %ZSTD_customFree.exit

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i33, i64 44
  store i32 1, ptr %i.t, align 4, !tbaa !179
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false), !tbaa.struct !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180  ; 6 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef %i.c) #14 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !179  ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !181
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ZSTDMT_getCCtx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !alias.scope !181
  br label %ZSTDMT_getSeq.exit

bb.e:                                             ; preds = %ZSTDMT_getCCtx.exit
  %i.v = tail call fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef nonnull %i.r), !noalias !181 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !184
  store ptr %i.w, ptr %2, align 8, !tbaa !187, !alias.scope !184
  %i.z = udiv i64 %i.x, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !189, !alias.scope !184
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
  store i64 -64, ptr %i.ah, align 8, !tbaa !93
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %.thread193

bb.g:                                             ; preds = %ZSTDMT_getSeq.exit
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !58
  %.sroa.058.0.copyload = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.058.0.copyload, null
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !169
  %i.am = tail call fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %i.al) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ap) #14 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.ar, align 8, !tbaa !93
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ap) #14 ; 0 uses
  br label %.thread193

bb.j:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !42
  store i64 %i.at, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0 = phi i64 [ %i.at, %bb.j ], [ %.sroa.9.0.copyload, %bb.g ] ; 2 uses
  %.sroa.058.0 = phi ptr [ %i.an, %bb.j ], [ %.sroa.058.0.copyload, %bb.g ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !112
  %i.aw = icmp eq i32 %i.av, 1
  %or.cond = select i1 %i.aw, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ax) #14 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.az, align 8, !tbaa !93
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ax) #14 ; 0 uses
  br label %.thread193

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !164 ; 4 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.bd, align 4, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 2, ptr %i.au, align 8, !tbaa !112
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %i.be, align 4, !tbaa !99
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !163 ; 21 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = tail call i32 @pthread_mutex_lock(ptr noundef %i.bg) #14 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2512 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !126 ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %i.bc
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bq = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg) #14 ; 0 uses
  %i.br = load i32, ptr %i.bm, align 8, !tbaa !126 ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bc
  br i1 %i.bs, label %bb.p, label %._crit_edge.i, !llvm.loop !190

._crit_edge.i:                                    ; preds = %bb.p, %bb.o
  %.lcssa.i = phi i32 [ %i.bn, %bb.o ], [ %i.br, %bb.p ]
  %i.bt = icmp eq i32 %.lcssa.i, %i.bc
  br i1 %i.bt, label %bb.q, label %ZSTDMT_serialState_genSequences.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 184 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !191
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 312 ; 4 uses
  %i.by = icmp eq i64 %i.bk, 0
  br i1 %i.by, label %ZSTD_window_update.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.bz
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.s
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 328
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !133
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 340
  %.pre46.i.i = load i32, ptr %.phi.trans.insert45.i.i, align 4, !tbaa !135
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 336
  %.pre48.i.i = load i32, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !134
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 320 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !132 ; 4 uses
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 336 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !134 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 340 ; 2 uses
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !135
  %i.ci = trunc i64 %i.ce to i32                  ; 6 uses
  store i32 %i.ci, ptr %i.cf, align 8, !tbaa !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 328
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !133
  %i.ck = sub i64 0, %i.ce
  %i.cl = getelementptr inbounds i8, ptr %i.bi, i64 %i.ck
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !132
  %i.cm = sub i32 %i.ci, %i.cg
  %i.cn = icmp ult i32 %i.cm, 8
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !135
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i
  %i.co = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ]
  %i.cp = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.ci, %bb.u ], [ %i.cg, %bb.t ]
  %i.cq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cb, %bb.u ], [ %i.cb, %bb.t ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 3 uses
  store ptr %i.cr, ptr %i.bx, align 8, !tbaa !136
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
  store i32 %i.de, ptr %i.cz, align 4, !tbaa !135
  br label %ZSTD_window_update.exit.i

ZSTD_window_update.exit.i:                        ; preds = %bb.w, %bb.v, %bb.r
  %i.df = call i64 @ZSTD_ldm_generateSequences(ptr noundef nonnull %i.bx, ptr noundef nonnull %2, ptr noundef nonnull %i.bu, ptr noundef %i.bi, i64 noundef %i.bk) #14 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 2520 ; 2 uses
  %i.dh = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dg) #14 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 2608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i64 40, i1 false), !tbaa.struct !142
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2560
  %i.dk = call i32 @pthread_cond_signal(ptr noundef nonnull %i.dj) #14 ; 0 uses
  %i.dl = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dg) #14 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %ZSTD_window_update.exit.i, %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !192
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = icmp ne i64 %i.bk, 0
  %or.cond.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i, label %bb.y, label %ZSTDMT_serialState_genSequences.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 2424
  %i.dr = call i32 @ZSTD_XXH64_update(ptr noundef nonnull captures(address) %i.dq, ptr noundef captures(address) %i.bi, i64 noundef %i.bk) #14 ; 0 uses
  br label %ZSTDMT_serialState_genSequences.exit

ZSTDMT_serialState_genSequences.exit:             ; preds = %._crit_edge.i, %bb.x, %bb.y
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !126
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.bm, align 8, !tbaa !126
  %i.du = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.dv = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.du) #14 ; 0 uses
  %i.dw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bg) #14 ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !160 ; 2 uses
  %.not169 = icmp eq ptr %i.dy, null
  br i1 %.not169, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %ZSTDMT_serialState_genSequences.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !161
  %i.eb = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %.0.i, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dy, ptr noundef nonnull %1, i64 noundef %i.ea) #14 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -119
  br i1 %i.ec, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ed) #14 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eb, ptr %i.ef, align 8, !tbaa !93
  %i.eg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ed) #14 ; 0 uses
  br label %.thread193

bb.ab:                                            ; preds = %ZSTDMT_serialState_genSequences.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !165
  %.not170 = icmp eq i32 %i.ei, 0                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.in = select i1 %.not170, ptr %i.bj, ptr %i.ej
  %i.ek = load i64, ptr %.in, align 8, !tbaa !53
  %i.el = zext i1 %.not170 to i32
  %i.em = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %1, i32 noundef 1000, i32 noundef %i.el) #14 ; 2 uses
  %i.en = icmp ult i64 %i.em, -119
  br i1 %i.en, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.eo) #14 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eq, align 8, !tbaa !93
  %i.er = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.eo) #14 ; 0 uses
  br label %.thread193

bb.ad:                                            ; preds = %bb.ab
  %i.es = load i32, ptr %i.eh, align 4, !tbaa !165
  %.not173 = icmp eq i32 %i.es, 0
  br i1 %.not173, label %bb.ae, label %.thread191

bb.ae:                                            ; preds = %bb.ad
  %i.et = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %1, i32 noundef 1012, i32 noundef 0) #14 ; 2 uses
  %i.eu = icmp ult i64 %i.et, -119
  br i1 %i.eu, label %.thread191, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ew = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ev) #14 ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.et, ptr %i.ex, align 8, !tbaa !93
  %i.ey = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ev) #14 ; 0 uses
  br label %.thread193

.thread191:                                       ; preds = %bb.ae, %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !193
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !194
  %i.fd = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef nonnull %.0.i, ptr noundef %i.fa, i64 noundef %i.fc, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.ek) #14 ; 2 uses
  %i.fe = icmp ult i64 %i.fd, -119
  br i1 %i.fe, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread191
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fg = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ff) #14 ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fd, ptr %i.fh, align 8, !tbaa !93
  %i.fi = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ff) #14 ; 0 uses
  br label %.thread193

.thread:                                          ; preds = %bb.z, %.thread191
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val183 = load i64, ptr %i.fj, align 8, !tbaa !195 ; 2 uses
  %.not.i186 = icmp eq i64 %.val183, 0
  br i1 %.not.i186, label %ZSTDMT_serialState_applySequences.exit, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %.val = load ptr, ptr %2, align 8
  call void @ZSTD_referenceExternalSequences(ptr noundef nonnull %.0.i, ptr noundef %.val, i64 noundef %.val183) #14
  br label %ZSTDMT_serialState_applySequences.exit

ZSTDMT_serialState_applySequences.exit:           ; preds = %.thread, %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !165
  %.not177 = icmp eq i32 %i.fl, 0
  br i1 %.not177, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %ZSTDMT_serialState_applySequences.exit
  %i.fm = load ptr, ptr %i.bh, align 8, !tbaa !158
  %i.fn = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %.0.i, ptr noundef nonnull %.sroa.058.0, i64 noundef %.sroa.9.0, ptr noundef %i.fm, i64 noundef 0) #14 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, -119
  br i1 %i.fo, label %.thread195, label %bb.aj

.thread195:                                       ; preds = %bb.ai
  call void @ZSTD_invalidateRepCodes(ptr noundef nonnull %.0.i) #14
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fq = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fp) #14 ; 0 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fn, ptr %i.fr, align 8, !tbaa !93
  %i.fs = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fp) #14 ; 0 uses
  br label %.thread193

bb.ak:                                            ; preds = %.thread195, %ZSTDMT_serialState_applySequences.exit
  %i.ft = load i64, ptr %i.bj, align 8, !tbaa !96
  %i.fu = add i64 %i.ft, 524287
  %i.fv = lshr i64 %i.fu, 19                      ; 2 uses
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.058.0, i64 %.sroa.9.0 ; 2 uses
  %i.fz = icmp sgt i32 %i.fw, 1
  br i1 %i.fz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ak
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.trip.count = and i64 %i.fv, 2147483647
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %.0156219 = phi ptr [ %.sroa.058.0, %.lr.ph ], [ %i.gl, %bb.am ] ; 3 uses
  %.0157218 = phi ptr [ %i.fx, %.lr.ph ], [ %i.gk, %bb.am ] ; 2 uses
  %i.ge = ptrtoint ptr %.0156219 to i64
  %i.gf = sub i64 %i.ga, %i.ge
  %i.gg = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %.0.i, ptr noundef %.0156219, i64 noundef %i.gf, ptr noundef %.0157218, i64 noundef 524288) #14 ; 4 uses
  %i.gh = icmp ult i64 %i.gg, -119
  br i1 %i.gh, label %bb.am, label %.thread208

.thread208:                                       ; preds = %bb.al
  %i.gi = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gb) #14 ; 0 uses
  store i64 %i.gg, ptr %i.gc, align 8, !tbaa !93
  %i.gj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gb) #14 ; 0 uses
  br label %.thread193

bb.am:                                            ; preds = %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %.0157218, i64 524288 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0156219, i64 %i.gg ; 2 uses
  %i.gm = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gb) #14 ; 0 uses
  %i.gn = load i64, ptr %i.gc, align 8, !tbaa !93
  %i.go = add i64 %i.gn, %i.gg
  store i64 %i.go, ptr %i.gc, align 8, !tbaa !93
  %i.gp = shl nuw nsw i64 %indvars.iv, 19
  store i64 %i.gp, ptr %0, align 8, !tbaa !97
  %i.gq = call i32 @pthread_cond_signal(ptr noundef nonnull %i.gd) #14 ; 0 uses
  %i.gr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gb) #14 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.am, %bb.ak
  %.0157.lcssa = phi ptr [ %i.fx, %bb.ak ], [ %i.gk, %bb.am ] ; 2 uses
  %.0156.lcssa = phi ptr [ %.sroa.058.0, %bb.ak ], [ %i.gl, %bb.am ] ; 3 uses
  %i.gs = icmp sgt i32 %i.fw, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !166 ; 2 uses
  %i.gw = or i32 %i.gv, %i.gt
  %.not179 = icmp eq i32 %i.gw, 0
  br i1 %.not179, label %.thread204, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.gx = load i64, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %i.gy = and i64 %i.gx, 524287                   ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = icmp ugt i64 %i.gx, 524287
  %i.hb = and i1 %i.ha, %i.gz
  %i.hc = select i1 %i.hb, i64 524288, i64 %i.gy  ; 2 uses
  %.not180 = icmp eq i32 %i.gv, 0
  %i.hd = ptrtoint ptr %i.fy to i64
  %i.he = ptrtoint ptr %.0156.lcssa to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 2 uses
  br i1 %.not180, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hg = call i64 @ZSTD_compressEnd_public(ptr noundef nonnull %.0.i, ptr noundef %.0156.lcssa, i64 noundef %i.hf, ptr noundef %.0157.lcssa, i64 noundef %i.hc) #14
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hh = call i64 @ZSTD_compressContinue_public(ptr noundef nonnull %.0.i, ptr noundef %.0156.lcssa, i64 noundef %i.hf, ptr noundef %.0157.lcssa, i64 noundef %i.hc) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hi = phi i64 [ %i.hg, %bb.ao ], [ %i.hh, %bb.ap ] ; 3 uses
  %i.hj = icmp ult i64 %i.hi, -119
  br i1 %i.hj, label %.thread204, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.hk) #14 ; 0 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hi, ptr %i.hm, align 8, !tbaa !93
  %i.hn = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hk) #14 ; 0 uses
  br label %.thread193

.thread204:                                       ; preds = %bb.aq, %._crit_edge
  %.2163207 = phi i64 [ %i.hi, %bb.aq ], [ 0, %._crit_edge ]
  call void @ZSTD_CCtx_trace(ptr noundef nonnull %.0.i, i64 noundef 0) #14
  br label %.thread193

.thread193:                                       ; preds = %bb.ar, %bb.ag, %bb.af, %bb.ac, %.thread208, %bb.aj, %bb.aa, %.thread204, %bb.l, %bb.i, %bb.f
  %.3164 = phi i64 [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ %.2163207, %.thread204 ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.aa ], [ 0, %.thread208 ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ag ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !163 ; 10 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !164 ; 2 uses
  %i.hs = call i32 @pthread_mutex_lock(ptr noundef %i.hp) #14 ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 2512 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !126
  %.not.i187 = icmp ugt i32 %i.hu, %i.hr
  br i1 %.not.i187, label %ZSTDMT_serialState_ensureFinished.exit, label %bb.as

bb.as:                                            ; preds = %.thread193
  %i.hv = add i32 %i.hr, 1
  store i32 %i.hv, ptr %i.ht, align 8, !tbaa !126
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hx = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.hw) #14 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 2520 ; 2 uses
  %i.hz = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.hy) #14 ; 0 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 2608
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !136
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 2616
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !132
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = trunc i64 %i.ig to i32                  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 2636
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !135
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 2632
  store i32 %i.ih, ptr %i.ij, align 8, !tbaa !134
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 2560
  %i.il = call i32 @pthread_cond_signal(ptr noundef nonnull %i.ik) #14 ; 0 uses
  %i.im = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hy) #14 ; 0 uses
  br label %ZSTDMT_serialState_ensureFinished.exit

ZSTDMT_serialState_ensureFinished.exit:           ; preds = %.thread193, %bb.as
  %i.in = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hp) #14 ; 0 uses
  %i.io = load ptr, ptr %i.q, align 8, !tbaa !162 ; 8 uses
  %.val184 = load ptr, ptr %2, align 8, !tbaa !187 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val185 = load i64, ptr %i.ip, align 8, !tbaa !189
  %i.iq = mul i64 %.val185, 12
  %i.ir = icmp eq ptr %.val184, null
  br i1 %i.ir, label %ZSTDMT_releaseSeq.exit, label %bb.at

bb.at:                                            ; preds = %ZSTDMT_serialState_ensureFinished.exit
  %i.is = call i32 @pthread_mutex_lock(ptr noundef %i.io) #14 ; 0 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 52 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !55 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !56
  %i.ix = icmp ult i32 %i.iu, %i.iw
  br i1 %i.ix, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !57
  %i.ja = add nuw i32 %i.iu, 1
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !55
  %i.jb = zext i32 %i.iu to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.jb ; 2 uses
  store ptr %.val184, ptr %i.jc, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !58
  %i.jd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.io) #14 ; 0 uses
  br label %ZSTDMT_releaseSeq.exit

bb.av:                                            ; preds = %bb.at
  %i.je = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.io) #14 ; 0 uses
  %i.jf = getelementptr i8, ptr %i.io, i64 64
  %.val.i.i = load ptr, ptr %i.jf, align 8        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not4.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = getelementptr i8, ptr %i.io, i64 72
  %.val10.i.i = load ptr, ptr %i.jg, align 8
  call void %.val.i.i(ptr noundef %.val10.i.i, ptr noundef nonnull %.val184) #14, !inline_history !197
  br label %ZSTDMT_releaseSeq.exit

bb.ax:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %.val184) #14
  br label %ZSTDMT_releaseSeq.exit

ZSTDMT_releaseSeq.exit:                           ; preds = %ZSTDMT_serialState_ensureFinished.exit, %bb.au, %bb.aw, %bb.ax
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !180 ; 5 uses
  br i1 %i.ae, label %ZSTDMT_releaseCCtx.exit, label %bb.ay

bb.ay:                                            ; preds = %ZSTDMT_releaseSeq.exit
  %i.ji = call i32 @pthread_mutex_lock(ptr noundef %i.jh) #14 ; 0 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 44 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !179 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !67
  %i.jn = icmp slt i32 %i.jk, %i.jm
  br i1 %i.jn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !63
  %i.jq = add nsw i32 %i.jk, 1
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !179
  %i.jr = sext i32 %i.jk to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.jr
  store ptr %.0.i, ptr %i.js, align 8, !tbaa !68
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.jt = call i64 @ZSTD_freeCCtx(ptr noundef nonnull %.0.i) #14 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jh) #14 ; 0 uses
  br label %ZSTDMT_releaseCCtx.exit

ZSTDMT_releaseCCtx.exit:                          ; preds = %ZSTDMT_releaseSeq.exit, %bb.bb
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jx = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.jw) #14 ; 0 uses
  %i.jy = load i64, ptr %i.jv, align 8, !tbaa !93
  %i.jz = add i64 %i.jy, %.3164
  store i64 %i.jz, ptr %i.jv, align 8, !tbaa !93
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !96
  store i64 %i.kb, ptr %0, align 8, !tbaa !97
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kd = call i32 @pthread_cond_signal(ptr noundef nonnull %i.kc) #14 ; 0 uses
  %i.ke = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jw) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef %0) #14 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ZSTD_customFree.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !55
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !42 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !58 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = icmp ult i64 %.sroa.4.0.copyload, %i.b
  %i.l = lshr i64 %.sroa.4.0.copyload, 3
  %i.m = icmp ugt i64 %i.l, %i.b
  %.not24 = or i1 %i.k, %i.m
  br i1 %.not24, label %bb.c, label %ZSTD_customFree.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 72
  %.val25 = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %ZSTD_customFree.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %.val, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.val(ptr noundef %.val25, ptr noundef nonnull %.sroa.0.0.copyload) #14, !inline_history !51
  br label %ZSTD_customFree.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload) #14
end_hunk_0
