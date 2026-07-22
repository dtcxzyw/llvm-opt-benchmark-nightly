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
  br i1 %min.iters.check, label %.lr.ph.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %i.j = shl nuw nsw i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
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
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader76

.lr.ph.i.preheader76:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.088105.i.ph = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  %.094104.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %middle.block
  %.not139.i = icmp eq i32 %i.h, 0
  br i1 %.not139.i, label %.lr.ph.i28, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.preheader.i, %bb.b
  %i.p = zext i32 %2 to i64                       ; 8 uses
  %wide.trip.count.i = zext i32 %i.h to i64
  %i.q = add i32 %2, -2                           ; 2 uses
  %3 = shl nuw nsw i64 %i.p, 2
  %4 = add nuw nsw i64 %3, 4
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader76, %.lr.ph.i
  %.088105.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.088105.i.ph, %.lr.ph.i.preheader76 ] ; 2 uses
  %.094104.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.094104.i.ph, %.lr.ph.i.preheader76 ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.088105.i, i64 4
  store i32 %.094104.i, ptr %.088105.i, align 4, !tbaa !3
  %i.s = add nuw i32 %.094104.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.s, %2
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

bb.c:                                             ; preds = %._crit_edge126.split.us.i, %.lr.ph133.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next.i, %._crit_edge126.split.us.i ] ; 12 uses
  %.0132.i = phi i32 [ %i.h, %.lr.ph133.i ], [ %i.dk, %._crit_edge126.split.us.i ] ; 3 uses
  %.082131.i = phi i32 [ 1, %.lr.ph133.i ], [ %i.dj, %._crit_edge126.split.us.i ] ; 6 uses
  %.086130.i = phi ptr [ %0, %.lr.ph133.i ], [ %i.dl, %._crit_edge126.split.us.i ] ; 5 uses
  %.189129.i = phi ptr [ %i.c, %.lr.ph133.i ], [ %i.dm, %._crit_edge126.split.us.i ] ; 4 uses
  %.097127.i = phi i32 [ 0, %.lr.ph133.i ], [ %.299.i.lcssa, %._crit_edge126.split.us.i ] ; 2 uses
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = trunc i64 %indvars.iv.i to i32
  %i.v = sub i32 %i.q, %i.u                       ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %i.y = trunc i64 %indvars.iv.i to i32
  %i.z = sub i32 %i.q, %i.y
  %5 = zext i32 %i.z to i64                       ; 2 uses
  %6 = shl nuw nsw i64 %5, 2                      ; 3 uses
  %7 = mul i64 %4, %indvars.iv.i                  ; 2 uses
  %8 = getelementptr i8, ptr %0, i64 %7
  %scevgep52 = getelementptr i8, ptr %8, i64 4
  %9 = getelementptr i8, ptr %0, i64 %7
  %scevgep53 = getelementptr i8, ptr %9, i64 8
  %10 = add nuw nsw i64 %6, 8
  %i.aa = zext i32 %.0132.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %11 = sub nsw i64 %10, %i.ab
  %12 = mul i64 %11, %5
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %12
  %13 = add nuw nsw i64 %6, 4
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
  %.299.i.prol = select i1 %i.ak, i32 %i.af, i32 %.097127.i ; 2 uses
  %.191.i.prol = select i1 %i.ak, float %i.aj, float 0.000000e+00 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.p
  %i.am = add nuw i32 %i.af, 1
  br label %.lr.ph110.i.prol.loopexit

