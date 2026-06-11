inline.NumInlined: 92
inline.NumDeleted: 54
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
  %.lcssa460 = phi i4 [ %i.dp, %.lr.ph.split.us.epil.preheader ], [ %i.u, %.lr.ph.split.us ], [ %i.af, %.lr.ph.split.us.1 ]
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
  %.01431.i.us.us = phi i32 [ %i.cl, %bb.f ], [ %i.e, %.lr.ph.i.preheader.us.us ] ; 3 uses
  %.01630.i.us.us = phi ptr [ %i.cj, %bb.f ], [ %.sroa.gep133, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.01829.i.us.us = phi ptr [ %i.ck, %bb.f ], [ %i.cb, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %i.cc = load <32 x i8>, ptr %.01630.i.us.us, align 1, !tbaa !20, !noalias !21
  %i.cd = load <32 x i8>, ptr %.01829.i.us.us, align 1, !tbaa !20, !noalias !26
  %i.ce = icmp eq <32 x i8> %i.cc, %i.cd
  %i.cf = bitcast <32 x i1> %i.ce to i32          ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.f, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us: ; preds = %.lr.ph.i.us.us
  %i.ch = xor i32 %i.cf, -1
  %i.ci = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ch, i1 true)
  %.not159.us.us = icmp samesign ult i32 %i.ci, %.01431.i.us.us
  br i1 %.not159.us.us, label %bb.g, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367

bb.f:                                             ; preds = %.lr.ph.i.us.us
  %i.cj = getelementptr inbounds nuw i8, ptr %.01630.i.us.us, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.01829.i.us.us, i64 32
  %i.cl = add nsw i32 %.01431.i.us.us, -32
  %i.cm = icmp sgt i32 %.01431.i.us.us, 32
  br i1 %i.cm, label %.lr.ph.i.us.us, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366

bb.g:                                             ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us
  %.not93.us202.us = icmp eq i16 %i.bp, 0
  br i1 %.not93.us202.us, label %.loopexit166.split.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !17

.lr.ph.split.split.split:                         ; preds = %bb.h, %.lr.ph.split.split.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.co = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cn)
  %i.cp = bitcast <16 x i8> %i.co to <4 x i32>
  %i.cq = shl <4 x i32> %i.cp, splat (i32 1)
  %i.cr = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.cq, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.cs = icmp eq <4 x i64> %i.cr, %i.h
  %i.ct = bitcast <4 x i1> %i.cs to i4            ; 2 uses
  %.not92 = icmp eq i4 %i.ct, 0
  br i1 %.not92, label %.lr.ph.split.split.split.1, label %.preheader165, !prof !12

.preheader165:                                    ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split.1, %.lr.ph.split.split.split.epil.preheader
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.split.split.epil.preheader ], [ %indvars.iv, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.lr.ph.split.split.split.1 ]
  %.lcssa477 = phi i4 [ %i.dx, %.lr.ph.split.split.split.epil.preheader ], [ %i.ct, %.lr.ph.split.split.split ], [ %i.dc, %.lr.ph.split.split.split.1 ]
  %i.cu = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %.lcssa477, i1 true)
  %i.cv = zext nneg i4 %i.cu to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

.lr.ph.split.split.split.1:                       ; preds = %.lr.ph.split.split.split
  %indvars.iv.next = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.cx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.cw)
  %i.cy = bitcast <16 x i8> %i.cx to <4 x i32>
  %i.cz = shl <4 x i32> %i.cy, splat (i32 1)
  %i.da = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.cz, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.db = icmp eq <4 x i64> %i.da, %i.h
  %i.dc = bitcast <4 x i1> %i.db to i4            ; 2 uses
  %.not92.1 = icmp eq i4 %i.dc, 0
  br i1 %.not92.1, label %bb.h, label %.preheader165, !prof !12

