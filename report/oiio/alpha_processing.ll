inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ApplyAlphaMultiply_16b_C:bb.a
  %i.dh = shl i8 %i.ct, 4
  %i.di = or disjoint i8 %i.dg, %i.dh
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nuw nsw i32 %i.cy, %i.dj
  %i.dl = and i8 %i.cv, -16
  %i.dm = lshr i8 %i.cv, 4
  %i.dn = or disjoint i8 %i.dl, %i.dm
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.cy, %i.do
  %i.dq = lshr i32 %i.dp, 16
  %i.dr = trunc nuw i32 %i.dq to i8
  %i.ds = and i8 %i.df, -16
  %sum.shift.i = lshr i32 %i.dk, 20
  %i.dt = trunc nuw nsw i32 %sum.shift.i to i8
  %i.du = or disjoint i8 %i.ds, %i.dt
  store i8 %i.du, ptr %i.cs, align 1, !tbaa !9
  %i.dv = and i8 %i.dr, -16
  %i.dw = or disjoint i8 %i.dv, %i.cw
  store i8 %i.dw, ptr %i.cu, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !19

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.dx = add nsw i32 %.in.i, -1
  %i.dy = getelementptr inbounds i8, ptr %.032.i, i64 %i.c
  %i.dz = icmp sgt i32 %.in.i, 1
  br i1 %i.dz, label %.preheader.i, label %ApplyAlphaMultiply4444_C.exit, !llvm.loop !20

