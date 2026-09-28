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
  %.1128.lcssa = phi i32 [ 1, %.lr.ph232.preheader ], [ %.1128.1, %.loopexit.1 ], [ %.1128.2, %.loopexit.2 ], [ %.1128.3, %.loopexit.3 ], [ %.1128.4, %.loopexit.4 ], [ %.1128.5, %.loopexit.5 ], [ %.1128.6, %.loopexit.6 ], [ %i.gl, %.critedge.loopexit.7 ], [ %.1128.6, %.lr.ph.6.7 ], [ %.1128.6, %.lr.ph.5.7 ], [ %.1128.6, %.lr.ph.4.7 ], [ %.1128.6, %.lr.ph.3.7 ], [ %.1128.6, %.lr.ph.2.7 ], [ %.1128.6, %.lr.ph.1.7 ], [ %.1128.6, %.lr.ph232.7 ] ; 4 uses
  %.lcssa359 = phi <2 x float> [ %i.i, %.lr.ph232.preheader ], [ %11, %.loopexit.1 ], [ %i.q, %.loopexit.2 ], [ %i.ai, %.loopexit.3 ], [ %i.bf, %.loopexit.4 ], [ %i.ch, %.loopexit.5 ], [ %i.do, %.loopexit.6 ], [ %i.fa, %.lr.ph232.7 ], [ %i.fa, %.lr.ph.1.7 ], [ %i.fa, %.lr.ph.2.7 ], [ %i.fa, %.lr.ph.3.7 ], [ %i.fa, %.lr.ph.4.7 ], [ %i.fa, %.lr.ph.5.7 ], [ %i.fa, %.lr.ph.6.7 ], [ %i.fa, %.critedge.loopexit.7 ]
  %.lcssa358 = phi <2 x float> [ %i.k, %.lr.ph232.preheader ], [ %13, %.loopexit.1 ], [ %i.s, %.loopexit.2 ], [ %i.ak, %.loopexit.3 ], [ %i.bh, %.loopexit.4 ], [ %i.cj, %.loopexit.5 ], [ %i.dq, %.loopexit.6 ], [ %i.fc, %.lr.ph232.7 ], [ %i.fc, %.lr.ph.1.7 ], [ %i.fc, %.lr.ph.2.7 ], [ %i.fc, %.lr.ph.3.7 ], [ %i.fc, %.lr.ph.4.7 ], [ %i.fc, %.lr.ph.5.7 ], [ %i.fc, %.lr.ph.6.7 ], [ %i.fc, %.critedge.loopexit.7 ]
  %i.l = icmp slt i32 %.1128.lcssa, 3
  br i1 %i.l, label %bb.n, label %.new

.lr.ph232.1:                                      ; preds = %.lr.ph232.preheader
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load <2 x float>, ptr %8, align 4          ; 6 uses
  %10 = fcmp olt <2 x float> %i.i, %9
  %11 = select <2 x i1> %10, <2 x float> %i.i, <2 x float> %9 ; 3 uses
  %12 = fcmp ogt <2 x float> %i.k, %9
  %13 = select <2 x i1> %12, <2 x float> %i.k, <2 x float> %9 ; 3 uses
  %.sroa.079.0.copyload.1360 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %14 = fsub <2 x float> %.sroa.079.0.copyload.1360, %9 ; 2 uses
  %15 = fmul <2 x float> %14, %14
  %16 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %15)
  %17 = fcmp uge float %16, %i.f
  br i1 %17, label %.critedge.loopexit.1, label %.loopexit.1

.critedge.loopexit.1:                             ; preds = %.lr.ph232.1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %9, ptr %i.m, align 8, !tbaa !9
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph232.1, %.critedge.loopexit.1
  %.1128.1 = phi i32 [ 2, %.critedge.loopexit.1 ], [ 1, %.lr.ph232.1 ] ; 5 uses
  %exitcond276.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond276.not.1, label %._crit_edge, label %.lr.ph232.2

.lr.ph232.2:                                      ; preds = %.loopexit.1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 7 uses
  %i.p = fcmp olt <2 x float> %11, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %11, <2 x float> %i.o ; 3 uses
  %i.r = fcmp ogt <2 x float> %13, %i.o
  %i.s = select <2 x i1> %i.r, <2 x float> %13, <2 x float> %i.o ; 3 uses
  %.sroa.079.0.copyload.2363 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.t = fsub <2 x float> %.sroa.079.0.copyload.2363, %i.o ; 2 uses
  %i.u = fmul <2 x float> %i.t, %i.t
  %i.v = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.u)
  %i.w = fcmp uge float %i.v, %i.f
  br i1 %i.w, label %.lr.ph.1.2, label %.loopexit.2

.lr.ph.1.2:                                       ; preds = %.lr.ph232.2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.2 = load <2 x float>, ptr %i.x, align 4, !tbaa !9
  %i.y = fsub <2 x float> %.sroa.079.0.copyload.1.2, %i.o ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.y
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z)
  %i.ab = fcmp uge float %i.aa, %i.f
  br i1 %i.ab, label %.critedge.loopexit.2, label %.loopexit.2

.critedge.loopexit.2:                             ; preds = %.lr.ph.1.2
  %i.ac = add nuw nsw i32 %.1128.1, 1
  %i.ad = zext nneg i32 %.1128.1 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad
  store <2 x float> %i.o, ptr %i.ae, align 8, !tbaa !9
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.lr.ph232.2, %.lr.ph.1.2, %.critedge.loopexit.2
  %.1128.2 = phi i32 [ %i.ac, %.critedge.loopexit.2 ], [ %.1128.1, %.lr.ph.1.2 ], [ %.1128.1, %.lr.ph232.2 ] ; 6 uses
  %exitcond276.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond276.not.2, label %._crit_edge, label %.lr.ph232.3

