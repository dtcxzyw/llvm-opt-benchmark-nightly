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
  br i1 %or.cond, label %bb.o, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.c = tail call float @b2GetLengthUnitsPerMeter() #7
  %i.d = fmul float %i.c, 5.000000e-03            ; 5 uses
  %i.e = fmul float %i.d, 1.600000e+01
  %i.f = fmul float %i.d, %i.e                    ; 28 uses
  %i.g = load <2 x float>, ptr %1, align 4        ; 5 uses
  %i.h = fcmp ogt <2 x float> %i.g, splat (float f0x7F7FFFFF)
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.g ; 3 uses
  %i.j = fcmp olt <2 x float> %i.g, splat (float f0xFF7FFFFF)
  %i.k = select <2 x i1> %i.j, <2 x float> splat (float f0xFF7FFFFF), <2 x float> %i.g ; 3 uses
  store <2 x float> %i.g, ptr %3, align 16, !tbaa !9
  %exitcond275.not = icmp eq i32 %2, 1
  br i1 %exitcond275.not, label %._crit_edge, label %.lr.ph231.1

._crit_edge:                                      ; preds = %.critedge.loopexit.7, %.lr.ph.6.7, %.lr.ph.5.7, %.lr.ph.4.7, %.lr.ph.3.7, %.lr.ph.2.7, %.lr.ph.1.7, %.lr.ph231.7, %.loopexit.6, %.loopexit.5, %.loopexit.4, %.loopexit.3, %.loopexit.2, %.loopexit.1, %.lr.ph231.preheader
  %.1128.lcssa = phi i32 [ 1, %.lr.ph231.preheader ], [ %.1128.1, %.loopexit.1 ], [ %.1128.2, %.loopexit.2 ], [ %.1128.3, %.loopexit.3 ], [ %.1128.4, %.loopexit.4 ], [ %.1128.5, %.loopexit.5 ], [ %.1128.6, %.loopexit.6 ], [ %i.gv, %.critedge.loopexit.7 ], [ %.1128.6, %.lr.ph.6.7 ], [ %.1128.6, %.lr.ph.5.7 ], [ %.1128.6, %.lr.ph.4.7 ], [ %.1128.6, %.lr.ph.3.7 ], [ %.1128.6, %.lr.ph.2.7 ], [ %.1128.6, %.lr.ph.1.7 ], [ %.1128.6, %.lr.ph231.7 ] ; 4 uses
  %.lcssa358.a = phi <2 x float> [ %i.i, %.lr.ph231.preheader ], [ %i.p, %.loopexit.1 ], [ %i.aa, %.loopexit.2 ], [ %i.as, %.loopexit.3 ], [ %i.bp, %.loopexit.4 ], [ %i.cr, %.loopexit.5 ], [ %i.dy, %.loopexit.6 ], [ %i.fk, %.lr.ph231.7 ], [ %i.fk, %.lr.ph.1.7 ], [ %i.fk, %.lr.ph.2.7 ], [ %i.fk, %.lr.ph.3.7 ], [ %i.fk, %.lr.ph.4.7 ], [ %i.fk, %.lr.ph.5.7 ], [ %i.fk, %.lr.ph.6.7 ], [ %i.fk, %.critedge.loopexit.7 ]
  %.lcssa357 = phi <2 x float> [ %i.k, %.lr.ph231.preheader ], [ %i.r, %.loopexit.1 ], [ %i.ac, %.loopexit.2 ], [ %i.au, %.loopexit.3 ], [ %i.br, %.loopexit.4 ], [ %i.ct, %.loopexit.5 ], [ %i.ea, %.loopexit.6 ], [ %i.fm, %.lr.ph231.7 ], [ %i.fm, %.lr.ph.1.7 ], [ %i.fm, %.lr.ph.2.7 ], [ %i.fm, %.lr.ph.3.7 ], [ %i.fm, %.lr.ph.4.7 ], [ %i.fm, %.lr.ph.5.7 ], [ %i.fm, %.lr.ph.6.7 ], [ %i.fm, %.critedge.loopexit.7 ]
  %i.l = icmp slt i32 %.1128.lcssa, 3
  br i1 %i.l, label %bb.n, label %.new

.lr.ph231.1:                                      ; preds = %.lr.ph231.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 6 uses
  %i.o = fcmp olt <2 x float> %i.i, %i.n
  %i.p = select <2 x i1> %i.o, <2 x float> %i.i, <2 x float> %i.n ; 3 uses
  %i.q = fcmp ogt <2 x float> %i.k, %i.n
  %i.r = select <2 x i1> %i.q, <2 x float> %i.k, <2 x float> %i.n ; 3 uses
  %.sroa.079.0.copyload.1359 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.s = fsub <2 x float> %.sroa.079.0.copyload.1359, %i.n ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp uge float %i.u, %i.f
  br i1 %i.v, label %.critedge.loopexit.1, label %.loopexit.1

.critedge.loopexit.1:                             ; preds = %.lr.ph231.1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.n, ptr %i.w, align 8, !tbaa !9
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph231.1, %.critedge.loopexit.1
  %.1128.1 = phi i32 [ 2, %.critedge.loopexit.1 ], [ 1, %.lr.ph231.1 ] ; 5 uses
  %exitcond275.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond275.not.1, label %._crit_edge, label %.lr.ph231.2

.lr.ph231.2:                                      ; preds = %.loopexit.1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 7 uses
  %i.z = fcmp olt <2 x float> %i.p, %i.y
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.p, <2 x float> %i.y ; 3 uses
  %i.ab = fcmp ogt <2 x float> %i.r, %i.y
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.r, <2 x float> %i.y ; 3 uses
  %.sroa.079.0.copyload.2362 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.ad = fsub <2 x float> %.sroa.079.0.copyload.2362, %i.y ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae)
  %i.ag = fcmp uge float %i.af, %i.f
  br i1 %i.ag, label %.lr.ph.1.2, label %.loopexit.2

.lr.ph.1.2:                                       ; preds = %.lr.ph231.2
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

