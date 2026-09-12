Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstdmt_compress?download=true
inline.NumInlined: 124
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.ZSTD_customMem, i32, i32, ptr, ptr, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@switch.table.ZSTDMT_initCStream_internal = private unnamed_addr constant [5 x i8] c"\02\02\01\01\00", align 4

; Function Attrs: nounwind uwtable
define ptr @ZSTDMT_createCCtx_advanced(i32 noundef %0, ptr nofree noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = add i32 %0, 2
  store i32 %i.b, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.umin.i32(i32 %0, i32 256) ; 5 uses
  %i.e = icmp ne ptr %.sroa.0.0.copyload, null
  %i.f = icmp ne ptr %.sroa.4.0.copyload, null
  %i.g = xor i1 %i.e, %i.f
  br i1 %i.g, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %ZSTD_customCalloc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.5.0.copyload, i64 noundef 3120) #14, !inline_history !114 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ZSTDMT_createCCtx_advanced_internal.exit, label %ZSTD_customCalloc.exit.thread47.i

ZSTD_customCalloc.exit.thread47.i:                ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3120) %i.h, i8 0, i64 3120, i1 false)
  br label %bb.e

ZSTD_customCalloc.exit.i:                         ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(3120) ptr @calloc(i64 noundef 1, i64 noundef 3120) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.e

bb.e:                                             ; preds = %ZSTD_customCalloc.exit.i, %ZSTD_customCalloc.exit.thread47.i
  %.1.i50.i = phi ptr [ %i.h, %ZSTD_customCalloc.exit.thread47.i ], [ %i.j, %ZSTD_customCalloc.exit.i ] ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 40
  %i.l = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %i.k, i32 noundef 400, i32 noundef %i.d) #14 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 3072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 3040
  store i32 1, ptr %i.n, align 8, !tbaa !38
  %.not37.i = icmp eq ptr %2, null
  br i1 %.not37.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %.1.i50.i, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 3112 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = or i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.d to i64
  %i.s = tail call ptr @POOL_create_advanced(i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) #14
  store ptr %i.s, ptr %.1.i50.i, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 3112 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = call fastcc ptr @ZSTDMT_createJobsTable(ptr noundef %i.a, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1)
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  %i.y = load i32, ptr %i.a, align 4, !tbaa !15
  %i.z = add i32 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 3024
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !41
  %i.ab = shl nuw nsw i32 %i.d, 1
  %i.ac = add nuw nsw i32 %i.ab, 3
  %i.ad = tail call fastcc ptr @ZSTDMT_createBufferPool(i32 noundef %i.ac, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !42
  %i.af = tail call fastcc ptr @ZSTDMT_createCCtxPool(i32 noundef %i.d, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !43
  %i.ah = tail call fastcc ptr @ZSTDMT_createBufferPool(i32 noundef range(i32 1, 0) %i.d, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %1) ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %ZSTDMT_createSeqPool.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ah) #14 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.ak, align 8, !tbaa !46
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ah) #14 ; 0 uses
  br label %ZSTDMT_createSeqPool.exit.i

ZSTDMT_createSeqPool.exit.i:                      ; preds = %bb.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2648) %i.an, i8 0, i64 2648, i1 false)
  %i.ao = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.an, ptr noundef null) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 392
  %i.aq = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.ap, ptr noundef null) #14
  %i.ar = or i32 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 2872
  %i.at = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.as, ptr noundef null) #14
  %i.au = or i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 2912
  %i.aw = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.av, ptr noundef null) #14
  %i.ax = or i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i50.i, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.az = load <4 x ptr>, ptr %.1.i50.i, align 8, !tbaa !48
  %i.ba = icmp eq <4 x ptr> %i.az, splat (ptr null)
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !47
  %.not42.i = icmp eq ptr %i.bb, null
  %i.bc = bitcast <4 x i1> %i.ba to i4
  %i.bd = icmp ne i4 %i.bc, 0
  %op.rdx = or i1 %i.bd, %.not42.i
  %i.be = zext i1 %op.rdx to i32
  %i.bf = or i32 %i.ax, %i.be
  %.not43.i = icmp eq i32 %i.bf, 0
  br i1 %.not43.i, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.j

bb.j:                                             ; preds = %ZSTDMT_createSeqPool.exit.i
  %i.bg = tail call i64 @ZSTDMT_freeCCtx(ptr noundef nonnull %.1.i50.i) ; 0 uses
  br label %ZSTDMT_createCCtx_advanced_internal.exit