.lr.ph232.3:                                      ; preds = %.loopexit.2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 8 uses
  %i.ah = fcmp olt <2 x float> %i.q, %i.ag
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.q, <2 x float> %i.ag ; 3 uses
  %i.aj = fcmp ogt <2 x float> %i.s, %i.ag
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.s, <2 x float> %i.ag ; 3 uses
  %.sroa.079.0.copyload.3366 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.al = fsub <2 x float> %.sroa.079.0.copyload.3366, %i.ag ; 2 uses
  %i.am = fmul <2 x float> %i.al, %i.al
  %i.an = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.am)
  %i.ao = fcmp uge float %i.an, %i.f
  br i1 %i.ao, label %.lr.ph.1.3, label %.loopexit.3

.lr.ph.1.3:                                       ; preds = %.lr.ph232.3
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.3 = load <2 x float>, ptr %i.ap, align 4, !tbaa !9
  %i.aq = fsub <2 x float> %.sroa.079.0.copyload.1.3, %i.ag ; 2 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar)
  %i.at = fcmp uge float %i.as, %i.f
  br i1 %i.at, label %.lr.ph.2.3, label %.loopexit.3

.lr.ph.2.3:                                       ; preds = %.lr.ph.1.3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.3 = load <2 x float>, ptr %i.au, align 4, !tbaa !9
  %i.av = fsub <2 x float> %.sroa.079.0.copyload.2.3, %i.ag ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw)
  %i.ay = fcmp uge float %i.ax, %i.f
  br i1 %i.ay, label %.critedge.loopexit.3, label %.loopexit.3

.critedge.loopexit.3:                             ; preds = %.lr.ph.2.3
  %i.az = add nsw i32 %.1128.2, 1
  %i.ba = sext i32 %.1128.2 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ba
  store <2 x float> %i.ag, ptr %i.bb, align 8, !tbaa !9
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.lr.ph232.3, %.lr.ph.1.3, %.lr.ph.2.3, %.critedge.loopexit.3
  %.1128.3 = phi i32 [ %i.az, %.critedge.loopexit.3 ], [ %.1128.2, %.lr.ph.2.3 ], [ %.1128.2, %.lr.ph.1.3 ], [ %.1128.2, %.lr.ph232.3 ] ; 7 uses
  %exitcond276.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond276.not.3, label %._crit_edge, label %.lr.ph232.4

.lr.ph232.4:                                      ; preds = %.loopexit.3
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load <2 x float>, ptr %i.bc, align 4    ; 9 uses
  %i.be = fcmp olt <2 x float> %i.ai, %i.bd
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.ai, <2 x float> %i.bd ; 3 uses
  %i.bg = fcmp ogt <2 x float> %i.ak, %i.bd
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.ak, <2 x float> %i.bd ; 3 uses
  %.sroa.079.0.copyload.4369 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.bi = fsub <2 x float> %.sroa.079.0.copyload.4369, %i.bd ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi
  %i.bk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bj)
  %i.bl = fcmp uge float %i.bk, %i.f
  br i1 %i.bl, label %.lr.ph.1.4, label %.loopexit.4

.lr.ph.1.4:                                       ; preds = %.lr.ph232.4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.4 = load <2 x float>, ptr %i.bm, align 4, !tbaa !9
  %i.bn = fsub <2 x float> %.sroa.079.0.copyload.1.4, %i.bd ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo)
  %i.bq = fcmp uge float %i.bp, %i.f
  br i1 %i.bq, label %.lr.ph.2.4, label %.loopexit.4

.lr.ph.2.4:                                       ; preds = %.lr.ph.1.4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.4 = load <2 x float>, ptr %i.br, align 4, !tbaa !9
  %i.bs = fsub <2 x float> %.sroa.079.0.copyload.2.4, %i.bd ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt)
  %i.bv = fcmp uge float %i.bu, %i.f
  br i1 %i.bv, label %.lr.ph.3.4, label %.loopexit.4

.lr.ph.3.4:                                       ; preds = %.lr.ph.2.4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.4 = load <2 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bx = fsub <2 x float> %.sroa.079.0.copyload.3.4, %i.bd ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by)
  %i.ca = fcmp uge float %i.bz, %i.f
  br i1 %i.ca, label %.critedge.loopexit.4, label %.loopexit.4

.critedge.loopexit.4:                             ; preds = %.lr.ph.3.4
  %i.cb = add nsw i32 %.1128.3, 1
  %i.cc = sext i32 %.1128.3 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cc
  store <2 x float> %i.bd, ptr %i.cd, align 8, !tbaa !9
  br label %.loopexit.4

.loopexit.4:                                      ; preds = %.lr.ph232.4, %.lr.ph.1.4, %.lr.ph.2.4, %.lr.ph.3.4, %.critedge.loopexit.4
  %.1128.4 = phi i32 [ %i.cb, %.critedge.loopexit.4 ], [ %.1128.3, %.lr.ph.3.4 ], [ %.1128.3, %.lr.ph.2.4 ], [ %.1128.3, %.lr.ph.1.4 ], [ %.1128.3, %.lr.ph232.4 ] ; 8 uses
  %exitcond276.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond276.not.4, label %._crit_edge, label %.lr.ph232.5

.lr.ph232.5:                                      ; preds = %.loopexit.4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load <2 x float>, ptr %i.ce, align 4    ; 10 uses
  %i.cg = fcmp olt <2 x float> %i.bf, %i.cf
  %i.ch = select <2 x i1> %i.cg, <2 x float> %i.bf, <2 x float> %i.cf ; 3 uses
  %i.ci = fcmp ogt <2 x float> %i.bh, %i.cf
  %i.cj = select <2 x i1> %i.ci, <2 x float> %i.bh, <2 x float> %i.cf ; 3 uses
  %.sroa.079.0.copyload.5372 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.ck = fsub <2 x float> %.sroa.079.0.copyload.5372, %i.cf ; 2 uses
  %i.cl = fmul <2 x float> %i.ck, %i.ck
  %i.cm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cl)
  %i.cn = fcmp uge float %i.cm, %i.f
  br i1 %i.cn, label %.lr.ph.1.5, label %.loopexit.5

.lr.ph.1.5:                                       ; preds = %.lr.ph232.5
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.5 = load <2 x float>, ptr %i.co, align 4, !tbaa !9
  %i.cp = fsub <2 x float> %.sroa.079.0.copyload.1.5, %i.cf ; 2 uses
  %i.cq = fmul <2 x float> %i.cp, %i.cp
  %i.cr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cq)
  %i.cs = fcmp uge float %i.cr, %i.f
  br i1 %i.cs, label %.lr.ph.2.5, label %.loopexit.5

