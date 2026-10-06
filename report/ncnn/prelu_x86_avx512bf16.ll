Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/prelu_x86_avx512bf16?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn26prelu_bf16s_sse_avx512bf16EPtPKfii(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 4
  br i1 %i.a, label %.thread69.i, label %bb.b

.thread69.i:                                      ; preds = %bb.a
  %i.b = load <4 x float>, ptr %1, align 1        ; 3 uses
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.d = extractelement <4 x float> %i.b, i64 0
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.f = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.h = icmp eq i32 %3, 8
  br i1 %i.h, label %.thread68.i, label %bb.c

.thread68.i:                                      ; preds = %bb.b
  %i.i = load <8 x float>, ptr %1, align 4        ; 2 uses
  %i.j = extractelement <8 x float> %i.i, i64 0
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = shufflevector <4 x float> %i.f, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = icmp eq i32 %3, 16
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load <16 x float>, ptr %1, align 4       ; 2 uses
  %i.n = extractelement <16 x float> %i.m, i64 0
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread68.i, %.thread69.i
  %i.o = phi float [ %i.j, %.thread68.i ], [ %i.e, %bb.c ], [ %i.d, %.thread69.i ]
  %i.p = phi <8 x float> [ %i.i, %.thread68.i ], [ %i.k, %bb.c ], [ %i.c, %.thread69.i ] ; 2 uses
  %i.q = phi <4 x float> [ %i.g, %.thread68.i ], [ %i.g, %bb.c ], [ %i.b, %.thread69.i ]
  %i.r = shufflevector <8 x float> %i.p, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi float [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = phi <8 x float> [ %i.k, %bb.d ], [ %i.p, %bb.e ]
  %i.u = phi <4 x float> [ %i.g, %bb.d ], [ %i.q, %bb.e ]
  %i.v = phi fast <16 x float> [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  %i.w = icmp sgt i32 %2, 15
  br i1 %i.w, label %.lr.ph.i.preheader, label %.preheader71.i

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.x = add nsw i32 %2, -16                      ; 2 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 1                  ; 2 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.z, 536870910
  br label %.lr.ph.i

.preheader71.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i
  %i.ab = and i32 %i.x, 16
  %lcmp.mod.not.not = icmp eq i32 %i.ab, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader71.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader71.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.04573.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.az, %.preheader71.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod37 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ac = load <16 x bfloat>, ptr %.04573.i.epil.init, align 1, !tbaa !11 ; 2 uses
  %i.ad = fpext fast <16 x bfloat> %i.ac to <16 x float>
  %i.ae = fcmp fast olt <16 x bfloat> %i.ac, zeroinitializer
  %i.af = select fast <16 x i1> %i.ae, <16 x float> %i.v, <16 x float> splat (float 1.000000e+00)
  %i.ag = fmul fast <16 x float> %i.af, %i.ad
  %i.ah = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ag)
  store <16 x bfloat> %i.ah, ptr %.04573.i.epil.init, align 1, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.04573.i.epil.init, i64 32
  br label %.preheader71.loopexit.i

.preheader71.loopexit.i:                          ; preds = %.preheader71.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa35 = phi ptr [ %i.az, %.preheader71.loopexit.i.unr-lcssa ], [ %i.ai, %.lr.ph.i.epil.preheader ]
  %i.aj = and i32 %2, 2147483632
  br label %.preheader71.i

.preheader71.i:                                   ; preds = %.preheader71.loopexit.i, %bb.f
  %.046.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.aj, %.preheader71.loopexit.i ] ; 3 uses
  %.045.lcssa.i = phi ptr [ %0, %bb.f ], [ %.lcssa35, %.preheader71.loopexit.i ] ; 2 uses
  %i.ak = or disjoint i32 %.046.lcssa.i, 7
  %i.al = icmp slt i32 %i.ak, %2
  br i1 %i.al, label %.lr.ph77.i, label %.preheader70.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.04573.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = load <16 x bfloat>, ptr %.04573.i, align 1, !tbaa !11 ; 2 uses
  %i.an = fpext fast <16 x bfloat> %i.am to <16 x float>
  %i.ao = fcmp fast olt <16 x bfloat> %i.am, zeroinitializer
  %i.ap = select fast <16 x i1> %i.ao, <16 x float> %i.v, <16 x float> splat (float 1.000000e+00)
  %i.aq = fmul fast <16 x float> %i.ap, %i.an
  %i.ar = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aq)
  store <16 x bfloat> %i.ar, ptr %.04573.i, align 1, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %.04573.i, i64 32 ; 2 uses
  %i.at = load <16 x bfloat>, ptr %i.as, align 1, !tbaa !11 ; 2 uses
  %i.au = fpext fast <16 x bfloat> %i.at to <16 x float>
  %i.av = fcmp fast olt <16 x bfloat> %i.at, zeroinitializer
  %i.aw = select fast <16 x i1> %i.av, <16 x float> %i.v, <16 x float> splat (float 1.000000e+00)
  %i.ax = fmul fast <16 x float> %i.aw, %i.au
  %i.ay = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ax)
  store <16 x bfloat> %i.ay, ptr %i.as, align 1, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.04573.i, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader71.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !24