bb.h:                                             ; preds = %.lr.ph.split.split.split.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader39.i.loopexit476.unr-lcssa, label %.lr.ph.split.split.split, !llvm.loop !13

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit: ; preds = %bb.d
  %i.dd = zext nneg i16 %i.ap to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366: ; preds = %bb.f
  %i.de = zext nneg i16 %i.bn to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367: ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.us.us
  %i.df = zext nneg i16 %i.bn to i32
  br label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread: ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit, %.preheader165
  %.074188.in = phi i64 [ %indvars.iv312, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit ], [ %indvars.iv309, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366 ], [ %indvars.iv.lcssa, %.preheader165 ], [ %indvars.iv309, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367 ]
  %i.dg = phi i32 [ %i.dd, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit ], [ %i.de, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit366 ], [ %i.cv, %.preheader165 ], [ %i.df, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread.loopexit367 ]
  %.074188 = trunc i64 %.074188.in to i32
  %i.dh = add nsw i32 %i.dg, %.074188
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.preheader39.i.loopexit.unr-lcssa:                ; preds = %bb.c
  %i.di = and i64 %i.k, 4
  %lcmp.mod482.not.not = icmp eq i64 %i.di, 0
  br i1 %lcmp.mod482.not.not, label %.lr.ph.split.us.epil.preheader, label %.preheader39.i

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader39.i.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv315.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next316.1, %.preheader39.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod483 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod483)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv315.epil.init
  %i.dk = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.dj)
  %i.dl = bitcast <16 x i8> %i.dk to <4 x i32>
  %i.dm = shl <4 x i32> %i.dl, splat (i32 1)
  %i.dn = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.dm, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.do = icmp eq <4 x i64> %i.dn, %i.h
  %i.dp = bitcast <4 x i1> %i.do to i4            ; 2 uses
  %.not92.us.epil = icmp eq i4 %i.dp, 0
  br i1 %.not92.us.epil, label %.preheader39.i, label %.thread143.split.us, !prof !12

.preheader39.i.loopexit476.unr-lcssa:             ; preds = %bb.h
  %i.dq = and i64 %i.ba, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.split.split.epil.preheader, label %.preheader39.i

.lr.ph.split.split.split.epil.preheader:          ; preds = %.preheader39.i.loopexit476.unr-lcssa, %.lr.ph.split.split.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next.1, %.preheader39.i.loopexit476.unr-lcssa ] ; 2 uses
  %lcmp.mod480 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod480)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.ds = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.dr)
  %i.dt = bitcast <16 x i8> %i.ds to <4 x i32>
  %i.du = shl <4 x i32> %i.dt, splat (i32 1)
  %i.dv = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %2, <4 x i32> %i.du, <4 x i64> splat (i64 -1), i8 8), !noalias !7
  %i.dw = icmp eq <4 x i64> %i.dv, %i.h
  %i.dx = bitcast <4 x i1> %i.dw to i4            ; 2 uses
  %.not92.epil = icmp eq i4 %i.dx, 0
  br i1 %.not92.epil, label %.preheader39.i, label %.preheader165, !prof !12

.preheader39.i:                                   ; preds = %.preheader39.i.loopexit476.unr-lcssa, %.lr.ph.split.split.split.epil.preheader, %.loopexit166.split.split.us.us, %.loopexit166.split.us.us, %.preheader39.i.loopexit.unr-lcssa, %.lr.ph.split.us.epil.preheader, %..preheader39.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..preheader39.i_crit_edge ], [ %i.j, %.loopexit166.split.split.us.us ], [ %i.j, %.loopexit166.split.us.us ], [ %i.j, %.preheader39.i.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.split.us.epil.preheader ], [ %i.j, %.lr.ph.split.split.split.epil.preheader ], [ %i.j, %.preheader39.i.loopexit476.unr-lcssa ]
  %i.dy = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi
  %i.dz = and i32 %4, 3                           ; 2 uses
  %.not160 = icmp eq i32 %i.dz, 0
  br i1 %.not160, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.preheader39.i
  %wide.trip.count.i = zext nneg i32 %i.dz to i64
  %i.ea = and i64 %.fr357, 4294967295
  %i.eb = add nsw i64 %i.ea, -4
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i, %.lr.ph.i97
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i ] ; 5 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [16 x i8], ptr %2, i64 %i.ee ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.eg, %.fr357
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

bb.j:                                             ; preds = %bb.i
  %i.ei = icmp ult i32 %i.eh, 13
  br i1 %i.ei, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ej = icmp samesign ult i32 %i.eh, 5
  br i1 %i.ej, label %.thread.loopexit69.split.loop.exit.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.em, ptr nonnull %.sroa.gep133, i64 %i.eb)
  %i.en = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.en, label %.thread.loopexit69.split.loop.exit71.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.k
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !15
  %i.eq = icmp eq i64 %i.ep, %i.b
  br i1 %i.eq, label %.thread.loopexit69.split.loop.exit73.i, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i: ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i, %bb.l, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %bb.i, !llvm.loop !31

.thread.loopexit69.split.loop.exit.i:             ; preds = %bb.k
  %i.er = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit69.split.loop.exit71.i:           ; preds = %bb.l
  %i.es = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit69.split.loop.exit73.i:           ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.et = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

bb.m:                                             ; preds = %bb.a
  %i.eu = bitcast i64 %i.b to <2 x i32>
  %.sroa.0326.8.vecblend = shufflevector <2 x i32> %i.a, <2 x i32> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ev = bitcast <4 x i32> %.sroa.0326.8.vecblend to <2 x i64>
  %.sroa.0.16.vecblend = shufflevector <2 x i64> %i.ev, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %.not91257 = icmp sgt i32 %4, 3
  br i1 %.not91257, label %.lr.ph263, label %.thread157

