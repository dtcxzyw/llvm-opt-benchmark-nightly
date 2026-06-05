inline.NumInlined: 125
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_zstd::ZSTD_customMem" = type { ptr, ptr, ptr }
%"struct.duckdb_zstd::ZSTD_compressionParameters" = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.duckdb_zstd::ZSTD_frameProgression" = type { i64, i64, i64, i64, i32, i32 }
%"struct.duckdb_zstd::ZSTD_CCtx_params_s" = type { i32, %"struct.duckdb_zstd::ZSTD_compressionParameters", %"struct.duckdb_zstd::ZSTD_frameParameters", i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %"struct.duckdb_zstd::ldmParams_t", i32, i32, i32, i32, i32, i32, i32, i32, %"struct.duckdb_zstd::ZSTD_customMem", i32, i32, ptr, ptr, i64, i32 }
%"struct.duckdb_zstd::ZSTD_frameParameters" = type { i32, i32, i32 }
%"struct.duckdb_zstd::ldmParams_t" = type { i32, i32, i32, i32, i32, i32 }
%"struct.duckdb_zstd::rawSeqStore_t" = type { ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@switch.table._ZN11duckdb_zstd27ZSTDMT_initCStream_internalEPNS_13ZSTDMT_CCtx_sEPKvmNS_22ZSTD_dictContentType_eEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEy = private unnamed_addr constant [5 x i32] [i32 2, i32 2, i32 1, i32 1, i32 0], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11duckdb_zstd26ZSTDMT_createCCtx_advancedEjNS_14ZSTD_customMemEPNS_10POOL_ctx_sE(i32 noundef %0, ptr nofree noundef readnone byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd15ZSTDMT_freeCCtxEPNS_13ZSTDMT_CCtx_sE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, %bb.d
  %i.i = phi ptr [ %.pre.i, %bb.d ], [ %i.ac, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i ]
  %.020.i = phi i32 [ 0, %bb.d ], [ %i.af, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i ] ; 2 uses
  %i.j = zext i32 %.020.i to i64                  ; 3 uses
  %i.k = getelementptr inbounds nuw [368 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load <2 x i32>, ptr %i.l, align 8, !tbaa !3
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !37   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !38 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !39
  %i.p = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.p, label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43
  %i.u = icmp ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = add nuw i32 %i.r, 1
  store i32 %i.x, ptr %i.q, align 4, !tbaa !40
  %i.y = zext i32 %i.r to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.y ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.z, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.h:                                             ; preds = %bb.f
  %.sroa.1.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.1.0.copyload.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i, null
  br i1 %.not4.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i(ptr noundef %.sroa.2.0.copyload.i.i, ptr noundef nonnull %.sroa.0.0.copyload.i), !inline_history !45
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [368 x i8], ptr %i.aa, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.ab, i8 0, i64 368, i1 false)
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !36  ; 4 uses
  %i.ad = getelementptr inbounds nuw [368 x i8], ptr %i.ac, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i32> %i.m, ptr %i.ae, align 8, !tbaa !3
  %i.af = add i32 %.020.i, 1                      ; 2 uses
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !46
  %.not.i = icmp ugt i32 %i.af, %i.ag
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.e, !llvm.loop !47

.preheader.preheader.i:                           ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ai, align 8, !tbaa !49
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 3 uses
  %.sroa.242.0.copyload = load ptr, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 3 uses
  %.not4.i.i = icmp eq ptr %.sroa.242.0.copyload, null
  br i1 %.not4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.preheader.i
  %.sroa.343.0.copyload = load ptr, ptr %.sroa.343.0..sroa_idx, align 8, !tbaa !38
  tail call void %.sroa.242.0.copyload(ptr noundef %.sroa.343.0.copyload, ptr noundef nonnull %i.ac), !inline_history !50
  br label %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit

bb.l:                                             ; preds = %.preheader.preheader.i
  tail call void @free(ptr noundef nonnull %i.ac) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit: ; preds = %bb.k, %bb.l
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !37
  tail call fastcc void @_ZN11duckdb_zstdL21ZSTDMT_freeBufferPoolEPNS_19ZSTDMT_bufferPool_sE(ptr noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 9 uses
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not11.i = icmp eq ptr %i.an, null
  br i1 %.not11.i, label %bb.p, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = tail call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %i.at) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i30 = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i30, null
  br i1 %.not.i.i, label %bb.p, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.preheader.i, %._crit_edge.i
  %i.ay = phi ptr [ %.pre.i30, %._crit_edge.i ], [ %i.an, %.preheader.i ] ; 2 uses
  %.sroa.119.0.copyload30.in.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.119.0.copyload30.i = load ptr, ptr %.sroa.119.0.copyload30.in.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i25 = icmp eq ptr %.sroa.119.0.copyload30.i, null
  br i1 %.not4.i.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i
  %.sroa.220.0.copyload31.in.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.220.0.copyload31.i = load ptr, ptr %.sroa.220.0.copyload31.in.i, align 8, !tbaa !38
  tail call void %.sroa.119.0.copyload30.i(ptr noundef %.sroa.220.0.copyload31.i, ptr noundef nonnull %i.ay), !inline_history !60
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread.i
  tail call void @free(ptr noundef nonnull %i.ay) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i, %bb.m
  %.sroa.1.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.1.0.copyload.i27 = load ptr, ptr %.sroa.1.0..sroa_idx.i26, align 8, !tbaa !38 ; 2 uses
  %.not4.i16.i = icmp eq ptr %.sroa.1.0.copyload.i27, null
  br i1 %.not4.i16.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.2.0.copyload.i29 = load ptr, ptr %.sroa.2.0..sroa_idx.i28, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i27(ptr noundef %.sroa.2.0.copyload.i29, ptr noundef nonnull %i.al), !inline_history !60
  br label %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit

bb.r:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.al) #14
  br label %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit

_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit: ; preds = %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit, %bb.q, %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  tail call fastcc void @_ZN11duckdb_zstdL21ZSTDMT_freeBufferPoolEPNS_19ZSTDMT_bufferPool_sE(ptr noundef %i.ba)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !38 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !38 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i31, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit
  %.not4.i.i32 = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not4.i.i32, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %.sroa.5.0.copyload.i(ptr noundef %.sroa.7.0.copyload.i, ptr noundef nonnull %i.bc), !inline_history !63
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i: ; preds = %bb.t, %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.be, null
  br i1 %.not.i6.i, label %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit, label %bb.u

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i: ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.bc) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 2 uses
  %.not.i613.i = icmp eq ptr %i.bg, null
  br i1 %.not.i613.i, label %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit, label %.thread.i

bb.u:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i
  %.not4.i7.i = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not4.i7.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %.sroa.5.0.copyload.i(ptr noundef %.sroa.7.0.copyload.i, ptr noundef nonnull %i.be), !inline_history !63
  br label %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit

.thread.i:                                        ; preds = %bb.u, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i
  %i.bh = phi ptr [ %i.be, %bb.u ], [ %i.bg, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i ]
  tail call void @free(ptr noundef nonnull %i.bh) #14
  br label %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit

_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit: ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.thread.i, %bb.v, %.thread.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66 ; 3 uses
  %.not18 = icmp eq ptr %i.bm, null
  br i1 %.not18, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit
  %.sroa.138.0.copyload = load ptr, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.138.0.copyload, null
  br i1 %.not4.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.239.0.copyload = load ptr, ptr %.sroa.343.0..sroa_idx, align 8, !tbaa !38
  tail call void %.sroa.138.0.copyload(ptr noundef %.sroa.239.0.copyload, ptr noundef nonnull %i.bm), !inline_history !67
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.bm) #14
  br label %bb.z

bb.z:                                             ; preds = %_ZN11duckdb_zstdL23ZSTDMT_serialState_freeEPNS_13serialState_tE.exit, %bb.x, %bb.y
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.242.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %.not4.i35 = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.343.0..sroa_idx, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2.0.copyload, ptr noundef nonnull %0), !inline_history !67
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit36

bb.ab:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %0) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit36

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit36: ; preds = %bb.ab, %bb.aa, %bb.a
  ret i64 0
}

declare void @_ZN11duckdb_zstd9POOL_freeEPNS_10POOL_ctx_sE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11duckdb_zstdL21ZSTDMT_freeBufferPoolEPNS_19ZSTDMT_bufferPool_sE(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %.not31 = icmp eq i32 %i.d, 0
  %.sroa.125.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not31, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 3 uses
  %.sroa.128.0.copyload = load ptr, ptr %.sroa.125.0..sroa_idx36, align 8, !tbaa !38 ; 2 uses
  %.sroa.229.0.copyload = load ptr, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %.sroa.128.0.copyload, null
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.sroa.128.0.copyload(ptr noundef %.sroa.229.0.copyload, ptr noundef nonnull %i.g), !inline_history !67
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.g) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.c, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !43
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %.sroa.125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i18 = icmp eq ptr %.pre, null
  br i1 %.not.i18, label %bb.i, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.sroa.125.0.copyload41.in = phi ptr [ %.sroa.125.0..sroa_idx, %._crit_edge ], [ %.sroa.125.0..sroa_idx36, %.preheader ]
  %i.k = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %.preheader ] ; 2 uses
  %.sroa.125.0.copyload41 = load ptr, ptr %.sroa.125.0.copyload41.in, align 8, !tbaa !38 ; 2 uses
  %.not4.i19 = icmp eq ptr %.sroa.125.0.copyload41, null
  br i1 %.not4.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %.sroa.226.0.copyload42.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.226.0.copyload42 = load ptr, ptr %.sroa.226.0.copyload42.in, align 8, !tbaa !38
  tail call void %.sroa.125.0.copyload41(ptr noundef %.sroa.226.0.copyload42, ptr noundef nonnull %i.k), !inline_history !67
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.k) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %._crit_edge, %bb.g, %bb.h
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %.not4.i22 = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2.0.copyload, ptr noundef nonnull %0), !inline_history !67
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit23

bb.k:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit23

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit23: ; preds = %bb.k, %bb.j, %bb.a
  ret void
}