.lr.ph110.i.prol.loopexit:                        ; preds = %.lr.ph110.i.prol, %.lr.ph110.preheader.i
  %.299.i.lcssa.unr = phi i32 [ poison, %.lr.ph110.preheader.i ], [ %.299.i.prol, %.lr.ph110.i.prol ]
  %.191.i.lcssa.unr = phi float [ poison, %.lr.ph110.preheader.i ], [ %.191.i.prol, %.lr.ph110.i.prol ]
  %.084109.i.unr = phi ptr [ %i.ac, %.lr.ph110.preheader.i ], [ %i.al, %.lr.ph110.i.prol ]
  %.090108.i.unr = phi float [ 0.000000e+00, %.lr.ph110.preheader.i ], [ %.191.i.prol, %.lr.ph110.i.prol ]
  %.195107.i.unr = phi i32 [ %i.af, %.lr.ph110.preheader.i ], [ %i.am, %.lr.ph110.i.prol ]
  %.198106.i.unr = phi i32 [ %.097127.i, %.lr.ph110.preheader.i ], [ %.299.i.prol, %.lr.ph110.i.prol ]
  %i.an = icmp eq i32 %i.h, %i.t
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.prol.loopexit, %.lr.ph110.i
  %.084109.i = phi ptr [ %i.ba, %.lr.ph110.i ], [ %.084109.i.unr, %.lr.ph110.i.prol.loopexit ] ; 2 uses
  %.090108.i = phi float [ %.191.i.1, %.lr.ph110.i ], [ %.090108.i.unr, %.lr.ph110.i.prol.loopexit ] ; 2 uses
  %.195107.i = phi i32 [ %i.bb, %.lr.ph110.i ], [ %.195107.i.unr, %.lr.ph110.i.prol.loopexit ] ; 3 uses
  %.198106.i = phi i32 [ %.299.i.1, %.lr.ph110.i ], [ %.198106.i.unr, %.lr.ph110.i.prol.loopexit ]
  %i.ao = load float, ptr %.084109.i, align 4, !tbaa !12 ; 3 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %i.aq = fneg float %i.ao
  %i.ar = select i1 %i.ap, float %i.ao, float %i.aq ; 2 uses
  %i.as = fcmp ogt float %i.ar, %.090108.i        ; 2 uses
  %.299.i = select i1 %i.as, i32 %.195107.i, i32 %.198106.i
  %.191.i = select i1 %i.as, float %i.ar, float %.090108.i ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.084109.i, i64 %i.p ; 2 uses
  %i.au = add nuw i32 %.195107.i, 1
  %i.av = load float, ptr %i.at, align 4, !tbaa !12 ; 3 uses
  %i.aw = fcmp ogt float %i.av, 0.000000e+00
  %i.ax = fneg float %i.av
  %i.ay = select i1 %i.aw, float %i.av, float %i.ax ; 2 uses
  %i.az = fcmp ogt float %i.ay, %.191.i           ; 2 uses
  %.299.i.1 = select i1 %i.az, i32 %i.au, i32 %.299.i ; 2 uses
  %.191.i.1 = select i1 %i.az, float %i.ay, float %.191.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.p
  %i.bb = add nuw i32 %.195107.i, 2               ; 2 uses
  %exitcond140.not.i.1 = icmp eq i32 %i.bb, %2
  br i1 %exitcond140.not.i.1, label %._crit_edge.i, label %.lr.ph110.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph110.i, %.lr.ph110.i.prol.loopexit
  %.299.i.lcssa = phi i32 [ %.299.i.lcssa.unr, %.lr.ph110.i.prol.loopexit ], [ %.299.i.1, %.lr.ph110.i ] ; 3 uses
  %.191.i.lcssa = phi float [ %.191.i.lcssa.unr, %.lr.ph110.i.prol.loopexit ], [ %.191.i.1, %.lr.ph110.i ]
  %i.bc = fcmp oeq float %.191.i.lcssa, 0.000000e+00
  br i1 %i.bc, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = zext i32 %.299.i.lcssa to i64           ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %i.bd
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.189129.i, i64 %i.bd
  %i.bf = sub nsw i64 0, %indvars.iv.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %.189129.i, align 4, !tbaa !3
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  store i32 %i.bi, ptr %.189129.i, align 4, !tbaa !3
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !3
  %i.bj = sub i32 %.299.i.lcssa, %i.af
  %i.bk = mul i32 %i.bj, %2
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.086130.i, i64 %i.bl ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.bm, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %.086130.i, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.086130.i, ptr nonnull align 4 %i.g, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = load float, ptr %i.ac, align 4, !tbaa !12
  %i.bo = icmp ult i32 %.082131.i, %2
  br i1 %i.bo, label %.lr.ph125.i, label %._crit_edge126.split.us.i

.lr.ph125.i:                                      ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.p
  %i.br = zext i32 %.0132.i to i64
  %i.bs = sub nsw i64 0, %i.br
  %min.iters.check55 = icmp ult i32 %i.v, 7
  %stride.check = icmp samesign ult i64 %13, %i.ab
  %n.vec58 = and i64 %i.x, 8589934584             ; 4 uses
  %i.bt = shl nuw nsw i64 %n.vec58, 2             ; 2 uses
  %i.bu = trunc i64 %n.vec58 to i32
  %i.bv = add i32 %.082131.i, %i.bu
  %cmp.n68 = icmp eq i64 %i.x, %n.vec58
  br label %.lr.ph117.us.i