.preheader70.i:                                   ; preds = %.lr.ph77.i, %.preheader71.i
  %.147.lcssa.i = phi i32 [ %.046.lcssa.i, %.preheader71.i ], [ %i.bj, %.lr.ph77.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.045.lcssa.i, %.preheader71.i ], [ %i.bi, %.lr.ph77.i ] ; 2 uses
  %i.ba = or disjoint i32 %.147.lcssa.i, 3
  %i.bb = icmp slt i32 %i.ba, %2
  br i1 %i.bb, label %.lr.ph82.i, label %.preheader.i

.lr.ph77.i:                                       ; preds = %.preheader71.i, %.lr.ph77.i
  %.176.i = phi ptr [ %i.bi, %.lr.ph77.i ], [ %.045.lcssa.i, %.preheader71.i ] ; 3 uses
  %.14775.i = phi i32 [ %i.bj, %.lr.ph77.i ], [ %.046.lcssa.i, %.preheader71.i ]
  %i.bc = load <8 x bfloat>, ptr %.176.i, align 1, !tbaa !11 ; 2 uses
  %i.bd = fpext fast <8 x bfloat> %i.bc to <8 x float>
  %i.be = fcmp fast olt <8 x bfloat> %i.bc, zeroinitializer
  %i.bf = select ninf <8 x i1> %i.be, <8 x float> %i.t, <8 x float> splat (float 1.000000e+00)
  %i.bg = fmul reassoc arcp contract afn <8 x float> %i.bf, %i.bd
  %i.bh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bg)
  store <8 x bfloat> %i.bh, ptr %.176.i, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %.176.i, i64 16 ; 2 uses
  %i.bj = add nuw nsw i32 %.14775.i, 8            ; 3 uses
  %i.bk = or disjoint i32 %i.bj, 7
  %i.bl = icmp slt i32 %i.bk, %2
  br i1 %i.bl, label %.lr.ph77.i, label %.preheader70.i, !llvm.loop !25