.loopexit.2:                                      ; preds = %.lr.ph231.2, %.lr.ph.1.2, %.critedge.loopexit.2
  %.1128.2 = phi i32 [ %i.am, %.critedge.loopexit.2 ], [ %.1128.1, %.lr.ph.1.2 ], [ %.1128.1, %.lr.ph231.2 ] ; 6 uses
  %exitcond275.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond275.not.2, label %._crit_edge, label %.lr.ph231.3

.lr.ph231.3:                                      ; preds = %.loopexit.2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 8 uses
  %i.ar = fcmp olt <2 x float> %i.aa, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.aa, <2 x float> %i.aq ; 3 uses
  %i.at = fcmp ogt <2 x float> %i.ac, %i.aq
  %i.au = select <2 x i1> %i.at, <2 x float> %i.ac, <2 x float> %i.aq ; 3 uses
  %.sroa.079.0.copyload.3365 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.av = fsub <2 x float> %.sroa.079.0.copyload.3365, %i.aq ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw)
  %i.ay = fcmp uge float %i.ax, %i.f
  br i1 %i.ay, label %.lr.ph.1.3, label %.loopexit.3

.lr.ph.1.3:                                       ; preds = %.lr.ph231.3
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

.loopexit.3:                                      ; preds = %.lr.ph231.3, %.lr.ph.1.3, %.lr.ph.2.3, %.critedge.loopexit.3
  %.1128.3 = phi i32 [ %i.bj, %.critedge.loopexit.3 ], [ %.1128.2, %.lr.ph.2.3 ], [ %.1128.2, %.lr.ph.1.3 ], [ %.1128.2, %.lr.ph231.3 ] ; 7 uses
  %exitcond275.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond275.not.3, label %._crit_edge, label %.lr.ph231.4

.lr.ph231.4:                                      ; preds = %.loopexit.3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load <2 x float>, ptr %i.bm, align 4    ; 9 uses
  %i.bo = fcmp olt <2 x float> %i.as, %i.bn
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.as, <2 x float> %i.bn ; 3 uses
  %i.bq = fcmp ogt <2 x float> %i.au, %i.bn
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.au, <2 x float> %i.bn ; 3 uses
  %.sroa.079.0.copyload.4368 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.bs = fsub <2 x float> %.sroa.079.0.copyload.4368, %i.bn ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt)
  %i.bv = fcmp uge float %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.1.4, label %.loopexit.4

.lr.ph.1.4:                                       ; preds = %.lr.ph231.4
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

.loopexit.4:                                      ; preds = %.lr.ph231.4, %.lr.ph.1.4, %.lr.ph.2.4, %.lr.ph.3.4, %.critedge.loopexit.4
  %.1128.4 = phi i32 [ %i.cl, %.critedge.loopexit.4 ], [ %.1128.3, %.lr.ph.3.4 ], [ %.1128.3, %.lr.ph.2.4 ], [ %.1128.3, %.lr.ph.1.4 ], [ %.1128.3, %.lr.ph231.4 ] ; 8 uses
  %exitcond275.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond275.not.4, label %._crit_edge, label %.lr.ph231.5

.lr.ph231.5:                                      ; preds = %.loopexit.4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cp = load <2 x float>, ptr %i.co, align 4    ; 10 uses
  %i.cq = fcmp olt <2 x float> %i.bp, %i.cp
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.bp, <2 x float> %i.cp ; 3 uses
  %i.cs = fcmp ogt <2 x float> %i.br, %i.cp
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.br, <2 x float> %i.cp ; 3 uses
  %.sroa.079.0.copyload.5371 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.cu = fsub <2 x float> %.sroa.079.0.copyload.5371, %i.cp ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cu
  %i.cw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cv)
  %i.cx = fcmp uge float %i.cw, %i.f
  br i1 %i.cx, label %.lr.ph.1.5, label %.loopexit.5

.lr.ph.1.5:                                       ; preds = %.lr.ph231.5
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

.loopexit.6:                                      ; preds = %.lr.ph231.6, %.lr.ph.1.6, %.lr.ph.2.6, %.lr.ph.3.6, %.lr.ph.4.6, %.lr.ph.5.6, %.critedge.loopexit.6
  %.1128.6 = phi i32 [ %i.fe, %.critedge.loopexit.6 ], [ %.1128.5, %.lr.ph.5.6 ], [ %.1128.5, %.lr.ph.4.6 ], [ %.1128.5, %.lr.ph.3.6 ], [ %.1128.5, %.lr.ph.2.6 ], [ %.1128.5, %.lr.ph.1.6 ], [ %.1128.5, %.lr.ph231.6 ] ; 10 uses
  %exitcond275.not.6 = icmp eq i32 %2, 7
  br i1 %exitcond275.not.6, label %._crit_edge, label %.lr.ph231.7

.lr.ph231.7:                                      ; preds = %.loopexit.6
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

.lr.ph.1.7:                                       ; preds = %.lr.ph231.7
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
  %i.gy = fadd <2 x float> %.lcssa358.a, %.lcssa357
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

.lr.ph241.preheader.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph241.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph241.preheader.unr-lcssa
  %lcmp.mod377 = trunc i64 %i.ha to i1
  tail call void @llvm.assume(i1 %lcmp.mod377)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next277.1
  %i.hg = load <2 x float>, ptr %i.hf, align 8
  %i.hh = fsub <2 x float> %i.hg, %i.gz           ; 2 uses
  %i.hi = fmul <2 x float> %i.hh, %i.hh
  %i.hj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hi)
  %i.hk = fcmp ogt float %i.hj, %.1140.1
  %i.hl = trunc nuw nsw i64 %indvars.iv.next277.1 to i32
  %.1142.epil = select i1 %i.hk, i32 %i.hl, i32 %.1142.1
  br label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.lr.ph241.preheader.unr-lcssa, %.epil.preheader
  %.1142.lcssa = phi i32 [ %.1142.1, %.lr.ph241.preheader.unr-lcssa ], [ %.1142.epil, %.epil.preheader ]
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
  %shift344 = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345 = fadd <2 x float> %i.hu, %shift344
  %i.hv = extractelement <2 x float> %foldExtExtBinop345, i64 0 ; 2 uses
  %i.hw = add nsw i64 %i.hp, -1                   ; 3 uses
  %xtraiter378 = and i64 %i.hw, 1
  %i.hx = icmp eq i32 %i.ho, 2
  br i1 %i.hx, label %.lr.ph241.epil.preheader, label %.lr.ph241.preheader.new

