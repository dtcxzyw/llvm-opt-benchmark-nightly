Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ricecomp?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"fits_rcomp: insufficient memory\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"rice_encode: end of buffer\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"decompression error: input buffer not properly allocated\00", align 1
@nonzero_count = internal unnamed_addr constant [256 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], align 16
@.str.3 = private unnamed_addr constant [55 x i8] c"decompression error: hit end of compressed byte stream\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"decompression warning: unused bytes at end of compressed buffer\00", align 1
@output_nbits.mask = internal unnamed_addr constant [33 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647, i32 -1], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @fits_rcomp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #8 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str) #9
  br label %bb.t

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %5, ptr %2, align 1, !tbaa !10
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph259.preheader, label %done_outputing_bits.exit

.lr.ph259.preheader:                              ; preds = %.lr.ph.i
  %i.j = load i32, ptr %0, align 4, !tbaa !9
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %output_nbits.exit170
  %indvars.iv294 = phi i64 [ 0, %.lr.ph259.preheader ], [ %indvars.iv.next295, %output_nbits.exit170 ] ; 3 uses
  %.0133258 = phi i32 [ %i.j, %.lr.ph259.preheader ], [ %.1134.lcssa, %output_nbits.exit170 ] ; 3 uses
  %.0135257 = phi i32 [ %4, %.lr.ph259.preheader ], [ %spec.select, %output_nbits.exit170 ]
  %.sroa.0.0255 = phi i32 [ %i.g, %.lr.ph259.preheader ], [ %.sroa.0.2, %output_nbits.exit170 ] ; 6 uses
  %.sroa.16.0254 = phi i32 [ 8, %.lr.ph259.preheader ], [ %.sroa.16.2, %output_nbits.exit170 ] ; 11 uses
  %.sroa.33.0253 = phi ptr [ %i.h, %.lr.ph259.preheader ], [ %.sroa.33.7, %output_nbits.exit170 ] ; 9 uses
  %i.l = sub nsw i64 %i.k, %indvars.iv294         ; 2 uses
  %i.m = icmp slt i64 %i.l, %i.c
  %i.n = trunc nsw i64 %i.l to i32
  %spec.select = select i1 %i.m, i32 %i.n, i32 %.0135257 ; 9 uses
  %i.o = icmp sgt i32 %spec.select, 0             ; 3 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph259
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %indvars.iv294 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %spec.select, 1
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.0220 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %.1134219 = phi i32 [ %.0133258, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.q = load i32, ptr %gep, align 4, !tbaa !9    ; 2 uses
  %i.r = sub nsw i32 %i.q, %.1134219              ; 2 uses
  %i.s = shl i32 %i.r, 1
  %.lobit = ashr i32 %i.r, 31
  %i.t = xor i32 %i.s, %.lobit                    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !9
  %i.v = uitofp i32 %i.t to double
  %i.w = fadd double %.0220, %i.v
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.x = load i32, ptr %gep.1, align 4, !tbaa !9  ; 4 uses
  %i.y = sub nsw i32 %i.x, %i.q                   ; 2 uses
  %i.z = shl i32 %i.y, 1
  %.lobit.1 = ashr i32 %i.y, 31
  %i.aa = xor i32 %i.z, %.lobit.1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !9
  %i.ac = uitofp i32 %i.aa to double
  %i.ad = fadd double %i.w, %i.ac                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0220.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.1134219.epil.init = phi i32 [ %.0133258, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod546 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod546)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ae = load i32, ptr %gep.epil, align 4, !tbaa !9 ; 2 uses
  %i.af = sub nsw i32 %i.ae, %.1134219.epil.init  ; 2 uses
  %i.ag = shl i32 %i.af, 1
  %.lobit.epil = ashr i32 %i.af, 31
  %i.ah = xor i32 %i.ag, %.lobit.epil             ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !9
  %i.aj = uitofp i32 %i.ah to double
  %i.ak = fadd double %.0220.epil.init, %i.aj
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph259
  %.1134.lcssa = phi i32 [ %.0133258, %.lr.ph259 ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi double [ 0.000000e+00, %.lr.ph259 ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.epil.preheader ] ; 2 uses
  %i.al = sdiv i32 %spec.select, 2
  %i.am = sitofp i32 %i.al to double
  %i.an = fsub double %.0.lcssa, %i.am
  %i.ao = fadd double %i.an, -1.000000e+00
  %i.ap = sitofp i32 %spec.select to double
  %i.aq = fdiv double %i.ao, %i.ap                ; 2 uses
  %i.ar = fcmp olt double %i.aq, 0.000000e+00
  %spec.store.select = select i1 %i.ar, double 0.000000e+00, double %i.aq
  %i.as = fptoui double %spec.store.select to i32 ; 2 uses
  %i.at = lshr i32 %i.as, 1                       ; 2 uses
  %i.au = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 false) ; 3 uses
  %i.av = sub nuw nsw i32 32, %i.au               ; 4 uses
  %i.aw = sub nuw nsw i32 33, %i.au
  %i.ax = icmp ugt i32 %i.as, 33554431
  br i1 %i.ax, label %bb.c, label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.ay = icmp sgt i32 %.sroa.16.0254, 27
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = shl i32 %.sroa.0.0255, %.sroa.16.0254   ; 2 uses
  %i.ba = sub nsw i32 5, %.sroa.16.0254
  %i.bb = trunc i32 %i.az to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.33.0253, i64 1
  store i8 %i.bb, ptr %.sroa.33.0253, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.33.11 = phi ptr [ %i.bc, %bb.d ], [ %.sroa.33.0253, %bb.c ] ; 6 uses
  %.031.i150 = phi i32 [ %i.ba, %bb.d ], [ 5, %bb.c ] ; 4 uses
  %.030.i151 = phi i32 [ %i.az, %bb.d ], [ %.sroa.0.0255, %bb.c ]
  %.0.i152 = phi i32 [ 8, %bb.d ], [ %.sroa.16.0254, %bb.c ] ; 2 uses
  %i.bd = shl i32 %.030.i151, %.031.i150
  %i.be = sext i32 %.031.i150 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr @output_nbits.mask, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = and i32 %i.bg, 26
  %i.bi = or i32 %i.bh, %i.bd                     ; 5 uses
  %i.bj = sub nsw i32 %.0.i152, %.031.i150        ; 8 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %iter.check378, label %output_nbits.exit156

iter.check378:                                    ; preds = %bb.e
  %i.bl = add i32 %.031.i150, 7
  %smax359 = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 -7)
  %i.bm = add i32 %i.bl, %smax359
  %i.bn = sub i32 %i.bm, %.0.i152                 ; 3 uses
  %i.bo = lshr i32 %i.bn, 3
  %narrow529 = add nuw nsw i32 %i.bo, 1
  %i.bp = zext nneg i32 %narrow529 to i64         ; 5 uses
  %min.iters.check360 = icmp ult i32 %i.bn, 56
  br i1 %min.iters.check360, label %.lr.ph.i154.preheader, label %vector.main.loop.iter.check361

