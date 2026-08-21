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
  %i.b = alloca [64 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = getelementptr inbounds i8, ptr %2, i64 -8 ; 13 uses
  store i32 0, ptr %3, align 4, !tbaa !8
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #3
  %.not.not.not = icmp eq i32 %i.d, 0             ; 3 uses
  br i1 %.not.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #3
  %.not211 = icmp eq i32 %i.e, 0
  br i1 %.not211, label %.thread.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !8      ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.pr = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %.not212 = icmp eq i32 %.pr, 0
  br i1 %.not212, label %bb.d, label %.thread

.thread.sink.split:                               ; preds = %.critedge, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %.critedge ] ; 2 uses
  store i32 %.sink, ptr %3, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c
  %i.h = phi i32 [ %.pr, %bb.c ], [ %.sink, %.thread.sink.split ]
  %i.i = sub nsw i32 0, %i.h
  store i32 %i.i, ptr %i.a, align 4, !tbaa !8
  %i.j = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #3 ; 0 uses
  br label %.loopexit222

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.f, 2
  br i1 %i.k, label %.loopexit222, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.b, align 16, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.l, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0181 = phi i32 [ 1, %bb.e ], [ %.1, %.loopexit ] ; 4 uses
  %i.m = shl nuw i32 %.0181, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -8       ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8    ; 21 uses
  %i.r = getelementptr i8, ptr %i.o, i64 -4       ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 13 uses
  %i.t = add nsw i32 %.0181, -1                   ; 7 uses
  %i.u = sub nsw i32 %i.s, %i.q                   ; 2 uses
  %i.v = add i32 %i.u, -1                         ; 3 uses
  %or.cond = icmp ult i32 %i.v, 20
  br i1 %or.cond, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %.not.not250 = icmp slt i32 %i.q, %i.s          ; 2 uses
  br i1 %.not.not.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.not250, label %.preheader218.preheader, label %.loopexit

.preheader218.preheader:                          ; preds = %bb.h
  %i.w = sext i32 %i.q to i64                     ; 5 uses
  %i.x = sub i32 %i.s, %i.q
  %xtraiter = and i32 %i.x, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader218.prol.loopexit, label %.preheader218.prol

