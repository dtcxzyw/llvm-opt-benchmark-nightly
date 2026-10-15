Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/hull?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2Hull = type { [8 x %struct.b2Vec2], i32 }
%struct.b2Vec2 = type { float, float }

; Function Attrs: nounwind uwtable
define void @b2ComputeHull(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Hull) align 4 captures(none) initializes((0, 68)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [8 x %struct.b2Vec2], align 16      ; 23 uses
  %4 = alloca [6 x %struct.b2Vec2], align 16      ; 4 uses
  %5 = alloca [6 x %struct.b2Vec2], align 16      ; 4 uses
  %6 = alloca %struct.b2Hull, align 4             ; 5 uses
  %7 = alloca %struct.b2Hull, align 4             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = add i32 %2, -9
  %or.cond = icmp ult i32 %i.b, -6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br i1 %or.cond, label %bb.o, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.c = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.d = fmul float %i.c, 5.000000e-03            ; 5 uses
  %i.e = fmul float %i.d, 1.600000e+01
  %i.f = fmul float %i.d, %i.e                    ; 28 uses
  %i.g = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.h = fcmp ogt <2 x float> %i.g, splat (float f0x7F7FFFFF)
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.g ; 3 uses
  %i.j = fcmp olt <2 x float> %i.g, splat (float f0xFF7FFFFF)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %i.g ; 3 uses
  store <2 x float> %i.g, ptr %3, align 16, !tbaa !9
  %exitcond276.not = icmp eq i32 %2, 1
  br i1 %exitcond276.not, label %._crit_edge, label %.lr.ph232.1

._crit_edge:                                      ; preds = %.critedge.loopexit.7, %.lr.ph.6.7, %.lr.ph.5.7, %.lr.ph.4.7, %.lr.ph.3.7, %.lr.ph.2.7, %.lr.ph.1.7, %.lr.ph232.7, %.loopexit.6, %.loopexit.5, %.loopexit.4, %.loopexit.3, %.loopexit.2, %.loopexit.1, %.lr.ph232.preheader
  %.1128.lcssa = phi i32 [ 1, %.lr.ph232.preheader ], [ %.1128.1, %.loopexit.1 ], [ %.1128.2, %.loopexit.2 ], [ %.1128.3, %.loopexit.3 ], [ %.1128.4, %.loopexit.4 ], [ %.1128.5, %.loopexit.5 ], [ %.1128.6, %.loopexit.6 ], [ %i.gv, %.critedge.loopexit.7 ], [ %.1128.6, %.lr.ph.6.7 ], [ %.1128.6, %.lr.ph.5.7 ], [ %.1128.6, %.lr.ph.4.7 ], [ %.1128.6, %.lr.ph.3.7 ], [ %.1128.6, %.lr.ph.2.7 ], [ %.1128.6, %.lr.ph.1.7 ], [ %.1128.6, %.lr.ph232.7 ] ; 4 uses
  %.lcssa359 = phi <2 x float> [ %i.i, %.lr.ph232.preheader ], [ %i.p, %.loopexit.1 ], [ %i.aa, %.loopexit.2 ], [ %i.as, %.loopexit.3 ], [ %i.bp, %.loopexit.4 ], [ %i.cr, %.loopexit.5 ], [ %i.dy, %.loopexit.6 ], [ %i.fk, %.lr.ph232.7 ], [ %i.fk, %.lr.ph.1.7 ], [ %i.fk, %.lr.ph.2.7 ], [ %i.fk, %.lr.ph.3.7 ], [ %i.fk, %.lr.ph.4.7 ], [ %i.fk, %.lr.ph.5.7 ], [ %i.fk, %.lr.ph.6.7 ], [ %i.fk, %.critedge.loopexit.7 ]
  %.lcssa358 = phi <2 x float> [ %i.k, %.lr.ph232.preheader ], [ %i.r, %.loopexit.1 ], [ %i.ac, %.loopexit.2 ], [ %i.au, %.loopexit.3 ], [ %i.br, %.loopexit.4 ], [ %i.ct, %.loopexit.5 ], [ %i.ea, %.loopexit.6 ], [ %i.fm, %.lr.ph232.7 ], [ %i.fm, %.lr.ph.1.7 ], [ %i.fm, %.lr.ph.2.7 ], [ %i.fm, %.lr.ph.3.7 ], [ %i.fm, %.lr.ph.4.7 ], [ %i.fm, %.lr.ph.5.7 ], [ %i.fm, %.lr.ph.6.7 ], [ %i.fm, %.critedge.loopexit.7 ]
  %i.l = icmp slt i32 %.1128.lcssa, 3
  br i1 %i.l, label %bb.n, label %.new

.lr.ph232.1:                                      ; preds = %.lr.ph232.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 6 uses
  %i.o = fcmp olt <2 x float> %i.i, %i.n
  %i.p = select <2 x i1> %i.o, <2 x float> %i.i, <2 x float> %i.n ; 3 uses
  %i.q = fcmp ogt <2 x float> %i.k, %i.n
  %i.r = select <2 x i1> %i.q, <2 x float> %i.k, <2 x float> %i.n ; 3 uses
  %.sroa.079.0.copyload.1360 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.s = fsub <2 x float> %.sroa.079.0.copyload.1360, %i.n ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp uge float %i.u, %i.f
  br i1 %i.v, label %.critedge.loopexit.1, label %.loopexit.1

.critedge.loopexit.1:                             ; preds = %.lr.ph232.1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.n, ptr %i.w, align 8, !tbaa !9
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph232.1, %.critedge.loopexit.1
  %.1128.1 = phi i32 [ 2, %.critedge.loopexit.1 ], [ 1, %.lr.ph232.1 ] ; 5 uses
  %exitcond276.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond276.not.1, label %._crit_edge, label %.lr.ph232.2

.lr.ph232.2:                                      ; preds = %.loopexit.1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 7 uses
  %i.z = fcmp olt <2 x float> %i.p, %i.y
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.p, <2 x float> %i.y ; 3 uses
  %i.ab = fcmp ogt <2 x float> %i.r, %i.y
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.r, <2 x float> %i.y ; 3 uses
  %.sroa.079.0.copyload.2363 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.ad = fsub <2 x float> %.sroa.079.0.copyload.2363, %i.y ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae)
  %i.ag = fcmp uge float %i.af, %i.f
  br i1 %i.ag, label %.lr.ph.1.2, label %.loopexit.2

.lr.ph.1.2:                                       ; preds = %.lr.ph232.2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.2 = load <2 x float>, ptr %i.ah, align 4, !tbaa !9
  %i.ai = fsub <2 x float> %.sroa.079.0.copyload.1.2, %i.y ; 2 uses
  %i.aj = fmul <2 x float> %i.ai, %i.ai
  %i.ak = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aj)
  %i.al = fcmp uge float %i.ak, %i.f
  br i1 %i.al, label %.critedge.loopexit.2, label %.loopexit.2

.critedge.loopexit.2:                             ; preds = %.lr.ph.1.2
  %i.am = add nuw nsw i32 %.1128.1, 1
  %i.an = zext nneg i32 %.1128.1 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.an
  store <2 x float> %i.y, ptr %i.ao, align 8, !tbaa !9
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph232.2, %.lr.ph.1.2, %.critedge.loopexit.2
  %.1128.2 = phi i32 [ %i.am, %.critedge.loopexit.2 ], [ %.1128.1, %.lr.ph.1.2 ], [ %.1128.1, %.lr.ph232.2 ] ; 6 uses
  %exitcond276.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond276.not.2, label %._crit_edge, label %.lr.ph232.3