.lr.ph.2.5:                                       ; preds = %.lr.ph.1.5
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.5 = load <2 x float>, ptr %i.ct, align 4, !tbaa !9
  %i.cu = fsub <2 x float> %.sroa.079.0.copyload.2.5, %i.cf ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cu
  %i.cw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cv)
  %i.cx = fcmp uge float %i.cw, %i.f
  br i1 %i.cx, label %.lr.ph.3.5, label %.loopexit.5

.lr.ph.3.5:                                       ; preds = %.lr.ph.2.5
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.5 = load <2 x float>, ptr %i.cy, align 4, !tbaa !9
  %i.cz = fsub <2 x float> %.sroa.079.0.copyload.3.5, %i.cf ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz
  %i.db = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da)
  %i.dc = fcmp uge float %i.db, %i.f
  br i1 %i.dc, label %.lr.ph.4.5, label %.loopexit.5

.lr.ph.4.5:                                       ; preds = %.lr.ph.3.5
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.079.0.copyload.4.5 = load <2 x float>, ptr %i.dd, align 4, !tbaa !9
  %i.de = fsub <2 x float> %.sroa.079.0.copyload.4.5, %i.cf ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.df)
  %i.dh = fcmp uge float %i.dg, %i.f
  br i1 %i.dh, label %.critedge.loopexit.5, label %.loopexit.5

.critedge.loopexit.5:                             ; preds = %.lr.ph.4.5
  %i.di = add nsw i32 %.1128.4, 1
  %i.dj = sext i32 %.1128.4 to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dj
  store <2 x float> %i.cf, ptr %i.dk, align 8, !tbaa !9
  br label %.loopexit.5

.loopexit.5:                                      ; preds = %.lr.ph232.5, %.lr.ph.1.5, %.lr.ph.2.5, %.lr.ph.3.5, %.lr.ph.4.5, %.critedge.loopexit.5
  %.1128.5 = phi i32 [ %i.di, %.critedge.loopexit.5 ], [ %.1128.4, %.lr.ph.4.5 ], [ %.1128.4, %.lr.ph.3.5 ], [ %.1128.4, %.lr.ph.2.5 ], [ %.1128.4, %.lr.ph.1.5 ], [ %.1128.4, %.lr.ph232.5 ] ; 9 uses
  %exitcond276.not.5 = icmp eq i32 %2, 6
  br i1 %exitcond276.not.5, label %._crit_edge, label %.lr.ph232.6

.lr.ph232.6:                                      ; preds = %.loopexit.5
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dm = load <2 x float>, ptr %i.dl, align 4    ; 11 uses
  %i.dn = fcmp olt <2 x float> %i.ch, %i.dm
  %i.do = select <2 x i1> %i.dn, <2 x float> %i.ch, <2 x float> %i.dm ; 3 uses
  %i.dp = fcmp ogt <2 x float> %i.cj, %i.dm
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.cj, <2 x float> %i.dm ; 3 uses
  %.sroa.079.0.copyload.6375 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.dr = fsub <2 x float> %.sroa.079.0.copyload.6375, %i.dm ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %i.dr
  %i.dt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ds)
  %i.du = fcmp uge float %i.dt, %i.f
  br i1 %i.du, label %.lr.ph.1.6, label %.loopexit.6

.lr.ph.1.6:                                       ; preds = %.lr.ph232.6
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.6 = load <2 x float>, ptr %i.dv, align 4, !tbaa !9
  %i.dw = fsub <2 x float> %.sroa.079.0.copyload.1.6, %i.dm ; 2 uses
  %i.dx = fmul <2 x float> %i.dw, %i.dw
  %i.dy = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dx)
  %i.dz = fcmp uge float %i.dy, %i.f
  br i1 %i.dz, label %.lr.ph.2.6, label %.loopexit.6

.lr.ph.2.6:                                       ; preds = %.lr.ph.1.6
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.6 = load <2 x float>, ptr %i.ea, align 4, !tbaa !9
  %i.eb = fsub <2 x float> %.sroa.079.0.copyload.2.6, %i.dm ; 2 uses
  %i.ec = fmul <2 x float> %i.eb, %i.eb
  %i.ed = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ec)
  %i.ee = fcmp uge float %i.ed, %i.f
  br i1 %i.ee, label %.lr.ph.3.6, label %.loopexit.6

.lr.ph.3.6:                                       ; preds = %.lr.ph.2.6
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.6 = load <2 x float>, ptr %i.ef, align 4, !tbaa !9
  %i.eg = fsub <2 x float> %.sroa.079.0.copyload.3.6, %i.dm ; 2 uses
  %i.eh = fmul <2 x float> %i.eg, %i.eg
  %i.ei = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eh)
  %i.ej = fcmp uge float %i.ei, %i.f
  br i1 %i.ej, label %.lr.ph.4.6, label %.loopexit.6

.lr.ph.4.6:                                       ; preds = %.lr.ph.3.6
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.079.0.copyload.4.6 = load <2 x float>, ptr %i.ek, align 4, !tbaa !9
  %i.el = fsub <2 x float> %.sroa.079.0.copyload.4.6, %i.dm ; 2 uses
  %i.em = fmul <2 x float> %i.el, %i.el
  %i.en = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.em)
  %i.eo = fcmp uge float %i.en, %i.f
  br i1 %i.eo, label %.lr.ph.5.6, label %.loopexit.6

.lr.ph.5.6:                                       ; preds = %.lr.ph.4.6
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.079.0.copyload.5.6 = load <2 x float>, ptr %i.ep, align 4, !tbaa !9
  %i.eq = fsub <2 x float> %.sroa.079.0.copyload.5.6, %i.dm ; 2 uses
  %i.er = fmul <2 x float> %i.eq, %i.eq
  %i.es = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.er)
  %i.et = fcmp uge float %i.es, %i.f
  br i1 %i.et, label %.critedge.loopexit.6, label %.loopexit.6

