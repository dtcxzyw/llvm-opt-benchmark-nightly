Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_decompress?download=true
inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr, ptr }
%struct.HUF_DecompressFastArgs = type { [4 x ptr], [4 x ptr], [4 x i64], ptr, ptr, ptr, [4 x ptr] }

@algoTime = internal unnamed_addr constant [16 x [2 x %struct.algo_time_t]] [[2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 150, i32 216 }, %struct.algo_time_t { i32 381, i32 119 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 170, i32 205 }, %struct.algo_time_t { i32 514, i32 112 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 177, i32 199 }, %struct.algo_time_t { i32 539, i32 110 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 197, i32 194 }, %struct.algo_time_t { i32 644, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 221, i32 192 }, %struct.algo_time_t { i32 735, i32 107 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 256, i32 189 }, %struct.algo_time_t { i32 881, i32 106 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 359, i32 188 }, %struct.algo_time_t { i32 1167, i32 109 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 582, i32 187 }, %struct.algo_time_t { i32 1570, i32 114 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 688, i32 187 }, %struct.algo_time_t { i32 1712, i32 122 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 825, i32 186 }, %struct.algo_time_t { i32 1965, i32 136 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 976, i32 185 }, %struct.algo_time_t { i32 2131, i32 150 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1180, i32 186 }, %struct.algo_time_t { i32 2070, i32 175 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1377, i32 185 }, %struct.algo_time_t { i32 1731, i32 202 }], [2 x %struct.algo_time_t] [%struct.algo_time_t { i32 1412, i32 185 }, %struct.algo_time_t { i32 1695, i32 202 }]], align 16
@BIT_reloadDStream.zeroFilled = internal constant i64 0, align 8

; Function Attrs: nounwind uwtable
define i64 @HUF_readDTableX1_wksp(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !16
  %i.c = getelementptr i8, ptr %0, i64 4          ; 20 uses
  %i.d = icmp ult i64 %4, 1492
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1236 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = call i64 @HUF_readStats_wksp(ptr noundef nonnull %i.e, i64 noundef 256, ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.f, i64 noundef 876, i32 noundef %5) #15 ; 3 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %i.i = and i32 %.val, 255
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = call i32 @llvm.umin.i32(i32 %i.j, i32 11) ; 7 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !16   ; 8 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !16   ; 7 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  br i1 %i.n, label %HUF_rescaleStats.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.m, %i.k
  br i1 %i.o, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw nsw i32 %i.k, %i.m               ; 4 uses
  %.not43.i = icmp eq i32 %i.l, 0
  br i1 %.not43.i, label %.preheader36.i, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.q = trunc nuw nsw i32 %i.p to i8             ; 3 uses
  %wide.trip.count.i = zext i32 %i.l to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check315 = icmp ult i32 %i.l, 32
  br i1 %min.iters.check315, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 4294967264 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !17 ; 2 uses
  %wide.load316 = load <16 x i8>, ptr %i.t, align 1, !tbaa !17 ; 2 uses
  %i.u = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.v = icmp eq <16 x i8> %wide.load316, zeroinitializer
  %i.w = select <16 x i1> %i.u, <16 x i8> zeroinitializer, <16 x i8> %broadcast.splat
  %i.x = select <16 x i1> %i.v, <16 x i8> zeroinitializer, <16 x i8> %broadcast.splat
  %i.y = add <16 x i8> %i.w, %wide.load
  %i.z = add <16 x i8> %i.x, %wide.load316
  store <16 x i8> %i.y, ptr %i.s, align 1, !tbaa !17
  store <16 x i8> %i.z, ptr %i.t, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader36.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec317 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert318 = insertelement <8 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat319 = shufflevector <8 x i8> %broadcast.splatinsert318, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next322, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %index320 ; 2 uses
  %wide.load321 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !17 ; 2 uses
  %i.ac = icmp eq <8 x i8> %wide.load321, zeroinitializer
  %i.ad = select <8 x i1> %i.ac, <8 x i8> zeroinitializer, <8 x i8> %broadcast.splat319
  %i.ae = add <8 x i8> %i.ad, %wide.load321
  store <8 x i8> %i.ae, ptr %i.ab, align 1, !tbaa !17
  %index.next322 = add nuw i64 %index320, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n323 = icmp eq i64 %n.vec317, %wide.trip.count.i
  br i1 %cmp.n323, label %.preheader36.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec317, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader36.i:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %.not44.i = icmp eq i32 %i.m, 0
  br i1 %.not44.i, label %.lr.ph42.preheader.i, label %.lr.ph39.preheader.i

.lr.ph39.preheader.i:                             ; preds = %.preheader36.i
  %i.ag = zext nneg i32 %i.k to i64
  %i.ah = zext nneg i32 %i.p to i64
  br label %.lr.ph39.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = select i1 %i.ak, i8 0, i8 %i.q
  %i.am = add i8 %i.al, %i.aj
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader36.i, label %vec.epilog.scalar.ph, !llvm.loop !54

.lr.ph42.preheader.i:                             ; preds = %.lr.ph39.i, %.preheader36.i
  %i.an = shl nuw nsw i32 %i.p, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = xor i32 %i.m, -1
  %i.aq = add nsw i32 %i.k, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.at = sub nsw i64 %i.ao, %i.as
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.at
  %i.au = add nuw nsw i64 %i.as, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.au, i1 false), !tbaa !16
  br label %.lr.ph

.lr.ph39.i:                                       ; preds = %.lr.ph39.i, %.lr.ph39.preheader.i
  %indvars.iv46.i = phi i64 [ %i.ag, %.lr.ph39.preheader.i ], [ %indvars.iv.next47.i, %.lr.ph39.i ] ; 3 uses
  %i.av = sub nuw nsw i64 %indvars.iv46.i, %i.ah
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv46.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !16
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next47.i to i32
  %i.az = icmp ult i32 %i.p, %indvars.i
  br i1 %i.az, label %.lr.ph39.i, label %.lr.ph42.preheader.i, !llvm.loop !55

HUF_rescaleStats.exit:                            ; preds = %bb.c
  %.not165 = icmp ugt i32 %i.m, %i.j
  br i1 %.not165, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph42.preheader.i, %bb.d, %HUF_rescaleStats.exit
  %.030.i169 = phi i32 [ %i.m, %HUF_rescaleStats.exit ], [ %i.k, %bb.d ], [ %i.k, %.lr.ph42.preheader.i ] ; 4 uses
  %.sroa.0101.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.8.0.extract.shift = lshr i32 %.val, 24
  %.sroa.8.0.extract.trunc = trunc nuw i32 %.sroa.8.0.extract.shift to i8
  %i.ba = trunc i32 %.030.i169 to i8
  store i8 %.sroa.0101.0.extract.trunc, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ba, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 1
  %i.bb = add nsw i32 %i.l, -3
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 5 uses
  %i.bd = add nuw nsw i32 %.030.i169, 1
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.be = icmp ult i32 %.030.i169, 3
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