.lr.ph263:                                        ; preds = %bb.m
  %i.ew = icmp slt i32 %i.e, 1                    ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph263, %.loopexit
  %indvars.iv318 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next319, %.loopexit ] ; 16 uses
  %.073262 = phi ptr [ %2, %.lr.ph263 ], [ %i.gd, %.loopexit ] ; 7 uses
  %i.ex = load <4 x i64>, ptr %.073262, align 1, !tbaa !20, !noalias !32
  %i.ey = icmp eq <4 x i64> %i.ex, %.sroa.0.16.vecblend
  %i.ez = getelementptr inbounds nuw i8, ptr %.073262, i64 32
  %i.fa = load <4 x i64>, ptr %i.ez, align 1, !tbaa !20, !noalias !39
  %i.fb = icmp eq <4 x i64> %i.fa, %.sroa.0.16.vecblend
  %i.fc = shufflevector <4 x i1> %i.ey, <4 x i1> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = bitcast <8 x i1> %i.fc to i8            ; 8 uses
  %i.fe = zext i8 %i.fd to i32                    ; 17 uses
  %i.ff = and i32 %i.fe, 85
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %.loopexit, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.n
  br i1 %i.d, label %.lr.ph246.split.us, label %.lr.ph246.split

.lr.ph246.split.us:                               ; preds = %.lr.ph246
  %5 = and i32 %i.fe, 1
  %.not90.us = icmp eq i32 %5, 0
  br i1 %.not90.us, label %6, label %.thread.loopexit.split.loop.exit.i119.a

6:                                                ; preds = %.lr.ph246.split.us
  %.not89.us = icmp ult i8 %i.fd, 4
  br i1 %.not89.us, label %.loopexit, label %.lr.ph246.split.us.1

.lr.ph246.split.us.1:                             ; preds = %6
  %7 = and i32 %i.fe, 4
  %.not90.us.1 = icmp eq i32 %7, 0
  br i1 %.not90.us.1, label %8, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit551

8:                                                ; preds = %.lr.ph246.split.us.1
  %.not89.us.1 = icmp ult i8 %i.fd, 16
  br i1 %.not89.us.1, label %.loopexit, label %.lr.ph246.split.us.2

.lr.ph246.split.us.2:                             ; preds = %8
  %9 = and i32 %i.fe, 16
  %.not90.us.2 = icmp eq i32 %9, 0
  br i1 %.not90.us.2, label %10, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit549

10:                                               ; preds = %.lr.ph246.split.us.2
  %.not89.us.2 = icmp ult i8 %i.fd, 64
  %11 = and i32 %i.fe, 64
  %.not90.us.3 = icmp eq i32 %11, 0
  %or.cond = or i1 %.not89.us.2, %.not90.us.3
  br i1 %or.cond, label %.loopexit, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit547

.lr.ph246.split:                                  ; preds = %.lr.ph246
  br i1 %i.c, label %.lr.ph246.split.split.us, label %.lr.ph246.split.split

.lr.ph246.split.split.us:                         ; preds = %.lr.ph246.split
  %12 = and i32 %i.fe, 3
  %or.cond265 = icmp eq i32 %12, 3
  br i1 %or.cond265, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362.a, label %13

13:                                               ; preds = %.lr.ph246.split.split.us
  %.not89.us253 = icmp ult i8 %i.fd, 4
  br i1 %.not89.us253, label %.loopexit, label %.lr.ph246.split.split.us.1

.lr.ph246.split.split.us.1:                       ; preds = %13
  %14 = and i32 %i.fe, 12
  %or.cond265.1 = icmp eq i32 %14, 12
  br i1 %or.cond265.1, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358.a, label %15

15:                                               ; preds = %.lr.ph246.split.split.us.1
  %.not89.us253.1 = icmp ult i8 %i.fd, 16
  br i1 %.not89.us253.1, label %.loopexit, label %.lr.ph246.split.split.us.2

.lr.ph246.split.split.us.2:                       ; preds = %15
  %16 = and i32 %i.fe, 48
  %or.cond265.2 = icmp eq i32 %16, 48
  br i1 %or.cond265.2, label %.thread.loopexit.split.loop.exit81.i118.a, label %17

17:                                               ; preds = %.lr.ph246.split.split.us.2
  %18 = lshr i32 %i.fe, 6
  %cond = icmp eq i32 %18, 3
  br i1 %cond, label %.thread.loopexit.split.loop.exit79.i116.a, label %.loopexit