.critedge.loopexit.6:                             ; preds = %.lr.ph.5.6
  %i.eu = add nsw i32 %.1128.5, 1
  %i.ev = sext i32 %.1128.5 to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ev
  store <2 x float> %i.dm, ptr %i.ew, align 8, !tbaa !9
  br label %.loopexit.6

.loopexit.6:                                      ; preds = %.lr.ph232.6, %.lr.ph.1.6, %.lr.ph.2.6, %.lr.ph.3.6, %.lr.ph.4.6, %.lr.ph.5.6, %.critedge.loopexit.6
  %.1128.6 = phi i32 [ %i.eu, %.critedge.loopexit.6 ], [ %.1128.5, %.lr.ph.5.6 ], [ %.1128.5, %.lr.ph.4.6 ], [ %.1128.5, %.lr.ph.3.6 ], [ %.1128.5, %.lr.ph.2.6 ], [ %.1128.5, %.lr.ph.1.6 ], [ %.1128.5, %.lr.ph232.6 ] ; 10 uses
  %exitcond276.not.6 = icmp eq i32 %2, 7
  br i1 %exitcond276.not.6, label %._crit_edge, label %.lr.ph232.7

.lr.ph232.7:                                      ; preds = %.loopexit.6
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ey = load <2 x float>, ptr %i.ex, align 4    ; 12 uses
  %i.ez = fcmp olt <2 x float> %i.do, %i.ey
  %i.fa = select <2 x i1> %i.ez, <2 x float> %i.do, <2 x float> %i.ey ; 8 uses
  %i.fb = fcmp ogt <2 x float> %i.dq, %i.ey
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.dq, <2 x float> %i.ey ; 8 uses
  %.sroa.079.0.copyload.7 = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.fd = fsub <2 x float> %.sroa.079.0.copyload.7, %i.ey ; 2 uses
  %i.fe = fmul <2 x float> %i.fd, %i.fd
  %i.ff = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fe)
  %i.fg = fcmp uge float %i.ff, %i.f
  br i1 %i.fg, label %.lr.ph.1.7, label %._crit_edge

.lr.ph.1.7:                                       ; preds = %.lr.ph232.7
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.079.0.copyload.1.7 = load <2 x float>, ptr %i.fh, align 4, !tbaa !9
  %i.fi = fsub <2 x float> %.sroa.079.0.copyload.1.7, %i.ey ; 2 uses
  %i.fj = fmul <2 x float> %i.fi, %i.fi
  %i.fk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fj)
  %i.fl = fcmp uge float %i.fk, %i.f
  br i1 %i.fl, label %.lr.ph.2.7, label %._crit_edge

.lr.ph.2.7:                                       ; preds = %.lr.ph.1.7
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.079.0.copyload.2.7 = load <2 x float>, ptr %i.fm, align 4, !tbaa !9
  %i.fn = fsub <2 x float> %.sroa.079.0.copyload.2.7, %i.ey ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.fn
  %i.fp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fo)
  %i.fq = fcmp uge float %i.fp, %i.f
  br i1 %i.fq, label %.lr.ph.3.7, label %._crit_edge

.lr.ph.3.7:                                       ; preds = %.lr.ph.2.7
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.079.0.copyload.3.7 = load <2 x float>, ptr %i.fr, align 4, !tbaa !9
  %i.fs = fsub <2 x float> %.sroa.079.0.copyload.3.7, %i.ey ; 2 uses
  %i.ft = fmul <2 x float> %i.fs, %i.fs
  %i.fu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ft)
  %i.fv = fcmp uge float %i.fu, %i.f
  br i1 %i.fv, label %.lr.ph.4.7, label %._crit_edge

.lr.ph.4.7:                                       ; preds = %.lr.ph.3.7
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.079.0.copyload.4.7 = load <2 x float>, ptr %i.fw, align 4, !tbaa !9
  %i.fx = fsub <2 x float> %.sroa.079.0.copyload.4.7, %i.ey ; 2 uses
  %i.fy = fmul <2 x float> %i.fx, %i.fx
  %i.fz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fy)
  %i.ga = fcmp uge float %i.fz, %i.f
  br i1 %i.ga, label %.lr.ph.5.7, label %._crit_edge

.lr.ph.5.7:                                       ; preds = %.lr.ph.4.7
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.079.0.copyload.5.7 = load <2 x float>, ptr %i.gb, align 4, !tbaa !9
  %i.gc = fsub <2 x float> %.sroa.079.0.copyload.5.7, %i.ey ; 2 uses
  %i.gd = fmul <2 x float> %i.gc, %i.gc
  %i.ge = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gd)
  %i.gf = fcmp uge float %i.ge, %i.f
  br i1 %i.gf, label %.lr.ph.6.7, label %._crit_edge

.lr.ph.6.7:                                       ; preds = %.lr.ph.5.7
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.079.0.copyload.6.7 = load <2 x float>, ptr %i.gg, align 4, !tbaa !9
  %i.gh = fsub <2 x float> %.sroa.079.0.copyload.6.7, %i.ey ; 2 uses
  %i.gi = fmul <2 x float> %i.gh, %i.gh
  %i.gj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gi)
  %i.gk = fcmp uge float %i.gj, %i.f
  br i1 %i.gk, label %.critedge.loopexit.7, label %._crit_edge

.critedge.loopexit.7:                             ; preds = %.lr.ph.6.7
  %i.gl = add nsw i32 %.1128.6, 1
  %i.gm = sext i32 %.1128.6 to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gm
  store <2 x float> %i.ey, ptr %i.gn, align 8, !tbaa !9
  br label %._crit_edge

.new:                                             ; preds = %._crit_edge
  %i.go = fadd <2 x float> %.lcssa359, %.lcssa358
  %i.gp = fmul <2 x float> %i.go, splat (float 5.000000e-01) ; 4 uses
  %wide.trip.count = zext nneg i32 %.1128.lcssa to i64
  %i.gq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.gq, 1
  %i.gr = load <2 x float>, ptr %3, align 16
  %i.gs = fsub <2 x float> %i.gr, %i.gp           ; 2 uses
  %i.gt = fmul <2 x float> %i.gs, %i.gs           ; 2 uses
  %shift = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gt, %shift
  %i.gu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %unroll_iter = and i64 %i.gq, -2
  br label %bb.b