vector.main.loop.iter.check361:                   ; preds = %iter.check378
  %min.iters.check362 = icmp ult i32 %i.bn, 120
  br i1 %min.iters.check362, label %vec.epilog.ph382, label %vector.ph363

vector.ph363:                                     ; preds = %vector.main.loop.iter.check361
  %i.bq = and i64 %i.bp, 8
  %n.vec364 = and i64 %i.bp, 1073741808           ; 5 uses
  %i.br = getelementptr i8, ptr %.sroa.33.11, i64 %n.vec364 ; 2 uses
  %i.bs = trunc nuw nsw i64 %n.vec364 to i32
  %i.bt = shl i32 %i.bs, 3
  %i.bu = add i32 %i.bj, %i.bt                    ; 3 uses
  %broadcast.splatinsert365 = insertelement <16 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat366 = shufflevector <16 x i32> %broadcast.splatinsert365, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <16 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat368 = shufflevector <16 x i32> %broadcast.splatinsert367, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction369 = add nsw <16 x i32> %broadcast.splat368, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  br label %vector.body370

vector.body370:                                   ; preds = %vector.ph363, %vector.body370
  %index371 = phi i64 [ 0, %vector.ph363 ], [ %index.next374, %vector.body370 ] ; 2 uses
  %vec.ind372 = phi <16 x i32> [ %induction369, %vector.ph363 ], [ %vec.ind.next375, %vector.body370 ] ; 2 uses
  %next.gep373 = getelementptr i8, ptr %.sroa.33.11, i64 %index371
  %i.bv = sub nsw <16 x i32> zeroinitializer, %vec.ind372
  %i.bw = ashr <16 x i32> %broadcast.splat366, %i.bv
  %i.bx = trunc <16 x i32> %i.bw to <16 x i8>
  store <16 x i8> %i.bx, ptr %next.gep373, align 1, !tbaa !10
  %index.next374 = add nuw i64 %index371, 16      ; 2 uses
  %vec.ind.next375 = add nsw <16 x i32> %vec.ind372, splat (i32 128)
  %i.by = icmp eq i64 %index.next374, %n.vec364
  br i1 %i.by, label %middle.block376, label %vector.body370, !llvm.loop !19

middle.block376:                                  ; preds = %vector.body370
  %cmp.n377 = icmp eq i64 %n.vec364, %i.bp
  br i1 %cmp.n377, label %output_nbits.exit156, label %vec.epilog.iter.check379

vec.epilog.iter.check379:                         ; preds = %middle.block376
  %min.epilog.iters.check381.not.not = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check381.not.not, label %.lr.ph.i154.preheader, label %vec.epilog.ph382, !prof !14

vec.epilog.ph382:                                 ; preds = %vector.main.loop.iter.check361, %vec.epilog.iter.check379
  %vec.epilog.resume.val383 = phi i64 [ %n.vec364, %vec.epilog.iter.check379 ], [ 0, %vector.main.loop.iter.check361 ]
  %bc.resume.val384 = phi i32 [ %i.bu, %vec.epilog.iter.check379 ], [ %i.bj, %vector.main.loop.iter.check361 ]
  %n.vec385 = and i64 %i.bp, 1073741816           ; 4 uses
  %i.bz = getelementptr i8, ptr %.sroa.33.11, i64 %n.vec385 ; 2 uses
  %i.ca = trunc nuw nsw i64 %n.vec385 to i32
  %i.cb = shl i32 %i.ca, 3
  %i.cc = add i32 %i.bj, %i.cb                    ; 2 uses
  %broadcast.splatinsert386 = insertelement <8 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat387 = shufflevector <8 x i32> %broadcast.splatinsert386, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert388 = insertelement <8 x i32> poison, i32 %bc.resume.val384, i64 0
  %broadcast.splat389 = shufflevector <8 x i32> %broadcast.splatinsert388, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction390 = add nsw <8 x i32> %broadcast.splat389, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body391

vec.epilog.vector.body391:                        ; preds = %vec.epilog.vector.body391, %vec.epilog.ph382
  %index392 = phi i64 [ %vec.epilog.resume.val383, %vec.epilog.ph382 ], [ %index.next395, %vec.epilog.vector.body391 ] ; 2 uses
  %vec.ind393 = phi <8 x i32> [ %induction390, %vec.epilog.ph382 ], [ %vec.ind.next396, %vec.epilog.vector.body391 ] ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.sroa.33.11, i64 %index392
  %i.cd = sub nsw <8 x i32> zeroinitializer, %vec.ind393
  %i.ce = ashr <8 x i32> %broadcast.splat387, %i.cd
  %i.cf = trunc <8 x i32> %i.ce to <8 x i8>
  store <8 x i8> %i.cf, ptr %next.gep394, align 1, !tbaa !10
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %vec.ind.next396 = add nsw <8 x i32> %vec.ind393, splat (i32 64)
  %i.cg = icmp eq i64 %index.next395, %n.vec385
  br i1 %i.cg, label %vec.epilog.middle.block397, label %vec.epilog.vector.body391, !llvm.loop !20

