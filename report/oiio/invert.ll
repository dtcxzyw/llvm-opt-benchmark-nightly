inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_matrix_inversion_f(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %2, 4
  %i.b = zext i32 %i.a to i64
  %i.c = tail call ptr @opj_malloc(i64 noundef %i.b) #6 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %2, 2
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %i.f, i1 false)
  %i.h = add i32 %2, -1                           ; 4 uses
  %.not138.i = icmp eq i32 %2, 0
  br i1 %.not138.i, label %.lr.ph133.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = shl nuw nsw i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.n, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader75

.lr.ph.i.preheader75:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.091105.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  %.097104.i.ph = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %middle.block
  %.not139.i = icmp eq i32 %i.h, 0
  br i1 %.not139.i, label %.lr.ph.i28, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.preheader.i, %bb.b
  %i.p = zext i32 %2 to i64                       ; 7 uses
  %wide.trip.count.i = zext i32 %i.h to i64
  %i.q = add i32 %2, -2                           ; 2 uses
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader75, %.lr.ph.i
  %.091105.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.091105.i.ph, %.lr.ph.i.preheader75 ] ; 2 uses
  %.097104.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.097104.i.ph, %.lr.ph.i.preheader75 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.097104.i, i64 4
  store i32 %.091105.i, ptr %.097104.i, align 4, !tbaa !3
  %i.s = add nuw i32 %.091105.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.s, %2
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

bb.c:                                             ; preds = %._crit_edge126.split.us.i, %.lr.ph133.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next.i, %._crit_edge126.split.us.i ] ; 10 uses
  %.0132.i = phi i32 [ %i.h, %.lr.ph133.i ], [ %i.di, %._crit_edge126.split.us.i ] ; 2 uses
  %.082131.i = phi i32 [ 1, %.lr.ph133.i ], [ %i.dh, %._crit_edge126.split.us.i ] ; 6 uses
  %.086130.i = phi ptr [ %0, %.lr.ph133.i ], [ %i.dj, %._crit_edge126.split.us.i ] ; 5 uses
  %.094128.i = phi i32 [ 0, %.lr.ph133.i ], [ %.296.i.lcssa, %._crit_edge126.split.us.i ] ; 2 uses
  %.198127.i = phi ptr [ %i.c, %.lr.ph133.i ], [ %i.dk, %._crit_edge126.split.us.i ] ; 4 uses
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = trunc i64 %indvars.iv.i to i32
  %i.v = sub i32 %i.q, %i.u                       ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = trunc i64 %indvars.iv.i to i32
  %i.z = sub i32 %i.q, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.086130.i, i64 %indvars.iv.i ; 6 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.p
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph110.preheader.i

.lr.ph110.preheader.i:                            ; preds = %bb.c
  %i.ad = trunc i64 %indvars.iv.i to i32
  %i.ae = sub i32 %2, %i.ad
  %i.af = trunc nuw i64 %indvars.iv.i to i32      ; 4 uses
  %xtraiter = and i32 %i.ae, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph110.i.prol.loopexit, label %.lr.ph110.i.prol

.lr.ph110.i.prol:                                 ; preds = %.lr.ph110.preheader.i
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  %i.ai = fneg float %i.ag
  %i.aj = select i1 %i.ah, float %i.ag, float %i.ai ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00      ; 2 uses
  %.296.i.prol = select i1 %i.ak, i32 %i.af, i32 %.094128.i ; 2 uses
  %.188.i.prol = select i1 %i.ak, float %i.aj, float 0.000000e+00 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.p
  %i.am = add nuw i32 %i.af, 1
  br label %.lr.ph110.i.prol.loopexit