.lr.ph246.split.split:                            ; preds = %.lr.ph246.split
  %19 = and i32 %i.fe, 1
  %.not90 = icmp eq i32 %19, 0
  br i1 %.not90, label %39, label %.lr.ph246.a

.lr.ph246.a:                                      ; preds = %.lr.ph246.split.split
  %20 = and i32 %i.fe, 3
  %21 = icmp eq i32 %20, 3
  %brmerge = or i1 %21, %i.ew
  br i1 %brmerge, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %.lr.ph246.a
  %22 = getelementptr inbounds nuw [16 x i8], ptr %.073262, i64 %indvars.iv318 ; 3 uses
  %23 = load i32, ptr %22, align 8, !tbaa !18
  %24 = icmp ult i32 %23, 13
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %24, ptr %25, ptr %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 4
  br label %.lr.ph246.split.us.a

.lr.ph246.split.us.a:                             ; preds = %.lr.ph.i99.preheader, %bb.o
  %.075245.us = phi i32 [ %i.fh, %bb.o ], [ %i.e, %.lr.ph.i99.preheader ] ; 3 uses
  %.01630.i101 = phi ptr [ %34, %bb.o ], [ %.sroa.gep133, %.lr.ph.i99.preheader ] ; 2 uses
  %.01829.i102 = phi ptr [ %35, %bb.o ], [ %29, %.lr.ph.i99.preheader ] ; 2 uses
  %30 = load <32 x i8>, ptr %.01630.i101, align 1, !tbaa !20, !noalias !46
  %31 = load <32 x i8>, ptr %.01829.i102, align 1, !tbaa !20, !noalias !51
  %32 = icmp eq <32 x i8> %30, %31
  %33 = bitcast <32 x i1> %32 to i32              ; 2 uses
  %.not90.us.a = icmp eq i32 %33, -1
  br i1 %.not90.us.a, label %bb.o, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104

bb.o:                                             ; preds = %.lr.ph246.split.us.a
  %34 = getelementptr inbounds nuw i8, ptr %.01630.i101, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %.01829.i102, i64 32
  %i.fh = add nsw i32 %.075245.us, -32
  %36 = icmp sgt i32 %.075245.us, 32
  br i1 %36, label %.lr.ph246.split.us.a, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104: ; preds = %.lr.ph246.split.us.a
  %37 = xor i32 %33, -1
  %38 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %37, i1 true)
  %.not161 = icmp samesign ult i32 %38, %.075245.us
  br i1 %.not161, label %39, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362

39:                                               ; preds = %.lr.ph246.split.split, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104
  %indvars.iv.next321 = or disjoint i64 %indvars.iv318, 1 ; 4 uses
  %.not89 = icmp ult i8 %i.fd, 4
  br i1 %.not89, label %.loopexit, label %.lr.ph246.split.split.1

.lr.ph246.split.split.1:                          ; preds = %39
  %40 = and i32 %i.fe, 4
  %.not90.1 = icmp eq i32 %40, 0
  br i1 %.not90.1, label %61, label %.lr.ph246.split.a

.lr.ph246.split.a:                                ; preds = %.lr.ph246.split.split.1
  %41 = and i32 %i.fe, 12
  %42 = icmp eq i32 %41, 12
  %brmerge.1 = or i1 %42, %i.ew
  br i1 %brmerge.1, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362, label %.lr.ph.i99.preheader.1

.lr.ph.i99.preheader.1:                           ; preds = %.lr.ph246.split.a
  %43 = getelementptr inbounds nuw [16 x i8], ptr %.073262, i64 %indvars.iv.next321 ; 3 uses
  %44 = load i32, ptr %43, align 8, !tbaa !18
  %45 = icmp ult i32 %44, 13
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = select i1 %45, ptr %46, ptr %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 4
  br label %.lr.ph246.split.split.us.a

.lr.ph246.split.split.us.a:                       ; preds = %.lr.ph246.split.split.a, %.lr.ph.i99.preheader.1
  %.075245.us250 = phi i32 [ %59, %.lr.ph246.split.split.a ], [ %i.e, %.lr.ph.i99.preheader.1 ] ; 3 uses
  %.01630.i101.1 = phi ptr [ %57, %.lr.ph246.split.split.a ], [ %.sroa.gep133, %.lr.ph.i99.preheader.1 ] ; 2 uses
  %.01829.i102.1 = phi ptr [ %58, %.lr.ph246.split.split.a ], [ %50, %.lr.ph.i99.preheader.1 ] ; 2 uses
  %51 = load <32 x i8>, ptr %.01630.i101.1, align 1, !tbaa !20, !noalias !46
  %52 = load <32 x i8>, ptr %.01829.i102.1, align 1, !tbaa !20, !noalias !51
  %53 = icmp eq <32 x i8> %51, %52
  %54 = bitcast <32 x i1> %53 to i32              ; 2 uses
  %or.cond265.a = icmp eq i32 %54, -1
  br i1 %or.cond265.a, label %.lr.ph246.split.split.a, label %bb.p