ZSTDMT_createCCtx_advanced_internal.exit:         ; preds = %bb.a, %bb.b, %bb.d, %ZSTD_customCalloc.exit.i, %ZSTDMT_createSeqPool.exit.i, %bb.j
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.j ], [ null, %ZSTD_customCalloc.exit.i ], [ %.1.i50.i, %ZSTDMT_createSeqPool.exit.i ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTDMT_freeCCtx(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ZSTD_customFree.exit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  tail call void @POOL_free(ptr noundef %i.e) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @ZSTDMT_releaseAllJobResources(ptr noundef nonnull %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 3080       ; 3 uses
  %.val22 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 3088       ; 3 uses
  %.val23 = load ptr, ptr %i.l, align 8
  %i.m = icmp eq ptr %i.g, null
  br i1 %i.m, label %ZSTDMT_freeJobsTable.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.j to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [456 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.o) #14 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.q) #14 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.not4.i.i = icmp eq ptr %.val22, null
  br i1 %.not4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  tail call void %.val22(ptr noundef %.val23, ptr noundef nonnull %i.g) #14, !inline_history !1
  br label %ZSTDMT_freeJobsTable.exit

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.g) #14
  br label %ZSTDMT_freeJobsTable.exit

ZSTDMT_freeJobsTable.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !48 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !48 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.y) #14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ab = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.aa) #14 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.ad = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ac) #14 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.af = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ae) #14 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %ZSTD_customFree.exit.i, label %bb.g

end_hunk_0
begin_hunk_1_@ZSTDMT_compressStream_generic:bb.a
  %lcmp.mod165.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod165.not, label %ZSTD_rollingHash_compute.exit.i, label %ZSTD_rollingHash_compute.exit62.i.epil.preheader

ZSTD_rollingHash_compute.exit62.i.epil.preheader: ; preds = %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa, %ZSTD_rollingHash_compute.exit62.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %ZSTD_rollingHash_compute.exit62.i.preheader ], [ %i.ox, %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi i64 [ %.lcssa155, %ZSTD_rollingHash_compute.exit62.i.preheader ], [ %i.ow, %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter163, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %ZSTD_rollingHash_compute.exit62.i.epil

ZSTD_rollingHash_compute.exit62.i.epil:           ; preds = %ZSTD_rollingHash_compute.exit62.i.epil, %ZSTD_rollingHash_compute.exit62.i.epil.preheader
  %.010.i.i.epil = phi i64 [ %i.wo, %ZSTD_rollingHash_compute.exit62.i.epil ], [ %.010.i.i.epil.init, %ZSTD_rollingHash_compute.exit62.i.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi i64 [ %i.wn, %ZSTD_rollingHash_compute.exit62.i.epil ], [ %.089.i.i.epil.init, %ZSTD_rollingHash_compute.exit62.i.epil.preheader ]
  %epil.iter164 = phi i64 [ %epil.iter164.next, %ZSTD_rollingHash_compute.exit62.i.epil ], [ 0, %ZSTD_rollingHash_compute.exit62.i.epil.preheader ]
  %i.wi = mul i64 %.089.i.i.epil, -3523014627327384477
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.010.i.i.epil
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !54
  %i.wl = zext i8 %i.wk to i64
  %i.wm = add i64 %i.wi, 10
  %i.wn = add i64 %i.wm, %i.wl                    ; 2 uses
  %i.wo = add nuw nsw i64 %.010.i.i.epil, 1
  %epil.iter164.next = add i64 %epil.iter164, 1   ; 2 uses
  %epil.iter164.cmp.not = icmp eq i64 %epil.iter164.next, %xtraiter163
  br i1 %epil.iter164.cmp.not, label %ZSTD_rollingHash_compute.exit.i, label %ZSTD_rollingHash_compute.exit62.i.epil, !llvm.loop !160

ZSTD_rollingHash_compute.exit.i:                  ; preds = %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa, %ZSTD_rollingHash_compute.exit62.i.epil, %ZSTD_rollingHash_compute.exit66.i, %ZSTD_rollingHash_compute.exit.loopexit.i
  %.050.i = phi i64 [ %i.wf, %ZSTD_rollingHash_compute.exit66.i ], [ %i.me, %ZSTD_rollingHash_compute.exit.loopexit.i ], [ %i.ow, %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa ], [ %i.wn, %ZSTD_rollingHash_compute.exit62.i.epil ]
  %.049.i = phi ptr [ %i.oz, %ZSTD_rollingHash_compute.exit66.i ], [ %i.ey, %ZSTD_rollingHash_compute.exit.loopexit.i ], [ %i.mg, %ZSTD_rollingHash_compute.exit62.i.epil ], [ %i.mg, %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa ]
  %.048.i = phi i64 [ 0, %ZSTD_rollingHash_compute.exit66.i ], [ %i.ev, %ZSTD_rollingHash_compute.exit.loopexit.i ], [ %i.ev, %ZSTD_rollingHash_compute.exit62.i.epil ], [ %i.ev, %ZSTD_rollingHash_compute.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.wp = icmp ult i64 %.048.i, %..i
  br i1 %i.wp, label %.lr.ph.i, label %findSynchronizationPoint.exit.thread

.lr.ph.i:                                         ; preds = %ZSTD_rollingHash_compute.exit.i, %bb.s
  %.180.i = phi i64 [ %i.xf, %bb.s ], [ %.048.i, %ZSTD_rollingHash_compute.exit.i ] ; 4 uses
  %.15179.i = phi i64 [ %i.xc, %bb.s ], [ %.050.i, %ZSTD_rollingHash_compute.exit.i ]
  %i.wq = icmp ult i64 %.180.i, 32
  %i.wr = getelementptr inbounds nuw i8, ptr %.049.i, i64 %.180.i
  %i.ws = getelementptr i8, ptr %i.ed, i64 %.180.i ; 2 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 -32
  %.in.in.i = select i1 %i.wq, ptr %i.wr, ptr %i.wt
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !54
  %i.wu = load i8, ptr %i.ws, align 1, !tbaa !54
  %i.wv = zext i8 %.in.i to i64
  %i.ww = add nuw nsw i64 %i.wv, 10
  %i.wx = mul i64 %i.ww, %i.ef
  %i.wy = sub i64 %.15179.i, %i.wx
  %i.wz = mul i64 %i.wy, -3523014627327384477
  %i.xa = zext i8 %i.wu to i64
  %i.xb = add nuw nsw i64 %i.xa, 10
  %i.xc = add i64 %i.xb, %i.wz                    ; 2 uses
  %i.xd = and i64 %i.xc, %i.eh
  %i.xe = icmp eq i64 %i.xd, %i.eh
  %i.xf = add i64 %.180.i, 1                      ; 4 uses
  br i1 %i.xe, label %.split, label %bb.s

.split:                                           ; preds = %.lr.ph.i
  br i1 %i.d, label %bb.t, label %findSynchronizationPoint.exit.thread

bb.s:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.xf, %..i
  br i1 %exitcond.not.i, label %findSynchronizationPoint.exit.thread, label %.lr.ph.i, !llvm.loop !161

findSynchronizationPoint.exit:                    ; preds = %ZSTD_rollingHash_compute.exit66.i
  br i1 %i.d, label %bb.t, label %findSynchronizationPoint.exit.thread

bb.t:                                             ; preds = %.split, %findSynchronizationPoint.exit
  %.sroa.0.3.i131 = phi i64 [ %i.xf, %.split ], [ 0, %findSynchronizationPoint.exit ]
  br label %findSynchronizationPoint.exit.thread

findSynchronizationPoint.exit.thread:             ; preds = %bb.s, %ZSTD_rollingHash_compute.exit.i, %bb.m, %ZSTDMT_tryGetInputRange.exit.thread, %.split, %findSynchronizationPoint.exit, %bb.t
  %.sroa.0.3.i130 = phi i64 [ %.sroa.0.3.i131, %bb.t ], [ 0, %findSynchronizationPoint.exit ], [ %i.xf, %.split ], [ %..i, %ZSTDMT_tryGetInputRange.exit.thread ], [ %..i, %bb.m ], [ %..i, %ZSTD_rollingHash_compute.exit.i ], [ %..i, %bb.s ] ; 4 uses
  %i.xg = phi i32 [ 1, %bb.t ], [ %3, %findSynchronizationPoint.exit ], [ %3, %.split ], [ %3, %ZSTDMT_tryGetInputRange.exit.thread ], [ %3, %bb.m ], [ %3, %ZSTD_rollingHash_compute.exit.i ], [ %3, %bb.s ]
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xh, ptr align 1 %i.ed, i64 %.sroa.0.3.i130, i1 false)
  %i.xi = load i64, ptr %i.i, align 8, !tbaa !167
  %i.xj = add i64 %i.xi, %.sroa.0.3.i130
  store i64 %i.xj, ptr %i.i, align 8, !tbaa !167
  %i.xk = load i64, ptr %i.el, align 8, !tbaa !70
  %i.xl = add i64 %i.xk, %.sroa.0.3.i130
  store i64 %i.xl, ptr %i.el, align 8, !tbaa !70
  %.not66 = icmp ne i64 %.sroa.0.3.i130, 0
  br label %bb.u

bb.u:                                             ; preds = %ZSTDMT_tryGetInputRange.exit, %findSynchronizationPoint.exit.thread, %bb.c, %bb.b
  %.056 = phi i1 [ false, %bb.b ], [ %.not66, %findSynchronizationPoint.exit.thread ], [ false, %ZSTDMT_tryGetInputRange.exit ], [ false, %bb.c ]
  %.055 = phi i32 [ %3, %bb.b ], [ %i.xg, %findSynchronizationPoint.exit.thread ], [ %3, %ZSTDMT_tryGetInputRange.exit ], [ %3, %bb.c ] ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !167
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !166
  %i.xq = icmp ult i64 %i.xn, %i.xp
  %i.xr = icmp eq i32 %.055, 2
  %or.cond6 = and i1 %i.xr, %i.xq
  %spec.store.select7 = select i1 %or.cond6, i32 1, i32 %.055 ; 4 uses
  %i.xs = load i32, ptr %i.e, align 8, !tbaa !73
  %.not59 = icmp eq i32 %i.xs, 0                  ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !70 ; 8 uses
  br i1 %.not59, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !87
  %.not60 = icmp ult i64 %i.xu, %i.xw
  br i1 %.not60, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %.not61 = icmp eq i32 %spec.store.select7, 0
  %.not62 = icmp eq i64 %i.xu, 0
  %or.cond67 = or i1 %.not61, %.not62
  br i1 %or.cond67, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %bb.w
  %i.xx = icmp eq i32 %spec.store.select7, 2
  br i1 %i.xx, label %bb.y, label %ZSTDMT_createCompressionJob.exit

bb.y:                                             ; preds = %bb.x
  %i.xy = load i32, ptr %i.a, align 4, !tbaa !164
  %.not63 = icmp eq i32 %i.xy, 0
  br i1 %.not63, label %._crit_edge, label %ZSTDMT_createCompressionJob.exit

._crit_edge:                                      ; preds = %bb.u, %bb.w, %bb.y, %bb.v
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 7 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !72 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !41 ; 2 uses
  %i.yd = and i32 %i.yc, %i.ya                    ; 2 uses
  %i.ye = icmp eq i32 %spec.store.select7, 2      ; 3 uses
  %i.yf = zext i1 %i.ye to i32                    ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 3028
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !74
  %i.yi = add i32 %i.yh, %i.yc
  %i.yj = icmp ugt i32 %i.ya, %i.yi
  br i1 %i.yj, label %ZSTDMT_createCompressionJob.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  br i1 %.not59, label %bb.aa, label %..thread101_crit_edge.i

..thread101_crit_edge.i:                          ; preds = %bb.z
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  %.pre103.i = zext i32 %i.yd to i64
  br label %.thread101.i

bb.aa:                                            ; preds = %bb.z
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !168 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !40
  %i.yp = zext i32 %i.yd to i64                   ; 7 uses
  %i.yq = getelementptr inbounds nuw [456 x i8], ptr %i.yo, i64 %i.yp ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 168
  store ptr %i.ym, ptr %i.yr, align 8, !tbaa !104
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 176
  store i64 %i.xu, ptr %i.ys, align 8, !tbaa !78
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yt, ptr noundef nonnull align 8 dereferenceable(16) %i.yk, i64 16, i1 false), !tbaa.struct !171
  %i.yu = load ptr, ptr %i.yn, align 8, !tbaa !40
  %i.yv = getelementptr inbounds nuw [456 x i8], ptr %i.yu, i64 %i.yp ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 200
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yv, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.yw, ptr noundef nonnull align 8 dereferenceable(224) %i.yx, i64 224, i1 false), !tbaa.struct !82
  %i.yy = load i32, ptr %i.xz, align 8, !tbaa !72
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !84
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.zc = phi ptr [ %i.zb, %bb.ab ], [ null, %bb.aa ]
  %i.zd = load ptr, ptr %i.yn, align 8, !tbaa !40
  %i.ze = getelementptr inbounds nuw [456 x i8], ptr %i.zd, i64 %i.yp ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 424
  store ptr %i.zc, ptr %i.zf, align 8, !tbaa !105
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !83
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 432
  store i64 %i.zh, ptr %i.zi, align 8, !tbaa !106
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ze, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zj, i8 0, i64 16, i1 false)
  %i.zk = load ptr, ptr %i.yn, align 8, !tbaa !40 ; 4 uses
  %i.zl = getelementptr inbounds nuw [456 x i8], ptr %i.zk, i64 %i.yp ; 13 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 104
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 112
  %i.zp = load <2 x ptr>, ptr %i.zn, align 8, !tbaa !48
  %i.zq = shufflevector <2 x ptr> %i.zp, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.zq, ptr %i.zm, align 8, !tbaa !48
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !47
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zl, i64 120
  store ptr %i.zs, ptr %i.zt, align 8, !tbaa !107
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zl, i64 128
  store ptr %i.zu, ptr %i.zv, align 8, !tbaa !108
  %i.zw = load i32, ptr %i.xz, align 8, !tbaa !72 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zl, i64 184
  store i32 %i.zw, ptr %i.zx, align 8, !tbaa !109
  %i.zy = icmp eq i32 %i.zw, 0                    ; 3 uses
  %i.zz = zext i1 %i.zy to i32
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zl, i64 188
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !110
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zl, i64 192
  store i32 %i.yf, ptr %i.aab, align 8, !tbaa !111
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !172
  %i.aae = icmp ne i32 %i.aad, 0
  %or.cond.i70 = and i1 %i.ye, %i.aae
  %4 = icmp ne i32 %i.zw, 0
  %narrow.i = select i1 %or.cond.i70, i1 %4, i1 false
  %i.aaf = zext i1 %narrow.i to i32
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zl, i64 448
  store i32 %i.aaf, ptr %i.aag, align 8, !tbaa !173
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zl, i64 440
  store i64 0, ptr %i.aah, align 8, !tbaa !77
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !92
  %i.aak = add i64 %i.aaj, %i.xu
  store i64 %i.aak, ptr %i.aai, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yl, i8 0, i64 24, i1 false)
  br i1 %i.ye, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yk, i8 0, i64 16, i1 false)
  store i32 %i.yf, ptr %i.a, align 4, !tbaa !164
  br i1 %i.zy, label %.thread100.i, label %.thread.i