.preheader181.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader181, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader181.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader181.unr-lcssa ]
  %.0159184.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.cb, %.preheader181.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod366)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.0159184.epil = phi i32 [ %.0159184.epil.init, %.epil.preheader ], [ %i.bh, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add i32 %i.bg, %.0159184.epil
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.epil
  store i32 %.0159184.epil, ptr %i.bi, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader181, label %bb.f, !llvm.loop !56

.preheader181:                                    ; preds = %bb.f, %.preheader181.unr-lcssa
  %i.bj = icmp sgt i32 %i.l, 3
  br i1 %i.bj, label %.preheader180.lr.ph, label %.preheader179

.preheader180.lr.ph:                              ; preds = %.preheader181
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.bm = zext nneg i32 %i.bb to i64
  br label %.preheader180

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %.0159184 = phi i32 [ 0, %.lr.ph.new ], [ %i.cb, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = add i32 %i.bo, %.0159184                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %.0159184, ptr %i.bq, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = add i32 %i.bs, %i.bp                    ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !16
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = add i32 %i.bw, %i.bt                    ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !16
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %i.cb = add i32 %i.ca, %i.bx                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader181.unr-lcssa, label %bb.g, !llvm.loop !57

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.preheader180
  %indvars.iv227 = phi i64 [ 0, %.preheader180.lr.ph ], [ %indvars.iv.next228, %.preheader180 ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv227
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  %i.cf = zext i8 %i.ce to i64
  %i.cg = trunc i64 %indvars.iv227 to i8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cf ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16 ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !16
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ck
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !17
  %i.cm = or disjoint i64 %indvars.iv227, 1       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = zext i8 %i.co to i64
  %i.cq = trunc i64 %i.cm to i8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cp ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16 ; 2 uses
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !16
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cu
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !17
  %i.cw = or disjoint i64 %indvars.iv227, 2       ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = trunc i64 %i.cw to i8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !16 ; 2 uses
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !16
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.de
  store i8 %i.da, ptr %i.df, align 1, !tbaa !17
  %i.dg = or disjoint i64 %indvars.iv227, 3       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17
  %i.dj = zext i8 %i.di to i64
  %i.dk = trunc i64 %i.dg to i8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dj ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !16 ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !16
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.do
  store i8 %i.dk, ptr %i.dp, align 1, !tbaa !17
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 4 ; 3 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next228, %i.bm
  br i1 %i.dq, label %.preheader180, label %.preheader179.loopexit, !llvm.loop !58

.preheader179.loopexit:                           ; preds = %.preheader180
  %i.dr = trunc nuw nsw i64 %indvars.iv.next228 to i32
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.loopexit, %.preheader181
  %.1161.lcssa = phi i32 [ 0, %.preheader181 ], [ %i.dr, %.preheader179.loopexit ] ; 3 uses
  %i.ds = icmp slt i32 %.1161.lcssa, %i.l
  br i1 %i.ds, label %.lr.ph188, label %.lr.ph216

.lr.ph188:                                        ; preds = %.preheader179
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.dv = zext i32 %.1161.lcssa to i64            ; 5 uses
  %wide.trip.count233 = zext nneg i32 %i.l to i64 ; 3 uses
  %i.dw = sub nsw i64 %wide.trip.count233, %i.dv
  %xtraiter367 = and i64 %i.dw, 1
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph188
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i64
  %i.ea = trunc i32 %.1161.lcssa to i8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dz ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !16 ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !16
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ee
  store i8 %i.ea, ptr %i.ef, align 1, !tbaa !17
  %indvars.iv.next231.prol = add nuw nsw i64 %i.dv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv230.unr = phi i64 [ %i.dv, %.lr.ph188 ], [ %indvars.iv.next231.prol, %.prol.loopexit.unr-lcssa ]
  %i.eg = add nsw i64 %wide.trip.count233, -1
  %i.eh = icmp eq i64 %i.eg, %i.dv
  br i1 %i.eh, label %.lr.ph216, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.prol.loopexit, %.lr.ph188.new
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph188.new ], [ %indvars.iv230.unr, %.prol.loopexit ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv230
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17
  %i.ek = zext i8 %i.ej to i64
  %i.el = trunc i64 %indvars.iv230 to i8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ek ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !16 ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !16
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ep
  store i8 %i.el, ptr %i.eq, align 1, !tbaa !17
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next231
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i64
  %i.eu = trunc i64 %indvars.iv.next231 to i8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.et ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 2 uses
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !16
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ey
  store i8 %i.eu, ptr %i.ez, align 1, !tbaa !17
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %exitcond234.not.1 = icmp eq i64 %indvars.iv.next231.1, %wide.trip.count233
  br i1 %exitcond234.not.1, label %.lr.ph216, label %.lr.ph188.new, !llvm.loop !59

.lr.ph216:                                        ; preds = %.prol.loopexit, %.lr.ph188.new, %.preheader179
  %i.fa = add nuw nsw i32 %.030.i169, 1           ; 2 uses
  %i.fb = load i32, ptr %3, align 4, !tbaa !16
  %i.fc = getelementptr i8, ptr %3, i64 980       ; 6 uses
  %i.fd = zext nneg i32 %i.fa to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph216, %.loopexit
  %indvars.iv283 = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next284, %.loopexit ] ; 4 uses
  %.0155212 = phi i32 [ 0, %.lr.ph216 ], [ %i.ld, %.loopexit ] ; 6 uses
  %.0156210 = phi i32 [ %i.fb, %.lr.ph216 ], [ %i.lb, %.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv283
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !16 ; 20 uses
  %i.fg = trunc nuw i64 %indvars.iv283 to i32
  %i.fh = shl nuw i32 1, %i.fg
  %i.fi = ashr exact i32 %i.fh, 1                 ; 6 uses
  %i.fj = trunc i64 %indvars.iv283 to i32
  %i.fk = sub i32 %i.fa, %i.fj                    ; 4 uses
  %i.fl = trunc i32 %i.fk to i8                   ; 13 uses
  %i.fm = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fi)
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %.split, label %bb.k

.split:                                           ; preds = %bb.h
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fi, i1 true)
  switch i32 %i.fo, label %bb.k [
    i32 0, label %.preheader
    i32 1, label %.preheader173
    i32 2, label %.preheader175
    i32 3, label %.preheader177
  ]

.preheader177:                                    ; preds = %.split
  %i.fp = icmp sgt i32 %i.ff, 0
  br i1 %i.fp, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader177
  %.mask = and i32 %i.fk, 255
  %i.fq = zext nneg i32 %.mask to i64             ; 3 uses
  %i.fr = sext i32 %.0156210 to i64
  %i.fs = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count242 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fc, i64 %i.fr ; 3 uses
  %xtraiter370 = and i64 %wide.trip.count242, 1
  %i.ft = icmp eq i32 %i.ff, 1
  br i1 %i.ft, label %.epil.preheader369, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter374 = and i64 %wide.trip.count242, 2147483646
  br label %bb.j

.preheader175:                                    ; preds = %.split
  %i.fu = icmp sgt i32 %i.ff, 0
  br i1 %i.fu, label %.lr.ph194, label %.loopexit

.lr.ph194:                                        ; preds = %.preheader175
  %.mask170 = and i32 %i.fk, 255
  %i.fv = zext nneg i32 %.mask170 to i64          ; 3 uses
  %i.fw = sext i32 %.0156210 to i64
  %i.fx = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count251 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep303 = getelementptr i8, ptr %i.fc, i64 %i.fw ; 3 uses
  %xtraiter377 = and i64 %wide.trip.count251, 1
  %i.fy = icmp eq i32 %i.ff, 1
  br i1 %i.fy, label %.epil.preheader376, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.lr.ph194
  %unroll_iter381 = and i64 %wide.trip.count251, 2147483646
  br label %bb.i

.preheader173:                                    ; preds = %.split
  %i.fz = icmp sgt i32 %i.ff, 0
  br i1 %i.fz, label %.lr.ph197.preheader, label %.loopexit

.lr.ph197.preheader:                              ; preds = %.preheader173
  %i.ga = sext i32 %.0156210 to i64
  %i.gb = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count260 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep305 = getelementptr i8, ptr %i.fc, i64 %i.ga ; 3 uses
  %xtraiter383 = and i64 %wide.trip.count260, 1
  %i.gc = icmp eq i32 %i.ff, 1
  br i1 %i.gc, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter387 = and i64 %wide.trip.count260, 2147483646
  br label %.lr.ph197

.preheader:                                       ; preds = %.split
  %i.gd = icmp sgt i32 %i.ff, 0
  br i1 %i.gd, label %iter.check344, label %.loopexit

iter.check344:                                    ; preds = %.preheader
  %i.ge = sext i32 %.0156210 to i64               ; 2 uses
  %i.gf = sext i32 %.0155212 to i64               ; 8 uses
  %wide.trip.count269 = zext nneg i32 %i.ff to i64 ; 10 uses
  %invariant.gep307 = getelementptr i8, ptr %i.fc, i64 %i.ge ; 8 uses
  %min.iters.check329 = icmp ult i32 %i.ff, 4
  br i1 %min.iters.check329, label %.lr.ph200.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check344
  %i.gg = shl nsw i64 %i.gf, 1
  %i.gh = getelementptr i8, ptr %i.c, i64 %i.gg
  %i.gi = add nsw i64 %i.gf, %wide.trip.count269
  %i.gj = shl nsw i64 %i.gi, 1
  %i.gk = getelementptr i8, ptr %i.c, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.fc, i64 %i.ge
  %i.gm = getelementptr i8, ptr %i.gl, i64 %wide.trip.count269
  %bound0 = icmp ult ptr %i.gh, %i.gm
  %bound1 = icmp ult ptr %invariant.gep307, %i.gk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph200.preheader, label %vector.main.loop.iter.check330

vector.main.loop.iter.check330:                   ; preds = %vector.memcheck
  %min.iters.check331 = icmp ult i32 %i.ff, 16
  br i1 %min.iters.check331, label %vec.epilog.ph348, label %vector.ph332

vector.ph332:                                     ; preds = %vector.main.loop.iter.check330
  %i.gn = and i64 %wide.trip.count269, 12
  %n.vec333 = and i64 %wide.trip.count269, 2147483632 ; 5 uses
  %i.go = add nsw i64 %n.vec333, %i.gf
  %broadcast.splatinsert334 = insertelement <8 x i8> poison, i8 %i.fl, i64 0 ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph332, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph332 ], [ %index.next341, %vector.body336 ] ; 3 uses
  %i.gp = add i64 %index337, %i.gf                ; 2 uses
  %i.gq = getelementptr i8, ptr %invariant.gep307, i64 %index337 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %wide.load338 = load <8 x i8>, ptr %i.gq, align 1, !tbaa !17, !alias.scope !75
  %wide.load339 = load <8 x i8>, ptr %i.gr, align 1, !tbaa !17, !alias.scope !75
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.gp
  %i.gt = getelementptr [2 x i8], ptr %i.c, i64 %i.gp
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert334, <8 x i8> %wide.load338, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.gs, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %interleaved.vec340 = shufflevector <8 x i8> %broadcast.splatinsert334, <8 x i8> %wide.load339, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec340, ptr %i.gu, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next341 = add nuw i64 %index337, 16      ; 2 uses
  %i.gv = icmp eq i64 %index.next341, %n.vec333
  br i1 %i.gv, label %middle.block342, label %vector.body336, !llvm.loop !63

