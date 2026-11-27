Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasrt?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DLASRT\00", align 1

; Function Attrs: nounwind uwtable
define void @dlasrt_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [64 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = getelementptr inbounds i8, ptr %2, i64 -8 ; 13 uses
  store i32 0, ptr %3, align 4, !tbaa !12
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #3
  %.not.not.not = icmp eq i32 %i.d, 0             ; 3 uses
  br i1 %.not.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  %.not211 = icmp eq i32 %i.e, 0
  br i1 %.not211, label %.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !12
  %4 = freeze i32 %i.f                            ; 3 uses
  %i.g = icmp slt i32 %4, 0
  br i1 %i.g, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.pr = load i32, ptr %3, align 4, !tbaa !12     ; 2 uses
  %.not212 = icmp eq i32 %.pr, 0
  br i1 %.not212, label %bb.d, label %.thread

.thread.sink.split:                               ; preds = %.critedge, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %.critedge ] ; 2 uses
  store i32 %.sink, ptr %3, align 4, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c
  %i.h = phi i32 [ %.pr, %bb.c ], [ %.sink, %.thread.sink.split ]
  %i.i = sub nsw i32 0, %i.h
  store i32 %i.i, ptr %i.a, align 4, !tbaa !12
  %i.j = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #3 ; 0 uses
  br label %.loopexit222

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %4, 2
  br i1 %i.k, label %.loopexit222, label %bb.e

bb.e:                                             ; preds = %bb.d
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %7 = or disjoint i64 %6, 1
  store i64 %7, ptr %i.b, align 16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0181 = phi i32 [ 1, %bb.e ], [ %.1, %.loopexit ] ; 4 uses
  %i.l = shl nuw i32 %.0181, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr %i.b, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12   ; 17 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -4       ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12   ; 13 uses
  %i.s = add nsw i32 %.0181, -1                   ; 7 uses
  %i.t = sub nsw i32 %i.r, %i.p                   ; 2 uses
  %i.u = add i32 %i.t, -1                         ; 3 uses
  %or.cond = icmp ult i32 %i.u, 20
  br i1 %or.cond, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %.not.not250 = icmp slt i32 %i.p, %i.r          ; 2 uses
  br i1 %.not.not.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.not250, label %.preheader218.preheader, label %.loopexit

.preheader218.preheader:                          ; preds = %bb.h
  %i.v = sext i32 %i.p to i64                     ; 5 uses
  %i.w = sub i32 %i.r, %i.p
  %xtraiter = and i32 %i.w, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.prol.loopexit, label %.lr.ph.preheader.prol