.lr.ph110.i.prol.loopexit:                        ; preds = %.lr.ph110.i.prol, %.lr.ph110.preheader.i
  %.296.i.lcssa.unr = phi i32 [ poison, %.lr.ph110.preheader.i ], [ %.296.i.prol, %.lr.ph110.i.prol ]
  %.188.i.lcssa.unr = phi float [ poison, %.lr.ph110.preheader.i ], [ %.188.i.prol, %.lr.ph110.i.prol ]
  %.084109.i.unr = phi ptr [ %i.ac, %.lr.ph110.preheader.i ], [ %i.al, %.lr.ph110.i.prol ]
  %.087108.i.unr = phi float [ 0.000000e+00, %.lr.ph110.preheader.i ], [ %.188.i.prol, %.lr.ph110.i.prol ]
  %.192107.i.unr = phi i32 [ %i.af, %.lr.ph110.preheader.i ], [ %i.am, %.lr.ph110.i.prol ]
  %.195106.i.unr = phi i32 [ %.094128.i, %.lr.ph110.preheader.i ], [ %.296.i.prol, %.lr.ph110.i.prol ]
  %i.an = icmp eq i32 %i.h, %i.t
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.prol.loopexit, %.lr.ph110.i
  %.084109.i = phi ptr [ %i.ba, %.lr.ph110.i ], [ %.084109.i.unr, %.lr.ph110.i.prol.loopexit ] ; 2 uses
  %.087108.i = phi float [ %.188.i.1, %.lr.ph110.i ], [ %.087108.i.unr, %.lr.ph110.i.prol.loopexit ] ; 2 uses
  %.192107.i = phi i32 [ %i.bb, %.lr.ph110.i ], [ %.192107.i.unr, %.lr.ph110.i.prol.loopexit ] ; 3 uses
  %.195106.i = phi i32 [ %.296.i.1, %.lr.ph110.i ], [ %.195106.i.unr, %.lr.ph110.i.prol.loopexit ]
  %i.ao = load float, ptr %.084109.i, align 4, !tbaa !12 ; 3 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %i.aq = fneg float %i.ao
  %i.ar = select i1 %i.ap, float %i.ao, float %i.aq ; 2 uses
  %i.as = fcmp ogt float %i.ar, %.087108.i        ; 2 uses
  %.296.i = select i1 %i.as, i32 %.192107.i, i32 %.195106.i
  %.188.i = select i1 %i.as, float %i.ar, float %.087108.i ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.084109.i, i64 %i.p ; 2 uses
  %i.au = add nuw i32 %.192107.i, 1
  %i.av = load float, ptr %i.at, align 4, !tbaa !12 ; 3 uses
  %i.aw = fcmp ogt float %i.av, 0.000000e+00
  %i.ax = fneg float %i.av
  %i.ay = select i1 %i.aw, float %i.av, float %i.ax ; 2 uses
  %i.az = fcmp ogt float %i.ay, %.188.i           ; 2 uses
  %.296.i.1 = select i1 %i.az, i32 %i.au, i32 %.296.i ; 2 uses
  %.188.i.1 = select i1 %i.az, float %i.ay, float %.188.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.p
  %i.bb = add nuw i32 %.192107.i, 2               ; 2 uses
  %exitcond140.not.i.1 = icmp eq i32 %i.bb, %2
  br i1 %exitcond140.not.i.1, label %._crit_edge.i, label %.lr.ph110.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph110.i, %.lr.ph110.i.prol.loopexit
  %.296.i.lcssa = phi i32 [ %.296.i.lcssa.unr, %.lr.ph110.i.prol.loopexit ], [ %.296.i.1, %.lr.ph110.i ] ; 3 uses
  %.188.i.lcssa = phi float [ %.188.i.lcssa.unr, %.lr.ph110.i.prol.loopexit ], [ %.188.i.1, %.lr.ph110.i ]
  %i.bc = fcmp oeq float %.188.i.lcssa, 0.000000e+00
  br i1 %i.bc, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = zext i32 %.296.i.lcssa to i64           ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %i.bd
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.198127.i, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %.198127.i, align 4, !tbaa !3
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bg, ptr %.198127.i, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  %i.bh = sub i32 %.296.i.lcssa, %i.af
  %i.bi = mul i32 %i.bh, %2
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.086130.i, i64 %i.bj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.bk, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %.086130.i, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.086130.i, ptr nonnull align 4 %i.g, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = load float, ptr %i.ac, align 4, !tbaa !12
  %i.bm = icmp ult i32 %.082131.i, %2
  br i1 %i.bm, label %.lr.ph125.i, label %._crit_edge126.split.us.i

