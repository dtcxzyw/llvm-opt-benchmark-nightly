inline.NumInlined: 92
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable
define noundef i32 @_ZN8facebook5velox10StringView12linearSearchES1_PKS1_PKii(i64 %0, ptr %1, ptr nofree noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr357 = freeze i64 %0                         ; 6 uses
  %i.a = bitcast i64 %.fr357 to <2 x i32>         ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %.sroa.0326.0.vec.extract333 = extractelement <2 x i32> %i.a, i64 0 ; 3 uses
  %i.c = icmp ult i32 %.sroa.0326.0.vec.extract333, 13 ; 2 uses
  %i.d = icmp ult i32 %.sroa.0326.0.vec.extract333, 5 ; 2 uses
  %.sroa.gep133 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  %i.e = add i32 %.sroa.0326.0.vec.extract333, -4 ; 7 uses
  %i.f = and i32 %4, -4                           ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not94217 = icmp sgt i32 %4, 3
  br i1 %.not94217, label %.lr.ph, label %..preheader39.i_crit_edge

..preheader39.i_crit_edge:                        ; preds = %bb.b
  %.pre = sext i32 %i.f to i64
  br label %.preheader39.i

.lr.ph:                                           ; preds = %bb.b
  %i.g = insertelement <4 x i64> poison, i64 %.fr357, i64 0
  %i.h = shufflevector <4 x i64> %i.g, <4 x i64> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.i = icmp sgt i32 %i.e, 0
  %i.j = zext nneg i32 %i.f to i64                ; 10 uses
  br i1 %i.d, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.k = add nsw i64 %i.j, -4                     ; 3 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter484 = and i64 %i.m, 9223372036854775806
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %bb.c, %.lr.ph.split.us.preheader.new
  %indvars.iv315 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next316.1, %bb.c ] ; 4 uses
  %niter485 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter485.next.1, %bb.c ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv315
  %i.p = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.o)
  %i.q = bitcast <16 x i8> %i.p to <4 x i32>
  %i.r = shl <4 x i32> %i.q, splat (i32 1)
  %i.s = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.r, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.t = icmp eq <4 x i64> %i.s, %i.h
  %i.u = bitcast <4 x i1> %i.t to i4              ; 2 uses
  %.not92.us = icmp eq i4 %i.u, 0
  br i1 %.not92.us, label %.lr.ph.split.us.1, label %.thread143.split.us, !prof !12

.thread143.split.us:                              ; preds = %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.epil.preheader
  %indvars.iv315.lcssa = phi i64 [ %indvars.iv315.epil.init, %.lr.ph.split.us.epil.preheader ], [ %indvars.iv315, %.lr.ph.split.us ], [ %indvars.iv.next316, %.lr.ph.split.us.1 ]
  %.lcssa460 = phi i4 [ %i.dj, %.lr.ph.split.us.epil.preheader ], [ %i.u, %.lr.ph.split.us ], [ %i.af, %.lr.ph.split.us.1 ]
  %i.v = trunc nuw nsw i64 %indvars.iv315.lcssa to i32
  %i.w = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %.lcssa460, i1 true)
  %i.x = zext nneg i4 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %indvars.iv.next316 = or disjoint i64 %indvars.iv315, 4 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next316
  %i.aa = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.z)
  %i.ab = bitcast <16 x i8> %i.aa to <4 x i32>
  %i.ac = shl <4 x i32> %i.ab, splat (i32 1)
  %i.ad = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.ac, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.ae = icmp eq <4 x i64> %i.ad, %i.h
  %i.af = bitcast <4 x i1> %i.ae to i4            ; 2 uses
  %.not92.us.1 = icmp eq i4 %i.af, 0
  br i1 %.not92.us.1, label %bb.c, label %.thread143.split.us, !prof !12

bb.c:                                             ; preds = %.lr.ph.split.us.1
  %indvars.iv.next316.1 = add nuw nsw i64 %indvars.iv315, 8 ; 2 uses
  %niter485.next.1 = add i64 %niter485, 2         ; 2 uses
  %niter485.ncmp.1.not = icmp eq i64 %niter485.next.1, %unroll_iter484
  br i1 %niter485.ncmp.1.not, label %.preheader39.i.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.c, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.loopexit166.split.us.us
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %.loopexit166.split.us.us ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  %i.ah = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ag)
  %i.ai = bitcast <16 x i8> %i.ah to <4 x i32>
  %i.aj = shl <4 x i32> %i.ai, splat (i32 1)
  %i.ak = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.aj, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.al = icmp eq <4 x i64> %i.ak, %i.h
  %i.am = bitcast <4 x i1> %i.al to i4            ; 2 uses
  %.not92.us226 = icmp eq i4 %i.am, 0
  br i1 %.not92.us226, label %.loopexit166.split.us.us, label %.preheader165.us, !prof !12

