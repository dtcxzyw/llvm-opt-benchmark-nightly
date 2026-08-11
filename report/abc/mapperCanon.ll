inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Map_CanonComputeSlow(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %2                    ; 3 uses
  %i.b = icmp slt i32 %1, 6
  store i32 -1, ptr %5, align 4, !tbaa !8
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %.not72 = icmp eq i32 %2, 31
  br i1 %.not72, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.b
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i.us.preheader, label %Map_CanonComputePhase.exit

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph70
  %exitcond.not.i.us = icmp eq i32 %1, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %exitcond.not.i.us.1 = icmp eq i32 %1, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %exitcond.not.i.us.2 = icmp eq i32 %1, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %exitcond.not.i.us.3 = icmp eq i32 %1, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %bb.o
  %.069.us = phi i32 [ %i.bb, %bb.o ], [ 0, %.lr.ph.preheader.i.us.preheader ] ; 8 uses
  %.04868.us = phi i32 [ %.149.us, %bb.o ], [ 0, %.lr.ph.preheader.i.us.preheader ] ; 4 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !8      ; 3 uses
  %i.i = and i32 %.069.us, 1
  %.not.i.us = icmp eq i32 %i.i, 0
  br i1 %.not.i.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.us
  %i.j = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.h, %i.k
  %i.m = shl i32 %i.l, 1
  %i.n = and i32 %i.j, %i.h
  %i.o = lshr i32 %i.n, 1
  %i.p = or i32 %i.m, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i.us
  %.1.i.us = phi i32 [ %i.p, %bb.c ], [ %i.h, %.lr.ph.preheader.i.us ] ; 4 uses
  br i1 %exitcond.not.i.us, label %Map_CanonComputePhase.exit.loopexit.us, label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %bb.d
  %i.q = and i32 %.069.us, 2
  %.not.i.us.1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.1
  %i.r = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %.1.i.us, %i.s
  %i.u = shl i32 %i.t, 2
  %i.v = and i32 %i.r, %.1.i.us
  %i.w = lshr i32 %i.v, 2
  %i.x = or i32 %i.u, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.1
  %.1.i.us.1 = phi i32 [ %i.x, %bb.e ], [ %.1.i.us, %.lr.ph.i.us.1 ] ; 4 uses
  br i1 %exitcond.not.i.us.1, label %Map_CanonComputePhase.exit.loopexit.us, label %.lr.ph.i.us.2

.lr.ph.i.us.2:                                    ; preds = %bb.f
  %i.y = and i32 %.069.us, 4
  %.not.i.us.2 = icmp eq i32 %i.y, 0
  br i1 %.not.i.us.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.2
  %i.z = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.1.i.us.1, %i.aa
  %i.ac = shl i32 %i.ab, 4
  %i.ad = and i32 %i.z, %.1.i.us.1
  %i.ae = lshr i32 %i.ad, 4
  %i.af = or i32 %i.ac, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.us.2
  %.1.i.us.2 = phi i32 [ %i.af, %bb.g ], [ %.1.i.us.1, %.lr.ph.i.us.2 ] ; 4 uses
  br i1 %exitcond.not.i.us.2, label %Map_CanonComputePhase.exit.loopexit.us, label %.lr.ph.i.us.3

.lr.ph.i.us.3:                                    ; preds = %bb.h
  %i.ag = and i32 %.069.us, 8
  %.not.i.us.3 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.us.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us.3
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %.1.i.us.2, %i.ai
  %i.ak = shl i32 %i.aj, 8
  %i.al = and i32 %i.ah, %.1.i.us.2
  %i.am = lshr i32 %i.al, 8
  %i.an = or i32 %i.ak, %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.3
  %.1.i.us.3 = phi i32 [ %i.an, %bb.i ], [ %.1.i.us.2, %.lr.ph.i.us.3 ] ; 3 uses
  %i.ao = and i32 %.069.us, 16
  %.not.i.us.4 = icmp eq i32 %i.ao, 0
  %or.cond90 = or i1 %exitcond.not.i.us.3, %.not.i.us.4
  br i1 %or.cond90, label %Map_CanonComputePhase.exit.loopexit.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %.1.i.us.3, %i.aq
  %i.as = and i32 %i.ap, %.1.i.us.3
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.as, i32 16)
  br label %Map_CanonComputePhase.exit.loopexit.us