.lr.ph125.i:                                      ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.p
  %i.bp = zext i32 %.0132.i to i64
  %i.bq = sub nsw i64 0, %i.bp
  %min.iters.check55 = icmp ult i32 %i.v, 7
  %n.vec57 = and i64 %i.x, 8589934584             ; 4 uses
  %i.br = shl nuw nsw i64 %n.vec57, 2             ; 2 uses
  %i.bs = trunc i64 %n.vec57 to i32
  %i.bt = add i32 %.082131.i, %i.bs
  %cmp.n67 = icmp eq i64 %i.x, %n.vec57
  br label %.lr.ph117.us.i

.lr.ph117.us.i:                                   ; preds = %._crit_edge118.us.i, %.lr.ph125.i
  %.083123.us.i = phi ptr [ %i.bn, %.lr.ph125.i ], [ %i.de, %._crit_edge118.us.i ] ; 6 uses
  %.185122.us.i = phi ptr [ %i.bo, %.lr.ph125.i ], [ %i.df, %._crit_edge118.us.i ] ; 4 uses
  %.293121.us.i = phi i32 [ %.082131.i, %.lr.ph125.i ], [ %i.dg, %._crit_edge118.us.i ]
  %i.bu = load float, ptr %.185122.us.i, align 4, !tbaa !12
  %i.bv = fdiv float %i.bu, %i.bl                 ; 2 uses
  store float %i.bv, ptr %.185122.us.i, align 4, !tbaa !12
  %.2112.us.i = getelementptr i8, ptr %.185122.us.i, i64 4 ; 5 uses
  %i.bw = fneg float %i.bv                        ; 6 uses
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph117.us.i
  %scevgep = getelementptr i8, ptr %.185122.us.i, i64 8
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %i.ab
  %scevgep52 = getelementptr i8, ptr %.083123.us.i, i64 4
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.ab
  %bound0 = icmp ult ptr %.2112.us.i, %scevgep53
  %bound1 = icmp ult ptr %.083123.us.i, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph54.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck
  %i.bx = getelementptr i8, ptr %.2112.us.i, i64 %i.br ; 2 uses
  %i.by = getelementptr i8, ptr %.083123.us.i, i64 %i.br ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body58 ] ; 2 uses
  %i.bz = shl i64 %index59, 2                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %.2112.us.i, i64 %i.bz ; 3 uses
  %next.gep61 = getelementptr i8, ptr %.083123.us.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <4 x float>, ptr %next.gep61, align 4, !tbaa !12, !alias.scope !15
  %wide.load62 = load <4 x float>, ptr %i.ca, align 4, !tbaa !12, !alias.scope !15
  %i.cb = getelementptr i8, ptr %next.gep60, i64 16 ; 2 uses
  %wide.load63 = load <4 x float>, ptr %next.gep60, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %wide.load64 = load <4 x float>, ptr %i.cb, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load63)
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load62, <4 x float> %wide.load64)
  store <4 x float> %i.cc, ptr %next.gep60, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %index.next65 = add nuw i64 %index59, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next65, %n.vec57
  br i1 %i.ce, label %middle.block66, label %vector.body58, !llvm.loop !20

middle.block66:                                   ; preds = %vector.body58
  br i1 %cmp.n67, label %._crit_edge118.us.i, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %vector.memcheck, %.lr.ph117.us.i, %middle.block66
  %.2115.us.i.ph = phi ptr [ %.2112.us.i, %vector.memcheck ], [ %.2112.us.i, %.lr.ph117.us.i ], [ %i.bx, %middle.block66 ] ; 2 uses
  %.1114.us.i.ph = phi ptr [ %.083123.us.i, %vector.memcheck ], [ %.083123.us.i, %.lr.ph117.us.i ], [ %i.by, %middle.block66 ] ; 2 uses
  %.090113.us.i.ph = phi i32 [ %.082131.i, %vector.memcheck ], [ %.082131.i, %.lr.ph117.us.i ], [ %i.bt, %middle.block66 ] ; 4 uses
  %i.cf = sub i32 %2, %.090113.us.i.ph
  %xtraiter76 = and i32 %i.cf, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %scalar.ph54.prol.loopexit, label %scalar.ph54.prol