.lr.ph.preheader.prol:                            ; preds = %.preheader218.preheader
  %indvars.iv276.prol = add nsw i64 %i.v, 1       ; 3 uses
  %.0185243.prol = add nsw i32 %i.p, 1            ; 2 uses
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.i, %.lr.ph.preheader.prol
  %indvars.iv278.prol = phi i64 [ %indvars.iv276.prol, %.lr.ph.preheader.prol ], [ %indvars.iv.next279.prol, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278.prol ; 3 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 -8       ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fcmp ogt double %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %.lr.ph.preheader.prol.loopexit

bb.i:                                             ; preds = %.lr.ph.prol
  store double %i.aa, ptr %i.x, align 8, !tbaa !14
  store double %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next279.prol = add nsw i64 %indvars.iv278.prol, -1 ; 2 uses
  %.not214.not.prol = icmp sgt i64 %indvars.iv.next279.prol, %i.v
  br i1 %.not214.not.prol, label %.lr.ph.prol, label %.lr.ph.preheader.prol.loopexit, !llvm.loop !8

.lr.ph.preheader.prol.loopexit:                   ; preds = %.lr.ph.prol, %bb.i, %.preheader218.preheader
  %indvars.iv276.in.unr = phi i64 [ %i.v, %.preheader218.preheader ], [ %indvars.iv276.prol, %bb.i ], [ %indvars.iv276.prol, %.lr.ph.prol ]
  %.0185243.in.unr = phi i32 [ %i.p, %.preheader218.preheader ], [ %.0185243.prol, %bb.i ], [ %.0185243.prol, %.lr.ph.prol ]
  %i.ac = icmp eq i32 %i.u, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.prol.loopexit, %._crit_edge.1
  %indvars.iv276.in = phi i64 [ %indvars.iv276.1, %._crit_edge.1 ], [ %indvars.iv276.in.unr, %.lr.ph.preheader.prol.loopexit ] ; 2 uses
  %.0185243.in = phi i32 [ %.0185243.1, %._crit_edge.1 ], [ %.0185243.in.unr, %.lr.ph.preheader.prol.loopexit ]
  %indvars.iv276 = add nsw i64 %indvars.iv276.in, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv278 = phi i64 [ %indvars.iv276, %.lr.ph.preheader ], [ %indvars.iv.next279, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278 ; 3 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 -8     ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.ah = fcmp ogt double %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  store double %i.ag, ptr %i.ad, align 8, !tbaa !14
  store double %i.ae, ptr %i.af, align 8, !tbaa !14
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, -1 ; 2 uses
  %.not214.not = icmp sgt i64 %indvars.iv.next279, %i.v
  br i1 %.not214.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.j, %.lr.ph
  %indvars.iv276.1 = add nsw i64 %indvars.iv276.in, 2 ; 2 uses
  %.0185243.1 = add nsw i32 %.0185243.in, 2       ; 2 uses
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.k, %._crit_edge
  %indvars.iv278.1 = phi i64 [ %indvars.iv276.1, %._crit_edge ], [ %indvars.iv.next279.1, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278.1 ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 -8     ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = fcmp ogt double %i.aj, %i.al
  br i1 %i.am, label %bb.k, label %._crit_edge.1

bb.k:                                             ; preds = %.lr.ph.1
  store double %i.al, ptr %i.ai, align 8, !tbaa !14
  store double %i.aj, ptr %i.ak, align 8, !tbaa !14
  %indvars.iv.next279.1 = add nsw i64 %indvars.iv278.1, -1 ; 2 uses
  %.not214.not.1 = icmp sgt i64 %indvars.iv.next279.1, %i.v
  br i1 %.not214.not.1, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !8

._crit_edge.1:                                    ; preds = %bb.k, %.lr.ph.1
  %exitcond.not.1 = icmp eq i32 %.0185243.1, %i.r
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.preheader, !llvm.loop !9

bb.l:                                             ; preds = %bb.g
  br i1 %.not.not250, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.l
  %i.an = sext i32 %i.p to i64                    ; 5 uses
  %i.ao = sub i32 %i.r, %i.p
  %xtraiter336 = and i32 %i.ao, 1
  %lcmp.mod337.not = icmp eq i32 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph246.preheader.prol.loopexit, label %.lr.ph246.preheader.prol

.lr.ph246.preheader.prol:                         ; preds = %.preheader.preheader
  %indvars.iv281.prol = add nsw i64 %i.an, 1      ; 3 uses
  %.1186251.prol = add nsw i32 %i.p, 1            ; 2 uses
  br label %.lr.ph246.prol

.lr.ph246.prol:                                   ; preds = %bb.m, %.lr.ph246.preheader.prol
  %indvars.iv283.prol = phi i64 [ %indvars.iv281.prol, %.lr.ph246.preheader.prol ], [ %indvars.iv.next284.prol, %bb.m ] ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283.prol ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 -8     ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %bb.m, label %.lr.ph246.preheader.prol.loopexit

bb.m:                                             ; preds = %.lr.ph246.prol
  store double %i.as, ptr %i.ap, align 8, !tbaa !14
  store double %i.aq, ptr %i.ar, align 8, !tbaa !14
  %indvars.iv.next284.prol = add nsw i64 %indvars.iv283.prol, -1 ; 2 uses
  %.not213.not.prol = icmp sgt i64 %indvars.iv.next284.prol, %i.an
  br i1 %.not213.not.prol, label %.lr.ph246.prol, label %.lr.ph246.preheader.prol.loopexit, !llvm.loop !10

.lr.ph246.preheader.prol.loopexit:                ; preds = %.lr.ph246.prol, %bb.m, %.preheader.preheader
  %indvars.iv281.in.unr = phi i64 [ %i.an, %.preheader.preheader ], [ %indvars.iv281.prol, %bb.m ], [ %indvars.iv281.prol, %.lr.ph246.prol ]
  %.1186251.in.unr = phi i32 [ %i.p, %.preheader.preheader ], [ %.1186251.prol, %bb.m ], [ %.1186251.prol, %.lr.ph246.prol ]
  %i.au = icmp eq i32 %i.u, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.lr.ph246.preheader.prol.loopexit, %._crit_edge247.1
  %indvars.iv281.in = phi i64 [ %indvars.iv281.1, %._crit_edge247.1 ], [ %indvars.iv281.in.unr, %.lr.ph246.preheader.prol.loopexit ] ; 2 uses
  %.1186251.in = phi i32 [ %.1186251.1, %._crit_edge247.1 ], [ %.1186251.in.unr, %.lr.ph246.preheader.prol.loopexit ]
  %indvars.iv281 = add nsw i64 %indvars.iv281.in, 1
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %bb.n
  %indvars.iv283 = phi i64 [ %indvars.iv281, %.lr.ph246.preheader ], [ %indvars.iv.next284, %bb.n ] ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283 ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 -8     ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %i.az = fcmp olt double %i.aw, %i.ay
  br i1 %i.az, label %bb.n, label %._crit_edge247

bb.n:                                             ; preds = %.lr.ph246
  store double %i.ay, ptr %i.av, align 8, !tbaa !14
  store double %i.aw, ptr %i.ax, align 8, !tbaa !14
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -1 ; 2 uses
  %.not213.not = icmp sgt i64 %indvars.iv.next284, %i.an
  br i1 %.not213.not, label %.lr.ph246, label %._crit_edge247, !llvm.loop !10

._crit_edge247:                                   ; preds = %bb.n, %.lr.ph246
  %indvars.iv281.1 = add nsw i64 %indvars.iv281.in, 2 ; 2 uses
  %.1186251.1 = add nsw i32 %.1186251.in, 2       ; 2 uses
  br label %.lr.ph246.1

.lr.ph246.1:                                      ; preds = %bb.o, %._crit_edge247
  %indvars.iv283.1 = phi i64 [ %indvars.iv281.1, %._crit_edge247 ], [ %indvars.iv.next284.1, %bb.o ] ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283.1 ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8     ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14 ; 2 uses
  %i.be = fcmp olt double %i.bb, %i.bd
  br i1 %i.be, label %bb.o, label %._crit_edge247.1

bb.o:                                             ; preds = %.lr.ph246.1
  store double %i.bd, ptr %i.ba, align 8, !tbaa !14
  store double %i.bb, ptr %i.bc, align 8, !tbaa !14
  %indvars.iv.next284.1 = add nsw i64 %indvars.iv283.1, -1 ; 2 uses
  %.not213.not.1 = icmp sgt i64 %indvars.iv.next284.1, %i.an
  br i1 %.not213.not.1, label %.lr.ph246.1, label %._crit_edge247.1, !llvm.loop !10

._crit_edge247.1:                                 ; preds = %bb.o, %.lr.ph246.1
  %exitcond286.not.1 = icmp eq i32 %.1186251.1, %i.r
  br i1 %exitcond286.not.1, label %.loopexit, label %.lr.ph246.preheader, !llvm.loop !11

bb.p:                                             ; preds = %bb.f
  %i.bf = icmp sgt i32 %i.t, 20
  br i1 %i.bf, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %i.p to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14 ; 5 uses
  %i.bj = sext i32 %i.r to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14 ; 5 uses
end_hunk_0