declare noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd18ZSTDMT_sizeof_CCtxEPNS_13ZSTDMT_CCtx_sE(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = tail call noundef i64 @_ZN11duckdb_zstd11POOL_sizeofEPKNS_10POOL_ctx_sE(ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 3 uses
  %wide.trip.count.i = zext i32 %i.g to i64       ; 4 uses
  %min.iters.check = icmp ult i32 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.mod.vf = and i64 %wide.trip.count.i, 3       ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.k   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi27 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load <3 x i64>, ptr %i.n, align 8, !tbaa !70
  %strided.vec = shufflevector <3 x i64> %i.p, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.q = load <3 x i64>, ptr %i.o, align 8, !tbaa !70
  %strided.vec29 = shufflevector <3 x i64> %i.q, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.s = add <2 x i64> %strided.vec29, %vec.phi27 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.010.i = phi i64 [ %i.y, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = add i64 %i.x, %.010.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !74

._crit_edge.loopexit.i:                           ; preds = %scalar.ph
  %i.z = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.aa = add nuw nsw i64 %i.z, 56
  %i.ab = add i64 %i.aa, %i.y
  br label %_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit

_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit: ; preds = %bb.b, %._crit_edge.loopexit.i
  %i.ac = phi i64 [ %i.ab, %._crit_edge.loopexit.i ], [ 56, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !46
  %i.af = add i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 368
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56 ; 3 uses
  %.not.i9 = icmp eq i32 %i.al, 0
  br i1 %.not.i9, label %_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %wide.trip.count.i11 = zext i32 %i.al to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i10
  %indvars.iv.i12 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i13, %bb.c ] ; 2 uses
  %.0910.i = phi i64 [ 0, %.lr.ph.i10 ], [ %i.ar, %bb.c ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i12
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = tail call noundef i64 @_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE(ptr noundef %i.ap)
  %i.ar = add i64 %i.aq, %.0910.i                 ; 2 uses
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i11
  br i1 %exitcond.not.i14, label %_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit, label %bb.c, !llvm.loop !75

_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit: ; preds = %bb.c, %_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit
  %.09.lcssa.i = phi i64 [ 0, %_ZN11duckdb_zstdL24ZSTDMT_sizeof_bufferPoolEPNS_19ZSTDMT_bufferPool_sE.exit ], [ %i.ar, %bb.c ]
  %i.as = sext i32 %i.al to i64
  %i.at = shl nsw i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL21ZSTDMT_sizeof_seqPoolEPNS_19ZSTDMT_bufferPool_sE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.ax to i64    ; 4 uses
  %min.iters.check31 = icmp ult i32 %i.ax, 5
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.i.i
  %n.mod.vf33 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %i.ba = icmp eq i64 %n.mod.vf33, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %n.mod.vf33
  %n.vec34 = sub nsw i64 %wide.trip.count.i.i, %i.bb ; 2 uses
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next43, %vector.body35 ] ; 3 uses
  %vec.phi37 = phi <2 x i64> [ zeroinitializer, %vector.ph32 ], [ %i.bi, %vector.body35 ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph32 ], [ %i.bj, %vector.body35 ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %index36
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %index36
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bg = load <3 x i64>, ptr %i.be, align 8, !tbaa !70
  %strided.vec40 = shufflevector <3 x i64> %i.bg, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bh = load <3 x i64>, ptr %i.bf, align 8, !tbaa !70
  %strided.vec42 = shufflevector <3 x i64> %i.bh, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bi = add <2 x i64> %strided.vec40, %vec.phi37 ; 2 uses
  %i.bj = add <2 x i64> %strided.vec42, %vec.phi38 ; 2 uses
  %index.next43 = add nuw i64 %index36, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next43, %n.vec34
  br i1 %i.bk, label %middle.block44, label %vector.body35, !llvm.loop !76

middle.block44:                                   ; preds = %vector.body35
  %bin.rdx45 = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx45)
  br label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i, %middle.block44
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec34, %middle.block44 ]
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bl, %middle.block44 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph30 ], [ %indvars.iv.i.i.ph, %scalar.ph30.preheader ] ; 2 uses
  %.010.i.i = phi i64 [ %i.bp, %scalar.ph30 ], [ %.010.i.i.ph, %scalar.ph30.preheader ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !70
  %i.bp = add i64 %i.bo, %.010.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %scalar.ph30, !llvm.loop !77

._crit_edge.loopexit.i.i:                         ; preds = %scalar.ph30
  %i.bq = shl nuw nsw i64 %wide.trip.count.i.i, 4
  %i.br = add nuw nsw i64 %i.bq, 56
  %i.bs = add i64 %i.br, %i.bp
  br label %_ZN11duckdb_zstdL21ZSTDMT_sizeof_seqPoolEPNS_19ZSTDMT_bufferPool_sE.exit

_ZN11duckdb_zstdL21ZSTDMT_sizeof_seqPoolEPNS_19ZSTDMT_bufferPool_sE.exit: ; preds = %_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit, %._crit_edge.loopexit.i.i
  %i.bt = phi i64 [ %i.bs, %._crit_edge.loopexit.i.i ], [ 56, %_ZN11duckdb_zstdL22ZSTDMT_sizeof_CCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !65
  %i.bw = tail call noundef i64 @_ZN11duckdb_zstd17ZSTD_sizeof_CDictEPKNS_12ZSTD_CDict_sE(ptr noundef %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !78
  %i.bz = add i64 %i.c, 2992
  %i.ca = add i64 %i.bz, %i.ac
  %i.cb = add i64 %i.ca, %i.ah
  %i.cc = add i64 %i.cb, %i.at
  %i.cd = add i64 %i.cc, %.09.lcssa.i
  %i.ce = add i64 %i.cd, %i.bt
  %i.cf = add i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.by
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL21ZSTDMT_sizeof_seqPoolEPNS_19ZSTDMT_bufferPool_sE.exit
  %.0 = phi i64 [ %i.cg, %_ZN11duckdb_zstdL21ZSTDMT_sizeof_seqPoolEPNS_19ZSTDMT_bufferPool_sE.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

declare noundef i64 @_ZN11duckdb_zstd11POOL_sizeofEPKNS_10POOL_ctx_sE(ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd17ZSTD_sizeof_CDictEPKNS_12ZSTD_CDict_sE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11duckdb_zstd37ZSTDMT_updateCParams_whileCompressingEPNS_13ZSTDMT_CCtx_sEPKNS_18ZSTD_CCtx_params_sE(ptr nofree noundef captures(none) initializes((48, 72), (84, 88)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.d, ptr %i.e, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %2, ptr noundef %1, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  store i32 %i.b, ptr %2, align 4, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11duckdb_zstd26ZSTDMT_getFrameProgressionEPNS_13ZSTDMT_CCtx_sE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb_zstd::ZSTD_frameProgression") align 8 captures(none) initializes((32, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2880
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2888
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2856
  %i.i = load i32, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.i, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.l = load i32, ptr %i.k, align 8, !tbaa !91
  %i.m = add i32 %i.l, %i.i                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2852
  %i.o = load i32, ptr %i.n, align 4, !tbaa !92   ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2848
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.034 = phi i32 [ %i.o, %.lr.ph ], [ %i.at, %bb.d ] ; 2 uses
  %i.u = phi i64 [ %i.e, %.lr.ph ], [ %i.al, %bb.d ]
  %i.v = phi i64 [ %i.b, %.lr.ph ], [ %i.an, %bb.d ]
  %i.w = phi i64 [ %i.g, %.lr.ph ], [ %i.ao, %bb.d ]
  %i.x = phi i64 [ %i.g, %.lr.ph ], [ %i.ap, %bb.d ]
  %i.y = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.d ]
  %i.z = and i32 %i.r, %.034
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [368 x i8], ptr %i.t, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, -119                ; 2 uses
  %i.af = select i1 %i.ae, i64 %i.ad, i64 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi i64 [ %i.ah, %bb.c ], [ 0, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !96 ; 2 uses
  %i.al = add i64 %i.u, %i.ak                     ; 2 uses
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.an = add i64 %i.v, %i.am                     ; 2 uses
  %i.ao = add i64 %i.w, %i.af                     ; 2 uses
  %i.ap = add i64 %i.x, %i.ai                     ; 2 uses
  %i.aq = icmp ult i64 %i.am, %i.ak
  %i.ar = zext i1 %i.aq to i32
  %i.as = add i32 %i.y, %i.ar                     ; 2 uses
  %i.at = add nuw i32 %.034, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.lcssa33 = phi i32 [ 0, %bb.a ], [ %i.as, %bb.d ]
  %.lcssa31 = phi i64 [ %i.g, %bb.a ], [ %i.ap, %bb.d ]
  %.lcssa29 = phi i64 [ %i.g, %bb.a ], [ %i.ao, %bb.d ]
  %.lcssa27 = phi i64 [ %i.b, %bb.a ], [ %i.an, %bb.d ]
  %.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.al, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa, ptr %0, align 8
  store i64 %.lcssa27, ptr %i.ax, align 8
  store i64 %.lcssa29, ptr %i.av, align 8
  store i64 %.lcssa31, ptr %i.aw, align 8
  store i32 %.lcssa33, ptr %i.au, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd17ZSTDMT_toFlushNowEPNS_13ZSTDMT_CCtx_sE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %i.h = and i32 %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [368 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = icmp ult i64 %i.n, -119                  ; 2 uses
  %i.p = select i1 %i.o, i64 %i.n, i64 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  %i.r = load i64, ptr %i.q, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.t = sub i64 %i.p, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd27ZSTDMT_initCStream_internalEPNS_13ZSTDMT_CCtx_sEPKvmNS_22ZSTD_dictContentType_eEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEy(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef byval(%"struct.duckdb_zstd::ZSTD_CCtx_params_s") align 8 captures(none) %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 14 uses
  %8 = alloca %"struct.duckdb_zstd::ZSTD_customMem", align 8 ; 8 uses
  %9 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !100
  %.not = icmp eq i32 %i.b, %i.e
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = zext i32 %i.b to i64
  %i.h = tail call noundef i32 @_ZN11duckdb_zstd11POOL_resizeEPNS_10POOL_ctx_sEm(ptr noundef %i.f, i64 noundef %i.g)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.b, 2                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %i.l = add i32 %i.k, 1
  %i.m = icmp ugt i32 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.313.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  %.sroa.313.0.copyload.i.i = load ptr, ptr %.sroa.313.0..sroa_idx.i.i, align 8, !tbaa !38
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.d
  %.not4.i.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  br i1 %.not4.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.preheader.i.i.i
  tail call void %.sroa.2.0.copyload.i.i(ptr noundef %.sroa.313.0.copyload.i.i, ptr noundef nonnull %i.o), !inline_history !101
  br label %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i

bb.f:                                             ; preds = %.preheader.preheader.i.i.i
  tail call void @free(ptr noundef nonnull %i.o) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !46
  %.sroa.017.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !38 ; 2 uses
  %i.r = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.i, i1 true) ; 2 uses
  %i.s = xor i32 %i.r, 31
  %i.t = shl nuw i32 2, %i.s
  %i.u = sub nuw nsw i32 32, %i.r
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 368, %i.v                ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.017.0.copyload.i.i, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i
  %.sroa.319.0.copyload.i.i = load ptr, ptr %.sroa.313.0..sroa_idx.i.i, align 8, !tbaa !38
  %i.x = tail call noundef ptr %.sroa.017.0.copyload.i.i(ptr noundef %.sroa.319.0.copyload.i.i, i64 noundef range(i64 -17179869184, 1580547964561) %i.w), !inline_history !102 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.x, i8 0, i64 range(i64 -17179869184, 1580547964561) %i.w, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i.i

bb.h:                                             ; preds = %_ZN11duckdb_zstdL20ZSTDMT_freeJobsTableEPNS_21ZSTDMT_jobDescriptionEjNS_14ZSTD_customMemE.exit.i.i
  %i.y = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1580547964561) %i.w) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i.i

_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.z = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.z, label %_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.n, align 8, !tbaa !36
  %i.aa = add i32 %i.t, -1
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !46
  br label %bb.j

_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !36
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = shl i32 %i.b, 1
  %i.ae = add i32 %i.ad, 3
  %i.af = tail call fastcc noundef ptr @_ZN11duckdb_zstdL23ZSTDMT_expandBufferPoolEPNS_19ZSTDMT_bufferPool_sEj(ptr noundef %i.ac, i32 noundef %i.ae) ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !37
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.b, %i.al
  br i1 %.not.i.i, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not11.i.i.i, label %bb.p, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m
  %i.ap = icmp sgt i32 %i.al, 0
  br i1 %i.ap, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.at = tail call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %i.as) ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !56
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i.i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !59

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i26.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i26.i, label %bb.p, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ao, %.preheader.i.i.i ] ; 2 uses
  %.sroa.119.0.copyload30.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.119.0.copyload30.i.i.i = load ptr, ptr %.sroa.119.0.copyload30.in.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i24.i = icmp eq ptr %.sroa.119.0.copyload30.i.i.i, null
  br i1 %.not4.i.i.i24.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %.sroa.220.0.copyload31.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.220.0.copyload31.i.i.i = load ptr, ptr %.sroa.220.0.copyload31.in.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.119.0.copyload30.i.i.i(ptr noundef %.sroa.220.0.copyload31.i.i.i, ptr noundef nonnull %i.ax), !inline_history !103
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i
  tail call void @free(ptr noundef nonnull %i.ax) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i, %bb.m
  %.sroa.1.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.1.0.copyload.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i16.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i.i, null
  br i1 %.not4.i16.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i.i(ptr noundef %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull %i.ai), !inline_history !103
  br label %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit.i.i

bb.r:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ai) #14
  br label %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit.i.i

_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.045.0.copyload.i.i.i = load ptr, ptr %8, align 8 ; 3 uses
  %.not.i.i9.i.i = icmp eq ptr %.sroa.045.0.copyload.i.i.i, null
  br i1 %.not.i.i9.i.i, label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i25.i, label %bb.s

_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i25.i: ; preds = %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit.i.i
  %i.ay = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #15 ; 3 uses
  %.not.i10.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i10.i.i, label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i, label %bb.t

bb.s:                                             ; preds = %_ZN11duckdb_zstdL19ZSTDMT_freeCCtxPoolEPNS_15ZSTDMT_CCtxPoolE.exit.i.i
  %.sroa.247.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.247.0.copyload.i.i.i = load ptr, ptr %.sroa.247.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.az = tail call noundef ptr %.sroa.045.0.copyload.i.i.i(ptr noundef %.sroa.247.0.copyload.i.i.i, i64 noundef 48), !inline_history !104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.az, i8 0, i64 48, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  store i32 %i.b, ptr %i.ba, align 4, !tbaa !56
  %i.bb = sext i32 %i.b to i64
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = tail call noundef ptr %.sroa.045.0.copyload.i.i.i(ptr noundef %.sroa.247.0.copyload.i.i.i, i64 noundef range(i64 -17179869184, 1580547964561) %i.bc), !inline_history !104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 range(i64 -17179869184, 1580547964561) %i.bc, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit21.i.i.i

bb.t:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i25.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  store i32 %i.b, ptr %i.be, align 4, !tbaa !56
  %i.bf = sext i32 %i.b to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1580547964561) %i.bg) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit21.i.i.i

_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit21.i.i.i: ; preds = %bb.t, %bb.s
  %i.bi = phi ptr [ %i.ba, %bb.s ], [ %i.be, %bb.t ] ; 2 uses
  %.0.i5052.i.i.i = phi ptr [ %i.az, %bb.s ], [ %i.ay, %bb.t ] ; 14 uses
  %.0.i20.i.i.i = phi ptr [ %i.bd, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 40 ; 4 uses
  store ptr %.0.i20.i.i.i, ptr %i.bj, align 8, !tbaa !52
  %.not14.i.i.i = icmp eq ptr %.0.i20.i.i.i, null
  br i1 %.not14.i.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit21.i.i.i
  %.sroa.1.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 24
  %.sroa.1.0.copyload.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i16.i.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i.i.i, null
  br i1 %.not4.i16.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 32
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i.i.i(ptr noundef %.sroa.2.0.copyload.i.i.i.i, ptr noundef nonnull %.0.i5052.i.i.i), !inline_history !105
  br label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i

bb.w:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %.0.i5052.i.i.i) #14
  br label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i

bb.x:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit21.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.bl = tail call noundef ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 %8) ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !52 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !57
  %.not15.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not15.i.i.i, label %.preheader.i25.i.i.i, label %bb.ad

.preheader.i25.i.i.i:                             ; preds = %bb.x
  %i.bn = load i32, ptr %i.bi, align 4, !tbaa !56
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i37.i.i.i, label %._crit_edge.thread.i26.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %.preheader.i25.i.i.i, %.lr.ph.i37.i.i.i
  %indvars.iv.i38.i.i.i = phi i64 [ %indvars.iv.next.i39.i.i.i, %.lr.ph.i37.i.i.i ], [ 0, %.preheader.i25.i.i.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i38.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = tail call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %i.br) ; 0 uses
  %indvars.iv.next.i39.i.i.i = add nuw nsw i64 %indvars.iv.i38.i.i.i, 1 ; 2 uses
  %i.bt = load i32, ptr %i.bi, align 4, !tbaa !56
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next.i39.i.i.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i37.i.i.i, label %._crit_edge.i40.i.i.i, !llvm.loop !59

._crit_edge.i40.i.i.i:                            ; preds = %.lr.ph.i37.i.i.i
  %.pre.i41.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !52 ; 2 uses
  %.not.i.i42.i.i.i = icmp eq ptr %.pre.i41.i.i.i, null
  br i1 %.not.i.i42.i.i.i, label %bb.aa, label %._crit_edge.thread.i26.i.i.i

._crit_edge.thread.i26.i.i.i:                     ; preds = %._crit_edge.i40.i.i.i, %.preheader.i25.i.i.i
  %i.bw = phi ptr [ %.pre.i41.i.i.i, %._crit_edge.i40.i.i.i ], [ %i.bm, %.preheader.i25.i.i.i ] ; 2 uses
  %.sroa.119.0.copyload30.in.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 24
  %.sroa.119.0.copyload30.i28.i.i.i = load ptr, ptr %.sroa.119.0.copyload30.in.i27.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i29.i.i.i = icmp eq ptr %.sroa.119.0.copyload30.i28.i.i.i, null
  br i1 %.not4.i.i29.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i26.i.i.i
  %.sroa.220.0.copyload31.in.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 32
  %.sroa.220.0.copyload31.i31.i.i.i = load ptr, ptr %.sroa.220.0.copyload31.in.i30.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.119.0.copyload30.i28.i.i.i(ptr noundef %.sroa.220.0.copyload31.i31.i.i.i, ptr noundef nonnull %i.bw), !inline_history !105
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.thread.i26.i.i.i
  tail call void @free(ptr noundef nonnull %i.bw) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i40.i.i.i
  %.sroa.1.0..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 24
  %.sroa.1.0.copyload.i33.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i32.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i16.i34.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i33.i.i.i, null
  br i1 %.not4.i16.i34.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.2.0..sroa_idx.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 32
  %.sroa.2.0.copyload.i36.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i35.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i33.i.i.i(ptr noundef %.sroa.2.0.copyload.i36.i.i.i, ptr noundef nonnull %.0.i5052.i.i.i), !inline_history !105
  br label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i

bb.ac:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %.0.i5052.i.i.i) #14
  br label %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i

bb.ad:                                            ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i5052.i.i.i, i64 8
  store i32 1, ptr %i.bx, align 8, !tbaa !106
  br label %bb.ae