bb.ae:                                            ; preds = %bb.ac
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !86
  %..i71 = tail call i64 @llvm.umin.i64(i64 %i.xu, i64 %i.aam) ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.xu
  %i.aao = sub i64 0, %..i71
  %i.aap = getelementptr inbounds i8, ptr %i.aan, i64 %i.aao
  store ptr %i.aap, ptr %i.yk, align 8, !tbaa !93
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %..i71, ptr %i.aaq, align 8, !tbaa !94
  %i.aar = icmp ne i64 %i.xu, 0
  %brmerge.i = select i1 %i.aar, i1 true, i1 %i.zy
  br i1 %brmerge.i, label %.thread101.i, label %.critedge.i

.thread100.i:                                     ; preds = %bb.ad
  store i32 0, ptr %i.aac, align 4, !tbaa !172
  br label %.thread101.i

.thread.i:                                        ; preds = %bb.ad
  %i.aas = icmp eq i64 %i.xu, 0
  br i1 %i.aas, label %.critedge.i, label %.thread101.i

.critedge.i:                                      ; preds = %.thread.i, %bb.ae
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zl, i64 136
  %i.aau = load ptr, ptr %i.zo, align 8, !tbaa !112
  %i.aav = tail call fastcc { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %i.aau) ; 2 uses
  %i.aaw = extractvalue { ptr, i64 } %i.aav, 0    ; 3 uses
  %i.aax = extractvalue { ptr, i64 } %i.aav, 1    ; 2 uses
  store ptr %i.aaw, ptr %i.aat, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.zl, i64 144
  store i64 %i.aax, ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !tbaa !58
  %i.aay = icmp eq ptr %i.aaw, null
  br i1 %i.aay, label %ZSTDMT_writeLastEmptyBlock.exit.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zl, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaz, i8 0, i64 16, i1 false)
  %i.aba = tail call i64 @ZSTD_writeLastEmptyBlock(ptr noundef nonnull %i.aaw, i64 noundef %i.aax) #14
  br label %ZSTDMT_writeLastEmptyBlock.exit.i