ApplyAlphaMultiply4444_C.exit:                    ; preds = %._crit_edge.i, %bb.a, %.preheader.lr.ph.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PackRGB_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noalias nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ugt i32 %3, 7
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.preheader25

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %wide.load = load <4 x i8>, ptr %i.c, align 1, !tbaa !9
  %wide.load20 = load <4 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.e = zext <4 x i8> %wide.load to <4 x i32>
  %i.f = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.g = getelementptr inbounds i8, ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load21 = load <4 x i8>, ptr %i.g, align 1, !tbaa !9
  %wide.load22 = load <4 x i8>, ptr %i.h, align 1, !tbaa !9
  %i.i = zext <4 x i8> %wide.load21 to <4 x i32>
  %i.j = zext <4 x i8> %wide.load22 to <4 x i32>
  %i.k = getelementptr inbounds i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load23 = load <4 x i8>, ptr %i.k, align 1, !tbaa !9
  %wide.load24 = load <4 x i8>, ptr %i.l, align 1, !tbaa !9
  %i.m = zext <4 x i8> %wide.load23 to <4 x i32>
  %i.n = zext <4 x i8> %wide.load24 to <4 x i32>
  %i.o = shl nuw nsw <4 x i32> %i.e, splat (i32 16)
  %i.p = shl nuw nsw <4 x i32> %i.f, splat (i32 16)
  %i.q = shl nuw nsw <4 x i32> %i.i, splat (i32 8)
  %i.r = shl nuw nsw <4 x i32> %i.j, splat (i32 8)
  %i.s = or disjoint <4 x i32> %i.o, %i.q
  %i.t = or disjoint <4 x i32> %i.p, %i.r
  %i.u = or disjoint <4 x i32> %i.s, %i.m
  %i.v = or disjoint <4 x i32> %i.t, %i.n
  %i.w = or disjoint <4 x i32> %i.u, splat (i32 -16777216)
  %i.x = or disjoint <4 x i32> %i.v, splat (i32 -16777216)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %i.x, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.ad, 16
  %i.al = shl nuw nsw i32 %i.ag, 8
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = or disjoint i32 %i.am, %i.aj
  %i.ao = or disjoint i32 %i.an, -16777216
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.ph
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.b
  %indvars.iv.next16.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader25
  %indvars.iv15.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader25 ], [ %indvars.iv.next16.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader25 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aq = add nsw i64 %wide.trip.count, -1
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv15 = phi i64 [ %indvars.iv.next16.1, %.lr.ph ], [ %indvars.iv15.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.au, 16
  %i.bc = shl nuw nsw i32 %i.ax, 8
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.ba
  %i.bf = or disjoint i32 %i.be, -16777216
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv15
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.b ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bj, 16
  %i.br = shl nuw nsw i32 %i.bm, 8
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bp
  %i.bu = or disjoint i32 %i.bt, -16777216
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !3
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.b
  %indvars.iv.next16.1 = add nuw nsw i64 %indvars.iv15, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next16.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ApplyAlphaMultiply_C(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %bb.a
  %.not = icmp ne i32 %1, 0                       ; 2 uses
  %i.b = zext i1 %.not to i64
  %i.c = select i1 %.not, i64 0, i64 3
  %i.d = icmp sgt i32 %2, 0
  %i.e = sext i32 %4 to i64
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.in = phi i32 [ %i.ae, %._crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.033 = phi ptr [ %i.af, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.033, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %.033, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = shl nsw i64 %indvars.iv, 2               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9     ; 2 uses
  %.not31 = icmp eq i8 %i.j, -1
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 32897              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i8 %i.n to i32
  %i.p = mul nuw nsw i32 %i.l, %i.o
  %i.q = lshr i32 %i.p, 23
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %i.m, align 1, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32
  %i.v = mul nuw nsw i32 %i.l, %i.u
  %i.w = lshr i32 %i.v, 23
  %i.x = trunc nuw i32 %i.w to i8
  store i8 %i.x, ptr %i.s, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.l, %i.aa
  %i.ac = lshr i32 %i.ab, 23
  %i.ad = trunc nuw i32 %i.ac to i8
  store i8 %i.ad, ptr %i.y, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d
  %i.ae = add nsw i32 %.in, -1
  %i.af = getelementptr inbounds i8, ptr %.033, i64 %i.e
  %i.ag = icmp sgt i32 %.in, 1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge36.split, !llvm.loop !24

._crit_edge36.split:                              ; preds = %._crit_edge, %.lr.ph35, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @DispatchAlpha_C(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge27

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = sext i32 %1 to i64
  %i.d = sext i32 %5 to i64
  br i1 %i.b, label %.preheader.us.preheader, label %._crit_edge27

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.026.us = phi ptr [ %i.aj, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 6 uses
  %.01725.us = phi i32 [ %i.al, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.01924.us = phi i32 [ %.lcssa, %._crit_edge.us ], [ 255, %.preheader.us.preheader ] ; 2 uses
  %.02023.us = phi ptr [ %i.ak, %._crit_edge.us ], [ %4, %.preheader.us.preheader ] ; 6 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.121.us = phi i32 [ %i.ac, %.preheader.us.new ], [ %.01924.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.f = getelementptr inbounds nuw i8, ptr %.026.us, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nsw i64 %indvars.iv, 2
  %i.j = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %i.i
  store i8 %i.g, ptr %i.j, align 1, !tbaa !9
  %i.k = and i32 %.121.us, %i.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.026.us, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = shl nsw i64 %indvars.iv.next, 2
  %i.p = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %i.o
  store i8 %i.m, ptr %i.p, align 1, !tbaa !9
  %i.q = and i32 %i.k, %i.n
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.026.us, i64 %indvars.iv.next.1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9     ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = shl nsw i64 %indvars.iv.next.1, 2
  %i.v = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %i.u
  store i8 %i.s, ptr %i.v, align 1, !tbaa !9
  %i.w = and i32 %i.q, %i.t
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.026.us, i64 %indvars.iv.next.2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9     ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nsw i64 %indvars.iv.next.2, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !9
  %i.ac = and i32 %i.w, %i.z                      ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !25

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.121.us.epil.init = phi i32 [ %.01924.us, %.preheader.us ], [ %i.ac, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.121.us.epil = phi i32 [ %.121.us.epil.init, %.epil.preheader ], [ %i.ai, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.026.us, i64 %indvars.iv.epil
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9   ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nsw i64 %indvars.iv.epil, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !9
  %i.ai = and i32 %.121.us.epil, %i.af            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !26

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.ac, %._crit_edge.us.unr-lcssa ], [ %i.ai, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.026.us, i64 %i.c
  %i.ak = getelementptr inbounds i8, ptr %.02023.us, i64 %i.d
  %i.al = add nuw nsw i32 %.01725.us, 1           ; 2 uses
  %exitcond31.not = icmp eq i32 %i.al, %3
  br i1 %exitcond31.not, label %._crit_edge27.loopexit, label %.preheader.us, !llvm.loop !28

._crit_edge27.loopexit:                           ; preds = %._crit_edge.us
  %i.am = icmp ne i32 %.lcssa, 255
  %i.an = zext i1 %i.am to i32
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %.preheader.lr.ph, %._crit_edge27.loopexit, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %i.an, %._crit_edge27.loopexit ], [ 0, %.preheader.lr.ph ]
  ret i32 %.019.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DispatchAlphaToGreen_C(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge20.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = sext i32 %1 to i64
  %i.d = sext i32 %5 to i64
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge20.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.019 = phi i32 [ %i.u, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01418 = phi ptr [ %i.s, %._crit_edge ], [ %0, %.preheader.preheader ] ; 3 uses
  %.01517 = phi ptr [ %i.t, %._crit_edge ], [ %4, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01418, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %wide.load = load <4 x i8>, ptr %i.e, align 1, !tbaa !9
  %wide.load25 = load <4 x i8>, ptr %i.f, align 1, !tbaa !9
  %i.g = zext <4 x i8> %wide.load to <4 x i32>
  %i.h = zext <4 x i8> %wide.load25 to <4 x i32>
  %i.i = shl nuw nsw <4 x i32> %i.g, splat (i32 8)
  %i.j = shl nuw nsw <4 x i32> %i.h, splat (i32 8)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01517, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !3
  store <4 x i32> %i.j, ptr %i.l, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01418, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.01517, i64 %indvars.iv
  store i32 %i.q, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.s = getelementptr inbounds i8, ptr %.01418, i64 %i.c
  %i.t = getelementptr inbounds [4 x i8], ptr %.01517, i64 %i.d
  %i.u = add nuw nsw i32 %.019, 1                 ; 2 uses
  %exitcond22.not = icmp eq i32 %i.u, %3
  br i1 %exitcond22.not, label %._crit_edge20.split, label %.preheader, !llvm.loop !31

._crit_edge20.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @ExtractAlpha_C(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge27

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %i.c = sext i32 %1 to i64
  %i.d = sext i32 %5 to i64
  br i1 %i.b, label %.preheader.us.preheader, label %._crit_edge27

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  %min.iters.check33 = icmp ult i32 %2, 33
  %n.mod.vf = and i64 %wide.trip.count, 31        ; 2 uses
  %i.e = icmp eq i64 %n.mod.vf, 0
  %i.f = select i1 %i.e, i64 32, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.f     ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.f, 9
  %n.mod.vf35 = and i64 %wide.trip.count, 7       ; 2 uses
  %i.g = icmp eq i64 %n.mod.vf35, 0
  %i.h = select i1 %i.g, i64 8, i64 %n.mod.vf35
  %n.vec36 = sub nsw i64 %wide.trip.count, %i.h   ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.026.us = phi ptr [ %i.hp, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 42 uses
  %.01725.us = phi i32 [ %i.hr, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.01924.us = phi i8 [ %i.ho, %._crit_edge.us ], [ -1, %.preheader.us.preheader ] ; 3 uses
  %.02023.us = phi ptr [ %i.hq, %._crit_edge.us ], [ %4, %.preheader.us.preheader ] ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %.01924.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 34 uses
  %vec.phi = phi <16 x i8> [ %i.i, %vector.ph ], [ %i.fo, %vector.body ]
  %vec.phi34 = phi <16 x i8> [ splat (i8 -1), %vector.ph ], [ %i.fp, %vector.body ]
  %i.j = shl nsw i64 %index, 2
  %i.k = shl i64 %index, 2
  %i.l = shl i64 %index, 2
  %i.m = shl i64 %index, 2
  %i.n = shl i64 %index, 2
  %i.o = shl i64 %index, 2
  %i.p = shl i64 %index, 2
  %i.q = shl i64 %index, 2
  %i.r = shl i64 %index, 2
  %i.s = shl i64 %index, 2
  %i.t = shl i64 %index, 2
  %i.u = shl i64 %index, 2
  %i.v = shl i64 %index, 2
  %i.w = shl i64 %index, 2
  %i.x = shl i64 %index, 2
  %i.y = shl i64 %index, 2
  %i.z = shl i64 %index, 2
  %i.aa = shl i64 %index, 2
  %i.ab = shl i64 %index, 2
  %i.ac = shl i64 %index, 2
  %i.ad = shl i64 %index, 2
  %i.ae = shl i64 %index, 2
  %i.af = shl i64 %index, 2
  %i.ag = shl i64 %index, 2
  %i.ah = shl i64 %index, 2
  %i.ai = shl i64 %index, 2
  %i.aj = shl i64 %index, 2
  %i.ak = shl i64 %index, 2
  %i.al = shl i64 %index, 2
  %i.am = shl i64 %index, 2
  %i.an = shl i64 %index, 2
  %i.ao = shl i64 %index, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.bq = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  %i.by = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 76
  %i.cc = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 84
  %i.cg = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 92
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ai
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 100
  %i.co = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 108
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.al
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.am
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 116
  %i.cw = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.an
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ao
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 124
  %i.da = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.db = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.dc = load i8, ptr %i.at, align 1, !tbaa !9
  %i.dd = load i8, ptr %i.av, align 1, !tbaa !9
  %i.de = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.df = load i8, ptr %i.az, align 1, !tbaa !9
  %i.dg = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.dh = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.di = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.dj = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.dk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.dl = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.dm = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.dn = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.do = load i8, ptr %i.br, align 1, !tbaa !9
  %i.dp = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.dq = insertelement <16 x i8> poison, i8 %i.da, i64 0
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 1
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 2
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 3
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 4
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 5
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 6
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 7
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 8
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 9
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 10
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 11
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 12
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 13
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 14
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 15 ; 2 uses
  %i.eg = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.eh = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.ei = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.ej = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.ek = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.el = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.em = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.en = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.eo = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.ep = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.eq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.er = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.es = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.et = load i8, ptr %i.cv, align 1, !tbaa !9
  %i.eu = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.ev = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.ew = insertelement <16 x i8> poison, i8 %i.eg, i64 0
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 1
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 2
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 3
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 4
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 5
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 6
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 7
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 8
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 9
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 10
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 11
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 12
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 13
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 14
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 15 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <16 x i8> %i.ef, ptr %i.fm, align 1, !tbaa !9
  store <16 x i8> %i.fl, ptr %i.fn, align 1, !tbaa !9
  %i.fo = and <16 x i8> %i.ef, %vec.phi           ; 2 uses
  %i.fp = and <16 x i8> %i.fl, %vec.phi34         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !32

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <16 x i8> %i.fp, %i.fo
  %i.fr = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx) ; 2 uses
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.fr, %vec.epilog.iter.check ], [ %.01924.us, %vector.main.loop.iter.check ]
  %i.fs = insertelement <8 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 10 uses
  %vec.phi38 = phi <8 x i8> [ %i.fs, %vec.epilog.ph ], [ %i.hh, %vec.epilog.vector.body ]
  %i.ft = shl nsw i64 %index37, 2
  %i.fu = shl i64 %index37, 2
  %i.fv = shl i64 %index37, 2
  %i.fw = shl i64 %index37, 2
  %i.fx = shl i64 %index37, 2
  %i.fy = shl i64 %index37, 2
  %i.fz = shl i64 %index37, 2
  %i.ga = shl i64 %index37, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ft
  %i.gc = getelementptr i8, ptr %.026.us, i64 %i.fu
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = getelementptr i8, ptr %.026.us, i64 %i.fv
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = getelementptr i8, ptr %.026.us, i64 %i.fw
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  %i.gi = getelementptr i8, ptr %.026.us, i64 %i.fx
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = getelementptr i8, ptr %.026.us, i64 %i.fy
  %i.gl = getelementptr i8, ptr %i.gk, i64 20
  %i.gm = getelementptr i8, ptr %.026.us, i64 %i.fz
  %i.gn = getelementptr i8, ptr %i.gm, i64 24
  %i.go = getelementptr i8, ptr %.026.us, i64 %i.ga
  %i.gp = getelementptr i8, ptr %i.go, i64 28
  %i.gq = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gd, align 1, !tbaa !9
  %i.gs = load i8, ptr %i.gf, align 1, !tbaa !9
  %i.gt = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gu = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gv = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gx = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gy = insertelement <8 x i8> poison, i8 %i.gq, i64 0
  %i.gz = insertelement <8 x i8> %i.gy, i8 %i.gr, i64 1
  %i.ha = insertelement <8 x i8> %i.gz, i8 %i.gs, i64 2
  %i.hb = insertelement <8 x i8> %i.ha, i8 %i.gt, i64 3
  %i.hc = insertelement <8 x i8> %i.hb, i8 %i.gu, i64 4
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gv, i64 5
  %i.he = insertelement <8 x i8> %i.hd, i8 %i.gw, i64 6
  %i.hf = insertelement <8 x i8> %i.he, i8 %i.gx, i64 7 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %index37
  store <8 x i8> %i.hf, ptr %i.hg, align 1, !tbaa !9
  %i.hh = and <8 x i8> %i.hf, %vec.phi38          ; 2 uses
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.hi = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hj = tail call i8 @llvm.vector.reduce.and.v8i8(<8 x i8> %i.hh)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ]
  %.121.us.ph = phi i8 [ %.01924.us, %iter.check ], [ %i.fr, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.121.us = phi i8 [ %i.ho, %vec.epilog.scalar.ph ], [ %.121.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hk = shl nsw i64 %indvars.iv, 2
  %i.hl = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %indvars.iv
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !9
  %i.ho = and i8 %i.hm, %.121.us                  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph
  %i.hp = getelementptr inbounds i8, ptr %.026.us, i64 %i.c
  %i.hq = getelementptr inbounds i8, ptr %.02023.us, i64 %i.d
  %i.hr = add nuw nsw i32 %.01725.us, 1           ; 2 uses
  %exitcond30.not = icmp eq i32 %i.hr, %3
  br i1 %exitcond30.not, label %._crit_edge27.loopexit, label %iter.check, !llvm.loop !36

._crit_edge27.loopexit:                           ; preds = %._crit_edge.us
  %i.hs = icmp eq i8 %i.ho, -1
  %i.ht = zext i1 %i.hs to i32
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %.preheader.lr.ph, %._crit_edge27.loopexit, %bb.a
  %.019.lcssa = phi i32 [ 1, %bb.a ], [ %i.ht, %._crit_edge27.loopexit ], [ 1, %.preheader.lr.ph ]
  ret i32 %.019.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ExtractGreen_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !3
  %wide.load8 = load <4 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.d = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.e = lshr <4 x i32> %wide.load8, splat (i32 8)
  %i.f = trunc <4 x i32> %i.d to <4 x i8>
  %i.g = trunc <4 x i32> %i.e to <4 x i8>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store <4 x i8> %i.f, ptr %i.h, align 1, !tbaa !9
  store <4 x i8> %i.g, ptr %i.i, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = lshr i32 %i.l, 8
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nsw i32 %.05, -1
  %i.c = getelementptr inbounds nuw i8, ptr %.024, i64 1
  %i.d = icmp sgt i32 %.05, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !39

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.024 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.e = load i8, ptr %.024, align 1, !tbaa !9
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.b, label %._crit_edge6, !llvm.loop !39

._crit_edge6:                                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %._crit_edge6, %bb.a
  %.03 = phi i32 [ 1, %._crit_edge6 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.03
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_C(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.b = add nsw i32 %.in, -1
  %i.c = icmp sgt i32 %.in, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.in = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AlphaReplace_C(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 9 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !3
  %wide.load9 = load <4 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.d = icmp ult <4 x i32> %wide.load, splat (i32 16777216) ; 4 uses
  %i.e = icmp ult <4 x i32> %wide.load9, splat (i32 16777216) ; 4 uses
  %i.f = extractelement <4 x i1> %i.d, i64 0
  br i1 %i.f, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.g = extractelement <4 x i1> %i.d, i64 1
  br i1 %i.g, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !3
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.j = extractelement <4 x i1> %i.d, i64 2
  br i1 %i.j, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %2, ptr %i.l, align 4, !tbaa !3
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.m = extractelement <4 x i1> %i.d, i64 3
  br i1 %i.m, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %2, ptr %i.o, align 4, !tbaa !3
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.p = extractelement <4 x i1> %i.e, i64 0
  br i1 %i.p, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
end_hunk_0
