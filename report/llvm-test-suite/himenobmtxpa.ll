inline.NumInlined: 28
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mat_set_init:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.preheader25 ], [ %indvars.iv.next34, %._crit_edge ] ; 2 uses
  %i.t = add nuw nsw i64 %i.s, %indvars.iv33
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = mul i32 %i.k, %i.u
  %i.w = sext i32 %i.v to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.w ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !15
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.r, ptr %gep, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %i.n
  br i1 %exitcond37.not, label %._crit_edge28, label %.preheader, !llvm.loop !22

._crit_edge28:                                    ; preds = %._crit_edge
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30.split, label %.preheader25, !llvm.loop !23

._crit_edge30.split:                              ; preds = %._crit_edge28, %.preheader25.lr.ph, %.preheader25.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @mat_set(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader23.lr.ph, label %._crit_edge28.split

.preheader23.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = mul nsw i32 %i.b, %1
  br i1 %i.f, label %.preheader23.lr.ph.split, label %._crit_edge28.split

.preheader23.lr.ph.split:                         ; preds = %.preheader23.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader23.lr.ph.split.split, label %._crit_edge28.split

.preheader23.lr.ph.split.split:                   ; preds = %.preheader23.lr.ph.split
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %wide.trip.count34 = zext nneg i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph.split.split, %._crit_edge26
  %.02127 = phi i32 [ 0, %.preheader23.lr.ph.split.split ], [ %i.u, %._crit_edge26 ] ; 2 uses
  %i.l = add i32 %i.g, %.02127
  %i.m = mul i32 %i.e, %i.l
  br label %.preheader

.preheader:                                       ; preds = %.preheader23, %._crit_edge
  %indvars.iv31 = phi i64 [ 0, %.preheader23 ], [ %indvars.iv.next32, %._crit_edge ] ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.o = add i32 %i.m, %i.n
  %i.p = mul i32 %i.i, %i.o
  %i.q = sext i32 %i.p to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.q ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store <4 x float> %broadcast.splat, ptr %i.r, align 4, !tbaa !15
  store <4 x float> %broadcast.splat, ptr %i.s, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %2, ptr %gep, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge26, label %.preheader, !llvm.loop !26

._crit_edge26:                                    ; preds = %._crit_edge
  %i.u = add nuw nsw i32 %.02127, 1               ; 2 uses
  %exitcond36.not = icmp eq i32 %i.u, %i.b
  br i1 %exitcond36.not, label %._crit_edge28.split, label %.preheader23, !llvm.loop !27

._crit_edge28.split:                              ; preds = %._crit_edge26, %.preheader23.lr.ph, %.preheader23.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @jacobi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 6 uses
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 9 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.preheader391.lr.ph, label %._crit_edge416

.preheader391.lr.ph:                              ; preds = %bb.a
  %i.k = icmp sgt i32 %i.b, 2
  %factor.op.mul394 = mul i32 %i.h, %i.e          ; 3 uses
  %i.l = icmp sgt i32 %i.h, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ab = icmp sgt i32 %i.e, 2
  %or.cond = select i1 %i.k, i1 %i.ab, i1 false
  br i1 %or.cond, label %.preheader391.us.us.preheader, label %._crit_edge416

.preheader391.us.us.preheader:                    ; preds = %.preheader391.lr.ph
  %i.ac = icmp slt i32 %i.h, 3
  %i.ad = sext i32 %i.h to i64                    ; 3 uses
  %i.ae = zext nneg i32 %i.e to i64
  %wide.trip.count485 = zext i32 %i.c to i64
  %wide.trip.count480 = zext i32 %i.f to i64
  %wide.trip.count475 = zext i32 %i.i to i64      ; 4 uses
  %wide.trip.count503 = zext nneg i32 %i.c to i64
  %wide.trip.count498 = zext i32 %i.f to i64
  %wide.trip.count493 = zext i32 %i.i to i64
  %i.af = add nuw i32 %i.e, 1
  %i.ag = mul i32 %i.h, %i.af
  %i.ah = mul i32 %i.e, %i.h
  %i.ai = add nsw i64 %wide.trip.count475, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  %n.vec = and i64 %i.ai, -8                      ; 3 uses
  %i.aj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %.preheader391.us.us

.preheader391.us.us:                              ; preds = %.preheader391.us.us.preheader, %._crit_edge413.split.us.us
  %.0385415.us.us = phi i32 [ %8, %._crit_edge413.split.us.us ], [ 0, %.preheader391.us.us.preheader ]
  br i1 %i.l, label %.preheader389.lr.ph.split.us.split.us.us.us, label %._crit_edge413.split.us.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv490 = phi i64 [ %indvars.iv.next491.3, %scalar.ph ], [ %indvars.iv490.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep578 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv490
  %i.ak = load float, ptr %gep578, align 4, !tbaa !15
  %gep580 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv490
  store float %i.ak, ptr %gep580, align 4, !tbaa !15
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %gep578.1 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491
  %i.al = load float, ptr %gep578.1, align 4, !tbaa !15
  %gep580.1 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491
  store float %i.al, ptr %gep580.1, align 4, !tbaa !15
  %indvars.iv.next491.1 = add nuw nsw i64 %indvars.iv490, 2 ; 2 uses
  %gep578.2 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491.1
  %i.am = load float, ptr %gep578.2, align 4, !tbaa !15
  %gep580.2 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491.1
  store float %i.am, ptr %gep580.2, align 4, !tbaa !15
  %indvars.iv.next491.2 = add nuw nsw i64 %indvars.iv490, 3 ; 2 uses
  %gep578.3 = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv.next491.2
  %i.an = load float, ptr %gep578.3, align 4, !tbaa !15
  %gep580.3 = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv.next491.2
  store float %i.an, ptr %gep580.3, align 4, !tbaa !15
  %indvars.iv.next491.3 = add nuw nsw i64 %indvars.iv490, 4 ; 2 uses
  %exitcond494.not.3 = icmp eq i64 %indvars.iv.next491.3, %wide.trip.count493
  br i1 %exitcond494.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !53

._crit_edge413.split.us.us:                       ; preds = %._crit_edge410.us.us, %.preheader391.us.us, %..preheader390_crit_edge.split.us.us.us
  %.us-phi.us.us514 = phi float [ %i.ik, %..preheader390_crit_edge.split.us.us.us ], [ 0.000000e+00, %.preheader391.us.us ], [ %i.ik, %._crit_edge410.us.us ]
  %8 = add nuw nsw i32 %.0385415.us.us, 1         ; 2 uses
  %exitcond505.not = icmp eq i32 %8, %0
  br i1 %exitcond505.not, label %._crit_edge416, label %.preheader391.us.us, !llvm.loop !54

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader388.us.us
  %indvar581 = phi i32 [ %indvar.next582, %._crit_edge.us.us ], [ 0, %.preheader388.us.us ] ; 3 uses
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %._crit_edge.us.us ], [ 1, %.preheader388.us.us ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv495 to i32
  %i.ap = add i32 %i.bx, %i.ao
  %i.aq = mul i32 %i.ap, %i.iq
  %i.ar = add nuw nsw i64 %indvars.iv495, %i.bv
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = mul i32 %i.h, %i.as
  %i.au = sext i32 %i.aq to i64
  %i.av = sext i32 %i.at to i64
  %invariant.gep577 = getelementptr [4 x i8], ptr %i.in, i64 %i.au ; 6 uses
  %invariant.gep579 = getelementptr [4 x i8], ptr %i.ir, i64 %i.av ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.aw = mul i32 %i.iq, %indvar581
  %i.ax = add i32 %i.bu, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = mul i32 %i.h, %indvar581
  %i.bb = add i32 %i.bs, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = add i64 %i.bd, %i.is
  %i.bf = add i64 %i.az, %i.io
  %i.bg = sub i64 %i.bf, %i.be
  %diff.check = icmp ugt i64 %i.bg, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bh = or disjoint i64 %index, 1               ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep577, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load = load <4 x float>, ptr %i.bi, align 4, !tbaa !15
  %wide.load583 = load <4 x float>, ptr %i.bj, align 4, !tbaa !15
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep579, i64 %i.bh ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <4 x float> %wide.load, ptr %i.bk, align 4, !tbaa !15
  store <4 x float> %wide.load583, ptr %i.bl, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv490.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.us.us ], [ %i.aj, %middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count475, %indvars.iv490.ph
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv490.prol = phi i64 [ %indvars.iv.next491.prol, %scalar.ph.prol ], [ %indvars.iv490.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep578.prol = getelementptr [4 x i8], ptr %invariant.gep577, i64 %indvars.iv490.prol
  %i.bo = load float, ptr %gep578.prol, align 4, !tbaa !15
  %gep580.prol = getelementptr [4 x i8], ptr %invariant.gep579, i64 %indvars.iv490.prol
  store float %i.bo, ptr %gep580.prol, align 4, !tbaa !15
  %indvars.iv.next491.prol = add nuw nsw i64 %indvars.iv490.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv490.unr = phi i64 [ %indvars.iv490.ph, %scalar.ph.preheader ], [ %indvars.iv.next491.prol, %scalar.ph.prol ]
  %i.bp = sub nsw i64 %indvars.iv490.ph, %wide.trip.count475
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.us.us, label %scalar.ph

.preheader388.us.us:                              ; preds = %.preheader388.lr.ph.split.split.us.us, %._crit_edge410.us.us
  %indvar = phi i32 [ 0, %.preheader388.lr.ph.split.split.us.us ], [ %indvar.next, %._crit_edge410.us.us ] ; 3 uses
  %indvars.iv500 = phi i64 [ 1, %.preheader388.lr.ph.split.split.us.us ], [ %indvars.iv.next501, %._crit_edge410.us.us ] ; 3 uses
  %i.br = mul i32 %i.ah, %indvar
  %i.bs = add i32 %i.ag, %i.br
  %i.bt = mul i32 %i.iv, %indvar
  %i.bu = add i32 %i.iu, %i.bt
  %i.bv = mul nuw nsw i64 %indvars.iv500, %i.ae
  %i.bw = trunc i64 %indvars.iv500 to i32
  %i.bx = mul i32 %i.ip, %i.bw
  br label %.preheader.us.us

..preheader390_crit_edge.split.us.us.us:          ; preds = %._crit_edge397.split.us.us.us.us.us
  br i1 %i.ac, label %._crit_edge413.split.us.us, label %.preheader388.lr.ph.split.split.us.us

.preheader389.lr.ph.split.us.split.us.us.us:      ; preds = %.preheader391.us.us
  %i.by = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.bz = load i32, ptr %i.m, align 4, !tbaa !12  ; 3 uses
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !13  ; 4 uses
  %i.cb = load i32, ptr %i.o, align 4, !tbaa !14  ; 4 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !8     ; 19 uses
  %i.cd = shl nsw i32 %i.bz, 1
  %i.ce = load ptr, ptr %2, align 8, !tbaa !8     ; 3 uses
  %i.cf = load i32, ptr %i.p, align 4, !tbaa !12  ; 2 uses
  %i.cg = load i32, ptr %i.q, align 8, !tbaa !13  ; 3 uses
  %i.ch = load i32, ptr %i.r, align 4, !tbaa !14  ; 3 uses
  %i.ci = shl nsw i32 %i.cf, 1
  %i.cj = load ptr, ptr %3, align 8, !tbaa !8     ; 3 uses
  %i.ck = load i32, ptr %i.s, align 4, !tbaa !12  ; 2 uses
  %i.cl = load i32, ptr %i.t, align 8, !tbaa !13  ; 3 uses
  %i.cm = load i32, ptr %i.u, align 4, !tbaa !14  ; 3 uses
  %i.cn = shl nsw i32 %i.ck, 1
  %i.co = load ptr, ptr %6, align 8, !tbaa !8
  %i.cp = load i32, ptr %i.v, align 8, !tbaa !13
  %i.cq = load i32, ptr %i.w, align 4, !tbaa !14
  %i.cr = mul nsw i32 %i.bz, 3
  %i.cs = load ptr, ptr %5, align 8, !tbaa !8
  %i.ct = load i32, ptr %i.x, align 8, !tbaa !13
  %i.cu = load i32, ptr %i.y, align 4, !tbaa !14
  %i.cv = load ptr, ptr %7, align 8, !tbaa !8
  %i.cw = load i32, ptr %i.z, align 8, !tbaa !13
  %i.cx = load i32, ptr %i.aa, align 4, !tbaa !14
  br label %.preheader389.us.us.us.us

.preheader389.us.us.us.us:                        ; preds = %._crit_edge397.split.us.us.us.us.us, %.preheader389.lr.ph.split.us.split.us.us.us
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %._crit_edge397.split.us.us.us.us.us ], [ 1, %.preheader389.lr.ph.split.us.split.us.us.us ] ; 9 uses
  %.1382399.us.us.us.us = phi float [ %i.ik, %._crit_edge397.split.us.us.us.us.us ], [ 0.000000e+00, %.preheader389.lr.ph.split.us.split.us.us.us ]
  %i.cy = trunc nuw nsw i64 %indvars.iv482 to i32 ; 8 uses
  %factor.op.mul.reass.us.us.us.us = mul i32 %factor.op.mul394, %i.cy
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 3 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv.next483 to i32
  %i.da = mul i32 %factor.op.mul394, %i.cz
  %i.db = trunc i64 %indvars.iv482 to i32
  %i.dc = add i32 %i.db, -1
  %i.dd = mul i32 %factor.op.mul394, %i.dc
  %i.de = add i32 %i.bz, %i.cy
  %i.df = mul i32 %i.de, %i.ca
  %i.dg = add i32 %i.cd, %i.cy
  %i.dh = mul i32 %i.dg, %i.ca
  %i.di = add i32 %i.cf, %i.cy
  %i.dj = mul i32 %i.di, %i.cg
  %i.dk = add i32 %i.ci, %i.cy
  %i.dl = mul i32 %i.dk, %i.cg
  %i.dm = add i32 %i.ck, %i.cy
  %i.dn = mul i32 %i.dm, %i.cl
  %i.do = add i32 %i.cn, %i.cy
  %i.dp = mul i32 %i.do, %i.cl
  %i.dq = add i32 %i.cr, %i.cy
  %i.dr = mul i32 %i.dq, %i.ca
  %i.ds = sext i32 %i.da to i64                   ; 3 uses
  %i.dt = sext i32 %factor.op.mul.reass.us.us.us.us to i64 ; 3 uses
  %i.du = sext i32 %i.dd to i64                   ; 3 uses
  %i.dv = trunc i64 %indvars.iv482 to i32
  %i.dw = mul i32 %i.ca, %i.dv
  %i.dx = trunc i64 %indvars.iv482 to i32
  %i.dy = mul i32 %i.cg, %i.dx
  %i.dz = trunc i64 %indvars.iv482 to i32
  %i.ea = mul i32 %i.cl, %i.dz
  %i.eb = trunc i64 %indvars.iv482 to i32
  %i.ec = mul i32 %i.cp, %i.eb
  %i.ed = trunc i64 %indvars.iv482 to i32
  %i.ee = mul i32 %i.ct, %i.ed
  %i.ef = trunc i64 %indvars.iv482 to i32
  %i.eg = mul i32 %i.cw, %i.ef
  %invariant.gep569 = getelementptr [4 x i8], ptr %i.cc, i64 %i.ds
  %invariant.gep571 = getelementptr [4 x i8], ptr %i.cc, i64 %i.ds
  %invariant.gep573 = getelementptr [4 x i8], ptr %i.cc, i64 %i.du
  %invariant.gep575 = getelementptr [4 x i8], ptr %i.cc, i64 %i.du
  br label %.preheader387.us.us.us.us.us

.preheader387.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us, %.preheader389.us.us.us.us
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %._crit_edge.us.us.us.us.us ], [ 1, %.preheader389.us.us.us.us ] ; 4 uses
  %.2395.us.us.us.us.us = phi float [ %i.ik, %._crit_edge.us.us.us.us.us ], [ %.1382399.us.us.us.us, %.preheader389.us.us.us.us ]
  %i.eh = trunc nuw nsw i64 %indvars.iv477 to i32 ; 13 uses
  %i.ei = add i32 %i.dw, %i.eh
  %i.ej = mul i32 %i.ei, %i.cb
  %i.ek = mul nuw nsw i64 %indvars.iv477, %i.ad   ; 3 uses
  %i.el = add nsw i64 %i.ek, %i.ds                ; 3 uses
  %i.em = add i32 %i.df, %i.eh
  %i.en = mul i32 %i.em, %i.cb
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 3 uses
  %i.eo = mul nuw nsw i64 %indvars.iv.next478, %i.ad ; 3 uses
  %i.ep = add nsw i64 %i.eo, %i.dt                ; 3 uses
  %i.eq = add i32 %i.dh, %i.eh
  %i.er = mul i32 %i.eq, %i.cb
  %i.es = add nsw i64 %i.ek, %i.dt                ; 3 uses
  %i.et = add i32 %i.dy, %i.eh
  %i.eu = mul i32 %i.et, %i.ch
  %i.ev = add nsw i64 %indvars.iv477, -1
  %i.ew = mul nsw i64 %i.ev, %i.ad                ; 3 uses
  %i.ex = add i32 %i.dj, %i.eh
  %i.ey = mul i32 %i.ex, %i.ch
  %i.ez = add nsw i64 %i.ew, %i.dt                ; 3 uses
  %i.fa = add i32 %i.dl, %i.eh
  %i.fb = mul i32 %i.fa, %i.ch
  %i.fc = add nsw i64 %i.ek, %i.du                ; 3 uses
  %i.fd = add i32 %i.ea, %i.eh
  %i.fe = mul i32 %i.fd, %i.cm
  %i.ff = add i32 %i.dn, %i.eh
  %i.fg = mul i32 %i.ff, %i.cm
  %i.fh = add i32 %i.dp, %i.eh
  %i.fi = mul i32 %i.fh, %i.cm
  %i.fj = add i32 %i.ec, %i.eh
  %i.fk = mul i32 %i.fj, %i.cq
  %i.fl = add i32 %i.dr, %i.eh
  %i.fm = mul i32 %i.fl, %i.cb
end_hunk_0
begin_hunk_1_@set_param:sub_0

.tail51:                                          ; preds = %sub_0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.a, label %.tail68.thread

.tail55:                                          ; preds = %sub_0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.a, label %.tail68.thread

.tail59:                                          ; preds = %sub_0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.a, label %.tail68.thread

sub_165:                                          ; preds = %.tail, %sub_1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %.not84 = icmp eq i8 %i.ae, 76
  br i1 %.not84, label %.tail63, label %.tail68.thread

.tail63:                                          ; preds = %sub_165
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.a, label %.tail68.thread

sub_170:                                          ; preds = %sub_136, %.tail34
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.not86 = icmp eq i8 %i.aj, 108
  br i1 %.not86, label %.tail68, label %.tail68.thread

.tail68:                                          ; preds = %sub_170
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.a, label %.tail68.thread

.tail68.thread:                                   ; preds = %.tail63, %sub_165, %sub_0, %.tail59, %.tail55, %.tail51, %.tail39, %.tail43, %.tail47, %sub_170, %.tail68
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 6) #18
  unreachable