.lr.ph241.preheader.new:                          ; preds = %.lr.ph241.preheader
  %unroll_iter382 = and i64 %i.hw, -2
  br label %.lr.ph241

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv276 = phi i64 [ 1, %.new ], [ %indvars.iv.next277.1, %bb.b ] ; 4 uses
  %.0139235 = phi float [ %i.he, %.new ], [ %.1140.1, %bb.b ] ; 2 uses
  %.0141234 = phi i32 [ 0, %.new ], [ %.1142.1, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv276
  %i.hz = load <2 x float>, ptr %i.hy, align 8
  %i.ia = fsub <2 x float> %i.hz, %i.gz           ; 2 uses
  %i.ib = fmul <2 x float> %i.ia, %i.ia
  %i.ic = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ib) ; 2 uses
  %i.id = fcmp ogt float %i.ic, %.0139235         ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv276 to i32
  %.1142 = select i1 %i.id, i32 %i.ie, i32 %.0141234
  %.1140 = select i1 %i.id, float %i.ic, float %.0139235 ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next277
  %i.ig = load <2 x float>, ptr %i.if, align 8
  %i.ih = fsub <2 x float> %i.ig, %i.gz           ; 2 uses
  %i.ii = fmul <2 x float> %i.ih, %i.ih
  %i.ij = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ii) ; 2 uses
  %i.ik = fcmp ogt float %i.ij, %.1140            ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv.next277 to i32
  %.1142.1 = select i1 %i.ik, i32 %i.il, i32 %.1142 ; 3 uses
  %.1140.1 = select i1 %i.ik, float %i.ij, float %.1140 ; 2 uses
  %indvars.iv.next277.1 = add nuw nsw i64 %indvars.iv276, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph241.preheader.unr-lcssa, label %bb.b, !llvm.loop !13

._crit_edge242.unr-lcssa:                         ; preds = %.lr.ph241
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %._crit_edge242, label %.lr.ph241.epil.preheader

.lr.ph241.epil.preheader:                         ; preds = %._crit_edge242.unr-lcssa, %.lr.ph241.preheader
  %indvars.iv280.epil.init = phi i64 [ 1, %.lr.ph241.preheader ], [ %indvars.iv.next281.1, %._crit_edge242.unr-lcssa ] ; 2 uses
  %.0134238.epil.init = phi float [ %i.hv, %.lr.ph241.preheader ], [ %.1135.1, %._crit_edge242.unr-lcssa ]
  %.0136237.epil.init = phi i32 [ 0, %.lr.ph241.preheader ], [ %.1137.1, %._crit_edge242.unr-lcssa ]
  %lcmp.mod381 = trunc i64 %i.hw to i1
  tail call void @llvm.assume(i1 %lcmp.mod381)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv280.epil.init
  %i.in = load <2 x float>, ptr %i.im, align 8
  %i.io = fsub <2 x float> %i.in, %.sroa.059.0.copyload ; 2 uses
  %i.ip = fmul <2 x float> %i.io, %i.io
  %i.iq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ip)
  %i.ir = fcmp ogt float %i.iq, %.0134238.epil.init
  %i.is = trunc nuw nsw i64 %indvars.iv280.epil.init to i32
  %.1137.epil = select i1 %i.ir, i32 %i.is, i32 %.0136237.epil.init
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %._crit_edge242.unr-lcssa, %.lr.ph241.epil.preheader
  %.1137.lcssa = phi i32 [ %.1137.1, %._crit_edge242.unr-lcssa ], [ %.1137.epil, %.lr.ph241.epil.preheader ]
  %i.it = zext nneg i32 %.1137.lcssa to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.it ; 2 uses
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.iu, align 8, !tbaa !9 ; 4 uses
  %i.iv = add nsw i32 %.1128.lcssa, -2
  %i.iw = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !9
  store i64 %i.iy, ptr %i.iu, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.iz = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.059.0.copyload ; 3 uses
  %i.ja = fmul <2 x float> %i.iz, %i.iz
  %i.jb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ja) ; 2 uses
  %i.jc = fcmp ogt float %i.jb, f0x057A0000
  br i1 %i.jc, label %bb.c, label %.lr.ph247

bb.c:                                             ; preds = %._crit_edge242
  %i.jd = tail call float @sqrtf(float noundef %i.jb) #7
  %i.je = fdiv float 1.000000e+00, %i.jd
  %i.jf = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.iz, %i.jg
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %bb.c, %._crit_edge242
  %.sroa.012.0.i = phi <2 x float> [ %i.ji, %bb.c ], [ zeroinitializer, %._crit_edge242 ]
  %i.jj = fmul float %i.d, 2.000000e+00
  %i.jk = fmul float %i.d, -2.000000e+00
  br label %bb.d