vec.epilog.middle.block397:                       ; preds = %vec.epilog.vector.body391
  %cmp.n398 = icmp eq i64 %n.vec385, %i.bp
  br i1 %cmp.n398, label %output_nbits.exit156, label %.lr.ph.i154.preheader

.lr.ph.i154.preheader:                            ; preds = %iter.check378, %vec.epilog.iter.check379, %vec.epilog.middle.block397
end_hunk_0
begin_hunk_1_@fits_rcomp:bb.a
  %.0128238 = phi i32 [ %i.gd, %.lr.ph240.preheader ], [ %.2130, %.loopexit ] ; 2 uses
  %.sroa.33.2236 = phi ptr [ %.sroa.33.22, %.lr.ph240.preheader ], [ %.sroa.33.6, %.loopexit ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv284
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9  ; 2 uses
  %i.hl = ashr i32 %i.hk, %i.av                   ; 5 uses
  %.not148.not = icmp sgt i32 %.0127239, %i.hl
  br i1 %.not148.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph240
  %i.hm = add nsw i32 %i.hl, 1                    ; 2 uses
  %i.hn = shl i32 %.0128238, %i.hm
  %i.ho = or i32 %i.hn, 1
  %i.hp = sub nsw i32 %.0127239, %i.hm
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph240
  %i.hq = shl i32 %.0128238, %.0127239
  %i.hr = trunc i32 %i.hq to i8
  store i8 %i.hr, ptr %.sroa.33.2236, align 1, !tbaa !10
  %i.hs = sub nsw i32 %i.hl, %.0127239            ; 3 uses
  %.sroa.33.3222 = getelementptr i8, ptr %.sroa.33.2236, i64 1 ; 2 uses
  %i.ht = icmp samesign ugt i32 %i.hs, 7
  br i1 %i.ht, label %.lr.ph226.preheader, label %._crit_edge227

.lr.ph226.preheader:                              ; preds = %bb.o
  %i.hu = add i32 %i.hl, 7
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hs, i32 15)
  %i.hv = add i32 %.0127239, %smin
  %i.hw = sub i32 %i.hu, %i.hv                    ; 2 uses
  %i.hx = lshr i32 %i.hw, 3
  %i.hy = zext nneg i32 %i.hx to i64              ; 2 uses
  %i.hz = add nuw nsw i64 %i.hy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.33.3222, i8 0, i64 %i.hz, i1 false), !tbaa !10
  %i.ia = add i32 %i.hl, -8
  %i.ib = and i32 %i.hw, -8
  %i.ic = add i32 %.0127239, %i.ib
  %i.id = sub i32 %i.ia, %i.ic
  %scevgep = getelementptr i8, ptr %.sroa.33.2236, i64 2
  %scevgep283 = getelementptr i8, ptr %scevgep, i64 %i.hy
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.preheader, %bb.o
  %.0131.lcssa = phi i32 [ %i.hs, %bb.o ], [ %i.id, %.lr.ph226.preheader ]
  %.sroa.33.3.lcssa = phi ptr [ %.sroa.33.3222, %bb.o ], [ %scevgep283, %.lr.ph226.preheader ]
  %i.ie = sub nuw nsw i32 7, %.0131.lcssa
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge227, %bb.n
  %.sroa.33.4 = phi ptr [ %.sroa.33.2236, %bb.n ], [ %.sroa.33.3.lcssa, %._crit_edge227 ] ; 7 uses
  %.1129 = phi i32 [ %i.ho, %bb.n ], [ 1, %._crit_edge227 ] ; 2 uses
  %.1 = phi i32 [ %i.hp, %bb.n ], [ %i.ie, %._crit_edge227 ] ; 3 uses
  br i1 %i.ei, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.if = shl i32 %.1129, %i.av
  %i.ig = and i32 %i.hk, %i.hi
  %i.ih = or i32 %i.if, %i.ig                     ; 7 uses
  %i.ii = sub nsw i32 %.1, %i.av                  ; 8 uses
  %i.ij = icmp slt i32 %i.ii, 1
  br i1 %i.ij, label %iter.check462, label %.loopexit

iter.check462:                                    ; preds = %bb.q
  %smax443 = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 -7)
  %i.ik = add i32 %smax443, 39
  %i.il = add i32 %i.au, %.1
  %i.im = sub i32 %i.ik, %i.il                    ; 3 uses
  %i.in = lshr i32 %i.im, 3
  %narrow527 = add nuw nsw i32 %i.in, 1
  %i.io = zext nneg i32 %narrow527 to i64         ; 5 uses
  %min.iters.check444 = icmp ult i32 %i.im, 56
  br i1 %min.iters.check444, label %.lr.ph233.preheader, label %vector.main.loop.iter.check445

vector.main.loop.iter.check445:                   ; preds = %iter.check462
  %min.iters.check446 = icmp ult i32 %i.im, 120
  br i1 %min.iters.check446, label %vec.epilog.ph466, label %vector.ph447

vector.ph447:                                     ; preds = %vector.main.loop.iter.check445
  %i.ip = and i64 %i.io, 8
  %n.vec448 = and i64 %i.io, 1073741808           ; 5 uses
  %i.iq = trunc nuw nsw i64 %n.vec448 to i32
  %i.ir = shl i32 %i.iq, 3
  %i.is = add i32 %i.ii, %i.ir                    ; 3 uses
  %i.it = getelementptr i8, ptr %.sroa.33.4, i64 %n.vec448 ; 2 uses
  %broadcast.splatinsert449 = insertelement <16 x i32> poison, i32 %i.ih, i64 0
  %broadcast.splat450 = shufflevector <16 x i32> %broadcast.splatinsert449, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert451 = insertelement <16 x i32> poison, i32 %i.ii, i64 0
  %broadcast.splat452 = shufflevector <16 x i32> %broadcast.splatinsert451, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction453 = add nsw <16 x i32> %broadcast.splat452, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  br label %vector.body454