.lr.ph117.us.i:                                   ; preds = %._crit_edge118.us.i, %.lr.ph125.i
  %.083123.us.i = phi ptr [ %i.bp, %.lr.ph125.i ], [ %i.dg, %._crit_edge118.us.i ] ; 4 uses
  %.185122.us.i = phi ptr [ %i.bq, %.lr.ph125.i ], [ %i.dh, %._crit_edge118.us.i ] ; 4 uses
  %.296121.us.i = phi i32 [ %.082131.i, %.lr.ph125.i ], [ %i.di, %._crit_edge118.us.i ]
  %i.bw = load float, ptr %.185122.us.i, align 4, !tbaa !12
  %i.bx = fdiv float %i.bw, %i.bn                 ; 2 uses
  store float %i.bx, ptr %.185122.us.i, align 4, !tbaa !12
  %.2112.us.i = getelementptr i8, ptr %.185122.us.i, i64 4 ; 5 uses
  %i.by = fneg float %i.bx                        ; 6 uses
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph117.us.i
  %scevgep = getelementptr i8, ptr %.185122.us.i, i64 8
  %scevgep52.a = getelementptr i8, ptr %scevgep, i64 %6
  %bound0 = icmp ult ptr %.2112.us.i, %scevgep54
  %bound0.a = icmp ult ptr %scevgep52, %scevgep52.a
  %found.conflict = and i1 %bound0, %bound0.a
  %14 = or i1 %found.conflict, %stride.check
  br i1 %14, label %scalar.ph54.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck
  %i.bz = getelementptr i8, ptr %.2112.us.i, i64 %i.bt ; 2 uses
  %i.ca = getelementptr i8, ptr %.083123.us.i, i64 %i.bt ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next66, %vector.body59 ] ; 2 uses
  %i.cb = shl i64 %index60, 2                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.2112.us.i, i64 %i.cb ; 3 uses
  %next.gep62 = getelementptr i8, ptr %.083123.us.i, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x float>, ptr %next.gep62, align 4, !tbaa !12, !alias.scope !15
  %wide.load63 = load <4 x float>, ptr %i.cc, align 4, !tbaa !12, !alias.scope !15
  %i.cd = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load64 = load <4 x float>, ptr %next.gep61, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %wide.load65 = load <4 x float>, ptr %i.cd, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load64)
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load63, <4 x float> %wide.load65)
  store <4 x float> %i.ce, ptr %next.gep61, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  store <4 x float> %i.cf, ptr %i.cd, align 4, !tbaa !12, !alias.scope !18, !noalias !15
  %index.next66 = add nuw i64 %index60, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next66, %n.vec58
  br i1 %i.cg, label %middle.block67, label %vector.body59, !llvm.loop !20

middle.block67:                                   ; preds = %vector.body59
  br i1 %cmp.n68, label %._crit_edge118.us.i, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %vector.memcheck, %.lr.ph117.us.i, %middle.block67
  %.2115.us.i.ph = phi ptr [ %.2112.us.i, %vector.memcheck ], [ %.2112.us.i, %.lr.ph117.us.i ], [ %i.bz, %middle.block67 ] ; 2 uses
  %.1114.us.i.ph = phi ptr [ %.083123.us.i, %vector.memcheck ], [ %.083123.us.i, %.lr.ph117.us.i ], [ %i.ca, %middle.block67 ] ; 2 uses
  %.093113.us.i.ph = phi i32 [ %.082131.i, %vector.memcheck ], [ %.082131.i, %.lr.ph117.us.i ], [ %i.bv, %middle.block67 ] ; 4 uses
  %i.ch = sub i32 %2, %.093113.us.i.ph
  %xtraiter77 = and i32 %i.ch, 3                  ; 2 uses
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %scalar.ph54.prol.loopexit, label %scalar.ph54.prol

scalar.ph54.prol:                                 ; preds = %scalar.ph54.preheader, %scalar.ph54.prol
  %.2115.us.i.prol = phi ptr [ %.2.us.i.prol, %scalar.ph54.prol ], [ %.2115.us.i.ph, %scalar.ph54.preheader ] ; 3 uses
  %.1114.us.i.prol = phi ptr [ %i.ci, %scalar.ph54.prol ], [ %.1114.us.i.ph, %scalar.ph54.preheader ] ; 2 uses
  %.093113.us.i.prol = phi i32 [ %i.cm, %scalar.ph54.prol ], [ %.093113.us.i.ph, %scalar.ph54.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph54.prol ], [ 0, %scalar.ph54.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1114.us.i.prol, i64 4 ; 3 uses
  %i.cj = load float, ptr %.1114.us.i.prol, align 4, !tbaa !12
  %i.ck = load float, ptr %.2115.us.i.prol, align 4, !tbaa !12
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cj, float %i.ck)
  store float %i.cl, ptr %.2115.us.i.prol, align 4, !tbaa !12
  %i.cm = add nuw i32 %.093113.us.i.prol, 1       ; 2 uses
  %.2.us.i.prol = getelementptr inbounds nuw i8, ptr %.2115.us.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter77
  br i1 %prol.iter.cmp.not, label %scalar.ph54.prol.loopexit, label %scalar.ph54.prol, !llvm.loop !21