.lr.ph241:                                        ; preds = %.lr.ph241, %.lr.ph241.preheader.new
  %indvars.iv280 = phi i64 [ 1, %.lr.ph241.preheader.new ], [ %indvars.iv.next281.1, %.lr.ph241 ] ; 4 uses
  %.0134238 = phi float [ %i.hv, %.lr.ph241.preheader.new ], [ %.1135.1, %.lr.ph241 ] ; 2 uses
  %.0136237 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %.1137.1, %.lr.ph241 ]
  %niter383 = phi i64 [ 0, %.lr.ph241.preheader.new ], [ %niter383.next.1, %.lr.ph241 ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv280
  %i.jm = load <2 x float>, ptr %i.jl, align 8
  %i.jn = fsub <2 x float> %i.jm, %.sroa.059.0.copyload ; 2 uses
  %i.jo = fmul <2 x float> %i.jn, %i.jn
  %i.jp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jo) ; 2 uses
  %i.jq = fcmp ogt float %i.jp, %.0134238         ; 2 uses
  %i.jr = trunc nuw nsw i64 %indvars.iv280 to i32
  %.1137 = select i1 %i.jq, i32 %i.jr, i32 %.0136237
  %.1135 = select i1 %i.jq, float %i.jp, float %.0134238 ; 2 uses
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next281
  %i.jt = load <2 x float>, ptr %i.js, align 8
  %i.ju = fsub <2 x float> %i.jt, %.sroa.059.0.copyload ; 2 uses
  %i.jv = fmul <2 x float> %i.ju, %i.ju
  %i.jw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jv) ; 2 uses
  %i.jx = fcmp ogt float %i.jw, %.1135            ; 2 uses
  %i.jy = trunc nuw nsw i64 %indvars.iv.next281 to i32
  %.1137.1 = select i1 %i.jx, i32 %i.jy, i32 %.1137 ; 3 uses
  %.1135.1 = select i1 %i.jx, float %i.jw, float %.1135 ; 2 uses
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %niter383.next.1 = add nuw i64 %niter383, 2     ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %._crit_edge242.unr-lcssa, label %.lr.ph241, !llvm.loop !14

._crit_edge248:                                   ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.045.0.copyload, ptr noundef %4, i32 noundef %.1132)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.045.0.copyload, <2 x float> %.sroa.059.0.copyload, ptr noundef %5, i32 noundef %.1130)
  %i.jz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !12 ; 4 uses
  %i.kb = icmp eq i32 %i.ka, 0
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.kd = load i32, ptr %i.kc, align 4            ; 4 uses
  %i.ke = icmp eq i32 %i.kd, 0
  %or.cond5 = select i1 %i.kb, i1 %i.ke, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.i

bb.d:                                             ; preds = %.lr.ph247, %bb.h
  %indvars.iv285 = phi i64 [ 0, %.lr.ph247 ], [ %indvars.iv.next286, %bb.h ] ; 2 uses
  %.0129245 = phi i32 [ 0, %.lr.ph247 ], [ %.1130, %bb.h ] ; 4 uses
  %.0131244 = phi i32 [ 0, %.lr.ph247 ], [ %.1132, %bb.h ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv285
  %i.kg = load <2 x float>, ptr %i.kf, align 8    ; 2 uses
  %i.kh = fsub <2 x float> %i.kg, %.sroa.059.0.copyload
  %i.ki = fmul <2 x float> %.sroa.012.0.i, %i.kh  ; 2 uses
  %shift347 = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop348 = fsub <2 x float> %i.ki, %shift347
  %i.kj = extractelement <2 x float> %foldExtExtBinop348, i64 0 ; 2 uses
  %i.kk = fcmp ult float %i.kj, %i.jj
  br i1 %i.kk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.kl = add nsw i32 %.0131244, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.km = fcmp ugt float %i.kj, %i.jk
  br i1 %i.km, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.kn = add nsw i32 %.0129245, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  %.0129245.sink = phi i32 [ %.0129245, %bb.g ], [ %.0131244, %bb.e ]
  %.sink331 = phi ptr [ %5, %bb.g ], [ %4, %bb.e ]
  %.1132.ph = phi i32 [ %.0131244, %bb.g ], [ %i.kl, %bb.e ]
  %.1130.ph = phi i32 [ %i.kn, %bb.g ], [ %.0129245, %bb.e ]
  %i.ko = sext i32 %.0129245.sink to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %.sink331, i64 %i.ko
  store <2 x float> %i.kg, ptr %i.kp, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.1132 = phi i32 [ %.0131244, %bb.f ], [ %.1132.ph, %.sink.split ] ; 2 uses
  %.1130 = phi i32 [ %.0129245, %bb.f ], [ %.1130.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %i.iw
  br i1 %exitcond289.not, label %._crit_edge248, label %bb.d, !llvm.loop !15

bb.i:                                             ; preds = %._crit_edge248
  store <2 x float> %.sroa.059.0.copyload, ptr %0, align 4, !tbaa !9
  %i.kq = icmp sgt i32 %i.ka, 0
  br i1 %i.kq, label %.lr.ph253, label %bb.j

.lr.ph253:                                        ; preds = %bb.i
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kr = zext nneg i32 %i.ka to i64
  %i.ks = shl nuw nsw i64 %i.kr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr nonnull align 4 %6, i64 %i.ks, i1 false), !tbaa !9
  %narrow = add nuw i32 %i.ka, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph253, %bb.i
  %i.kt = phi i32 [ %narrow, %.lr.ph253 ], [ 1, %bb.i ] ; 3 uses
  %i.ku = add nuw nsw i32 %i.kt, 1                ; 2 uses
  store i32 %i.ku, ptr %i.a, align 4, !tbaa !12
  %i.kv = sext i32 %i.kt to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kv
  store <2 x float> %.sroa.045.0.copyload, ptr %i.kw, align 4, !tbaa !9
  %i.kx = icmp sgt i32 %i.kd, 0
  br i1 %i.kx, label %.lr.ph258, label %..preheader222_crit_edge

..preheader222_crit_edge:                         ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 4
  br label %.preheader222.a

.lr.ph258:                                        ; preds = %bb.j
  %i.ky = sext i32 %i.ku to i64
  %i.kz = shl nsw i64 %i.ky, 3
  %scevgep299 = getelementptr i8, ptr %0, i64 %i.kz
  %i.la = zext nneg i32 %i.kd to i64
  %i.lb = shl nuw nsw i64 %i.la, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep299, ptr nonnull align 4 %7, i64 %i.lb, i1 false), !tbaa !9
  %i.lc = add nuw i32 %i.kt, %i.kd
  %i.ld = add i32 %i.lc, 1                        ; 2 uses
  store i32 %i.ld, ptr %i.a, align 4, !tbaa !12
  br label %.preheader222.a