.preheader165.us:                                 ; preds = %.lr.ph.split.split.us
  %i.an = zext i4 %i.am to i16
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  br label %bb.d

.loopexit166.split.us.us:                         ; preds = %bb.e, %.lr.ph.split.split.us
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 4 ; 2 uses
  %.not94.us227 = icmp samesign ult i64 %indvars.iv.next313, %i.j
  br i1 %.not94.us227, label %.lr.ph.split.split.us, label %.preheader39.i, !llvm.loop !13

bb.d:                                             ; preds = %bb.e, %.preheader165.us
  %.0134192.us.us = phi i16 [ %i.an, %.preheader165.us ], [ %i.az, %bb.e ] ; 3 uses
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.0134192.us.us, i1 true) ; 2 uses
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %2, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ax = icmp eq i64 %i.aw, %i.b
  br i1 %i.ax, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = add nsw i16 %.0134192.us.us, -1
  %i.az = and i16 %i.ay, %.0134192.us.us          ; 2 uses
  %.not93.us.us = icmp eq i16 %i.az, 0
  br i1 %.not93.us.us, label %.loopexit166.split.us.us, label %bb.d, !llvm.loop !17

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.i, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %i.ba = add nsw i64 %i.j, -4                    ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %.lr.ph.split.split.split.epil.preheader, label %.lr.ph.split.split.split.preheader.new

.lr.ph.split.split.split.preheader.new:           ; preds = %.lr.ph.split.split.split.preheader
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.loopexit166.split.split.us.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.loopexit166.split.split.us.us ], [ 0, %.lr.ph.split.split ] ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv309
  %i.bf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.be)
  %i.bg = bitcast <16 x i8> %i.bf to <4 x i32>
  %i.bh = shl <4 x i32> %i.bg, splat (i32 1)
  %i.bi = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.bh, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.bj = icmp eq <4 x i64> %i.bi, %i.h
  %i.bk = bitcast <4 x i1> %i.bj to i4            ; 2 uses
  %.not92.us232 = icmp eq i4 %i.bk, 0
  br i1 %.not92.us232, label %.loopexit166.split.split.us.us, label %.preheader165.us233, !prof !12

.preheader165.us233:                              ; preds = %.lr.ph.split.split.split.us
  %i.bl = zext i4 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv309
  br label %.lr.ph.i.preheader.us.us

.loopexit166.split.split.us.us:                   ; preds = %bb.g, %.lr.ph.split.split.split.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 4 ; 2 uses
  %.not94.us234 = icmp samesign ult i64 %indvars.iv.next310, %i.j
  br i1 %.not94.us234, label %.lr.ph.split.split.split.us, label %.preheader39.i, !llvm.loop !13