.preheader218.prol:                               ; preds = %.preheader218.preheader
  %indvars.iv276.prol = add nsw i64 %i.w, 1       ; 3 uses
  %.0185243.prol = add nsw i32 %i.q, 1            ; 2 uses
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.i, %.preheader218.prol
  %indvars.iv278.prol = phi i64 [ %indvars.iv.next279.prol, %bb.i ], [ %indvars.iv276.prol, %.preheader218.prol ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278.prol ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -8      ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9 ; 2 uses
  %i.ac = fcmp ogt double %i.z, %i.ab
  br i1 %i.ac, label %bb.i, label %.preheader218.prol.loopexit

bb.i:                                             ; preds = %.lr.ph.prol
  store double %i.ab, ptr %i.y, align 8, !tbaa !9
  store double %i.z, ptr %i.aa, align 8, !tbaa !9
  %indvars.iv.next279.prol = add nsw i64 %indvars.iv278.prol, -1 ; 2 uses
  %.not214.not.prol = icmp sgt i64 %indvars.iv.next279.prol, %i.w
  br i1 %.not214.not.prol, label %.lr.ph.prol, label %.preheader218.prol.loopexit, !llvm.loop !11

.preheader218.prol.loopexit:                      ; preds = %bb.i, %.lr.ph.prol, %.preheader218.preheader
  %indvars.iv276.in.unr = phi i64 [ %i.w, %.preheader218.preheader ], [ %indvars.iv276.prol, %.lr.ph.prol ], [ %indvars.iv276.prol, %bb.i ]
  %.0185243.in.unr = phi i32 [ %i.q, %.preheader218.preheader ], [ %.0185243.prol, %.lr.ph.prol ], [ %.0185243.prol, %bb.i ]
  %i.ad = icmp eq i32 %i.v, 0
  br i1 %i.ad, label %.loopexit, label %.preheader218

.preheader218:                                    ; preds = %.preheader218.prol.loopexit, %._crit_edge.1
  %indvars.iv276.in = phi i64 [ %indvars.iv276.1, %._crit_edge.1 ], [ %indvars.iv276.in.unr, %.preheader218.prol.loopexit ] ; 2 uses
  %.0185243.in = phi i32 [ %.0185243.1, %._crit_edge.1 ], [ %.0185243.in.unr, %.preheader218.prol.loopexit ] ; 3 uses
  %.0185243 = add nsw i32 %.0185243.in, 1
  %.not214.not238.not = icmp slt i32 %.0185243.in, %i.q
  br i1 %.not214.not238.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader218
  %indvars.iv276 = add nsw i64 %indvars.iv276.in, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %bb.j ], [ %indvars.iv276, %.lr.ph.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278 ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !9 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !9 ; 2 uses
  %i.ai = fcmp ogt double %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  store double %i.ah, ptr %i.ae, align 8, !tbaa !9
  store double %i.af, ptr %i.ag, align 8, !tbaa !9
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, -1 ; 2 uses
  %.not214.not = icmp sgt i64 %indvars.iv.next279, %i.w
  br i1 %.not214.not, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %.preheader218
  %indvars.iv276.1 = add nsw i64 %indvars.iv276.in, 2 ; 2 uses
  %.0185243.1 = add nsw i32 %.0185243.in, 2       ; 2 uses
  %.not214.not238.not.1 = icmp slt i32 %.0185243, %i.q
  br i1 %.not214.not238.not.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %bb.k
  %indvars.iv278.1 = phi i64 [ %indvars.iv.next279.1, %bb.k ], [ %indvars.iv276.1, %._crit_edge ] ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv278.1 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !9 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 -8     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !9 ; 2 uses
  %i.an = fcmp ogt double %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %._crit_edge.1

bb.k:                                             ; preds = %.lr.ph.1
  store double %i.am, ptr %i.aj, align 8, !tbaa !9
  store double %i.ak, ptr %i.al, align 8, !tbaa !9
  %indvars.iv.next279.1 = add nsw i64 %indvars.iv278.1, -1 ; 2 uses
  %.not214.not.1 = icmp sgt i64 %indvars.iv.next279.1, %i.w
  br i1 %.not214.not.1, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !11

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.k, %._crit_edge
  %exitcond.not.1 = icmp eq i32 %.0185243.1, %i.s
  br i1 %exitcond.not.1, label %.loopexit, label %.preheader218, !llvm.loop !13

bb.l:                                             ; preds = %bb.g
  br i1 %.not.not250, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.l
  %i.ao = sext i32 %i.q to i64                    ; 5 uses
  %i.ap = sub i32 %i.s, %i.q
  %xtraiter336 = and i32 %i.ap, 1
  %lcmp.mod337.not = icmp eq i32 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %indvars.iv281.prol = add nsw i64 %i.ao, 1      ; 3 uses
  %.1186251.prol = add nsw i32 %i.q, 1            ; 2 uses
  br label %.lr.ph246.prol

.lr.ph246.prol:                                   ; preds = %bb.m, %.preheader.prol
  %indvars.iv283.prol = phi i64 [ %indvars.iv.next284.prol, %bb.m ], [ %indvars.iv281.prol, %.preheader.prol ] ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283.prol ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !9 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 -8     ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !9 ; 2 uses
  %i.au = fcmp olt double %i.ar, %i.at
  br i1 %i.au, label %bb.m, label %.preheader.prol.loopexit

bb.m:                                             ; preds = %.lr.ph246.prol
  store double %i.at, ptr %i.aq, align 8, !tbaa !9
  store double %i.ar, ptr %i.as, align 8, !tbaa !9
  %indvars.iv.next284.prol = add nsw i64 %indvars.iv283.prol, -1 ; 2 uses
  %.not213.not.prol = icmp sgt i64 %indvars.iv.next284.prol, %i.ao
  br i1 %.not213.not.prol, label %.lr.ph246.prol, label %.preheader.prol.loopexit, !llvm.loop !14

.preheader.prol.loopexit:                         ; preds = %bb.m, %.lr.ph246.prol, %.preheader.preheader
  %indvars.iv281.in.unr = phi i64 [ %i.ao, %.preheader.preheader ], [ %indvars.iv281.prol, %.lr.ph246.prol ], [ %indvars.iv281.prol, %bb.m ]
  %.1186251.in.unr = phi i32 [ %i.q, %.preheader.preheader ], [ %.1186251.prol, %.lr.ph246.prol ], [ %.1186251.prol, %bb.m ]
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.loopexit, label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.prol.loopexit, %._crit_edge247.1
  %indvars.iv281.in = phi i64 [ %indvars.iv281.1, %._crit_edge247.1 ], [ %indvars.iv281.in.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.1186251.in = phi i32 [ %.1186251.1, %._crit_edge247.1 ], [ %.1186251.in.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.1186251 = add nsw i32 %.1186251.in, 1
  %.not213.not244.not = icmp slt i32 %.1186251.in, %i.q
  br i1 %.not213.not244.not, label %._crit_edge247, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %.preheader.a
  %indvars.iv281 = add nsw i64 %indvars.iv281.in, 1
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %bb.n
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %bb.n ], [ %indvars.iv281, %.lr.ph246.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283 ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !9 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 -8     ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9 ; 2 uses
  %i.ba = fcmp olt double %i.ax, %i.az
  br i1 %i.ba, label %bb.n, label %._crit_edge247

bb.n:                                             ; preds = %.lr.ph246
  store double %i.az, ptr %i.aw, align 8, !tbaa !9
  store double %i.ax, ptr %i.ay, align 8, !tbaa !9
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -1 ; 2 uses
  %.not213.not = icmp sgt i64 %indvars.iv.next284, %i.ao
  br i1 %.not213.not, label %.lr.ph246, label %._crit_edge247, !llvm.loop !14

._crit_edge247:                                   ; preds = %bb.n, %.lr.ph246, %.preheader.a
  %indvars.iv281.1 = add nsw i64 %indvars.iv281.in, 2 ; 2 uses
  %.1186251.1 = add nsw i32 %.1186251.in, 2       ; 2 uses
  %.not213.not244.not.1 = icmp slt i32 %.1186251, %i.q
  br i1 %.not213.not244.not.1, label %._crit_edge247.1, label %.lr.ph246.1

.lr.ph246.1:                                      ; preds = %._crit_edge247, %bb.o
  %indvars.iv283.1 = phi i64 [ %indvars.iv.next284.1, %bb.o ], [ %indvars.iv281.1, %._crit_edge247 ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv283.1 ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !9 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 -8     ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.bf = fcmp olt double %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %._crit_edge247.1

bb.o:                                             ; preds = %.lr.ph246.1
  store double %i.be, ptr %i.bb, align 8, !tbaa !9
  store double %i.bc, ptr %i.bd, align 8, !tbaa !9
  %indvars.iv.next284.1 = add nsw i64 %indvars.iv283.1, -1 ; 2 uses
  %.not213.not.1 = icmp sgt i64 %indvars.iv.next284.1, %i.ao
  br i1 %.not213.not.1, label %.lr.ph246.1, label %._crit_edge247.1, !llvm.loop !14

._crit_edge247.1:                                 ; preds = %.lr.ph246.1, %bb.o, %._crit_edge247
  %exitcond286.not.1 = icmp eq i32 %.1186251.1, %i.s
  br i1 %exitcond286.not.1, label %.loopexit, label %.preheader.a, !llvm.loop !15

bb.p:                                             ; preds = %bb.f
  %i.bg = icmp sgt i32 %i.u, 20
  br i1 %i.bg, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bh = sext i32 %i.q to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !9 ; 5 uses
  %i.bk = sext i32 %i.s to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9 ; 5 uses
  %i.bn = add nsw i32 %i.s, %i.q
  %i.bo = sdiv i32 %i.bn, 2
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9 ; 6 uses
  %i.bs = fcmp olt double %i.bj, %i.bm
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bt = fcmp olt double %i.br, %i.bj
  br i1 %i.bt, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = fcmp olt double %i.br, %i.bm
  %. = select i1 %i.bu, double %i.br, double %i.bm
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.bv = fcmp olt double %i.br, %i.bm
  br i1 %i.bv, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = fcmp olt double %i.br, %i.bj
  %.216 = select i1 %i.bw, double %i.br, double %i.bj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0182 = phi double [ %i.bm, %bb.t ], [ %., %bb.s ], [ %i.bj, %bb.r ], [ %.216, %bb.u ] ; 4 uses
  %i.bx = add nsw i32 %i.q, -1
  %i.by = add nsw i32 %i.s, 1
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = sext i32 %i.bx to i64                   ; 2 uses
  br i1 %.not.not.not, label %.preheader327, label %.preheader328

.preheader328:                                    ; preds = %bb.v, %bb.z
  %.2187 = phi i64 [ %indvars.iv.next268, %bb.z ], [ %i.ca, %bb.v ]
  %.2 = phi i64 [ %indvars.iv.next, %bb.z ], [ %i.bz, %bb.v ]
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader328
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ %.2, %.preheader328 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 6 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9 ; 2 uses
  %i.cd = fcmp olt double %i.cc, %.0182
  br i1 %i.cd, label %bb.w, label %.preheader220

.preheader220:                                    ; preds = %bb.w
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next
  br label %bb.x

bb.x:                                             ; preds = %.preheader220, %bb.x
  %indvars.iv267 = phi i64 [ %.2187, %.preheader220 ], [ %indvars.iv.next268, %bb.x ] ; 3 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv267
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !9 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, %.0182
  br i1 %i.ch, label %bb.x, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = icmp slt i64 %indvars.iv.next268, %indvars.iv.next
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv267
  store double %i.cc, ptr %i.cj, align 8, !tbaa !9
  store double %i.cg, ptr %i.ce, align 8, !tbaa !9
  br label %.preheader328

bb.aa:                                            ; preds = %bb.y
  %i.ck = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.cl = trunc nsw i64 %indvars.iv.next to i32   ; 3 uses
  %i.cm = sub nsw i32 %i.cl, %i.q
  %i.cn = sub i32 %i.s, %i.ck
  %i.co = icmp sgt i32 %i.cm, %i.cn
  %i.cp = add nuw nsw i32 %.0181, 1               ; 3 uses
  %i.cq = shl nuw i32 %i.cp, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.b, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8     ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 -4     ; 2 uses
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.cl, ptr %i.r, align 4, !tbaa !8
  store i32 %i.ck, ptr %i.ct, align 8, !tbaa !8
  store i32 %i.s, ptr %i.cu, align 4, !tbaa !8
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.ck, ptr %i.p, align 8, !tbaa !8
  store i32 %i.q, ptr %i.ct, align 8, !tbaa !8
  store i32 %i.cl, ptr %i.cu, align 4, !tbaa !8
  br label %.loopexit

.preheader327:                                    ; preds = %bb.v, %bb.ag
  %.4189 = phi i64 [ %indvars.iv.next274, %bb.ag ], [ %i.ca, %bb.v ]
  %.4 = phi i64 [ %indvars.iv.next271, %bb.ag ], [ %i.bz, %bb.v ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader327
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %bb.ad ], [ %.4, %.preheader327 ] ; 2 uses
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, -1 ; 6 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next271
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !9 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, %.0182
  br i1 %i.cx, label %bb.ad, label %.preheader219

.preheader219:                                    ; preds = %bb.ad
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next271
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader219, %bb.ae
  %indvars.iv273 = phi i64 [ %.4189, %.preheader219 ], [ %indvars.iv.next274, %bb.ae ] ; 3 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %2, i64 %indvars.iv273
  %i.da = load double, ptr %i.cz, align 8, !tbaa !9 ; 2 uses
  %i.db = fcmp olt double %i.da, %.0182
  br i1 %i.db, label %bb.ae, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = icmp slt i64 %indvars.iv.next274, %indvars.iv.next271
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = getelementptr [8 x i8], ptr %2, i64 %indvars.iv273
  store double %i.cw, ptr %i.dd, align 8, !tbaa !9
  store double %i.da, ptr %i.cy, align 8, !tbaa !9
  br label %.preheader327

bb.ah:                                            ; preds = %bb.af
  %i.de = trunc nsw i64 %indvars.iv270 to i32     ; 3 uses
  %i.df = trunc nsw i64 %indvars.iv.next271 to i32 ; 3 uses
  %i.dg = sub nsw i32 %i.df, %i.q
  %i.dh = sub i32 %i.s, %i.de
  %i.di = icmp sgt i32 %i.dg, %i.dh
  %i.dj = add nuw nsw i32 %.0181, 1               ; 3 uses
  %i.dk = shl nuw i32 %i.dj, 1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.b, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8     ; 2 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 -4     ; 2 uses
  br i1 %i.di, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.df, ptr %i.r, align 4, !tbaa !8
  store i32 %i.de, ptr %i.dn, align 8, !tbaa !8
  store i32 %i.s, ptr %i.do, align 4, !tbaa !8
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah
  store i32 %i.de, ptr %i.p, align 8, !tbaa !8
  store i32 %i.q, ptr %i.dn, align 8, !tbaa !8
  store i32 %i.df, ptr %i.do, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader218.prol.loopexit, %._crit_edge.1, %.preheader.prol.loopexit, %._crit_edge247.1, %bb.h, %bb.l, %bb.p, %bb.ai, %bb.aj, %bb.ab, %bb.ac
  %.1 = phi i32 [ %i.t, %bb.l ], [ %i.t, %bb.p ], [ %i.cp, %bb.ab ], [ %i.cp, %bb.ac ], [ %i.dj, %bb.ai ], [ %i.dj, %bb.aj ], [ %i.t, %bb.h ], [ %i.t, %.preheader.prol.loopexit ], [ %i.t, %._crit_edge247.1 ], [ %i.t, %._crit_edge.1 ], [ %i.t, %.preheader218.prol.loopexit ] ; 2 uses
  %i.dp = icmp sgt i32 %.1, 0
  br i1 %i.dp, label %bb.f, label %.loopexit222

.loopexit222:                                     ; preds = %.loopexit, %bb.d, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

end_hunk_0