bb.l:                                             ; preds = %Map_CanonComputePhase.exit.loopexit.us
  %i.au = icmp eq i32 %i.bc, %.1.i.us.lcssa
  %i.av = icmp slt i32 %.04868.us, 4
  %or.cond.us = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.us, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = trunc i32 %.069.us to i8
  %i.ax = add nsw i32 %.04868.us, 1
  %i.ay = sext i32 %.04868.us to i64
  %i.az = getelementptr inbounds i8, ptr %4, i64 %i.ay
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !9
  br label %bb.o

bb.n:                                             ; preds = %Map_CanonComputePhase.exit.loopexit.us
  store i32 %.1.i.us.lcssa, ptr %5, align 4, !tbaa !8
  %i.ba = trunc i32 %.069.us to i8
  store i8 %i.ba, ptr %4, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.149.us = phi i32 [ 1, %bb.n ], [ %i.ax, %bb.m ], [ %.04868.us, %bb.l ] ; 2 uses
  %i.bb = add nuw nsw i32 %.069.us, 1             ; 2 uses
  %exitcond77.not = icmp eq i32 %i.bb, %i.a
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !10

Map_CanonComputePhase.exit.loopexit.us:           ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d
  %.1.i.us.lcssa = phi i32 [ %.1.i.us, %bb.d ], [ %.1.i.us.1, %bb.f ], [ %.1.i.us.2, %bb.h ], [ %.1.i.us.3, %bb.j ], [ %i.at, %bb.k ] ; 3 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, %.1.i.us.lcssa
  br i1 %i.bd, label %bb.n, label %bb.l

Map_CanonComputePhase.exit:                       ; preds = %.lr.ph70, %bb.s
  %.069 = phi i32 [ %i.bo, %bb.s ], [ 0, %.lr.ph70 ] ; 3 uses
  %.04868 = phi i32 [ %.149, %bb.s ], [ 0, %.lr.ph70 ] ; 4 uses
  %i.be = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.bf = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, %i.be
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %Map_CanonComputePhase.exit
  store i32 %i.be, ptr %5, align 4, !tbaa !8
  %i.bh = trunc i32 %.069 to i8
  store i8 %i.bh, ptr %4, align 1, !tbaa !9
  br label %bb.s

bb.q:                                             ; preds = %Map_CanonComputePhase.exit
  %i.bi = icmp eq i32 %i.bf, %i.be
  %i.bj = icmp slt i32 %.04868, 4
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = trunc i32 %.069 to i8
  %i.bl = add nsw i32 %.04868, 1
  %i.bm = sext i32 %.04868 to i64
  %i.bn = getelementptr inbounds i8, ptr %4, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.149 = phi i32 [ 1, %bb.p ], [ %i.bl, %bb.r ], [ %.04868, %bb.q ] ; 2 uses
  %i.bo = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond75.not = icmp eq i32 %i.bo, %i.a
  br i1 %exitcond75.not, label %._crit_edge, label %Map_CanonComputePhase.exit, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.s, %bb.o, %bb.b
  %.048.lcssa = phi i32 [ 0, %bb.b ], [ %.149.us, %bb.o ], [ %.149, %bb.s ]
  %i.bp = load i32, ptr %5, align 4, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !8
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 -1, ptr %i.br, align 4, !tbaa !8
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %wide.trip.count.i57 = zext nneg i32 %1 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.ac
  %.167 = phi i32 [ 0, %.lr.ph ], [ %i.db, %bb.ac ] ; 5 uses
  %.266 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ac ] ; 5 uses
  %i.bs = load <2 x i32>, ptr %3, align 4, !tbaa !8 ; 3 uses
  %i.bt = icmp eq i32 %.167, 0
  br i1 %i.bt, label %Map_CanonComputePhase6.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %.sink.split.i
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i60, %.sink.split.i ], [ 0, %bb.u ] ; 2 uses
  %.037.i = phi i32 [ %i.cl, %.sink.split.i ], [ 1, %bb.u ] ; 4 uses
  %i.bu = phi <2 x i32> [ %i.cj, %.sink.split.i ], [ %i.bs, %bb.u ]
  %i.bv = phi <2 x i32> [ %i.ck, %.sink.split.i ], [ %i.bs, %bb.u ] ; 4 uses
  %i.bw = and i32 %.037.i, %.167
  %.not.i59 = icmp eq i32 %i.bw, 0
  br i1 %.not.i59, label %.sink.split.i, label %bb.v