.preheader.i:                                     ; preds = %.lr.ph82.i, %.preheader70.i
  %.248.lcssa.i = phi i32 [ %.147.lcssa.i, %.preheader70.i ], [ %i.da, %.lr.ph82.i ] ; 5 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader70.i ], [ %i.cz, %.lr.ph82.i ] ; 5 uses
  %i.bm = icmp slt i32 %.248.lcssa.i, %2
  br i1 %i.bm, label %iter.check, label %_ZN4ncnnL15prelu_bf16s_sseEPtPKfii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.bn = xor i32 %.248.lcssa.i, -1
  %i.bo = add i32 %2, %i.bn                       ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bo, 7
  br i1 %min.iters.check, label %.lr.ph87.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i32 %i.bo, 63
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bq, 56
  %n.vec = and i64 %i.bq, 8589934528              ; 5 uses
  %i.bs = shl nuw nsw i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %.2.lcssa.i, i64 %i.bs
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = add i32 %.248.lcssa.i, %i.bu
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.bw ; 5 uses
  %4 = getelementptr i8, ptr %next.gep, i64 32    ; 2 uses
  %5 = getelementptr i8, ptr %next.gep, i64 64    ; 2 uses
  %next.gep.a = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !13
  %wide.load21 = load <16 x i16>, ptr %4, align 2, !tbaa !13
  %wide.load22 = load <16 x i16>, ptr %5, align 2, !tbaa !13
  %wide.load23 = load <16 x i16>, ptr %next.gep.a, align 2, !tbaa !13
  %6 = zext <16 x i16> %wide.load to <16 x i32>
  %7 = zext <16 x i16> %wide.load21 to <16 x i32>
  %8 = zext <16 x i16> %wide.load22 to <16 x i32>
  %9 = zext <16 x i16> %wide.load23 to <16 x i32>
  %10 = shl nuw <16 x i32> %6, splat (i32 16)
  %11 = shl nuw <16 x i32> %7, splat (i32 16)
  %12 = shl nuw <16 x i32> %8, splat (i32 16)
  %13 = shl nuw <16 x i32> %9, splat (i32 16)
  %14 = bitcast <16 x i32> %10 to <16 x float>    ; 3 uses
  %15 = bitcast <16 x i32> %11 to <16 x float>    ; 3 uses
  %16 = bitcast <16 x i32> %12 to <16 x float>    ; 3 uses
  %17 = bitcast <16 x i32> %13 to <16 x float>    ; 3 uses
  %18 = fcmp fast olt <16 x float> %14, zeroinitializer
  %19 = fcmp fast olt <16 x float> %15, zeroinitializer
  %20 = fcmp fast olt <16 x float> %16, zeroinitializer
  %21 = fcmp fast olt <16 x float> %17, zeroinitializer
  %22 = fmul fast <16 x float> %broadcast.splat, %14
  %23 = fmul fast <16 x float> %broadcast.splat, %15
  %24 = fmul fast <16 x float> %broadcast.splat, %16
  %25 = fmul fast <16 x float> %broadcast.splat, %17
  %26 = select nsz <16 x i1> %18, <16 x float> %22, <16 x float> %14
  %27 = select nsz <16 x i1> %19, <16 x float> %23, <16 x float> %15
  %28 = select nsz <16 x i1> %20, <16 x float> %24, <16 x float> %16
  %29 = select nsz <16 x i1> %21, <16 x float> %25, <16 x float> %17
  %30 = bitcast <16 x float> %26 to <16 x i32>
  %31 = bitcast <16 x float> %27 to <16 x i32>
  %32 = bitcast <16 x float> %28 to <16 x i32>
  %33 = bitcast <16 x float> %29 to <16 x i32>
  %34 = lshr <16 x i32> %30, splat (i32 16)
  %35 = lshr <16 x i32> %31, splat (i32 16)
  %36 = lshr <16 x i32> %32, splat (i32 16)
  %37 = lshr <16 x i32> %33, splat (i32 16)
  %38 = trunc nuw <16 x i32> %34 to <16 x i16>
  %39 = trunc nuw <16 x i32> %35 to <16 x i16>
  %40 = trunc nuw <16 x i32> %36 to <16 x i16>
  %41 = trunc nuw <16 x i32> %37 to <16 x i16>
  store <16 x i16> %38, ptr %next.gep, align 2, !tbaa !13
  store <16 x i16> %39, ptr %4, align 2, !tbaa !13
  store <16 x i16> %40, ptr %5, align 2, !tbaa !13
  store <16 x i16> %41, ptr %next.gep.a, align 2, !tbaa !13
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15prelu_bf16s_sseEPtPKfii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph87.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.bq, 8589934584            ; 4 uses
  %i.by = shl nuw nsw i64 %n.vec22, 1
  %i.bz = getelementptr i8, ptr %.2.lcssa.i, i64 %i.by
  %i.ca = trunc i64 %n.vec22 to i32
  %i.cb = add i32 %.248.lcssa.i, %i.ca
  %broadcast.splatinsert23 = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat24 = shufflevector <8 x float> %broadcast.splatinsert23, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = shl i64 %index25, 1
  %next.gep26 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cc ; 2 uses
  %wide.load27 = load <8 x i16>, ptr %next.gep26, align 2, !tbaa !13
  %i.cd = zext <8 x i16> %wide.load27 to <8 x i32>
  %i.ce = shl nuw <8 x i32> %i.cd, splat (i32 16)
  %i.cf = bitcast <8 x i32> %i.ce to <8 x float>  ; 3 uses
  %i.cg = fcmp fast olt <8 x float> %i.cf, zeroinitializer
  %i.ch = fmul fast <8 x float> %broadcast.splat24, %i.cf
  %i.ci = select nsz <8 x i1> %i.cg, <8 x float> %i.ch, <8 x float> %i.cf
  %i.cj = bitcast <8 x float> %i.ci to <8 x i32>
  %i.ck = lshr <8 x i32> %i.cj, splat (i32 16)
  %i.cl = trunc nuw <8 x i32> %i.ck to <8 x i16>
  store <8 x i16> %i.cl, ptr %next.gep26, align 2, !tbaa !13
  %index.next28 = add nuw i64 %index25, 8         ; 2 uses
  %i.cm = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.bq, %n.vec22
  br i1 %cmp.n29, label %_ZN4ncnnL15prelu_bf16s_sseEPtPKfii.exit, label %.lr.ph87.i.preheader

