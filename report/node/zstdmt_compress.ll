inline.NumInlined: 124
inline.NumDeleted: 60
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
@switch.table.ZSTDMT_initCStream_internal = private unnamed_addr constant [5 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ZSTDMT_createCCtx_advanced(i32 noundef %0, ptr noundef readonly byval(%struct.ZSTD_customMem) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.ZSTD_customMem, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = add i32 %0, 2
  store i32 %i.b, ptr %i.a, align 4, !tbaa !5
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.umin.i32(i32 %0, i32 256) ; 5 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !9      ; 3 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = icmp ne ptr %i.h, null
  %i.j = xor i1 %i.f, %i.i
  br i1 %i.j, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %ZSTD_customCalloc.exit.i, label %ZSTD_customCalloc.exit.thread.i

ZSTD_customCalloc.exit.thread.i:                  ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val44.i = load ptr, ptr %i.k, align 8
  %i.l = tail call ptr %i.e(ptr noundef %.val44.i, i64 noundef 3120) #14, !inline_history !13 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3120) %i.l, i8 0, i64 3120, i1 false)
  br label %bb.d

ZSTD_customCalloc.exit.i:                         ; preds = %bb.c
  %i.m = tail call noalias dereferenceable_or_null(3120) ptr @calloc(i64 noundef 1, i64 noundef 3120) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.d

bb.d:                                             ; preds = %ZSTD_customCalloc.exit.i, %ZSTD_customCalloc.exit.thread.i
  %.0.i47.i = phi ptr [ %i.l, %ZSTD_customCalloc.exit.thread.i ], [ %i.m, %ZSTD_customCalloc.exit.i ] ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 40
  %i.o = tail call i64 @ZSTD_CCtxParams_setParameter(ptr noundef nonnull %i.n, i32 noundef 400, i32 noundef %i.d) #14 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 3072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !14
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 3040
  store i32 1, ptr %i.q, align 8, !tbaa !16
  %.not37.i = icmp eq ptr %2, null
  br i1 %.not37.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %.0.i47.i, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 3112 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.d to i64
  %i.v = tail call ptr @POOL_create_advanced(i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3) #14
  store ptr %i.v, ptr %.0.i47.i, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 3112 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = call fastcc ptr @ZSTDMT_createJobsTable(ptr noundef %i.a, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !38
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ac = add i32 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 3024
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = shl nuw nsw i32 %i.d, 1
  %i.af = add nuw nsw i32 %i.ae, 3
  %i.ag = tail call fastcc ptr @ZSTDMT_createBufferPool(i32 noundef %i.af, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !40
  %i.ai = tail call fastcc ptr @ZSTDMT_createCCtxPool(i32 noundef %i.d, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !41
  %i.ak = tail call fastcc ptr @ZSTDMT_createBufferPool(i32 noundef range(i32 1, 0) %i.d, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 %3) ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %ZSTDMT_createSeqPool.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ak) #14 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !42
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ak) #14 ; 0 uses
  br label %ZSTDMT_createSeqPool.exit.i

ZSTDMT_createSeqPool.exit.i:                      ; preds = %bb.h, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2648) %i.aq, i8 0, i64 2648, i1 false)
  %i.ar = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.aq, ptr noundef null) #14
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 392
  %i.at = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.as, ptr noundef null) #14
  %i.au = or i32 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 2872
  %i.aw = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.av, ptr noundef null) #14
  %i.ax = or i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 2912
  %i.az = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.ay, ptr noundef null) #14
  %i.ba = or i32 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %4 = load <4 x ptr>, ptr %.0.i47.i, align 8, !tbaa !15
  %5 = icmp eq <4 x ptr> %4, splat (ptr null)
  %6 = load ptr, ptr %i.ap, align 8, !tbaa !45
  %.not42.i = icmp eq ptr %6, null
  %7 = bitcast <4 x i1> %5 to i4
  %i.bc = icmp ne i4 %7, 0
  %op.rdx = or i1 %i.bc, %.not42.i
  %i.bd = zext i1 %op.rdx to i32
  %i.be = or i32 %i.ba, %i.bd
  %.not43.i = icmp eq i32 %i.be, 0
  br i1 %.not43.i, label %ZSTDMT_createCCtx_advanced_internal.exit, label %bb.i

bb.i:                                             ; preds = %ZSTDMT_createSeqPool.exit.i
  %i.bf = tail call i64 @ZSTDMT_freeCCtx(ptr noundef nonnull %.0.i47.i) ; 0 uses
  br label %ZSTDMT_createCCtx_advanced_internal.exit