bb.v:                                             ; preds = %.preheader.i
  %i.bx = icmp slt i32 %.037.i, 32
  %i.by = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  br i1 %i.bx, label %bb.w, label %.sink.split.i

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i58
  %i.ca = load <2 x i32>, ptr %i.bz, align 4, !tbaa !8 ; 2 uses
  %i.cb = xor <2 x i32> %i.ca, splat (i32 -1)
  %i.cc = and <2 x i32> %i.bv, %i.cb
  %i.cd = insertelement <2 x i32> poison, i32 %.037.i, i64 0
  %i.ce = shufflevector <2 x i32> %i.cd, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = shl <2 x i32> %i.cc, %i.ce
  %i.cg = and <2 x i32> %i.ca, %i.bv
  %i.ch = lshr <2 x i32> %i.cg, %i.ce
  %i.ci = or <2 x i32> %i.cf, %i.ch               ; 2 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %.preheader.i
  %i.cj = phi <2 x i32> [ %i.bu, %.preheader.i ], [ %i.ci, %bb.w ], [ %i.by, %bb.v ] ; 2 uses
  %i.ck = phi <2 x i32> [ %i.bv, %.preheader.i ], [ %i.ci, %bb.w ], [ %i.by, %bb.v ]
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %i.cl = shl i32 %.037.i, 1
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i57
  br i1 %exitcond.not.i61, label %Map_CanonComputePhase6.exit, label %.preheader.i, !llvm.loop !12

Map_CanonComputePhase6.exit:                      ; preds = %.sink.split.i, %bb.u
  %i.cm = phi <2 x i32> [ %i.bs, %bb.u ], [ %i.cj, %.sink.split.i ] ; 3 uses
  %i.cn = load i32, ptr %i.br, align 4, !tbaa !8  ; 2 uses
  %i.co = extractelement <2 x i32> %i.cm, i64 1   ; 2 uses
  %i.cp = icmp ugt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.z, label %bb.x

bb.x:                                             ; preds = %Map_CanonComputePhase6.exit
  %i.cq = icmp eq i32 %i.cn, %i.co
  br i1 %i.cq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cr = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cm, i64 0   ; 2 uses
  %i.ct = icmp ugt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %Map_CanonComputePhase6.exit
  store <2 x i32> %i.cm, ptr %5, align 4, !tbaa !8
  %i.cu = trunc i32 %.167 to i8
  store i8 %i.cu, ptr %4, align 1, !tbaa !9
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cv = icmp eq i32 %i.cr, %i.cs
  %i.cw = icmp slt i32 %.266, 4
  %or.cond3 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond3, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = trunc i32 %.167 to i8
  %i.cy = add nsw i32 %.266, 1
  %i.cz = sext i32 %.266 to i64
  %i.da = getelementptr inbounds i8, ptr %4, i64 %i.cz
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.z, %bb.ab, %bb.aa
  %.3 = phi i32 [ 1, %bb.z ], [ %i.cy, %bb.ab ], [ %.266, %bb.aa ], [ %.266, %bb.x ] ; 2 uses
  %i.db = add nuw nsw i32 %.167, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.db, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.u, !llvm.loop !13