.lr.ph232.3:                                      ; preds = %.loopexit.2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 8 uses
  %i.ar = fcmp olt <2 x float> %i.aa, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.aa, <2 x float> %i.aq ; 3 uses
  %i.at = fcmp ogt <2 x float> %i.ac, %i.aq
  %i.au = select <2 x i1> %i.at, <2 x float> %i.ac, <2 x float> %i.aq ; 3 uses
  %.sroa.079.0.copyload.3366 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.av = fsub <2 x float> %.sroa.079.0.copyload.3366, %i.aq ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw)
  %i.ay = fcmp uge float %i.ax, %i.f
  br i1 %i.ay, label %.lr.ph.1.3, label %.loopexit.3

.lr.ph.1.3:                                       ; preds = %.lr.ph232.3
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.3 = load <2 x float>, ptr %i.az, align 4, !tbaa !9
  %i.ba = fsub <2 x float> %.sroa.079.0.copyload.1.3, %i.aq ; 2 uses
  %i.bb = fmul <2 x float> %i.ba, %i.ba
  %i.bc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bb)
  %i.bd = fcmp uge float %i.bc, %i.f
  br i1 %i.bd, label %.lr.ph.2.3, label %.loopexit.3

.lr.ph.2.3:                                       ; preds = %.lr.ph.1.3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.3 = load <2 x float>, ptr %i.be, align 4, !tbaa !9
  %i.bf = fsub <2 x float> %.sroa.079.0.copyload.2.3, %i.aq ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bg)
  %i.bi = fcmp uge float %i.bh, %i.f
  br i1 %i.bi, label %.critedge.loopexit.3, label %.loopexit.3

.critedge.loopexit.3:                             ; preds = %.lr.ph.2.3
  %i.bj = add nsw i32 %.1128.2, 1
  %i.bk = sext i32 %.1128.2 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bk
  store <2 x float> %i.aq, ptr %i.bl, align 8, !tbaa !9
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph232.3, %.lr.ph.1.3, %.lr.ph.2.3, %.critedge.loopexit.3
  %.1128.3 = phi i32 [ %i.bj, %.critedge.loopexit.3 ], [ %.1128.2, %.lr.ph.2.3 ], [ %.1128.2, %.lr.ph.1.3 ], [ %.1128.2, %.lr.ph232.3 ] ; 7 uses
  %exitcond276.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond276.not.3, label %._crit_edge, label %.lr.ph232.4

.lr.ph232.4:                                      ; preds = %.loopexit.3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load <2 x float>, ptr %i.bm, align 4    ; 9 uses
  %i.bo = fcmp olt <2 x float> %i.as, %i.bn
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.as, <2 x float> %i.bn ; 3 uses
  %i.bq = fcmp ogt <2 x float> %i.au, %i.bn
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.au, <2 x float> %i.bn ; 3 uses
  %.sroa.079.0.copyload.4369 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.bs = fsub <2 x float> %.sroa.079.0.copyload.4369, %i.bn ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt)
  %i.bv = fcmp uge float %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.1.4, label %.loopexit.4

.lr.ph.1.4:                                       ; preds = %.lr.ph232.4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.4 = load <2 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bx = fsub <2 x float> %.sroa.079.0.copyload.1.4, %i.bn ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by)
  %i.ca = fcmp uge float %i.bz, %i.f
  br i1 %i.ca, label %.lr.ph.2.4, label %.loopexit.4

.lr.ph.2.4:                                       ; preds = %.lr.ph.1.4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.4 = load <2 x float>, ptr %i.cb, align 4, !tbaa !9
  %i.cc = fsub <2 x float> %.sroa.079.0.copyload.2.4, %i.bn ; 2 uses
  %i.cd = fmul <2 x float> %i.cc, %i.cc
  %i.ce = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cd)
  %i.cf = fcmp uge float %i.ce, %i.f
  br i1 %i.cf, label %.lr.ph.3.4, label %.loopexit.4

.lr.ph.3.4:                                       ; preds = %.lr.ph.2.4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.4 = load <2 x float>, ptr %i.cg, align 4, !tbaa !9
  %i.ch = fsub <2 x float> %.sroa.079.0.copyload.3.4, %i.bn ; 2 uses
  %i.ci = fmul <2 x float> %i.ch, %i.ch
  %i.cj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ci)
  %i.ck = fcmp uge float %i.cj, %i.f
  br i1 %i.ck, label %.critedge.loopexit.4, label %.loopexit.4

.critedge.loopexit.4:                             ; preds = %.lr.ph.3.4
  %i.cl = add nsw i32 %.1128.3, 1
  %i.cm = sext i32 %.1128.3 to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cm
  store <2 x float> %i.bn, ptr %i.cn, align 8, !tbaa !9
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph232.4, %.lr.ph.1.4, %.lr.ph.2.4, %.lr.ph.3.4, %.critedge.loopexit.4
  %.1128.4 = phi i32 [ %i.cl, %.critedge.loopexit.4 ], [ %.1128.3, %.lr.ph.3.4 ], [ %.1128.3, %.lr.ph.2.4 ], [ %.1128.3, %.lr.ph.1.4 ], [ %.1128.3, %.lr.ph232.4 ] ; 8 uses
  %exitcond276.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond276.not.4, label %._crit_edge, label %.lr.ph232.5

.lr.ph232.5:                                      ; preds = %.loopexit.4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cp = load <2 x float>, ptr %i.co, align 4    ; 10 uses
  %i.cq = fcmp olt <2 x float> %i.bp, %i.cp
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.bp, <2 x float> %i.cp ; 3 uses
  %i.cs = fcmp ogt <2 x float> %i.br, %i.cp
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.br, <2 x float> %i.cp ; 3 uses
  %.sroa.079.0.copyload.5372 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.cu = fsub <2 x float> %.sroa.079.0.copyload.5372, %i.cp ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cu
  %i.cw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cv)
  %i.cx = fcmp uge float %i.cw, %i.f
  br i1 %i.cx, label %.lr.ph.1.5, label %.loopexit.5

.lr.ph.1.5:                                       ; preds = %.lr.ph232.5
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.5 = load <2 x float>, ptr %i.cy, align 4, !tbaa !9
  %i.cz = fsub <2 x float> %.sroa.079.0.copyload.1.5, %i.cp ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz
  %i.db = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da)
  %i.dc = fcmp uge float %i.db, %i.f
  br i1 %i.dc, label %.lr.ph.2.5, label %.loopexit.5

.lr.ph.2.5:                                       ; preds = %.lr.ph.1.5
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
begin_hunk_1_@b2ComputeHull:bb.a
  %i.fg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ff
  store <2 x float> %i.dw, ptr %i.fg, align 8, !tbaa !9
  br label %.loopexit.6