ZSTDMT_writeLastEmptyBlock.exit.i:                ; preds = %bb.af, %.critedge.i
  %.sink.i.i = phi i64 [ %i.aba, %bb.af ], [ -64, %.critedge.i ]
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  store i64 %.sink.i.i, ptr %i.abb, align 8, !tbaa !76
  %i.abc = load i32, ptr %i.xz, align 8, !tbaa !72
  %i.abd = add i32 %i.abc, 1
  store i32 %i.abd, ptr %i.xz, align 8, !tbaa !72
  br label %ZSTDMT_createCompressionJob.exit

.thread101.i:                                     ; preds = %.thread.i, %.thread100.i, %bb.ae, %..thread101_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre103.i, %..thread101_crit_edge.i ], [ %i.yp, %bb.ae ], [ %i.yp, %.thread100.i ], [ %i.yp, %.thread.i ]
  %i.abe = phi ptr [ %.pre.i, %..thread101_crit_edge.i ], [ %i.zk, %bb.ae ], [ %i.zk, %.thread100.i ], [ %i.zk, %.thread.i ]
  %i.abf = load ptr, ptr %0, align 8, !tbaa !39
  %i.abg = getelementptr inbounds nuw [456 x i8], ptr %i.abe, i64 %.pre-phi.i
  %i.abh = tail call i32 @POOL_tryAdd(ptr noundef %i.abf, ptr noundef nonnull @ZSTDMT_compressionJob, ptr noundef %i.abg) #14
  %.not98.i = icmp eq i32 %i.abh, 0
  br i1 %.not98.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread101.i
  %i.abi = load i32, ptr %i.xz, align 8, !tbaa !72
  %i.abj = add i32 %i.abi, 1
  store i32 %i.abj, ptr %i.xz, align 8, !tbaa !72
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread101.i
  %storemerge.i = phi i32 [ 0, %bb.ag ], [ 1, %.thread101.i ]
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !73
  br label %ZSTDMT_createCompressionJob.exit