.loopexit:                                        ; preds = %bb.ac, %bb.t, %._crit_edge
  %.4 = phi i32 [ %.048.lcssa, %._crit_edge ], [ 0, %bb.t ], [ %.3, %bb.ac ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @Map_CanonComputeFast(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 6
  br i1 %i.a, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = shl nuw nsw i32 1, %2
  store i32 -1, ptr %5, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 -1, ptr %i.d, align 4, !tbaa !8
  %.not.i = icmp eq i32 %2, 31
  br i1 %.not.i, label %Map_CanonComputeSlow.exit, label %Map_CanonComputePhase6.exit.i.peel

Map_CanonComputePhase6.exit.i.peel:               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %.not183 = icmp eq i32 %i.g, -1
  %.not184 = icmp eq i32 %i.f, -1
  %or.cond = select i1 %.not183, i1 %.not184, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Map_CanonComputePhase6.exit.i.peel
  store i32 %i.f, ptr %5, align 4, !tbaa !8
  store i32 %i.g, ptr %i.d, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %Map_CanonComputePhase6.exit.i.peel, %bb.c
  store i8 0, ptr %4, align 1, !tbaa !9
  %exitcond.not.i.peel = icmp eq i32 %2, 0
  br i1 %exitcond.not.i.peel, label %Map_CanonComputeSlow.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  br label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.peel.next, %bb.o
  %.167.i = phi i32 [ 1, %.peel.next ], [ %i.bx, %bb.o ] ; 9 uses
  %.266.i = phi i32 [ 1, %.peel.next ], [ %.3.i, %bb.o ] ; 5 uses
  %i.m = load <2 x i32>, ptr %3, align 4, !tbaa !8 ; 3 uses
  %i.n = and i32 %.167.i, 1
  %.not.i59.i = icmp eq i32 %i.n, 0
  br i1 %.not.i59.i, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.preheader
  %i.o = load <2 x i32>, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %i.p = xor <2 x i32> %i.o, splat (i32 -1)
  %i.q = and <2 x i32> %i.m, %i.p
  %i.r = and <2 x i32> %i.o, %i.m
  %i.s = shl <2 x i32> %i.q, splat (i32 1)
  %i.t = lshr <2 x i32> %i.r, splat (i32 1)
  %i.u = or <2 x i32> %i.s, %i.t
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e, %.preheader.i.i.preheader
  %i.v = phi <2 x i32> [ %i.m, %.preheader.i.i.preheader ], [ %i.u, %bb.e ] ; 3 uses
  %i.w = and i32 %.167.i, 2
  %.not.i59.i.1 = icmp eq i32 %i.w, 0
  br i1 %.not.i59.i.1, label %.sink.split.i.i.1, label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i
  %i.x = load <2 x i32>, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.y = xor <2 x i32> %i.x, splat (i32 -1)
  %i.z = and <2 x i32> %i.v, %i.y
  %i.aa = shl <2 x i32> %i.z, splat (i32 2)
  %i.ab = and <2 x i32> %i.x, %i.v
  %i.ac = lshr <2 x i32> %i.ab, splat (i32 2)
  %i.ad = or <2 x i32> %i.aa, %i.ac
  br label %.sink.split.i.i.1

.sink.split.i.i.1:                                ; preds = %bb.f, %.sink.split.i.i
  %i.ae = phi <2 x i32> [ %i.v, %.sink.split.i.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.af = and i32 %.167.i, 4
  %.not.i59.i.2 = icmp eq i32 %i.af, 0
  br i1 %.not.i59.i.2, label %.sink.split.i.i.2, label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i.1
  %i.ag = load <2 x i32>, ptr %i.i, align 4, !tbaa !8 ; 2 uses
  %i.ah = xor <2 x i32> %i.ag, splat (i32 -1)
  %i.ai = and <2 x i32> %i.ae, %i.ah
  %i.aj = shl <2 x i32> %i.ai, splat (i32 4)
  %i.ak = and <2 x i32> %i.ag, %i.ae
  %i.al = lshr <2 x i32> %i.ak, splat (i32 4)
  %i.am = or <2 x i32> %i.aj, %i.al
  br label %.sink.split.i.i.2

.sink.split.i.i.2:                                ; preds = %bb.g, %.sink.split.i.i.1
  %i.an = phi <2 x i32> [ %i.ae, %.sink.split.i.i.1 ], [ %i.am, %bb.g ] ; 3 uses
  %i.ao = and i32 %.167.i, 8
  %.not.i59.i.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i59.i.3, label %.sink.split.i.i.3, label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i.2
  %i.ap = load <2 x i32>, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.aq = xor <2 x i32> %i.ap, splat (i32 -1)
  %i.ar = and <2 x i32> %i.an, %i.aq
  %i.as = shl <2 x i32> %i.ar, splat (i32 8)
  %i.at = and <2 x i32> %i.ap, %i.an
  %i.au = lshr <2 x i32> %i.at, splat (i32 8)
  %i.av = or <2 x i32> %i.as, %i.au
  br label %.sink.split.i.i.3

.sink.split.i.i.3:                                ; preds = %bb.h, %.sink.split.i.i.2
  %i.aw = phi <2 x i32> [ %i.an, %.sink.split.i.i.2 ], [ %i.av, %bb.h ] ; 2 uses
  %i.ax = and i32 %.167.i, 16
  %.not.i59.i.4 = icmp eq i32 %i.ax, 0
  %i.ay = extractelement <2 x i32> %i.aw, i64 0   ; 3 uses
  %i.az = extractelement <2 x i32> %i.aw, i64 1   ; 3 uses
  br i1 %.not.i59.i.4, label %.sink.split.i.i.4, label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i.3
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !8   ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %i.ay, %i.bb
  %i.bd = and i32 %i.ba, %i.ay
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bd, i32 16)
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !8   ; 2 uses
  %i.bg = xor i32 %i.bf, -1
  %i.bh = and i32 %i.az, %i.bg
  %i.bi = and i32 %i.bf, %i.az
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bh, i32 %i.bi, i32 16)
  br label %.sink.split.i.i.4

.sink.split.i.i.4:                                ; preds = %bb.i, %.sink.split.i.i.3
  %.sroa.9.1.i.4 = phi i32 [ %i.az, %.sink.split.i.i.3 ], [ %i.bj, %bb.i ] ; 2 uses
  %.sroa.0.2.i.4 = phi i32 [ %i.ay, %.sink.split.i.i.3 ], [ %i.be, %bb.i ] ; 2 uses
  %i.bk = and i32 %.167.i, 32
  %.not.i59.i.5 = icmp eq i32 %i.bk, 0            ; 2 uses
  %spec.select187 = select i1 %.not.i59.i.5, i32 %.sroa.9.1.i.4, i32 %.sroa.0.2.i.4 ; 3 uses
  %spec.select188 = select i1 %.not.i59.i.5, i32 %.sroa.0.2.i.4, i32 %.sroa.9.1.i.4 ; 3 uses
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, %spec.select187
  br i1 %i.bm, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.4
  %i.bn = icmp eq i32 %i.bl, %spec.select187
  br i1 %i.bn, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bo = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, %spec.select188
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.sink.split.i.i.4
  store i32 %spec.select188, ptr %5, align 4, !tbaa !8
  store i32 %spec.select187, ptr %i.d, align 4, !tbaa !8
  %i.bq = trunc i32 %.167.i to i8
  store i8 %i.bq, ptr %4, align 1, !tbaa !9
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.br = icmp eq i32 %i.bo, %spec.select188
  %i.bs = icmp slt i32 %.266.i, 4
  %or.cond3.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = trunc i32 %.167.i to i8
  %i.bu = add nsw i32 %.266.i, 1
  %i.bv = sext i32 %.266.i to i64
  %i.bw = getelementptr inbounds i8, ptr %4, i64 %i.bv
  store i8 %i.bt, ptr %i.bw, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.3.i = phi i32 [ 1, %bb.l ], [ %i.bu, %bb.n ], [ %.266.i, %bb.m ], [ %.266.i, %bb.j ] ; 2 uses
  %i.bx = add nuw nsw i32 %.167.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bx, %i.c
  br i1 %exitcond.not.i, label %Map_CanonComputeSlow.exit, label %.preheader.i.i.preheader, !llvm.loop !14

bb.p:                                             ; preds = %bb.a
  %i.by = icmp slt i32 %2, 5
  %i.bz = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ca = and i32 %i.bz, 65535                    ; 5 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.cd = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !33
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = shl nuw i32 %i.cg, 16
  %i.ci = or disjoint i32 %i.ch, %i.cg            ; 2 uses
  store i32 %i.ci, ptr %5, align 4, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 4
end_hunk_0
begin_hunk_1_@Map_CanonComputeFast:bb.a
bb.x:                                             ; preds = %bb.w
  %i.ed = zext nneg i32 %i.cp to i64              ; 6 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !33
  %i.eg = zext i16 %i.ef to i32                   ; 2 uses
  store i32 %i.eg, ptr %5, align 4, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ed
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !9   ; 5 uses
  %narrow = tail call i8 @llvm.smin.i8(i8 %i.el, i8 4)
  %spec.select139 = sext i8 %narrow to i32        ; 5 uses
  %i.em = icmp sgt i8 %i.el, 0
  br i1 %i.em, label %.lr.ph157, label %Map_CanonComputeSlow.exit

.lr.ph157:                                        ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 4 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ed
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  %i.es = or i8 %i.er, 16
  store i8 %i.es, ptr %4, align 1, !tbaa !9
  %exitcond.not = icmp eq i8 %i.el, 1
  br i1 %exitcond.not, label %Map_CanonComputeSlow.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph157
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ed
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !36
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ez = or i8 %i.ex, 16
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !9
  %exitcond.not.1 = icmp eq i8 %i.el, 2
  br i1 %exitcond.not.1, label %Map_CanonComputeSlow.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ed
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fg = or i8 %i.fe, 16
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !9
  %exitcond.not.2 = icmp eq i8 %i.el, 3
  br i1 %exitcond.not.2, label %Map_CanonComputeSlow.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.en, align 8, !tbaa !35
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ed
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !36
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.fn = or i8 %i.fl, 16
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !9
  br label %Map_CanonComputeSlow.exit

bb.ab:                                            ; preds = %bb.w
  %i.fo = zext nneg i32 %i.ca to i64              ; 5 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !33 ; 2 uses
  %i.fr = zext i16 %i.fq to i32
  %i.fs = zext nneg i32 %i.cp to i64              ; 5 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !33 ; 2 uses
  %i.fv = zext i16 %i.fu to i32
  %.not = icmp ult i16 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !37 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader143

.preheader143:                                    ; preds = %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fs
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !9
  %i.ga = icmp sgt i8 %i.fz, 0
  br i1 %i.ga, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader143
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  br label %bb.ac

.preheader:                                       ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fo
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !9
  %i.ge = icmp sgt i8 %i.gd, 0
  br i1 %i.ge, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %.preheader
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %.0117145 = phi i8 [ 16, %.lr.ph ], [ %.1118, %bb.ae ]
  %.0121144 = phi i32 [ -1, %.lr.ph ], [ %.1122, %bb.ae ] ; 2 uses
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.fs
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !36
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gl = sext i8 %i.gk to i32
  %i.gm = tail call i32 @Extra_TruthPolarize(i32 noundef %i.ca, i32 noundef %i.gl, i32 noundef 4) #4 ; 2 uses
  %i.gn = icmp ugt i32 %.0121144, %i.gm
  br i1 %i.gn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.go = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.fs
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.1122 = phi i32 [ %i.gm, %bb.ad ], [ %.0121144, %bb.ac ] ; 2 uses
  %.1118 = phi i8 [ %i.gs, %bb.ad ], [ %.0117145, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gt = load ptr, ptr %i.fw, align 8, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.fs
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gw = sext i8 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.ac, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.ae, %.preheader143
  %.0121.lcssa = phi i32 [ -1, %.preheader143 ], [ %.1122, %bb.ae ]
  %.0117.lcssa = phi i8 [ 16, %.preheader143 ], [ %.1118, %bb.ae ]
  %i.gy = shl nuw i32 %i.fv, 16
  %i.gz = or i32 %.0121.lcssa, %i.gy              ; 2 uses
  store i32 %i.gz, ptr %5, align 4, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !8
  br label %Map_CanonComputeSlow.exit.sink.split

bb.af:                                            ; preds = %.lr.ph151, %bb.ah
  %indvars.iv163 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next164, %bb.ah ] ; 3 uses
  %.2119149 = phi i8 [ 16, %.lr.ph151 ], [ %.3120, %bb.ah ]
  %.2123148 = phi i32 [ -1, %.lr.ph151 ], [ %.3124, %bb.ah ] ; 2 uses
  %i.hb = load ptr, ptr %i.gf, align 8, !tbaa !35
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.fo
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv163
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hg = sext i8 %i.hf to i32
  %i.hh = tail call i32 @Extra_TruthPolarize(i32 noundef %i.cp, i32 noundef %i.hg, i32 noundef 4) #4 ; 2 uses
  %i.hi = icmp ugt i32 %.2123148, %i.hh
  br i1 %i.hi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hj = load ptr, ptr %i.gf, align 8, !tbaa !35
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.fo
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv163
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.3124 = phi i32 [ %i.hh, %bb.ag ], [ %.2123148, %bb.af ] ; 2 uses
  %.3120 = phi i8 [ %i.hn, %bb.ag ], [ %.2119149, %bb.af ] ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ho = load ptr, ptr %i.fw, align 8, !tbaa !37
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.fo
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = sext i8 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next164, %i.hr
  br i1 %i.hs, label %bb.af, label %._crit_edge152.loopexit, !llvm.loop !39

._crit_edge152.loopexit:                          ; preds = %bb.ah
  %i.ht = or i8 %.3120, 16
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %.preheader
  %.2123.lcssa = phi i32 [ -1, %.preheader ], [ %.3124, %._crit_edge152.loopexit ]
  %.2119.lcssa = phi i8 [ 16, %.preheader ], [ %i.ht, %._crit_edge152.loopexit ]
  %i.hu = shl nuw i32 %i.fr, 16
  %i.hv = or i32 %.2123.lcssa, %i.hu              ; 2 uses
  store i32 %i.hv, ptr %5, align 4, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !8
  br label %Map_CanonComputeSlow.exit.sink.split

Map_CanonComputeSlow.exit.sink.split:             ; preds = %bb.q, %._crit_edge, %._crit_edge152
  %.2119.lcssa.sink = phi i8 [ %.2119.lcssa, %._crit_edge152 ], [ %.0117.lcssa, %._crit_edge ], [ %i.co, %bb.q ]
  store i8 %.2119.lcssa.sink, ptr %4, align 1, !tbaa !9
  br label %Map_CanonComputeSlow.exit

Map_CanonComputeSlow.exit:                        ; preds = %.lr.ph157, %bb.y, %bb.z, %bb.aa, %.lr.ph160, %bb.t, %bb.u, %bb.v, %bb.o, %Map_CanonComputeSlow.exit.sink.split, %bb.d, %bb.x, %bb.s, %bb.b
  %.0125 = phi i32 [ %spec.select139, %bb.x ], [ 1, %Map_CanonComputeSlow.exit.sink.split ], [ 1, %bb.d ], [ %spec.select, %bb.s ], [ %.3.i, %bb.o ], [ 0, %bb.b ], [ %spec.select, %.lr.ph160 ], [ %spec.select, %bb.v ], [ %spec.select, %bb.u ], [ %spec.select, %bb.t ], [ %spec.select139, %bb.aa ], [ %spec.select139, %bb.z ], [ %spec.select139, %bb.y ], [ %spec.select139, %.lr.ph157 ]
  ret i32 %.0125
}