.lr.ph.i.preheader.us.us:                         ; preds = %bb.g, %.preheader165.us233
  %.0134192.us201.us = phi i16 [ %i.bl, %.preheader165.us233 ], [ %i.bp, %bb.g ] ; 3 uses
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.0134192.us201.us, i1 true) ; 3 uses
  %i.bo = add nsw i16 %.0134192.us201.us, -1
  %i.bp = and i16 %i.bo, %.0134192.us201.us       ; 2 uses
  %i.bq = zext nneg i16 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %2, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !18
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = select i1 %i.bw, ptr %i.bx, ptr %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.f, %.lr.ph.i.preheader.us.us
  %.01431.i.us.us = phi i32 [ %9, %bb.f ], [ %i.e, %.lr.ph.i.preheader.us.us ] ; 3 uses
  %.01630.i.us.us = phi ptr [ %7, %bb.f ], [ %.sroa.gep133, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.01829.i.us.us = phi ptr [ %8, %bb.f ], [ %i.cb, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %i.cc = load <32 x i8>, ptr %.01630.i.us.us, align 1, !tbaa !20, !noalias !21
  %i.cd = load <32 x i8>, ptr %.01829.i.us.us, align 1, !tbaa !20, !noalias !26
  %i.ce = icmp eq <32 x i8> %i.cc, %i.cd
  %i.cf = bitcast <32 x i1> %i.ce to i32          ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.f, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us.a

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us.a: ; preds = %.lr.ph.i.us.us
  %5 = xor i32 %i.cf, -1
  %6 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true)
  %.not159.us.us = icmp samesign ult i32 %6, %.01431.i.us.us
  br i1 %.not159.us.us, label %bb.g, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367

bb.f:                                             ; preds = %.lr.ph.i.us.us
  %7 = getelementptr inbounds nuw i8, ptr %.01630.i.us.us, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %.01829.i.us.us, i64 32
  %9 = add nsw i32 %.01431.i.us.us, -32
  %10 = icmp sgt i32 %.01431.i.us.us, 32
  br i1 %10, label %.lr.ph.i.us.us, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366

bb.g:                                             ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us.a
  %.not93.us202.us = icmp eq i16 %i.bp, 0
  br i1 %.not93.us202.us, label %.loopexit166.split.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !17

.lr.ph.split.split.split:                         ; preds = %bb.h, %.lr.ph.split.split.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ch)
  %i.cj = bitcast <16 x i8> %i.ci to <4 x i32>
  %i.ck = shl <4 x i32> %i.cj, splat (i32 1)
  %i.cl = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.ck, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.cm = icmp eq <4 x i64> %i.cl, %i.h
  %i.cn = bitcast <4 x i1> %i.cm to i4            ; 2 uses
  %.not92 = icmp eq i4 %i.cn, 0
  br i1 %.not92, label %.lr.ph.split.split.split.1, label %.preheader165, !prof !12

.preheader165:                                    ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split.1, %.lr.ph.split.split.split.epil.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.split.split.epil.preheader ], [ %indvars.iv, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.lr.ph.split.split.split.1 ]
  %.lcssa477 = phi i4 [ %i.dr, %.lr.ph.split.split.split.epil.preheader ], [ %i.cn, %.lr.ph.split.split.split ], [ %i.cw, %.lr.ph.split.split.split.1 ]
  %i.co = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %.lcssa477, i1 true)
  %i.cp = zext nneg i4 %i.co to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

.lr.ph.split.split.split.1:                       ; preds = %.lr.ph.split.split.split
  %indvars.iv.next = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cq)
  %i.cs = bitcast <16 x i8> %i.cr to <4 x i32>
  %i.ct = shl <4 x i32> %i.cs, splat (i32 1)
  %i.cu = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.ct, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.cv = icmp eq <4 x i64> %i.cu, %i.h
  %i.cw = bitcast <4 x i1> %i.cv to i4            ; 2 uses
  %.not92.1 = icmp eq i4 %i.cw, 0
  br i1 %.not92.1, label %bb.h, label %.preheader165, !prof !12

bb.h:                                             ; preds = %.lr.ph.split.split.split.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader39.i.loopexit476.unr-lcssa, label %.lr.ph.split.split.split, !llvm.loop !13

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit: ; preds = %bb.d
  %i.cx = zext nneg i16 %i.ap to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366: ; preds = %bb.f
  %i.cy = zext nneg i16 %i.bn to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367: ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us.a
  %i.cz = zext nneg i16 %i.bn to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread: ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit, %.preheader165
  %.074188.in = phi i64 [ %indvars.iv312, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit ], [ %indvars.iv309, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366 ], [ %indvars.iv.lcssa, %.preheader165 ], [ %indvars.iv309, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367 ]
  %i.da = phi i32 [ %i.cx, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit ], [ %i.cy, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366 ], [ %i.cp, %.preheader165 ], [ %i.cz, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367 ]
  %.074188 = trunc i64 %.074188.in to i32
  %i.db = add nsw i32 %i.da, %.074188
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.preheader39.i.loopexit.unr-lcssa:                ; preds = %bb.c
  %i.dc = and i64 %i.k, 4
  %lcmp.mod482.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod482.not.not, label %.lr.ph.split.us.epil.preheader, label %.preheader39.i

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader39.i.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv315.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next316.1, %.preheader39.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod483 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod483)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv315.epil.init
  %i.de = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.dd)
  %i.df = bitcast <16 x i8> %i.de to <4 x i32>
  %i.dg = shl <4 x i32> %i.df, splat (i32 1)
  %i.dh = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.dg, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.di = icmp eq <4 x i64> %i.dh, %i.h
  %i.dj = bitcast <4 x i1> %i.di to i4            ; 2 uses
  %.not92.us.epil = icmp eq i4 %i.dj, 0
  br i1 %.not92.us.epil, label %.preheader39.i, label %.thread143.split.us, !prof !12