middle.block342:                                  ; preds = %vector.body336
  %cmp.n343 = icmp eq i64 %n.vec333, %wide.trip.count269
  br i1 %cmp.n343, label %.loopexit, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block342
  %min.epilog.iters.check347 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check347, label %.lr.ph200.preheader, label %vec.epilog.ph348, !prof !77

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check330, %vec.epilog.iter.check345
  %vec.epilog.resume.val349 = phi i64 [ %n.vec333, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check330 ]
  %n.vec350 = and i64 %wide.trip.count269, 2147483644 ; 4 uses
  %i.gw = add nsw i64 %n.vec350, %i.gf
  %broadcast.splatinsert351 = insertelement <4 x i8> poison, i8 %i.fl, i64 0
  %invariant.gep398 = getelementptr [2 x i8], ptr %i.c, i64 %i.gf
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph348
  %index354 = phi i64 [ %vec.epilog.resume.val349, %vec.epilog.ph348 ], [ %index.next357, %vec.epilog.vector.body353 ] ; 3 uses
  %i.gx = getelementptr i8, ptr %invariant.gep307, i64 %index354
  %wide.load355 = load <4 x i8>, ptr %i.gx, align 1, !tbaa !17, !alias.scope !75
  %gep399 = getelementptr [2 x i8], ptr %invariant.gep398, i64 %index354
  %interleaved.vec356 = shufflevector <4 x i8> %broadcast.splatinsert351, <4 x i8> %wide.load355, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec356, ptr %gep399, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next357 = add nuw i64 %index354, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.gy, label %vec.epilog.middle.block358, label %vec.epilog.vector.body353, !llvm.loop !64

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body353
  %cmp.n359 = icmp eq i64 %n.vec350, %wide.trip.count269
  br i1 %cmp.n359, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %iter.check344, %vector.memcheck, %vec.epilog.iter.check345, %vec.epilog.middle.block358
  %indvars.iv264.ph = phi i64 [ %i.gf, %iter.check344 ], [ %i.gf, %vector.memcheck ], [ %i.go, %vec.epilog.iter.check345 ], [ %i.gw, %vec.epilog.middle.block358 ] ; 2 uses
  %indvars.iv262.ph = phi i64 [ 0, %iter.check344 ], [ 0, %vector.memcheck ], [ %n.vec333, %vec.epilog.iter.check345 ], [ %n.vec350, %vec.epilog.middle.block358 ] ; 3 uses
  %xtraiter389 = and i64 %wide.trip.count269, 3   ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph200.prol ], [ %indvars.iv264.ph, %.lr.ph200.preheader ] ; 2 uses
  %indvars.iv262.prol = phi i64 [ %indvars.iv.next263.prol, %.lr.ph200.prol ], [ %indvars.iv262.ph, %.lr.ph200.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %gep308.prol = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262.prol
  %i.gz = load i8, ptr %gep308.prol, align 1, !tbaa !17
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264.prol ; 2 uses
  store i8 %i.fl, ptr %i.ha, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store i8 %i.gz, ptr %.sroa.4.0..sroa_idx.prol, align 1, !tbaa !17
  %indvars.iv.next265.prol = add nsw i64 %indvars.iv264.prol, 1 ; 2 uses
  %indvars.iv.next263.prol = add nuw nsw i64 %indvars.iv262.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter389
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !65

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %indvars.iv264.unr = phi i64 [ %indvars.iv264.ph, %.lr.ph200.preheader ], [ %indvars.iv.next265.prol, %.lr.ph200.prol ]
  %indvars.iv262.unr = phi i64 [ %indvars.iv262.ph, %.lr.ph200.preheader ], [ %indvars.iv.next263.prol, %.lr.ph200.prol ]
  %i.hb = sub nsw i64 %indvars.iv262.ph, %wide.trip.count269
  %i.hc = icmp ugt i64 %i.hb, -4
  br i1 %i.hc, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph200 ], [ %indvars.iv264.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263.3, %.lr.ph200 ], [ %indvars.iv262.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %i.hd = load i8, ptr %gep308, align 1, !tbaa !17
  %i.he = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  store i8 %i.fl, ptr %i.he, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 %i.hd, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !17
  %i.hf = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.1 = getelementptr i8, ptr %i.hf, i64 1
  %i.hg = load i8, ptr %gep308.1, align 1, !tbaa !17
  %i.hh = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 2
  store i8 %i.fl, ptr %i.hi, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.hh, i64 3
  store i8 %i.hg, ptr %.sroa.4.0..sroa_idx.1, align 1, !tbaa !17
  %i.hj = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.2 = getelementptr i8, ptr %i.hj, i64 2
  %i.hk = load i8, ptr %gep308.2, align 1, !tbaa !17
  %i.hl = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  store i8 %i.fl, ptr %i.hm, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.hl, i64 5
  store i8 %i.hk, ptr %.sroa.4.0..sroa_idx.2, align 1, !tbaa !17
  %i.hn = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.3 = getelementptr i8, ptr %i.hn, i64 3
  %i.ho = load i8, ptr %gep308.3, align 1, !tbaa !17
  %i.hp = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 6
  store i8 %i.fl, ptr %i.hq, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.hp, i64 7
  store i8 %i.ho, ptr %.sroa.4.0..sroa_idx.3, align 1, !tbaa !17
  %indvars.iv.next265.3 = add nsw i64 %indvars.iv264, 4
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next263.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %.loopexit, label %.lr.ph200, !llvm.loop !66

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv255 = phi i64 [ %i.gb, %.lr.ph197.preheader.new ], [ %indvars.iv.next256.1, %.lr.ph197 ] ; 3 uses
  %indvars.iv253 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next254.1, %.lr.ph197 ] ; 3 uses
  %niter388 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter388.next.1, %.lr.ph197 ]
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %i.hr = load i8, ptr %gep306, align 1, !tbaa !17 ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  store i8 %i.fl, ptr %i.hs, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store i8 %i.hr, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !17
  %i.ht = getelementptr i8, ptr %i.hs, i64 2
  store i8 %i.fl, ptr %i.ht, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8 = getelementptr i8, ptr %i.hs, i64 3
  store i8 %i.hr, ptr %.sroa.5.0..sroa_idx8, align 1, !tbaa !17
  %i.hu = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %gep306.1 = getelementptr i8, ptr %i.hu, i64 1
  %i.hv = load i8, ptr %gep306.1, align 1, !tbaa !17 ; 2 uses
  %i.hw = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  store i8 %i.fl, ptr %i.hx, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.hw, i64 5
  store i8 %i.hv, ptr %.sroa.5.0..sroa_idx.1, align 1, !tbaa !17
  %i.hy = getelementptr i8, ptr %i.hw, i64 6
  store i8 %i.fl, ptr %i.hy, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8.1 = getelementptr i8, ptr %i.hw, i64 7
  store i8 %i.hv, ptr %.sroa.5.0..sroa_idx8.1, align 1, !tbaa !17
  %indvars.iv.next256.1 = add nsw i64 %indvars.iv255, 4 ; 2 uses
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %.loopexit.loopexit363.unr-lcssa, label %.lr.ph197, !llvm.loop !67

bb.i:                                             ; preds = %bb.i, %.lr.ph194.new
  %indvars.iv246 = phi i64 [ %i.fx, %.lr.ph194.new ], [ %indvars.iv.next247.1, %bb.i ] ; 3 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph194.new ], [ %indvars.iv.next245.1, %bb.i ] ; 3 uses
  %niter382 = phi i64 [ 0, %.lr.ph194.new ], [ %niter382.next.1, %bb.i ]
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %i.hz = load i8, ptr %gep304, align 1, !tbaa !17
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 8
  %i.ic = or disjoint i64 %i.ib, %i.fv
  %i.id = mul nuw i64 %i.ic, 281479271743489
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246
  store i64 %i.id, ptr %i.ie, align 1, !tbaa !23
  %i.if = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %gep304.1 = getelementptr i8, ptr %i.if, i64 1
  %i.ig = load i8, ptr %gep304.1, align 1, !tbaa !17
  %i.ih = zext i8 %i.ig to i64
  %i.ii = shl nuw nsw i64 %i.ih, 8
  %i.ij = or disjoint i64 %i.ii, %i.fv
  %i.ik = mul nuw i64 %i.ij, 281479271743489
  %i.il = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv246
  %i.im = getelementptr i8, ptr %i.il, i64 8
  store i64 %i.ik, ptr %i.im, align 1, !tbaa !23
  %indvars.iv.next247.1 = add nsw i64 %indvars.iv246, 8 ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter382.next.1 = add i64 %niter382, 2         ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %.loopexit.loopexit364.unr-lcssa, label %bb.i, !llvm.loop !68

bb.j:                                             ; preds = %bb.j, %.lr.ph191.new
  %indvars.iv237 = phi i64 [ %i.fs, %.lr.ph191.new ], [ %indvars.iv.next238.1, %bb.j ] ; 3 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next236.1, %bb.j ] ; 3 uses
  %niter375 = phi i64 [ 0, %.lr.ph191.new ], [ %niter375.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %i.in = load i8, ptr %gep, align 1, !tbaa !17
  %i.io = zext i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 8
  %i.iq = or disjoint i64 %i.ip, %i.fq
end_hunk_0
begin_hunk_1_@HUF_readDTableX1_wksp:bb.a
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter375.next.1 = add i64 %niter375, 2         ; 2 uses
  %niter375.ncmp.1 = icmp eq i64 %niter375.next.1, %unroll_iter374
  br i1 %niter375.ncmp.1, label %.loopexit.loopexit365.unr-lcssa, label %bb.j, !llvm.loop !69

bb.k:                                             ; preds = %bb.h, %.split
  %i.jd = icmp sgt i32 %i.ff, 0
  br i1 %i.jd, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %bb.k
  %.mask171 = and i32 %i.fk, 255
  %i.je = zext nneg i32 %.mask171 to i64
  %i.jf = icmp sgt i32 %i.fi, 0
  br i1 %i.jf, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.lr.ph208
  %i.jg = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.jh = sext i32 %.0156210 to i64
  %i.ji = sext i32 %.0155212 to i64
  %wide.trip.count281 = zext nneg i32 %i.ff to i64
  %invariant.gep309 = getelementptr i8, ptr %i.fc, i64 %i.jh
  %i.jj = add nsw i64 %i.jg, -1
  %i.jk = lshr i64 %i.jj, 4
  %i.jl = add nuw nsw i64 %i.jk, 1                ; 2 uses
  %xtraiter392 = and i64 %i.jl, 7                 ; 3 uses
  %i.jm = icmp ult i32 %i.fi, 113
  %unroll_iter396 = and i64 %i.jl, 2305843009213693944
  %lcmp.mod394.not = icmp eq i64 %xtraiter392, 0
  %lcmp.mod395 = icmp ne i64 %xtraiter392, 0
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv276 = phi i64 [ %i.ji, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv274
  %i.jn = load i8, ptr %gep310, align 1, !tbaa !17
  %i.jo = zext i8 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 8
  %i.jq = or disjoint i64 %i.jp, %i.je
  %i.jr = mul nuw i64 %i.jq, 281479271743489
  %i.js = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv276 ; 9 uses
  %i.jt = insertelement <4 x i64> poison, i64 %i.jr, i64 0
  %i.ju = shufflevector <4 x i64> %i.jt, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jm, label %.epil.preheader391, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter397 = phi i64 [ %niter397.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  store <4 x i64> %i.ju, ptr %i.jv, align 1, !tbaa !23
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  store <4 x i64> %i.ju, ptr %i.jx, align 1, !tbaa !23
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  store <4 x i64> %i.ju, ptr %i.jz, align 1, !tbaa !23
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 96
  store <4 x i64> %i.ju, ptr %i.kb, align 1, !tbaa !23
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  store <4 x i64> %i.ju, ptr %i.kd, align 1, !tbaa !23
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 160
  store <4 x i64> %i.ju, ptr %i.kf, align 1, !tbaa !23
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 192
  store <4 x i64> %i.ju, ptr %i.kh, align 1, !tbaa !23
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 224
  store <4 x i64> %i.ju, ptr %i.kj, align 1, !tbaa !23
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter397.next.7 = add i64 %niter397, 8         ; 2 uses
  %niter397.ncmp.7.not = icmp eq i64 %niter397.next.7, %unroll_iter396
  br i1 %niter397.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !70

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod394.not, label %._crit_edge204, label %.epil.preheader391

.epil.preheader391:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader391
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader391 ], [ %indvars.iv.next272.epil, %bb.l ] ; 2 uses
  %epil.iter393 = phi i64 [ 0, %.epil.preheader391 ], [ %epil.iter393.next, %bb.l ]
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv271.epil
  store <4 x i64> %i.ju, ptr %i.kk, align 1, !tbaa !23
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter393.next = add i64 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i64 %epil.iter393.next, %xtraiter392
  br i1 %epil.iter393.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !71

._crit_edge204:                                   ; preds = %bb.l, %._crit_edge204.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, %i.jg
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph203, !llvm.loop !72

.loopexit.loopexit363.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit363.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.gb, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit363.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit363.unr-lcssa ]
  %lcmp.mod386 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod386)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.kl = load i8, ptr %gep306.epil, align 1, !tbaa !17 ; 2 uses
  %i.km = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fl, ptr %i.km, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  store i8 %i.kl, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !17
  %i.kn = getelementptr i8, ptr %i.km, i64 2
  store i8 %i.fl, ptr %i.kn, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.km, i64 3
  store i8 %i.kl, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !17
  br label %.loopexit

.loopexit.loopexit364.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod379.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod379.not, label %.loopexit, label %.epil.preheader376

.epil.preheader376:                               ; preds = %.loopexit.loopexit364.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fx, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit364.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit364.unr-lcssa ]
  %lcmp.mod380 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod380)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.ko = load i8, ptr %gep304.epil, align 1, !tbaa !17
  %i.kp = zext i8 %i.ko to i64
  %i.kq = shl nuw nsw i64 %i.kp, 8
  %i.kr = or disjoint i64 %i.kq, %i.fv
  %i.ks = mul nuw i64 %i.kr, 281479271743489
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.ks, ptr %i.kt, align 1, !tbaa !23
  br label %.loopexit