declare i32 @Extra_TruthPolarize(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{!17, !30, i64 1792}
!17 = !{!"Map_ManStruct_t_", !18, i64 0, !5, i64 8, !18, i64 16, !5, i64 24, !18, i64 32, !5, i64 40, !5, i64 44, !21, i64 48, !22, i64 56, !22, i64 64, !23, i64 72, !24, i64 80, !25, i64 88, !25, i64 96, !26, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !27, i64 128, !27, i64 132, !27, i64 136, !27, i64 140, !5, i64 144, !5, i64 148, !27, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !28, i64 176, !6, i64 184, !6, i64 232, !6, i64 1512, !6, i64 1640, !22, i64 1768, !29, i64 1776, !29, i64 1784, !30, i64 1792, !24, i64 1800, !31, i64 1808, !5, i64 1816, !5, i64 1820, !5, i64 1824, !5, i64 1828, !5, i64 1832, !5, i64 1836, !32, i64 1840, !32, i64 1848, !32, i64 1856, !32, i64 1864, !32, i64 1872, !32, i64 1880, !32, i64 1888, !32, i64 1896, !32, i64 1904, !32, i64 1912, !32, i64 1920}
!18 = !{!"p2 _ZTS17Map_NodeStruct_t_", !19, i64 0}
!19 = !{!"any p2 pointer", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"p1 _ZTS17Map_NodeStruct_t_", !20, i64 0}
!22 = !{!"p1 _ZTS20Map_NodeVecStruct_t_", !20, i64 0}
!23 = !{!"p1 float", !20, i64 0}
!24 = !{!"p2 omnipotent char", !19, i64 0}
!25 = !{!"p1 _ZTS17Map_TimeStruct_t_", !20, i64 0}
!26 = !{!"p1 int", !20, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS21Map_SuperLibStruct_t_", !20, i64 0}
!29 = !{!"p1 _ZTS16Extra_MmFixed_t_", !20, i64 0}
!30 = !{!"p1 short", !20, i64 0}
!31 = !{!"p1 omnipotent char", !20, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !6, i64 0}
!35 = !{!17, !24, i64 1800}
!36 = !{!31, !31, i64 0}
!37 = !{!17, !31, i64 1808}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
end_hunk_1