vector.body454:                                   ; preds = %vector.ph447, %vector.body454
  %index455 = phi i64 [ 0, %vector.ph447 ], [ %index.next458, %vector.body454 ] ; 2 uses
  %vec.ind456 = phi <16 x i32> [ %induction453, %vector.ph447 ], [ %vec.ind.next459, %vector.body454 ] ; 2 uses
  %next.gep457 = getelementptr i8, ptr %.sroa.33.4, i64 %index455
  %i.iu = sub nsw <16 x i32> zeroinitializer, %vec.ind456
  %i.iv = ashr <16 x i32> %broadcast.splat450, %i.iu
  %i.iw = trunc <16 x i32> %i.iv to <16 x i8>
  store <16 x i8> %i.iw, ptr %next.gep457, align 1, !tbaa !10
  %index.next458 = add nuw i64 %index455, 16      ; 2 uses
  %vec.ind.next459 = add nsw <16 x i32> %vec.ind456, splat (i32 128)
  %i.ix = icmp eq i64 %index.next458, %n.vec448
  br i1 %i.ix, label %middle.block460, label %vector.body454, !llvm.loop !32

middle.block460:                                  ; preds = %vector.body454
  %cmp.n461 = icmp eq i64 %n.vec448, %i.io
  br i1 %cmp.n461, label %.loopexit, label %vec.epilog.iter.check463

vec.epilog.iter.check463:                         ; preds = %middle.block460
  %min.epilog.iters.check465.not.not = icmp eq i64 %i.ip, 0
  br i1 %min.epilog.iters.check465.not.not, label %.lr.ph233.preheader, label %vec.epilog.ph466, !prof !14

vec.epilog.ph466:                                 ; preds = %vector.main.loop.iter.check445, %vec.epilog.iter.check463
  %vec.epilog.resume.val467 = phi i64 [ %n.vec448, %vec.epilog.iter.check463 ], [ 0, %vector.main.loop.iter.check445 ]
  %bc.resume.val468 = phi i32 [ %i.is, %vec.epilog.iter.check463 ], [ %i.ii, %vector.main.loop.iter.check445 ]
  %n.vec469 = and i64 %i.io, 1073741816           ; 4 uses
  %i.iy = trunc nuw nsw i64 %n.vec469 to i32
  %i.iz = shl i32 %i.iy, 3
  %i.ja = add i32 %i.ii, %i.iz                    ; 2 uses
  %i.jb = getelementptr i8, ptr %.sroa.33.4, i64 %n.vec469 ; 2 uses
  %broadcast.splatinsert470 = insertelement <8 x i32> poison, i32 %i.ih, i64 0
  %broadcast.splat471 = shufflevector <8 x i32> %broadcast.splatinsert470, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert472 = insertelement <8 x i32> poison, i32 %bc.resume.val468, i64 0
  %broadcast.splat473 = shufflevector <8 x i32> %broadcast.splatinsert472, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction474 = add nsw <8 x i32> %broadcast.splat473, <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  br label %vec.epilog.vector.body475

vec.epilog.vector.body475:                        ; preds = %vec.epilog.vector.body475, %vec.epilog.ph466
  %index476 = phi i64 [ %vec.epilog.resume.val467, %vec.epilog.ph466 ], [ %index.next479, %vec.epilog.vector.body475 ] ; 2 uses
  %vec.ind477 = phi <8 x i32> [ %induction474, %vec.epilog.ph466 ], [ %vec.ind.next480, %vec.epilog.vector.body475 ] ; 2 uses
  %next.gep478 = getelementptr i8, ptr %.sroa.33.4, i64 %index476
  %i.jc = sub nsw <8 x i32> zeroinitializer, %vec.ind477
  %i.jd = ashr <8 x i32> %broadcast.splat471, %i.jc
  %i.je = trunc <8 x i32> %i.jd to <8 x i8>
  store <8 x i8> %i.je, ptr %next.gep478, align 1, !tbaa !10
  %index.next479 = add nuw i64 %index476, 8       ; 2 uses
  %vec.ind.next480 = add nsw <8 x i32> %vec.ind477, splat (i32 64)
  %i.jf = icmp eq i64 %index.next479, %n.vec469
  br i1 %i.jf, label %vec.epilog.middle.block481, label %vec.epilog.vector.body475, !llvm.loop !33

vec.epilog.middle.block481:                       ; preds = %vec.epilog.vector.body475
  %cmp.n482 = icmp eq i64 %n.vec469, %i.io
  br i1 %cmp.n482, label %.loopexit, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check462, %vec.epilog.iter.check463, %vec.epilog.middle.block481
  %.2231.ph = phi i32 [ %i.ii, %iter.check462 ], [ %i.is, %vec.epilog.iter.check463 ], [ %i.ja, %vec.epilog.middle.block481 ]
  %.sroa.33.5230.ph = phi ptr [ %.sroa.33.4, %iter.check462 ], [ %i.it, %vec.epilog.iter.check463 ], [ %i.jb, %vec.epilog.middle.block481 ]
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %.lr.ph233
  %.2231 = phi i32 [ %i.jk, %.lr.ph233 ], [ %.2231.ph, %.lr.ph233.preheader ] ; 3 uses
  %.sroa.33.5230 = phi ptr [ %i.jj, %.lr.ph233 ], [ %.sroa.33.5230.ph, %.lr.ph233.preheader ] ; 2 uses
  %i.jg = sub nsw i32 0, %.2231
  %i.jh = ashr i32 %i.ih, %i.jg
  %i.ji = trunc i32 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.33.5230, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.sroa.33.5230, align 1, !tbaa !10
  %i.jk = add nsw i32 %.2231, 8                   ; 2 uses
  %i.jl = icmp slt i32 %.2231, -7
  br i1 %i.jl, label %.lr.ph233, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph233, %middle.block460, %vec.epilog.middle.block481, %bb.q, %bb.p
  %.sroa.33.6 = phi ptr [ %.sroa.33.4, %bb.p ], [ %.sroa.33.4, %bb.q ], [ %i.jb, %vec.epilog.middle.block481 ], [ %i.it, %middle.block460 ], [ %i.jj, %.lr.ph233 ] ; 2 uses
  %.2130 = phi i32 [ %.1129, %bb.p ], [ %i.ih, %bb.q ], [ %i.ih, %vec.epilog.middle.block481 ], [ %i.ih, %middle.block460 ], [ %i.ih, %.lr.ph233 ] ; 2 uses
  %.3 = phi i32 [ %.1, %bb.p ], [ %i.ii, %bb.q ], [ %i.ja, %vec.epilog.middle.block481 ], [ %i.is, %middle.block460 ], [ %i.jk, %.lr.ph233 ] ; 2 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge241, label %.lr.ph240, !llvm.loop !35