.loopexit.6:                                      ; preds = %.lr.ph232.6, %.lr.ph.1.6, %.lr.ph.2.6, %.lr.ph.3.6, %.lr.ph.4.6, %.lr.ph.5.6, %.critedge.loopexit.6
  %.1128.6 = phi i32 [ %i.fe, %.critedge.loopexit.6 ], [ %.1128.5, %.lr.ph.5.6 ], [ %.1128.5, %.lr.ph.4.6 ], [ %.1128.5, %.lr.ph.3.6 ], [ %.1128.5, %.lr.ph.2.6 ], [ %.1128.5, %.lr.ph.1.6 ], [ %.1128.5, %.lr.ph232.6 ] ; 10 uses
  %exitcond276.not.6 = icmp eq i32 %2, 7
  br i1 %exitcond276.not.6, label %._crit_edge, label %.lr.ph232.7

.lr.ph232.7:                                      ; preds = %.loopexit.6
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fi = load <2 x float>, ptr %i.fh, align 4    ; 12 uses
  %i.fj = fcmp olt <2 x float> %i.dy, %i.fi
  %i.fk = select <2 x i1> %i.fj, <2 x float> %i.dy, <2 x float> %i.fi ; 8 uses
  %i.fl = fcmp ogt <2 x float> %i.ea, %i.fi
  %i.fm = select <2 x i1> %i.fl, <2 x float> %i.ea, <2 x float> %i.fi ; 8 uses
  %.sroa.079.0.copyload.7 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.fn = fsub <2 x float> %.sroa.079.0.copyload.7, %i.fi ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.fn
  %i.fp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fo)
  %i.fq = fcmp uge float %i.fp, %i.f
  br i1 %i.fq, label %.lr.ph.1.7, label %._crit_edge

.lr.ph.1.7:                                       ; preds = %.lr.ph232.7
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.7 = load <2 x float>, ptr %i.fr, align 4, !tbaa !9
  %i.fs = fsub <2 x float> %.sroa.079.0.copyload.1.7, %i.fi ; 2 uses
  %i.ft = fmul <2 x float> %i.fs, %i.fs
  %i.fu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ft)
  %i.fv = fcmp uge float %i.fu, %i.f
  br i1 %i.fv, label %.lr.ph.2.7, label %._crit_edge

.lr.ph.2.7:                                       ; preds = %.lr.ph.1.7
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.7 = load <2 x float>, ptr %i.fw, align 4, !tbaa !9
  %i.fx = fsub <2 x float> %.sroa.079.0.copyload.2.7, %i.fi ; 2 uses
  %i.fy = fmul <2 x float> %i.fx, %i.fx
  %i.fz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fy)
  %i.ga = fcmp uge float %i.fz, %i.f
  br i1 %i.ga, label %.lr.ph.3.7, label %._crit_edge

.lr.ph.3.7:                                       ; preds = %.lr.ph.2.7
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.7 = load <2 x float>, ptr %i.gb, align 4, !tbaa !9
  %i.gc = fsub <2 x float> %.sroa.079.0.copyload.3.7, %i.fi ; 2 uses
  %i.gd = fmul <2 x float> %i.gc, %i.gc
  %i.ge = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gd)
  %i.gf = fcmp uge float %i.ge, %i.f
  br i1 %i.gf, label %.lr.ph.4.7, label %._crit_edge

.lr.ph.4.7:                                       ; preds = %.lr.ph.3.7
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.079.0.copyload.4.7 = load <2 x float>, ptr %i.gg, align 4, !tbaa !9
  %i.gh = fsub <2 x float> %.sroa.079.0.copyload.4.7, %i.fi ; 2 uses
  %i.gi = fmul <2 x float> %i.gh, %i.gh
  %i.gj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gi)
  %i.gk = fcmp uge float %i.gj, %i.f
  br i1 %i.gk, label %.lr.ph.5.7, label %._crit_edge

.lr.ph.5.7:                                       ; preds = %.lr.ph.4.7
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.079.0.copyload.5.7 = load <2 x float>, ptr %i.gl, align 4, !tbaa !9
  %i.gm = fsub <2 x float> %.sroa.079.0.copyload.5.7, %i.fi ; 2 uses
  %i.gn = fmul <2 x float> %i.gm, %i.gm
  %i.go = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gn)
  %i.gp = fcmp uge float %i.go, %i.f
  br i1 %i.gp, label %.lr.ph.6.7, label %._crit_edge

.lr.ph.6.7:                                       ; preds = %.lr.ph.5.7
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.079.0.copyload.6.7 = load <2 x float>, ptr %i.gq, align 4, !tbaa !9
  %i.gr = fsub <2 x float> %.sroa.079.0.copyload.6.7, %i.fi ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.gr
  %i.gt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gs)
  %i.gu = fcmp uge float %i.gt, %i.f
  br i1 %i.gu, label %.critedge.loopexit.7, label %._crit_edge

.critedge.loopexit.7:                             ; preds = %.lr.ph.6.7
  %i.gv = add nsw i32 %.1128.6, 1
  %i.gw = sext i32 %.1128.6 to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gw
  store <2 x float> %i.fi, ptr %i.gx, align 8, !tbaa !9
  br label %._crit_edge

.new:                                             ; preds = %._crit_edge
  %i.gy = fadd <2 x float> %.lcssa359, %.lcssa358
  %i.gz = fmul <2 x float> %i.gy, splat (float 5.000000e-01) ; 4 uses
  %wide.trip.count = zext nneg i32 %.1128.lcssa to i64
  %i.ha = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ha, 1
  %i.hb = load <2 x float>, ptr %3, align 16
  %i.hc = fsub <2 x float> %i.hb, %i.gz           ; 2 uses
  %i.hd = fmul <2 x float> %i.hc, %i.hc           ; 2 uses
  %shift = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hd, %shift
  %i.he = extractelement <2 x float> %foldExtExtBinop, i64 0
  %unroll_iter = and i64 %i.ha, -2
  br label %bb.b

.lr.ph242.preheader.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph242.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph242.preheader.unr-lcssa
  %lcmp.mod378 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next278.1
  %i.hg = load <2 x float>, ptr %i.hf, align 8
  %i.hh = fsub <2 x float> %i.hg, %i.gz           ; 2 uses
  %i.hi = fmul <2 x float> %i.hh, %i.hh
  %i.hj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hi)
  %i.hk = fcmp ogt float %i.hj, %.1140.1
  %i.hl = trunc nuw nsw i64 %indvars.iv.next278.1 to i32
  %.1142.epil = select i1 %i.hk, i32 %i.hl, i32 %.1142.1
  br label %.lr.ph242.preheader

.lr.ph242.preheader:                              ; preds = %.lr.ph242.preheader.unr-lcssa, %.epil.preheader
  %.1142.lcssa = phi i32 [ %.1142.1, %.lr.ph242.preheader.unr-lcssa ], [ %.1142.epil, %.epil.preheader ]
  %i.hm = zext nneg i32 %.1142.lcssa to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hm ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.hn, align 8, !tbaa !9 ; 9 uses
  %i.ho = add nsw i32 %.1128.lcssa, -1            ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hp
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !9
  store i64 %i.hr, ptr %i.hn, align 8, !tbaa !9
  %i.hs = load <2 x float>, ptr %3, align 16
  %i.ht = fsub <2 x float> %i.hs, %.sroa.059.0.copyload ; 2 uses
  %i.hu = fmul <2 x float> %i.ht, %i.ht           ; 2 uses
  %shift345 = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop346 = fadd <2 x float> %i.hu, %shift345
  %i.hv = extractelement <2 x float> %foldExtExtBinop346, i64 0 ; 2 uses
  %i.hw = add nsw i64 %i.hp, -1                   ; 3 uses
  %xtraiter379 = and i64 %i.hw, 1
  %i.hx = icmp eq i32 %i.ho, 2
  br i1 %i.hx, label %.lr.ph242.epil.preheader, label %.lr.ph242.preheader.new