.preheader39.i.loopexit476.unr-lcssa:             ; preds = %bb.h
  %i.dk = and i64 %i.ba, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.split.split.epil.preheader, label %.preheader39.i

.lr.ph.split.split.split.epil.preheader:          ; preds = %.preheader39.i.loopexit476.unr-lcssa, %.lr.ph.split.split.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next.1, %.preheader39.i.loopexit476.unr-lcssa ] ; 2 uses
  %lcmp.mod480 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod480)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.dm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.dl)
  %i.dn = bitcast <16 x i8> %i.dm to <4 x i32>
  %i.do = shl <4 x i32> %i.dn, splat (i32 1)
  %i.dp = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.do, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.dq = icmp eq <4 x i64> %i.dp, %i.h
  %i.dr = bitcast <4 x i1> %i.dq to i4            ; 2 uses
  %.not92.epil = icmp eq i4 %i.dr, 0
  br i1 %.not92.epil, label %.preheader39.i, label %.preheader165, !prof !12

.preheader39.i:                                   ; preds = %.preheader39.i.loopexit476.unr-lcssa, %.lr.ph.split.split.split.epil.preheader, %.loopexit166.split.split.us.us, %.loopexit166.split.us.us, %.preheader39.i.loopexit.unr-lcssa, %.lr.ph.split.us.epil.preheader, %..preheader39.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..preheader39.i_crit_edge ], [ %i.j, %.loopexit166.split.split.us.us ], [ %i.j, %.loopexit166.split.us.us ], [ %i.j, %.preheader39.i.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.split.us.epil.preheader ], [ %i.j, %.lr.ph.split.split.split.epil.preheader ], [ %i.j, %.preheader39.i.loopexit476.unr-lcssa ]
  %i.ds = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi
  %i.dt = and i32 %4, 3                           ; 2 uses
  %.not160 = icmp eq i32 %i.dt, 0
  br i1 %.not160, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.preheader39.i
  %wide.trip.count.i = zext nneg i32 %i.dt to i64
  %i.du = and i64 %.fr357, 4294967295
  %i.dv = add nsw i64 %i.du, -4
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i, %.lr.ph.i97
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i ] ; 5 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %2, i64 %i.dy ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.ea, %.fr357
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

bb.j:                                             ; preds = %bb.i
  %i.ec = icmp ult i32 %i.eb, 13
  br i1 %i.ec, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ed = icmp samesign ult i32 %i.eb, 5
  br i1 %i.ed, label %.thread.loopexit69.split.loop.exit.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.eg, ptr nonnull %.sroa.gep133, i64 %i.dv)
  %i.eh = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.eh, label %.thread.loopexit69.split.loop.exit71.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !15
  %i.ek = icmp eq i64 %i.ej, %i.b
  br i1 %i.ek, label %.thread.loopexit69.split.loop.exit73.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i: ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i, %bb.l, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %bb.i, !llvm.loop !31

.thread.loopexit69.split.loop.exit.i:             ; preds = %bb.k
  %i.el = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit69.split.loop.exit71.i:           ; preds = %bb.l
  %i.em = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit69.split.loop.exit73.i:           ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.en = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

bb.m:                                             ; preds = %bb.a
  %i.eo = bitcast i64 %i.b to <2 x i32>
  %.sroa.0326.8.vecblend = shufflevector <2 x i32> %i.a, <2 x i32> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = bitcast <4 x i32> %.sroa.0326.8.vecblend to <2 x i64>
  %.sroa.0.16.vecblend = shufflevector <2 x i64> %i.ep, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %.not91257 = icmp sgt i32 %4, 3
  br i1 %.not91257, label %.lr.ph263, label %.thread157

