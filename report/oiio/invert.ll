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
  %i.p = zext i32 %2 to i64                       ; 7 uses
  %wide.trip.count.i = zext i32 %i.h to i64
  %i.q = add i32 %2, -2                           ; 2 uses
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
  %indvars.iv.i = phi i64 [ 0, %.lr.ph133.i ], [ %indvars.iv.next.i, %._crit_edge126.split.us.i ] ; 11 uses
  %.0132.i = phi i32 [ %i.h, %.lr.ph133.i ], [ %i.dk, %._crit_edge126.split.us.i ] ; 2 uses
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
  %n.vec58 = and i64 %i.x, 8589934584             ; 4 uses
  %i.bt = shl nuw nsw i64 %n.vec58, 2             ; 2 uses
  %i.bu = trunc i64 %n.vec58 to i32
  %i.bv = add i32 %.082131.i, %i.bu
  %cmp.n68 = icmp eq i64 %i.x, %n.vec58
  br label %.lr.ph117.us.i

.lr.ph117.us.i:                                   ; preds = %._crit_edge118.us.i, %.lr.ph125.i
  %.083123.us.i = phi ptr [ %i.bp, %.lr.ph125.i ], [ %i.dg, %._crit_edge118.us.i ] ; 6 uses
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
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %i.ab
  %scevgep52 = getelementptr i8, ptr %.083123.us.i, i64 4
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.ab
  %bound0 = icmp ult ptr %.2112.us.i, %scevgep53
  %bound1 = icmp ult ptr %.083123.us.i, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph54.preheader, label %vector.ph56

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
end_hunk_0
begin_hunk_1_@opj_matrix_inversion_f:bb.a
.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05170.i.i.epil.init = phi ptr [ %.05073.i.i, %.lr.ph.i.i.preheader ], [ %i.et, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.05569.i.i.epil.init = phi ptr [ %i.dq, %.lr.ph.i.i.preheader ], [ %i.ev, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.05968.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.ex, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i32 %xtraiter79, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05170.i.i.epil = phi ptr [ %i.ey, %.lr.ph.i.i.epil ], [ %.05170.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.05569.i.i.epil = phi ptr [ %i.fa, %.lr.ph.i.i.epil ], [ %.05569.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.05968.i.i.epil = phi float [ %i.fc, %.lr.ph.i.i.epil ], [ %.05968.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.05170.i.i.epil, i64 4
  %i.ez = load float, ptr %.05170.i.i.epil, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.05569.i.i.epil, i64 4
  %i.fb = load float, ptr %.05569.i.i.epil, align 4, !tbaa !12
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fb, float %.05968.i.i.epil) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter79
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !27

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader.i.i
  %.059.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %i.ex, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.epil ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.074.i.i, i64 4
  %i.fe = load i32, ptr %.074.i.i, align 4, !tbaa !3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  %i.fi = fsub float %i.fh, %.059.lcssa.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.05472.i.i, i64 4
  store float %i.fi, ptr %.05472.i.i, align 4, !tbaa !12
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.05073.i.i, i64 %.pre-phi
  %i.fl = add nuw i32 %.05871.i.i, 1              ; 2 uses
  %exitcond100.not.i.i = icmp eq i32 %i.fl, %2
  br i1 %exitcond100.not.i.i, label %.lr.ph95.i.i, label %.preheader.i.i, !llvm.loop !28

.lr.ph95.i.i:                                     ; preds = %._crit_edge.i.i, %._crit_edge82.i.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge82.i.i ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %.pn.i.i = phi ptr [ %.04892.i.i, %._crit_edge82.i.i ], [ %i.dt, %._crit_edge.i.i ]
  %.pn98.i.i = phi ptr [ %.04991.i.i, %._crit_edge82.i.i ], [ %i.ds, %._crit_edge.i.i ] ; 3 uses
  %.190.i.i = phi ptr [ %i.gp, %._crit_edge82.i.i ], [ %i.dx, %._crit_edge.i.i ] ; 4 uses
  %.057.in88.i.i = phi i32 [ %.05793.i.i, %._crit_edge82.i.i ], [ %2, %._crit_edge.i.i ] ; 4 uses
  %i.fm = add i32 %indvar, -1
  %.04991.i.i = getelementptr i8, ptr %.pn98.i.i, i64 -4 ; 2 uses
  %.04892.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -4 ; 2 uses
  %.05793.i.i = add nsw i32 %.057.in88.i.i, -1    ; 2 uses
  %i.fn = load float, ptr %.190.i.i, align 4, !tbaa !12
  %i.fo = icmp ult i32 %.057.in88.i.i, %2
  br i1 %i.fo, label %.lr.ph81.i.i.preheader, label %._crit_edge82.i.i

.lr.ph81.i.i.preheader:                           ; preds = %.lr.ph95.i.i
  %xtraiter83 = and i32 %indvar, 3                ; 2 uses
  %lcmp.mod84.not = icmp eq i32 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph81.i.i.prol.loopexit, label %.lr.ph81.i.i.prol

.lr.ph81.i.i.prol:                                ; preds = %.lr.ph81.i.i.preheader, %.lr.ph81.i.i.prol
  %.1.pn79.i.i.prol = phi ptr [ %.152.i.i.prol, %.lr.ph81.i.i.prol ], [ %.190.i.i, %.lr.ph81.i.i.preheader ]
  %.15678.i.i.prol = phi ptr [ %i.fq, %.lr.ph81.i.i.prol ], [ %.pn98.i.i, %.lr.ph81.i.i.preheader ] ; 2 uses
  %.16077.i.i.prol = phi float [ %i.fs, %.lr.ph81.i.i.prol ], [ 0.000000e+00, %.lr.ph81.i.i.preheader ]
  %.16276.i.i.prol = phi i32 [ %i.ft, %.lr.ph81.i.i.prol ], [ %.057.in88.i.i, %.lr.ph81.i.i.preheader ]
  %prol.iter85 = phi i32 [ %prol.iter85.next, %.lr.ph81.i.i.prol ], [ 0, %.lr.ph81.i.i.preheader ]
  %.152.i.i.prol = getelementptr inbounds nuw i8, ptr %.1.pn79.i.i.prol, i64 4 ; 3 uses
  %i.fp = load float, ptr %.152.i.i.prol, align 4, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.15678.i.i.prol, i64 4 ; 2 uses
  %i.fr = load float, ptr %.15678.i.i.prol, align 4, !tbaa !12
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fr, float %.16077.i.i.prol) ; 3 uses
  %i.ft = add nuw i32 %.16276.i.i.prol, 1         ; 2 uses
  %prol.iter85.next = add i32 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i32 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph81.i.i.prol.loopexit, label %.lr.ph81.i.i.prol, !llvm.loop !29

.lr.ph81.i.i.prol.loopexit:                       ; preds = %.lr.ph81.i.i.prol, %.lr.ph81.i.i.preheader
  %.lcssa72.unr = phi float [ poison, %.lr.ph81.i.i.preheader ], [ %i.fs, %.lr.ph81.i.i.prol ]
  %.1.pn79.i.i.unr = phi ptr [ %.190.i.i, %.lr.ph81.i.i.preheader ], [ %.152.i.i.prol, %.lr.ph81.i.i.prol ]
  %.15678.i.i.unr = phi ptr [ %.pn98.i.i, %.lr.ph81.i.i.preheader ], [ %i.fq, %.lr.ph81.i.i.prol ]
  %.16077.i.i.unr = phi float [ 0.000000e+00, %.lr.ph81.i.i.preheader ], [ %i.fs, %.lr.ph81.i.i.prol ]
  %.16276.i.i.unr = phi i32 [ %.057.in88.i.i, %.lr.ph81.i.i.preheader ], [ %i.ft, %.lr.ph81.i.i.prol ]
  %i.fu = icmp ult i32 %i.fm, 3
  br i1 %i.fu, label %._crit_edge82.i.i, label %.lr.ph81.i.i

.lr.ph81.i.i:                                     ; preds = %.lr.ph81.i.i.prol.loopexit, %.lr.ph81.i.i
  %.1.pn79.i.i = phi ptr [ %.152.i.i.3, %.lr.ph81.i.i ], [ %.1.pn79.i.i.unr, %.lr.ph81.i.i.prol.loopexit ] ; 4 uses
  %.15678.i.i = phi ptr [ %i.gi, %.lr.ph81.i.i ], [ %.15678.i.i.unr, %.lr.ph81.i.i.prol.loopexit ] ; 5 uses
  %.16077.i.i = phi float [ %i.gk, %.lr.ph81.i.i ], [ %.16077.i.i.unr, %.lr.ph81.i.i.prol.loopexit ]
  %.16276.i.i = phi i32 [ %i.gl, %.lr.ph81.i.i ], [ %.16276.i.i.unr, %.lr.ph81.i.i.prol.loopexit ]
  %.152.i.i = getelementptr inbounds nuw i8, ptr %.1.pn79.i.i, i64 4
  %i.fv = load float, ptr %.152.i.i, align 4, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.15678.i.i, i64 4
  %i.fx = load float, ptr %.15678.i.i, align 4, !tbaa !12
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %.16077.i.i)
  %.152.i.i.1 = getelementptr inbounds nuw i8, ptr %.1.pn79.i.i, i64 8
  %i.fz = load float, ptr %.152.i.i.1, align 4, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.15678.i.i, i64 8
  %i.gb = load float, ptr %i.fw, align 4, !tbaa !12
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.gb, float %i.fy)
  %.152.i.i.2 = getelementptr inbounds nuw i8, ptr %.1.pn79.i.i, i64 12
  %i.gd = load float, ptr %.152.i.i.2, align 4, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %.15678.i.i, i64 12
  %i.gf = load float, ptr %i.ga, align 4, !tbaa !12
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gf, float %i.gc)
  %.152.i.i.3 = getelementptr inbounds nuw i8, ptr %.1.pn79.i.i, i64 16 ; 2 uses
  %i.gh = load float, ptr %.152.i.i.3, align 4, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.15678.i.i, i64 16
  %i.gj = load float, ptr %i.ge, align 4, !tbaa !12
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gj, float %i.gg) ; 2 uses
  %i.gl = add nuw i32 %.16276.i.i, 4              ; 2 uses
  %exitcond101.not.i.i.3 = icmp eq i32 %i.gl, %2
  br i1 %exitcond101.not.i.i.3, label %._crit_edge82.i.i, label %.lr.ph81.i.i, !llvm.loop !30