.lr.ph242.preheader.new:                          ; preds = %.lr.ph242.preheader
  %unroll_iter383 = and i64 %i.hw, -2
  br label %.lr.ph242

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv277 = phi i64 [ 1, %.new ], [ %indvars.iv.next278.1, %bb.b ] ; 4 uses
  %.0139236 = phi float [ %i.he, %.new ], [ %.1140.1, %bb.b ] ; 2 uses
  %.0141235 = phi i32 [ 0, %.new ], [ %.1142.1, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv277
  %i.hz = load <2 x float>, ptr %i.hy, align 8
  %i.ia = fsub <2 x float> %i.hz, %i.gz           ; 2 uses
  %i.ib = fmul <2 x float> %i.ia, %i.ia
  %i.ic = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ib) ; 2 uses
  %i.id = fcmp ogt float %i.ic, %.0139236         ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv277 to i32
  %.1142 = select i1 %i.id, i32 %i.ie, i32 %.0141235
  %.1140 = select i1 %i.id, float %i.ic, float %.0139236 ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next278
  %i.ig = load <2 x float>, ptr %i.if, align 8
  %i.ih = fsub <2 x float> %i.ig, %i.gz           ; 2 uses
  %i.ii = fmul <2 x float> %i.ih, %i.ih
  %i.ij = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ii) ; 2 uses
  %i.ik = fcmp ogt float %i.ij, %.1140            ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv.next278 to i32
  %.1142.1 = select i1 %i.ik, i32 %i.il, i32 %.1142 ; 3 uses
  %.1140.1 = select i1 %i.ik, float %i.ij, float %.1140 ; 2 uses
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph242.preheader.unr-lcssa, label %bb.b, !llvm.loop !13

._crit_edge243.unr-lcssa:                         ; preds = %.lr.ph242
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %._crit_edge243, label %.lr.ph242.epil.preheader

.lr.ph242.epil.preheader:                         ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.preheader
  %indvars.iv281.epil.init = phi i64 [ 1, %.lr.ph242.preheader ], [ %indvars.iv.next282.1, %._crit_edge243.unr-lcssa ] ; 2 uses
  %.0134239.epil.init = phi float [ %i.hv, %.lr.ph242.preheader ], [ %.1135.1, %._crit_edge243.unr-lcssa ]
  %.0136238.epil.init = phi i32 [ 0, %.lr.ph242.preheader ], [ %.1137.1, %._crit_edge243.unr-lcssa ]
  %lcmp.mod382 = trunc i64 %i.hw to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.epil.init
  %i.in = load <2 x float>, ptr %i.im, align 8
  %i.io = fsub <2 x float> %i.in, %.sroa.059.0.copyload ; 2 uses
  %i.ip = fmul <2 x float> %i.io, %i.io
  %i.iq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ip)
  %i.ir = fcmp ogt float %i.iq, %.0134239.epil.init
  %i.is = trunc nuw nsw i64 %indvars.iv281.epil.init to i32
  %.1137.epil = select i1 %i.ir, i32 %i.is, i32 %.0136238.epil.init
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.epil.preheader
  %.1137.lcssa = phi i32 [ %.1137.1, %._crit_edge243.unr-lcssa ], [ %.1137.epil, %.lr.ph242.epil.preheader ]
  %i.it = zext nneg i32 %.1137.lcssa to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.it ; 2 uses
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.iu, align 8, !tbaa !9 ; 4 uses
  %i.iv = add nsw i32 %.1128.lcssa, -2            ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !9
  store i64 %i.iy, ptr %i.iu, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.iz = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.059.0.copyload ; 3 uses
  %i.ja = fmul <2 x float> %i.iz, %i.iz
  %i.jb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ja) ; 2 uses
  %i.jc = fcmp ogt float %i.jb, f0x057A0000
  br i1 %i.jc, label %bb.c, label %.lr.ph248

bb.c:                                             ; preds = %._crit_edge243
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.jb)
  %i.jd = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.je = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.iz, %i.jf
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.c, %._crit_edge243
  %.sroa.012.0.i = phi <2 x float> [ %i.jh, %bb.c ], [ zeroinitializer, %._crit_edge243 ]
  %i.ji = fmul float %i.d, 2.000000e+00
  %i.jj = fmul float %i.d, -2.000000e+00
  %wide.trip.count289 = zext nneg i32 %i.iv to i64
  br label %bb.d

.lr.ph242:                                        ; preds = %.lr.ph242, %.lr.ph242.preheader.new
  %indvars.iv281 = phi i64 [ 1, %.lr.ph242.preheader.new ], [ %indvars.iv.next282.1, %.lr.ph242 ] ; 4 uses
  %.0134239 = phi float [ %i.hv, %.lr.ph242.preheader.new ], [ %.1135.1, %.lr.ph242 ] ; 2 uses
  %.0136238 = phi i32 [ 0, %.lr.ph242.preheader.new ], [ %.1137.1, %.lr.ph242 ]
  %niter384 = phi i64 [ 0, %.lr.ph242.preheader.new ], [ %niter384.next.1, %.lr.ph242 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281
  %i.jl = load <2 x float>, ptr %i.jk, align 8
  %i.jm = fsub <2 x float> %i.jl, %.sroa.059.0.copyload ; 2 uses
  %i.jn = fmul <2 x float> %i.jm, %i.jm
  %i.jo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jn) ; 2 uses
  %i.jp = fcmp ogt float %i.jo, %.0134239         ; 2 uses
  %i.jq = trunc nuw nsw i64 %indvars.iv281 to i32
  %.1137 = select i1 %i.jp, i32 %i.jq, i32 %.0136238
  %.1135 = select i1 %i.jp, float %i.jo, float %.0134239 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next282
  %i.js = load <2 x float>, ptr %i.jr, align 8
  %i.jt = fsub <2 x float> %i.js, %.sroa.059.0.copyload ; 2 uses
  %i.ju = fmul <2 x float> %i.jt, %i.jt
  %i.jv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ju) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, %.1135            ; 2 uses
  %i.jx = trunc nuw nsw i64 %indvars.iv.next282 to i32
  %.1137.1 = select i1 %i.jw, i32 %i.jx, i32 %.1137 ; 3 uses
  %.1135.1 = select i1 %i.jw, float %i.jv, float %.1135 ; 2 uses
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %niter384.next.1 = add nuw i64 %niter384, 2     ; 2 uses
  %niter384.ncmp.1 = icmp eq i64 %niter384.next.1, %unroll_iter383
  br i1 %niter384.ncmp.1, label %._crit_edge243.unr-lcssa, label %.lr.ph242, !llvm.loop !14

._crit_edge249:                                   ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.045.0.copyload, ptr noundef %4, i32 noundef %.1132)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.045.0.copyload, <2 x float> %.sroa.059.0.copyload, ptr noundef %5, i32 noundef %.1130)
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !12 ; 4 uses
  %i.ka = icmp eq i32 %i.jz, 0
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.kc = load i32, ptr %i.kb, align 4            ; 4 uses
  %i.kd = icmp eq i32 %i.kc, 0
  %or.cond5 = select i1 %i.ka, i1 %i.kd, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.i