scalar.ph54.prol.loopexit:                        ; preds = %scalar.ph54.prol, %scalar.ph54.preheader
  %.lcssa75.unr = phi ptr [ poison, %scalar.ph54.preheader ], [ %i.ci, %scalar.ph54.prol ]
  %.2.us.i.lcssa74.unr = phi ptr [ poison, %scalar.ph54.preheader ], [ %.2.us.i.prol, %scalar.ph54.prol ]
  %.2115.us.i.unr = phi ptr [ %.2115.us.i.ph, %scalar.ph54.preheader ], [ %.2.us.i.prol, %scalar.ph54.prol ]
  %.1114.us.i.unr = phi ptr [ %.1114.us.i.ph, %scalar.ph54.preheader ], [ %i.ci, %scalar.ph54.prol ]
  %.093113.us.i.unr = phi i32 [ %.093113.us.i.ph, %scalar.ph54.preheader ], [ %i.cm, %scalar.ph54.prol ]
  %i.cn = sub i32 %.093113.us.i.ph, %2
  %i.co = icmp ugt i32 %i.cn, -4
  br i1 %i.co, label %._crit_edge118.us.i, label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54
  %.2115.us.i = phi ptr [ %.2.us.i.3, %scalar.ph54 ], [ %.2115.us.i.unr, %scalar.ph54.prol.loopexit ] ; 6 uses
  %.1114.us.i = phi ptr [ %i.db, %scalar.ph54 ], [ %.1114.us.i.unr, %scalar.ph54.prol.loopexit ] ; 5 uses
  %.093113.us.i = phi i32 [ %i.df, %scalar.ph54 ], [ %.093113.us.i.unr, %scalar.ph54.prol.loopexit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 4
  %i.cq = load float, ptr %.1114.us.i, align 4, !tbaa !12
  %i.cr = load float, ptr %.2115.us.i, align 4, !tbaa !12
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cq, float %i.cr)
  store float %i.cs, ptr %.2115.us.i, align 4, !tbaa !12
  %.2.us.i = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 8
  %i.cu = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cv = load float, ptr %.2.us.i, align 4, !tbaa !12
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cu, float %i.cv)
  store float %i.cw, ptr %.2.us.i, align 4, !tbaa !12
  %.2.us.i.1 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 12
  %i.cy = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cz = load float, ptr %.2.us.i.1, align 4, !tbaa !12
  %i.da = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cy, float %i.cz)
  store float %i.da, ptr %.2.us.i.1, align 4, !tbaa !12
  %.2.us.i.2 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1114.us.i, i64 16 ; 2 uses
  %i.dc = load float, ptr %i.cx, align 4, !tbaa !12
  %i.dd = load float, ptr %.2.us.i.2, align 4, !tbaa !12
  %i.de = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dc, float %i.dd)
  store float %i.de, ptr %.2.us.i.2, align 4, !tbaa !12
  %i.df = add nuw i32 %.093113.us.i, 4            ; 2 uses
  %.2.us.i.3 = getelementptr inbounds nuw i8, ptr %.2115.us.i, i64 16 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i32 %i.df, %2
  br i1 %exitcond141.not.i.3, label %._crit_edge118.us.i, label %scalar.ph54, !llvm.loop !23

._crit_edge118.us.i:                              ; preds = %scalar.ph54.prol.loopexit, %scalar.ph54, %middle.block67
  %.lcssa49 = phi ptr [ %i.ca, %middle.block67 ], [ %.lcssa75.unr, %scalar.ph54.prol.loopexit ], [ %i.db, %scalar.ph54 ]
  %.2.us.i.lcssa = phi ptr [ %i.bz, %middle.block67 ], [ %.2.us.i.lcssa74.unr, %scalar.ph54.prol.loopexit ], [ %.2.us.i.3, %scalar.ph54 ]
  %i.dg = getelementptr inbounds [4 x i8], ptr %.lcssa49, i64 %i.bs
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.2.us.i.lcssa, i64 %indvars.iv.i
  %i.di = add nuw i32 %.296121.us.i, 1            ; 2 uses
  %exitcond142.not.i = icmp eq i32 %i.di, %2
  br i1 %exitcond142.not.i, label %._crit_edge126.split.us.i, label %.lr.ph117.us.i, !llvm.loop !24