scalar.ph54.prol:                                 ; preds = %scalar.ph54.preheader, %scalar.ph54.prol
  %.2115.us.i.prol = phi ptr [ %.2.us.i.prol, %scalar.ph54.prol ], [ %.2115.us.i.ph, %scalar.ph54.preheader ] ; 3 uses
  %.1114.us.i.prol = phi ptr [ %i.cg, %scalar.ph54.prol ], [ %.1114.us.i.ph, %scalar.ph54.preheader ] ; 2 uses
  %.090113.us.i.prol = phi i32 [ %i.ck, %scalar.ph54.prol ], [ %.090113.us.i.ph, %scalar.ph54.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph54.prol ], [ 0, %scalar.ph54.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.1114.us.i.prol, i64 4 ; 3 uses
  %i.ch = load float, ptr %.1114.us.i.prol, align 4, !tbaa !12
  %i.ci = load float, ptr %.2115.us.i.prol, align 4, !tbaa !12
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ch, float %i.ci)
  store float %i.cj, ptr %.2115.us.i.prol, align 4, !tbaa !12
  %i.ck = add nuw i32 %.090113.us.i.prol, 1       ; 2 uses
  %.2.us.i.prol = getelementptr inbounds nuw i8, ptr %.2115.us.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %scalar.ph54.prol.loopexit, label %scalar.ph54.prol, !llvm.loop !21

scalar.ph54.prol.loopexit:                        ; preds = %scalar.ph54.prol, %scalar.ph54.preheader
  %.lcssa74.unr = phi ptr [ poison, %scalar.ph54.preheader ], [ %i.cg, %scalar.ph54.prol ]
  %.2.us.i.lcssa73.unr = phi ptr [ poison, %scalar.ph54.preheader ], [ %.2.us.i.prol, %scalar.ph54.prol ]
  %.2115.us.i.unr = phi ptr [ %.2115.us.i.ph, %scalar.ph54.preheader ], [ %.2.us.i.prol, %scalar.ph54.prol ]
  %.1114.us.i.unr = phi ptr [ %.1114.us.i.ph, %scalar.ph54.preheader ], [ %i.cg, %scalar.ph54.prol ]
  %.090113.us.i.unr = phi i32 [ %.090113.us.i.ph, %scalar.ph54.preheader ], [ %i.ck, %scalar.ph54.prol ]
  %i.cl = sub i32 %.090113.us.i.ph, %2
  %i.cm = icmp ugt i32 %i.cl, -4
  br i1 %i.cm, label %._crit_edge118.us.i, label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54
  %.2115.us.i = phi ptr [ %.2.us.i.3, %scalar.ph54 ], [ %.2115.us.i.unr, %scalar.ph54.prol.loopexit ] ; 6 uses
  %.1114.us.i = phi ptr [ %i.cz, %scalar.ph54 ], [ %.1114.us.i.unr, %scalar.ph54.prol.loopexit ] ; 5 uses
  %.090113.us.i = phi i32 [ %i.dd, %scalar.ph54 ], [ %.090113.us.i.unr, %scalar.ph54.prol.loopexit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 4
  %i.co = load float, ptr %.1114.us.i, align 4, !tbaa !12
  %i.cp = load float, ptr %.2115.us.i, align 4, !tbaa !12
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.co, float %i.cp)
  store float %i.cq, ptr %.2115.us.i, align 4, !tbaa !12
  %.2.us.i = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 8
  %i.cs = load float, ptr %i.cn, align 4, !tbaa !12
  %i.ct = load float, ptr %.2.us.i, align 4, !tbaa !12
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cs, float %i.ct)
  store float %i.cu, ptr %.2.us.i, align 4, !tbaa !12
  %.2.us.i.1 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 12
  %i.cw = load float, ptr %i.cr, align 4, !tbaa !12
  %i.cx = load float, ptr %.2.us.i.1, align 4, !tbaa !12
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cw, float %i.cx)
  store float %i.cy, ptr %.2.us.i.1, align 4, !tbaa !12
  %.2.us.i.2 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 12 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 16 ; 2 uses
  %i.da = load float, ptr %i.cv, align 4, !tbaa !12
  %i.db = load float, ptr %.2.us.i.2, align 4, !tbaa !12
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.da, float %i.db)
  store float %i.dc, ptr %.2.us.i.2, align 4, !tbaa !12
  %i.dd = add nuw i32 %.090113.us.i, 4            ; 2 uses
  %.2.us.i.3 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 16 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i32 %i.dd, %2
  br i1 %exitcond141.not.i.3, label %._crit_edge118.us.i, label %scalar.ph54, !llvm.loop !23