bb.d:                                             ; preds = %.lr.ph248, %bb.h
  %indvars.iv286 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next287, %bb.h ] ; 2 uses
  %.0129246 = phi i32 [ 0, %.lr.ph248 ], [ %.1130, %bb.h ] ; 4 uses
  %.0131245 = phi i32 [ 0, %.lr.ph248 ], [ %.1132, %bb.h ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv286
  %i.kf = load <2 x float>, ptr %i.ke, align 8    ; 2 uses
  %i.kg = fsub <2 x float> %i.kf, %.sroa.059.0.copyload
  %i.kh = fmul <2 x float> %.sroa.012.0.i, %i.kg  ; 2 uses
  %shift348 = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fsub <2 x float> %i.kh, %shift348
  %i.ki = extractelement <2 x float> %foldExtExtBinop349, i64 0 ; 2 uses
  %i.kj = fcmp ult float %i.ki, %i.ji
  br i1 %i.kj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.kk = add nsw i32 %.0131245, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.kl = fcmp ugt float %i.ki, %i.jj
  br i1 %i.kl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.km = add nsw i32 %.0129246, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.0129246.sink = phi i32 [ %.0129246, %bb.g ], [ %.0131245, %bb.e ]
  %.sink332 = phi ptr [ %5, %bb.g ], [ %4, %bb.e ]
  %.1132.ph = phi i32 [ %.0131245, %bb.g ], [ %i.kk, %bb.e ]
  %.1130.ph = phi i32 [ %i.km, %bb.g ], [ %.0129246, %bb.e ]
  %i.kn = sext i32 %.0129246.sink to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %.sink332, i64 %i.kn
  store <2 x float> %i.kf, ptr %i.ko, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.1132 = phi i32 [ %.0131245, %bb.f ], [ %.1132.ph, %.sink.split ] ; 2 uses
  %.1130 = phi i32 [ %.0129246, %bb.f ], [ %.1130.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %._crit_edge249, label %bb.d, !llvm.loop !15

bb.i:                                             ; preds = %._crit_edge249
  store <2 x float> %.sroa.059.0.copyload, ptr %0, align 4, !tbaa !9
  %i.kp = icmp sgt i32 %i.jz, 0
  br i1 %i.kp, label %.lr.ph254, label %bb.j

.lr.ph254:                                        ; preds = %bb.i
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kq = zext nneg i32 %i.jz to i64
  %i.kr = shl nuw nsw i64 %i.kq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr nonnull align 4 %6, i64 %i.kr, i1 false), !tbaa !9
  %narrow = add nuw i32 %i.jz, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph254, %bb.i
  %i.ks = phi i32 [ %narrow, %.lr.ph254 ], [ 1, %bb.i ] ; 3 uses
  %i.kt = add nuw nsw i32 %i.ks, 1                ; 2 uses
  store i32 %i.kt, ptr %i.a, align 4, !tbaa !12
  %i.ku = sext i32 %i.ks to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ku
  store <2 x float> %.sroa.045.0.copyload, ptr %i.kv, align 4, !tbaa !9
  %i.kw = icmp sgt i32 %i.kc, 0
  br i1 %i.kw, label %.lr.ph259, label %..preheader223_crit_edge

..preheader223_crit_edge:                         ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 4
  br label %.preheader223

.lr.ph259:                                        ; preds = %bb.j
  %i.kx = sext i32 %i.kt to i64
  %i.ky = shl nsw i64 %i.kx, 3
  %scevgep300 = getelementptr i8, ptr %0, i64 %i.ky
  %i.kz = zext nneg i32 %i.kc to i64
  %i.la = shl nuw nsw i64 %i.kz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep300, ptr nonnull align 4 %7, i64 %i.la, i1 false), !tbaa !9
  %i.lb = add nuw i32 %i.ks, %i.kc
  %i.lc = add i32 %i.lb, 1                        ; 2 uses
  store i32 %i.lc, ptr %i.a, align 4, !tbaa !12
  br label %.preheader223

.preheader223:                                    ; preds = %..preheader223_crit_edge, %.lr.ph259
  %i.ld = phi i32 [ %.pre, %..preheader223_crit_edge ], [ %i.lc, %.lr.ph259 ] ; 2 uses
  %i.le = icmp sgt i32 %i.ld, 2
  br i1 %i.le, label %.preheader222.lr.ph, label %._crit_edge266.thread

.preheader222.lr.ph:                              ; preds = %.preheader223
  %i.lf = fmul float %i.d, 2.000000e+00
  %scevgep311.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.lr.ph, %.loopexit329
  %i.lg = phi i32 [ %i.ld, %.preheader222.lr.ph ], [ %i.mq, %.loopexit329 ] ; 8 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp sgt i32 %i.lg, 0
  br i1 %i.li, label %.lr.ph343, label %.loopexit329

bb.k:                                             ; preds = %b2Normalize.exit211
  %i.lj = icmp slt i64 %indvars.iv.next317, %i.lh
  br i1 %i.lj, label %.lr.ph343, label %.loopexit329

.lr.ph343:                                        ; preds = %.preheader222, %bb.k
  %indvars.iv316342 = phi i64 [ %indvars.iv.next317, %bb.k ], [ 0, %.preheader222 ] ; 3 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316342, 1 ; 3 uses
  %i.lk = trunc nuw i64 %indvars.iv.next317 to i32
  %i.ll = srem i32 %i.lk, %i.lg                   ; 3 uses
  %i.lm = trunc i64 %indvars.iv316342 to i32
  %i.ln = add i32 %i.lm, 2
  %i.lo = srem i32 %i.ln, %i.lg
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv316342
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.lp, align 4, !tbaa !9 ; 2 uses
  %i.lq = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lq
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.lr, align 4, !tbaa !9
  %i.ls = zext nneg i32 %i.lo to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ls
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.lt, align 4, !tbaa !9
  %i.lu = fsub <2 x float> %.sroa.011.0.copyload, %.sroa.013.0.copyload ; 3 uses
  %i.lv = fmul <2 x float> %i.lu, %i.lu
  %i.lw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lv) ; 2 uses
  %i.lx = fcmp ogt float %i.lw, f0x057A0000
  br i1 %i.lx, label %bb.l, label %b2Normalize.exit211

bb.l:                                             ; preds = %.lr.ph343
  %sqrt.i208 = tail call nnan float @llvm.sqrt.f32(float %i.lw)
  %i.ly = fdiv nnan float 1.000000e+00, %sqrt.i208
  %i.lz = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x float> %i.lu, %i.ma
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit211

b2Normalize.exit211:                              ; preds = %.lr.ph343, %bb.l
  %.sroa.012.0.i207 = phi <2 x float> [ %i.mc, %bb.l ], [ zeroinitializer, %.lr.ph343 ]
  %i.md = fsub <2 x float> %.sroa.012.0.copyload, %.sroa.013.0.copyload
  %i.me = fmul <2 x float> %i.md, %.sroa.012.0.i207 ; 2 uses
  %shift351 = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop352 = fsub <2 x float> %i.me, %shift351
  %i.mf = extractelement <2 x float> %foldExtExtBinop352, i64 0
  %i.mg = fcmp ugt float %i.mf, %i.lf
  br i1 %i.mg, label %bb.k, label %.preheader