.loopexit.loopexit365.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod372.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod372.not, label %.loopexit, label %.epil.preheader369

.epil.preheader369:                               ; preds = %.loopexit.loopexit365.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fs, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit365.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit365.unr-lcssa ]
  %lcmp.mod373 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.ku = load i8, ptr %gep.epil, align 1, !tbaa !17
  %i.kv = zext i8 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 8
  %i.kx = or disjoint i64 %i.kw, %i.fq
  %i.ky = mul nuw i64 %i.kx, 281479271743489      ; 2 uses
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.ky, ptr %i.kz, align 1, !tbaa !23
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i64 %i.ky, ptr %i.la, align 1, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader369, %.loopexit.loopexit365.unr-lcssa, %.epil.preheader376, %.loopexit.loopexit364.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit363.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block342, %vec.epilog.middle.block358, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k, %.lr.ph208
  %i.lb = add nsw i32 %i.ff, %.0156210
  %i.lc = mul nsw i32 %i.ff, %i.fi
  %i.ld = add nsw i32 %i.lc, %.0155212
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fd
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !73

.critedge:                                        ; preds = %.loopexit, %HUF_rescaleStats.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %HUF_rescaleStats.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @HUF_readDTableX2_wksp(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.val, 255                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 15 uses
  %i.f = icmp ult i64 %4, 2124
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.j = icmp samesign ugt i32 %i.d, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.i, i8 0, i64 112, i1 false)
  br i1 %i.j, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.m = call i64 @HUF_readStats_wksp(ptr noundef nonnull %i.k, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef 876, i32 noundef %5) #15 ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 4, !tbaa !16   ; 5 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv177 = phi i32 [ %indvars.iv.next178, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv158 = phi i32 [ %indvars.iv.next159, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.091 = phi i32 [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = zext i32 %.091 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.091, -1
  %indvars.iv.next159 = add i32 %indvars.iv158, -1
  %indvars.iv.next178 = add i32 %indvars.iv177, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  br i1 %i.u, label %bb.f, label %.preheader, !llvm.loop !78

.preheader:                                       ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.o, 12
  %i.x = icmp eq i32 %i.d, 12
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.d ; 7 uses
  %i.y = add i32 %.091, 1                         ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv158 to i64
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = add i32 %indvars.iv158, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.093116 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = add i32 %i.ae, %.093116                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.093116, ptr %i.ag, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add i32 %i.aq, %i.an                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.as, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.093116.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod344)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.093116.epil = phi i32 [ %.093116.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.au, %.093116.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.093116.epil, ptr %i.aw, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.093.lcssa = phi i32 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  store i32 %.093.lcssa, ptr %i.h, align 4, !tbaa !16
  %i.ax = zext i32 %i.y to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ax
  store i32 %.093.lcssa, ptr %i.ay, align 4, !tbaa !16
  %i.az = load i32, ptr %i.c, align 4, !tbaa !16  ; 4 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.az to i64     ; 2 uses
  %xtraiter345 = and i64 %wide.trip.count163, 1
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter349 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter350 = phi i64 [ 0, %.lr.ph120.new ], [ %niter350.next.1, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16 ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bi = trunc i64 %indvars.iv160 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !127
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !16
  %i.br = trunc i64 %indvars.iv.next161 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !127
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter350.next.1 = add i64 %niter350, 2         ; 2 uses
  %niter350.ncmp.1 = icmp eq i64 %niter350.next.1, %unroll_iter349
  br i1 %niter350.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !81

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod347.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod347.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod348 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod348)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16 ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !16
  %i.ca = trunc i64 %indvars.iv160.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !127
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !16
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph125.preheader, label %HUF_fillDTableX2.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter351 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter355 = and i64 %i.cf, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.090122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter356 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter356.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.090122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.090122, ptr %i.cn, align 4, !tbaa !16
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !16
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter356.next.1 = add nuw i64 %niter356, 2     ; 2 uses
  %niter356.ncmp.1 = icmp eq i64 %niter356.next.1, %unroll_iter355
  br i1 %niter356.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !82

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod353.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod353.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod354 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod354)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.090122.epil.init, ptr %i.cv, align 4, !tbaa !16
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.091                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.da = zext i32 %indvars.iv177 to i64          ; 2 uses
  %i.db = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.dc = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.da, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.df = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.dg = add i64 %indvar, %i.da
  %i.dh = mul nuw i64 %i.dg, 52
  %i.di = add i64 %i.dh, -1
  %diff.check = icmp ult i64 %i.di, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !16
  %wide.load224 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !16
  %i.dm = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dn = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !16
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter357 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !16
  %i.du = lshr i32 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !16
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter357
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !84

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = lshr i32 %i.dz, %i.df
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !16
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !16
  %i.ee = lshr i32 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !16
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = lshr i32 %i.eh, %i.df
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !16
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.em = lshr i32 %i.el, %i.df
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.em, ptr %i.en, align 4, !tbaa !16
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !85

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !86

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.eo = getelementptr i8, ptr %3, i64 736       ; 15 uses
  %i.ep = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 20
  %scevgep255 = getelementptr i8, ptr %3, i64 737
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16 ; 8 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 13 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ey = sub i32 %i.q, %i.ex                     ; 10 uses
  %i.ez = sub i32 %spec.store.select, %i.ey       ; 3 uses
  %.not56.i = icmp ult i32 %i.ez, %i.cw
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !16 ; 14 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fc = and i32 %i.ez, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fe = add i32 %i.ey, %i.ep                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = zext i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.ff ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  %i.fi = shl i32 %i.ey, 16
  %i.fj = add i32 %i.fi, 16777216                 ; 9 uses
  %i.fk = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk ; 2 uses
  %.not61.i = icmp sgt i32 %i.fe, %.091
  %i.fm = add i32 %i.ey, %i.q
  %i.fn = sext i32 %i.eu to i64                   ; 12 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fd, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.fo = sub i32 %i.ew, %i.eu
  %.neg412 = add i32 %i.eu, 1
  %xtraiter387.a = and i32 %i.fo, 1
  %lcmp.mod388.not.a = icmp eq i32 %xtraiter387.a, 0
  br i1 %lcmp.mod388.not.a, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.fp = sext i32 %i.fb to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.eo, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !127
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fj, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw i64 %i.fv, 4294967297
  store i64 %i.fw, ptr %i.fq, align 2
  %i.fx = add i32 %i.fb, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fn, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fn, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fb, %.loopexit.i.us.us.i.preheader ], [ %i.fx, %.loopexit.i.us.us.i.prol ]
  %i.fy = icmp eq i32 %i.ew, %.neg412
  br i1 %i.fy, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fz = xor i32 %i.eu, -1
  %i.ga = add i32 %i.ew, %i.fz                    ; 2 uses
  %i.gb = zext i32 %i.ga to i64                   ; 3 uses
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check256 = icmp ult i32 %i.ga, 31
  br i1 %min.iters.check256, label %.loopexit.i.us.us74.i.preheader340, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gd = xor i32 %i.eu, -1
  %i.ge = add i32 %i.ew, %i.gd                    ; 2 uses
  %mul.result = shl i32 %i.ge, 2
  %mul.overflow = icmp ugt i32 %i.ge, 1073741823
  %i.gf = add i32 %i.fb, %mul.result
  %i.gg = icmp slt i32 %i.gf, %i.fb
  %i.gh = or i1 %i.gg, %mul.overflow
  br i1 %i.gh, label %.loopexit.i.us.us74.i.preheader340, label %vector.memcheck257

vector.memcheck257:                               ; preds = %vector.scevcheck
  %i.gi = getelementptr i8, ptr %i.eo, i64 %i.fn
  %i.gj = getelementptr i8, ptr %scevgep255, i64 %i.fn
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gb
  %i.gl = sext i32 %i.fb to i64
  %i.gm = shl nsw i64 %i.gl, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.e, i64 %i.gm
  %i.go = shl nuw nsw i64 %i.gb, 4
  %i.gp = getelementptr i8, ptr %scevgep, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gm
  %bound0258 = icmp ult ptr %i.gi, %i.gq
  %bound1259 = icmp ult ptr %i.gn, %i.gk
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.loopexit.i.us.us74.i.preheader340, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck257
  %n.vec262 = and i64 %i.gc, 8589934590           ; 4 uses
  %i.gr = add nsw i64 %n.vec262, %i.fn
  %i.gs = trunc i64 %n.vec262 to i32
  %i.gt = shl i32 %i.gs, 2
  %i.gu = add i32 %i.fb, %i.gt
  %broadcast.splatinsert263 = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat264 = shufflevector <2 x i32> %broadcast.splatinsert263, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph261
  %index266 = phi i64 [ 0, %vector.ph261 ], [ %index.next271, %vector.body265 ] ; 3 uses
  %i.gv = add i64 %index266, %i.fn                ; 2 uses
  %i.gw = trunc i64 %index266 to i32
  %i.gx = shl i32 %i.gw, 2
  %i.gy = add i32 %i.fb, %i.gx                    ; 2 uses
  %i.gz = add i32 %i.gy, 4
  %i.ha = sext i32 %i.gy to i64
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ha
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hb
  %i.he = getelementptr inbounds i8, ptr %i.eo, i64 %i.gv
  %i.hf = getelementptr i8, ptr %i.eo, i64 %i.gv
  %i.hg = getelementptr i8, ptr %i.hf, i64 1
  %i.hh = load i8, ptr %i.he, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert267 = insertelement <2 x i8> poison, i8 %i.hh, i64 0
  %broadcast.splat268 = shufflevector <2 x i8> %broadcast.splatinsert267, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert269 = insertelement <2 x i8> poison, i8 %i.hi, i64 0
  %broadcast.splat270 = shufflevector <2 x i8> %broadcast.splatinsert269, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hj = zext <2 x i8> %broadcast.splat268 to <2 x i32>
  %i.hk = zext <2 x i8> %broadcast.splat270 to <2 x i32>
  %i.hl = or disjoint <2 x i32> %broadcast.splat264, %i.hj
  %i.hm = or disjoint <2 x i32> %broadcast.splat264, %i.hk
  %i.hn = zext <2 x i32> %i.hl to <2 x i64>
  %i.ho = zext <2 x i32> %i.hm to <2 x i64>
  %i.hp = mul nuw <2 x i64> %i.hn, splat (i64 4294967297)
  %i.hq = mul nuw <2 x i64> %i.ho, splat (i64 4294967297)
  store <2 x i64> %i.hp, ptr %i.hc, align 2, !alias.scope !129
  store <2 x i64> %i.hq, ptr %i.hd, align 2, !alias.scope !129
  %index.next271 = add nuw i64 %index266, 2       ; 2 uses
  %i.hr = icmp eq i64 %index.next271, %n.vec262
  br i1 %i.hr, label %middle.block272, label %vector.body265, !llvm.loop !90

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.gc, %n.vec262
  br i1 %cmp.n273, label %.loopexit.i, label %.loopexit.i.us.us74.i.preheader340