.lr.ph242.preheader.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph242.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph242.preheader.unr-lcssa
  %lcmp.mod378 = trunc i64 %i.gq to i1
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next278.1
  %i.gw = load <2 x float>, ptr %i.gv, align 8
  %i.gx = fsub <2 x float> %i.gw, %i.gp           ; 2 uses
  %i.gy = fmul <2 x float> %i.gx, %i.gx
  %i.gz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gy)
  %i.ha = fcmp ogt float %i.gz, %.1140.1
  %i.hb = trunc nuw nsw i64 %indvars.iv.next278.1 to i32
  %.1142.epil = select i1 %i.ha, i32 %i.hb, i32 %.1142.1
  br label %.lr.ph242.preheader

.lr.ph242.preheader:                              ; preds = %.lr.ph242.preheader.unr-lcssa, %.epil.preheader
  %.1142.lcssa = phi i32 [ %.1142.1, %.lr.ph242.preheader.unr-lcssa ], [ %.1142.epil, %.epil.preheader ]
  %i.hc = zext nneg i32 %.1142.lcssa to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hc ; 2 uses
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.hd, align 8, !tbaa !9 ; 9 uses
  %i.he = add nsw i32 %.1128.lcssa, -1            ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !9
  store i64 %i.hh, ptr %i.hd, align 8, !tbaa !9
  %i.hi = load <2 x float>, ptr %3, align 16
  %i.hj = fsub <2 x float> %i.hi, %.sroa.059.0.copyload ; 2 uses
  %i.hk = fmul <2 x float> %i.hj, %i.hj           ; 2 uses
  %shift345 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop346 = fadd <2 x float> %i.hk, %shift345
  %i.hl = extractelement <2 x float> %foldExtExtBinop346, i64 0 ; 2 uses
  %i.hm = add nsw i64 %i.hf, -1                   ; 3 uses
  %xtraiter379 = and i64 %i.hm, 1
  %i.hn = icmp eq i32 %i.he, 2
  br i1 %i.hn, label %.lr.ph242.epil.preheader, label %.lr.ph242.preheader.new

.lr.ph242.preheader.new:                          ; preds = %.lr.ph242.preheader
  %unroll_iter383 = and i64 %i.hm, -2
  br label %.lr.ph242

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv277 = phi i64 [ 1, %.new ], [ %indvars.iv.next278.1, %bb.b ] ; 4 uses
  %.0139236 = phi float [ %i.gu, %.new ], [ %.1140.1, %bb.b ] ; 2 uses
  %.0141235 = phi i32 [ 0, %.new ], [ %.1142.1, %bb.b ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv277
  %i.hp = load <2 x float>, ptr %i.ho, align 8
  %i.hq = fsub <2 x float> %i.hp, %i.gp           ; 2 uses
  %i.hr = fmul <2 x float> %i.hq, %i.hq
  %i.hs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hr) ; 2 uses
  %i.ht = fcmp ogt float %i.hs, %.0139236         ; 2 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv277 to i32
  %.1142 = select i1 %i.ht, i32 %i.hu, i32 %.0141235
  %.1140 = select i1 %i.ht, float %i.hs, float %.0139236 ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next278
  %i.hw = load <2 x float>, ptr %i.hv, align 8
  %i.hx = fsub <2 x float> %i.hw, %i.gp           ; 2 uses
  %i.hy = fmul <2 x float> %i.hx, %i.hx
  %i.hz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hy) ; 2 uses
  %i.ia = fcmp ogt float %i.hz, %.1140            ; 2 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.next278 to i32
  %.1142.1 = select i1 %i.ia, i32 %i.ib, i32 %.1142 ; 3 uses
  %.1140.1 = select i1 %i.ia, float %i.hz, float %.1140 ; 2 uses
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph242.preheader.unr-lcssa, label %bb.b, !llvm.loop !13

._crit_edge243.unr-lcssa:                         ; preds = %.lr.ph242
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %._crit_edge243, label %.lr.ph242.epil.preheader

.lr.ph242.epil.preheader:                         ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.preheader
  %indvars.iv281.epil.init = phi i64 [ 1, %.lr.ph242.preheader ], [ %indvars.iv.next282.1, %._crit_edge243.unr-lcssa ] ; 2 uses
  %.0134239.epil.init = phi float [ %i.hl, %.lr.ph242.preheader ], [ %.1135.1, %._crit_edge243.unr-lcssa ]
  %.0136238.epil.init = phi i32 [ 0, %.lr.ph242.preheader ], [ %.1137.1, %._crit_edge243.unr-lcssa ]
  %lcmp.mod382 = trunc i64 %i.hm to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.epil.init
  %i.id = load <2 x float>, ptr %i.ic, align 8
  %i.ie = fsub <2 x float> %i.id, %.sroa.059.0.copyload ; 2 uses
  %i.if = fmul <2 x float> %i.ie, %i.ie
  %i.ig = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.if)
  %i.ih = fcmp ogt float %i.ig, %.0134239.epil.init
  %i.ii = trunc nuw nsw i64 %indvars.iv281.epil.init to i32
  %.1137.epil = select i1 %i.ih, i32 %i.ii, i32 %.0136238.epil.init
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge243.unr-lcssa, %.lr.ph242.epil.preheader
  %.1137.lcssa = phi i32 [ %.1137.1, %._crit_edge243.unr-lcssa ], [ %.1137.epil, %.lr.ph242.epil.preheader ]
  %i.ij = zext nneg i32 %.1137.lcssa to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ij ; 2 uses
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.ik, align 8, !tbaa !9 ; 4 uses
  %i.il = add nsw i32 %.1128.lcssa, -2            ; 2 uses
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !9
  store i64 %i.io, ptr %i.ik, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ip = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.059.0.copyload ; 3 uses
  %i.iq = fmul <2 x float> %i.ip, %i.ip
  %i.ir = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.iq) ; 2 uses
  %i.is = fcmp ogt float %i.ir, f0x057A0000
  br i1 %i.is, label %bb.c, label %.lr.ph248