.preheader:                                       ; preds = %b2Normalize.exit211
  %i.mh = add nsw i32 %i.lg, -1                   ; 3 uses
  %i.mi = icmp slt i32 %i.ll, %i.mh
  br i1 %i.mi, label %.lr.ph263.preheader, label %.thread

.lr.ph263.preheader:                              ; preds = %.preheader
  %i.mj = shl nuw nsw i64 %i.lq, 3                ; 2 uses
  %scevgep310 = getelementptr i8, ptr %0, i64 %i.mj
  %scevgep312 = getelementptr i8, ptr %scevgep311.a, i64 %i.mj
  %i.mk = add nsw i32 %i.lg, -2
  %i.ml = sub i32 %i.mk, %i.ll
  %i.mm = zext i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 3
  %i.mo = add nuw nsw i64 %i.mn, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep310, ptr noundef nonnull align 4 dereferenceable(1) %scevgep312, i64 %i.mo, i1 false), !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.preheader, %.lr.ph263.preheader
  store i32 %i.mh, ptr %i.a, align 4, !tbaa !12
  br label %.loopexit329

.loopexit329:                                     ; preds = %bb.k, %.preheader222, %.thread
  %i.mp = phi i1 [ true, %.thread ], [ false, %.preheader222 ], [ false, %bb.k ]
  %i.mq = phi i32 [ %i.mh, %.thread ], [ %i.lg, %.preheader222 ], [ %i.lg, %bb.k ] ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, 2
  %i.ms = and i1 %i.mp, %i.mr
  br i1 %i.ms, label %.preheader222, label %._crit_edge266, !llvm.loop !16

._crit_edge266:                                   ; preds = %.loopexit329
  %i.mt = icmp slt i32 %i.mq, 3
  br i1 %i.mt, label %._crit_edge266.thread, label %bb.m