.preheader222.a:                                  ; preds = %..preheader222_crit_edge, %.lr.ph258
  %i.le = phi i32 [ %.pre, %..preheader222_crit_edge ], [ %i.ld, %.lr.ph258 ] ; 2 uses
  %i.lf = icmp sgt i32 %i.le, 2
  br i1 %i.lf, label %.preheader221.lr.ph, label %._crit_edge265.thread

.preheader221.lr.ph:                              ; preds = %.preheader222.a
  %i.lg = fmul float %i.d, 2.000000e+00
  %scevgep310.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.lr.ph, %.loopexit328
  %i.lh = phi i32 [ %i.le, %.preheader221.lr.ph ], [ %i.ms, %.loopexit328 ] ; 8 uses
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp sgt i32 %i.lh, 0
  br i1 %i.lj, label %.lr.ph342, label %.loopexit328

bb.k:                                             ; preds = %b2Normalize.exit210
  %i.lk = icmp slt i64 %indvars.iv.next316, %i.li
  br i1 %i.lk, label %.lr.ph342, label %.loopexit328

.lr.ph342:                                        ; preds = %.preheader221, %bb.k
  %indvars.iv315341 = phi i64 [ %indvars.iv.next316, %bb.k ], [ 0, %.preheader221 ] ; 3 uses
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315341, 1 ; 3 uses
  %i.ll = trunc nuw i64 %indvars.iv.next316 to i32
  %i.lm = srem i32 %i.ll, %i.lh                   ; 3 uses
  %i.ln = trunc i64 %indvars.iv315341 to i32
  %i.lo = add i32 %i.ln, 2
  %i.lp = srem i32 %i.lo, %i.lh
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv315341
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.lq, align 4, !tbaa !9 ; 2 uses
  %i.lr = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lr
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.ls, align 4, !tbaa !9
  %i.lt = zext nneg i32 %i.lp to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lt
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.lu, align 4, !tbaa !9
  %i.lv = fsub <2 x float> %.sroa.011.0.copyload, %.sroa.013.0.copyload ; 3 uses
  %i.lw = fmul <2 x float> %i.lv, %i.lv
  %i.lx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lw) ; 2 uses
  %i.ly = fcmp ogt float %i.lx, f0x057A0000
  br i1 %i.ly, label %bb.l, label %b2Normalize.exit210

bb.l:                                             ; preds = %.lr.ph342
  %i.lz = tail call float @sqrtf(float noundef %i.lx) #7
  %i.ma = fdiv float 1.000000e+00, %i.lz
  %i.mb = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.lv, %i.mc
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit210

b2Normalize.exit210:                              ; preds = %.lr.ph342, %bb.l
  %.sroa.012.0.i207 = phi <2 x float> [ %i.me, %bb.l ], [ zeroinitializer, %.lr.ph342 ]
  %i.mf = fsub <2 x float> %.sroa.012.0.copyload, %.sroa.013.0.copyload
  %i.mg = fmul <2 x float> %i.mf, %.sroa.012.0.i207 ; 2 uses
  %shift350 = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop351 = fsub <2 x float> %i.mg, %shift350
  %i.mh = extractelement <2 x float> %foldExtExtBinop351, i64 0
  %i.mi = fcmp ugt float %i.mh, %i.lg
  br i1 %i.mi, label %bb.k, label %.preheader

.preheader:                                       ; preds = %b2Normalize.exit210
  %i.mj = add nsw i32 %i.lh, -1                   ; 3 uses
  %i.mk = icmp slt i32 %i.lm, %i.mj
  br i1 %i.mk, label %.lr.ph262.preheader, label %.thread

.lr.ph262.preheader:                              ; preds = %.preheader
  %i.ml = shl nuw nsw i64 %i.lr, 3                ; 2 uses
  %scevgep309 = getelementptr i8, ptr %0, i64 %i.ml
  %scevgep311 = getelementptr i8, ptr %scevgep310.a, i64 %i.ml
  %i.mm = add nsw i32 %i.lh, -2
  %i.mn = sub i32 %i.mm, %i.lm
  %i.mo = zext i32 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 3
  %i.mq = add nuw nsw i64 %i.mp, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep309, ptr noundef nonnull align 4 dereferenceable(1) %scevgep311, i64 %i.mq, i1 false), !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.preheader, %.lr.ph262.preheader
  store i32 %i.mj, ptr %i.a, align 4, !tbaa !12
  br label %.loopexit328

.loopexit328:                                     ; preds = %bb.k, %.preheader221, %.thread
  %i.mr = phi i1 [ true, %.thread ], [ false, %.preheader221 ], [ false, %bb.k ]
  %i.ms = phi i32 [ %i.mj, %.thread ], [ %i.lh, %.preheader221 ], [ %i.lh, %bb.k ] ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 2
  %i.mu = and i1 %i.mr, %i.mt
  br i1 %i.mu, label %.preheader221, label %._crit_edge265, !llvm.loop !16

._crit_edge265:                                   ; preds = %.loopexit328
  %i.mv = icmp slt i32 %i.ms, 3
  br i1 %i.mv, label %._crit_edge265.thread, label %bb.m