ZSTDMT_createCompressionJob.exit:                 ; preds = %bb.ah, %ZSTDMT_writeLastEmptyBlock.exit.i, %._crit_edge, %bb.y, %bb.x
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 3028 ; 8 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !74
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !41
  %i.abo = and i32 %i.abn, %i.abl
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !40
  %i.abr = zext i32 %i.abo to i64                 ; 10 uses
  %i.abs = getelementptr inbounds nuw [456 x i8], ptr %i.abq, i64 %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.abu = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.abt) #14 ; 0 uses
  br i1 %.056, label %..loopexit_crit_edge.i, label %bb.ai

..loopexit_crit_edge.i:                           ; preds = %ZSTDMT_createCompressionJob.exit
  %.pre.i82 = load ptr, ptr %i.abp, align 8, !tbaa !40
  br label %.loopexit.i

bb.ai:                                            ; preds = %ZSTDMT_createCompressionJob.exit
  %i.abv = load i32, ptr %i.abk, align 4, !tbaa !74
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !72
  %i.aby = icmp ult i32 %i.abv, %i.abx
  %.pre124.i = load ptr, ptr %i.abp, align 8, !tbaa !40 ; 4 uses
  br i1 %i.aby, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.ai
  %i.abz = getelementptr inbounds nuw [456 x i8], ptr %.pre124.i, i64 %i.abr ; 5 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 440
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !77
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !76
  %i.ace = icmp eq i64 %i.acb, %i.acd
  br i1 %i.ace, label %.lr.ph.i81.preheader, label %.loopexit.i