bb.c:                                             ; preds = %._crit_edge243
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.ir)
  %i.it = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.iu = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.ip, %i.iv
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.c, %._crit_edge243
  %.sroa.012.0.i = phi <2 x float> [ %i.ix, %bb.c ], [ zeroinitializer, %._crit_edge243 ]
  %i.iy = fmul float %i.d, 2.000000e+00
  %i.iz = fmul float %i.d, -2.000000e+00
  %wide.trip.count289 = zext nneg i32 %i.il to i64
  br label %bb.d

.lr.ph242:                                        ; preds = %.lr.ph242, %.lr.ph242.preheader.new
  %indvars.iv281 = phi i64 [ 1, %.lr.ph242.preheader.new ], [ %indvars.iv.next282.1, %.lr.ph242 ] ; 4 uses
  %.0134239 = phi float [ %i.hl, %.lr.ph242.preheader.new ], [ %.1135.1, %.lr.ph242 ] ; 2 uses
  %.0136238 = phi i32 [ 0, %.lr.ph242.preheader.new ], [ %.1137.1, %.lr.ph242 ]
  %niter384 = phi i64 [ 0, %.lr.ph242.preheader.new ], [ %niter384.next.1, %.lr.ph242 ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281
  %i.jb = load <2 x float>, ptr %i.ja, align 8
  %i.jc = fsub <2 x float> %i.jb, %.sroa.059.0.copyload ; 2 uses
  %i.jd = fmul <2 x float> %i.jc, %i.jc
  %i.je = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jd) ; 2 uses
  %i.jf = fcmp ogt float %i.je, %.0134239         ; 2 uses
  %i.jg = trunc nuw nsw i64 %indvars.iv281 to i32
  %.1137 = select i1 %i.jf, i32 %i.jg, i32 %.0136238
  %.1135 = select i1 %i.jf, float %i.je, float %.0134239 ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next282
  %i.ji = load <2 x float>, ptr %i.jh, align 8
  %i.jj = fsub <2 x float> %i.ji, %.sroa.059.0.copyload ; 2 uses
  %i.jk = fmul <2 x float> %i.jj, %i.jj
  %i.jl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jk) ; 2 uses
  %i.jm = fcmp ogt float %i.jl, %.1135            ; 2 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv.next282 to i32
  %.1137.1 = select i1 %i.jm, i32 %i.jn, i32 %.1137 ; 3 uses
  %.1135.1 = select i1 %i.jm, float %i.jl, float %.1135 ; 2 uses
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %niter384.next.1 = add nuw i64 %niter384, 2     ; 2 uses
  %niter384.ncmp.1 = icmp eq i64 %niter384.next.1, %unroll_iter383
  br i1 %niter384.ncmp.1, label %._crit_edge243.unr-lcssa, label %.lr.ph242, !llvm.loop !14

._crit_edge249:                                   ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %6, <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.045.0.copyload, ptr noundef %4, i32 noundef %.1132)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call fastcc void @b2RecurseHull(ptr dead_on_unwind noalias writable align 4 %7, <2 x float> %.sroa.045.0.copyload, <2 x float> %.sroa.059.0.copyload, ptr noundef %5, i32 noundef %.1130)
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !12 ; 4 uses
  %i.jq = icmp eq i32 %i.jp, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.js = load i32, ptr %i.jr, align 4            ; 4 uses
  %i.jt = icmp eq i32 %i.js, 0
  %or.cond5 = select i1 %i.jq, i1 %i.jt, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.i