._crit_edge266.thread:                            ; preds = %.preheader223, %._crit_edge266
  store i32 0, ptr %i.a, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge266, %._crit_edge266.thread, %._crit_edge249
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @b2RecurseHull(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((64, 68)) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [8 x %struct.b2Vec2], align 16      ; 6 uses
  %6 = alloca %struct.b2Hull, align 4             ; 5 uses
  %7 = alloca %struct.b2Hull, align 4             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = icmp eq i32 %4, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fsub <2 x float> %2, %1                  ; 3 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.d) ; 2 uses
  %i.f = fcmp ogt float %i.e, f0x057A0000
  br i1 %i.f, label %bb.c, label %b2Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.e)
  %i.g = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.c, %i.i
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.b, %bb.c
  %.sroa.012.0.i = phi <2 x float> [ %i.k, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.l = load <2 x float>, ptr %3, align 4        ; 2 uses
  %i.m = fsub <2 x float> %i.l, %1
  %i.n = fmul <2 x float> %.sroa.012.0.i, %i.m    ; 2 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.n, %shift
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.p = fcmp ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %b2Normalize.exit
  store <2 x float> %i.l, ptr %5, align 16, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %b2Normalize.exit
  %.045 = phi i32 [ 1, %bb.d ], [ 0, %b2Normalize.exit ] ; 2 uses
  %i.q = icmp sgt i32 %4, 1
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.r = zext nneg i32 %.149 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.048.lcssa = phi i64 [ 0, %bb.e ], [ %i.r, %._crit_edge.loopexit ]
  %.046.lcssa = phi float [ %i.o, %bb.e ], [ %.147, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.045, %bb.e ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.s = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.t = fmul float %i.s, 5.000000e-03
  %i.u = fmul float %i.t, 2.000000e+00
  %i.v = fcmp olt float %.046.lcssa, %i.u
  br i1 %i.v, label %bb.k, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.176 = phi i32 [ %.045, %.lr.ph.preheader ], [ %.2, %bb.g ] ; 3 uses
  %.04675 = phi float [ %i.o, %.lr.ph.preheader ], [ %.147, %bb.g ] ; 2 uses
  %.04874 = phi i32 [ 0, %.lr.ph.preheader ], [ %.149, %bb.g ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.x = load <2 x float>, ptr %i.w, align 4      ; 2 uses
  %i.y = fsub <2 x float> %i.x, %1
  %i.z = fmul <2 x float> %.sroa.012.0.i, %i.y    ; 2 uses
  %shift115 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop116 = fsub <2 x float> %i.z, %shift115
  %i.aa = extractelement <2 x float> %foldExtExtBinop116, i64 0 ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %.04675           ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %.149 = select i1 %i.ab, i32 %i.ac, i32 %.04874 ; 2 uses
  %.147 = select i1 %i.ab, float %i.aa, float %.04675 ; 2 uses
  %i.ad = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.176, 1
  %i.af = sext i32 %.176 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %5, i64 %i.af
  store <2 x float> %i.x, ptr %i.ag, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.2 = phi i32 [ %i.ae, %bb.f ], [ %.176, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

bb.h:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.048.lcssa
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ah, align 4, !tbaa !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %1, <2 x float> %.sroa.0.0.copyload, ptr noundef %5, i32 noundef %.1.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.0.0.copyload, <2 x float> %2, ptr noundef %5, i32 noundef %.1.lcssa)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph82, label %bb.i

.lr.ph82:                                         ; preds = %bb.h
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %6, i64 %i.am, i1 false), !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph82, %bb.h
  %i.an = phi i32 [ %i.aj, %.lr.ph82 ], [ 0, %bb.h ] ; 3 uses
  %i.ao = add nuw nsw i32 %i.an, 1                ; 2 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !12
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  store <2 x float> %.sroa.0.0.copyload, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph86, label %bb.j

.lr.ph86:                                         ; preds = %bb.i
  %i.au = zext nneg i32 %i.ao to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %scevgep101 = getelementptr i8, ptr %0, i64 %i.av
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep101, ptr nonnull align 4 %7, i64 %i.ax, i1 false), !tbaa !9
  %i.ay = add nuw i32 %i.an, %i.as
  %i.az = add nuw i32 %i.ay, 1
  store i32 %i.az, ptr %i.a, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph86, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @b2ValidateHull(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 17 uses
  %i.c = add i32 %i.b, -9
  %or.cond = icmp ult i32 %i.c, -6
  br i1 %or.cond, label %.critedge, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1                     ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %wide.trip.count121 = zext nneg i32 %i.b to i64
  %.not = icmp ne i32 %i.d, 0                     ; 2 uses
  %.sroa.028.0.copyload.us.peel = load <2 x float>, ptr %0, align 4, !tbaa !9 ; 8 uses
  %i.f = zext i1 %.not to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = load <2 x float>, ptr %i.g, align 4
  %i.i = fsub <2 x float> %i.h, %.sroa.028.0.copyload.us.peel ; 3 uses
  %i.j = fmul <2 x float> %i.i, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fcmp ogt float %i.k, f0x057A0000
  br i1 %i.l, label %bb.b, label %b2Normalize.exit.us.peel

bb.b:                                             ; preds = %.lr.ph115
  %sqrt.i.us.peel = tail call nnan float @llvm.sqrt.f32(float %i.k)
  %i.m = fdiv nnan float 1.000000e+00, %sqrt.i.us.peel
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.i, %i.o
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us.peel

b2Normalize.exit.us.peel:                         ; preds = %bb.b, %.lr.ph115
  %.sroa.012.0.i.us.peel = phi <2 x float> [ %i.q, %bb.b ], [ zeroinitializer, %.lr.ph115 ] ; 7 uses
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %b2Normalize.exit.us.peel
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 4
  %i.t = fsub <2 x float> %i.s, %.sroa.028.0.copyload.us.peel
  %i.u = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.t ; 2 uses
  %shift.1.peel = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1.peel = fsub <2 x float> %i.u, %shift.1.peel
  %i.v = extractelement <2 x float> %foldExtExtBinop.1.peel, i64 0
  %i.w = fcmp ult float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %cond142.a = icmp eq i32 %i.b, 2
  br i1 %cond142.a, label %.lr.ph115.peel.newph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load <2 x float>, ptr %i.x, align 4
  %i.z = fsub <2 x float> %i.y, %.sroa.028.0.copyload.us.peel
  %i.aa = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.z ; 2 uses
  %shift.2.peel = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2.peel = fsub <2 x float> %i.aa, %shift.2.peel
  %i.ab = extractelement <2 x float> %foldExtExtBinop.2.peel, i64 0
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %cond143.a = icmp eq i32 %i.b, 3
  br i1 %cond143.a, label %.lr.ph115.peel.newph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = fsub <2 x float> %i.ae, %.sroa.028.0.copyload.us.peel
  %i.ag = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.af ; 2 uses
  %shift.3.peel = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3.peel = fsub <2 x float> %i.ag, %shift.3.peel
  %i.ah = extractelement <2 x float> %foldExtExtBinop.3.peel, i64 0
  %i.ai = fcmp ult float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %cond144.a = icmp eq i32 %i.b, 4
  br i1 %cond144.a, label %.lr.ph115.peel.newph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = fsub <2 x float> %i.ak, %.sroa.028.0.copyload.us.peel
  %i.am = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.al ; 2 uses
  %shift.4.peel = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4.peel = fsub <2 x float> %i.am, %shift.4.peel
  %i.an = extractelement <2 x float> %foldExtExtBinop.4.peel, i64 0
  %i.ao = fcmp ult float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %cond145.a = icmp eq i32 %i.b, 5
  br i1 %cond145.a, label %.lr.ph115.peel.newph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = fsub <2 x float> %i.aq, %.sroa.028.0.copyload.us.peel
  %i.as = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ar ; 2 uses
  %shift.5.peel = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5.peel = fsub <2 x float> %i.as, %shift.5.peel
  %i.at = extractelement <2 x float> %foldExtExtBinop.5.peel, i64 0
  %i.au = fcmp ult float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %cond146.a = icmp eq i32 %i.b, 6
  br i1 %cond146.a, label %.lr.ph115.peel.newph, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load <2 x float>, ptr %i.av, align 4
  %i.ax = fsub <2 x float> %i.aw, %.sroa.028.0.copyload.us.peel
  %i.ay = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ax ; 2 uses
  %shift.6.peel = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6.peel = fsub <2 x float> %i.ay, %shift.6.peel
  %i.az = extractelement <2 x float> %foldExtExtBinop.6.peel, i64 0
  %i.ba = fcmp ult float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %cond147 = icmp eq i32 %i.b, 7
  br i1 %cond147, label %.lr.ph115.peel.newph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load <2 x float>, ptr %i.bb, align 4
  %i.bd = fsub <2 x float> %i.bc, %.sroa.028.0.copyload.us.peel
  %i.be = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.bd ; 2 uses
  %shift.7.peel = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7.peel = fsub <2 x float> %i.be, %shift.7.peel
  %i.bf = extractelement <2 x float> %foldExtExtBinop.7.peel, i64 0
  %i.bg = fcmp ult float %i.bf, 0.000000e+00
  br i1 %i.bg, label %..loopexit_crit_edge.us.peel, label %.critedge

..loopexit_crit_edge.us.peel:                     ; preds = %bb.p
  %exitcond122.not.peel = icmp eq i32 %i.b, 1
  br i1 %exitcond122.not.peel, label %._crit_edge, label %.lr.ph115.peel.newph

.lr.ph115.peel.newph:                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %..loopexit_crit_edge.us.peel
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.1 = icmp eq i32 %i.b, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.2 = icmp eq i32 %i.b, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.3 = icmp eq i32 %i.b, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %exitcond.not.4 = icmp eq i32 %i.b, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %exitcond.not.5 = icmp eq i32 %i.b, 6
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %exitcond.not.6 = icmp eq i32 %i.b, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.q

bb.q:                                             ; preds = %..loopexit_crit_edge.us, %.lr.ph115.peel.newph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %..loopexit_crit_edge.us ], [ 1, %.lr.ph115.peel.newph ] ; 10 uses
  %.not141 = icmp samesign ult i64 %indvars.iv118, %i.e ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv118
  %.sroa.028.0.copyload.us = load <2 x float>, ptr %i.bo, align 4, !tbaa !9 ; 9 uses
  %i.bp = select i1 %.not141, i64 %indvars.iv.next119, i64 0 ; 7 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = load <2 x float>, ptr %i.bq, align 4
  %i.bs = fsub <2 x float> %i.br, %.sroa.028.0.copyload.us ; 3 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt) ; 2 uses
  %i.bv = fcmp ogt float %i.bu, f0x057A0000
  br i1 %i.bv, label %bb.r, label %b2Normalize.exit.us

bb.r:                                             ; preds = %bb.q
  %sqrt.i.us = tail call nnan float @llvm.sqrt.f32(float %i.bu)
  %i.bw = fdiv nnan float 1.000000e+00, %sqrt.i.us
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bs, %i.by
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us

b2Normalize.exit.us:                              ; preds = %bb.q, %bb.r
  %.sroa.012.0.i.us = phi <2 x float> [ %i.ca, %bb.r ], [ zeroinitializer, %bb.q ] ; 8 uses
  br i1 %.not141, label %bb.s, label %bb.t

bb.s:                                             ; preds = %b2Normalize.exit.us
  %i.cb = load <2 x float>, ptr %0, align 4
  %i.cc = fsub <2 x float> %i.cb, %.sroa.028.0.copyload.us
  %i.cd = fmul <2 x float> %.sroa.012.0.i.us, %i.cc ; 2 uses
  %shift = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cd, %shift
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cf = fcmp ult float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.t, label %.critedge