._crit_edge241:                                   ; preds = %.loopexit, %output_nbits.exit177
  %.sroa.33.2.lcssa = phi ptr [ %.sroa.33.22, %output_nbits.exit177 ], [ %.sroa.33.6, %.loopexit ] ; 2 uses
  %.0128.lcssa = phi i32 [ %i.gd, %output_nbits.exit177 ], [ %.2130, %.loopexit ]
  %.0127.lcssa = phi i32 [ %.1.lcssa.i174, %output_nbits.exit177 ], [ %.3, %.loopexit ]
  %i.jm = icmp ugt ptr %.sroa.33.2.lcssa, %i.b
  br i1 %i.jm, label %bb.r, label %output_nbits.exit170

bb.r:                                             ; preds = %._crit_edge241
  tail call void @ffpmsg(ptr noundef nonnull @.str.1) #9
  tail call void @free(ptr noundef %i.e) #9
  br label %bb.t

output_nbits.exit170:                             ; preds = %.lr.ph.i168, %output_nbits.exit163, %middle.block418, %vec.epilog.middle.block439, %output_nbits.exit156, %._crit_edge241, %bb.j
  %.sroa.33.7 = phi ptr [ %.sroa.33.2.lcssa, %._crit_edge241 ], [ %.sroa.33.17, %bb.j ], [ %.sroa.33.16, %output_nbits.exit163 ], [ %.sroa.33.13, %output_nbits.exit156 ], [ %i.fg, %vec.epilog.middle.block439 ], [ %i.ey, %middle.block418 ], [ %i.fr, %.lr.ph.i168 ] ; 4 uses
  %.sroa.16.2 = phi i32 [ %.0127.lcssa, %._crit_edge241 ], [ %i.eq, %bb.j ], [ %.1.lcssa.i160, %output_nbits.exit163 ], [ %.1.lcssa.i153, %output_nbits.exit156 ], [ %i.fj, %vec.epilog.middle.block439 ], [ %i.fb, %middle.block418 ], [ %i.fs, %.lr.ph.i168 ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %.0128.lcssa, %._crit_edge241 ], [ %i.ep, %bb.j ], [ %i.de, %output_nbits.exit163 ], [ %i.bi, %output_nbits.exit156 ], [ %i.ep, %vec.epilog.middle.block439 ], [ %i.ep, %middle.block418 ], [ %i.ep, %.lr.ph.i168 ] ; 2 uses
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, %i.c ; 2 uses
  %i.jn = icmp slt i64 %indvars.iv.next295, %i.k
  br i1 %i.jn, label %.lr.ph259, label %._crit_edge260, !llvm.loop !36

._crit_edge260:                                   ; preds = %output_nbits.exit170
  %i.jo = icmp slt i32 %.sroa.16.2, 8
  br i1 %i.jo, label %bb.s, label %done_outputing_bits.exit

bb.s:                                             ; preds = %._crit_edge260
  %i.jp = shl i32 %.sroa.0.2, %.sroa.16.2
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.33.7, i64 1
  store i8 %i.jq, ptr %.sroa.33.7, align 1, !tbaa !10
  br label %done_outputing_bits.exit

done_outputing_bits.exit:                         ; preds = %.lr.ph.i, %._crit_edge260, %bb.s
  %.sroa.33.23 = phi ptr [ %i.jr, %bb.s ], [ %.sroa.33.7, %._crit_edge260 ], [ %i.h, %.lr.ph.i ]
  tail call void @free(ptr noundef %i.e) #9
  %i.js = ptrtoint ptr %.sroa.33.23 to i64
  %i.jt = ptrtoint ptr %2 to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.t