.lr.ph263:                                        ; preds = %bb.m
  %i.eq = icmp slt i32 %i.e, 1                    ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph263, %.loopexit
  %indvars.iv318 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next319, %.loopexit ] ; 16 uses
  %.073262 = phi ptr [ %2, %.lr.ph263 ], [ %i.it, %.loopexit ] ; 7 uses
  %i.er = load <4 x i64>, ptr %.073262, align 1, !tbaa !20, !noalias !32
  %i.es = icmp eq <4 x i64> %i.er, %.sroa.0.16.vecblend
  %i.et = getelementptr inbounds nuw i8, ptr %.073262, i64 32
  %i.eu = load <4 x i64>, ptr %i.et, align 1, !tbaa !20, !noalias !39
  %i.ev = icmp eq <4 x i64> %i.eu, %.sroa.0.16.vecblend
  %i.ew = shufflevector <4 x i1> %i.es, <4 x i1> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ex = bitcast <8 x i1> %i.ew to i8            ; 8 uses
  %i.ey = zext i8 %i.ex to i32                    ; 17 uses
  %i.ez = and i32 %i.ey, 85
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.loopexit, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.n
  br i1 %i.d, label %.lr.ph246.split.us, label %.lr.ph246.split

.lr.ph246.split.us:                               ; preds = %.lr.ph246
  %i.fb = and i32 %i.ey, 1
  %.not90.us = icmp eq i32 %i.fb, 0
  br i1 %.not90.us, label %bb.o, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit553

bb.o:                                             ; preds = %.lr.ph246.split.us
  %.not89.us = icmp ult i8 %i.ex, 4
  br i1 %.not89.us, label %.loopexit, label %.lr.ph246.split.us.1

.lr.ph246.split.us.1:                             ; preds = %bb.o
  %i.fc = and i32 %i.ey, 4
  %.not90.us.1 = icmp eq i32 %i.fc, 0
  br i1 %.not90.us.1, label %bb.p, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit551

bb.p:                                             ; preds = %.lr.ph246.split.us.1
  %.not89.us.1 = icmp ult i8 %i.ex, 16
  br i1 %.not89.us.1, label %.loopexit, label %.lr.ph246.split.us.2

.lr.ph246.split.us.2:                             ; preds = %bb.p
  %i.fd = and i32 %i.ey, 16
  %.not90.us.2 = icmp eq i32 %i.fd, 0
  br i1 %.not90.us.2, label %bb.q, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit549

bb.q:                                             ; preds = %.lr.ph246.split.us.2
  %.not89.us.2 = icmp ult i8 %i.ex, 64
  %i.fe = and i32 %i.ey, 64
  %.not90.us.3 = icmp eq i32 %i.fe, 0
  %or.cond = or i1 %.not89.us.2, %.not90.us.3
  br i1 %or.cond, label %.loopexit, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit547

.lr.ph246.split:                                  ; preds = %.lr.ph246
  br i1 %i.c, label %.lr.ph246.split.split.us, label %.lr.ph246.split.split

.lr.ph246.split.split.us:                         ; preds = %.lr.ph246.split
  %i.ff = and i32 %i.ey, 3
  %or.cond265 = icmp eq i32 %i.ff, 3
  br i1 %or.cond265, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit446.split.loop.exit545, label %bb.r

bb.r:                                             ; preds = %.lr.ph246.split.split.us
  %.not89.us253 = icmp ult i8 %i.ex, 4
  br i1 %.not89.us253, label %.loopexit, label %.lr.ph246.split.split.us.1

.lr.ph246.split.split.us.1:                       ; preds = %bb.r
  %i.fg = and i32 %i.ey, 12
  %or.cond265.1 = icmp eq i32 %i.fg, 12
  br i1 %or.cond265.1, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit446.split.loop.exit543, label %bb.s

bb.s:                                             ; preds = %.lr.ph246.split.split.us.1
  %.not89.us253.1 = icmp ult i8 %i.ex, 16
  br i1 %.not89.us253.1, label %.loopexit, label %.lr.ph246.split.split.us.2

.lr.ph246.split.split.us.2:                       ; preds = %bb.s
  %i.fh = and i32 %i.ey, 48
  %or.cond265.2 = icmp eq i32 %i.fh, 48
  br i1 %or.cond265.2, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit446.split.loop.exit541, label %bb.t

bb.t:                                             ; preds = %.lr.ph246.split.split.us.2
  %i.fi = lshr i32 %i.ey, 6
  %cond = icmp eq i32 %i.fi, 3
end_hunk_0