._crit_edge126.split.us.i:                        ; preds = %._crit_edge118.us.i, %bb.f
  %i.dj = add i32 %.082131.i, 1
  %i.dk = add i32 %.0132.i, -1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.086130.i, i64 %i.p
  %i.dm = getelementptr inbounds nuw i8, ptr %.189129.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond144.not.i, label %.lr.ph.i28, label %bb.c, !llvm.loop !25

.lr.ph.i28:                                       ; preds = %._crit_edge126.split.us.i, %.preheader.i
  %.pre-phi = phi i64 [ 1, %.preheader.i ], [ %i.p, %._crit_edge126.split.us.i ] ; 17 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.pre-phi ; 10 uses
  %i.do = shl i32 %2, 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dp ; 4 uses
  %i.dr = add i32 %2, 1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.pre-phi
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.pre-phi
  %i.du = mul i32 %2, %2
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.dy = zext i32 %i.dr to i64
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = add nsw i64 %.pre-phi, -1
  %xtraiter86 = and i64 %.pre-phi, 7              ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 7
  %unroll_iter90 = and i64 %.pre-phi, 4294967288
  %lcmp.mod88.not = icmp eq i64 %xtraiter86, 0
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  br label %bb.g

bb.g:                                             ; preds = %.epilog-lcssa, %.lr.ph.i28
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next35.i, %.epilog-lcssa ] ; 2 uses
  %.02330.i = phi ptr [ %1, %.lr.ph.i28 ], [ %i.hy, %.epilog-lcssa ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv34.i
  store float 1.000000e+00, ptr %i.ec, align 4, !tbaa !12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %bb.g
  %.074.i.i = phi ptr [ %i.fd, %._crit_edge.i.i ], [ %i.c, %bb.g ] ; 2 uses
  %.05073.i.i = phi ptr [ %i.fk, %._crit_edge.i.i ], [ %0, %bb.g ] ; 3 uses
  %.05472.i.i = phi ptr [ %i.fj, %._crit_edge.i.i ], [ %i.dq, %bb.g ] ; 2 uses
  %.05871.i.i = phi i32 [ %i.fl, %._crit_edge.i.i ], [ 0, %bb.g ] ; 5 uses
  %.not6566.i.i = icmp eq i32 %.05871.i.i, 0
  br i1 %.not6566.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %xtraiter79 = and i32 %.05871.i.i, 3            ; 3 uses
  %i.ed = icmp ult i32 %.05871.i.i, 4
  br i1 %i.ed, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.05871.i.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05170.i.i = phi ptr [ %.05073.i.i, %.lr.ph.i.i.preheader.new ], [ %i.et, %.lr.ph.i.i ] ; 5 uses
  %.05569.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.preheader.new ], [ %i.ev, %.lr.ph.i.i ] ; 5 uses
  %.05968.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.ex, %.lr.ph.i.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.05170.i.i, i64 4
  %i.ef = load float, ptr %.05170.i.i, align 4, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %.05569.i.i, i64 4
  %i.eh = load float, ptr %.05569.i.i, align 4, !tbaa !12
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eh, float %.05968.i.i)
  %i.ej = getelementptr inbounds nuw i8, ptr %.05170.i.i, i64 8
  %i.ek = load float, ptr %i.ee, align 4, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %.05569.i.i, i64 8
  %i.em = load float, ptr %i.eg, align 4, !tbaa !12
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.em, float %i.ei)
  %i.eo = getelementptr inbounds nuw i8, ptr %.05170.i.i, i64 12
  %i.ep = load float, ptr %i.ej, align 4, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.05569.i.i, i64 12
  %i.er = load float, ptr %i.el, align 4, !tbaa !12
  %i.es = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.er, float %i.en)
  %i.et = getelementptr inbounds nuw i8, ptr %.05170.i.i, i64 16 ; 2 uses
  %i.eu = load float, ptr %i.eo, align 4, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.05569.i.i, i64 16 ; 2 uses
  %i.ew = load float, ptr %i.eq, align 4, !tbaa !12
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.ew, float %i.es) ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !26

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05170.i.i.epil.init = phi ptr [ %.05073.i.i, %.lr.ph.i.i.preheader ], [ %i.et, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.05569.i.i.epil.init = phi ptr [ %i.dq, %.lr.ph.i.i.preheader ], [ %i.ev, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.05968.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.ex, %._crit_edge.i.i.loopexit.unr-lcssa ]
end_hunk_0