_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i: ; preds = %bb.ac, %bb.ab, %bb.w, %bb.v, %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i.i25.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr null, ptr %i.ah, align 8, !tbaa !51
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.ae:                                            ; preds = %bb.ad, %bb.l
  %.0.i23.i = phi ptr [ %i.ai, %bb.l ], [ %.0.i5052.i.i.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store ptr %.0.i23.i, ptr %i.ah, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  %i.ca = tail call fastcc noundef ptr @_ZN11duckdb_zstdL23ZSTDMT_expandBufferPoolEPNS_19ZSTDMT_bufferPool_sEj(ptr noundef %i.bz, i32 noundef %i.b) ; 2 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !61
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread, label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit

_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit: ; preds = %bb.ae
  %i.cc = tail call noundef i64 @_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi(ptr noundef nonnull %i.c, i32 noundef 400, i32 noundef %i.b) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit, %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !107 ; 3 uses
  %i.cf = add i64 %i.ce, -1
  %or.cond = icmp ult i64 %i.cf, 524287
  br i1 %or.cond, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = icmp ugt i64 %i.ce, 1073741824
  br i1 %i.cg, label %.sink.split, label %bb.ah

.sink.split:                                      ; preds = %bb.ag, %bb.af
  %.sink = phi i64 [ 524288, %bb.af ], [ 1073741824, %bb.ag ] ; 2 uses
  store i64 %.sink, ptr %i.cd, align 8, !tbaa !107
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag
  %i.ch = phi i64 [ %i.ce, %bb.ag ], [ %.sink, %.sink.split ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !49
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2852 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !88 ; 2 uses
  %.promoted.i = load i32, ptr %i.cl, align 4, !tbaa !92
  %i.co = icmp ult i32 %.promoted.i, %i.cn
  br i1 %i.co, label %.lr.ph.i, label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit

.lr.ph.i:                                         ; preds = %bb.ai
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit

_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit: ; preds = %.lr.ph.i, %bb.ai
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %i.cq, align 8, !tbaa !36
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit
  %i.cs = phi ptr [ %.pre.i, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit ], [ %i.dm, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i ]
  %.020.i = phi i32 [ 0, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit ], [ %i.dp, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i ] ; 2 uses
  %i.ct = zext i32 %.020.i to i64                 ; 3 uses
  %i.cu = getelementptr inbounds nuw [368 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load <2 x i32>, ptr %i.cv, align 8, !tbaa !3
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !37 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cy, align 8, !tbaa !38 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !39
  %i.cz = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.cz, label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !43
  %i.de = icmp ult i32 %i.db, %i.dd
  br i1 %i.de, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44
  %i.dh = add nuw i32 %i.db, 1
  store i32 %i.dh, ptr %i.da, align 4, !tbaa !40
  %i.di = zext i32 %i.db to i64
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.dj, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.am:                                            ; preds = %bb.ak
  %.sroa.1.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %.sroa.1.0.copyload.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i, null
  br i1 %.not4.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.2.0..sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %.sroa.2.0.copyload.i.i104 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i103, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i(ptr noundef %.sroa.2.0.copyload.i.i104, ptr noundef nonnull %.sroa.0.0.copyload.i), !inline_history !45
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.ao:                                            ; preds = %bb.am
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i: ; preds = %bb.ao, %bb.an, %bb.al, %bb.aj
  %i.dk = load ptr, ptr %i.cq, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw [368 x i8], ptr %i.dk, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.dl, i8 0, i64 368, i1 false)
  %i.dm = load ptr, ptr %i.cq, align 8, !tbaa !36 ; 2 uses
  %i.dn = getelementptr inbounds nuw [368 x i8], ptr %i.dm, i64 %i.ct
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x i32> %i.cw, ptr %i.do, align 8, !tbaa !3
  %i.dp = add i32 %.020.i, 1                      ; 2 uses
  %i.dq = load i32, ptr %i.cp, align 8, !tbaa !46
  %.not.i105 = icmp ugt i32 %i.dp, %i.dq
  br i1 %.not.i105, label %_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit, label %bb.aj, !llvm.loop !47

_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit: ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ci, align 8, !tbaa !49
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %5, i64 216, i1 false), !tbaa.struct !108
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store i64 %6, ptr %i.ds, align 8, !tbaa !114
  %.not95 = icmp eq ptr %1, null
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2920 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65
  %i.dv = tail call noundef i64 @_ZN11duckdb_zstd14ZSTD_freeCDictEPNS_12ZSTD_CDict_sE(ptr noundef %i.du) ; 0 uses
  br i1 %.not95, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef nonnull align 4 dereferenceable(28) %i.dw, i64 28, i1 false), !tbaa.struct !83
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.dy = tail call noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %9, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 %i.dx) ; 3 uses
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !115
  %i.ea = icmp eq ptr %i.dy, null
  br i1 %i.ea, label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  store ptr null, ptr %i.dt, align 8, !tbaa !65
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %4, ptr %i.eb, align 8, !tbaa !115
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !116 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !117 ; 7 uses
  %i.eh = icmp eq i32 %i.ed, 0
  br i1 %i.eh, label %bb.at, label %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i

bb.at:                                            ; preds = %bb.as
  %switch.tableidx = add i32 %i.eg, -5            ; 2 uses
  %i.ei = icmp ult i32 %switch.tableidx, 5
  br i1 %i.ei, label %switch.lookup, label %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i

_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i: ; preds = %bb.as
  %i.ej = sub nsw i32 9, %i.ed                    ; 2 uses
  %i.ek = icmp slt i32 %i.ed, 2
  br i1 %i.ek, label %bb.au, label %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i

switch.lookup:                                    ; preds = %bb.at
  %i.el = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11duckdb_zstd27ZSTDMT_initCStream_internalEPNS_13ZSTDMT_CCtx_sEPKvmNS_22ZSTD_dictContentType_eEPKNS_12ZSTD_CDict_sENS_18ZSTD_CCtx_params_sEy, i64 %i.el
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i

_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i: ; preds = %bb.at, %switch.lookup, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i
  %i.em = phi i32 [ %i.ej, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i ], [ %switch.load, %switch.lookup ], [ 3, %bb.at ] ; 2 uses
  %i.en = load i32, ptr %i.ee, align 4, !tbaa !118
  %i.eo = sub i32 %i.en, %i.em
  br label %bb.au

bb.au:                                            ; preds = %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i
  %i.ep = phi i32 [ %i.em, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i ], [ %i.ej, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i ] ; 2 uses
  %i.eq = phi i32 [ %i.eo, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.thread.i ], [ 0, %_ZN11duckdb_zstdL17ZSTDMT_overlapLogEiNS_13ZSTD_strategyE.exit.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.es = load i32, ptr %i.er, align 8, !tbaa !119
  %i.et = icmp eq i32 %i.es, 1
  br i1 %i.et, label %bb.av, label %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.eu = load i32, ptr %i.ee, align 4, !tbaa !118 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !120 ; 4 uses
  %i.ex = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.ew, i32 noundef %i.eg)
  %i.ey = add i32 %i.ex, 3
  %i.ez = icmp ult i32 %i.ey, 21
  br i1 %i.ez, label %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fa = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.ew, i32 noundef %i.eg)
  %i.fb = add i32 %i.fa, 3
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.fb, i32 30)
  %i.fc = add nsw i32 %spec.select.i.i, -2
  br label %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i

_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i: ; preds = %bb.aw, %bb.av
  %i.fd = phi i32 [ 19, %bb.av ], [ %i.fc, %bb.aw ]
  %i.fe = icmp ult i32 %i.eu, %i.fd
  br i1 %i.fe, label %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %i.ff = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.ew, i32 noundef %i.eg)
  %i.fg = add i32 %i.ff, 3
  %i.fh = icmp ult i32 %i.fg, 21
  br i1 %i.fh, label %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.ew, i32 noundef %i.eg)
  %i.fj = add i32 %i.fi, 3
  %spec.select.i15.i = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 30)
  %i.fk = add nsw i32 %spec.select.i15.i, -2
  br label %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit

_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit: ; preds = %bb.ax, %bb.ay, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %i.fl = phi i32 [ 19, %bb.ax ], [ %i.eu, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit.i ], [ %i.fk, %bb.ay ] ; 2 uses
  %i.fm = sub i32 %i.fl, %i.ep
  %i.fn = icmp eq i32 %i.fl, %i.ep
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = select i1 %i.fn, i64 0, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !121
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  store i64 %i.ch, ptr %i.fs, align 8, !tbaa !122
  %i.ft = icmp eq i64 %i.ch, 0
  br i1 %i.ft, label %bb.az, label %bb.bc

_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread: ; preds = %bb.au
  %i.fu = icmp eq i32 %i.eq, 0
  %i.fv = zext nneg i32 %i.eq to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = select i1 %i.fu, i64 0, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !121
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  store i64 %i.ch, ptr %i.fz, align 8, !tbaa !122
  %i.ga = icmp eq i64 %i.ch, 0
  br i1 %i.ga, label %.thread148, label %bb.bc

bb.az:                                            ; preds = %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !120 ; 2 uses
  %i.gd = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.gc, i32 noundef %i.eg)
  %i.ge = add i32 %i.gd, 3
  %i.gf = icmp ult i32 %i.ge, 21
  br i1 %i.gf, label %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = tail call noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef %i.gc, i32 noundef %i.eg)
  %i.gh = add i32 %i.gg, 3
  br label %bb.bb

.thread148:                                       ; preds = %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread
  %i.gi = load i32, ptr %i.ee, align 4, !tbaa !118
  %i.gj = add i32 %i.gi, 2                        ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 20
  br i1 %i.gk, label %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit, label %bb.bb

bb.bb:                                            ; preds = %.thread148, %bb.ba
  %i.gl = phi ptr [ %i.fy, %.thread148 ], [ %i.fr, %bb.ba ]
  %i.gm = phi ptr [ %i.fz, %.thread148 ], [ %i.fs, %bb.ba ]
  %.0.i106 = phi i32 [ %i.gj, %.thread148 ], [ %i.gh, %bb.ba ]
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i106, i32 30)
  %i.gn = zext nneg i32 %spec.select.i to i64
  br label %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit

_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit: ; preds = %bb.az, %.thread148, %bb.bb
  %i.go = phi ptr [ %i.fy, %.thread148 ], [ %i.gl, %bb.bb ], [ %i.fr, %bb.az ]
  %i.gp = phi ptr [ %i.fz, %.thread148 ], [ %i.gm, %bb.bb ], [ %i.fs, %bb.az ] ; 2 uses
  %i.gq = phi i64 [ 20, %.thread148 ], [ %i.gn, %bb.bb ], [ 21, %bb.az ]
  %i.gr = shl nuw nsw i64 1, %i.gq                ; 2 uses
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !122
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit
  %i.gs = phi ptr [ %i.gp, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.fs, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.fz, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread ] ; 3 uses
  %i.gt = phi ptr [ %i.go, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.fr, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.fy, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread ] ; 2 uses
  %i.gu = phi i64 [ %i.gr, %_ZN11duckdb_zstdL26ZSTDMT_computeTargetJobLogEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.ch, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit ], [ %i.ch, %_ZN11duckdb_zstdL25ZSTDMT_computeOverlapSizeEPKNS_18ZSTD_CCtx_params_sE.exit.thread ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !123
  %.not96 = icmp eq i32 %i.gw, 0
  br i1 %.not96, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gx = lshr i64 %i.gu, 10
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gy, i1 true)
  %i.ha = sub nuw nsw i32 41, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2824
  store i64 0, ptr %i.hb, align 8, !tbaa !124
  %i.hc = zext nneg i32 %i.ha to i64
  %notmask = shl nsw i64 -1, %i.hc
  %i.hd = xor i64 %notmask, -1
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2832
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !125
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i64 -769974921742649141, ptr %i.hf, align 8, !tbaa !126
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hg = load i64, ptr %i.gt, align 8, !tbaa !121 ; 3 uses
  %i.hh = icmp ult i64 %i.gu, %i.hg
  br i1 %i.hh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i64 %i.hg, ptr %i.gs, align 8, !tbaa !122
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hi = phi i64 [ %i.hg, %bb.bf ], [ %i.gu, %bb.be ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !37
  %i.hl = tail call noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef %i.hi)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !127
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !128
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !79
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = zext i32 %i.hs to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.hu = phi i64 [ %i.ht, %bb.bh ], [ 0, %bb.bg ]
  %i.hv = load i64, ptr %i.gt, align 8, !tbaa !121
  %.not97 = icmp eq i64 %i.hv, 0
  %i.hw = select i1 %.not97, i64 2, i64 3
  %i.hx = load i64, ptr %i.gs, align 8, !tbaa !122 ; 3 uses
  %i.hy = mul i64 %i.hw, %i.hx
  %i.hz = load i32, ptr %i.d, align 4, !tbaa !100
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 1)
  %spec.select = zext nneg i32 %narrow to i64
  %i.ia = mul i64 %i.hx, %spec.select
  %i.ib = tail call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.ia)
  %i.ic = add i64 %i.ib, %i.hy                    ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !78
  %i.ig = icmp ult i64 %i.if, %i.ic
  br i1 %i.ig, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !66 ; 3 uses
  %.not98 = icmp eq ptr %i.ih, null
  br i1 %.not98, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %.sroa.2115.0.copyload = load ptr, ptr %.sroa.2115.0..sroa_idx, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2115.0.copyload, ptr noundef nonnull %i.ih), !inline_history !67
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.bm:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.ih) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %.sroa.0.0.copyload = load ptr, ptr %i.ii, align 8, !tbaa !38 ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i108, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %.sroa.2113.0.copyload = load ptr, ptr %.sroa.2113.0..sroa_idx, align 8, !tbaa !38
  %i.ij = tail call noundef ptr %.sroa.0.0.copyload(ptr noundef %.sroa.2113.0.copyload, i64 noundef %i.ic), !inline_history !129
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

bb.bo:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ic) #16
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit: ; preds = %bb.bn, %bb.bo
  %.0.i109 = phi ptr [ %i.ij, %bb.bn ], [ %i.ik, %bb.bo ] ; 2 uses
  store ptr %.0.i109, ptr %i.id, align 8, !tbaa !66
  %i.il = icmp eq ptr %.0.i109, null
  br i1 %i.il, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  store i64 %i.ic, ptr %i.ie, align 8, !tbaa !78
  %.pre = load i64, ptr %i.gs, align 8, !tbaa !122
  br label %bb.br

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  store i64 0, ptr %i.ie, align 8, !tbaa !78
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.br:                                            ; preds = %bb.bp, %bb.bi
  %i.im = phi i64 [ %.pre, %bb.bp ], [ %i.hx, %bb.bi ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 0, ptr %i.in, align 8, !tbaa !130
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ip, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.io, i8 0, i64 40, i1 false)
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %7, ptr noundef nonnull align 8 dereferenceable(216) %5, i64 216, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 6 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !119
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef nonnull %i.it, ptr noundef nonnull %i.iw)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, i8 0, i64 24, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i32 0, ptr %i.ix, align 8, !tbaa !131
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !132
  %.not.i110 = icmp eq i32 %i.iz, 0
  br i1 %.not.i110, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.jb = call noundef i32 @_ZN11duckdb_zstd11XXH64_resetEPNS_13XXH64_state_sEy(ptr noundef nonnull %i.ja, i64 noundef 0) ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.jc = load i32, ptr %i.it, align 8, !tbaa !119
  %i.jd = icmp eq i32 %i.jc, 1
  br i1 %i.jd, label %bb.bx, label %bb.cu