bb.p:                                             ; preds = %.lr.ph246.split.split.us.a
  %55 = xor i32 %54, -1
  %56 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %55, i1 true)
  %.not161.1 = icmp samesign ult i32 %56, %.075245.us250
  br i1 %.not161.1, label %61, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362

.lr.ph246.split.split.a:                          ; preds = %.lr.ph246.split.split.us.a
  %57 = getelementptr inbounds nuw i8, ptr %.01630.i101.1, i64 32
  %58 = getelementptr inbounds nuw i8, ptr %.01829.i102.1, i64 32
  %59 = add nsw i32 %.075245.us250, -32
  %60 = icmp sgt i32 %.075245.us250, 32
  br i1 %60, label %.lr.ph246.split.split.us.a, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358

61:                                               ; preds = %bb.p, %.lr.ph246.split.split.1
  %indvars.iv.next321.1 = or disjoint i64 %indvars.iv318, 2 ; 4 uses
  %.not89.1 = icmp ult i8 %i.fd, 16
  br i1 %.not89.1, label %.loopexit, label %.lr.ph246.split.split.2

.lr.ph246.split.split.2:                          ; preds = %61
  %62 = and i32 %i.fe, 16
  %.not90.2 = icmp eq i32 %62, 0
  br i1 %.not90.2, label %65, label %bb.q

bb.q:                                             ; preds = %.lr.ph246.split.split.2
  %i.fi = and i32 %i.fe, 48
  %i.fj = icmp eq i32 %i.fi, 48
  %brmerge.a = or i1 %i.fj, %i.ew
  br i1 %brmerge.a, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362, label %.lr.ph.i99.preheader.a

.lr.ph.i99.preheader.a:                           ; preds = %bb.q
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.073262, i64 %indvars.iv.next321.1 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !18
  %i.fm = icmp ult i32 %i.fl, 13
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = select i1 %i.fm, ptr %i.fn, ptr %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.r, %.lr.ph.i99.preheader.a
  %.01431.i100 = phi i32 [ %i.fz, %bb.r ], [ %i.e, %.lr.ph.i99.preheader.a ] ; 3 uses
  %.01630.i101.a = phi ptr [ %i.fx, %bb.r ], [ %.sroa.gep133, %.lr.ph.i99.preheader.a ] ; 2 uses
  %.01829.i102.a = phi ptr [ %i.fy, %bb.r ], [ %i.fr, %.lr.ph.i99.preheader.a ] ; 2 uses
  %i.fs = load <32 x i8>, ptr %.01630.i101.a, align 1, !tbaa !20, !noalias !46
  %i.ft = load <32 x i8>, ptr %.01829.i102.a, align 1, !tbaa !20, !noalias !51
  %i.fu = icmp eq <32 x i8> %i.fs, %i.ft
  %i.fv = bitcast <32 x i1> %i.fu to i32          ; 2 uses
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %bb.r, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.2

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.2: ; preds = %.lr.ph.i99
  %63 = xor i32 %i.fv, -1
  %64 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %63, i1 true)
  %.not161.2 = icmp samesign ult i32 %64, %.01431.i100
  br i1 %.not161.2, label %65, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362

bb.r:                                             ; preds = %.lr.ph.i99
  %i.fx = getelementptr inbounds nuw i8, ptr %.01630.i101.a, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.01829.i102.a, i64 32
  %i.fz = add nsw i32 %.01431.i100, -32
  %i.ga = icmp sgt i32 %.01431.i100, 32
  br i1 %i.ga, label %.lr.ph.i99, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358

65:                                               ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.2, %.lr.ph246.split.split.2
  %66 = lshr i32 %i.fe, 6                         ; 2 uses
  %indvars.iv.next321.2 = or disjoint i64 %indvars.iv318, 3 ; 4 uses
  %.not89.2 = icmp eq i32 %66, 0
  %67 = and i32 %i.fe, 64
  %.not90.3 = icmp eq i32 %67, 0
  %or.cond574 = or i1 %.not89.2, %.not90.3
  br i1 %or.cond574, label %.loopexit, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, 3
  %brmerge.3 = or i1 %69, %i.ew
  br i1 %brmerge.3, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362, label %.lr.ph.i99.preheader.3

.lr.ph.i99.preheader.3:                           ; preds = %68
  %70 = getelementptr inbounds nuw [16 x i8], ptr %.073262, i64 %indvars.iv.next321.2 ; 3 uses
  %71 = load i32, ptr %70, align 8, !tbaa !18
  %72 = icmp ult i32 %71, 13
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %75 = load ptr, ptr %74, align 8
  %76 = select i1 %72, ptr %73, ptr %75
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 4
  br label %.lr.ph.i99.3