.lr.ph87.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.386.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %.34985.i.ph = phi i32 [ %.248.lcssa.i, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph87.i

.lr.ph82.i:                                       ; preds = %.preheader70.i, %.lr.ph82.i
  %.281.i = phi ptr [ %i.cz, %.lr.ph82.i ], [ %.1.lcssa.i, %.preheader70.i ] ; 3 uses
  %.24880.i = phi i32 [ %i.da, %.lr.ph82.i ], [ %.147.lcssa.i, %.preheader70.i ]
  %i.cn = load i64, ptr %.281.i, align 1, !tbaa !11
  %i.co = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %i.cp = bitcast <2 x i64> %i.co to <8 x i16>
  %i.cq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cr = bitcast <8 x i16> %i.cq to <4 x float>  ; 3 uses
  %i.cs = fmul fast <4 x float> %i.u, %i.cr
  %i.ct = fcmp fast olt <4 x float> %i.cr, zeroinitializer
  %i.cu = select <4 x i1> %i.ct, <4 x float> %i.cs, <4 x float> %i.cr
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cv)
  %i.cx = bitcast <8 x bfloat> %i.cw to <2 x i64>
  %i.cy = extractelement <2 x i64> %i.cx, i64 0
  store i64 %i.cy, ptr %.281.i, align 1, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.281.i, i64 8 ; 2 uses
  %i.da = add nuw nsw i32 %.24880.i, 4            ; 3 uses
  %i.db = or disjoint i32 %i.da, 3
  %i.dc = icmp slt i32 %i.db, %2
  br i1 %i.dc, label %.lr.ph82.i, label %.preheader.i, !llvm.loop !28