bb.bx:                                            ; preds = %bb.bw
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 152
  %.sroa.079.0.copyload.i = load ptr, ptr %i.je, align 8, !tbaa !38 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 160
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !38 ; 4 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 168
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !38 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 100
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !133 ; 3 uses
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl i64 8, %i.jh                        ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !134
  %i.jl = sub i32 %i.jg, %i.jk                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !135
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !136
  %i.jq = sub i32 %i.jn, %i.jp
  %i.jr = zext nneg i32 %i.jl to i64
  %i.js = shl nuw i64 1, %i.jr                    ; 3 uses
  %i.jt = call noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ldmParams_t") align 8 %i.it, i64 noundef %i.im)
  %i.ju = mul i64 %i.jt, 12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !127
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  store ptr @.str, ptr %i.jy, align 8, !tbaa !137
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  store ptr @.str, ptr %i.jz, align 8, !tbaa !138
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  store i32 2, ptr %i.ka, align 8, !tbaa !139
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 5 uses
  store i32 2, ptr %i.kb, align 4, !tbaa !140
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 2), ptr %i.jw, align 8, !tbaa !141
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !62 ; 4 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kf = load i32, ptr %i.jm, align 4, !tbaa !135
  %i.kg = icmp ult i32 %i.kf, %i.jg
  br i1 %i.kg, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %.not4.i.i = icmp eq ptr %.sroa.7.0.copyload.i, null
  br i1 %.not4.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void %.sroa.7.0.copyload.i(ptr noundef %.sroa.11.0.copyload.i, ptr noundef nonnull %i.kd), !inline_history !142
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i

bb.cb:                                            ; preds = %bb.bz
  call void @free(ptr noundef nonnull %i.kd) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i: ; preds = %bb.cb, %bb.ca, %bb.bx
  %.not.i61.i = icmp eq ptr %.sroa.079.0.copyload.i, null
  br i1 %.not.i61.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i
  %i.kh = call noundef ptr %.sroa.079.0.copyload.i(ptr noundef %.sroa.11.0.copyload.i, i64 noundef %i.ji), !inline_history !143
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.cd:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i
  %i.ki = call noalias ptr @malloc(i64 noundef %i.ji) #16
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i = phi ptr [ %i.kh, %bb.cc ], [ %i.ki, %bb.cd ] ; 2 uses
  store ptr %.0.i.i, ptr %i.kc, align 8, !tbaa !62
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %bb.by
  %i.kj = phi ptr [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ], [ %i.kd, %bb.by ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !64 ; 3 uses
  %i.km = icmp eq ptr %i.kl, null                 ; 2 uses
  %i.kn = icmp ult i32 %i.jq, %i.jl
  %or.cond53.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond53.i, label %bb.cf, label %.thread.i

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.km, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not4.i63.i = icmp eq ptr %.sroa.7.0.copyload.i, null
  br i1 %.not4.i63.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void %.sroa.7.0.copyload.i(ptr noundef %.sroa.11.0.copyload.i, ptr noundef nonnull %i.kl), !inline_history !142
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i

bb.ci:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.kl) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i: ; preds = %bb.ci, %bb.ch, %bb.cf
  %.not.i65.i = icmp eq ptr %.sroa.079.0.copyload.i, null
  br i1 %.not.i65.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i
  %i.ko = call noundef ptr %.sroa.079.0.copyload.i(ptr noundef %.sroa.11.0.copyload.i, i64 noundef %i.js), !inline_history !143
  br label %bb.cl

bb.ck:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit64.i
  %i.kp = call noalias ptr @malloc(i64 noundef %i.js) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0.i66.i = phi ptr [ %i.ko, %bb.cj ], [ %i.kp, %bb.ck ] ; 2 uses
  store ptr %.0.i66.i, ptr %i.kk, align 8, !tbaa !64
  %.pre.i112 = load ptr, ptr %i.kc, align 8, !tbaa !62 ; 2 uses
  %i.kq = icmp eq ptr %.0.i66.i, null
  %.not50.i = icmp eq ptr %.pre.i112, null
  %brmerge.i = or i1 %i.kq, %.not50.i
  br i1 %brmerge.i, label %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread, label %.thread92.i

.thread.i:                                        ; preds = %bb.ce
  %.not5090.i = icmp eq ptr %i.kj, null
  br i1 %.not5090.i, label %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread, label %.thread92.i

.thread92.i:                                      ; preds = %.thread.i, %bb.cl
  %i.kr = phi ptr [ %.pre.i112, %bb.cl ], [ %i.kj, %.thread.i ]
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kr, i8 0, i64 %i.ji, i1 false)
  %i.ks = load ptr, ptr %i.kk, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ks, i8 0, i64 %i.js, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store i32 0, ptr %i.kt, align 8, !tbaa !144
  %i.ku = icmp ne i64 %2, 0
  %i.kv = icmp eq i32 %3, 1
  %or.cond.i = and i1 %i.ku, %i.kv
  br i1 %or.cond.i, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %.thread92.i
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.kx = load ptr, ptr %i.jw, align 8, !tbaa !141 ; 2 uses
  %.not.i68.i = icmp eq ptr %1, %i.kx
  br i1 %.not.i68.i, label %._crit_edge.i.i, label %bb.cn

._crit_edge.i.i:                                  ; preds = %bb.cm
  %.pre.i.i = load ptr, ptr %i.jz, align 8, !tbaa !138
  %.pre46.i.i = load i32, ptr %i.kb, align 4, !tbaa !140
  %.pre48.i.i = load i32, ptr %i.ka, align 8, !tbaa !139
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ky = load ptr, ptr %i.jy, align 8, !tbaa !137 ; 4 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = load i32, ptr %i.ka, align 8, !tbaa !139 ; 3 uses
  store i32 %i.lc, ptr %i.kb, align 4, !tbaa !140
  %i.ld = trunc i64 %i.lb to i32                  ; 6 uses
  store i32 %i.ld, ptr %i.ka, align 8, !tbaa !139
  store ptr %i.ky, ptr %i.jz, align 8, !tbaa !138
  %i.le = sub i64 0, %i.lb
  %i.lf = getelementptr inbounds i8, ptr %1, i64 %i.le
  store ptr %i.lf, ptr %i.jy, align 8, !tbaa !137
  %i.lg = sub i32 %i.ld, %i.lc
  %i.lh = icmp ult i32 %i.lg, 8
  br i1 %i.lh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 %i.ld, ptr %i.kb, align 4, !tbaa !140
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %._crit_edge.i.i
  %i.li = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.ld, %bb.co ], [ %i.ld, %bb.cn ]
  %i.lj = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.ld, %bb.co ], [ %i.lc, %bb.cn ]
  %i.lk = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ky, %bb.co ], [ %i.ky, %bb.cn ] ; 3 uses
  store ptr %i.kw, ptr %i.jw, align 8, !tbaa !141
  %i.ll = zext i32 %i.lj to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ll
  %i.ln = icmp ugt ptr %i.kw, %i.lm
  %i.lo = zext i32 %i.li to i64                   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lo
  %i.lq = icmp ult ptr %1, %i.lp
  %i.lr = and i1 %i.ln, %i.lq
  br i1 %i.lr, label %bb.cq, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

bb.cq:                                            ; preds = %bb.cp
  %i.ls = ptrtoint ptr %i.kw to i64
  %i.lt = ptrtoint ptr %i.lk to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = call i64 @llvm.smin.i64(i64 %i.lu, i64 %i.lo)
  %i.lw = trunc i64 %i.lv to i32
  store i32 %i.lw, ptr %i.kb, align 4, !tbaa !140
  br label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i: ; preds = %bb.cq, %bb.cp
  call void @_ZN11duckdb_zstd22ZSTD_ldm_fillHashTableEPNS_10ldmState_tEPKhS3_PKNS_11ldmParams_tE(ptr noundef nonnull %i.jw, ptr noundef %1, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.it)
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !145
  %.not52.i = icmp eq i32 %i.ly, 0
  br i1 %.not52.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i
  %i.lz = load ptr, ptr %i.jy, align 8, !tbaa !146
  %i.ma = ptrtoint ptr %i.kw to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i
  %i.me = phi i32 [ %i.md, %bb.cr ], [ 0, %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i ]
  store i32 %i.me, ptr %i.kt, align 8, !tbaa !144
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread92.i
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 2784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mf, ptr noundef nonnull align 8 dereferenceable(40) %i.jw, i64 40, i1 false), !tbaa.struct !147
  br label %bb.cu

_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread: ; preds = %.thread.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

bb.cu:                                            ; preds = %bb.ct, %bb.bw
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.mg, ptr noundef nonnull align 8 dereferenceable(216) %7, i64 216, i1 false), !tbaa.struct !108
  %i.mh = and i64 %i.im, 4294967295
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread

_ZN11duckdb_zstdL13ZSTDMT_resizeEPNS_13ZSTDMT_CCtx_sEj.exit.thread: ; preds = %bb.ae, %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i, %bb.j, %bb.b, %_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i, %bb.cu, %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread, %bb.bq, %bb.aq
  %.3 = phi i64 [ -64, %_ZN11duckdb_zstdL24ZSTDMT_serialState_resetEPNS_13serialState_tEPNS_19ZSTDMT_bufferPool_sENS_18ZSTD_CCtx_params_sEmPKvmNS_22ZSTD_dictContentType_eE.exit.thread ], [ -64, %bb.bq ], [ -64, %bb.aq ], [ 0, %bb.cu ], [ -64, %_ZN11duckdb_zstdL22ZSTDMT_expandJobsTableEPNS_13ZSTDMT_CCtx_sEj.exit.i ], [ -64, %bb.b ], [ -64, %bb.j ], [ -64, %_ZN11duckdb_zstdL21ZSTDMT_expandCCtxPoolEPNS_15ZSTDMT_CCtxPoolEi.exit.thread.i ], [ -64, %bb.ae ]
  ret i64 %.3
}

declare noundef ptr @_ZN11duckdb_zstd25ZSTD_createCDict_advancedEPKvmNS_21ZSTD_dictLoadMethod_eENS_22ZSTD_dictContentType_eENS_26ZSTD_compressionParametersENS_14ZSTD_customMemE(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8, ptr noundef byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTDMT_nextInputSizeHintEPKNS_13ZSTDMT_CCtx_sE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = select i1 %i.e, i64 0, i64 %i.d
  %spec.select = sub i64 %i.b, %i.f
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd29ZSTDMT_compressStream_genericEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !150
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp eq i32 %3, 0                        ; 3 uses
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.u = load i32, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.x = add nuw i32 %.02329.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.x, %i.r
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL24ZSTDMT_getInputDataInUseEPNS_13ZSTDMT_CCtx_sE.exit.i, label %bb.g, !llvm.loop !155

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.02329.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.02329.i.i, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [368 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd29ZSTDMT_compressStream_genericEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE:bb.a
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !86 ; 8 uses
  br i1 %.not59, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !122
  %.not60 = icmp ult i64 %i.vn, %i.vp
  br i1 %.not60, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %.not61 = icmp eq i32 %spec.store.select7, 0
  %.not62 = icmp eq i64 %i.vn, 0
  %or.cond67 = or i1 %.not61, %.not62
  br i1 %or.cond67, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %bb.t
  %i.vq = icmp eq i32 %spec.store.select7, 2
  br i1 %i.vq, label %bb.v, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

bb.v:                                             ; preds = %bb.u
  %i.vr = load i32, ptr %i.a, align 4, !tbaa !150
  %.not63 = icmp eq i32 %i.vr, 0
  br i1 %.not63, label %._crit_edge, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL23ZSTDMT_tryGetInputRangeEPNS_13ZSTDMT_CCtx_sE.exit.thread132, %bb.t, %bb.v, %bb.s
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 2856 ; 7 uses
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !88 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !46 ; 2 uses
  %i.vw = and i32 %i.vv, %i.vt                    ; 2 uses
  %i.vx = icmp eq i32 %spec.store.select7, 2      ; 3 uses
  %i.vy = zext i1 %i.vx to i32                    ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 2852
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !92
  %i.wb = add i32 %i.wa, %i.vv
  %i.wc = icmp ugt i32 %i.vt, %i.wb
  br i1 %i.wc, label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  br i1 %.not59, label %bb.x, label %..thread100_crit_edge.i

..thread100_crit_edge.i:                          ; preds = %bb.w
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  %.pre102.i = zext i32 %i.vw to i64
  br label %.thread100.i

bb.x:                                             ; preds = %bb.w
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !154 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wi = zext i32 %i.vw to i64                   ; 7 uses
  %i.wj = getelementptr inbounds nuw [368 x i8], ptr %i.wh, i64 %i.wi ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 88
  store ptr %i.wf, ptr %i.wk, align 8, !tbaa !165
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 96
  store i64 %i.vn, ptr %i.wl, align 8, !tbaa !96
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wm, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i64 16, i1 false), !tbaa.struct !166
  %i.wn = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wo = getelementptr inbounds nuw [368 x i8], ptr %i.wn, i64 %i.wi ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.wq, ptr noundef nonnull align 8 dereferenceable(216) %i.wp, i64 216, i1 false), !tbaa.struct !108
  %i.wr = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.ws = icmp eq i32 %i.wr, 0
  br i1 %i.ws, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !115
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.wv = phi ptr [ %i.wu, %bb.y ], [ null, %bb.x ]
  %i.ww = load ptr, ptr %i.wg, align 8, !tbaa !36
  %i.wx = getelementptr inbounds nuw [368 x i8], ptr %i.ww, i64 %i.wi ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 336
  store ptr %i.wv, ptr %i.wy, align 8, !tbaa !167
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !114
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 344
  store i64 %i.xa, ptr %i.xb, align 8, !tbaa !168
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  %i.xd = load ptr, ptr %i.wg, align 8, !tbaa !36 ; 4 uses
  %i.xe = getelementptr inbounds nuw [368 x i8], ptr %i.xd, i64 %i.wi ; 13 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xi = load <2 x ptr>, ptr %i.xg, align 8, !tbaa !38
  %i.xj = shufflevector <2 x ptr> %i.xi, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.xj, ptr %i.xf, align 8, !tbaa !38
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !61
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  store ptr %i.xl, ptr %i.xm, align 8, !tbaa !169
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !170
  %i.xp = load i32, ptr %i.vs, align 8, !tbaa !88 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xe, i64 104
  store i32 %i.xp, ptr %i.xq, align 8, !tbaa !171
  %i.xr = icmp eq i32 %i.xp, 0                    ; 3 uses
  %i.xs = zext i1 %i.xr to i32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xe, i64 108
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !172
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xe, i64 112
  store i32 %i.vy, ptr %i.xu, align 8, !tbaa !173
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !174
  %i.xx = icmp ne i32 %i.xw, 0
  %or.cond.i70 = and i1 %i.vx, %i.xx
  %i.xy = icmp ne i32 %i.xp, 0
  %narrow.i = select i1 %or.cond.i70, i1 %i.xy, i1 false
  %i.xz = zext i1 %narrow.i to i32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xe, i64 360
  store i32 %i.xz, ptr %i.ya, align 8, !tbaa !175
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xe, i64 352
  store i64 0, ptr %i.yb, align 8, !tbaa !95
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !130
  %i.ye = add i64 %i.yd, %i.vn
  store i64 %i.ye, ptr %i.yc, align 8, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, i8 0, i64 24, i1 false)
  br i1 %i.vx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i8 0, i64 16, i1 false)
  store i32 %i.vy, ptr %i.a, align 4, !tbaa !150
  br i1 %i.xr, label %.thread99.i, label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !121
  %..i71 = tail call i64 @llvm.umin.i64(i64 %i.vn, i64 %i.yg) ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.vn
  %i.yi = sub i64 0, %..i71
  %i.yj = getelementptr inbounds i8, ptr %i.yh, i64 %i.yi
  store ptr %i.yj, ptr %i.wd, align 8, !tbaa !157
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %..i71, ptr %i.yk, align 8, !tbaa !156
  %i.yl = icmp ne i64 %i.vn, 0
  %brmerge.i = select i1 %i.yl, i1 true, i1 %i.xr
  br i1 %brmerge.i, label %.thread100.i, label %.critedge.i

