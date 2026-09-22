Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v05?download=true
inline.NumInlined: 338
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.BITv05_DStream_t = type { i64, i32, ptr, ptr }
%struct.sortedSymbol_t = type { i8, i8 }

@HUFv05_decompress.decompress = internal unnamed_addr constant [3 x ptr] [ptr @HUFv05_decompress4X2, ptr @HUFv05_decompress4X4, ptr null], align 16
@algoTime = internal unnamed_addr constant [16 x [3 x %struct.algo_time_t]] [[3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 38, i32 130 }, %struct.algo_time_t { i32 1313, i32 74 }, %struct.algo_time_t { i32 2151, i32 38 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 448, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 41 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 556, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 47 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 714, i32 128 }, %struct.algo_time_t { i32 1418, i32 74 }, %struct.algo_time_t { i32 2436, i32 53 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 883, i32 128 }, %struct.algo_time_t { i32 1437, i32 74 }, %struct.algo_time_t { i32 2464, i32 61 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 897, i32 128 }, %struct.algo_time_t { i32 1515, i32 75 }, %struct.algo_time_t { i32 2622, i32 68 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 926, i32 128 }, %struct.algo_time_t { i32 1613, i32 75 }, %struct.algo_time_t { i32 2730, i32 75 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 947, i32 128 }, %struct.algo_time_t { i32 1729, i32 77 }, %struct.algo_time_t { i32 3359, i32 77 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1107, i32 128 }, %struct.algo_time_t { i32 2083, i32 81 }, %struct.algo_time_t { i32 4006, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1177, i32 128 }, %struct.algo_time_t { i32 2379, i32 87 }, %struct.algo_time_t { i32 4785, i32 88 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1242, i32 128 }, %struct.algo_time_t { i32 2415, i32 93 }, %struct.algo_time_t { i32 5155, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1349, i32 128 }, %struct.algo_time_t { i32 2644, i32 106 }, %struct.algo_time_t { i32 5260, i32 106 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1455, i32 128 }, %struct.algo_time_t { i32 2422, i32 124 }, %struct.algo_time_t { i32 4174, i32 124 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 722, i32 128 }, %struct.algo_time_t { i32 1891, i32 145 }, %struct.algo_time_t { i32 1936, i32 146 }]], align 16
@HUFv05_readStats.l = internal unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 7, i32 8, i32 15, i32 16, i32 31, i32 32, i32 63, i32 64, i32 127, i32 128], align 16
@ZSTDv05_decodeSequence.offsetPrefix = internal unnamed_addr constant [32 x i32] [i32 1, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@ZSTDv05_execSequence.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZSTDv05_execSequence.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @FSEv05_createDTable(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %0, i32 15)
  %i.a = shl nuw nsw i32 4, %spec.store.select
  %i.b = add nuw nsw i32 %i.a, 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #26
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @FSEv05_freeDTable(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -46, 1) i64 @FSEv05_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = lshr i32 %i.c, 1
  %i.f = lshr i32 %i.c, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = icmp ugt i32 %2, 255
  br i1 %i.i, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %3, 12
  br i1 %i.j, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %2, 1                    ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.b, i8 0, i64 %i.l, i1 false)
  %sext = shl nuw nsw i32 32768, %3
  %i.m = lshr exact i32 %sext, 16                 ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.l, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %.06784 = phi i16 [ 1, %.new ], [ %.2.1, %bb.j ] ; 2 uses
  %.06983 = phi i32 [ %i.d, %.new ], [ %.170.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.j ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !17   ; 3 uses
  %i.q = icmp eq i16 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i64 %indvars.iv to i8
  %i.s = add i32 %.06983, -1
  %i.t = zext i32 %.06983 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.r, ptr %i.v, align 2, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = sext i16 %i.p to i32
  %.not80 = icmp sgt i32 %i.m, %i.w
  %spec.select = select i1 %.not80, i16 %.06784, i16 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ 1, %bb.e ], [ %i.p, %bb.f ]
  %.170 = phi i32 [ %i.s, %bb.e ], [ %.06983, %bb.f ] ; 3 uses
  %.2 = phi i16 [ %.06784, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.x, align 4, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load i16, ptr %i.y, align 2, !tbaa !17   ; 3 uses
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i16 %i.z to i32
  %.not80.1 = icmp sgt i32 %i.m, %i.ab
  %spec.select.1 = select i1 %.not80.1, i16 %.2, i16 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = trunc i64 %indvars.iv.next to i8
  %i.ad = add i32 %.170, -1
  %i.ae = zext i32 %.170 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 %i.ac, ptr %i.ag, align 2, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.1 = phi i16 [ 1, %bb.i ], [ %i.z, %bb.h ]
  %.170.1 = phi i32 [ %i.ad, %bb.i ], [ %.170, %bb.h ] ; 3 uses
  %.2.1 = phi i16 [ %.2, %bb.i ], [ %spec.select.1, %bb.h ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ah, align 2, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.preheader.unr-lcssa, label %bb.d, !llvm.loop !0

.preheader81.preheader.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.preheader.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %.06784.epil.init = phi i16 [ 1, %bb.c ], [ %.2.1, %.preheader81.preheader.unr-lcssa ] ; 2 uses
  %.06983.epil.init = phi i32 [ %i.d, %bb.c ], [ %.170.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod109 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !17 ; 3 uses
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.al = sext i16 %i.aj to i32
  %.not80.epil = icmp sgt i32 %i.m, %i.al
  %spec.select.epil = select i1 %.not80.epil, i16 %.06784.epil.init, i16 0
  br label %.preheader81.preheader.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.am = trunc i64 %indvars.iv.epil.init to i8
  %i.an = add i32 %.06983.epil.init, -1
  %i.ao = zext i32 %.06983.epil.init to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.am, ptr %i.aq, align 2, !tbaa !19
  br label %.preheader81.preheader.epilog-lcssa

.preheader81.preheader.epilog-lcssa:              ; preds = %bb.l, %bb.k
  %.sink.epil = phi i16 [ 1, %bb.l ], [ %i.aj, %bb.k ]
  %.170.epil = phi i32 [ %i.an, %bb.l ], [ %.06983.epil.init, %bb.k ]
  %.2.epil = phi i16 [ %.06784.epil.init, %bb.l ], [ %spec.select.epil, %bb.k ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.ar, align 2, !tbaa !17
  br label %.preheader81.preheader

.preheader81.preheader:                           ; preds = %.preheader81.preheader.unr-lcssa, %.preheader81.preheader.epilog-lcssa
  %.170.lcssa = phi i32 [ %.170.1, %.preheader81.preheader.unr-lcssa ], [ %.170.epil, %.preheader81.preheader.epilog-lcssa ] ; 3 uses
  %.2.lcssa = phi i16 [ %.2.1, %.preheader81.preheader.unr-lcssa ], [ %.2.epil, %.preheader81.preheader.epilog-lcssa ]
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader81.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %.07188 = phi i32 [ %.172.lcssa, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92
  %i.at = load i16, ptr %i.as, align 2, !tbaa !17 ; 5 uses
  %i.au = icmp sgt i16 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader81
  %i.av = trunc i64 %indvars.iv92 to i8           ; 3 uses
  %i.aw = icmp eq i16 %i.at, 1
  br i1 %i.aw, label %.epil.preheader110, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.ax = and i16 %i.at, 32766
  %unroll_iter115 = zext nneg i16 %i.ax to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %.17286 = phi i32 [ %.07188, %.lr.ph.new ], [ %.273.1, %bb.q ] ; 2 uses
  %niter116 = phi i32 [ 0, %.lr.ph.new ], [ %niter116.next.1, %bb.q ]
  %i.ay = zext nneg i32 %.17286 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.av, ptr %i.ba, align 2, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.172.pn = phi i32 [ %.17286, %bb.m ], [ %.273, %bb.n ]
  %.pn = add nuw i32 %i.h, %.172.pn
  %.273 = and i32 %.pn, %i.d                      ; 4 uses
  %i.bb = icmp ugt i32 %.273, %.170.lcssa
  br i1 %i.bb, label %bb.n, label %bb.o, !llvm.loop !1

bb.o:                                             ; preds = %bb.n
  %i.bc = zext nneg i32 %.273 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.av, ptr %i.be, align 2, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.172.pn.1 = phi i32 [ %.273, %bb.o ], [ %.273.1, %bb.p ]
  %.pn.1 = add nuw i32 %i.h, %.172.pn.1
  %.273.1 = and i32 %.pn.1, %i.d                  ; 5 uses
  %i.bf = icmp ugt i32 %.273.1, %.170.lcssa
  br i1 %i.bf, label %bb.p, label %bb.q, !llvm.loop !1

bb.q:                                             ; preds = %bb.p
  %niter116.next.1 = add i32 %niter116, 2         ; 2 uses
  %niter116.ncmp.1 = icmp eq i32 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !2

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %i.bg = and i16 %i.at, 1
  %lcmp.mod112.not = icmp eq i16 %i.bg, 0
  br i1 %lcmp.mod112.not, label %._crit_edge, label %.epil.preheader110

.epil.preheader110:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.17286.epil.init = phi i32 [ %.07188, %.lr.ph ], [ %.273.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod114 = trunc i16 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.bh = zext nneg i32 %.17286.epil.init to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.av, ptr %i.bj, align 2, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader110
  %.172.pn.epil = phi i32 [ %.17286.epil.init, %.epil.preheader110 ], [ %.273.epil, %bb.r ]
  %.pn.epil = add nuw i32 %i.h, %.172.pn.epil
  %.273.epil = and i32 %.pn.epil, %i.d            ; 3 uses
  %i.bk = icmp ugt i32 %.273.epil, %.170.lcssa
  br i1 %i.bk, label %bb.r, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.r, %.preheader81
  %.172.lcssa = phi i32 [ %.07188, %.preheader81 ], [ %.273.1, %._crit_edge.loopexit.unr-lcssa ], [ %.273.epil, %bb.r ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %i.l
  br i1 %exitcond96.not, label %bb.s, label %.preheader81, !llvm.loop !3

bb.s:                                             ; preds = %._crit_edge
  %i.bl = trunc nuw nsw i32 %3 to i16
  %.not79 = icmp eq i32 %.172.lcssa, 0
  br i1 %.not79, label %.preheader.preheader, label %bb.u

end_hunk_0
begin_hunk_1_@FSEv05_decompress_usingDTable:bb.a
bb.bk:                                            ; preds = %BITv05_reloadDStream.exit169
  %i.od = icmp eq i64 %.sroa.61216.9.idx, 0       ; 2 uses
  %.not408 = icmp eq i32 %.sroa.27.9, 64
  %or.cond420 = and i1 %.not408, %i.od
  %.not409 = icmp eq i64 %.sroa.0202.1514, 0
  %or.cond421 = select i1 %or.cond420, i1 %.not409, i1 false
  br i1 %or.cond421, label %BITv05_reloadDStream.exit169.thread, label %BITv05_endOfDStream.exit170.thread

BITv05_endOfDStream.exit170.thread:               ; preds = %bb.bk
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.sroa.0202.1514 ; 3 uses
  %.sroa.0.0.copyload.i171 = load i16, ptr %i.oe, align 2, !tbaa !17
  %.sroa.4.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %.sroa.4.0.copyload.i173 = load i8, ptr %.sroa.4.0..sroa_idx.i172, align 2, !tbaa !27
  %.sroa.5.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  %.sroa.5.0.copyload.i175 = load i8, ptr %.sroa.5.0..sroa_idx.i174, align 1, !tbaa !27
  %i.of = zext i8 %.sroa.5.0.copyload.i175 to i32 ; 2 uses
  %i.og = and i32 %.sroa.27.9, 63
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl i64 %.sroa.0210.7, %i.oh
  %i.oj = lshr i64 %i.oi, 1
  %i.ok = and i32 %i.of, 63
  %i.ol = xor i32 %i.ok, 63
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = lshr i64 %i.oj, %i.om
  %i.oo = add i32 %.sroa.27.9, %i.of              ; 7 uses
  %i.op = zext i16 %.sroa.0.0.copyload.i171 to i64
  %i.oq = add nuw i64 %i.on, %i.op                ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i516, i64 1 ; 4 uses
  store i8 %.sroa.4.0.copyload.i173, ptr %.1.i516, align 1, !tbaa !27
  %i.os = icmp ugt i32 %i.oo, 64
  br i1 %i.os, label %BITv05_reloadDStream.exit169.thread.split.loop.exit481, label %bb.bl

bb.bl:                                            ; preds = %BITv05_endOfDStream.exit170.thread
  %.not.i178 = icmp slt i64 %.sroa.61216.9.idx, 8
  br i1 %.not.i178, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ot = lshr i32 %i.oo, 3
  %i.ou = zext nneg i32 %i.ot to i64
  %.sroa.61216.9.add401 = sub nuw nsw i64 %.sroa.61216.9.idx, %i.ou ; 2 uses
  %.ptr404 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.61216.9.add401
  %i.ov = and i32 %i.oo, 7
  %.val30.i179 = load i64, ptr %.ptr404, align 1, !tbaa !29
  br label %BITv05_reloadDStream.exit186

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.od, label %BITv05_reloadDStream.exit186, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ow = lshr i32 %i.oo, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %.024.i181410 = tail call i64 @llvm.smin.i64(i64 %.sroa.61216.9.idx, i64 %i.ox) ; 2 uses
  %.024.i181 = trunc i64 %.024.i181410 to i32
  %i.oy = and i64 %.024.i181410, 4294967295
  %.sroa.61216.9.add = sub nsw i64 %.sroa.61216.9.idx, %i.oy ; 2 uses
  %.ptr403 = getelementptr inbounds i8, ptr %2, i64 %.sroa.61216.9.add
  %i.oz = shl i32 %.024.i181, 3
  %i.pa = sub i32 %i.oo, %i.oz
  %.val.i183 = load i64, ptr %.ptr403, align 1, !tbaa !29
  br label %BITv05_reloadDStream.exit186

BITv05_reloadDStream.exit186:                     ; preds = %bb.bn, %bb.bm, %bb.bo
  %.sroa.0210.8 = phi i64 [ %.val30.i179, %bb.bm ], [ %.val.i183, %bb.bo ], [ %.sroa.0210.7, %bb.bn ] ; 2 uses
  %.sroa.27.10 = phi i32 [ %i.ov, %bb.bm ], [ %i.pa, %bb.bo ], [ %i.oo, %bb.bn ] ; 4 uses
  %.sroa.61216.10.idx = phi i64 [ %.sroa.61216.9.add401, %bb.bm ], [ %.sroa.61216.9.add, %bb.bo ], [ 0, %bb.bn ] ; 4 uses
  %i.pb = icmp eq ptr %i.or, %i.c
  br i1 %i.pb, label %BITv05_reloadDStream.exit169.thread.split.loop.exit493, label %bb.bp

bb.bp:                                            ; preds = %BITv05_reloadDStream.exit186
  %i.pc = icmp eq i64 %.sroa.61216.10.idx, 0
  %.not411 = icmp eq i32 %.sroa.27.10, 64
  %or.cond422 = and i1 %.not411, %i.pc
  %.not412 = icmp eq i64 %.sroa.0.1515, 0
  %or.cond423 = select i1 %or.cond422, i1 %.not412, i1 false
  br i1 %or.cond423, label %BITv05_reloadDStream.exit169.thread, label %BITv05_endOfDStream.exit187.thread

BITv05_endOfDStream.exit187.thread:               ; preds = %bb.bp
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.sroa.0.1515 ; 3 uses
  %.sroa.0.0.copyload.i188 = load i16, ptr %i.pd, align 2, !tbaa !17
  %.sroa.4.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %.sroa.4.0.copyload.i190 = load i8, ptr %.sroa.4.0..sroa_idx.i189, align 2, !tbaa !27
  %.sroa.5.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %i.pd, i64 3
  %.sroa.5.0.copyload.i192 = load i8, ptr %.sroa.5.0..sroa_idx.i191, align 1, !tbaa !27
  %i.pe = zext i8 %.sroa.5.0.copyload.i192 to i32 ; 2 uses
  %i.pf = and i32 %.sroa.27.10, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl i64 %.sroa.0210.8, %i.pg
  %i.pi = lshr i64 %i.ph, 1
  %i.pj = and i32 %i.pe, 63
  %i.pk = xor i32 %i.pj, 63
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = lshr i64 %i.pi, %i.pl
  %i.pn = add i32 %.sroa.27.10, %i.pe             ; 3 uses
  %i.po = zext i16 %.sroa.0.0.copyload.i188 to i64
  %i.pp = add nuw i64 %i.pm, %i.po                ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.1.i516, i64 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i190, ptr %i.or, align 1, !tbaa !27
  %i.pr = icmp ugt i32 %i.pn, 64
  br i1 %i.pr, label %BITv05_reloadDStream.exit169.thread.split.loop.exit487, label %.lr.ph517

BITv05_reloadDStream.exit169.thread.split.loop.exit481: ; preds = %BITv05_endOfDStream.exit170.thread
  %.sroa.61216.9.ptr.le507 = getelementptr inbounds i8, ptr %2, i64 %.sroa.61216.9.idx
  br label %BITv05_reloadDStream.exit169.thread

BITv05_reloadDStream.exit169.thread.split.loop.exit487: ; preds = %bb.bg, %BITv05_endOfDStream.exit187.thread, %FSEv05_initDState.exit123, %.preheader
  %.sroa.61216.1.idx.lcssa = phi i64 [ %.sroa.61216.8.idx, %.preheader ], [ %.sroa.61216.10.idx, %BITv05_endOfDStream.exit187.thread ], [ %.sroa.61216.7.idx, %FSEv05_initDState.exit123 ], [ %.sroa.61216.8.idx, %bb.bg ]
  %.sroa.0.1.lcssa.ph488 = phi i64 [ %.sroa.0.0870, %.preheader ], [ %i.pp, %BITv05_endOfDStream.exit187.thread ], [ %i.ko, %FSEv05_initDState.exit123 ], [ %i.np, %bb.bg ]
  %.sroa.27.2.ph489 = phi i32 [ %.sroa.27.8, %.preheader ], [ %i.pn, %BITv05_endOfDStream.exit187.thread ], [ %.sroa.27.7, %FSEv05_initDState.exit123 ], [ %i.nn, %bb.bg ]
  %.sroa.0202.2.ph491 = phi i64 [ %.sroa.0202.0869, %.preheader ], [ %i.oq, %BITv05_endOfDStream.exit187.thread ], [ %i.jx, %FSEv05_initDState.exit123 ], [ %i.na, %bb.bg ]
  %.2.i.ph492 = phi ptr [ %.0.i871, %.preheader ], [ %i.pq, %BITv05_endOfDStream.exit187.thread ], [ %0, %FSEv05_initDState.exit123 ], [ %i.nr, %bb.bg ]
  %.sroa.61216.1.ptr.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.61216.1.idx.lcssa
  br label %BITv05_reloadDStream.exit169.thread

BITv05_reloadDStream.exit169.thread.split.loop.exit493: ; preds = %BITv05_reloadDStream.exit186
  %.sroa.61216.10.ptr.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.61216.10.idx
  br label %BITv05_reloadDStream.exit169.thread

BITv05_reloadDStream.exit169.thread.split.loop.exit499: ; preds = %BITv05_reloadDStream.exit169
  %.sroa.61216.9.ptr.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.61216.9.idx
  br label %BITv05_reloadDStream.exit169.thread

BITv05_reloadDStream.exit169.thread:              ; preds = %bb.bk, %bb.bp, %BITv05_reloadDStream.exit169.thread.split.loop.exit499, %BITv05_reloadDStream.exit169.thread.split.loop.exit493, %BITv05_reloadDStream.exit169.thread.split.loop.exit487, %BITv05_reloadDStream.exit169.thread.split.loop.exit481
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.1515, %BITv05_reloadDStream.exit169.thread.split.loop.exit493 ], [ %.sroa.0.1515, %BITv05_reloadDStream.exit169.thread.split.loop.exit499 ], [ %.sroa.0.1.lcssa.ph488, %BITv05_reloadDStream.exit169.thread.split.loop.exit487 ], [ %.sroa.0.1515, %BITv05_reloadDStream.exit169.thread.split.loop.exit481 ], [ %.sroa.0.1515, %bb.bk ], [ 0, %bb.bp ]
  %.sroa.27.2 = phi i32 [ %.sroa.27.10, %BITv05_reloadDStream.exit169.thread.split.loop.exit493 ], [ %.sroa.27.9, %BITv05_reloadDStream.exit169.thread.split.loop.exit499 ], [ %.sroa.27.2.ph489, %BITv05_reloadDStream.exit169.thread.split.loop.exit487 ], [ %i.oo, %BITv05_reloadDStream.exit169.thread.split.loop.exit481 ], [ 64, %bb.bp ], [ 64, %bb.bk ]
  %.sroa.61216.2 = phi ptr [ %.sroa.61216.10.ptr.le, %BITv05_reloadDStream.exit169.thread.split.loop.exit493 ], [ %.sroa.61216.9.ptr.le, %BITv05_reloadDStream.exit169.thread.split.loop.exit499 ], [ %.sroa.61216.1.ptr.le, %BITv05_reloadDStream.exit169.thread.split.loop.exit487 ], [ %.sroa.61216.9.ptr.le507, %BITv05_reloadDStream.exit169.thread.split.loop.exit481 ], [ %2, %bb.bp ], [ %2, %bb.bk ]
  %.sroa.0202.2 = phi i64 [ %i.oq, %BITv05_reloadDStream.exit169.thread.split.loop.exit493 ], [ %.sroa.0202.1514, %BITv05_reloadDStream.exit169.thread.split.loop.exit499 ], [ %.sroa.0202.2.ph491, %BITv05_reloadDStream.exit169.thread.split.loop.exit487 ], [ %i.oq, %BITv05_reloadDStream.exit169.thread.split.loop.exit481 ], [ 0, %bb.bk ], [ %i.oq, %bb.bp ]
  %.2.i = phi ptr [ %i.c, %BITv05_reloadDStream.exit169.thread.split.loop.exit493 ], [ %i.c, %BITv05_reloadDStream.exit169.thread.split.loop.exit499 ], [ %.2.i.ph492, %BITv05_reloadDStream.exit169.thread.split.loop.exit487 ], [ %i.or, %BITv05_reloadDStream.exit169.thread.split.loop.exit481 ], [ %.1.i516, %bb.bk ], [ %i.or, %bb.bp ] ; 2 uses
  %i.ps = icmp eq ptr %.sroa.61216.2, %2
  %.not413 = icmp eq i32 %.sroa.27.2, 64
  %or.cond424 = and i1 %.not413, %i.ps
  %.not414 = icmp eq i64 %.sroa.0202.2, 0
  %or.cond425 = select i1 %or.cond424, i1 %.not414, i1 false
  %.not415 = icmp eq i64 %.sroa.0.1.lcssa, 0
  %or.cond426 = select i1 %or.cond425, i1 %.not415, i1 false
  br i1 %or.cond426, label %bb.bq, label %BITv05_endOfDStream.exit195.thread

bb.bq:                                            ; preds = %BITv05_reloadDStream.exit169.thread
  %i.pt = ptrtoint ptr %.2.i to i64
  %i.pu = ptrtoint ptr %0 to i64
  %i.pv = sub i64 %i.pt, %i.pu
  br label %FSEv05_decompress_usingDTable_generic.exit27

BITv05_endOfDStream.exit195.thread:               ; preds = %BITv05_reloadDStream.exit169.thread
  %i.pw = icmp eq ptr %.2.i, %i.c
  %..i = select i1 %i.pw, i64 -70, i64 -20
  br label %FSEv05_decompress_usingDTable_generic.exit27

FSEv05_decompress_usingDTable_generic.exit27:     ; preds = %bb.aj, %bb.al, %bb.at, %bb.b, %bb.d, %bb.l, %BITv05_endOfDStream.exit195.thread, %bb.bq, %BITv05_initDStream.exit107, %BITv05_endOfDStream.exit102.thread, %bb.ai, %BITv05_initDStream.exit
  %.0 = phi i64 [ -1, %bb.l ], [ %3, %BITv05_initDStream.exit ], [ %i.hj, %bb.ai ], [ %..i24, %BITv05_endOfDStream.exit102.thread ], [ %3, %BITv05_initDStream.exit107 ], [ %i.pv, %bb.bq ], [ %..i, %BITv05_endOfDStream.exit195.thread ], [ -72, %bb.b ], [ -1, %bb.d ], [ -72, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.at ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @FSEv05_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 7 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 255, ptr %i.e, align 4, !tbaa !23
  %i.f = icmp ult i64 %3, 2
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %.not21 = icmp ult i64 %i.g, %3
  br i1 %.not21, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.e, align 4, !tbaa !23   ; 3 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !23   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 8 uses
  %i.l = shl nuw i32 1, %i.j                      ; 5 uses
  %i.m = add i32 %i.l, -1                         ; 5 uses
  %i.n = lshr i32 %i.l, 1
  %i.o = lshr i32 %i.l, 3
  %i.p = add nuw nsw i32 %i.o, 3
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.r = icmp ugt i32 %i.i, 255
  br i1 %i.r, label %FSEv05_buildDTable.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i32 %i.j, 12
  br i1 %i.s, label %FSEv05_buildDTable.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.k, i8 0, i64 %i.u, i1 false)
  %sext.i = shl nuw nsw i32 32768, %i.j
  %i.v = lshr exact i32 %sext.i, 16               ; 3 uses
  %xtraiter = and i64 %i.u, 1
  %i.w = icmp eq i32 %i.i, 0
  br i1 %i.w, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %i.u, 510
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.m ] ; 5 uses
  %.06784.i = phi i16 [ 1, %.new ], [ %.2.i.1, %bb.m ] ; 2 uses
  %.06983.i = phi i32 [ %i.m, %.new ], [ %.170.i.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.m ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.y = load i16, ptr %i.x, align 4, !tbaa !17   ; 3 uses
  %i.z = icmp eq i16 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc i64 %indvars.iv.i to i8
  %i.ab = add i32 %.06983.i, -1
  %i.ac = zext i32 %.06983.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 %i.aa, ptr %i.ae, align 2, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = sext i16 %i.y to i32
  %.not80.i = icmp sgt i32 %i.v, %i.af
  %spec.select.i = select i1 %.not80.i, i16 %.06784.i, i16 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i16 [ 1, %bb.h ], [ %i.y, %bb.i ]
  %.170.i = phi i32 [ %i.ab, %bb.h ], [ %.06983.i, %bb.i ] ; 3 uses
  %.2.i = phi i16 [ %.06784.i, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.ag, align 4, !tbaa !17
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !17 ; 3 uses
  %i.aj = icmp eq i16 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = sext i16 %i.ai to i32
  %.not80.i.1 = icmp sgt i32 %i.v, %i.ak
  %spec.select.i.1 = select i1 %.not80.i.1, i16 %.2.i, i16 0
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.al = trunc i64 %indvars.iv.next.i to i8
  %i.am = add i32 %.170.i, -1
  %i.an = zext i32 %.170.i to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.al, ptr %i.ap, align 2, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.1 = phi i16 [ 1, %bb.l ], [ %i.ai, %bb.k ]
  %.170.i.1 = phi i32 [ %i.am, %bb.l ], [ %.170.i, %bb.k ] ; 3 uses
  %.2.i.1 = phi i16 [ %.2.i, %bb.l ], [ %spec.select.i.1, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.aq, align 2, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.i.preheader.unr-lcssa, label %bb.g, !llvm.loop !0

.preheader81.i.preheader.unr-lcssa:               ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.i.preheader.unr-lcssa, %bb.f
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.1, %.preheader81.i.preheader.unr-lcssa ] ; 3 uses
  %.06784.i.epil.init = phi i16 [ 1, %bb.f ], [ %.2.i.1, %.preheader81.i.preheader.unr-lcssa ] ; 2 uses
  %.06983.i.epil.init = phi i32 [ %i.m, %bb.f ], [ %.170.i.1, %.preheader81.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !17 ; 3 uses
  %i.at = icmp eq i16 %i.as, -1
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.au = sext i16 %i.as to i32
  %.not80.i.epil = icmp sgt i32 %i.v, %i.au
  %spec.select.i.epil = select i1 %.not80.i.epil, i16 %.06784.i.epil.init, i16 0
  br label %.preheader81.i.preheader.epilog-lcssa

bb.o:                                             ; preds = %.epil.preheader
  %i.av = trunc i64 %indvars.iv.i.epil.init to i8
  %i.aw = add i32 %.06983.i.epil.init, -1
  %i.ax = zext i32 %.06983.i.epil.init to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.av, ptr %i.az, align 2, !tbaa !19
  br label %.preheader81.i.preheader.epilog-lcssa

.preheader81.i.preheader.epilog-lcssa:            ; preds = %bb.o, %bb.n
  %.sink.i.epil = phi i16 [ 1, %bb.o ], [ %i.as, %bb.n ]
  %.170.i.epil = phi i32 [ %i.aw, %bb.o ], [ %.06983.i.epil.init, %bb.n ]
  %.2.i.epil = phi i16 [ %.06784.i.epil.init, %bb.o ], [ %spec.select.i.epil, %bb.n ]
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.ba, align 2, !tbaa !17
  br label %.preheader81.i.preheader

.preheader81.i.preheader:                         ; preds = %.preheader81.i.preheader.unr-lcssa, %.preheader81.i.preheader.epilog-lcssa
  %.170.i.lcssa = phi i32 [ %.170.i.1, %.preheader81.i.preheader.unr-lcssa ], [ %.170.i.epil, %.preheader81.i.preheader.epilog-lcssa ] ; 3 uses
  %.2.i.lcssa = phi i16 [ %.2.i.1, %.preheader81.i.preheader.unr-lcssa ], [ %.2.i.epil, %.preheader81.i.preheader.epilog-lcssa ]
  br label %.preheader81.i

.preheader81.i:                                   ; preds = %.preheader81.i.preheader, %._crit_edge.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %._crit_edge.i ], [ 0, %.preheader81.i.preheader ] ; 3 uses
  %.07188.i = phi i32 [ %.172.lcssa.i, %._crit_edge.i ], [ 0, %.preheader81.i.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv92.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !17 ; 5 uses
  %i.bd = icmp sgt i16 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader81.i
  %i.be = trunc i64 %indvars.iv92.i to i8         ; 3 uses
  %i.bf = icmp eq i16 %i.bc, 1
  br i1 %i.bf, label %.epil.preheader35, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %i.bg = and i16 %i.bc, 32766
  %unroll_iter40 = zext nneg i16 %i.bg to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.new
  %.17286.i = phi i32 [ %.07188.i, %.lr.ph.i.new ], [ %.273.i.1, %bb.t ] ; 2 uses
  %niter41 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter41.next.1, %bb.t ]
  %i.bh = zext nneg i32 %.17286.i to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.be, ptr %i.bj, align 2, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.172.pn.i = phi i32 [ %.17286.i, %bb.p ], [ %.273.i, %bb.q ]
  %.pn.i = add nuw i32 %i.q, %.172.pn.i
  %.273.i = and i32 %.pn.i, %i.m                  ; 4 uses
  %i.bk = icmp ugt i32 %.273.i, %.170.i.lcssa
  br i1 %i.bk, label %bb.q, label %bb.r, !llvm.loop !1

bb.r:                                             ; preds = %bb.q
  %i.bl = zext nneg i32 %.273.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %i.be, ptr %i.bn, align 2, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.172.pn.i.1 = phi i32 [ %.273.i, %bb.r ], [ %.273.i.1, %bb.s ]
  %.pn.i.1 = add nuw i32 %i.q, %.172.pn.i.1
  %.273.i.1 = and i32 %.pn.i.1, %i.m              ; 5 uses
  %i.bo = icmp ugt i32 %.273.i.1, %.170.i.lcssa
  br i1 %i.bo, label %bb.s, label %bb.t, !llvm.loop !1

bb.t:                                             ; preds = %bb.s
  %niter41.next.1 = add i32 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i32 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !2

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %i.bp = and i16 %i.bc, 1
  %lcmp.mod37.not = icmp eq i16 %i.bp, 0
  br i1 %lcmp.mod37.not, label %._crit_edge.i, label %.epil.preheader35

.epil.preheader35:                                ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.17286.i.epil.init = phi i32 [ %.07188.i, %.lr.ph.i ], [ %.273.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i16 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.bq = zext nneg i32 %.17286.i.epil.init to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.be, ptr %i.bs, align 2, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader35
  %.172.pn.i.epil = phi i32 [ %.17286.i.epil.init, %.epil.preheader35 ], [ %.273.i.epil, %bb.u ]
  %.pn.i.epil = add nuw i32 %i.q, %.172.pn.i.epil
  %.273.i.epil = and i32 %.pn.i.epil, %i.m        ; 3 uses
  %i.bt = icmp ugt i32 %.273.i.epil, %.170.i.lcssa
  br i1 %i.bt, label %bb.u, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.u, %.preheader81.i
  %.172.lcssa.i = phi i32 [ %.07188.i, %.preheader81.i ], [ %.273.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.273.i.epil, %bb.u ] ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %i.u
  br i1 %exitcond96.not.i, label %bb.v, label %.preheader81.i, !llvm.loop !3

bb.v:                                             ; preds = %._crit_edge.i
  %i.bu = trunc nuw nsw i32 %i.j to i16
  %.not79.i = icmp eq i32 %.172.lcssa.i, 0
  br i1 %.not79.i, label %.preheader.preheader.i, label %FSEv05_buildDTable.exit.thread

end_hunk_1
begin_hunk_2_@ZSTDv05_decompress_continueDCtx:bb.a
  %i.s = shl nuw nsw i32 %i.q, 16
  %i.t = and i32 %i.s, 458752
  %i.u = getelementptr inbounds nuw i8, ptr %.164123, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.164123, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i81.ph = phi i64 [ %i.ad, %bb.e ], [ 1, %bb.d ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.164123, i64 3 ; 2 uses
  %i.af = add i64 %.160125, -3                    ; 2 uses
  %i.ag = icmp ugt i64 %.0.i81.ph, %i.af
  br i1 %i.ag, label %.thread90, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.r, label %.thread90 [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %.061124 to i64
  %i.ai = sub i64 %i.o, %i.ah
  %i.aj = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef %0, ptr noundef %.061124, i64 noundef %i.ai, ptr noundef nonnull %i.ae, i64 noundef %.0.i81.ph)
  br label %ZSTDv05_copyRawBlock.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = ptrtoint ptr %.061124 to i64
  %i.al = sub i64 %i.o, %i.ak
  %i.am = icmp eq ptr %.061124, null
  %i.an = icmp ugt i64 %.0.i81.ph, %i.al
  %or.cond.i = or i1 %i.am, %i.an
  br i1 %or.cond.i, label %ZSTDv05_copyRawBlock.exit.thread139, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.061124, ptr nonnull readonly align 1 %i.ae, i64 %.0.i81.ph, i1 false)
  br label %ZSTDv05_copyRawBlock.exit

ZSTDv05_copyRawBlock.exit:                        ; preds = %bb.j, %bb.h
  %.0 = phi i64 [ %i.aj, %bb.h ], [ %.0.i81.ph, %bb.j ] ; 3 uses
  %i.ao = icmp eq i64 %.0.i81.ph, 0
  br i1 %i.ao, label %ZSTDv05_copyRawBlock.exit.thread, label %bb.k

ZSTDv05_copyRawBlock.exit.thread139:              ; preds = %bb.i
  %i.ap = icmp eq i64 %.0.i81.ph, 0
  br i1 %i.ap, label %ZSTDv05_copyRawBlock.exit.thread, label %.thread90

bb.k:                                             ; preds = %ZSTDv05_copyRawBlock.exit
  %i.aq = icmp ult i64 %.0, -119
  br i1 %i.aq, label %bb.l, label %.thread90

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.164123, i64 3
  %i.as = getelementptr inbounds nuw i8, ptr %.061124, i64 %.0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.i81.ph ; 2 uses
  %i.au = sub i64 %i.af, %.0.i81.ph
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.n, %i.av
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %.thread90, label %bb.d

ZSTDv05_copyRawBlock.exit.thread:                 ; preds = %ZSTDv05_copyRawBlock.exit, %.thread104, %ZSTDv05_copyRawBlock.exit.thread139
  %i.ay = ptrtoint ptr %.061124 to i64
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = sub i64 %i.ay, %i.az
  br label %.thread90

.thread90:                                        ; preds = %bb.f, %bb.g, %bb.k, %bb.l, %ZSTDv05_copyRawBlock.exit.thread139, %.thread104, %bb.b, %bb.a, %bb.c, %ZSTDv05_copyRawBlock.exit.thread
  %.3 = phi i64 [ -72, %bb.a ], [ %i.ba, %ZSTDv05_copyRawBlock.exit.thread ], [ -14, %bb.c ], [ -10, %bb.b ], [ -70, %ZSTDv05_copyRawBlock.exit.thread139 ], [ -72, %.thread104 ], [ %.0, %bb.k ], [ -1, %bb.g ], [ -72, %bb.f ], [ -72, %bb.l ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingDict(ptr noundef initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @ZSTDv05_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.c, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.i, ptr %i.j, align 8, !tbaa !53
  store ptr %1, ptr %i.e, align 8, !tbaa !52
  store ptr %1, ptr %i.b, align 8, !tbaa !50
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv05_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((10252, 10256), (26640, 26680), (26732, 26740)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [32 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [128 x i16], align 16             ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [64 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26672
  store i64 5, ptr %i.k, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26732
  store i32 0, ptr %i.l, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10252 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26736 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !48
  %i.p = icmp ne ptr %1, null
  %i.q = icmp ne i64 %2, 0
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.b, label %ZSTDv05_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 1, !tbaa !23
  %.not.i = icmp eq i32 %.val.i, -332356555
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26648
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %1, ptr %i.s, align 8, !tbaa !53
  store ptr %1, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.t, ptr %i.m, align 8, !tbaa !50
  br label %ZSTDv05_decompress_insertDictionary.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.v = add i64 %2, -4                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 31, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 127, ptr %i.f, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 63, ptr %i.i, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.w = tail call i64 @HUFv05_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.u, i64 noundef range(i64 -3, -4) %i.v) ; 4 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.e, label %ZSTDv05_loadEntropy.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 2 uses
  %i.z = sub i64 %i.v, %i.w                       ; 2 uses
  %i.aa = call i64 @FSEv05_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y, i64 noundef %i.z) ; 4 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.f, label %ZSTDv05_loadEntropy.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !23  ; 5 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  br i1 %i.ad, label %ZSTDv05_loadEntropy.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4100
  %i.af = load i32, ptr %i.c, align 4, !tbaa !23  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 8 uses
  %i.ah = shl nuw nsw i32 1, %i.ac                ; 5 uses
  %i.ai = add nsw i32 %i.ah, -1                   ; 5 uses
  %i.aj = lshr i32 %i.ah, 1
  %i.ak = lshr i32 %i.ah, 3
  %i.al = add nuw nsw i32 %i.ak, 3
  %i.am = add nuw nsw i32 %i.al, %i.aj            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.an = icmp ugt i32 %i.af, 255
  br i1 %i.an, label %FSEv05_buildDTable.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i8 0, i64 %i.ap, i1 false)
  %sext.i.i.i = shl nuw nsw i32 32768, %i.ac
  %i.aq = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i32 %i.af, 0
  br i1 %i.ar, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.ap, 510
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.1, %bb.o ] ; 5 uses
  %.06784.i.i.i = phi i16 [ 1, %.new ], [ %.2.i.i.i.1, %bb.o ] ; 2 uses
  %.06983.i.i.i = phi i32 [ %i.ai, %.new ], [ %.170.i.i.i.1, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.o ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.at = load i16, ptr %i.as, align 4, !tbaa !17 ; 3 uses
  %i.au = icmp eq i16 %i.at, -1
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = trunc i64 %indvars.iv.i.i.i to i8
  %i.aw = add i32 %.06983.i.i.i, -1
  %i.ax = zext i32 %.06983.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.av, ptr %i.az, align 2, !tbaa !19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sext i16 %i.at to i32
  %.not80.i.i.i = icmp sgt i32 %i.aq, %i.ba
  %spec.select.i.i.i = select i1 %.not80.i.i.i, i16 %.06784.i.i.i, i16 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i.i = phi i16 [ 1, %bb.j ], [ %i.at, %bb.k ]
  %.170.i.i.i = phi i32 [ %i.aw, %bb.j ], [ %.06983.i.i.i, %bb.k ] ; 3 uses
  %.2.i.i.i = phi i16 [ %.06784.i.i.i, %bb.j ], [ %spec.select.i.i.i, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store i16 %.sink.i.i.i, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !17 ; 3 uses
  %i.be = icmp eq i16 %i.bd, -1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = sext i16 %i.bd to i32
  %.not80.i.i.i.1 = icmp sgt i32 %i.aq, %i.bf
  %spec.select.i.i.i.1 = select i1 %.not80.i.i.i.1, i16 %.2.i.i.i, i16 0
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bg = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.bh = add i32 %.170.i.i.i, -1
  %i.bi = zext i32 %.170.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bg, ptr %i.bk, align 2, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.i.i.1 = phi i16 [ 1, %bb.n ], [ %i.bd, %bb.m ]
  %.170.i.i.i.1 = phi i32 [ %i.bh, %bb.n ], [ %.170.i.i.i, %bb.m ] ; 3 uses
  %.2.i.i.i.1 = phi i16 [ %.2.i.i.i, %bb.n ], [ %spec.select.i.i.i.1, %bb.m ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  store i16 %.sink.i.i.i.1, ptr %i.bl, align 2, !tbaa !17
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.i.i.i.preheader.unr-lcssa, label %bb.i, !llvm.loop !0

.preheader81.i.i.i.preheader.unr-lcssa:           ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.i.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.i.i.i.preheader.unr-lcssa, %bb.h
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i.i.i.1, %.preheader81.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06784.i.i.i.epil.init = phi i16 [ 1, %bb.h ], [ %.2.i.i.i.1, %.preheader81.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.06983.i.i.i.epil.init = phi i32 [ %i.ai, %bb.h ], [ %.170.i.i.i.1, %.preheader81.i.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod31 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !17 ; 3 uses
  %i.bo = icmp eq i16 %i.bn, -1
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.bp = sext i16 %i.bn to i32
  %.not80.i.i.i.epil = icmp sgt i32 %i.aq, %i.bp
  %spec.select.i.i.i.epil = select i1 %.not80.i.i.i.epil, i16 %.06784.i.i.i.epil.init, i16 0
  br label %.preheader81.i.i.i.preheader.epilog-lcssa

bb.q:                                             ; preds = %.epil.preheader
  %i.bq = trunc i64 %indvars.iv.i.i.i.epil.init to i8
  %i.br = add i32 %.06983.i.i.i.epil.init, -1
  %i.bs = zext i32 %.06983.i.i.i.epil.init to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 %i.bq, ptr %i.bu, align 2, !tbaa !19
  br label %.preheader81.i.i.i.preheader.epilog-lcssa

.preheader81.i.i.i.preheader.epilog-lcssa:        ; preds = %bb.q, %bb.p
  %.sink.i.i.i.epil = phi i16 [ 1, %bb.q ], [ %i.bn, %bb.p ]
  %.170.i.i.i.epil = phi i32 [ %i.br, %bb.q ], [ %.06983.i.i.i.epil.init, %bb.p ]
  %.2.i.i.i.epil = phi i16 [ %.06784.i.i.i.epil.init, %bb.q ], [ %spec.select.i.i.i.epil, %bb.p ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i.epil.init
  store i16 %.sink.i.i.i.epil, ptr %i.bv, align 2, !tbaa !17
  br label %.preheader81.i.i.i.preheader

.preheader81.i.i.i.preheader:                     ; preds = %.preheader81.i.i.i.preheader.unr-lcssa, %.preheader81.i.i.i.preheader.epilog-lcssa
  %.170.i.i.i.lcssa = phi i32 [ %.170.i.i.i.1, %.preheader81.i.i.i.preheader.unr-lcssa ], [ %.170.i.i.i.epil, %.preheader81.i.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.2.i.i.i.lcssa = phi i16 [ %.2.i.i.i.1, %.preheader81.i.i.i.preheader.unr-lcssa ], [ %.2.i.i.i.epil, %.preheader81.i.i.i.preheader.epilog-lcssa ]
  br label %.preheader81.i.i.i

.preheader81.i.i.i:                               ; preds = %.preheader81.i.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv92.i.i.i = phi i64 [ %indvars.iv.next93.i.i.i, %._crit_edge.i.i.i ], [ 0, %.preheader81.i.i.i.preheader ] ; 3 uses
  %.07188.i.i.i = phi i32 [ %.172.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 0, %.preheader81.i.i.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv92.i.i.i
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !17 ; 5 uses
  %i.by = icmp sgt i16 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader81.i.i.i
  %i.bz = trunc i64 %indvars.iv92.i.i.i to i8     ; 3 uses
  %i.ca = icmp eq i16 %i.bx, 1
  br i1 %i.ca, label %.epil.preheader32, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %i.cb = and i16 %i.bx, 32766
  %unroll_iter37 = zext nneg i16 %i.cb to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.i.i.i.new
  %.17286.i.i.i = phi i32 [ %.07188.i.i.i, %.lr.ph.i.i.i.new ], [ %.273.i.i.i.1, %bb.v ] ; 2 uses
  %niter38 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter38.next.1, %bb.v ]
  %i.cc = zext nneg i32 %.17286.i.i.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.bz, ptr %i.ce, align 2, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.172.pn.i.i.i = phi i32 [ %.17286.i.i.i, %bb.r ], [ %.273.i.i.i, %bb.s ]
  %.pn.i.i.i = add nuw nsw i32 %i.am, %.172.pn.i.i.i
  %.273.i.i.i = and i32 %.pn.i.i.i, %i.ai         ; 4 uses
  %i.cf = icmp ugt i32 %.273.i.i.i, %.170.i.i.i.lcssa
  br i1 %i.cf, label %bb.s, label %bb.t, !llvm.loop !1

bb.t:                                             ; preds = %bb.s
  %i.cg = zext nneg i32 %.273.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.bz, ptr %i.ci, align 2, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.172.pn.i.i.i.1 = phi i32 [ %.273.i.i.i, %bb.t ], [ %.273.i.i.i.1, %bb.u ]
  %.pn.i.i.i.1 = add nuw nsw i32 %i.am, %.172.pn.i.i.i.1
  %.273.i.i.i.1 = and i32 %.pn.i.i.i.1, %i.ai     ; 5 uses
  %i.cj = icmp ugt i32 %.273.i.i.i.1, %.170.i.i.i.lcssa
  br i1 %i.cj, label %bb.u, label %bb.v, !llvm.loop !1

bb.v:                                             ; preds = %bb.u
  %niter38.next.1 = add i32 %niter38, 2           ; 2 uses
  %niter38.ncmp.1 = icmp eq i32 %niter38.next.1, %unroll_iter37
  br i1 %niter38.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %bb.r, !llvm.loop !2

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.v
  %i.ck = and i16 %i.bx, 1
  %lcmp.mod34.not = icmp eq i16 %i.ck, 0
  br i1 %lcmp.mod34.not, label %._crit_edge.i.i.i, label %.epil.preheader32

.epil.preheader32:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.17286.i.i.i.epil.init = phi i32 [ %.07188.i.i.i, %.lr.ph.i.i.i ], [ %.273.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i16 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.cl = zext nneg i32 %.17286.i.i.i.epil.init to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.bz, ptr %i.cn, align 2, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader32
  %.172.pn.i.i.i.epil = phi i32 [ %.17286.i.i.i.epil.init, %.epil.preheader32 ], [ %.273.i.i.i.epil, %bb.w ]
  %.pn.i.i.i.epil = add nuw nsw i32 %i.am, %.172.pn.i.i.i.epil
  %.273.i.i.i.epil = and i32 %.pn.i.i.i.epil, %i.ai ; 3 uses
  %i.co = icmp ugt i32 %.273.i.i.i.epil, %.170.i.i.i.lcssa
  br i1 %i.co, label %bb.w, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.w, %.preheader81.i.i.i
  %.172.lcssa.i.i.i = phi i32 [ %.07188.i.i.i, %.preheader81.i.i.i ], [ %.273.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.273.i.i.i.epil, %bb.w ] ; 2 uses
  %indvars.iv.next93.i.i.i = add nuw nsw i64 %indvars.iv92.i.i.i, 1 ; 2 uses
  %exitcond96.not.i.i.i = icmp eq i64 %indvars.iv.next93.i.i.i, %i.ap
  br i1 %exitcond96.not.i.i.i, label %bb.x, label %.preheader81.i.i.i, !llvm.loop !3

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.cp = trunc nuw nsw i32 %i.ac to i16
  %.not79.i.i.i = icmp eq i32 %.172.lcssa.i.i.i, 0
  br i1 %.not79.i.i.i, label %.preheader.preheader.i.i.i, label %FSEv05_buildDTable.exit.thread.i.i

end_hunk_2