.lr.ph87.i:                                       ; preds = %.lr.ph87.i.preheader, %.lr.ph87.i
  %.386.i = phi ptr [ %i.dm, %.lr.ph87.i ], [ %.386.i.ph, %.lr.ph87.i.preheader ] ; 3 uses
  %.34985.i = phi i32 [ %i.dn, %.lr.ph87.i ], [ %.34985.i.ph, %.lr.ph87.i.preheader ]
  %i.dd = load i16, ptr %.386.i, align 2, !tbaa !13
  %i.de = zext i16 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 16
  %i.dg = bitcast i32 %i.df to float              ; 3 uses
  %i.dh = fcmp fast olt float %i.dg, 0.000000e+00
  %i.di = fmul fast float %i.s, %i.dg
  %spec.select.i = select nsz i1 %i.dh, float %i.di, float %i.dg
  %i.dj = bitcast float %spec.select.i to i32
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc nuw i32 %i.dk to i16
  store i16 %i.dl, ptr %.386.i, align 2, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.386.i, i64 2
  %i.dn = add nuw nsw i32 %.34985.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %2
  br i1 %exitcond.not.i, label %_ZN4ncnnL15prelu_bf16s_sseEPtPKfii.exit, label %.lr.ph87.i, !llvm.loop !29

_ZN4ncnnL15prelu_bf16s_sseEPtPKfii.exit:          ; preds = %.lr.ph87.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn38prelu_bf16s_per_element_sse_avx512bf16EPtPKfii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !18
  store ptr %1, ptr %i.b, align 8, !tbaa !20
  store i32 %2, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.g = sdiv i32 %2, 16
  store i32 %i.g, ptr %i.d, align 4, !tbaa !21
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL27prelu_bf16s_per_element_sseEPtPKfii.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.h = load i32, ptr %i.d, align 4, !tbaa !21
  %i.i = shl nsw i32 %i.h, 4
  %i.j = load i32, ptr %i.e, align 4, !tbaa !21
  %i.k = add nsw i32 %i.j, %i.i                   ; 2 uses
  store i32 %i.k, ptr %i.e, align 4, !tbaa !21
  %i.l = sub nsw i32 %2, %i.k
  %i.m = sdiv i32 %i.l, 8
  store i32 %i.m, ptr %i.d, align 4, !tbaa !21
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL27prelu_bf16s_per_element_sseEPtPKfii.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.n = load i32, ptr %i.d, align 4, !tbaa !21
  %i.o = shl nsw i32 %i.n, 3
  %i.p = load i32, ptr %i.e, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, %i.o                   ; 2 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !21
  %i.r = sub nsw i32 %2, %i.q
  %i.s = sdiv i32 %i.r, 4
  store i32 %i.s, ptr %i.d, align 4, !tbaa !21
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL27prelu_bf16s_per_element_sseEPtPKfii.omp_outlined.2, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !21
  %i.u = shl nsw i32 %i.t, 2
  %i.v = load i32, ptr %i.e, align 4, !tbaa !21
  %i.w = add nsw i32 %i.v, %i.u
  store i32 %i.w, ptr %i.e, align 4, !tbaa !21
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL27prelu_bf16s_per_element_sseEPtPKfii.omp_outlined.3, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27prelu_bf16s_per_element_sseEPtPKfii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.aa, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !21
  %i.m = shl nsw i32 %.025, 4
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28prelu_bf16s_single_slope_sseEPtfii.omp_outlined.6:bb.a
  br i1 %i.u, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.w = add i32 %i.m, %i.e
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nsw i64 %i.x, 1
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = sub i32 %i.l, %i.m
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.x, %i.ab
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  %bound0 = icmp ult ptr %5, %i.af
  %bound1 = icmp ult ptr %i.z, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i32 %i.r, 16
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i32 %i.r, 12
  %n.vec = and i32 %i.r, -16                      ; 4 uses
  %i.ah = add i32 %i.m, %n.vec
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %5, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.ai = sext i32 %.reass to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ai ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.aj, align 2, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.ak = zext <16 x i16> %wide.load to <16 x i32>
  %i.al = shl nuw <16 x i32> %i.ak, splat (i32 16)
  %i.am = bitcast <16 x i32> %i.al to <16 x float> ; 2 uses
  %i.an = fcmp fast olt <16 x float> %i.am, zeroinitializer ; 2 uses
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %broadcast.splat, <16 x i1> %i.an, <16 x float> poison), !tbaa !10, !alias.scope !39, !noalias !38
  %i.ao = fmul fast <16 x float> %wide.masked.gather, %i.am
  %i.ap = bitcast <16 x float> %i.ao to <16 x i32>
  %i.aq = lshr <16 x i32> %i.ap, splat (i32 16)
  %i.ar = trunc nuw <16 x i32> %i.aq to <16 x i16>
  %predphi = select <16 x i1> %i.an, <16 x i16> %i.ar, <16 x i16> %wide.load
  store <16 x i16> %predphi, ptr %i.aj, align 2, !tbaa !13, !alias.scope !38
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i32 %i.r, -4                     ; 3 uses
  %i.at = add i32 %i.m, %n.vec35
  %broadcast.splatinsert36 = insertelement <4 x ptr> poison, ptr %5, i64 0
  %broadcast.splat37 = shufflevector <4 x ptr> %broadcast.splatinsert36, <4 x ptr> poison, <4 x i32> zeroinitializer
  %invariant.op45 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %.reass46 = add i32 %index38, %invariant.op45
  %i.au = sext i32 %.reass46 to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.au ; 2 uses
  %wide.load39 = load <4 x i16>, ptr %i.av, align 2, !tbaa !13, !alias.scope !38 ; 2 uses
  %i.aw = zext <4 x i16> %wide.load39 to <4 x i32>
  %i.ax = shl nuw <4 x i32> %i.aw, splat (i32 16)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 2 uses
  %i.az = fcmp fast olt <4 x float> %i.ay, zeroinitializer ; 2 uses
  %wide.masked.gather40 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %broadcast.splat37, <4 x i1> %i.az, <4 x float> poison), !tbaa !10, !alias.scope !39, !noalias !38
  %i.ba = fmul fast <4 x float> %wide.masked.gather40, %i.ay
  %i.bb = bitcast <4 x float> %i.ba to <4 x i32>
  %i.bc = lshr <4 x i32> %i.bb, splat (i32 16)
  %i.bd = trunc nuw <4 x i32> %i.bc to <4 x i16>
  %predphi41 = select <4 x i1> %i.az, <4 x i16> %i.bd, <4 x i16> %wide.load39
  store <4 x i16> %predphi41, ptr %i.av, align 2, !tbaa !13, !alias.scope !38
  %index.next42 = add nuw i32 %index38, 4         ; 2 uses
  %i.be = icmp eq i32 %index.next42, %n.vec35
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i32 %i.r, %n.vec35
  br i1 %cmp.n43, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02225.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.m, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.d
  %.02225 = phi i32 [ %i.bs, %bb.d ], [ %.02225.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bf = add i32 %.02225, %i.e
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !13 ; 2 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = shl nuw i32 %i.bj, 16
  %i.bl = bitcast i32 %i.bk to float              ; 2 uses
  %i.bm = fcmp fast olt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vec.epilog.scalar.ph
  %i.bn = load float, ptr %5, align 4, !tbaa !10
  %i.bo = fmul fast float %i.bn, %i.bl
  %i.bp = bitcast float %i.bo to i32
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc nuw i32 %i.bq to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %vec.epilog.scalar.ph
  %.0 = phi i16 [ %i.br, %bb.c ], [ %i.bi, %vec.epilog.scalar.ph ]
  store i16 %.0, ptr %i.bh, align 2, !tbaa !13
  %i.bs = add nuw i32 %.02225, 1
  %exitcond.not = icmp eq i32 %.02225, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 short", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 float", !16, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{i64 2, i64 -1, i64 -1, i1 true}
!23 = !{!22}
!24 = distinct !{!24, !30}
!25 = distinct !{!25, !30}
!26 = distinct !{!26, !30, !14, !15}
!27 = distinct !{!27, !30, !14, !15}
!28 = distinct !{!28, !30}
!29 = distinct !{!29, !30, !15, !14}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"branch_weights", i32 8, i32 56}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !14, !15}
!36 = distinct !{!36, !14, !15}
!37 = distinct !{!37, !14}
!38 = !{!33}
!39 = !{!34}
!40 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