.loopexit.i.us.us74.i.preheader340:               ; preds = %vector.memcheck257, %vector.scevcheck, %.loopexit.i.us.us74.i.preheader, %middle.block272
  %indvars.iv87.i.ph = phi i64 [ %i.fn, %vector.memcheck257 ], [ %i.fn, %vector.scevcheck ], [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %i.gr, %middle.block272 ] ; 4 uses
  %.05267.us.us73.i.ph = phi i32 [ %i.fb, %vector.memcheck257 ], [ %i.fb, %vector.scevcheck ], [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.gu, %middle.block272 ] ; 3 uses
  %i.hs = trunc i64 %indvars.iv87.i.ph to i32     ; 2 uses
  %i.ht = sub i32 %i.ew, %i.hs
  %.neg = add i32 %i.hs, 1
  %xtraiter384.a = and i32 %i.ht, 1
  %lcmp.mod385.not.a = icmp eq i32 %xtraiter384.a, 0
  br i1 %lcmp.mod385.not.a, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader340
  %i.hu = sext i32 %.05267.us.us73.i.ph to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i.ph
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !127
  %i.hy = zext i8 %i.hx to i32
  %i.hz = or disjoint i32 %i.fj, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = mul nuw i64 %i.ia, 4294967297           ; 2 uses
  store i64 %i.ib, ptr %i.hv, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %i.ib, ptr %i.ic, align 2
  %i.id = add i32 %.05267.us.us73.i.ph, 4
  %indvars.iv.next88.i.prol = add nsw i64 %indvars.iv87.i.ph, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader340
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.loopexit.i.us.us74.i.preheader340 ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %.05267.us.us73.i.ph, %.loopexit.i.us.us74.i.preheader340 ], [ %i.id, %.loopexit.i.us.us74.i.prol ]
  %i.ie = icmp eq i32 %i.ew, %.neg
  br i1 %i.ie, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.ix, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.if = sext i32 %.05267.us.us.i to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !127
  %i.ij = zext i8 %i.ii to i32
  %i.ik = or disjoint i32 %i.fj, %i.ij
  %i.il = zext i32 %i.ik to i64
  %i.im = mul nuw i64 %i.il, 4294967297
  store i64 %i.im, ptr %i.ig, align 2
  %i.in = add i32 %.05267.us.us.i, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ir = getelementptr i8, ptr %i.iq, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !127
  %i.it = zext i8 %i.is to i32
  %i.iu = or disjoint i32 %i.fj, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw i64 %i.iv, 4294967297
  store i64 %i.iw, ptr %i.ip, align 2
  %i.ix = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.iy = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ew, %i.iy
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !91

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.jt, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.iz = sext i32 %.05267.us.us73.i to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !127
  %i.jd = zext i8 %i.jc to i32
  %i.je = or disjoint i32 %i.fj, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw i64 %i.jf, 4294967297           ; 2 uses
  store i64 %i.jg, ptr %i.ja, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.jg, ptr %i.jh, align 2
  %i.ji = add i32 %.05267.us.us73.i, 4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.jm = getelementptr i8, ptr %i.jl, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !127
  %i.jo = zext i8 %i.jn to i32
  %i.jp = or disjoint i32 %i.fj, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw i64 %i.jq, 4294967297           ; 2 uses
  store i64 %i.jr, ptr %i.jk, align 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %i.jr, ptr %i.js, align 2
  %i.jt = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ju = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ew, %i.ju
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !92

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.lc, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.split.us.i ] ; 2 uses
  %i.jv = sext i32 %.05267.us.i to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jv ; 9 uses
  %i.jx = load i32, ptr %i.fl, align 4, !tbaa !16 ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.jz = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !127
  %i.kb = zext i8 %i.ka to i32
  %i.kc = or disjoint i32 %i.fj, %i.kb
  %i.kd = zext i32 %i.kc to i64
  %i.ke = mul nuw i64 %i.kd, 4294967297
  %i.kf = zext nneg i32 %i.jx to i64
  %i.kg = insertelement <4 x i64> poison, i64 %i.ke, i64 0
  %i.kh = shufflevector <4 x i64> %i.kg, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ki = add nsw i64 %i.kf, -1
  %i.kj = lshr i64 %i.ki, 3
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %xtraiter390 = and i64 %i.kk, 7                 ; 3 uses
  %i.kl = icmp ult i32 %i.jx, 57
  br i1 %i.kl, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter394 = and i64 %i.kk, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter395 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter395.next.7, %.lr.ph.i.us.i ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.kh, ptr %i.km, align 2
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  store <4 x i64> %i.kh, ptr %i.ko, align 2
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  store <4 x i64> %i.kh, ptr %i.kq, align 2
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  store <4 x i64> %i.kh, ptr %i.ks, align 2
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 128
  store <4 x i64> %i.kh, ptr %i.ku, align 2
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 160
  store <4 x i64> %i.kh, ptr %i.kw, align 2
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 192
  store <4 x i64> %i.kh, ptr %i.ky, align 2
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
end_hunk_1
begin_hunk_2_@HUF_readDTableX2_wksp:bb.a
.preheader.i.i:                                   ; preds = %bb.i
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = insertelement <4 x i64> poison, i64 %i.ll, i64 0
  %i.lq = shufflevector <4 x i64> %i.lp, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.lr = add nsw i64 %i.lo, -1
  %i.ls = lshr i64 %i.lr, 3
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %xtraiter359 = and i64 %i.lt, 7                 ; 3 uses
  %i.lu = icmp ult i32 %i.lm, 57
  br i1 %i.lu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter363 = and i64 %i.lt, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.ll, ptr %i.lf, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.ll, ptr %i.lf, align 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i64 %i.ll, ptr %i.lv, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter364 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter364.next.7, %.lr.ph.i.i ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  store <4 x i64> %i.lq, ptr %i.lw, align 2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  store <4 x i64> %i.lq, ptr %i.ly, align 2
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  store <4 x i64> %i.lq, ptr %i.ma, align 2
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  store <4 x i64> %i.lq, ptr %i.mc, align 2
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  store <4 x i64> %i.lq, ptr %i.me, align 2
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 160
  store <4 x i64> %i.lq, ptr %i.mg, align 2
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 192
  store <4 x i64> %i.lq, ptr %i.mi, align 2
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 224
  store <4 x i64> %i.lq, ptr %i.mk, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter364.next.7 = add nuw nsw i64 %niter364, 8 ; 2 uses
  %niter364.ncmp.7.not = icmp eq i64 %niter364.next.7, %unroll_iter363
  br i1 %niter364.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !93

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod361.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod361.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod362 = icmp ne i64 %xtraiter359, 0
  call void @llvm.assume(i1 %lcmp.mod362)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter360 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter360.next, %.lr.ph.i.i.epil ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.lq, ptr %i.ml, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter360.next = add i64 %epil.iter360, 1   ; 2 uses
  %epil.iter360.cmp.not = icmp eq i64 %epil.iter360.next, %xtraiter359
  br i1 %epil.iter360.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !95

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.li, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %HUF_fillDTableX2ForWeight.exit.i ] ; 4 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !16 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !16 ; 2 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv55.i.i to i32
  %i.mr = sub i32 %i.fm, %i.mq                    ; 6 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !16
  %i.mu = zext i32 %i.mt to i64                   ; 3 uses
  %i.mv = getelementptr [4 x i8], ptr %i.lf, i64 %i.mu ; 20 uses
  %i.mw = sext i32 %i.mn to i64                   ; 9 uses
  %i.mx = getelementptr i8, ptr %i.eo, i64 %i.mw  ; 16 uses
  %i.my = sext i32 %i.mp to i64                   ; 13 uses
  %i.mz = getelementptr i8, ptr %i.eo, i64 %i.my  ; 7 uses
  %i.na = sub i32 %spec.store.select, %i.mr
  %i.nb = and i32 %i.na, 31                       ; 2 uses
  %i.nc = shl nuw i32 1, %i.nb
  %.not82116.i.i = icmp eq i32 %i.mn, %i.mp       ; 5 uses
  switch i32 %i.nb, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.nd = shl i32 %i.mr, 16
  %invariant.op.reass = add i32 %i.nd, %invariant.op139 ; 3 uses
  %i.ne = sub nsw i64 %i.my, %i.mw
  %xtraiter365 = and i64 %i.ne, 1
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.nf = load i8, ptr %i.mx, align 1, !tbaa !127
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.nh, %invariant.op.reass
  %i.ni = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.nj = mul nuw i64 %i.ni, 4294967297           ; 4 uses
  store i64 %i.nj, ptr %i.mv, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i64 %i.nj, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store i64 %i.nj, ptr %i.nl, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store i64 %i.nj, ptr %i.nm, align 2
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.mv, %.lr.ph.i58.i ], [ %i.nn, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.mx, %.lr.ph.i58.i ], [ %i.no, %.prol.loopexit.unr-lcssa ]
  %i.np = add nsw i64 %i.my, -1
  %i.nq = icmp eq i64 %i.np, %i.mw
  br i1 %i.nq, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.nr = shl i32 %i.mr, 16
  %invariant.op135.reass = add i32 %i.nr, %invariant.op139 ; 5 uses
  %i.ns = sub nsw i64 %i.my, %i.mw
  %xtraiter370 = and i64 %i.ns, 3                 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.prol.loopexit369, label %.prol.preheader368

.prol.preheader368:                               ; preds = %.lr.ph98.i.i, %.prol.preheader368
  %.297.i.i.prol = phi ptr [ %i.nz, %.prol.preheader368 ], [ %i.mv, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.oa, %.prol.preheader368 ], [ %i.mx, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %.prol.preheader368 ], [ 0, %.lr.ph98.i.i ]
  %i.nt = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !127
  %i.nu = zext i8 %i.nt to i32
  %i.nv = shl nuw nsw i32 %i.nu, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.nv, %invariant.op135.reass
  %i.nw = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.nx = mul nuw i64 %i.nw, 4294967297           ; 2 uses
  store i64 %i.nx, ptr %.297.i.i.prol, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.nx, ptr %i.ny, align 2
  %i.nz = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %.prol.loopexit369, label %.prol.preheader368, !llvm.loop !96