._crit_edge265.thread:                            ; preds = %.preheader222.a, %._crit_edge265
  store i32 0, ptr %i.a, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge265, %._crit_edge265.thread, %._crit_edge248
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
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
  %i.g = tail call float @sqrtf(float noundef %i.e) #7
  %i.h = fdiv float 1.000000e+00, %i.g
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.c, %i.j
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.b, %bb.c
  %.sroa.012.0.i = phi <2 x float> [ %i.l, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.m = load <2 x float>, ptr %3, align 4        ; 2 uses
  %i.n = fsub <2 x float> %i.m, %1
  %i.o = fmul <2 x float> %.sroa.012.0.i, %i.n    ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.q = fcmp ogt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %b2Normalize.exit
  store <2 x float> %i.m, ptr %5, align 16, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %b2Normalize.exit
  %.045 = phi i32 [ 1, %bb.d ], [ 0, %b2Normalize.exit ] ; 2 uses
  %i.r = icmp sgt i32 %4, 1
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.s = zext nneg i32 %.149 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.048.lcssa = phi i64 [ 0, %bb.e ], [ %i.s, %._crit_edge.loopexit ]
  %.046.lcssa = phi float [ %i.p, %bb.e ], [ %.147, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.045, %bb.e ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.t = tail call float @b2GetLengthUnitsPerMeter() #7
  %i.u = fmul float %i.t, 5.000000e-03
  %i.v = fmul float %i.u, 2.000000e+00
  %i.w = fcmp olt float %.046.lcssa, %i.v
  br i1 %i.w, label %bb.k, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.176 = phi i32 [ %.045, %.lr.ph.preheader ], [ %.2, %bb.g ] ; 3 uses
  %.04675 = phi float [ %i.p, %.lr.ph.preheader ], [ %.147, %bb.g ] ; 2 uses
  %.04874 = phi i32 [ 0, %.lr.ph.preheader ], [ %.149, %bb.g ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 2 uses
  %i.z = fsub <2 x float> %i.y, %1
  %i.aa = fmul <2 x float> %.sroa.012.0.i, %i.z   ; 2 uses
  %shift115 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop116 = fsub <2 x float> %i.aa, %shift115
  %i.ab = extractelement <2 x float> %foldExtExtBinop116, i64 0 ; 3 uses
  %i.ac = fcmp ogt float %i.ab, %.04675           ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %.149 = select i1 %i.ac, i32 %i.ad, i32 %.04874 ; 2 uses
  %.147 = select i1 %i.ac, float %i.ab, float %.04675 ; 2 uses
  %i.ae = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.af = add nsw i32 %.176, 1
  %i.ag = sext i32 %.176 to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ag
  store <2 x float> %i.y, ptr %i.ah, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.2 = phi i32 [ %i.af, %bb.f ], [ %.176, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

bb.h:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.048.lcssa
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ai, align 4, !tbaa !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %1, <2 x float> %.sroa.0.0.copyload, ptr noundef %5, i32 noundef %.1.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.0.0.copyload, <2 x float> %2, ptr noundef %5, i32 noundef %.1.lcssa)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph82, label %bb.i

.lr.ph82:                                         ; preds = %bb.h
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %6, i64 %i.an, i1 false), !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph82, %bb.h
  %i.ao = phi i32 [ %i.ak, %.lr.ph82 ], [ 0, %bb.h ] ; 3 uses
  %i.ap = add nuw nsw i32 %i.ao, 1                ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !12
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  store <2 x float> %.sroa.0.0.copyload, ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph86, label %bb.j

.lr.ph86:                                         ; preds = %bb.i
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %scevgep101 = getelementptr i8, ptr %0, i64 %i.aw
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep101, ptr nonnull align 4 %7, i64 %i.ay, i1 false), !tbaa !9
  %i.az = add nuw i32 %i.ao, %i.at
  %i.ba = add nuw i32 %i.az, 1
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph86, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
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
  br i1 %or.cond, label %.critedge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1                     ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %wide.trip.count120 = zext nneg i32 %i.b to i64
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

bb.b:                                             ; preds = %.lr.ph114
  %i.m = tail call float @sqrtf(float noundef %i.k) #7
  %i.n = fdiv float 1.000000e+00, %i.m
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.i, %i.p
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us.peel

b2Normalize.exit.us.peel:                         ; preds = %bb.b, %.lr.ph114
  %.sroa.012.0.i.us.peel = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %.lr.ph114 ] ; 7 uses
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %b2Normalize.exit.us.peel
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x float>, ptr %i.s, align 4
  %i.u = fsub <2 x float> %i.t, %.sroa.028.0.copyload.us.peel
  %i.v = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.u ; 2 uses
  %shift.1.peel = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1.peel = fsub <2 x float> %i.v, %shift.1.peel
  %i.w = extractelement <2 x float> %foldExtExtBinop.1.peel, i64 0
  %i.x = fcmp ult float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %cond141 = icmp eq i32 %i.b, 2
  br i1 %cond141, label %.lr.ph114.peel.newph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = fsub <2 x float> %i.z, %.sroa.028.0.copyload.us.peel
  %i.ab = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.aa ; 2 uses
  %shift.2.peel = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2.peel = fsub <2 x float> %i.ab, %shift.2.peel
  %i.ac = extractelement <2 x float> %foldExtExtBinop.2.peel, i64 0
  %i.ad = fcmp ult float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %cond142 = icmp eq i32 %i.b, 3
  br i1 %cond142, label %.lr.ph114.peel.newph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load <2 x float>, ptr %i.ae, align 4
  %i.ag = fsub <2 x float> %i.af, %.sroa.028.0.copyload.us.peel
  %i.ah = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ag ; 2 uses
  %shift.3.peel = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3.peel = fsub <2 x float> %i.ah, %shift.3.peel
  %i.ai = extractelement <2 x float> %foldExtExtBinop.3.peel, i64 0
  %i.aj = fcmp ult float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %cond143 = icmp eq i32 %i.b, 4
  br i1 %cond143, label %.lr.ph114.peel.newph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load <2 x float>, ptr %i.ak, align 4
  %i.am = fsub <2 x float> %i.al, %.sroa.028.0.copyload.us.peel
  %i.an = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.am ; 2 uses
  %shift.4.peel = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4.peel = fsub <2 x float> %i.an, %shift.4.peel
  %i.ao = extractelement <2 x float> %foldExtExtBinop.4.peel, i64 0
  %i.ap = fcmp ult float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %cond144 = icmp eq i32 %i.b, 5
  br i1 %cond144, label %.lr.ph114.peel.newph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load <2 x float>, ptr %i.aq, align 4
  %i.as = fsub <2 x float> %i.ar, %.sroa.028.0.copyload.us.peel
  %i.at = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.as ; 2 uses
  %shift.5.peel = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5.peel = fsub <2 x float> %i.at, %shift.5.peel
  %i.au = extractelement <2 x float> %foldExtExtBinop.5.peel, i64 0
  %i.av = fcmp ult float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %cond145 = icmp eq i32 %i.b, 6
  br i1 %cond145, label %.lr.ph114.peel.newph, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load <2 x float>, ptr %i.aw, align 4
  %i.ay = fsub <2 x float> %i.ax, %.sroa.028.0.copyload.us.peel
  %i.az = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ay ; 2 uses
  %shift.6.peel = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6.peel = fsub <2 x float> %i.az, %shift.6.peel
  %i.ba = extractelement <2 x float> %foldExtExtBinop.6.peel, i64 0
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %cond146 = icmp eq i32 %i.b, 7
  br i1 %cond146, label %.lr.ph114.peel.newph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load <2 x float>, ptr %i.bc, align 4
  %i.be = fsub <2 x float> %i.bd, %.sroa.028.0.copyload.us.peel
  %i.bf = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.be ; 2 uses
  %shift.7.peel = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7.peel = fsub <2 x float> %i.bf, %shift.7.peel
  %i.bg = extractelement <2 x float> %foldExtExtBinop.7.peel, i64 0
  %i.bh = fcmp ult float %i.bg, 0.000000e+00
  br i1 %i.bh, label %..loopexit_crit_edge.us.peel, label %.critedge