ZSTDMT_createCCtx_advanced_internal.exit:         ; preds = %bb.a, %bb.b, %ZSTD_customCalloc.exit.i, %ZSTDMT_createSeqPool.exit.i, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.i ], [ null, %ZSTD_customCalloc.exit.i ], [ %.0.i47.i, %ZSTDMT_createSeqPool.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @ZSTDMT_freeCCtx(ptr noundef %0) local_unnamed_addr #0 {
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
  %i.e = load ptr, ptr %0, align 8, !tbaa !37
  tail call void @POOL_free(ptr noundef %i.e) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @ZSTDMT_releaseAllJobResources(ptr noundef nonnull %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.not4.i.i = icmp eq ptr %.val22, null
  br i1 %.not4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  tail call void %.val22(ptr noundef %.val23, ptr noundef nonnull %i.g) #14, !inline_history !48
  br label %ZSTDMT_freeJobsTable.exit

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.g) #14
  br label %ZSTDMT_freeJobsTable.exit

ZSTDMT_freeJobsTable.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  tail call fastcc void @ZSTDMT_freeCCtxPool(ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  tail call fastcc void @ZSTDMT_freeBufferPool(ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !15 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.y) #14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ab = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.aa) #14 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.ad = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ac) #14 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.af = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ae) #14 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %ZSTD_customFree.exit.i, label %bb.g

bb.g:                                             ; preds = %ZSTDMT_freeJobsTable.exit
  %.not4.i.i24 = icmp eq ptr %.sroa.3.0.copyload.i, null
  br i1 %.not4.i.i24, label %ZSTD_customFree.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.ah) #14, !inline_history !50
  br label %ZSTD_customFree.exit.i

ZSTD_customFree.exit.i:                           ; preds = %bb.h, %ZSTDMT_freeJobsTable.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 3 uses
  %.not.i10.i = icmp eq ptr %i.aj, null
  br i1 %.not.i10.i, label %ZSTDMT_serialState_free.exit, label %bb.i

ZSTD_customFree.exit.thread.i:                    ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ah) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %.not.i1013.i = icmp eq ptr %i.al, null
  br i1 %.not.i1013.i, label %ZSTDMT_serialState_free.exit, label %.thread.i

bb.i:                                             ; preds = %ZSTD_customFree.exit.i
  %.not4.i11.i = icmp eq ptr %.sroa.3.0.copyload.i, null
  br i1 %.not4.i11.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.aj) #14, !inline_history !50
  br label %ZSTDMT_serialState_free.exit

.thread.i:                                        ; preds = %bb.i, %ZSTD_customFree.exit.thread.i
  %i.am = phi ptr [ %i.aj, %bb.i ], [ %i.al, %ZSTD_customFree.exit.thread.i ]
  tail call void @free(ptr noundef nonnull %i.am) #14
  br label %ZSTDMT_serialState_free.exit

ZSTDMT_serialState_free.exit:                     ; preds = %ZSTD_customFree.exit.i, %ZSTD_customFree.exit.thread.i, %bb.j, %.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.ap = tail call i64 @ZSTD_freeCDict(ptr noundef %i.ao) #14 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 3 uses
  %.not18 = icmp eq ptr %i.ar, null
  br i1 %.not18, label %bb.n, label %bb.k

bb.k:                                             ; preds = %ZSTDMT_serialState_free.exit
  %.val20 = load ptr, ptr %i.k, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.val20, null
  br i1 %.not4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val21 = load ptr, ptr %i.l, align 8
  tail call void %.val20(ptr noundef %.val21, ptr noundef nonnull %i.ar) #14, !inline_history !54
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ar) #14
  br label %bb.n

bb.n:                                             ; preds = %ZSTDMT_serialState_free.exit, %bb.l, %bb.m
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not4.i27 = icmp eq ptr %.val, null
  br i1 %.not4.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val19 = load ptr, ptr %i.l, align 8
  tail call void %.val(ptr noundef %.val19, ptr noundef nonnull %0) #14, !inline_history !54
  br label %ZSTD_customFree.exit28

bb.p:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %0) #14
  br label %ZSTD_customFree.exit28

ZSTD_customFree.exit28:                           ; preds = %bb.p, %bb.o, %bb.a
  ret i64 0
}

declare void @POOL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTDMT_releaseAllJobResources(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.01 = alloca %struct.__pthread_mutex_s, align 8 ; 4 uses
  %.sroa.0 = alloca %struct.__pthread_cond_s, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ZSTDMT_releaseBuffer.exit
  %.019 = phi i32 [ 0, %bb.a ], [ %i.al, %ZSTDMT_releaseBuffer.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.e = zext i32 %.019 to i64                    ; 4 uses
  %i.f = getelementptr inbounds nuw [456 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !tbaa.struct !55
end_hunk_0