bb.a:                                             ; preds = %.tail63, %.tail68, %.tail55, %.tail59, %.tail47, %.tail51, %.tail39, %.tail43, %.tail, %.tail34
  %.sink211 = phi i32 [ 256, %.tail55 ], [ 128, %.tail47 ], [ 64, %.tail39 ], [ 32, %.tail ], [ 32, %.tail34 ], [ 64, %.tail43 ], [ 128, %.tail51 ], [ 256, %.tail59 ], [ 512, %.tail68 ], [ 512, %.tail63 ]
  %i.an = phi <2 x i32> [ <i32 256, i32 512>, %.tail55 ], [ <i32 128, i32 256>, %.tail47 ], [ <i32 64, i32 128>, %.tail39 ], [ <i32 32, i32 64>, %.tail ], [ <i32 32, i32 64>, %.tail34 ], [ <i32 64, i32 128>, %.tail43 ], [ <i32 128, i32 256>, %.tail51 ], [ <i32 256, i32 512>, %.tail59 ], [ <i32 512, i32 1024>, %.tail68 ], [ <i32 512, i32 1024>, %.tail63 ]
  store i32 %.sink211, ptr %0, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x i32> %i.an, ptr %i.ao, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree nounwind uwtable
define dso_local double @second() local_unnamed_addr #8 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #17 ; 0 uses
  %i.b = load i32, ptr @second.base_sec, align 4, !tbaa !4 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @second.base_usec, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load i64, ptr %0, align 8, !tbaa !62     ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr @second.base_sec, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr @second.base_usec, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.b to i64
  %i.l = sub nsw i64 %i.f, %i.k
  %i.m = sitofp i64 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65
  %i.p = sext i32 %i.d to i64
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = sitofp i64 %i.q to double
  %i.s = fdiv double %i.r, 1.000000e+06
  %i.t = fadd double %i.s, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret double %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"Mat", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!10 = !{!"p1 float", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 12}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !5, i64 20}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !20, !19}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !19, !20}