.lr.ph.i81.preheader:                             ; preds = %.preheader.i
  %i.acf = load i64, ptr %i.abz, align 8, !tbaa !79
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abz, i64 176
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !78
  %i.aci = icmp eq i64 %i.acf, %i.ach
  br i1 %i.aci, label %.loopexit.i, label %.lr.ph

.lr.ph.i81:                                       ; preds = %.lr.ph
  %i.acj = load i64, ptr %i.acs, align 8, !tbaa !79
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acs, i64 176
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !78
  %i.acm = icmp eq i64 %i.acj, %i.acl
  br i1 %i.acm, label %.loopexit.i, label %.lr.ph, !llvm.loop !162

.lr.ph:                                           ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %i.acn = phi ptr [ %i.acs, %.lr.ph.i81 ], [ %i.abz, %.lr.ph.i81.preheader ] ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 56
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acq = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.aco, ptr noundef nonnull %i.acp) #14 ; 0 uses
  %i.acr = load ptr, ptr %i.abp, align 8, !tbaa !40 ; 3 uses
  %i.acs = getelementptr inbounds nuw [456 x i8], ptr %i.acr, i64 %i.abr ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 440
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !77
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !76
  %i.acx = icmp eq i64 %i.acu, %i.acw
  br i1 %i.acx, label %.lr.ph.i81, label %..loopexit.i.loopexit_crit_edge, !llvm.loop !162