.thread99.i:                                      ; preds = %bb.aa
  store i32 0, ptr %i.xv, align 4, !tbaa !174
  br label %.thread100.i

.thread.i:                                        ; preds = %bb.aa
  %i.ym = icmp eq i64 %i.vn, 0
  br i1 %i.ym, label %.critedge.i, label %.thread100.i

.critedge.i:                                      ; preds = %.thread.i, %bb.ab
  %i.yn = load ptr, ptr %i.xh, align 8, !tbaa !176 ; 7 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !127 ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 20 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 48
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !44
  %i.yu = add i32 %i.yr, -1                       ; 2 uses
  store i32 %i.yu, ptr %i.yq, align 4, !tbaa !40
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %i.yv ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.yw, align 8, !tbaa !38 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !39 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i8 0, i64 16, i1 false)
  %i.yx = icmp ult i64 %.sroa.4.0.copyload.i.i.i, %i.yp
  %i.yy = lshr i64 %.sroa.4.0.copyload.i.i.i, 3
  %i.yz = icmp ugt i64 %i.yy, %i.yp
  %.not21.i.i.i = or i1 %i.yx, %i.yz
  br i1 %.not21.i.i.i, label %bb.ad, label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %.sroa.1.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 32
  %.sroa.1.0.copyload.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.229.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 40
  %.sroa.229.0.copyload.i.i.i = load ptr, ptr %.sroa.229.0..sroa_idx.i.i.i, align 8, !tbaa !38
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not4.i.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i.i, null
  br i1 %.not4.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void %.sroa.1.0.copyload.i.i.i(ptr noundef %.sroa.229.0.copyload.i.i.i, ptr noundef nonnull %.sroa.0.0.copyload.i.i.i), !inline_history !177
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i.i.i) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ad, %.critedge.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 24
  %.sroa.0.0.copyload26.i.i.i = load ptr, ptr %i.za, align 8, !tbaa !38 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %.sroa.0.0.copyload26.i.i.i, null
  br i1 %.not.i25.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i
  %.sroa.227.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yn, i64 40
  %.sroa.227.0.copyload.i.i.i = load ptr, ptr %.sroa.227.0..sroa_idx.i.i.i, align 8, !tbaa !38
  %i.zb = tail call noundef ptr %.sroa.0.0.copyload26.i.i.i(ptr noundef %.sroa.227.0.copyload.i.i.i, i64 noundef %i.yp), !inline_history !178
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i

bb.ai:                                            ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i.i
  %i.zc = tail call noalias ptr @malloc(i64 noundef %i.yp) #16
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi ptr [ %i.zb, %bb.ah ], [ %i.zc, %bb.ai ] ; 2 uses
  %i.zd = icmp eq ptr %.0.i.i.i.i, null
  %i.ze = select i1 %i.zd, i64 0, i64 %i.yp
  br label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i

_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i, %bb.ac
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.ze, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.ac ] ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store ptr %.sroa.0.0.i.i.i, ptr %i.zf, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i72, align 8, !tbaa !39
  %i.zg = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %i.zg, label %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xe, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zh, i8 0, i64 16, i1 false)
  %i.zi = tail call noundef i64 @_ZN11duckdb_zstd24ZSTD_writeLastEmptyBlockEPvm(ptr noundef nonnull %.sroa.0.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i)
  br label %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i

_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i: ; preds = %bb.aj, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i
  %.sink.i.i = phi i64 [ %i.zi, %bb.aj ], [ -64, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i.i ]
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i64 %.sink.i.i, ptr %i.zj, align 8, !tbaa !93
  %i.zk = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %i.vs, align 8, !tbaa !88
  br label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

.thread100.i:                                     ; preds = %.thread.i, %.thread99.i, %bb.ab, %..thread100_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre102.i, %..thread100_crit_edge.i ], [ %i.wi, %bb.ab ], [ %i.wi, %.thread99.i ], [ %i.wi, %.thread.i ]
  %i.zm = phi ptr [ %.pre.i, %..thread100_crit_edge.i ], [ %i.xd, %bb.ab ], [ %i.xd, %.thread99.i ], [ %i.xd, %.thread.i ]
  %i.zn = load ptr, ptr %0, align 8, !tbaa !7
  %i.zo = getelementptr inbounds nuw [368 x i8], ptr %i.zm, i64 %.pre-phi.i
  %i.zp = tail call noundef i32 @_ZN11duckdb_zstd11POOL_tryAddEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef %i.zn, ptr noundef nonnull @_ZN11duckdb_zstdL21ZSTDMT_compressionJobEPv, ptr noundef %i.zo)
  %.not97.i = icmp eq i32 %i.zp, 0
  br i1 %.not97.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread100.i
  %i.zq = load i32, ptr %i.vs, align 8, !tbaa !88
  %i.zr = add i32 %i.zq, 1
  store i32 %i.zr, ptr %i.vs, align 8, !tbaa !88
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread100.i
  %storemerge.i = phi i32 [ 0, %bb.ak ], [ 1, %.thread100.i ]
  store i32 %storemerge.i, ptr %i.e, align 8, !tbaa !91
  br label %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit

_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit: ; preds = %bb.al, %_ZN11duckdb_zstdL26ZSTDMT_writeLastEmptyBlockEPNS_21ZSTDMT_jobDescriptionE.exit.i, %._crit_edge, %bb.v, %bb.u
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 2852 ; 5 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !92 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !46
  %i.zw = and i32 %i.zv, %i.zt
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !36 ; 3 uses
  %i.zz = zext i32 %i.zw to i64                   ; 7 uses
  %i.aaa = getelementptr inbounds nuw [368 x i8], ptr %i.zy, i64 %i.zz ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !93 ; 5 uses
  %i.aad = load i64, ptr %i.aaa, align 8, !tbaa !97 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 96
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !96 ; 2 uses
  %i.aag = icmp ult i64 %i.aac, -119
  br i1 %i.aag, label %bb.at, label %bb.am

bb.am:                                            ; preds = %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !88 ; 2 uses
  %i.aaj = icmp ult i32 %i.zt, %i.aai
  br i1 %i.aaj, label %.lr.ph.i.preheader.i, label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.am
  store i32 %i.aai, ptr %i.zs, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i

_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i: ; preds = %.lr.ph.i.preheader.i, %bb.am
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.an

bb.an:                                            ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i
  %i.aal = phi ptr [ %i.zy, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i ], [ %i.abf, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i ]
  %.020.i.i = phi i32 [ 0, %_ZN11duckdb_zstdL30ZSTDMT_waitForAllJobsCompletedEPNS_13ZSTDMT_CCtx_sE.exit.i ], [ %i.abi, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i ] ; 2 uses
  %i.aam = zext i32 %.020.i.i to i64              ; 3 uses
  %i.aan = getelementptr inbounds nuw [368 x i8], ptr %i.aal, i64 %i.aam ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load <2 x i32>, ptr %i.aao, align 8, !tbaa !3
  %i.aaq = load ptr, ptr %i.aak, align 8, !tbaa !37 ; 5 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 56
  %.sroa.0.0.copyload.i.i74 = load ptr, ptr %i.aar, align 8, !tbaa !38 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %i.aan, i64 64
  %.sroa.2.0.copyload.i.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i.i75, align 8, !tbaa !39
  %i.aas = icmp eq ptr %.sroa.0.0.copyload.i.i74, null
  br i1 %i.aas, label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 20 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !40 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !43
  %i.aax = icmp ult i32 %i.aau, %i.aaw
  br i1 %i.aax, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 48
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !44
  %i.aba = add nuw i32 %i.aau, 1
  store i32 %i.aba, ptr %i.aat, align 4, !tbaa !40
  %i.abb = zext i32 %i.aau to i64
  %i.abc = getelementptr inbounds nuw [16 x i8], ptr %i.aaz, i64 %i.abb ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i74, ptr %i.abc, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i.i83 = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  store i64 %.sroa.2.0.copyload.i.i76, ptr %.sroa.4.0..sroa_idx.i.i.i83, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %.sroa.1.0..sroa_idx.i.i.i77 = getelementptr inbounds nuw i8, ptr %i.aaq, i64 32
  %.sroa.1.0.copyload.i.i.i78 = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i77, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i.i79 = icmp eq ptr %.sroa.1.0.copyload.i.i.i78, null
  br i1 %.not4.i.i.i.i79, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aaq, i64 40
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i.i78(ptr noundef %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull %.sroa.0.0.copyload.i.i74), !inline_history !179
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i

bb.as:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i.i74) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i

_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an
  %i.abd = load ptr, ptr %i.zx, align 8, !tbaa !36
  %i.abe = getelementptr inbounds nuw [368 x i8], ptr %i.abd, i64 %i.aam
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.abe, i8 0, i64 368, i1 false)
  %i.abf = load ptr, ptr %i.zx, align 8, !tbaa !36 ; 2 uses
  %i.abg = getelementptr inbounds nuw [368 x i8], ptr %i.abf, i64 %i.aam
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  store <2 x i32> %i.aap, ptr %i.abh, align 8, !tbaa !3
  %i.abi = add i32 %.020.i.i, 1                   ; 2 uses
  %i.abj = load i32, ptr %i.zu, align 8, !tbaa !46
  %.not.i.i80 = icmp ugt i32 %i.abi, %i.abj
  br i1 %.not.i.i80, label %_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit.i, label %bb.an, !llvm.loop !47

_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit.i: ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i.i
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 2864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abk, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.abl, align 8, !tbaa !49
  br label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

bb.at:                                            ; preds = %_ZN11duckdb_zstdL27ZSTDMT_createCompressionJobEPNS_13ZSTDMT_CCtx_sEmNS_17ZSTD_EndDirectiveE.exit
  %i.abm = icmp eq i64 %i.aad, %i.aaf             ; 2 uses
  br i1 %i.abm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aaa, i64 360
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !175
  %.not104.i = icmp eq i32 %i.abo, 0
  br i1 %.not104.i, label %bb.av, label %.thread127.i

.thread127.i:                                     ; preds = %bb.au
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.abq = tail call noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef nonnull %i.abp)
  %i.abr = trunc i64 %i.abq to i32
  %i.abs = load ptr, ptr %i.zx, align 8, !tbaa !36 ; 2 uses
  %i.abt = getelementptr inbounds nuw [368 x i8], ptr %i.abs, i64 %i.zz ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 56
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !180
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 8 ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !93 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abx
  store i32 %i.abr, ptr %i.aby, align 1, !tbaa !3
  %i.abz = add nuw i64 %i.aac, 4
  %i.aca = add i64 %i.abx, 4
  store i64 %i.aca, ptr %i.abw, align 8, !tbaa !93
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abt, i64 360
  store i32 0, ptr %i.acb, align 8, !tbaa !175
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %.not105.i = icmp eq i64 %i.aac, 0
  br i1 %.not105.i, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread127.i
  %.096130.i = phi i64 [ %i.abz, %.thread127.i ], [ %i.aac, %bb.av ] ; 5 uses
  %i.acc = phi ptr [ %i.abs, %.thread127.i ], [ %i.zy, %bb.av ] ; 2 uses
  %i.acd = getelementptr inbounds nuw [368 x i8], ptr %i.acc, i64 %i.zz ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 352
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !95 ; 3 uses
  %i.acg = sub i64 %.096130.i, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !181
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !183 ; 3 uses
  %i.acl = sub i64 %i.aci, %i.ack
  %..i84 = tail call i64 @llvm.umin.i64(i64 %i.acg, i64 %i.acl) ; 4 uses
  %.not106.i = icmp eq i64 %..i84, 0
  br i1 %.not106.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.acm = load ptr, ptr %1, align 8, !tbaa !184
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.ack
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acd, i64 56
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !180
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acn, ptr align 1 %i.acq, i64 %..i84, i1 false)
  %.pre.i85 = load i64, ptr %i.acj, align 8, !tbaa !183
  %.pre117.i = load ptr, ptr %i.zx, align 8, !tbaa !36 ; 2 uses
  %.phi.trans.insert.i86 = getelementptr inbounds nuw [368 x i8], ptr %.pre117.i, i64 %i.zz
  %.phi.trans.insert118.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i86, i64 352
  %.pre119.i = load i64, ptr %.phi.trans.insert118.i, align 8, !tbaa !95
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.acr = phi i64 [ %.pre119.i, %bb.ax ], [ %i.acf, %bb.aw ]
  %i.acs = phi ptr [ %.pre117.i, %bb.ax ], [ %i.acc, %bb.aw ]
  %i.act = phi i64 [ %.pre.i85, %bb.ax ], [ %i.ack, %bb.aw ]
  %i.acu = add i64 %i.act, %..i84
  store i64 %i.acu, ptr %i.acj, align 8, !tbaa !183
  %i.acv = getelementptr inbounds nuw [368 x i8], ptr %i.acs, i64 %i.zz ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 352
  %i.acx = add i64 %i.acr, %..i84                 ; 3 uses
  store i64 %i.acx, ptr %i.acw, align 8, !tbaa !95
  %i.acy = icmp eq i64 %i.acx, %.096130.i
  %or.cond.i87 = select i1 %i.abm, i1 %i.acy, i1 false
  br i1 %or.cond.i87, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !37 ; 5 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.adb, align 8, !tbaa !38 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acv, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !39
  %i.adc = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.adc, label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 20 ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !40 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !43
  %i.adh = icmp ult i32 %i.ade, %i.adg
  br i1 %i.adh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ada, i64 48
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !44
  %i.adk = add nuw i32 %i.ade, 1
  store i32 %i.adk, ptr %i.add, align 4, !tbaa !40
  %i.adl = zext i32 %i.ade to i64
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %i.adj, i64 %i.adl ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.adm, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i88, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.bc:                                            ; preds = %bb.ba
  %.sroa.1.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %.sroa.1.0.copyload.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i, null
  br i1 %.not4.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.2.0..sroa_idx.i112.i = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %.sroa.2.0.copyload.i113.i = load ptr, ptr %.sroa.2.0..sroa_idx.i112.i, align 8, !tbaa !38
  tail call void %.sroa.1.0.copyload.i.i(ptr noundef %.sroa.2.0.copyload.i113.i, ptr noundef nonnull %.sroa.0.0.copyload.i), !inline_history !185
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