!25 = distinct !{!25, !18, !20, !19}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !18, !19, !20}
!32 = distinct !{!32, !18, !20, !19}
!33 = distinct !{!33, !18, !19, !20}
!34 = distinct !{!34, !18, !20, !19}
!35 = distinct !{!35, !18, !19, !20}
!36 = distinct !{!36, !18, !20, !19}
!37 = distinct !{!37, !18, !19, !20}
!38 = distinct !{!38, !18, !20, !19}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !18, !19, !20}
!43 = distinct !{!43, !18, !20, !19}
!44 = distinct !{!44, !18, !19, !20}
!45 = distinct !{!45, !18, !20, !19}
!46 = distinct !{!46, !18, !19, !20}
!47 = distinct !{!47, !18, !20, !19}
!48 = !{!9, !5, i64 8}
!49 = distinct !{!49, !18, !19, !20}
!50 = distinct !{!50, !18, !20, !19}
!51 = distinct !{!51, !18, !19, !20}
!52 = distinct !{!52, !18, !20, !19}
!53 = distinct !{!53, !18, !19}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18, !19, !20}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = !{!63, !64, i64 0}
!63 = !{!"timeval", !64, i64 0, !64, i64 8}
!64 = !{!"long", !6, i64 0}
!65 = !{!63, !64, i64 8}
end_hunk_1