bb.t:                                             ; preds = %done_outputing_bits.exit, %bb.r, %bb.b
  %.0141 = phi i32 [ -1, %bb.b ], [ %i.jv, %done_outputing_bits.exit ], [ -1, %bb.r ]
  ret i32 %.0141
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare void @ffpmsg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fits_rcomp_short(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #8 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str) #9
  br label %bb.u

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load i16, ptr %0, align 2, !tbaa !16     ; 3 uses
  %i.h = lshr i16 %i.g, 8
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %2, align 1, !tbaa !10
  %i.k = trunc i16 %i.g to i8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !10
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph260.preheader, label %done_outputing_bits.exit

.lr.ph260.preheader:                              ; preds = %.lr.ph.i
  %i.n = zext i16 %i.g to i32
  %i.o = load i16, ptr %0, align 2, !tbaa !16
  %i.p = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %output_nbits.exit171
  %indvars.iv294 = phi i64 [ 0, %.lr.ph260.preheader ], [ %indvars.iv.next295, %output_nbits.exit171 ] ; 3 uses
  %.0133259 = phi i16 [ %i.o, %.lr.ph260.preheader ], [ %.1134.lcssa, %output_nbits.exit171 ] ; 3 uses
  %.0135258 = phi i32 [ %4, %.lr.ph260.preheader ], [ %spec.select, %output_nbits.exit171 ]
  %.sroa.0.0256 = phi i32 [ %i.n, %.lr.ph260.preheader ], [ %.sroa.0.2, %output_nbits.exit171 ] ; 6 uses
  %.sroa.16.0255 = phi i32 [ 8, %.lr.ph260.preheader ], [ %.sroa.16.2, %output_nbits.exit171 ] ; 12 uses
  %.sroa.33.0254 = phi ptr [ %i.l, %.lr.ph260.preheader ], [ %.sroa.33.7, %output_nbits.exit171 ] ; 9 uses
  %i.q = sub nsw i64 %i.p, %indvars.iv294         ; 2 uses
  %i.r = icmp slt i64 %i.q, %i.c
  %i.s = trunc nsw i64 %i.q to i32
  %spec.select = select i1 %i.r, i32 %i.s, i32 %.0135258 ; 9 uses
  %i.t = icmp sgt i32 %spec.select, 0             ; 3 uses
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph260
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %indvars.iv294 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.u = icmp eq i32 %spec.select, 1
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.0221 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %.1134220 = phi i16 [ %.0133259, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = load i16, ptr %gep, align 2, !tbaa !16   ; 2 uses
  %i.w = sub i16 %i.v, %.1134220                  ; 2 uses
  %i.x = sext i16 %i.w to i32
  %i.y = shl nsw i32 %i.x, 1
  %.lobit = ashr i16 %i.w, 15
  %i.z = sext i16 %.lobit to i32
  %i.aa = xor i32 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !9
  %i.ac = uitofp nneg i32 %i.aa to double
  %i.ad = fadd double %.0221, %i.ac
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ae = load i16, ptr %gep.1, align 2, !tbaa !16 ; 4 uses
  %i.af = sub i16 %i.ae, %i.v                     ; 2 uses
  %i.ag = sext i16 %i.af to i32
  %i.ah = shl nsw i32 %i.ag, 1
  %.lobit.1 = ashr i16 %i.af, 15
  %i.ai = sext i16 %.lobit.1 to i32
  %i.aj = xor i32 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !9
  %i.al = uitofp nneg i32 %i.aj to double
  %i.am = fadd double %i.ad, %i.al                ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0221.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.1134220.epil.init = phi i16 [ %.0133259, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod545 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.an = load i16, ptr %gep.epil, align 2, !tbaa !16 ; 2 uses
  %i.ao = sub i16 %i.an, %.1134220.epil.init      ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %i.aq = shl nsw i32 %i.ap, 1
  %.lobit.epil = ashr i16 %i.ao, 15
  %i.ar = sext i16 %.lobit.epil to i32
  %i.as = xor i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  store i32 %i.as, ptr %i.at, align 4, !tbaa !9
  %i.au = uitofp nneg i32 %i.as to double
  %i.av = fadd double %.0221.epil.init, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph260
  %.1134.lcssa = phi i16 [ %.0133259, %.lr.ph260 ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi double [ 0.000000e+00, %.lr.ph260 ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ] ; 2 uses
  %i.aw = sdiv i32 %spec.select, 2
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub double %.0.lcssa, %i.ax
  %i.az = fadd double %i.ay, -1.000000e+00
  %i.ba = sitofp i32 %spec.select to double
  %i.bb = fdiv double %i.az, %i.ba                ; 2 uses
  %i.bc = fcmp olt double %i.bb, 0.000000e+00
  %spec.store.select = select i1 %i.bc, double 0.000000e+00, double %i.bb
  %i.bd = fptoui double %spec.store.select to i16 ; 2 uses
  %i.be = lshr i16 %i.bd, 1                       ; 2 uses
  %i.bf = tail call range(i16 1, 17) i16 @llvm.ctlz.i16(i16 %i.be, i1 false)
  %i.bg = sub nuw nsw i16 16, %i.bf
  %i.bh = zext nneg i16 %i.bg to i32              ; 6 uses
  %i.bi = icmp ugt i16 %i.bd, 16383
  br i1 %i.bi, label %bb.c, label %bb.h

bb.c:                                             ; preds = %._crit_edge
  %i.bj = icmp sgt i32 %.sroa.16.0255, 28
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bk = shl i32 %.sroa.0.0256, %.sroa.16.0255   ; 2 uses
  %i.bl = sub nsw i32 4, %.sroa.16.0255
  %i.bm = trunc i32 %i.bk to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.33.0254, i64 1
  store i8 %i.bm, ptr %.sroa.33.0254, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.33.11 = phi ptr [ %i.bn, %bb.d ], [ %.sroa.33.0254, %bb.c ] ; 6 uses
  %.031.i151 = phi i32 [ %i.bl, %bb.d ], [ 4, %bb.c ] ; 4 uses
  %.030.i152 = phi i32 [ %i.bk, %bb.d ], [ %.sroa.0.0256, %bb.c ]
  %.0.i153 = phi i32 [ 8, %bb.d ], [ %.sroa.16.0255, %bb.c ] ; 2 uses
  %i.bo = shl i32 %.030.i152, %.031.i151
  %i.bp = sext i32 %.031.i151 to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr @output_nbits.mask, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = and i32 %i.br, 15
  %i.bt = or i32 %i.bs, %i.bo                     ; 5 uses
  %i.bu = sub nsw i32 %.0.i153, %.031.i151        ; 8 uses
  %i.bv = icmp slt i32 %i.bu, 1
  br i1 %i.bv, label %iter.check377, label %output_nbits.exit157

iter.check377:                                    ; preds = %bb.e
  %i.bw = add i32 %.031.i151, 7
  %smax358 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 -7)
  %i.bx = add i32 %i.bw, %smax358
  %i.by = sub i32 %i.bx, %.0.i153                 ; 3 uses
  %i.bz = lshr i32 %i.by, 3
  %narrow528 = add nuw nsw i32 %i.bz, 1
  %i.ca = zext nneg i32 %narrow528 to i64         ; 5 uses
  %min.iters.check359 = icmp ult i32 %i.by, 56
  br i1 %min.iters.check359, label %.lr.ph.i155.preheader, label %vector.main.loop.iter.check360

vector.main.loop.iter.check360:                   ; preds = %iter.check377
  %min.iters.check361 = icmp ult i32 %i.by, 120
  br i1 %min.iters.check361, label %vec.epilog.ph381, label %vector.ph362

vector.ph362:                                     ; preds = %vector.main.loop.iter.check360
  %i.cb = and i64 %i.ca, 8
end_hunk_1
begin_hunk_2_@fits_rdecomp_byte:.split
  %i.ak = or disjoint i32 %i.ag, %i.aj
  %i.al = shl nuw i32 %i.ak, 8
  %i.am = getelementptr inbounds nuw i8, ptr %.1122140, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %i.al, %i.ao
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.prol.loopexit, %bb.b
  %.1122.lcssa = phi ptr [ %.0121, %bb.b ], [ %.lcssa261.unr, %.lr.ph.prol.loopexit ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 6 uses
  %.1108.lcssa = phi i32 [ %i.k, %bb.b ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ] ; 11 uses
  %.1104.lcssa = phi i32 [ %.0103, %bb.b ], [ %.lcssa260.unr, %.lr.ph.prol.loopexit ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.aq = lshr i32 %.1104.lcssa, %.1108.lcssa
  %i.ar = add i32 %i.aq, -1                       ; 4 uses
  %notmask = shl nsw i32 -1, %.1108.lcssa
  %i.as = xor i32 %notmask, -1                    ; 2 uses
  %i.at = and i32 %.1104.lcssa, %i.as             ; 6 uses
  %i.au = add i32 %.0115, %4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %3) ; 8 uses
  %i.av = icmp slt i32 %i.ar, 0
  br i1 %i.av, label %.preheader134, label %bb.c

.preheader134:                                    ; preds = %._crit_edge
  %i.aw = icmp slt i32 %.0115, %spec.select
  br i1 %i.aw, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader134
  %i.ax = trunc i32 %.0 to i8
  %i.ay = zext nneg i32 %.0115 to i64
  %scevgep = getelementptr i8, ptr %2, i64 %i.ay
  %i.az = xor i32 %.0115, -1
  %i.ba = add i32 %spec.select, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.ax, i64 %i.bc, i1 false), !tbaa !10
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.bd = icmp eq i32 %i.ar, 6
  %i.be = icmp slt i32 %.0115, %spec.select       ; 2 uses
  br i1 %i.bd, label %.preheader135, label %.preheader137

.preheader137:                                    ; preds = %bb.c
  br i1 %i.be, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader137
  %i.bf = zext nneg i32 %.0115 to i64
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader

.preheader135:                                    ; preds = %bb.c
  br i1 %i.be, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader135
  %i.bg = sub nsw i32 8, %.1108.lcssa
  %i.bh = icmp eq i32 %.1108.lcssa, 0
  %i.bi = zext nneg i32 %.0115 to i64
  %wide.trip.count214 = zext nneg i32 %spec.select to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph185, %bb.d
  %indvars.iv211 = phi i64 [ %i.bi, %.lr.ph185 ], [ %indvars.iv.next212, %bb.d ] ; 2 uses
  %.1184 = phi i32 [ %.0, %.lr.ph185 ], [ %i.br, %bb.d ]
  %.2105183 = phi i32 [ %i.at, %.lr.ph185 ], [ %.3106, %bb.d ]
  %.2123181 = phi ptr [ %.1122.lcssa, %.lr.ph185 ], [ %i.bk, %bb.d ] ; 2 uses
  %i.bj = shl i32 %.2105183, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.2123181, i64 1 ; 2 uses
  %i.bl = load i8, ptr %.2123181, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, %.1108.lcssa
  %i.bo = and i32 %i.bm, %i.as
  %.3106 = select i1 %i.bh, i32 0, i32 %i.bo      ; 2 uses
  %.1100 = or i32 %i.bj, %i.bn                    ; 2 uses
  %i.bp = lshr i32 %.1100, 1
  %i.bq = and i32 %.1100, 1
  %sext133 = sub nsw i32 0, %i.bq
  %.2101 = xor i32 %i.bp, %sext133
  %i.br = add i32 %.2101, %.1184                  ; 3 uses
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv211
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !10
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit, label %bb.d, !llvm.loop !99

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge157
  %indvars.iv = phi i64 [ %i.bf, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge157 ] ; 2 uses
  %.2165 = phi i32 [ %.0, %.preheader.preheader ], [ %i.cx, %._crit_edge157 ]
  %.4164 = phi i32 [ %i.at, %.preheader.preheader ], [ %i.cu, %._crit_edge157 ] ; 2 uses
  %.2109163 = phi i32 [ %.1108.lcssa, %.preheader.preheader ], [ %.4111.lcssa, %._crit_edge157 ] ; 2 uses
  %.5126161 = phi ptr [ %.1122.lcssa, %.preheader.preheader ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %i.bu = icmp eq i32 %.4164, 0
  br i1 %i.bu, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader, %.lr.ph147
  %.3110146 = phi i32 [ %i.bv, %.lr.ph147 ], [ %.2109163, %.preheader ]
  %.6127145 = phi ptr [ %i.bw, %.lr.ph147 ], [ %.5126161, %.preheader ] ; 2 uses
  %i.bv = add nuw nsw i32 %.3110146, 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.6127145, i64 1 ; 2 uses
  %i.bx = load i8, ptr %.6127145, align 1, !tbaa !10 ; 2 uses
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph147, label %._crit_edge148.loopexit, !llvm.loop !100

._crit_edge148.loopexit:                          ; preds = %.lr.ph147
  %i.bz = zext i8 %i.bx to i32
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %._crit_edge148.loopexit, %.preheader
  %.6127.lcssa = phi ptr [ %.5126161, %.preheader ], [ %i.bw, %._crit_edge148.loopexit ] ; 2 uses
  %.3110.lcssa = phi i32 [ %.2109163, %.preheader ], [ %i.bv, %._crit_edge148.loopexit ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4164, %.preheader ], [ %i.bz, %._crit_edge148.loopexit ] ; 2 uses
  %i.ca = zext nneg i32 %.5.lcssa to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @nonzero_count, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !9
  %i.cd = sub nsw i32 %.3110.lcssa, %i.cc         ; 2 uses
  %.neg = xor i32 %i.cd, -1
  %i.ce = add i32 %.3110.lcssa, %.neg             ; 2 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = xor i32 %i.cf, %.5.lcssa                ; 2 uses
  %i.ch = sub nsw i32 %i.ce, %i.ar                ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge148, %.lr.ph156
  %.6154 = phi i32 [ %i.cn, %.lr.ph156 ], [ %i.cg, %._crit_edge148 ]
  %.4111153 = phi i32 [ %i.co, %.lr.ph156 ], [ %i.ch, %._crit_edge148 ] ; 2 uses
  %.7128152 = phi ptr [ %i.ck, %.lr.ph156 ], [ %.6127.lcssa, %._crit_edge148 ] ; 2 uses
  %i.cj = shl i32 %.6154, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.7128152, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.7128152, align 1, !tbaa !10
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm            ; 2 uses
  %i.co = add nsw i32 %.4111153, 8                ; 2 uses
  %i.cp = icmp samesign ult i32 %.4111153, -8
  br i1 %i.cp, label %.lr.ph156, label %._crit_edge157, !llvm.loop !101

._crit_edge157:                                   ; preds = %.lr.ph156, %._crit_edge148
  %.7128.lcssa = phi ptr [ %.6127.lcssa, %._crit_edge148 ], [ %i.ck, %.lr.ph156 ] ; 2 uses
  %.4111.lcssa = phi i32 [ %i.ch, %._crit_edge148 ], [ %i.co, %.lr.ph156 ] ; 4 uses
  %.6.lcssa = phi i32 [ %i.cg, %._crit_edge148 ], [ %i.cn, %.lr.ph156 ] ; 2 uses
  %i.cq = shl i32 %i.cd, %i.ar
  %i.cr = lshr i32 %.6.lcssa, %.4111.lcssa
  %i.cs = or i32 %i.cr, %i.cq                     ; 2 uses
  %notmask132 = shl nsw i32 -1, %.4111.lcssa
  %i.ct = xor i32 %notmask132, -1
  %i.cu = and i32 %.6.lcssa, %i.ct                ; 2 uses
  %i.cv = lshr i32 %i.cs, 1
  %i.cw = and i32 %i.cs, 1
  %sext = sub nsw i32 0, %i.cw
  %.3102 = xor i32 %i.cv, %sext
  %i.cx = add i32 %.3102, %.2165                  ; 3 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !102

.loopexit:                                        ; preds = %._crit_edge157, %bb.d, %.lr.ph191, %.preheader137, %.preheader135, %.preheader134
  %.8 = phi ptr [ %.1122.lcssa, %.preheader134 ], [ %.1122.lcssa, %.lr.ph191 ], [ %i.bk, %bb.d ], [ %.1122.lcssa, %.preheader135 ], [ %.1122.lcssa, %.preheader137 ], [ %.7128.lcssa, %._crit_edge157 ] ; 2 uses
  %.4119 = phi i32 [ %.0115, %.preheader134 ], [ %spec.select, %.lr.ph191 ], [ %spec.select, %bb.d ], [ %.0115, %.preheader135 ], [ %.0115, %.preheader137 ], [ %spec.select, %._crit_edge157 ]
  %.5112 = phi i32 [ %.1108.lcssa, %.preheader134 ], [ %.1108.lcssa, %.lr.ph191 ], [ %.1108.lcssa, %bb.d ], [ %.1108.lcssa, %.preheader135 ], [ %.1108.lcssa, %.preheader137 ], [ %.4111.lcssa, %._crit_edge157 ]
  %.7 = phi i32 [ %i.at, %.preheader134 ], [ %i.at, %.lr.ph191 ], [ %.3106, %bb.d ], [ %i.at, %.preheader135 ], [ %i.at, %.preheader137 ], [ %i.cu, %._crit_edge157 ]
  %.3 = phi i32 [ %.0, %.preheader134 ], [ %.0, %.lr.ph191 ], [ %i.br, %bb.d ], [ %.0, %.preheader135 ], [ %.0, %.preheader137 ], [ %i.cx, %._crit_edge157 ]
  %i.da = icmp ugt ptr %.8, %i.f
  br i1 %i.da, label %.sink.split, label %bb.a, !llvm.loop !103

bb.e:                                             ; preds = %bb.a
  %i.db = icmp ult ptr %.0121, %i.f
  br i1 %i.db, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %.loopexit, %bb.e
  %.str.4.sink = phi ptr [ @.str.4, %bb.e ], [ @.str.3, %.loopexit ]
  %.0120.ph = phi i32 [ 0, %bb.e ], [ 1, %.loopexit ]
  tail call void @ffpmsg(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0120 = phi i32 [ 0, %bb.e ], [ %.0120.ph, %.sink.split ]
  ret i32 %.0120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 8}
!15 = !{!"short", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11, !12, !13}
!20 = distinct !{!20, !11, !12, !13}
!21 = distinct !{!21, !11, !13, !12}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12, !13}
!24 = distinct !{!24, !11, !13, !12}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11, !12, !13}
!27 = distinct !{!27, !11, !12, !13}
!28 = distinct !{!28, !11, !13, !12}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !13, !12}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !13, !12}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11, !12, !13}
!39 = distinct !{!39, !11, !12, !13}
!40 = distinct !{!40, !11, !13, !12}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !11, !12, !13}
!43 = distinct !{!43, !11, !13, !12}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11, !12, !13}
!46 = distinct !{!46, !11, !12, !13}
!47 = distinct !{!47, !11, !13, !12}
!48 = distinct !{!48, !11, !12, !13}
!49 = distinct !{!49, !11, !12, !13}
!50 = distinct !{!50, !11, !13, !12}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !12, !13}
!53 = distinct !{!53, !11, !13, !12}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11, !12, !13}
!58 = distinct !{!58, !11, !12, !13}
!59 = distinct !{!59, !11, !13, !12}
!60 = distinct !{!60, !11, !12, !13}
!61 = distinct !{!61, !11, !12, !13}
!62 = distinct !{!62, !11, !13, !12}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11, !12, !13}
!65 = distinct !{!65, !11, !12, !13}
!66 = distinct !{!66, !11, !13, !12}
!67 = distinct !{!67, !11, !12, !13}
!68 = distinct !{!68, !11, !12, !13}
!69 = distinct !{!69, !11, !13, !12}
!70 = distinct !{!70, !11, !12, !13}
!71 = distinct !{!71, !11, !12, !13}
!72 = distinct !{!72, !11, !13, !12}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11, !12, !13}
!78 = distinct !{!78, !11, !13, !12}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11, !12, !13}
!88 = distinct !{!88, !11, !12, !13}
!89 = distinct !{!89, !11, !13, !12}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
end_hunk_2