.lr.ph.i99.3:                                     ; preds = %bb.s, %.lr.ph.i99.preheader.3
  %.01431.i100.3 = phi i32 [ %85, %bb.s ], [ %i.e, %.lr.ph.i99.preheader.3 ] ; 3 uses
  %.01630.i101.3 = phi ptr [ %83, %bb.s ], [ %.sroa.gep133, %.lr.ph.i99.preheader.3 ] ; 2 uses
  %.01829.i102.3 = phi ptr [ %84, %bb.s ], [ %77, %.lr.ph.i99.preheader.3 ] ; 2 uses
  %78 = load <32 x i8>, ptr %.01630.i101.3, align 1, !tbaa !20, !noalias !46
  %79 = load <32 x i8>, ptr %.01829.i102.3, align 1, !tbaa !20, !noalias !51
  %80 = icmp eq <32 x i8> %78, %79
  %81 = bitcast <32 x i1> %80 to i32              ; 2 uses
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %bb.s, label %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.a

_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.a: ; preds = %.lr.ph.i99.3
  %i.gb = xor i32 %81, -1
  %i.gc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gb, i1 true)
  %.not161.a = icmp samesign ult i32 %i.gc, %.01431.i100.3
  br i1 %.not161.a, label %.loopexit, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362

bb.s:                                             ; preds = %.lr.ph.i99.3
  %83 = getelementptr inbounds nuw i8, ptr %.01630.i101.3, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %.01829.i102.3, i64 32
  %85 = add nsw i32 %.01431.i100.3, -32
  %86 = icmp sgt i32 %.01431.i100.3, 32
  br i1 %86, label %.lr.ph.i99.3, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358

.loopexit:                                        ; preds = %17, %39, %61, %65, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.a, %13, %15, %6, %8, %10, %bb.n
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next319 to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %.073262, i64 64 ; 2 uses
  %.not91 = icmp sgt i32 %i.f, %indvars
  br i1 %.not91, label %bb.n, label %.thread157, !llvm.loop !56

.thread157:                                       ; preds = %.loopexit, %bb.m
  %.073.lcssa = phi ptr [ %2, %bb.m ], [ %i.gd, %.loopexit ]
  %i.ge = and i32 %4, 3                           ; 2 uses
  %.not162 = icmp eq i32 %i.ge, 0
  br i1 %.not162, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %.lr.ph49.i108

.lr.ph49.i108:                                    ; preds = %.thread157
  %wide.trip.count62.i109 = zext nneg i32 %i.ge to i64
  %i.gf = and i64 %.fr357, 4294967295
  %i.gg = add nsw i64 %i.gf, -4
  br label %bb.t

bb.t:                                             ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112, %.lr.ph49.i108
  %indvars.iv59.i110 = phi i64 [ 0, %.lr.ph49.i108 ], [ %indvars.iv.next60.i113, %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112 ] ; 5 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.073.lcssa, i64 %indvars.iv59.i110 ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8            ; 2 uses
  %.not.i22.i111 = icmp eq i64 %i.gi, %.fr357
  %i.gj = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %.not.i22.i111, label %bb.u, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112

bb.u:                                             ; preds = %bb.t
  %i.gk = icmp ult i32 %i.gj, 13
  br i1 %i.gk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gl = icmp samesign ult i32 %i.gj, 5
  br i1 %i.gl, label %.thread.loopexit.split.loop.exit.i119, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.i117

bb.w:                                             ; preds = %bb.u
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %bcmp.i24.i115 = tail call i32 @bcmp(ptr nonnull %i.go, ptr nonnull %.sroa.gep133, i64 %i.gg)
  %i.gp = icmp eq i32 %bcmp.i24.i115, 0
  br i1 %i.gp, label %.thread.loopexit.split.loop.exit79.i116, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112

_ZNK8facebook5velox10StringVieweqERKS1_.exit25.i117: ; preds = %bb.v
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !15
  %i.gs = icmp eq i64 %i.gr, %i.b
  br i1 %i.gs, label %.thread.loopexit.split.loop.exit81.i118, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112

_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112: ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.i117, %bb.w, %bb.t
  %indvars.iv.next60.i113 = add nuw nsw i64 %indvars.iv59.i110, 1 ; 2 uses
  %exitcond63.not.i114 = icmp eq i64 %indvars.iv.next60.i113, %wide.trip.count62.i109
  br i1 %exitcond63.not.i114, label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit, label %bb.t, !llvm.loop !57