..loopexit_crit_edge.us.peel:                     ; preds = %bb.p
  %exitcond121.not.peel = icmp eq i32 %i.b, 1
  br i1 %exitcond121.not.peel, label %._crit_edge, label %.lr.ph114.peel.newph

.lr.ph114.peel.newph:                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %..loopexit_crit_edge.us.peel
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.1 = icmp eq i32 %i.b, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.2 = icmp eq i32 %i.b, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.3 = icmp eq i32 %i.b, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %exitcond.not.4 = icmp eq i32 %i.b, 5
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %exitcond.not.5 = icmp eq i32 %i.b, 6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %exitcond.not.6 = icmp eq i32 %i.b, 7
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.q

bb.q:                                             ; preds = %..loopexit_crit_edge.us, %.lr.ph114.peel.newph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %..loopexit_crit_edge.us ], [ 1, %.lr.ph114.peel.newph ] ; 10 uses
  %.not140 = icmp samesign ult i64 %indvars.iv117, %i.e ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv117
  %.sroa.028.0.copyload.us = load <2 x float>, ptr %i.bp, align 4, !tbaa !9 ; 9 uses
  %i.bq = select i1 %.not140, i64 %indvars.iv.next118, i64 0 ; 7 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load <2 x float>, ptr %i.br, align 4
  %i.bt = fsub <2 x float> %i.bs, %.sroa.028.0.copyload.us ; 3 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt
  %i.bv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bu) ; 2 uses
  %i.bw = fcmp ogt float %i.bv, f0x057A0000
  br i1 %i.bw, label %bb.r, label %b2Normalize.exit.us

bb.r:                                             ; preds = %bb.q
  %i.bx = tail call float @sqrtf(float noundef %i.bv) #7
  %i.by = fdiv float 1.000000e+00, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.bt, %i.ca
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us

b2Normalize.exit.us:                              ; preds = %bb.q, %bb.r
  %.sroa.012.0.i.us = phi <2 x float> [ %i.cc, %bb.r ], [ zeroinitializer, %bb.q ] ; 8 uses
  br i1 %.not140, label %bb.s, label %bb.t

bb.s:                                             ; preds = %b2Normalize.exit.us
  %i.cd = load <2 x float>, ptr %0, align 4
  %i.ce = fsub <2 x float> %i.cd, %.sroa.028.0.copyload.us
  %i.cf = fmul <2 x float> %.sroa.012.0.i.us, %i.ce ; 2 uses
  %shift = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cf, %shift
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ch = fcmp ult float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.t, label %.critedge