bb.be:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i) #14
  br label %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i

_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.az
  %i.adn = load ptr, ptr %i.zx, align 8, !tbaa !36
  %i.ado = getelementptr inbounds nuw [368 x i8], ptr %i.adn, i64 %i.zz
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adp, i8 0, i64 16, i1 false)
  %i.adq = load ptr, ptr %i.zx, align 8, !tbaa !36
  %i.adr = getelementptr inbounds nuw [368 x i8], ptr %i.adq, i64 %i.zz ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store i64 0, ptr %i.ads, align 8, !tbaa !93
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 2880 ; 2 uses
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !85
  %i.adv = add i64 %i.adu, %i.aad
  store i64 %i.adv, ptr %i.adt, align 8, !tbaa !85
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !87
  %i.ady = add i64 %i.adx, %.096130.i
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !87
  %i.adz = load i32, ptr %i.zs, align 4, !tbaa !92
  %i.aea = add i32 %i.adz, 1
  store i32 %i.aea, ptr %i.zs, align 4, !tbaa !92
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %i.adr, i64 352
  %.pre107 = load i64, ptr %.phi.trans.insert106, align 8, !tbaa !95
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i, %bb.ay
  %i.aeb = phi i64 [ %i.acx, %bb.ay ], [ %.pre107, %_ZN11duckdb_zstdL20ZSTDMT_releaseBufferEPNS_19ZSTDMT_bufferPool_sENS_8buffer_sE.exit.i ] ; 2 uses
  %i.aec = icmp ugt i64 %.096130.i, %i.aeb
  br i1 %i.aec, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %bb.bf
  %i.aed = sub nuw i64 %.096130.i, %i.aeb
  br label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

.thread:                                          ; preds = %bb.av, %bb.bf
  %.not116.i = icmp ugt i64 %i.aaf, %i.aad
  br i1 %.not116.i, label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit, label %bb.bh

bb.bh:                                            ; preds = %.thread
  %i.aee = load i32, ptr %i.zs, align 4, !tbaa !92
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 2856
  %i.aeg = load i32, ptr %i.aef, align 8, !tbaa !88
  %i.aeh = icmp ult i32 %i.aee, %i.aeg
  br i1 %i.aeh, label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aei = load i32, ptr %i.e, align 8, !tbaa !91
  %.not107.i = icmp eq i32 %i.aei, 0
  br i1 %.not107.i, label %bb.bj, label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

bb.bj:                                            ; preds = %bb.bi
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !86
  %.not108.i = icmp eq i64 %i.aek, 0
  br i1 %.not108.i, label %bb.bk, label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ael = load i32, ptr %i.a, align 4, !tbaa !150 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 2864
  store i32 %i.ael, ptr %i.aem, align 8, !tbaa !49
  %i.aen = icmp eq i32 %spec.store.select7, 2
  br i1 %i.aen, label %bb.bl, label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

bb.bl:                                            ; preds = %bb.bk
  %.not109.i = icmp eq i32 %i.ael, 0
  %i.aeo = zext i1 %.not109.i to i64
  br label %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit

_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit: ; preds = %_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit.i, %bb.bg, %.thread, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.1.i82 = phi i64 [ 1, %.thread ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ %i.aeo, %bb.bl ], [ 1, %bb.bj ], [ 0, %bb.bk ], [ %i.aed, %bb.bg ], [ %i.aac, %_ZN11duckdb_zstdL29ZSTDMT_releaseAllJobResourcesEPNS_13ZSTDMT_CCtx_sE.exit.i ] ; 2 uses
  %i.aep = load i64, ptr %i.vf, align 8, !tbaa !153
  %i.aeq = load i64, ptr %i.vh, align 8, !tbaa !151
  %i.aer = icmp ult i64 %i.aep, %i.aeq
  %i.aes = tail call i64 @llvm.umax.i64(i64 %.1.i82, i64 1)
  %.1 = select i1 %i.aer, i64 %i.aes, i64 %.1.i82
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit
  %.2 = phi i64 [ -60, %bb.a ], [ %.1, %_ZN11duckdb_zstdL20ZSTDMT_flushProducedEPNS_13ZSTDMT_CCtx_sEPNS_16ZSTD_outBuffer_sEjNS_17ZSTD_EndDirectiveE.exit ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare noundef i64 @_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11duckdb_zstd11POOL_resizeEPNS_10POOL_ctx_sEm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN11duckdb_zstdL23ZSTDMT_expandBufferPoolEPNS_19ZSTDMT_bufferPool_sEj(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43
  %.not = icmp ult i32 %i.c, %1
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !38
  %.sroa.022.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !38 ; 3 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.523.0.copyload = load ptr, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !38 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  tail call fastcc void @_ZN11duckdb_zstdL21ZSTDMT_freeBufferPoolEPNS_19ZSTDMT_bufferPool_sE(ptr noundef nonnull %0)
  %.not.i.i = icmp eq ptr %.sroa.022.0.copyload, null
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i, label %bb.d

_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #15 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr %.sroa.022.0.copyload(ptr noundef %.sroa.523.0.copyload, i64 noundef 56), !inline_history !186 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.j, i8 0, i64 56, i1 false)
  %i.k = zext i32 %1 to i64
  %i.l = shl nuw nsw i64 %i.k, 4                  ; 2 uses
  %i.m = tail call noundef ptr %.sroa.022.0.copyload(ptr noundef %.sroa.523.0.copyload, i64 noundef range(i64 -17179869184, 1580547964561) %i.l), !inline_history !186 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 range(i64 -17179869184, 1580547964561) %i.l, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit17.i

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i
  %i.n = zext i32 %1 to i64
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 -17179869184, 1580547964561) %i.o) #15
  br label %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit17.i

_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit17.i: ; preds = %bb.e, %bb.d
  %.0.i2325.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.e ] ; 8 uses
  %.0.i16.i = phi ptr [ %i.m, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 48
  store ptr %.0.i16.i, ptr %i.q, align 8, !tbaa !44
  %i.r = icmp eq ptr %.0.i16.i, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit17.i
  tail call fastcc void @_ZN11duckdb_zstdL21ZSTDMT_freeBufferPoolEPNS_19ZSTDMT_bufferPool_sE(ptr noundef nonnull %.0.i2325.i)
  br label %_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread

bb.g:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit17.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 16
  store i32 %1, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 20
  store i32 0, ptr %i.u, align 4, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 24
  store <2 x ptr> %i.e, ptr %i.v, align 8, !tbaa !38
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i2325.i, i64 40
  store ptr %.sroa.523.0.copyload, ptr %.sroa.518.0..sroa_idx, align 8, !tbaa !38
  store i64 %i.g, ptr %i.s, align 8, !tbaa !127
  br label %_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread

_ZN11duckdb_zstdL23ZSTDMT_createBufferPoolEjNS_14ZSTD_customMemE.exit.thread: ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i, %bb.f, %bb.g, %bb.b, %bb.a
  %.1 = phi ptr [ %0, %bb.b ], [ null, %bb.a ], [ %.0.i2325.i, %bb.g ], [ null, %bb.f ], [ null, %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE(ptr noundef byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11duckdb_zstd13ZSTD_cycleLogEjNS_13ZSTD_strategyE(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11duckdb_zstd11XXH64_resetEPNS_13XXH64_state_sEy(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef byval(%"struct.duckdb_zstd::ldmParams_t") align 8, i64 noundef) local_unnamed_addr #2

declare void @_ZN11duckdb_zstd22ZSTD_ldm_fillHashTableEPNS_10ldmState_tEPKhS3_PKNS_11ldmParams_tE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef i32 @_ZN11duckdb_zstd11POOL_tryAddEPNS_10POOL_ctx_sEPFvPvES2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN11duckdb_zstdL21ZSTDMT_compressionJobEPv(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::rawSeqStore_t", align 8 ; 8 uses
  %2 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false), !tbaa.struct !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  br label %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = tail call noundef ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 %i.l)
  br label %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit

_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !127, !noalias !188 ; 6 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40, !noalias !188 ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44, !noalias !188
  %i.w = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !40, !noalias !188
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8, !tbaa !38, !noalias !188 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !39, !noalias !188 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !noalias !188
  %i.z = icmp ult i64 %.sroa.4.0.copyload.i.i, %i.q
  %i.aa = lshr i64 %.sroa.4.0.copyload.i.i, 3
  %i.ab = icmp ugt i64 %i.aa, %i.q
  %.not21.i.i = or i1 %i.z, %i.ab
  br i1 %.not21.i.i, label %bb.f, label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i

bb.f:                                             ; preds = %bb.e
  %.sroa.1.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.1.0.copyload.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !188 ; 2 uses
  %.sroa.229.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.229.0.copyload.i.i = load ptr, ptr %.sroa.229.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !188
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not4.i.i.i = icmp eq ptr %.sroa.1.0.copyload.i.i, null
  br i1 %.not4.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %.sroa.1.0.copyload.i.i(ptr noundef %.sroa.229.0.copyload.i.i, ptr noundef nonnull %.sroa.0.0.copyload.i.i), !noalias !188, !inline_history !191
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i.i) #14, !noalias !188
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.0.0.copyload26.i.i = load ptr, ptr %i.ac, align 8, !tbaa !38, !noalias !188 ; 2 uses
  %.not.i25.i.i = icmp eq ptr %.sroa.0.0.copyload26.i.i, null
  br i1 %.not.i25.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i
  %.sroa.227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.227.0.copyload.i.i = load ptr, ptr %.sroa.227.0..sroa_idx.i.i, align 8, !tbaa !38, !noalias !188
  %i.ad = tail call noundef ptr %.sroa.0.0.copyload26.i.i(ptr noundef %.sroa.227.0.copyload.i.i, i64 noundef %i.q), !noalias !188, !inline_history !192
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

bb.k:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i.i
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.q) #16, !noalias !188
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.af = icmp eq ptr %.0.i.i.i, null
  %i.ag = select i1 %i.af, i64 0, i64 %i.q
  br label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i

_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ %i.ag, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.e ]
  %i.ah = udiv i64 %.sroa.4.0.i.i, 12
  br label %_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE.exit

_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE.exit: ; preds = %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i ], [ null, %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %i.ah, %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit.i ], [ 0, %_ZN11duckdb_zstdL14ZSTDMT_getCCtxEPNS_15ZSTDMT_CCtxPoolE.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %.0.i, null                 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.ak, align 8, !tbaa !93
  br label %.thread186

bb.m:                                             ; preds = %_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE.exit
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !39
  %.sroa.059.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.al = icmp eq ptr %.sroa.059.0.copyload, null
  br i1 %i.al, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !176 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !127 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40 ; 2 uses
  %.not.i160 = icmp eq i32 %i.ar, 0
  br i1 %.not.i160, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !40
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.av ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !39 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = icmp ult i64 %.sroa.4.0.copyload.i, %i.ap
  %i.ay = lshr i64 %.sroa.4.0.copyload.i, 3
  %i.az = icmp ugt i64 %i.ay, %i.ap
  %.not21.i = or i1 %i.ax, %i.az
  br i1 %.not21.i, label %bb.p, label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.1.0.copyload.i = load ptr, ptr %.sroa.1.0..sroa_idx.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.229.0.copyload.i = load ptr, ptr %.sroa.229.0..sroa_idx.i, align 8, !tbaa !38
  %.not.i.i161 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i161, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not4.i.i = icmp eq ptr %.sroa.1.0.copyload.i, null
  br i1 %.not4.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void %.sroa.1.0.copyload.i(ptr noundef %.sroa.229.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i), !inline_history !193
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i

bb.s:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i) #14
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload26.i = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %.not.i25.i = icmp eq ptr %.sroa.0.0.copyload26.i, null
  br i1 %.not.i25.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.227.0.copyload.i = load ptr, ptr %.sroa.227.0..sroa_idx.i, align 8, !tbaa !38
  %i.bb = tail call noundef ptr %.sroa.0.0.copyload26.i(ptr noundef %.sroa.227.0.copyload.i, i64 noundef %i.ap), !inline_history !194
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.u:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit.i
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ap) #16
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.u, %bb.t
  %.0.i.i = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ] ; 2 uses
  %i.bd = icmp eq ptr %.0.i.i, null
  %i.be = select i1 %i.bd, i64 0, i64 %i.ap
  br label %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit

_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit: ; preds = %bb.o, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ], [ %.sroa.0.0.copyload.i, %bb.o ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ %i.be, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ], [ %.sroa.4.0.copyload.i, %bb.o ] ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.i, null
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.bg, align 8, !tbaa !93
  br label %.thread186

bb.w:                                             ; preds = %_ZN11duckdb_zstdL16ZSTDMT_getBufferEPNS_19ZSTDMT_bufferPool_sE.exit
  store ptr %.sroa.0.0.i, ptr %i.ai, align 8, !tbaa !38
  store i64 %.sroa.4.0.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !39
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m
  %.sroa.059.0 = phi ptr [ %.sroa.0.0.i, %bb.w ], [ %.sroa.059.0.copyload, %bb.m ] ; 4 uses
  %.sroa.9.0 = phi i64 [ %.sroa.4.0.i, %bb.w ], [ %.sroa.9.0.copyload, %bb.m ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !119
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = icmp eq ptr %.sroa.0.0, null
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -64, ptr %i.bl, align 8, !tbaa !93
  br label %.thread186

bb.z:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !171
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.bo, align 4, !tbaa !132
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  store i32 2, ptr %i.bh, align 8, !tbaa !119
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 0, ptr %i.bp, align 4, !tbaa !99
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !167 ; 2 uses
  %.not143 = icmp eq ptr %i.br, null
  br i1 %.not143, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !168
  %i.bu = call noundef i64 @_ZN11duckdb_zstd36ZSTD_compressBegin_advanced_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef nonnull %.0.i, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.br, ptr noundef nonnull %2, i64 noundef %i.bt) ; 2 uses
  %i.bv = icmp ult i64 %i.bu, -119
  br i1 %i.bv, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !93
  br label %.thread186