.thread.loopexit.split.loop.exit.i119:            ; preds = %bb.v
  %87 = trunc nuw nsw i64 %indvars.iv59.i110 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit.split.loop.exit79.i116:          ; preds = %bb.w
  %88 = trunc nuw nsw i64 %indvars.iv59.i110 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit.split.loop.exit81.i118:          ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.i117
  %89 = trunc nuw nsw i64 %indvars.iv59.i110 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358: ; preds = %bb.s, %bb.r, %.lr.ph246.split.split.a, %bb.o
  %indvars.iv320.lcssa451 = phi i64 [ %indvars.iv.next321.1, %bb.r ], [ %indvars.iv.next321, %.lr.ph246.split.split.a ], [ %indvars.iv318, %bb.o ], [ %indvars.iv.next321.2, %bb.s ]
  %90 = trunc nuw nsw i64 %indvars.iv320.lcssa451 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362: ; preds = %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.a, %68, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.2, %bb.q, %bb.p, %.lr.ph246.split.a, %.lr.ph246.a, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104
  %indvars.iv320.lcssa = phi i64 [ %indvars.iv318, %.lr.ph246.a ], [ %indvars.iv318, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104 ], [ %indvars.iv.next321, %.lr.ph246.split.a ], [ %indvars.iv.next321, %bb.p ], [ %indvars.iv.next321.1, %bb.q ], [ %indvars.iv.next321.1, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.2 ], [ %indvars.iv.next321.2, %68 ], [ %indvars.iv.next321.2, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit104.a ]
  %91 = trunc nuw nsw i64 %indvars.iv320.lcssa to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit547: ; preds = %10
  %indvars323.le566 = trunc i64 %indvars.iv318 to i32
  %92 = or disjoint i32 %indvars323.le566, 3
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit549: ; preds = %.lr.ph246.split.us.2
  %indvars323.le562 = trunc i64 %indvars.iv318 to i32
  %93 = or disjoint i32 %indvars323.le562, 2
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit551: ; preds = %.lr.ph246.split.us.1
  %indvars323.le = trunc i64 %indvars.iv318 to i32
  %94 = or disjoint i32 %indvars323.le, 1
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit.split.loop.exit.i119.a:          ; preds = %.lr.ph246.split.us
  %i.gt = trunc i64 %indvars.iv318 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit.split.loop.exit79.i116.a:        ; preds = %17
  %i.gu = trunc i64 %indvars.iv318 to i32
  %95 = or disjoint i32 %i.gu, 3
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

.thread.loopexit.split.loop.exit81.i118.a:        ; preds = %.lr.ph246.split.split.us.2
  %i.gv = trunc i64 %indvars.iv318 to i32
  %96 = or disjoint i32 %i.gv, 2
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358.a: ; preds = %.lr.ph246.split.split.us.1
  %i.gw = trunc i64 %indvars.iv318 to i32
  %97 = or disjoint i32 %i.gw, 1
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362.a: ; preds = %.lr.ph246.split.split.us
  %i.gx = trunc i64 %indvars.iv318 to i32
  br label %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit

_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit: ; preds = %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i, %.thread.loopexit.split.loop.exit79.i116.a, %.thread.loopexit.split.loop.exit81.i118.a, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358.a, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362.a, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit547, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit549, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit551, %.thread.loopexit.split.loop.exit.i119.a, %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358, %.thread157, %.thread.loopexit.split.loop.exit.i119, %.thread.loopexit.split.loop.exit79.i116, %.thread.loopexit.split.loop.exit81.i118, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread, %.thread.loopexit69.split.loop.exit73.i, %.thread.loopexit69.split.loop.exit71.i, %.thread.loopexit69.split.loop.exit.i, %.preheader39.i, %.thread143.split.us
  %.13 = phi i32 [ -1, %_ZNK8facebook5velox10StringVieweqERKS1_.exit25.thread34.i112 ], [ %i.y, %.thread143.split.us ], [ %i.dh, %_ZN8facebook5velox4simd14memEqualUnsafeIN5xsimd4fma3INS3_4avx2EEEEEbPKvS8_i.exit.thread ], [ %i.et, %.thread.loopexit69.split.loop.exit73.i ], [ -1, %.preheader39.i ], [ %i.es, %.thread.loopexit69.split.loop.exit71.i ], [ %i.er, %.thread.loopexit69.split.loop.exit.i ], [ %88, %.thread.loopexit.split.loop.exit79.i116 ], [ %90, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358 ], [ %89, %.thread.loopexit.split.loop.exit81.i118 ], [ -1, %.thread157 ], [ %87, %.thread.loopexit.split.loop.exit.i119 ], [ %i.gx, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362.a ], [ %91, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit362 ], [ %i.gt, %.thread.loopexit.split.loop.exit.i119.a ], [ %94, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit551 ], [ %93, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit549 ], [ %92, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit445.split.loop.exit547 ], [ %97, %_ZN8facebook5velox12_GLOBAL__N_118linearSearchSimpleENS0_10StringViewEPKS2_PKii.exit.loopexit358.a ], [ %96, %.thread.loopexit.split.loop.exit81.i118.a ], [ %95, %.thread.loopexit.split.loop.exit79.i116.a ], [ -1, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.thread30.i ]
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.cttz.i4(i4, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_ZN8facebook5velox4simd6detail6GatherImiN5xsimd4fma3INS4_4avx2EEELi8EE5applyILi8EEENS4_5batchImS7_EEPKmNSA_IiNS4_4sse2EEERKS6_: argument 0"}
!9 = distinct !{!9, !"_ZN8facebook5velox4simd6detail6GatherImiN5xsimd4fma3INS4_4avx2EEELi8EE5applyILi8EEENS4_5batchImS7_EEPKmNSA_IiNS4_4sse2EEERKS6_"}
!10 = distinct !{!10, !11, !"_ZN8facebook5velox4simd6gatherImiLi8EN5xsimd4sse2ENS3_4fma3INS3_4avx2EEEEENS3_5batchIT_T3_EEPKS9_NS8_IT0_T2_EERKSA_: argument 0"}
!11 = distinct !{!11, !"_ZN8facebook5velox4simd6gatherImiLi8EN5xsimd4sse2ENS3_4fma3INS3_4avx2EEEEENS3_5batchIT_T3_EEPKS9_NS8_IT0_T2_EERKSA_"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!19, !4, i64 0}
!19 = !{!"_ZTSN8facebook5velox10StringViewE", !4, i64 0, !5, i64 4, !5, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!23 = distinct !{!23, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!24 = distinct !{!24, !25, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_: argument 0"}
!25 = distinct !{!25, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!28 = distinct !{!28, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!29 = distinct !{!29, !30, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_: argument 0"}
!30 = distinct !{!30, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_"}
!31 = distinct !{!31, !14}
!32 = !{!33, !35, !37}
!33 = distinct !{!33, !34, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEmvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!34 = distinct !{!34, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEmvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!35 = distinct !{!35, !36, !"_ZN5xsimd7load_asImNS_4fma3INS_4avx2EEEmEENS_6detail21simd_return_type_implIT1_T_T0_E4typeEPKS6_NS_14unaligned_modeE: argument 0"}
!36 = distinct !{!36, !"_ZN5xsimd7load_asImNS_4fma3INS_4avx2EEEmEENS_6detail21simd_return_type_implIT1_T_T0_E4typeEPKS6_NS_14unaligned_modeE"}
!37 = distinct !{!37, !38, !"_ZN5xsimd14load_unalignedINS_4fma3INS_4avx2EEEmEENS_5batchIT0_T_EEPKS5_: argument 0"}
!38 = distinct !{!38, !"_ZN5xsimd14load_unalignedINS_4fma3INS_4avx2EEEmEENS_5batchIT0_T_EEPKS5_"}
!39 = !{!40, !42, !44}
!40 = distinct !{!40, !41, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEmvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!41 = distinct !{!41, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEmvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!42 = distinct !{!42, !43, !"_ZN5xsimd7load_asImNS_4fma3INS_4avx2EEEmEENS_6detail21simd_return_type_implIT1_T_T0_E4typeEPKS6_NS_14unaligned_modeE: argument 0"}
!43 = distinct !{!43, !"_ZN5xsimd7load_asImNS_4fma3INS_4avx2EEEmEENS_6detail21simd_return_type_implIT1_T_T0_E4typeEPKS6_NS_14unaligned_modeE"}
!44 = distinct !{!44, !45, !"_ZN5xsimd14load_unalignedINS_4fma3INS_4avx2EEEmEENS_5batchIT0_T_EEPKS5_: argument 0"}
!45 = distinct !{!45, !"_ZN5xsimd14load_unalignedINS_4fma3INS_4avx2EEEmEENS_5batchIT0_T_EEPKS5_"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!48 = distinct !{!48, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!49 = distinct !{!49, !50, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_: argument 0"}
!50 = distinct !{!50, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE: argument 0"}
!53 = distinct !{!53, !"_ZN5xsimd6kernel14load_unalignedINS_4fma3INS_4avx2EEEhvEENS_5batchIT0_T_EEPKS6_NS0_7convertIS6_EERKNS_3avxE"}
!54 = distinct !{!54, !55, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_: argument 0"}
!55 = distinct !{!55, !"_ZN5xsimd5batchIhNS_4fma3INS_4avx2EEEE14load_unalignedIhEES4_PKT_"}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
end_hunk_0