.prol.loopexit369:                                ; preds = %.prol.preheader368, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.mv, %.lr.ph98.i.i ], [ %i.nz, %.prol.preheader368 ]
  %.27696.i.i.unr = phi ptr [ %i.mx, %.lr.ph98.i.i ], [ %i.oa, %.prol.preheader368 ]
  %i.ob = sub nsw i64 %i.mw, %i.my
  %i.oc = icmp ugt i64 %i.ob, -4
  br i1 %i.oc, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.od = shl i32 %i.mr, 16
  %invariant.op136.reass = add i32 %i.od, %invariant.op139 ; 6 uses
  %i.oe = sub nsw i64 %i.my, %i.mw                ; 3 uses
  %min.iters.check308 = icmp ult i64 %i.oe, 10
  br i1 %min.iters.check308, label %scalar.ph307.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph104.i.i
  %i.of = shl nsw i64 %i.my, 3
  %i.og = add nsw i64 %i.le, %i.mu
  %i.oh = shl nsw i64 %i.og, 2
  %i.oi = shl nsw i64 %i.mw, 3
  %i.oj = add nsw i64 %i.of, %i.oh
  %i.ok = sub nsw i64 %i.oj, %i.oi
  %i.ol = getelementptr i8, ptr %i.e, i64 %i.ok
  %bound0310 = icmp ult ptr %i.mv, %i.mz
  %bound1311 = icmp ult ptr %i.mx, %i.ol
  %found.conflict312 = and i1 %bound0310, %bound1311
  br i1 %found.conflict312, label %scalar.ph307.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck309
  %n.vec314 = and i64 %i.oe, -4                   ; 4 uses
  %i.om = shl nsw i64 %n.vec314, 3
  %i.on = getelementptr i8, ptr %i.mv, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.mx, i64 %n.vec314
  %broadcast.splatinsert315 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat316 = shufflevector <2 x i32> %broadcast.splatinsert315, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph313
  %index318 = phi i64 [ 0, %vector.ph313 ], [ %index.next325, %vector.body317 ] ; 3 uses
  %i.op = shl i64 %index318, 3                    ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.mv, i64 %i.op
  %i.oq = getelementptr i8, ptr %i.mv, i64 %i.op
  %next.gep320 = getelementptr i8, ptr %i.oq, i64 16
  %next.gep321 = getelementptr i8, ptr %i.mx, i64 %index318 ; 2 uses
  %i.or = getelementptr i8, ptr %next.gep321, i64 2
  %wide.load322 = load <2 x i8>, ptr %next.gep321, align 1, !tbaa !127, !alias.scope !130
  %wide.load323 = load <2 x i8>, ptr %i.or, align 1, !tbaa !127, !alias.scope !130
  %i.os = zext <2 x i8> %wide.load322 to <2 x i32>
  %i.ot = zext <2 x i8> %wide.load323 to <2 x i32>
  %i.ou = shl nuw nsw <2 x i32> %i.os, splat (i32 8)
  %i.ov = shl nuw nsw <2 x i32> %i.ot, splat (i32 8)
  %i.ow = or disjoint <2 x i32> %i.ou, %broadcast.splat316
  %i.ox = or disjoint <2 x i32> %i.ov, %broadcast.splat316
  %interleaved.vec = shufflevector <2 x i32> %i.ow, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec, ptr %next.gep319, align 2, !alias.scope !131, !noalias !130
  %interleaved.vec324 = shufflevector <2 x i32> %i.ox, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec324, ptr %next.gep320, align 2, !alias.scope !131, !noalias !130
  %index.next325 = add nuw i64 %index318, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next325, %n.vec314
  br i1 %i.oy, label %middle.block326, label %vector.body317, !llvm.loop !100

middle.block326:                                  ; preds = %vector.body317
  %cmp.n327 = icmp eq i64 %i.oe, %n.vec314
  br i1 %cmp.n327, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph307.preheader

scalar.ph307.preheader:                           ; preds = %vector.memcheck309, %.lr.ph104.i.i, %middle.block326
  %.1103.i.i.ph = phi ptr [ %i.mv, %vector.memcheck309 ], [ %i.mv, %.lr.ph104.i.i ], [ %i.on, %middle.block326 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.mx, %vector.memcheck309 ], [ %i.mx, %.lr.ph104.i.i ], [ %i.oo, %middle.block326 ] ; 3 uses
  %i.oz = add i64 %i.a, %i.my
  %.175102.i.i.ph373 = ptrtoaddr ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.pa = sub i64 %i.oz, %.175102.i.i.ph373
  %i.pb = add i64 %i.eq, %i.my
  %i.pc = sub i64 %i.pb, %.175102.i.i.ph373
  %xtraiter374 = and i64 %i.pa, 3                 ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %scalar.ph307.prol.loopexit, label %scalar.ph307.prol

scalar.ph307.prol:                                ; preds = %scalar.ph307.preheader, %scalar.ph307.prol
  %.1103.i.i.prol = phi ptr [ %i.ph, %scalar.ph307.prol ], [ %.1103.i.i.ph, %scalar.ph307.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.pi, %scalar.ph307.prol ], [ %.175102.i.i.ph, %scalar.ph307.preheader ] ; 2 uses
  %prol.iter376 = phi i64 [ %prol.iter376.next, %scalar.ph307.prol ], [ 0, %scalar.ph307.preheader ]
  %i.pd = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !127
  %i.pe = zext i8 %i.pd to i32
  %i.pf = shl nuw nsw i32 %i.pe, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.pf, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.pg = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.pg, align 2
  %i.ph = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %scalar.ph307.prol.loopexit, label %scalar.ph307.prol, !llvm.loop !101

scalar.ph307.prol.loopexit:                       ; preds = %scalar.ph307.prol, %scalar.ph307.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph307.preheader ], [ %i.ph, %scalar.ph307.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph307.preheader ], [ %i.pi, %scalar.ph307.prol ]
  %i.pj = icmp ult i64 %i.pc, 3
  br i1 %i.pj, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph307

.preheader84.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.pk = shl i32 %i.mr, 16
  %invariant.op137.reass = add i32 %i.pk, %invariant.op139 ; 6 uses
  %i.pl = sub nsw i64 %i.my, %i.mw                ; 3 uses
  %min.iters.check282 = icmp ult i64 %i.pl, 8
  br i1 %min.iters.check282, label %scalar.ph281.preheader, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph110.i.i
  %i.pm = add nsw i64 %i.my, %i.le
  %i.pn = add nsw i64 %i.pm, %i.mu
  %6 = sub nsw i64 %i.pn, %i.mw
  %i.po = shl nsw i64 %6, 2
  %i.pp = getelementptr i8, ptr %i.e, i64 %i.po
  %bound0284 = icmp ult ptr %i.mv, %i.mz
  %bound1285 = icmp ult ptr %i.mx, %i.pp
  %found.conflict286 = and i1 %bound0284, %bound1285
  br i1 %found.conflict286, label %scalar.ph281.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck283
  %n.vec288 = and i64 %i.pl, -8                   ; 4 uses
  %i.pq = shl nsw i64 %n.vec288, 2
  %i.pr = getelementptr i8, ptr %i.mv, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.mx, i64 %n.vec288
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %invariant.op137.reass, i64 0
  %broadcast.splat290 = shufflevector <4 x i32> %broadcast.splatinsert289, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph287
  %index292 = phi i64 [ 0, %vector.ph287 ], [ %index.next297, %vector.body291 ] ; 3 uses
  %i.pt = shl i64 %index292, 2
  %next.gep293 = getelementptr i8, ptr %i.mv, i64 %i.pt ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.mx, i64 %index292 ; 2 uses
  %i.pu = getelementptr i8, ptr %next.gep294, i64 4
  %wide.load295 = load <4 x i8>, ptr %next.gep294, align 1, !tbaa !127, !alias.scope !132
  %wide.load296 = load <4 x i8>, ptr %i.pu, align 1, !tbaa !127, !alias.scope !132
  %i.pv = zext <4 x i8> %wide.load295 to <4 x i32>
  %i.pw = zext <4 x i8> %wide.load296 to <4 x i32>
  %i.px = shl nuw nsw <4 x i32> %i.pv, splat (i32 8)
  %i.py = shl nuw nsw <4 x i32> %i.pw, splat (i32 8)
  %i.pz = or disjoint <4 x i32> %i.px, %broadcast.splat290
  %i.qa = or disjoint <4 x i32> %i.py, %broadcast.splat290
  %i.qb = getelementptr i8, ptr %next.gep293, i64 16
  store <4 x i32> %i.pz, ptr %next.gep293, align 2, !alias.scope !133, !noalias !132
  store <4 x i32> %i.qa, ptr %i.qb, align 2, !alias.scope !133, !noalias !132
  %index.next297 = add nuw i64 %index292, 8       ; 2 uses
  %i.qc = icmp eq i64 %index.next297, %n.vec288
  br i1 %i.qc, label %middle.block298, label %vector.body291, !llvm.loop !105

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.pl, %n.vec288
  br i1 %cmp.n299, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %vector.memcheck283, %.lr.ph110.i.i, %middle.block298
  %.0109.i.i.ph = phi ptr [ %i.mv, %vector.memcheck283 ], [ %i.mv, %.lr.ph110.i.i ], [ %i.pr, %middle.block298 ] ; 2 uses
  %.074108.i.i.ph = phi ptr [ %i.mx, %vector.memcheck283 ], [ %i.mx, %.lr.ph110.i.i ], [ %i.ps, %middle.block298 ] ; 3 uses
  %i.qd = add i64 %i.a, %i.my
  %.074108.i.i.ph377 = ptrtoaddr ptr %.074108.i.i.ph to i64 ; 2 uses
  %i.qe = sub i64 %i.qd, %.074108.i.i.ph377
  %i.qf = add i64 %i.er, %i.my
  %i.qg = sub i64 %i.qf, %.074108.i.i.ph377
  %xtraiter378 = and i64 %i.qe, 3                 ; 2 uses
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol

scalar.ph281.prol:                                ; preds = %scalar.ph281.preheader, %scalar.ph281.prol
  %.0109.i.i.prol = phi ptr [ %i.qk, %scalar.ph281.prol ], [ %.0109.i.i.ph, %scalar.ph281.preheader ] ; 2 uses
  %.074108.i.i.prol = phi ptr [ %i.ql, %scalar.ph281.prol ], [ %.074108.i.i.ph, %scalar.ph281.preheader ] ; 2 uses
  %prol.iter380 = phi i64 [ %prol.iter380.next, %scalar.ph281.prol ], [ 0, %scalar.ph281.preheader ]
  %i.qh = load i8, ptr %.074108.i.i.prol, align 1, !tbaa !127
  %i.qi = zext i8 %i.qh to i32
  %i.qj = shl nuw nsw i32 %i.qi, 8
  %.reass112.reass.i.reass.i.reass.prol = or disjoint i32 %i.qj, %invariant.op137.reass
  %i.qk = getelementptr inbounds nuw i8, ptr %.0109.i.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.reass.i.reass.prol, ptr %.0109.i.i.prol, align 2
  %i.ql = getelementptr inbounds nuw i8, ptr %.074108.i.i.prol, i64 1 ; 2 uses
  %prol.iter380.next = add i64 %prol.iter380, 1   ; 2 uses
  %prol.iter380.cmp.not = icmp eq i64 %prol.iter380.next, %xtraiter378
  br i1 %prol.iter380.cmp.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol, !llvm.loop !106