._crit_edge82.i.i:                                ; preds = %.lr.ph81.i.i.prol.loopexit, %.lr.ph81.i.i, %.lr.ph95.i.i
  %.160.lcssa.i.i = phi float [ 0.000000e+00, %.lr.ph95.i.i ], [ %.lcssa72.unr, %.lr.ph81.i.i.prol.loopexit ], [ %i.gk, %.lr.ph81.i.i ]
  %i.gm = load float, ptr %.04892.i.i, align 4, !tbaa !12
  %i.gn = fsub float %i.gm, %.160.lcssa.i.i
  %i.go = fdiv float %i.gn, %i.fn
  store float %i.go, ptr %.04991.i.i, align 4, !tbaa !12
  %i.gp = getelementptr inbounds [4 x i8], ptr %.190.i.i, i64 %i.dz
  %.not.i.i = icmp eq i32 %.05793.i.i, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.i.i, label %opj_lupSolve.exit.i.preheader, label %.lr.ph95.i.i, !llvm.loop !31

opj_lupSolve.exit.i.preheader:                    ; preds = %._crit_edge82.i.i
  br i1 %i.eb, label %opj_lupSolve.exit.i.epil.preheader, label %opj_lupSolve.exit.i

opj_lupSolve.exit.i:                              ; preds = %opj_lupSolve.exit.i.preheader, %opj_lupSolve.exit.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30.7, %opj_lupSolve.exit.i ], [ 0, %opj_lupSolve.exit.i.preheader ] ; 9 uses
  %.02429.i = phi ptr [ %i.hu, %opj_lupSolve.exit.i ], [ %.02330.i, %opj_lupSolve.exit.i.preheader ] ; 2 uses
  %niter91 = phi i64 [ %niter91.next.7, %opj_lupSolve.exit.i ], [ 0, %opj_lupSolve.exit.i.preheader ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !12
  store float %i.gr, ptr %.02429.i, align 4, !tbaa !12
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.02429.i, i64 %.pre-phi ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !12
  store float %i.gv, ptr %i.gs, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.pre-phi ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !12
  store float %i.gz, ptr %i.gw, align 4, !tbaa !12
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.pre-phi ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  store float %i.hd, ptr %i.ha, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.pre-phi ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !12
  store float %i.hh, ptr %i.he, align 4, !tbaa !12
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.pre-phi ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 20
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !12
  store float %i.hl, ptr %i.hi, align 4, !tbaa !12
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.pre-phi ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !12
  store float %i.hp, ptr %i.hm, align 4, !tbaa !12
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.pre-phi ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 28
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !12
  store float %i.ht, ptr %i.hq, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.pre-phi ; 2 uses
  %indvars.iv.next.i30.7 = add nuw nsw i64 %indvars.iv.i29, 8 ; 2 uses
  %niter91.next.7 = add i64 %niter91, 8           ; 2 uses
  %niter91.ncmp.7 = icmp eq i64 %niter91.next.7, %unroll_iter90
  br i1 %niter91.ncmp.7, label %.unr-lcssa, label %opj_lupSolve.exit.i, !llvm.loop !32

.unr-lcssa:                                       ; preds = %opj_lupSolve.exit.i
  br i1 %lcmp.mod88.not, label %.epilog-lcssa, label %opj_lupSolve.exit.i.epil.preheader

opj_lupSolve.exit.i.epil.preheader:               ; preds = %.unr-lcssa, %opj_lupSolve.exit.i.preheader
  %indvars.iv.i29.epil.init = phi i64 [ 0, %opj_lupSolve.exit.i.preheader ], [ %indvars.iv.next.i30.7, %.unr-lcssa ]
  %.02429.i.epil.init = phi ptr [ %.02330.i, %opj_lupSolve.exit.i.preheader ], [ %i.hu, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %opj_lupSolve.exit.i.epil

opj_lupSolve.exit.i.epil:                         ; preds = %opj_lupSolve.exit.i.epil, %opj_lupSolve.exit.i.epil.preheader
  %indvars.iv.i29.epil = phi i64 [ %indvars.iv.next.i30.epil, %opj_lupSolve.exit.i.epil ], [ %indvars.iv.i29.epil.init, %opj_lupSolve.exit.i.epil.preheader ] ; 2 uses
  %.02429.i.epil = phi ptr [ %i.hx, %opj_lupSolve.exit.i.epil ], [ %.02429.i.epil.init, %opj_lupSolve.exit.i.epil.preheader ] ; 2 uses
  %epil.iter87 = phi i64 [ %epil.iter87.next, %opj_lupSolve.exit.i.epil ], [ 0, %opj_lupSolve.exit.i.epil.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i29.epil
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !12
  store float %i.hw, ptr %.02429.i.epil, align 4, !tbaa !12
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.02429.i.epil, i64 %.pre-phi
  %indvars.iv.next.i30.epil = add nuw nsw i64 %indvars.iv.i29.epil, 1
  %epil.iter87.next = add i64 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i64 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %.epilog-lcssa, label %opj_lupSolve.exit.i.epil, !llvm.loop !33

.epilog-lcssa:                                    ; preds = %opj_lupSolve.exit.i.epil, %.unr-lcssa
  %i.hy = getelementptr inbounds nuw i8, ptr %.02330.i, i64 4
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %.pre-phi
  br i1 %exitcond38.not.i, label %.sink.split, label %bb.g, !llvm.loop !34

.sink.split:                                      ; preds = %._crit_edge.i, %bb.c, %.epilog-lcssa
  %.0.ph = phi i32 [ 1, %.epilog-lcssa ], [ 0, %bb.c ], [ 0, %._crit_edge.i ]
  tail call void @opj_free(ptr noundef nonnull %i.c) #6
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @opj_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !8, !10, !9}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = distinct !{!14, !8}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !8, !9, !10}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !8}
end_hunk_1