bb.ae:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !172
  %.not144 = icmp eq i32 %i.by, 0                 ; 2 uses
  %.in.v = select i1 %.not144, i64 96, i64 344
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.bz = load i64, ptr %.in, align 8, !tbaa !159
  %i.ca = zext i1 %.not144 to i32
  %i.cb = call noundef i64 @_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi(ptr noundef nonnull %2, i32 noundef 1000, i32 noundef %i.ca) ; 2 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !93
  br label %.thread186

bb.ag:                                            ; preds = %bb.ae
  %i.ce = load i32, ptr %i.bx, align 4, !tbaa !172
  %.not147 = icmp eq i32 %i.ce, 0
  br i1 %.not147, label %bb.ah, label %.thread184

bb.ah:                                            ; preds = %bb.ag
  %i.cf = call noundef i64 @_ZN11duckdb_zstd28ZSTD_CCtxParams_setParameterEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_cParameterEi(ptr noundef nonnull %2, i32 noundef 1012, i32 noundef 0) ; 2 uses
  %i.cg = icmp ult i64 %i.cf, -119
  br i1 %i.cg, label %.thread184, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !93
  br label %.thread186

.thread184:                                       ; preds = %bb.ah, %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !195
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !196
  %i.cm = call noundef i64 @_ZN11duckdb_zstd36ZSTD_compressBegin_advanced_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef nonnull %.0.i, ptr noundef %i.cj, i64 noundef %i.cl, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %2, i64 noundef %i.bz) ; 2 uses
  %i.cn = icmp ult i64 %i.cm, -119
  br i1 %i.cn, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %.thread184
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !93
  br label %.thread186

.thread:                                          ; preds = %bb.ac, %.thread184
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !170 ; 14 uses
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <3 x i64> zeroinitializer, ptr %.sroa.2178.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39 ; 5 uses
  %i.cs = load i32, ptr %i.bm, align 8, !tbaa !171 ; 2 uses
  store ptr %.sroa.0.0, ptr %1, align 8
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.8.0, ptr %.sroa.3179.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 2424 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !131 ; 2 uses
  %i.cv = icmp uge i32 %i.cu, %i.cs
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i32 %i.cu, %i.cs
  br i1 %i.cw, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 104 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !197
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 224 ; 4 uses
  %i.db = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.db, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !141 ; 2 uses
  %.not.i.i163 = icmp eq ptr %.sroa.0.0.copyload, %i.dc
  br i1 %.not.i.i163, label %._crit_edge.i.i, label %bb.an

._crit_edge.i.i:                                  ; preds = %bb.am
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 240
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !138
  %.phi.trans.insert45.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 252
  %.pre46.i.i = load i32, ptr %.phi.trans.insert45.i.i, align 4, !tbaa !140
  %.phi.trans.insert47.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 248
  %.pre48.i.i = load i32, ptr %.phi.trans.insert47.i.i, align 8, !tbaa !139
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 232 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !137 ; 4 uses
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 248 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !139 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 252 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !140
  %i.dl = trunc i64 %i.dh to i32                  ; 6 uses
  store i32 %i.dl, ptr %i.di, align 8, !tbaa !139
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 240
  store ptr %i.de, ptr %i.dm, align 8, !tbaa !138
  %i.dn = sub i64 0, %i.dh
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.dn
  store ptr %i.do, ptr %i.dd, align 8, !tbaa !137
  %i.dp = sub i32 %i.dl, %i.dj
  %i.dq = icmp ult i32 %i.dp, 8
  br i1 %i.dq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !140
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i
  %i.dr = phi i32 [ %.pre48.i.i, %._crit_edge.i.i ], [ %i.dl, %bb.ao ], [ %i.dl, %bb.an ]
  %i.ds = phi i32 [ %.pre46.i.i, %._crit_edge.i.i ], [ %i.dl, %bb.ao ], [ %i.dj, %bb.an ]
  %i.dt = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.ao ], [ %i.de, %bb.an ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 3 uses
  store ptr %i.du, ptr %i.da, align 8, !tbaa !141
  %i.dv = zext i32 %i.ds to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.dx = icmp ugt ptr %i.du, %i.dw
  %i.dy = zext i32 %i.dr to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dy
  %i.ea = icmp ult ptr %.sroa.0.0.copyload, %i.dz
  %i.eb = and i1 %i.dx, %i.ea
  br i1 %i.eb, label %bb.aq, label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 252
  %i.ed = ptrtoint ptr %i.du to i64
  %i.ee = ptrtoint ptr %i.dt to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = call i64 @llvm.smin.i64(i64 %i.ef, i64 %i.dy)
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !140
  br label %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i

_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i: ; preds = %bb.aq, %bb.ap, %bb.al
  %i.ei = call noundef i64 @_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm(ptr noundef nonnull %i.da, ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.cx, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 2440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %i.da, i64 40, i1 false), !tbaa.struct !147
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL18ZSTD_window_updateEPNS_13ZSTD_window_tEPKvmi.exit.i, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !198
  %i.em = icmp ne i32 %i.el, 0
  %i.en = icmp ne i64 %.sroa.2.0.copyload, 0
  %or.cond.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cq, i64 2336
  %i.ep = call noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef nonnull %i.eo, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.thread
  %i.eq = load i32, ptr %i.ct, align 8, !tbaa !131
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.ct, align 8, !tbaa !131
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !199 ; 2 uses
  %.not.i162 = icmp eq i64 %i.et, 0
  br i1 %.not.i162, label %_ZN11duckdb_zstdL25ZSTDMT_serialState_updateEPNS_13serialState_tEPNS_11ZSTD_CCtx_sENS_13rawSeqStore_tENS_7range_tEj.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load ptr, ptr %1, align 8, !tbaa !201
  call void @_ZN11duckdb_zstd31ZSTD_referenceExternalSequencesEPNS_11ZSTD_CCtx_sEPNS_6rawSeqEm(ptr noundef nonnull %.0.i, ptr noundef %i.eu, i64 noundef %i.et)
  br label %_ZN11duckdb_zstdL25ZSTDMT_serialState_updateEPNS_13serialState_tEPNS_11ZSTD_CCtx_sENS_13rawSeqStore_tENS_7range_tEj.exit

_ZN11duckdb_zstdL25ZSTDMT_serialState_updateEPNS_13serialState_tEPNS_11ZSTD_CCtx_sENS_13rawSeqStore_tENS_7range_tEj.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !172
  %.not151 = icmp eq i32 %i.ew, 0
  br i1 %.not151, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZN11duckdb_zstdL25ZSTDMT_serialState_updateEPNS_13serialState_tEPNS_11ZSTD_CCtx_sENS_13rawSeqStore_tENS_7range_tEj.exit
  %i.ex = load ptr, ptr %i.cr, align 8, !tbaa !165
  %i.ey = call noundef i64 @_ZN11duckdb_zstd28ZSTD_compressContinue_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %.0.i, ptr noundef nonnull %.sroa.059.0, i64 noundef %.sroa.9.0, ptr noundef %i.ex, i64 noundef 0) ; 2 uses
  %i.ez = icmp ult i64 %i.ey, -119
  br i1 %i.ez, label %.thread188, label %bb.aw

.thread188:                                       ; preds = %bb.av
  call void @_ZN11duckdb_zstd23ZSTD_invalidateRepCodesEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !93
  br label %.thread186

bb.ax:                                            ; preds = %.thread188, %_ZN11duckdb_zstdL25ZSTDMT_serialState_updateEPNS_13serialState_tEPNS_11ZSTD_CCtx_sENS_13rawSeqStore_tENS_7range_tEj.exit
  %i.fb = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !96
  %i.fc = add i64 %i.fb, 524287
  %i.fd = lshr i64 %i.fc, 19                      ; 2 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %i.ff = load ptr, ptr %i.cr, align 8, !tbaa !165 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 %.sroa.9.0 ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ax
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = and i64 %i.fd, 2147483647
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 2 uses
  %.0135211 = phi ptr [ %i.ff, %.lr.ph ], [ %i.fo, %bb.az ] ; 2 uses
  %.0137210 = phi ptr [ %.sroa.059.0, %.lr.ph ], [ %i.fp, %bb.az ] ; 3 uses
  %i.fk = ptrtoint ptr %.0137210 to i64
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = call noundef i64 @_ZN11duckdb_zstd28ZSTD_compressContinue_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %.0.i, ptr noundef %.0137210, i64 noundef %i.fl, ptr noundef %.0135211, i64 noundef 524288) ; 4 uses
  %i.fn = icmp ult i64 %i.fm, -119
  br i1 %i.fn, label %bb.az, label %.thread201

.thread201:                                       ; preds = %bb.ay
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !93
  br label %.thread186

bb.az:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %.0135211, i64 524288 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0137210, i64 %i.fm ; 2 uses
  %i.fq = load i64, ptr %i.fj, align 8, !tbaa !93
  %i.fr = add i64 %i.fq, %i.fm
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !93
  %i.fs = shl nuw nsw i64 %indvars.iv, 19
  store i64 %i.fs, ptr %0, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.az, %bb.ax
  %.0137.lcssa = phi ptr [ %.sroa.059.0, %bb.ax ], [ %i.fp, %bb.az ] ; 3 uses
  %.0135.lcssa = phi ptr [ %i.ff, %bb.ax ], [ %i.fo, %bb.az ] ; 2 uses
  %i.ft = icmp sgt i32 %i.fe, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !173 ; 2 uses
  %i.fx = or i32 %i.fw, %i.fu
  %.not153 = icmp eq i32 %i.fx, 0
  br i1 %.not153, label %.thread197, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge
  %i.fy = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !96 ; 2 uses
  %i.fz = and i64 %i.fy, 524287                   ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  %i.gb = icmp ugt i64 %i.fy, 524287
  %i.gc = and i1 %i.gb, %i.ga
  %i.gd = select i1 %i.gc, i64 524288, i64 %i.fz  ; 2 uses
  %.not154 = icmp eq i32 %i.fw, 0
  %i.ge = ptrtoint ptr %i.fg to i64
  %i.gf = ptrtoint ptr %.0137.lcssa to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  br i1 %.not154, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gh = call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %.0.i, ptr noundef %.0137.lcssa, i64 noundef %i.gg, ptr noundef %.0135.lcssa, i64 noundef %i.gd)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gi = call noundef i64 @_ZN11duckdb_zstd28ZSTD_compressContinue_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %.0.i, ptr noundef %.0137.lcssa, i64 noundef %i.gg, ptr noundef %.0135.lcssa, i64 noundef %i.gd)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gj = phi i64 [ %i.gh, %bb.bb ], [ %i.gi, %bb.bc ] ; 3 uses
  %i.gk = icmp ult i64 %i.gj, -119
  br i1 %i.gk, label %.thread197, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !93
  br label %.thread186

.thread197:                                       ; preds = %bb.bd, %._crit_edge
  %.2200 = phi i64 [ %i.gj, %bb.bd ], [ 0, %._crit_edge ]
  call void @_ZN11duckdb_zstd15ZSTD_CCtx_traceEPNS_11ZSTD_CCtx_sEm(ptr noundef nonnull %.0.i, i64 noundef 0)
  br label %.thread186

.thread186:                                       ; preds = %bb.be, %bb.aj, %bb.ai, %bb.af, %.thread201, %bb.aw, %bb.ad, %.thread197, %bb.y, %bb.v, %bb.l
  %.3 = phi i64 [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.y ], [ %.2200, %.thread197 ], [ 0, %bb.be ], [ 0, %bb.aw ], [ 0, %bb.ad ], [ 0, %.thread201 ], [ 0, %bb.af ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !170 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !171 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 2424 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !131
  %.not.i164 = icmp ugt i32 %i.gr, %i.gp
  br i1 %.not.i164, label %_ZN11duckdb_zstdL33ZSTDMT_serialState_ensureFinishedEPNS_13serialState_tEjm.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread186
  %i.gs = add i32 %i.gp, 1
  store i32 %i.gs, ptr %i.gq, align 8, !tbaa !131
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 2440
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !141
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 2448
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !137
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = trunc i64 %i.gz to i32                  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 2468
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !140
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 2464
  store i32 %i.ha, ptr %i.hc, align 8, !tbaa !139
  br label %_ZN11duckdb_zstdL33ZSTDMT_serialState_ensureFinishedEPNS_13serialState_tEjm.exit

_ZN11duckdb_zstdL33ZSTDMT_serialState_ensureFinishedEPNS_13serialState_tEjm.exit: ; preds = %.thread186, %bb.bf
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !169 ; 5 uses
  %i.he = mul nuw i64 %.sroa.8.0, 12
  %i.hf = icmp eq ptr %.sroa.0.0, null
  br i1 %i.hf, label %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN11duckdb_zstdL33ZSTDMT_serialState_ensureFinishedEPNS_13serialState_tEjm.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 20 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !40 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !43
  %i.hk = icmp ult i32 %i.hh, %i.hj
  br i1 %i.hk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.hn = add nuw i32 %i.hh, 1
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !40
  %i.ho = zext i32 %i.hh to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ho ; 2 uses
  store ptr %.sroa.0.0, ptr %i.hp, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx.i.i169 = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %i.he, ptr %.sroa.4.0..sroa_idx.i.i169, align 8, !tbaa !39
  br label %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit

bb.bi:                                            ; preds = %bb.bg
  %.sroa.1.0..sroa_idx.i.i166 = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %.sroa.1.0.copyload.i.i167 = load ptr, ptr %.sroa.1.0..sroa_idx.i.i166, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i168 = icmp eq ptr %.sroa.1.0.copyload.i.i167, null
  br i1 %.not4.i.i.i168, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !38
  call void %.sroa.1.0.copyload.i.i167(ptr noundef %.sroa.2.0.copyload.i.i, ptr noundef nonnull %.sroa.0.0), !inline_history !203
  br label %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit

bb.bk:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %.sroa.0.0) #14
  br label %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit

_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit: ; preds = %_ZN11duckdb_zstdL33ZSTDMT_serialState_ensureFinishedEPNS_13serialState_tEjm.exit, %bb.bh, %bb.bj, %bb.bk
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !187 ; 3 uses
  br i1 %i.aj, label %_ZN11duckdb_zstdL18ZSTDMT_releaseCCtxEPNS_15ZSTDMT_CCtxPoolEPNS_11ZSTD_CCtx_sE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !106 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !56
  %i.hv = icmp slt i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !52
  %i.hy = add nsw i32 %i.hs, 1
  store i32 %i.hy, ptr %i.hr, align 8, !tbaa !106
  %i.hz = sext i32 %i.hs to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hz
  store ptr %.0.i, ptr %i.ia, align 8, !tbaa !57
  br label %_ZN11duckdb_zstdL18ZSTDMT_releaseCCtxEPNS_15ZSTDMT_CCtxPoolEPNS_11ZSTD_CCtx_sE.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ib = call noundef i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i) ; 0 uses
  br label %_ZN11duckdb_zstdL18ZSTDMT_releaseCCtxEPNS_15ZSTDMT_CCtxPoolEPNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstdL18ZSTDMT_releaseCCtxEPNS_15ZSTDMT_CCtxPoolEPNS_11ZSTD_CCtx_sE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTDMT_releaseSeqEPNS_19ZSTDMT_bufferPool_sENS_13rawSeqStore_tE.exit, %bb.bm, %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !93
  %i.ie = add i64 %i.id, %.3
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !93
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !96
  store i64 %i.ig, ptr %0, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare noundef i64 @_ZN11duckdb_zstd24ZSTD_writeLastEmptyBlockEPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd36ZSTD_compressBegin_advanced_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd28ZSTD_compressContinue_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN11duckdb_zstd23ZSTD_invalidateRepCodesEPNS_11ZSTD_CCtx_sE(ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN11duckdb_zstd15ZSTD_CCtx_traceEPNS_11ZSTD_CCtx_sEm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd26ZSTD_ldm_generateSequencesEPNS_10ldmState_tEPNS_13rawSeqStore_tEPKNS_11ldmParams_tEPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN11duckdb_zstd31ZSTD_referenceExternalSequencesEPNS_11ZSTD_CCtx_sEPNS_6rawSeqEm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN11duckdb_zstd13ZSTDMT_CCtx_sE", !9, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !17, i64 256, !17, i64 264, !4, i64 272, !24, i64 280, !27, i64 320, !29, i64 344, !34, i64 2824, !4, i64 2848, !4, i64 2852, !4, i64 2856, !4, i64 2860, !4, i64 2864, !33, i64 2872, !33, i64 2880, !33, i64 2888, !23, i64 2896, !35, i64 2920, !35, i64 2928, !4, i64 2936}
!9 = !{!"p1 _ZTSN11duckdb_zstd10POOL_ctx_sE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN11duckdb_zstd19ZSTDMT_bufferPool_sE", !10, i64 0}
!12 = !{!"_ZTSN11duckdb_zstd18ZSTD_CCtx_params_sE", !13, i64 0, !14, i64 4, !16, i64 32, !4, i64 44, !4, i64 48, !17, i64 56, !4, i64 64, !18, i64 68, !19, i64 72, !4, i64 76, !17, i64 80, !4, i64 88, !4, i64 92, !20, i64 96, !4, i64 120, !21, i64 124, !21, i64 128, !22, i64 132, !4, i64 136, !19, i64 140, !19, i64 144, !4, i64 148, !23, i64 152, !19, i64 176, !4, i64 180, !10, i64 184, !10, i64 192, !17, i64 200, !19, i64 208}
!13 = !{!"_ZTSN11duckdb_zstd13ZSTD_format_eE", !5, i64 0}
!14 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !15, i64 24}
!15 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd20ZSTD_frameParametersE", !4, i64 0, !4, i64 4, !4, i64 8}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd21ZSTD_dictAttachPref_eE", !5, i64 0}
!19 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !5, i64 0}
!20 = !{!"_ZTSN11duckdb_zstd11ldmParams_tE", !19, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!21 = !{!"_ZTSN11duckdb_zstd17ZSTD_bufferMode_eE", !5, i64 0}
!22 = !{!"_ZTSN11duckdb_zstd21ZSTD_sequenceFormat_eE", !5, i64 0}
!23 = !{!"_ZTSN11duckdb_zstd14ZSTD_customMemE", !10, i64 0, !10, i64 8, !10, i64 16}
!24 = !{!"_ZTSN11duckdb_zstd8inBuff_tE", !25, i64 0, !26, i64 16, !17, i64 32}
!25 = !{!"_ZTSN11duckdb_zstd7range_tE", !10, i64 0, !17, i64 8}
!26 = !{!"_ZTSN11duckdb_zstd8buffer_sE", !10, i64 0, !17, i64 8}
!27 = !{!"_ZTSN11duckdb_zstd11roundBuff_tE", !28, i64 0, !17, i64 8, !17, i64 16}
!28 = !{!"p1 omnipotent char", !10, i64 0}
!29 = !{!"_ZTSN11duckdb_zstd13serialState_tE", !4, i64 0, !4, i64 4, !12, i64 8, !30, i64 224, !32, i64 2336, !4, i64 2424, !4, i64 2428, !4, i64 2432, !31, i64 2440}
!30 = !{!"_ZTSN11duckdb_zstd10ldmState_tE", !31, i64 0, !10, i64 40, !4, i64 48, !28, i64 56, !5, i64 64, !5, i64 576}
!31 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !28, i64 0, !28, i64 8, !28, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!32 = !{!"_ZTSN11duckdb_zstd13XXH64_state_sE", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !5, i64 40, !4, i64 72, !5, i64 76}
!33 = !{!"long long", !5, i64 0}
!34 = !{!"_ZTSN11duckdb_zstd12rsyncState_tE", !17, i64 0, !17, i64 8, !17, i64 16}
!35 = !{!"p1 _ZTSN11duckdb_zstd12ZSTD_CDict_sE", !10, i64 0}
!36 = !{!8, !10, i64 8}
!37 = !{!8, !11, i64 16}
!38 = !{!10, !10, i64 0}
!39 = !{!17, !17, i64 0}
!40 = !{!41, !4, i64 20}
!41 = !{!"_ZTSN11duckdb_zstd19ZSTDMT_bufferPool_sE", !4, i64 0, !17, i64 8, !4, i64 16, !4, i64 20, !23, i64 24, !42, i64 48}
!42 = !{!"p1 _ZTSN11duckdb_zstd8buffer_sE", !10, i64 0}
!43 = !{!41, !4, i64 16}
!44 = !{!41, !42, i64 48}
!45 = distinct !{null, null, null}
!46 = !{!8, !4, i64 2848}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!8, !4, i64 2864}
!50 = distinct !{null, null}
!51 = !{!8, !10, i64 24}
!52 = !{!53, !54, i64 40}
!53 = !{!"_ZTSN11duckdb_zstd15ZSTDMT_CCtxPoolE", !4, i64 0, !4, i64 4, !4, i64 8, !23, i64 16, !54, i64 40}
!54 = !{!"p2 _ZTSN11duckdb_zstd11ZSTD_CCtx_sE", !55, i64 0}
!55 = !{!"any p2 pointer", !10, i64 0}
!56 = !{!53, !4, i64 4}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN11duckdb_zstd11ZSTD_CCtx_sE", !10, i64 0}
!59 = distinct !{!59, !48}
!60 = distinct !{null, null}
!61 = !{!8, !11, i64 32}
!62 = !{!29, !10, i64 264}
!63 = distinct !{null, null}
!64 = !{!29, !28, i64 280}
!65 = !{!8, !35, i64 2920}
!66 = !{!8, !28, i64 320}
!67 = distinct !{null}
!68 = !{!26, !10, i64 0}
!69 = distinct !{!69, !48}
!70 = !{!26, !17, i64 8}
!71 = distinct !{!71, !48, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !48, !73, !72}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48, !72, !73}
!77 = distinct !{!77, !48, !73, !72}
!78 = !{!8, !17, i64 328}
!79 = !{!8, !4, i64 44}
!80 = !{!12, !4, i64 44}
!81 = !{!8, !4, i64 84}
!82 = !{!14, !4, i64 0}
!83 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !84}
!84 = !{!15, !15, i64 0}
!85 = !{!8, !33, i64 2880}
!86 = !{!8, !17, i64 312}
!87 = !{!8, !33, i64 2888}
!88 = !{!8, !4, i64 2856}
!89 = !{!90, !4, i64 32}
!90 = !{!"_ZTSN11duckdb_zstd21ZSTD_frameProgressionE", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !4, i64 32, !4, i64 36}
!91 = !{!8, !4, i64 272}
!92 = !{!8, !4, i64 2852}
!93 = !{!94, !17, i64 8}
!94 = !{!"_ZTSN11duckdb_zstd21ZSTDMT_jobDescriptionE", !17, i64 0, !17, i64 8, !4, i64 16, !4, i64 20, !10, i64 24, !11, i64 32, !11, i64 40, !10, i64 48, !26, i64 56, !25, i64 72, !25, i64 88, !4, i64 104, !4, i64 108, !4, i64 112, !12, i64 120, !35, i64 336, !33, i64 344, !17, i64 352, !4, i64 360}
!95 = !{!94, !17, i64 352}
!96 = !{!94, !17, i64 96}
!97 = !{!94, !17, i64 0}
!98 = distinct !{!98, !48}
!99 = !{!12, !4, i64 76}
!100 = !{!8, !4, i64 116}
!101 = distinct !{null, null, null, null}
!102 = distinct !{null, null, null, null}
!103 = distinct !{null, null, null, null}
!104 = distinct !{null, null, null, null}
!105 = distinct !{null, null, null, null, null}
!106 = !{!53, !4, i64 8}
!107 = !{!12, !17, i64 80}
!108 = !{i64 0, i64 4, !109, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !84, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3, i64 44, i64 4, !3, i64 48, i64 4, !3, i64 56, i64 8, !39, i64 64, i64 4, !3, i64 68, i64 4, !110, i64 72, i64 4, !111, i64 76, i64 4, !3, i64 80, i64 8, !39, i64 88, i64 4, !3, i64 92, i64 4, !3, i64 96, i64 4, !111, i64 100, i64 4, !3, i64 104, i64 4, !3, i64 108, i64 4, !3, i64 112, i64 4, !3, i64 116, i64 4, !3, i64 120, i64 4, !3, i64 124, i64 4, !112, i64 128, i64 4, !112, i64 132, i64 4, !113, i64 136, i64 4, !3, i64 140, i64 4, !111, i64 144, i64 4, !111, i64 148, i64 4, !3, i64 152, i64 8, !38, i64 160, i64 8, !38, i64 168, i64 8, !38, i64 176, i64 4, !111, i64 180, i64 4, !3, i64 184, i64 8, !38, i64 192, i64 8, !38, i64 200, i64 8, !39, i64 208, i64 4, !111}
!109 = !{!13, !13, i64 0}
!110 = !{!18, !18, i64 0}
!111 = !{!19, !19, i64 0}
!112 = !{!21, !21, i64 0}
!113 = !{!22, !22, i64 0}
!114 = !{!8, !33, i64 2872}
!115 = !{!8, !35, i64 2928}
!116 = !{!12, !4, i64 88}
!117 = !{!12, !15, i64 28}
!118 = !{!12, !4, i64 4}
!119 = !{!12, !19, i64 96}
!120 = !{!12, !4, i64 8}
!121 = !{!8, !17, i64 264}
!122 = !{!8, !17, i64 256}
!123 = !{!12, !4, i64 92}
!124 = !{!8, !17, i64 2824}
!125 = !{!8, !17, i64 2832}
!126 = !{!8, !17, i64 2840}
!127 = !{!41, !17, i64 8}
!128 = !{!8, !19, i64 136}
!129 = distinct !{null}
!130 = !{!8, !17, i64 336}
!131 = !{!29, !4, i64 2424}
!132 = !{!12, !4, i64 36}
!133 = !{!12, !4, i64 100}
!134 = !{!12, !4, i64 104}
!135 = !{!29, !4, i64 108}
!136 = !{!29, !4, i64 112}
!137 = !{!31, !28, i64 8}
!138 = !{!31, !28, i64 16}
!139 = !{!31, !4, i64 24}
!140 = !{!31, !4, i64 28}
!141 = !{!31, !28, i64 0}
!142 = distinct !{null, null}
!143 = distinct !{null, null}
!144 = !{!29, !4, i64 272}
!145 = !{!12, !4, i64 48}
!146 = !{!29, !28, i64 232}
!147 = !{i64 0, i64 8, !148, i64 8, i64 8, !148, i64 16, i64 8, !148, i64 24, i64 4, !3, i64 28, i64 4, !3, i64 32, i64 4, !3}
!148 = !{!28, !28, i64 0}
!149 = !{!29, !17, i64 88}
!150 = !{!8, !4, i64 2860}
!151 = !{!152, !17, i64 8}
!152 = !{!"_ZTSN11duckdb_zstd15ZSTD_inBuffer_sE", !10, i64 0, !17, i64 8, !17, i64 16}
!153 = !{!152, !17, i64 16}
!154 = !{!8, !10, i64 296}
!155 = distinct !{!155, !48}
!156 = !{!8, !17, i64 288}
!157 = !{!8, !10, i64 280}
!158 = !{!8, !4, i64 132}
!159 = !{!5, !5, i64 0}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !162}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !48}
!165 = !{!94, !10, i64 88}
!166 = !{i64 0, i64 8, !38, i64 8, i64 8, !39}
!167 = !{!94, !35, i64 336}
!168 = !{!94, !33, i64 344}
!169 = !{!94, !11, i64 40}
!170 = !{!94, !10, i64 48}
!171 = !{!94, !4, i64 104}
!172 = !{!94, !4, i64 108}
!173 = !{!94, !4, i64 112}
!174 = !{!8, !4, i64 76}
!175 = !{!94, !4, i64 360}
!176 = !{!94, !11, i64 32}
!177 = distinct !{null, null, null, null}
!178 = distinct !{null, null, null, null}
!179 = distinct !{null, null, null, null}
!180 = !{!94, !10, i64 56}
!181 = !{!182, !17, i64 8}
!182 = !{!"_ZTSN11duckdb_zstd16ZSTD_outBuffer_sE", !10, i64 0, !17, i64 8, !17, i64 16}
!183 = !{!182, !17, i64 16}
!184 = !{!182, !10, i64 0}
!185 = distinct !{null, null, null}
!186 = distinct !{null, null}
!187 = !{!94, !10, i64 24}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE: argument 0"}
!190 = distinct !{!190, !"_ZN11duckdb_zstdL13ZSTDMT_getSeqEPNS_19ZSTDMT_bufferPool_sE"}
!191 = distinct !{null, null, null}
!192 = distinct !{null, null, null}
!193 = distinct !{null, null}
!194 = distinct !{null, null}
!195 = !{!94, !10, i64 72}
!196 = !{!94, !17, i64 80}
!197 = !{!29, !19, i64 104}
!198 = !{!29, !4, i64 44}
!199 = !{!200, !17, i64 24}
!200 = !{!"_ZTSN11duckdb_zstd13rawSeqStore_tE", !10, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!201 = !{!200, !10, i64 0}
!202 = distinct !{!202, !48}
!203 = distinct !{null, null, null}
end_hunk_1