scalar.ph281.prol.loopexit:                       ; preds = %scalar.ph281.prol, %scalar.ph281.preheader
  %.0109.i.i.unr = phi ptr [ %.0109.i.i.ph, %scalar.ph281.preheader ], [ %i.qk, %scalar.ph281.prol ]
  %.074108.i.i.unr = phi ptr [ %.074108.i.i.ph, %scalar.ph281.preheader ], [ %i.ql, %scalar.ph281.prol ]
  %i.qm = icmp ult i64 %i.qg, 3
  br i1 %i.qm, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph281

.preheader.i60.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader.i60.i
  %i.qn = shl i32 %i.mr, 16
  %i.qo = zext i32 %i.nc to i64
  %.idx.i.i = shl nuw nsw i64 %i.qo, 2            ; 2 uses
  %invariant.op138.reass = add i32 %i.qn, %invariant.op139
  %i.qp = add nsw i64 %.idx.i.i, -32              ; 2 uses
  %i.qq = lshr i64 %i.qp, 5
  %i.qr = add nuw nsw i64 %i.qq, 1
  %xtraiter381 = and i64 %i.qr, 7                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  %i.qs = icmp ult i64 %i.qp, 224
  br label %.lr.ph115.preheader.i.i

scalar.ph281:                                     ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281
  %.0109.i.i = phi ptr [ %i.rl, %scalar.ph281 ], [ %.0109.i.i.unr, %scalar.ph281.prol.loopexit ] ; 5 uses
  %.074108.i.i = phi ptr [ %i.rm, %scalar.ph281 ], [ %.074108.i.i.unr, %scalar.ph281.prol.loopexit ] ; 5 uses
  %i.qt = load i8, ptr %.074108.i.i, align 1, !tbaa !127
  %i.qu = zext i8 %i.qt to i32
  %i.qv = shl nuw nsw i32 %i.qu, 8
  %.reass112.reass.i.reass.i.reass = or disjoint i32 %i.qv, %invariant.op137.reass
  %i.qw = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 4
  store i32 %.reass112.reass.i.reass.i.reass, ptr %.0109.i.i, align 2
  %i.qx = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !127
  %i.qz = zext i8 %i.qy to i32
  %i.ra = shl nuw nsw i32 %i.qz, 8
  %.reass112.reass.i.reass.i.reass.1 = or disjoint i32 %i.ra, %invariant.op137.reass
  %i.rb = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 8
  store i32 %.reass112.reass.i.reass.i.reass.1, ptr %i.qw, align 2
  %i.rc = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 2
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !127
  %i.re = zext i8 %i.rd to i32
  %i.rf = shl nuw nsw i32 %i.re, 8
  %.reass112.reass.i.reass.i.reass.2 = or disjoint i32 %i.rf, %invariant.op137.reass
  %i.rg = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 12
  store i32 %.reass112.reass.i.reass.i.reass.2, ptr %i.rb, align 2
  %i.rh = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 3
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !127
  %i.rj = zext i8 %i.ri to i32
  %i.rk = shl nuw nsw i32 %i.rj, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.rk, %invariant.op137.reass
  %i.rl = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.rg, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.rm, %i.mz
  br i1 %.not81.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph281, !llvm.loop !107

scalar.ph307:                                     ; preds = %scalar.ph307.prol.loopexit, %scalar.ph307
  %.1103.i.i = phi ptr [ %i.sj, %scalar.ph307 ], [ %.1103.i.i.unr, %scalar.ph307.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.sk, %scalar.ph307 ], [ %.175102.i.i.unr, %scalar.ph307.prol.loopexit ] ; 5 uses
  %i.rn = load i8, ptr %.175102.i.i, align 1, !tbaa !127
  %i.ro = zext i8 %i.rn to i32
  %i.rp = shl nuw nsw i32 %i.ro, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.rp, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.rq, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !127
  %i.ru = zext i8 %i.rt to i32
  %i.rv = shl nuw nsw i32 %i.ru, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.rv, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.rr, align 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.rw, align 2
  %i.rx = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.ry = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !127
  %i.sa = zext i8 %i.rz to i32
  %i.sb = shl nuw nsw i32 %i.sa, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.sb, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.rx, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.sc, align 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !127
  %i.sg = zext i8 %i.sf to i32
  %i.sh = shl nuw nsw i32 %i.sg, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.sh, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.sd, align 2
  %i.si = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.si, align 2
  %i.sj = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.sk, %i.mz
  br i1 %.not80.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph307, !llvm.loop !108

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit369, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.tp, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit369 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.tq, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit369 ] ; 5 uses
  %i.sl = load i8, ptr %.27696.i.i, align 1, !tbaa !127
  %i.sm = zext i8 %i.sl to i32
  %i.sn = shl nuw nsw i32 %i.sm, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.sn, %invariant.op135.reass
  %i.so = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.sp = mul nuw i64 %i.so, 4294967297           ; 2 uses
  store i64 %i.sp, ptr %.297.i.i, align 2
  %i.sq = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.sp, ptr %i.sq, align 2
  %i.sr = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.ss = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !127
  %i.su = zext i8 %i.st to i32
  %i.sv = shl nuw nsw i32 %i.su, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.sv, %invariant.op135.reass
  %i.sw = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.sx = mul nuw i64 %i.sw, 4294967297           ; 2 uses
  store i64 %i.sx, ptr %i.sr, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.sx, ptr %i.sy, align 2
  %i.sz = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.ta = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !127
  %i.tc = zext i8 %i.tb to i32
  %i.td = shl nuw nsw i32 %i.tc, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.td, %invariant.op135.reass
  %i.te = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.tf = mul nuw i64 %i.te, 4294967297           ; 2 uses
  store i64 %i.tf, ptr %i.sz, align 2
  %i.tg = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.tf, ptr %i.tg, align 2
  %i.th = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.ti = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
end_hunk_2
begin_hunk_3_@HUF_readDTableX2_wksp:bb.a
.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.wu, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.wv, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.wc = load i8, ptr %.37793.us.i, align 1, !tbaa !127
  %i.wd = zext i8 %i.wc to i32
  %i.we = or disjoint i32 %i.vo, %i.wd
  %i.wf = zext i32 %i.we to i64
  %i.wg = mul nuw i64 %i.wf, 4294967297           ; 4 uses
  store i64 %i.wg, ptr %.394.us.i, align 2
  %i.wh = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.wg, ptr %i.wh, align 2
  %i.wi = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.wg, ptr %i.wi, align 2
  %i.wj = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.wg, ptr %i.wj, align 2
  %i.wk = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.wl = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !127
  %i.wn = zext i8 %i.wm to i32
  %i.wo = or disjoint i32 %i.vo, %i.wn
  %i.wp = zext i32 %i.wo to i64
  %i.wq = mul nuw i64 %i.wp, 4294967297           ; 4 uses
  store i64 %i.wq, ptr %i.wk, align 2
  %i.wr = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.wq, ptr %i.wr, align 2
  %i.ws = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.wq, ptr %i.ws, align 2
  %i.wt = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.wq, ptr %i.wt, align 2
  %i.wu = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.wv = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.wv, %i.vk
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !110

.preheader88.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.ww = shl i32 %i.ey, 16
  %i.wx = add i32 %i.ww, 16777216                 ; 5 uses
  %i.wy = sub nsw i64 %i.vj, %i.vh
  %xtraiter399 = and i64 %i.wy, 3                 ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.xf, %.lr.ph98.split.us.i.prol ], [ %i.vg, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.xg, %.lr.ph98.split.us.i.prol ], [ %i.vi, %.lr.ph98.i ] ; 2 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.wz = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !127
  %i.xa = zext i8 %i.wz to i32
  %i.xb = or disjoint i32 %i.wx, %i.xa
  %i.xc = zext i32 %i.xb to i64
  %i.xd = mul nuw i64 %i.xc, 4294967297           ; 2 uses
  store i64 %i.xd, ptr %.297.us.i.prol, align 2
  %i.xe = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.xd, ptr %i.xe, align 2
  %i.xf = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !115

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.vg, %.lr.ph98.i ], [ %i.xf, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.vi, %.lr.ph98.i ], [ %i.xg, %.lr.ph98.split.us.i.prol ]
  %i.xh = sub nsw i64 %i.vh, %i.vj
  %i.xi = icmp ugt i64 %i.xh, -4
  br i1 %i.xi, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.yn, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.yo, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.xj = load i8, ptr %.27696.us.i, align 1, !tbaa !127
  %i.xk = zext i8 %i.xj to i32
  %i.xl = or disjoint i32 %i.wx, %i.xk
  %i.xm = zext i32 %i.xl to i64
  %i.xn = mul nuw i64 %i.xm, 4294967297           ; 2 uses
  store i64 %i.xn, ptr %.297.us.i, align 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.xn, ptr %i.xo, align 2
  %i.xp = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !127
  %i.xs = zext i8 %i.xr to i32
  %i.xt = or disjoint i32 %i.wx, %i.xs
  %i.xu = zext i32 %i.xt to i64
  %i.xv = mul nuw i64 %i.xu, 4294967297           ; 2 uses
  store i64 %i.xv, ptr %i.xp, align 2
  %i.xw = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.xv, ptr %i.xw, align 2
  %i.xx = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !127
  %i.ya = zext i8 %i.xz to i32
  %i.yb = or disjoint i32 %i.wx, %i.ya
  %i.yc = zext i32 %i.yb to i64
  %i.yd = mul nuw i64 %i.yc, 4294967297           ; 2 uses
  store i64 %i.yd, ptr %i.xx, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.yd, ptr %i.ye, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.yg = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !127
  %i.yi = zext i8 %i.yh to i32
  %i.yj = or disjoint i32 %i.wx, %i.yi
  %i.yk = zext i32 %i.yj to i64
  %i.yl = mul nuw i64 %i.yk, 4294967297           ; 2 uses
  store i64 %i.yl, ptr %i.yf, align 2
  %i.ym = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.yl, ptr %i.ym, align 2
  %i.yn = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.yo = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.yo, %i.vk
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !109

.preheader86.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.yp = shl i32 %i.ey, 16
  %i.yq = add i32 %i.yp, 16777216                 ; 5 uses
  %i.yr = sub nsw i64 %i.vj, %i.vh
  %xtraiter402 = and i64 %i.yr, 3                 ; 2 uses
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  br i1 %lcmp.mod403.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol

.lr.ph104.split.us.i.prol:                        ; preds = %.lr.ph104.i, %.lr.ph104.split.us.i.prol
  %.1103.us.i.prol = phi ptr [ %i.yw, %.lr.ph104.split.us.i.prol ], [ %i.vg, %.lr.ph104.i ] ; 3 uses
  %.175102.us.i.prol = phi ptr [ %i.yx, %.lr.ph104.split.us.i.prol ], [ %i.vi, %.lr.ph104.i ] ; 2 uses
  %prol.iter404 = phi i64 [ %prol.iter404.next, %.lr.ph104.split.us.i.prol ], [ 0, %.lr.ph104.i ]
  %i.ys = load i8, ptr %.175102.us.i.prol, align 1, !tbaa !127
  %i.yt = zext i8 %i.ys to i32
  %i.yu = or disjoint i32 %i.yq, %i.yt            ; 2 uses
  store i32 %i.yu, ptr %.1103.us.i.prol, align 2
  %i.yv = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.yu, ptr %i.yv, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter404.next = add i64 %prol.iter404, 1   ; 2 uses
  %prol.iter404.cmp.not = icmp eq i64 %prol.iter404.next, %xtraiter402
  br i1 %prol.iter404.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !116

.lr.ph104.split.us.i.prol.loopexit:               ; preds = %.lr.ph104.split.us.i.prol, %.lr.ph104.i
  %.1103.us.i.unr = phi ptr [ %i.vg, %.lr.ph104.i ], [ %i.yw, %.lr.ph104.split.us.i.prol ]
  %.175102.us.i.unr = phi ptr [ %i.vi, %.lr.ph104.i ], [ %i.yx, %.lr.ph104.split.us.i.prol ]
  %i.yy = sub nsw i64 %i.vh, %i.vj
  %i.yz = icmp ugt i64 %i.yy, -4
  br i1 %i.yz, label %.loopexit.i, label %.lr.ph104.split.us.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i
  %.1103.us.i = phi ptr [ %i.zw, %.lr.ph104.split.us.i ], [ %.1103.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 9 uses
  %.175102.us.i = phi ptr [ %i.zx, %.lr.ph104.split.us.i ], [ %.175102.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 5 uses
  %i.za = load i8, ptr %.175102.us.i, align 1, !tbaa !127
  %i.zb = zext i8 %i.za to i32
  %i.zc = or disjoint i32 %i.yq, %i.zb            ; 2 uses
  store i32 %i.zc, ptr %.1103.us.i, align 2
  %i.zd = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 4
  store i32 %i.zc, ptr %i.zd, align 2
  %i.ze = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 8
  %i.zf = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 1
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !127
  %i.zh = zext i8 %i.zg to i32
  %i.zi = or disjoint i32 %i.yq, %i.zh            ; 2 uses
  store i32 %i.zi, ptr %i.ze, align 2
  %i.zj = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 12
  store i32 %i.zi, ptr %i.zj, align 2
  %i.zk = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 16
  %i.zl = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 2
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !127
  %i.zn = zext i8 %i.zm to i32
  %i.zo = or disjoint i32 %i.yq, %i.zn            ; 2 uses
  store i32 %i.zo, ptr %i.zk, align 2
  %i.zp = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 20
  store i32 %i.zo, ptr %i.zp, align 2
  %i.zq = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 24
  %i.zr = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 3
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !127
  %i.zt = zext i8 %i.zs to i32
  %i.zu = or disjoint i32 %i.yq, %i.zt            ; 2 uses
  store i32 %i.zu, ptr %i.zq, align 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 28
  store i32 %i.zu, ptr %i.zv, align 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 32
  %i.zx = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 4 ; 2 uses
  %.not80.us.i.3 = icmp eq ptr %i.zx, %i.vk
  br i1 %.not80.us.i.3, label %.loopexit.i, label %.lr.ph104.split.us.i, !llvm.loop !117

.preheader84.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader84.i
  %i.zy = shl i32 %i.ey, 16
  %i.zz = add i32 %i.zy, 16777216                 ; 10 uses
  %i.aaa = sub nsw i64 %i.vj, %i.vh               ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.aaa, 8
  br i1 %min.iters.check228, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph110.i
  %i.aab = add nsw i64 %i.vj, %i.vf
  %7 = sub nsw i64 %i.aab, %i.vh
  %i.aac = shl nsw i64 %7, 2
  %i.aad = getelementptr i8, ptr %i.e, i64 %i.aac
  %bound0 = icmp ult ptr %i.vg, %i.vk
  %bound1 = icmp ult ptr %i.vi, %i.aad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph230

vector.ph230:                                     ; preds = %vector.memcheck229
  %n.vec231 = and i64 %i.aaa, -8                  ; 4 uses
  %i.aae = shl nsw i64 %n.vec231, 2
  %i.aaf = getelementptr i8, ptr %i.vg, i64 %i.aae
  %i.aag = getelementptr i8, ptr %i.vi, i64 %n.vec231
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.zz, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph230
  %index235 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %i.aah = shl i64 %index235, 2
  %next.gep = getelementptr i8, ptr %i.vg, i64 %i.aah ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.vi, i64 %index235 ; 2 uses
  %i.aai = getelementptr i8, ptr %next.gep236, i64 4
  %wide.load237 = load <4 x i8>, ptr %next.gep236, align 1, !tbaa !127, !alias.scope !134
  %wide.load238 = load <4 x i8>, ptr %i.aai, align 1, !tbaa !127, !alias.scope !134
  %i.aaj = zext <4 x i8> %wide.load237 to <4 x i32>
  %i.aak = zext <4 x i8> %wide.load238 to <4 x i32>
  %i.aal = or disjoint <4 x i32> %broadcast.splat233, %i.aaj
  %i.aam = or disjoint <4 x i32> %broadcast.splat233, %i.aak
  %i.aan = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.aal, ptr %next.gep, align 2, !alias.scope !135, !noalias !134
  store <4 x i32> %i.aam, ptr %i.aan, align 2, !alias.scope !135, !noalias !134
  %index.next239 = add nuw i64 %index235, 8       ; 2 uses
  %i.aao = icmp eq i64 %index.next239, %n.vec231
  br i1 %i.aao, label %middle.block240, label %vector.body234, !llvm.loop !121

middle.block240:                                  ; preds = %vector.body234
  %cmp.n241 = icmp eq i64 %i.aaa, %n.vec231
  br i1 %cmp.n241, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck229, %.lr.ph110.i, %middle.block240
  %.0109.us.i.ph = phi ptr [ %i.vg, %vector.memcheck229 ], [ %i.vg, %.lr.ph110.i ], [ %i.aaf, %middle.block240 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.vi, %vector.memcheck229 ], [ %i.vi, %.lr.ph110.i ], [ %i.aag, %middle.block240 ] ; 3 uses
  %i.aap = add i64 %i.a, %i.vj
  %.074108.us.i.ph405 = ptrtoaddr ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.aaq = sub i64 %i.aap, %.074108.us.i.ph405
  %i.aar = add i64 %i.es, %i.vj
  %i.aas = sub i64 %i.aar, %.074108.us.i.ph405
  %xtraiter406 = and i64 %i.aaq, 7                ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.aaw, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.aax, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.aat = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !127
  %i.aau = zext i8 %i.aat to i32
  %i.aav = or disjoint i32 %i.zz, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.aav, ptr %.0109.us.i.prol, align 2
  %i.aax = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !122

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.aaw, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.aax, %.lr.ph110.split.us.i.prol ]
  %i.aay = icmp ult i64 %i.aas, 7
  br i1 %i.aay, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.acl, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.acm, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.aaz = load i8, ptr %.074108.us.i, align 1, !tbaa !127
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = or disjoint i32 %i.zz, %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.abb, ptr %.0109.us.i, align 2
  %i.abd = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !127
  %i.abf = zext i8 %i.abe to i32
  %i.abg = or disjoint i32 %i.zz, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.abg, ptr %i.abc, align 2
  %i.abi = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !127
  %i.abk = zext i8 %i.abj to i32
  %i.abl = or disjoint i32 %i.zz, %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.abl, ptr %i.abh, align 2
  %i.abn = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !127
  %i.abp = zext i8 %i.abo to i32
  %i.abq = or disjoint i32 %i.zz, %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.abq, ptr %i.abm, align 2
  %i.abs = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !127
  %i.abu = zext i8 %i.abt to i32
  %i.abv = or disjoint i32 %i.zz, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.abv, ptr %i.abr, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !127
  %i.abz = zext i8 %i.aby to i32
  %i.aca = or disjoint i32 %i.zz, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.aca, ptr %i.abw, align 2
  %i.acc = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !127
  %i.ace = zext i8 %i.acd to i32
  %i.acf = or disjoint i32 %i.zz, %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.acf, ptr %i.acb, align 2
  %i.ach = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !127
  %i.acj = zext i8 %i.aci to i32
  %i.ack = or disjoint i32 %i.zz, %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.ack, ptr %i.acg, align 2
  %i.acm = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.acm, %i.vk
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !123

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.acn = shl i32 %i.ey, 16
  %i.aco = add i32 %i.acn, 16777216
  %i.acp = zext i32 %i.vm to i64
  %.idx.i = shl nuw nsw i64 %i.acp, 2             ; 2 uses
  %i.acq = add nsw i64 %.idx.i, -32               ; 2 uses
  %i.acr = lshr i64 %i.acq, 5
  %i.acs = add nuw nsw i64 %i.acr, 1
  %xtraiter409 = and i64 %i.acs, 7                ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  %i.act = icmp ult i64 %i.acq, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.vg, %.lr.ph119.i ], [ %i.acz, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.vi, %.lr.ph119.i ], [ %i.adl, %._crit_edge.i ] ; 2 uses
  %i.acu = load i8, ptr %.478117.i, align 1, !tbaa !127
  %i.acv = zext i8 %i.acu to i32
  %i.acw = or disjoint i32 %i.aco, %i.acv
  %i.acx = zext i32 %i.acw to i64
  %i.acy = mul nuw i64 %i.acx, 4294967297
  %i.acz = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.ada = insertelement <4 x i64> poison, i64 %i.acy, i64 0
  %i.adb = shufflevector <4 x i64> %i.ada, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod410.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.adc, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter411 = phi i64 [ %prol.iter411.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.adb, ptr %.5114.i.prol, align 2
  %i.adc = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter411.next = add i64 %prol.iter411, 1   ; 2 uses
  %prol.iter411.cmp.not = icmp eq i64 %prol.iter411.next, %xtraiter409
  br i1 %prol.iter411.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !124

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.adc, %.lr.ph115.i.prol ]
  br i1 %i.act, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.adk, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.adb, ptr %.5114.i, align 2
  %i.add = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.adb, ptr %i.add, align 2
  %i.ade = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.adb, ptr %i.ade, align 2
  %i.adf = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.adb, ptr %i.adf, align 2
  %i.adg = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.adb, ptr %i.adg, align 2
  %i.adh = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.adb, ptr %i.adh, align 2
  %i.adi = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.adb, ptr %i.adi, align 2
  %i.adj = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.adb, ptr %i.adj, align 2
  %i.adk = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.adk, %i.acz
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.adl = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.adl, %i.vk
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %HUF_fillDTableX2Level2.exit.loopexit.i, %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i, %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block272, %middle.block240, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.ax
  br i1 %exitcond.not.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i, !llvm.loop !125

HUF_fillDTableX2.exit:                            ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.adm = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
end_hunk_3