bb.d:                                             ; preds = %.lr.ph248, %bb.h
  %indvars.iv286 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next287, %bb.h ] ; 2 uses
  %.0129246 = phi i32 [ 0, %.lr.ph248 ], [ %.1130, %bb.h ] ; 4 uses
  %.0131245 = phi i32 [ 0, %.lr.ph248 ], [ %.1132, %bb.h ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv286
  %i.jv = load <2 x float>, ptr %i.ju, align 8    ; 2 uses
  %i.jw = fsub <2 x float> %i.jv, %.sroa.059.0.copyload
  %i.jx = fmul <2 x float> %.sroa.012.0.i, %i.jw  ; 2 uses
  %shift348 = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fsub <2 x float> %i.jx, %shift348
  %i.jy = extractelement <2 x float> %foldExtExtBinop349, i64 0 ; 2 uses
  %i.jz = fcmp ult float %i.jy, %i.iy
  br i1 %i.jz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ka = add nsw i32 %.0131245, 1
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@b2ComputeHull:bb.a
  %i.mf = phi i1 [ true, %.thread ], [ false, %.preheader222 ], [ false, %bb.k ]
  %i.mg = phi i32 [ %i.lx, %.thread ], [ %i.kw, %.preheader222 ], [ %i.kw, %bb.k ] ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 2
  %i.mi = and i1 %i.mf, %i.mh
  br i1 %i.mi, label %.preheader222, label %._crit_edge266, !llvm.loop !16

._crit_edge266:                                   ; preds = %.loopexit329
  %i.mj = icmp slt i32 %i.mg, 3
  br i1 %i.mj, label %._crit_edge266.thread, label %bb.m

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
  br i1 %cond, label %._crit_edge, label %1

1:                                                ; preds = %b2Normalize.exit.us.peel
  br i1 %.not, label %2, label %bb.c

bb.c:                                             ; preds = %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 4
  %i.t = fsub <2 x float> %i.s, %.sroa.028.0.copyload.us.peel
  %i.u = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.t ; 2 uses
  %shift.1.peel = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1.peel = fsub <2 x float> %i.u, %shift.1.peel
  %i.v = extractelement <2 x float> %foldExtExtBinop.1.peel, i64 0
  %i.w = fcmp ult float %i.v, 0.000000e+00
  br i1 %i.w, label %2, label %.critedge

2:                                                ; preds = %bb.c, %1
  %cond142 = icmp eq i32 %i.b, 2
  br i1 %cond142, label %.lr.ph115.peel.newph, label %bb.d

bb.d:                                             ; preds = %2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load <2 x float>, ptr %i.x, align 4
  %i.z = fsub <2 x float> %i.y, %.sroa.028.0.copyload.us.peel
  %i.aa = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.z ; 2 uses
  %shift.2.peel = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2.peel = fsub <2 x float> %i.aa, %shift.2.peel
  %i.ab = extractelement <2 x float> %foldExtExtBinop.2.peel, i64 0
  %i.ac = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %cond143 = icmp eq i32 %i.b, 3
  br i1 %cond143, label %.lr.ph115.peel.newph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = fsub <2 x float> %i.ae, %.sroa.028.0.copyload.us.peel
  %i.ag = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.af ; 2 uses
  %shift.3.peel = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3.peel = fsub <2 x float> %i.ag, %shift.3.peel
  %i.ah = extractelement <2 x float> %foldExtExtBinop.3.peel, i64 0
  %i.ai = fcmp ult float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %cond144 = icmp eq i32 %i.b, 4
  br i1 %cond144, label %.lr.ph115.peel.newph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = fsub <2 x float> %i.ak, %.sroa.028.0.copyload.us.peel
  %i.am = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.al ; 2 uses
  %shift.4.peel = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4.peel = fsub <2 x float> %i.am, %shift.4.peel
  %i.an = extractelement <2 x float> %foldExtExtBinop.4.peel, i64 0
  %i.ao = fcmp ult float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %cond145 = icmp eq i32 %i.b, 5
  br i1 %cond145, label %.lr.ph115.peel.newph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = fsub <2 x float> %i.aq, %.sroa.028.0.copyload.us.peel
  %i.as = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ar ; 2 uses
  %shift.5.peel = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5.peel = fsub <2 x float> %i.as, %shift.5.peel
  %i.at = extractelement <2 x float> %foldExtExtBinop.5.peel, i64 0
  %i.au = fcmp ult float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %cond146 = icmp eq i32 %i.b, 6
  br i1 %cond146, label %.lr.ph115.peel.newph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load <2 x float>, ptr %i.av, align 4
  %i.ax = fsub <2 x float> %i.aw, %.sroa.028.0.copyload.us.peel
  %i.ay = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.ax ; 2 uses
  %shift.6.peel = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6.peel = fsub <2 x float> %i.ay, %shift.6.peel
  %i.az = extractelement <2 x float> %foldExtExtBinop.6.peel, i64 0
  %i.ba = fcmp ult float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %cond147 = icmp eq i32 %i.b, 7
  br i1 %cond147, label %.lr.ph115.peel.newph, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load <2 x float>, ptr %i.bb, align 4
  %i.bd = fsub <2 x float> %i.bc, %.sroa.028.0.copyload.us.peel
  %i.be = fmul <2 x float> %.sroa.012.0.i.us.peel, %i.bd ; 2 uses
  %shift.7.peel = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7.peel = fsub <2 x float> %i.be, %shift.7.peel
  %i.bf = extractelement <2 x float> %foldExtExtBinop.7.peel, i64 0
  %i.bg = fcmp ult float %i.bf, 0.000000e+00
  br i1 %i.bg, label %..loopexit_crit_edge.us.peel, label %.critedge

..loopexit_crit_edge.us.peel:                     ; preds = %bb.n
  %exitcond122.not.peel = icmp eq i32 %i.b, 1
  br i1 %exitcond122.not.peel, label %._crit_edge, label %.lr.ph115.peel.newph

.lr.ph115.peel.newph:                             ; preds = %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %2, %..loopexit_crit_edge.us.peel
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
  br label %bb.o

bb.o:                                             ; preds = %..loopexit_crit_edge.us, %.lr.ph115.peel.newph
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
  br i1 %i.bv, label %bb.p, label %b2Normalize.exit.us

bb.p:                                             ; preds = %bb.o
  %sqrt.i.us = tail call nnan float @llvm.sqrt.f32(float %i.bu)
  %i.bw = fdiv nnan float 1.000000e+00, %sqrt.i.us
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bs, %i.by
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.us

b2Normalize.exit.us:                              ; preds = %bb.o, %bb.p
  %.sroa.012.0.i.us = phi <2 x float> [ %i.ca, %bb.p ], [ zeroinitializer, %bb.o ] ; 8 uses
  br i1 %.not141, label %bb.q, label %bb.r

bb.q:                                             ; preds = %b2Normalize.exit.us
  %i.cb = load <2 x float>, ptr %0, align 4
  %i.cc = fsub <2 x float> %i.cb, %.sroa.028.0.copyload.us
  %i.cd = fmul <2 x float> %.sroa.012.0.i.us, %i.cc ; 2 uses
  %shift = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cd, %shift
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cf = fcmp ult float %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.r, label %.critedge

bb.r:                                             ; preds = %b2Normalize.exit.us, %bb.q
  %i.cg = icmp eq i64 %indvars.iv118, 1
  br i1 %i.cg, label %3, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load <2 x float>, ptr %i.bh, align 4
  %i.ci = fsub <2 x float> %i.ch, %.sroa.028.0.copyload.us
  %i.cj = fmul <2 x float> %.sroa.012.0.i.us, %i.ci ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub <2 x float> %i.cj, %shift.1
  %i.ck = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.cl = fcmp ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %3, label %.critedge

3:                                                ; preds = %bb.s, %bb.r
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %bb.t

bb.t:                                             ; preds = %3
  %i.cm = icmp eq i64 %indvars.iv118, 2
  %i.cn = icmp eq i64 %i.bp, 2
  %or.cond72.us.2 = or i1 %i.cm, %i.cn
  br i1 %or.cond72.us.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load <2 x float>, ptr %i.bi, align 4
  %i.cp = fsub <2 x float> %i.co, %.sroa.028.0.copyload.us
  %i.cq = fmul <2 x float> %.sroa.012.0.i.us, %i.cp ; 2 uses
  %shift.2 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fsub <2 x float> %i.cq, %shift.2
  %i.cr = extractelement <2 x float> %foldExtExtBinop.2, i64 0
  %i.cs = fcmp ult float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %exitcond.not.2, label %..loopexit_crit_edge.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp eq i64 %indvars.iv118, 3
  %i.cu = icmp eq i64 %i.bp, 3
  %or.cond72.us.3 = or i1 %i.ct, %i.cu
  br i1 %or.cond72.us.3, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load <2 x float>, ptr %i.bj, align 4
  %i.cw = fsub <2 x float> %i.cv, %.sroa.028.0.copyload.us
  %i.cx = fmul <2 x float> %.sroa.012.0.i.us, %i.cw ; 2 uses
  %shift.3 = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fsub <2 x float> %i.cx, %shift.3
  %i.cy = extractelement <2 x float> %foldExtExtBinop.3, i64 0
  %i.cz = fcmp ult float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp eq i64 %indvars.iv118, 4
  %i.db = icmp eq i64 %i.bp, 4
  %or.cond72.us.4 = or i1 %i.da, %i.db
  br i1 %or.cond72.us.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = load <2 x float>, ptr %i.bk, align 4
  %i.dd = fsub <2 x float> %i.dc, %.sroa.028.0.copyload.us
  %i.de = fmul <2 x float> %.sroa.012.0.i.us, %i.dd ; 2 uses
  %shift.4 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.4 = fsub <2 x float> %i.de, %shift.4
  %i.df = extractelement <2 x float> %foldExtExtBinop.4, i64 0
  %i.dg = fcmp ult float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %exitcond.not.4, label %..loopexit_crit_edge.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = icmp eq i64 %indvars.iv118, 5
  %i.di = icmp eq i64 %i.bp, 5
  %or.cond72.us.5 = or i1 %i.dh, %i.di
  br i1 %or.cond72.us.5, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load <2 x float>, ptr %i.bl, align 4
  %i.dk = fsub <2 x float> %i.dj, %.sroa.028.0.copyload.us
  %i.dl = fmul <2 x float> %.sroa.012.0.i.us, %i.dk ; 2 uses
  %shift.5 = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.5 = fsub <2 x float> %i.dl, %shift.5
  %i.dm = extractelement <2 x float> %foldExtExtBinop.5, i64 0
  %i.dn = fcmp ult float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %exitcond.not.5, label %..loopexit_crit_edge.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = icmp eq i64 %indvars.iv118, 6
  %i.dp = icmp eq i64 %i.bp, 6
  %or.cond72.us.6 = or i1 %i.do, %i.dp
  br i1 %or.cond72.us.6, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = load <2 x float>, ptr %i.bm, align 4
  %i.dr = fsub <2 x float> %i.dq, %.sroa.028.0.copyload.us
  %i.ds = fmul <2 x float> %.sroa.012.0.i.us, %i.dr ; 2 uses
  %shift.6 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.6 = fsub <2 x float> %i.ds, %shift.6
  %i.dt = extractelement <2 x float> %foldExtExtBinop.6, i64 0
  %i.du = fcmp ult float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %exitcond.not.6, label %..loopexit_crit_edge.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = icmp eq i64 %indvars.iv118, 7
  %i.dw = icmp eq i64 %i.bp, 7
  %or.cond72.us.7 = or i1 %i.dv, %i.dw
  br i1 %or.cond72.us.7, label %..loopexit_crit_edge.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = load <2 x float>, ptr %i.bn, align 4
  %i.dy = fsub <2 x float> %i.dx, %.sroa.028.0.copyload.us
  %i.dz = fmul <2 x float> %.sroa.012.0.i.us, %i.dy ; 2 uses
  %shift.7 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.7 = fsub <2 x float> %i.dz, %shift.7
  %i.ea = extractelement <2 x float> %foldExtExtBinop.7, i64 0
  %i.eb = fcmp ult float %i.ea, 0.000000e+00
  br i1 %i.eb, label %..loopexit_crit_edge.us, label %.critedge

..loopexit_crit_edge.us:                          ; preds = %bb.ai, %bb.aj, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %3
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %bb.o, !llvm.loop !18

._crit_edge:                                      ; preds = %b2Normalize.exit.us.peel, %..loopexit_crit_edge.us, %..loopexit_crit_edge.us.peel
  %i.ec = tail call float @b2GetLengthUnitsPerMeter() #6
  %i.ed = fmul float %i.ec, 5.000000e-03
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %wide.trip.count126 = zext nneg i32 %smax to i64
  %exitcond127.not132 = icmp slt i32 %i.ee, 1
  br i1 %exitcond127.not132, label %.critedge, label %.lr.ph

bb.ak:                                            ; preds = %b2Normalize.exit97
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %._crit_edge, %bb.ak
  %indvars.iv123133 = phi i64 [ %indvars.iv.next124, %bb.ak ], [ 0, %._crit_edge ] ; 3 uses
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
  br i1 %i.es, label %bb.al, label %b2Normalize.exit97

bb.al:                                            ; preds = %.lr.ph
  %sqrt.i94 = tail call nnan float @llvm.sqrt.f32(float %i.er)
  %i.et = fdiv nnan float 1.000000e+00, %sqrt.i94
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.ep, %i.ev
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit97

b2Normalize.exit97:                               ; preds = %.lr.ph, %bb.al
  %.sroa.012.0.i93 = phi <2 x float> [ %i.ex, %bb.al ], [ zeroinitializer, %.lr.ph ]
  %i.ey = fsub <2 x float> %.sroa.08.0.copyload, %.sroa.09.0.copyload
  %i.ez = fmul <2 x float> %i.ey, %.sroa.012.0.i93 ; 2 uses
  %shift136 = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fsub <2 x float> %i.ez, %shift136
  %i.fa = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.fb = fcmp ugt float %i.fa, %i.ed
  br i1 %i.fb, label %bb.ak, label %b2Normalize.exit97..critedge.loopexit_crit_edge, !llvm.loop !19

b2Normalize.exit97..critedge.loopexit_crit_edge:  ; preds = %b2Normalize.exit97
  br label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.q, %bb.s, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.ak, %._crit_edge, %b2Normalize.exit97..critedge.loopexit_crit_edge, %bb.a
  %.10 = phi i1 [ true, %bb.ak ], [ false, %bb.a ], [ false, %b2Normalize.exit97..critedge.loopexit_crit_edge ], [ true, %._crit_edge ], [ false, %bb.aj ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.c ]
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