bb.t:                                             ; preds = %b2Normalize.exit.us, %bb.s
  %i.cg = icmp eq i64 %indvars.iv118, 1
  br i1 %i.cg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load <2 x float>, ptr %i.bh, align 4
  %i.ci = fsub <2 x float> %i.ch, %.sroa.028.0.copyload.us
  %i.cj = fmul <2 x float> %.sroa.012.0.i.us, %i.ci ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub <2 x float> %i.cj, %shift.1
  %i.ck = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.cl = fcmp ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = icmp eq i64 %indvars.iv118, 2
  %i.cn = icmp eq i64 %i.bp, 2
  %or.cond72.us.2 = or i1 %i.cm, %i.cn
  br i1 %or.cond72.us.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load <2 x float>, ptr %i.bi, align 4
  %i.cp = fsub <2 x float> %i.co, %.sroa.028.0.copyload.us
  %i.cq = fmul <2 x float> %.sroa.012.0.i.us, %i.cp ; 2 uses
  %shift.2 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fsub <2 x float> %i.cq, %shift.2
  %i.cr = extractelement <2 x float> %foldExtExtBinop.2, i64 0
  %i.cs = fcmp ult float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %exitcond.not.2, label %..loopexit_crit_edge.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = icmp eq i64 %indvars.iv118, 3
  %i.cu = icmp eq i64 %i.bp, 3
  %or.cond72.us.3 = or i1 %i.ct, %i.cu
  br i1 %or.cond72.us.3, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = load <2 x float>, ptr %i.bj, align 4
  %i.cw = fsub <2 x float> %i.cv, %.sroa.028.0.copyload.us
  %i.cx = fmul <2 x float> %.sroa.012.0.i.us, %i.cw ; 2 uses
  %shift.3 = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fsub <2 x float> %i.cx, %shift.3
  %i.cy = extractelement <2 x float> %foldExtExtBinop.3, i64 0
  %i.cz = fcmp ult float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = icmp eq i64 %indvars.iv118, 4
  %i.db = icmp eq i64 %i.bp, 4
  %or.cond72.us.4 = or i1 %i.da, %i.db
  br i1 %or.cond72.us.4, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = load <2 x float>, ptr %i.bk, align 4
  %i.dd = fsub <2 x float> %i.dc, %.sroa.028.0.copyload.us
  %i.de = fmul <2 x float> %.sroa.012.0.i.us, %i.dd ; 2 uses
  %shift.4 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4 = fsub <2 x float> %i.de, %shift.4
  %i.df = extractelement <2 x float> %foldExtExtBinop.4, i64 0
  %i.dg = fcmp ult float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %exitcond.not.4, label %..loopexit_crit_edge.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = icmp eq i64 %indvars.iv118, 5
  %i.di = icmp eq i64 %i.bp, 5
  %or.cond72.us.5 = or i1 %i.dh, %i.di
  br i1 %or.cond72.us.5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load <2 x float>, ptr %i.bl, align 4
  %i.dk = fsub <2 x float> %i.dj, %.sroa.028.0.copyload.us
  %i.dl = fmul <2 x float> %.sroa.012.0.i.us, %i.dk ; 2 uses
  %shift.5 = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5 = fsub <2 x float> %i.dl, %shift.5
  %i.dm = extractelement <2 x float> %foldExtExtBinop.5, i64 0
  %i.dn = fcmp ult float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %exitcond.not.5, label %..loopexit_crit_edge.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = icmp eq i64 %indvars.iv118, 6
  %i.dp = icmp eq i64 %i.bp, 6
  %or.cond72.us.6 = or i1 %i.do, %i.dp
  br i1 %or.cond72.us.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load <2 x float>, ptr %i.bm, align 4
  %i.dr = fsub <2 x float> %i.dq, %.sroa.028.0.copyload.us
  %i.ds = fmul <2 x float> %.sroa.012.0.i.us, %i.dr ; 2 uses
  %shift.6 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6 = fsub <2 x float> %i.ds, %shift.6
  %i.dt = extractelement <2 x float> %foldExtExtBinop.6, i64 0
  %i.du = fcmp ult float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %exitcond.not.6, label %..loopexit_crit_edge.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = icmp eq i64 %indvars.iv118, 7
  %i.dw = icmp eq i64 %i.bp, 7
  %or.cond72.us.7 = or i1 %i.dv, %i.dw
  br i1 %or.cond72.us.7, label %..loopexit_crit_edge.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = load <2 x float>, ptr %i.bn, align 4
  %i.dy = fsub <2 x float> %i.dx, %.sroa.028.0.copyload.us
  %i.dz = fmul <2 x float> %.sroa.012.0.i.us, %i.dy ; 2 uses
  %shift.7 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fsub <2 x float> %i.dz, %shift.7
  %i.ea = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.eb = fcmp ult float %i.ea, 0.000000e+00
  br i1 %i.eb, label %..loopexit_crit_edge.us, label %.critedge

..loopexit_crit_edge.us:                          ; preds = %bb.al, %bb.am, %bb.ak, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.q, !llvm.loop !18

._crit_edge:                                      ; preds = %b2Normalize.exit.us.peel, %..loopexit_crit_edge.us, %..loopexit_crit_edge.us.peel
  %i.ec = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.ed = fmul float %i.ec, 5.000000e-03
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %wide.trip.count126 = zext nneg i32 %smax to i64
  %exitcond127.not132 = icmp slt i32 %i.ee, 1
  br i1 %exitcond127.not132, label %.critedge, label %.lr.ph

bb.an:                                            ; preds = %b2Normalize.exit97
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %._crit_edge, %bb.an
  %indvars.iv123133 = phi i64 [ %indvars.iv.next124, %bb.an ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123133, 1 ; 3 uses
  %i.ef = trunc nuw i64 %indvars.iv.next124 to i32
  %i.eg = srem i32 %i.ef, %i.ee
  %i.eh = trunc i64 %indvars.iv123133 to i32
  %i.ei = add i32 %i.eh, 2
  %i.ej = srem i32 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv123133
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ek, align 4, !tbaa !9 ; 2 uses
  %i.el = zext nneg i32 %i.eg to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.el
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.em, align 4, !tbaa !9
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.eo, align 4, !tbaa !9
  %i.ep = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.09.0.copyload ; 3 uses
  %i.eq = fmul <2 x float> %i.ep, %i.ep
  %i.er = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eq) ; 2 uses
  %i.es = fcmp ogt float %i.er, f0x057A0000
  br i1 %i.es, label %bb.ao, label %b2Normalize.exit97

bb.ao:                                            ; preds = %.lr.ph
  %sqrt.i94 = tail call nnan float @llvm.sqrt.f32(float %i.er)
  %i.et = fdiv nnan float 1.000000e+00, %sqrt.i94
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.ep, %i.ev
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit97

b2Normalize.exit97:                               ; preds = %.lr.ph, %bb.ao
  %.sroa.012.0.i93 = phi <2 x float> [ %i.ex, %bb.ao ], [ zeroinitializer, %.lr.ph ]
  %i.ey = fsub <2 x float> %.sroa.08.0.copyload, %.sroa.09.0.copyload
  %i.ez = fmul <2 x float> %i.ey, %.sroa.012.0.i93 ; 2 uses
  %shift136 = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fsub <2 x float> %i.ez, %shift136
  %i.fa = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.fb = fcmp ugt float %i.fa, %i.ed
  br i1 %i.fb, label %bb.an, label %b2Normalize.exit97..critedge.loopexit_crit_edge, !llvm.loop !19

b2Normalize.exit97..critedge.loopexit_crit_edge:  ; preds = %b2Normalize.exit97
  br label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.s, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.am, %bb.an, %._crit_edge, %b2Normalize.exit97..critedge.loopexit_crit_edge, %bb.a
  %.10 = phi i1 [ true, %bb.an ], [ false, %bb.a ], [ false, %b2Normalize.exit97..critedge.loopexit_crit_edge ], [ true, %._crit_edge ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.10
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"b2Hull", !4, i64 0, !5, i64 64}
!12 = !{!11, !5, i64 64}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !20}
!19 = distinct !{!19, !10}
!20 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