..loopexit.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.loopexit.i, !llvm.loop !162

.loopexit.i:                                      ; preds = %.lr.ph.i81, %.lr.ph.i81.preheader, %..loopexit.i.loopexit_crit_edge, %.preheader.i, %bb.ai, %..loopexit_crit_edge.i
  %i.acy = phi ptr [ %.pre.i82, %..loopexit_crit_edge.i ], [ %.pre124.i, %bb.ai ], [ %.pre124.i, %.preheader.i ], [ %i.acr, %..loopexit.i.loopexit_crit_edge ], [ %.pre124.i, %.lr.ph.i81.preheader ], [ %i.acr, %.lr.ph.i81 ]
  %i.acz = getelementptr inbounds nuw [456 x i8], ptr %i.acy, i64 %i.abr ; 4 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !76 ; 5 uses
  %i.adc = load i64, ptr %i.acz, align 8, !tbaa !79 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acz, i64 176
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !78 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.adf) #14 ; 0 uses
  %i.adh = icmp ult i64 %i.adb, -119
  br i1 %i.adh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 2 uses
  %i.adj = load i32, ptr %i.abk, align 4, !tbaa !74 ; 2 uses
  %i.adk = load i32, ptr %i.adi, align 8, !tbaa !72
  %i.adl = icmp ult i32 %i.adj, %i.adk
  br i1 %i.adl, label %.lr.ph17.i.i, label %ZSTDMT_waitForAllJobsCompleted.exit.i

.lr.ph17.i.i:                                     ; preds = %bb.aj, %._crit_edge.i.i
  %i.adm = phi i32 [ %i.aep, %._crit_edge.i.i ], [ %i.adj, %bb.aj ]
  %i.adn = load i32, ptr %i.abm, align 8, !tbaa !41
  %i.ado = and i32 %i.adn, %i.adm
  %i.adp = load ptr, ptr %i.abp, align 8, !tbaa !40
  %i.adq = zext i32 %i.ado to i64                 ; 4 uses
  %i.adr = getelementptr inbounds nuw [456 x i8], ptr %i.adp, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.adt = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ads) #14 ; 0 uses
  %i.adu = load ptr, ptr %i.abp, align 8, !tbaa !40 ; 2 uses
  %i.adv = getelementptr inbounds nuw [456 x i8], ptr %i.adu, i64 %i.adq ; 3 uses
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !79
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 176
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !78
  %i.adz = icmp ult i64 %i.adw, %i.ady
  br i1 %i.adz, label %.lr.ph.i.i76, label %._crit_edge.i.i

.lr.ph.i.i76:                                     ; preds = %.lr.ph17.i.i, %.lr.ph.i.i76
  %i.aea = phi ptr [ %i.aef, %.lr.ph.i.i76 ], [ %i.adv, %.lr.ph17.i.i ] ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 56
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aed = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.aeb, ptr noundef nonnull %i.aec) #14 ; 0 uses
  %i.aee = load ptr, ptr %i.abp, align 8, !tbaa !40 ; 2 uses
  %i.aef = getelementptr inbounds nuw [456 x i8], ptr %i.aee, i64 %i.adq ; 3 uses
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !79
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 176
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !78
  %i.aej = icmp ult i64 %i.aeg, %i.aei
end_hunk_1