bb.t:                                             ; preds = %b2Normalize.exit.us, %bb.s
  %i.ci = icmp eq i64 %indvars.iv117, 1
  br i1 %i.ci, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load <2 x float>, ptr %i.bi, align 4
  %i.ck = fsub <2 x float> %i.cj, %.sroa.028.0.copyload.us
  %i.cl = fmul <2 x float> %.sroa.012.0.i.us, %i.ck ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub <2 x float> %i.cl, %shift.1
  %i.cm = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.cn = fcmp ult float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = icmp eq i64 %indvars.iv117, 2
  %i.cp = icmp eq i64 %i.bq, 2
  %or.cond72.us.2 = or i1 %i.co, %i.cp
  br i1 %or.cond72.us.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load <2 x float>, ptr %i.bj, align 4
  %i.cr = fsub <2 x float> %i.cq, %.sroa.028.0.copyload.us
  %i.cs = fmul <2 x float> %.sroa.012.0.i.us, %i.cr ; 2 uses
  %shift.2 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fsub <2 x float> %i.cs, %shift.2
  %i.ct = extractelement <2 x float> %foldExtExtBinop.2, i64 0
  %i.cu = fcmp ult float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %exitcond.not.2, label %..loopexit_crit_edge.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = icmp eq i64 %indvars.iv117, 3
  %i.cw = icmp eq i64 %i.bq, 3
  %or.cond72.us.3 = or i1 %i.cv, %i.cw
  br i1 %or.cond72.us.3, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = load <2 x float>, ptr %i.bk, align 4
  %i.cy = fsub <2 x float> %i.cx, %.sroa.028.0.copyload.us
  %i.cz = fmul <2 x float> %.sroa.012.0.i.us, %i.cy ; 2 uses
  %shift.3 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fsub <2 x float> %i.cz, %shift.3
  %i.da = extractelement <2 x float> %foldExtExtBinop.3, i64 0
  %i.db = fcmp ult float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = icmp eq i64 %indvars.iv117, 4
  %i.dd = icmp eq i64 %i.bq, 4
  %or.cond72.us.4 = or i1 %i.dc, %i.dd
  br i1 %or.cond72.us.4, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = load <2 x float>, ptr %i.bl, align 4
  %i.df = fsub <2 x float> %i.de, %.sroa.028.0.copyload.us
  %i.dg = fmul <2 x float> %.sroa.012.0.i.us, %i.df ; 2 uses
  %shift.4 = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4 = fsub <2 x float> %i.dg, %shift.4
  %i.dh = extractelement <2 x float> %foldExtExtBinop.4, i64 0
  %i.di = fcmp ult float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %exitcond.not.4, label %..loopexit_crit_edge.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dj = icmp eq i64 %indvars.iv117, 5
  %i.dk = icmp eq i64 %i.bq, 5
  %or.cond72.us.5 = or i1 %i.dj, %i.dk
  br i1 %or.cond72.us.5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = load <2 x float>, ptr %i.bm, align 4
  %i.dm = fsub <2 x float> %i.dl, %.sroa.028.0.copyload.us
  %i.dn = fmul <2 x float> %.sroa.012.0.i.us, %i.dm ; 2 uses
  %shift.5 = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5 = fsub <2 x float> %i.dn, %shift.5
  %i.do = extractelement <2 x float> %foldExtExtBinop.5, i64 0
  %i.dp = fcmp ult float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %exitcond.not.5, label %..loopexit_crit_edge.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dq = icmp eq i64 %indvars.iv117, 6
  %i.dr = icmp eq i64 %i.bq, 6
  %or.cond72.us.6 = or i1 %i.dq, %i.dr
  br i1 %or.cond72.us.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load <2 x float>, ptr %i.bn, align 4
  %i.dt = fsub <2 x float> %i.ds, %.sroa.028.0.copyload.us
  %i.du = fmul <2 x float> %.sroa.012.0.i.us, %i.dt ; 2 uses
  %shift.6 = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6 = fsub <2 x float> %i.du, %shift.6
  %i.dv = extractelement <2 x float> %foldExtExtBinop.6, i64 0
  %i.dw = fcmp ult float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %exitcond.not.6, label %..loopexit_crit_edge.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = icmp eq i64 %indvars.iv117, 7
  %i.dy = icmp eq i64 %i.bq, 7
  %or.cond72.us.7 = or i1 %i.dx, %i.dy
  br i1 %or.cond72.us.7, label %..loopexit_crit_edge.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = load <2 x float>, ptr %i.bo, align 4
  %i.ea = fsub <2 x float> %i.dz, %.sroa.028.0.copyload.us
  %i.eb = fmul <2 x float> %.sroa.012.0.i.us, %i.ea ; 2 uses
  %shift.7 = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fsub <2 x float> %i.eb, %shift.7
  %i.ec = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.ed = fcmp ult float %i.ec, 0.000000e+00
  br i1 %i.ed, label %..loopexit_crit_edge.us, label %.critedge

..loopexit_crit_edge.us:                          ; preds = %bb.al, %bb.am, %bb.ak, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge, label %bb.q, !llvm.loop !18

._crit_edge:                                      ; preds = %b2Normalize.exit.us.peel, %..loopexit_crit_edge.us, %..loopexit_crit_edge.us.peel
  %i.ee = tail call float @b2GetLengthUnitsPerMeter() #7
  %i.ef = fmul float %i.ee, 5.000000e-03
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %wide.trip.count125 = zext nneg i32 %smax to i64
  %exitcond126.not131 = icmp slt i32 %i.eg, 1
  br i1 %exitcond126.not131, label %.critedge, label %.lr.ph

bb.an:                                            ; preds = %b2Normalize.exit96
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %._crit_edge, %bb.an
  %indvars.iv122132 = phi i64 [ %indvars.iv.next123, %bb.an ], [ 0, %._crit_edge ] ; 3 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122132, 1 ; 3 uses
  %i.eh = trunc nuw i64 %indvars.iv.next123 to i32
  %i.ei = srem i32 %i.eh, %i.eg
  %i.ej = trunc i64 %indvars.iv122132 to i32
  %i.ek = add i32 %i.ej, 2
  %i.el = srem i32 %i.ek, %i.eg
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122132
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.em, align 4, !tbaa !9 ; 2 uses
  %i.en = zext nneg i32 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.eo, align 4, !tbaa !9
  %i.ep = zext nneg i32 %i.el to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ep
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.eq, align 4, !tbaa !9
  %i.er = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.09.0.copyload ; 3 uses
  %i.es = fmul <2 x float> %i.er, %i.er
  %i.et = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.es) ; 2 uses
  %i.eu = fcmp ogt float %i.et, f0x057A0000
  br i1 %i.eu, label %bb.ao, label %b2Normalize.exit96

bb.ao:                                            ; preds = %.lr.ph
  %i.ev = tail call float @sqrtf(float noundef %i.et) #7
  %i.ew = fdiv float 1.000000e+00, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.er, %i.ey
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit96

b2Normalize.exit96:                               ; preds = %.lr.ph, %bb.ao
  %.sroa.012.0.i93 = phi <2 x float> [ %i.fa, %bb.ao ], [ zeroinitializer, %.lr.ph ]
  %i.fb = fsub <2 x float> %.sroa.08.0.copyload, %.sroa.09.0.copyload
  %i.fc = fmul <2 x float> %i.fb, %.sroa.012.0.i93 ; 2 uses
  %shift135 = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fsub <2 x float> %i.fc, %shift135
  %i.fd = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.fe = fcmp ugt float %i.fd, %i.ef
  br i1 %i.fe, label %bb.an, label %b2Normalize.exit96..critedge.loopexit_crit_edge, !llvm.loop !19

b2Normalize.exit96..critedge.loopexit_crit_edge:  ; preds = %b2Normalize.exit96
  br label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.s, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.am, %bb.an, %._crit_edge, %b2Normalize.exit96..critedge.loopexit_crit_edge, %bb.a
  %.10 = phi i1 [ true, %bb.an ], [ false, %bb.a ], [ false, %b2Normalize.exit96..critedge.loopexit_crit_edge ], [ true, %._crit_edge ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