._crit_edge118.us.i:                              ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54, %middle.block66
  %.lcssa49 = phi ptr [ %i.by, %middle.block66 ], [ %.lcssa74.unr, %scalar.ph54.prol.loopexit ], [ %i.cz, %scalar.ph54 ]
  %.2.us.i.lcssa = phi ptr [ %i.bx, %middle.block66 ], [ %.2.us.i.lcssa73.unr, %scalar.ph54.prol.loopexit ], [ %.2.us.i.3, %scalar.ph54 ]
  %i.de = getelementptr inbounds [4 x i8], ptr %.lcssa49, i64 %i.bq
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.2.us.i.lcssa, i64 %indvars.iv.i
  %i.dg = add nuw i32 %.293121.us.i, 1            ; 2 uses
  %exitcond142.not.i = icmp eq i32 %i.dg, %2
  br i1 %exitcond142.not.i, label %._crit_edge126.split.us.i, label %.lr.ph117.us.i, !llvm.loop !24

._crit_edge126.split.us.i:                        ; preds = %._crit_edge118.us.i, %bb.f
  %i.dh = add i32 %.082131.i, 1
  %i.di = add i32 %.0132.i, -1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.086130.i, i64 %i.p
  %i.dk = getelementptr inbounds nuw i8, ptr %.198127.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond144.not.i, label %.lr.ph.i28, label %bb.c, !llvm.loop !25

.lr.ph.i28:                                       ; preds = %._crit_edge126.split.us.i, %.preheader.i
  %.pre-phi = phi i64 [ 1, %.preheader.i ], [ %i.p, %._crit_edge126.split.us.i ] ; 17 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.pre-phi ; 10 uses
  %i.dm = shl i32 %2, 1
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn ; 4 uses
  %i.dp = add i32 %2, 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.pre-phi
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.pre-phi
  %i.ds = mul i32 %2, %2
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dw = zext i32 %i.dp to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = add nsw i64 %.pre-phi, -1
  %xtraiter85 = and i64 %.pre-phi, 7              ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 7
  %unroll_iter89 = and i64 %.pre-phi, 4294967288
  %lcmp.mod87.not = icmp eq i64 %xtraiter85, 0
  %lcmp.mod88 = icmp ne i64 %xtraiter85, 0
  br label %bb.g

bb.g:                                             ; preds = %.epilog-lcssa, %.lr.ph.i28
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next35.i, %.epilog-lcssa ] ; 2 uses
  %.031.i = phi ptr [ %1, %.lr.ph.i28 ], [ %i.hw, %.epilog-lcssa ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv34.i
  store float 1.000000e+00, ptr %i.ea, align 4, !tbaa !12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %bb.g
  %.074.i.i = phi ptr [ %i.fb, %._crit_edge.i.i ], [ %i.c, %bb.g ] ; 2 uses
  %.05073.i.i = phi ptr [ %i.fi, %._crit_edge.i.i ], [ %0, %bb.g ] ; 3 uses
  %.05472.i.i = phi ptr [ %i.fh, %._crit_edge.i.i ], [ %i.do, %bb.g ] ; 2 uses
  %.06171.i.i = phi i32 [ %i.fj, %._crit_edge.i.i ], [ 0, %bb.g ] ; 5 uses
  %.not6566.i.i = icmp eq i32 %.06171.i.i, 0
  br i1 %.not6566.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader
end_hunk_0
