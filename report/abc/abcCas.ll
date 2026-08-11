inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_TtPermuteMask:bb.a
  br i1 %brmerge, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.05462.i = phi ptr [ %i.dr, %.lr.ph.i ], [ %0, %.lr.ph ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !52
  %i.dq = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dq, ptr %i.do, align 4, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.k
  br i1 %i.ds, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !206

Abc_TtSwapAdjacent.exit:                          ; preds = %.lr.ph.i, %.lr.ph
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv55 ; 2 uses
  %i.du = load <2 x i32>, ptr %i.dt, align 4, !tbaa !52
  %i.dv = shufflevector <2 x i32> %i.du, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dv, ptr %i.dt, align 4, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %Abc_TtSwapAdjacent.exit, %bb.m
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv.next56 to i32
  %i.dx = icmp sgt i32 %.03037, %i.dw
  br i1 %i.dx, label %.lr.ph, label %._crit_edge.split, !llvm.loop !209

._crit_edge.split:                                ; preds = %bb.n, %.preheader
  %i.dy = add nsw i32 %.03037, -1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph43.split, %._crit_edge.split, %bb.l
  %.1 = phi i32 [ %.03037, %.lr.ph43.split ], [ %i.dm, %bb.l ], [ %i.dy, %._crit_edge.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dz = icmp sgt i32 %indvars58, 0
  br i1 %i.dz, label %.lr.ph43.split, label %._crit_edge44, !llvm.loop !197

._crit_edge44:                                    ; preds = %bb.o, %bb.f, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_LutCascadeLookup(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i.us.preheader, label %Abc_TtCopy.exit

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %Abc_TtEqual.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next, %Abc_TtEqual.exit.us ] ; 3 uses
  %i.e = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.us
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.us
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %.not.i.us = icmp eq i64 %i.h, %i.j
  br i1 %.not.i.us, label %bb.b, label %Abc_TtEqual.exit.us

bb.b:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtCopy.exit.loopexit31, label %.lr.ph.i.us, !llvm.loop !210

Abc_TtEqual.exit.us:                              ; preds = %.lr.ph.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !211

._crit_edge:                                      ; preds = %Abc_TtEqual.exit.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %1, %Abc_TtEqual.exit.us ] ; 5 uses
  %i.k = mul i32 %.0.lcssa, %3
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph.preheader.i16, label %Abc_TtCopy.exit

.lr.ph.preheader.i16:                             ; preds = %._crit_edge
  %wide.trip.count.i17 = zext nneg i32 %3 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %3, 14
  br i1 %min.iters.check, label %.lr.ph.i18.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i16
  %i.o = shl nsw i64 %i.l, 3
  %i.p = add i64 %i.o, %i.b
  %i.q = sub i64 %i.a, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.lr.ph.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i17, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 8, !tbaa !68
  %wide.load37 = load <2 x i64>, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %wide.load, ptr %i.t, align 8, !tbaa !68
  store <2 x i64> %wide.load37, ptr %i.u, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i17
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i16, %middle.block
  %indvars.iv.i19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i16 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i17, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol

.lr.ph.i18.prol:                                  ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18.prol
  %indvars.iv.i19.prol = phi i64 [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ], [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i18.prol ], [ 0, %.lr.ph.i18.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19.prol
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19.prol
  store i64 %i.x, ptr %i.y, align 8, !tbaa !68
  %indvars.iv.next.i20.prol = add nuw nsw i64 %indvars.iv.i19.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i18.prol.loopexit, label %.lr.ph.i18.prol, !llvm.loop !213

.lr.ph.i18.prol.loopexit:                         ; preds = %.lr.ph.i18.prol, %.lr.ph.i18.preheader
  %indvars.iv.i19.unr = phi i64 [ %indvars.iv.i19.ph, %.lr.ph.i18.preheader ], [ %indvars.iv.next.i20.prol, %.lr.ph.i18.prol ]
  %i.z = sub nsw i64 %indvars.iv.i19.ph, %wide.trip.count.i17
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %Abc_TtCopy.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20.3, %.lr.ph.i18 ], [ %indvars.iv.i19.unr, %.lr.ph.i18.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i19
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i19
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !68
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !68
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i19, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.1
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.1
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !68
  %indvars.iv.next.i20.2 = add nuw nsw i64 %indvars.iv.i19, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i20.2
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i20.2
  store i64 %i.al, ptr %i.am, align 8, !tbaa !68
  %indvars.iv.next.i20.3 = add nuw nsw i64 %indvars.iv.i19, 4 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %indvars.iv.next.i20.3, %wide.trip.count.i17
  br i1 %exitcond.not.i21.3, label %Abc_TtCopy.exit, label %.lr.ph.i18, !llvm.loop !214

Abc_TtCopy.exit.loopexit31:                       ; preds = %bb.b
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i18.prol.loopexit, %.lr.ph.i18, %middle.block, %.lr.ph, %Abc_TtCopy.exit.loopexit31, %._crit_edge
  %.028 = phi i32 [ %i.an, %Abc_TtCopy.exit.loopexit31 ], [ 0, %.lr.ph ], [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %middle.block ], [ %.0.lcssa, %.lr.ph.i18 ], [ %.0.lcssa, %.lr.ph.i18.prol.loopexit ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_LutCascadeDerive(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.c = sub nsw i32 %1, %2                       ; 2 uses
  %i.d = icmp ult i32 %3, 2
  %i.e = add i32 %3, -1
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %3, i32 %i.g       ; 7 uses
  %i.h = icmp slt i32 %i.c, 7                     ; 3 uses
  %i.i = add nsw i32 %i.c, -6                     ; 3 uses
  %i.j = shl nuw i32 1, %i.i
  %i.k = select i1 %i.h, i32 1, i32 %i.j
  %.fr112 = freeze i32 %i.k                       ; 7 uses
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.a
  %i.m = select i1 %i.h, i32 0, i32 %i.i          ; 5 uses
  %i.n = icmp sgt i32 %.fr112, 0                  ; 3 uses
  %wide.trip.count.i.i = zext i32 %.fr112 to i64  ; 12 uses
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %.not111 = icmp eq i32 %.09.i, 0
  br i1 %.not111, label %.lr.ph62.split, label %.lr.ph62.split.us.preheader

.lr.ph62.split.us.preheader:                      ; preds = %.lr.ph62
  %i.p = sext i32 %6 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %.09.i to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.fr112, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter182 = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %.09.i, 1
  %unroll_iter = and i64 %wide.trip.count, 62
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  %lcmp.mod184 = trunc i32 %.09.i to i1
  br label %.lr.ph62.split.us

.lr.ph62.split.us:                                ; preds = %.lr.ph62.split.us.preheader, %._crit_edge.us
  %.059.us = phi i32 [ %i.ce, %._crit_edge.us ], [ 0, %.lr.ph62.split.us.preheader ] ; 4 uses
  %.04758.us = phi i32 [ %i.cf, %._crit_edge.us ], [ 0, %.lr.ph62.split.us.preheader ] ; 4 uses
  %i.r = shl i32 %.04758.us, %i.m
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 7 uses
  %i.u = icmp sgt i32 %.059.us, 0
  br i1 %i.u, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph62.split.us
  br i1 %i.n, label %.lr.ph.preheader.i.us.preheader.i.us, label %Abc_LutCascadeLookup.exit.us

.lr.ph.preheader.i.us.preheader.i.us:             ; preds = %.lr.ph.i.us
  %wide.trip.count.i.us = zext nneg i32 %.059.us to i64
  br label %.lr.ph.preheader.i.us.i.us

.lr.ph.preheader.i.us.i.us:                       ; preds = %Abc_TtEqual.exit.us.i.us, %.lr.ph.preheader.i.us.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i.us ], [ %indvars.iv.next.i.us, %Abc_TtEqual.exit.us.i.us ] ; 3 uses
  %i.v = shl nuw i64 %indvars.iv.i.us, %i.o
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.v
  br label %.lr.ph.i.us.i.us

.lr.ph.i.us.i.us:                                 ; preds = %bb.b, %.lr.ph.preheader.i.us.i.us
  %indvars.iv.i.us.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us ], [ %indvars.iv.next.i.us.i.us, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.us.i.us
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.us.i.us
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %.not.i.us.i.us = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i.us.i.us, label %bb.b, label %Abc_TtEqual.exit.us.i.us

bb.b:                                             ; preds = %.lr.ph.i.us.i.us
  %indvars.iv.next.i.us.i.us = add nuw nsw i64 %indvars.iv.i.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %indvars.iv.next.i.us.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i.us, label %Abc_TtCopy.exit.loopexit31.i.us, label %.lr.ph.i.us.i.us, !llvm.loop !210

Abc_TtEqual.exit.us.i.us:                         ; preds = %.lr.ph.i.us.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us.i.us, !llvm.loop !211

._crit_edge.i.us:                                 ; preds = %Abc_TtEqual.exit.us.i.us, %.lr.ph62.split.us
  %.0.lcssa.i.us = phi i32 [ 0, %.lr.ph62.split.us ], [ %.059.us, %Abc_TtEqual.exit.us.i.us ] ; 5 uses
  %i.ab = shl i32 %.0.lcssa.i.us, %i.m
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ac ; 6 uses
  br i1 %i.n, label %.lr.ph.i18.i.us.preheader, label %Abc_LutCascadeLookup.exit.us

.lr.ph.i18.i.us.preheader:                        ; preds = %._crit_edge.i.us
  br i1 %min.iters.check, label %.lr.ph.i18.i.us.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i18.i.us.preheader
  %i.ae = shl nsw i64 %i.ac, 3
  %i.af = shl nsw i64 %i.s, 3
  %i.ag = add i64 %i.ae, %i.b
  %i.ah = add i64 %i.af, %i.a
  %i.ai = sub i64 %i.ah, %i.ag
  %diff.check = icmp ugt i64 %i.ai, -32
  br i1 %diff.check, label %.lr.ph.i18.i.us.preheader178, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x i64>, ptr %i.aj, align 8, !tbaa !68
  %wide.load147 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load, ptr %i.al, align 8, !tbaa !68
  store <2 x i64> %wide.load147, ptr %i.am, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_LutCascadeLookup.exit.us, label %.lr.ph.i18.i.us.preheader178

.lr.ph.i18.i.us.preheader178:                     ; preds = %vector.memcheck, %.lr.ph.i18.i.us.preheader, %middle.block
  %indvars.iv.i19.i.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i18.i.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i18.i.us.prol.loopexit, label %.lr.ph.i18.i.us.prol

.lr.ph.i18.i.us.prol:                             ; preds = %.lr.ph.i18.i.us.preheader178, %.lr.ph.i18.i.us.prol
  %indvars.iv.i19.i.us.prol = phi i64 [ %indvars.iv.next.i20.i.us.prol, %.lr.ph.i18.i.us.prol ], [ %indvars.iv.i19.i.us.ph, %.lr.ph.i18.i.us.preheader178 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i18.i.us.prol ], [ 0, %.lr.ph.i18.i.us.preheader178 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i19.i.us.prol
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i19.i.us.prol
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us.prol = add nuw nsw i64 %indvars.iv.i19.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i18.i.us.prol.loopexit, label %.lr.ph.i18.i.us.prol, !llvm.loop !216

.lr.ph.i18.i.us.prol.loopexit:                    ; preds = %.lr.ph.i18.i.us.prol, %.lr.ph.i18.i.us.preheader178
  %indvars.iv.i19.i.us.unr = phi i64 [ %indvars.iv.i19.i.us.ph, %.lr.ph.i18.i.us.preheader178 ], [ %indvars.iv.next.i20.i.us.prol, %.lr.ph.i18.i.us.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i19.i.us.ph, %wide.trip.count.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %Abc_LutCascadeLookup.exit.us, label %.lr.ph.i18.i.us

.lr.ph.i18.i.us:                                  ; preds = %.lr.ph.i18.i.us.prol.loopexit, %.lr.ph.i18.i.us
  %indvars.iv.i19.i.us = phi i64 [ %indvars.iv.next.i20.i.us.3, %.lr.ph.i18.i.us ], [ %indvars.iv.i19.i.us.unr, %.lr.ph.i18.i.us.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i19.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i19.i.us
  store i64 %i.au, ptr %i.av, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us = add nuw nsw i64 %indvars.iv.i19.i.us, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i20.i.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i20.i.us
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us.1 = add nuw nsw i64 %indvars.iv.i19.i.us, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i20.i.us.1
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i20.i.us.1
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us.2 = add nuw nsw i64 %indvars.iv.i19.i.us, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i20.i.us.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i20.i.us.2
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us.3 = add nuw nsw i64 %indvars.iv.i19.i.us, 4 ; 2 uses
  %exitcond.not.i21.i.us.3 = icmp eq i64 %indvars.iv.next.i20.i.us.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i21.i.us.3, label %Abc_LutCascadeLookup.exit.us, label %.lr.ph.i18.i.us, !llvm.loop !217

Abc_TtCopy.exit.loopexit31.i.us:                  ; preds = %bb.b
  %i.bf = trunc nuw nsw i64 %indvars.iv.i.us to i32
  br label %Abc_LutCascadeLookup.exit.us

Abc_LutCascadeLookup.exit.us:                     ; preds = %.lr.ph.i18.i.us.prol.loopexit, %.lr.ph.i18.i.us, %middle.block, %Abc_TtCopy.exit.loopexit31.i.us, %._crit_edge.i.us, %.lr.ph.i.us
  %.028.i.us = phi i32 [ %i.bf, %Abc_TtCopy.exit.loopexit31.i.us ], [ 0, %.lr.ph.i.us ], [ %.0.lcssa.i.us, %._crit_edge.i.us ], [ %.0.lcssa.i.us, %middle.block ], [ %.0.lcssa.i.us, %.lr.ph.i18.i.us ], [ %.0.lcssa.i.us, %.lr.ph.i18.i.us.prol.loopexit ] ; 4 uses
  %i.bg = and i32 %.04758.us, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh                    ; 3 uses
  %i.bj = lshr i32 %.04758.us, 6
  %i.bk = zext nneg i32 %i.bj to i64
  %invariant.gep.us = getelementptr [8 x i8], ptr %5, i64 %i.bk ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %Abc_LutCascadeLookup.exit.us.new

Abc_LutCascadeLookup.exit.us.new:                 ; preds = %Abc_LutCascadeLookup.exit.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.f ], [ 0, %Abc_LutCascadeLookup.exit.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %Abc_LutCascadeLookup.exit.us ]
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %.028.i.us
  %.not.us = icmp eq i32 %i.bn, 0
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Abc_LutCascadeLookup.exit.us.new
  %i.bo = mul nsw i64 %indvars.iv, %i.p
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.bo ; 2 uses
  %i.bp = load i64, ptr %gep.us, align 8, !tbaa !68
  %i.bq = or i64 %i.bp, %i.bi
  store i64 %i.bq, ptr %gep.us, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Abc_LutCascadeLookup.exit.us.new
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = and i32 %i.bs, %.028.i.us
  %.not.us.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = mul nsw i64 %indvars.iv.next, %i.p
  %gep.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.bu ; 2 uses
  %i.bv = load i64, ptr %gep.us.1, align 8, !tbaa !68
  %i.bw = or i64 %i.bv, %i.bi
  store i64 %i.bw, ptr %gep.us.1, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %Abc_LutCascadeLookup.exit.us.new, !llvm.loop !218

._crit_edge.us.unr-lcssa:                         ; preds = %bb.f
  br i1 %lcmp.mod183.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %Abc_LutCascadeLookup.exit.us
  %indvars.iv.epil.init = phi i64 [ 0, %Abc_LutCascadeLookup.exit.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.bx = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = and i32 %i.by, %.028.i.us
  %.not.us.epil = icmp eq i32 %i.bz, 0
  br i1 %.not.us.epil, label %._crit_edge.us, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ca = mul nsw i64 %indvars.iv.epil.init, %i.p
  %gep.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.ca ; 2 uses
  %i.cb = load i64, ptr %gep.us.epil, align 8, !tbaa !68
  %i.cc = or i64 %i.cb, %i.bi
  store i64 %i.cc, ptr %gep.us.epil, align 8, !tbaa !68
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.g, %._crit_edge.us.unr-lcssa
  %i.cd = add nsw i32 %.028.i.us, 1
  %i.ce = tail call noundef i32 @llvm.smax.i32(i32 %.059.us, i32 %i.cd) ; 2 uses
  %i.cf = add nuw nsw i32 %.04758.us, 1           ; 2 uses
  %exitcond121.not = icmp eq i32 %i.cf, %i.l
  br i1 %exitcond121.not, label %._crit_edge63, label %.lr.ph62.split.us, !llvm.loop !219

.lr.ph62.split:                                   ; preds = %.lr.ph62
  br i1 %i.n, label %.lr.ph62.split.split.us.preheader, label %._crit_edge63

.lr.ph62.split.split.us.preheader:                ; preds = %.lr.ph62.split
  %min.iters.check151 = icmp ult i32 %.fr112, 8
  %n.vec153 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %wide.trip.count.i.i
  %xtraiter185 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br label %.lr.ph62.split.split.us

.lr.ph62.split.split.us:                          ; preds = %.lr.ph62.split.split.us.preheader, %Abc_LutCascadeLookup.exit.us88
  %.059.us64 = phi i32 [ %i.dw, %Abc_LutCascadeLookup.exit.us88 ], [ 0, %.lr.ph62.split.split.us.preheader ] ; 4 uses
  %.04758.us65 = phi i32 [ %i.dx, %Abc_LutCascadeLookup.exit.us88 ], [ 0, %.lr.ph62.split.split.us.preheader ] ; 2 uses
  %i.cg = shl i32 %.04758.us65, %i.m
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ch ; 7 uses
  %i.cj = icmp sgt i32 %.059.us64, 0
  br i1 %i.cj, label %.lr.ph.i.us66, label %.lr.ph.i18.i.us82.preheader

.lr.ph.i.us66:                                    ; preds = %.lr.ph62.split.split.us
  %wide.trip.count.i.us68 = zext nneg i32 %.059.us64 to i64
  br label %.lr.ph.preheader.i.us.i.us69

.lr.ph.preheader.i.us.i.us69:                     ; preds = %Abc_TtEqual.exit.us.i.us76, %.lr.ph.i.us66
  %indvars.iv.i.us70 = phi i64 [ 0, %.lr.ph.i.us66 ], [ %indvars.iv.next.i.us77, %Abc_TtEqual.exit.us.i.us76 ] ; 3 uses
  %i.ck = shl nuw i64 %indvars.iv.i.us70, %i.o
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ck
  br label %.lr.ph.i.us.i.us71

.lr.ph.i.us.i.us71:                               ; preds = %bb.h, %.lr.ph.preheader.i.us.i.us69
  %indvars.iv.i.us.i.us72 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.us69 ], [ %indvars.iv.next.i.us.i.us74, %bb.h ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.us.i.us72
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.i.us72
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !68
  %.not.i.us.i.us73 = icmp eq i64 %i.cn, %i.cp
  br i1 %.not.i.us.i.us73, label %bb.h, label %Abc_TtEqual.exit.us.i.us76

bb.h:                                             ; preds = %.lr.ph.i.us.i.us71
  %indvars.iv.next.i.us.i.us74 = add nuw nsw i64 %indvars.iv.i.us.i.us72, 1 ; 2 uses
  %exitcond.not.i.us.i.us75 = icmp eq i64 %indvars.iv.next.i.us.i.us74, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i.us75, label %Abc_TtCopy.exit.loopexit31.i.us86, label %.lr.ph.i.us.i.us71, !llvm.loop !210

Abc_TtEqual.exit.us.i.us76:                       ; preds = %.lr.ph.i.us.i.us71
  %indvars.iv.next.i.us77 = add nuw nsw i64 %indvars.iv.i.us70, 1 ; 2 uses
  %exitcond.not.i.us78 = icmp eq i64 %indvars.iv.next.i.us77, %wide.trip.count.i.us68
  br i1 %exitcond.not.i.us78, label %.lr.ph.i18.i.us82.preheader, label %.lr.ph.preheader.i.us.i.us69, !llvm.loop !211

.lr.ph.i18.i.us82.preheader:                      ; preds = %Abc_TtEqual.exit.us.i.us76, %.lr.ph62.split.split.us
  %.0.lcssa.i.us80 = phi i32 [ 0, %.lr.ph62.split.split.us ], [ %.059.us64, %Abc_TtEqual.exit.us.i.us76 ] ; 4 uses
  %i.cq = shl i32 %.0.lcssa.i.us80, %i.m
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cr ; 6 uses
  br i1 %min.iters.check151, label %.lr.ph.i18.i.us82.preheader176, label %vector.memcheck148

vector.memcheck148:                               ; preds = %.lr.ph.i18.i.us82.preheader
  %i.ct = shl nsw i64 %i.cr, 3
  %i.cu = shl nsw i64 %i.ch, 3
  %i.cv = add i64 %i.ct, %i.b
  %i.cw = add i64 %i.cu, %i.a
  %i.cx = sub i64 %i.cw, %i.cv
  %diff.check149 = icmp ugt i64 %i.cx, -32
  br i1 %diff.check149, label %.lr.ph.i18.i.us82.preheader176, label %vector.body154

vector.body154:                                   ; preds = %vector.memcheck148, %vector.body154
  %index155 = phi i64 [ %index.next158, %vector.body154 ], [ 0, %vector.memcheck148 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index155 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load156 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !68
  %wide.load157 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index155 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load156, ptr %i.da, align 8, !tbaa !68
  store <2 x i64> %wide.load157, ptr %i.db, align 8, !tbaa !68
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.dc, label %middle.block159, label %vector.body154, !llvm.loop !220

middle.block159:                                  ; preds = %vector.body154
  br i1 %cmp.n160, label %Abc_LutCascadeLookup.exit.us88, label %.lr.ph.i18.i.us82.preheader176

.lr.ph.i18.i.us82.preheader176:                   ; preds = %vector.memcheck148, %.lr.ph.i18.i.us82.preheader, %middle.block159
  %indvars.iv.i19.i.us83.ph = phi i64 [ 0, %vector.memcheck148 ], [ 0, %.lr.ph.i18.i.us82.preheader ], [ %n.vec153, %middle.block159 ] ; 3 uses
  br i1 %lcmp.mod186.not, label %.lr.ph.i18.i.us82.prol.loopexit, label %.lr.ph.i18.i.us82.prol

.lr.ph.i18.i.us82.prol:                           ; preds = %.lr.ph.i18.i.us82.preheader176, %.lr.ph.i18.i.us82.prol
  %indvars.iv.i19.i.us83.prol = phi i64 [ %indvars.iv.next.i20.i.us84.prol, %.lr.ph.i18.i.us82.prol ], [ %indvars.iv.i19.i.us83.ph, %.lr.ph.i18.i.us82.preheader176 ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i18.i.us82.prol ], [ 0, %.lr.ph.i18.i.us82.preheader176 ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i19.i.us83.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i19.i.us83.prol
  store i64 %i.de, ptr %i.df, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us84.prol = add nuw nsw i64 %indvars.iv.i19.i.us83.prol, 1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i18.i.us82.prol.loopexit, label %.lr.ph.i18.i.us82.prol, !llvm.loop !221

.lr.ph.i18.i.us82.prol.loopexit:                  ; preds = %.lr.ph.i18.i.us82.prol, %.lr.ph.i18.i.us82.preheader176
  %indvars.iv.i19.i.us83.unr = phi i64 [ %indvars.iv.i19.i.us83.ph, %.lr.ph.i18.i.us82.preheader176 ], [ %indvars.iv.next.i20.i.us84.prol, %.lr.ph.i18.i.us82.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i19.i.us83.ph, %wide.trip.count.i.i
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %Abc_LutCascadeLookup.exit.us88, label %.lr.ph.i18.i.us82

.lr.ph.i18.i.us82:                                ; preds = %.lr.ph.i18.i.us82.prol.loopexit, %.lr.ph.i18.i.us82
  %indvars.iv.i19.i.us83 = phi i64 [ %indvars.iv.next.i20.i.us84.3, %.lr.ph.i18.i.us82 ], [ %indvars.iv.i19.i.us83.unr, %.lr.ph.i18.i.us82.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i19.i.us83
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !68
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i19.i.us83
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us84 = add nuw nsw i64 %indvars.iv.i19.i.us83, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i20.i.us84
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !68
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i20.i.us84
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us84.1 = add nuw nsw i64 %indvars.iv.i19.i.us83, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i20.i.us84.1
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !68
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i20.i.us84.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us84.2 = add nuw nsw i64 %indvars.iv.i19.i.us83, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i20.i.us84.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !68
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i20.i.us84.2
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !68
  %indvars.iv.next.i20.i.us84.3 = add nuw nsw i64 %indvars.iv.i19.i.us83, 4 ; 2 uses
  %exitcond.not.i21.i.us85.3 = icmp eq i64 %indvars.iv.next.i20.i.us84.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i21.i.us85.3, label %Abc_LutCascadeLookup.exit.us88, label %.lr.ph.i18.i.us82, !llvm.loop !222

Abc_TtCopy.exit.loopexit31.i.us86:                ; preds = %bb.h
  %i.du = trunc nuw nsw i64 %indvars.iv.i.us70 to i32
  br label %Abc_LutCascadeLookup.exit.us88

Abc_LutCascadeLookup.exit.us88:                   ; preds = %.lr.ph.i18.i.us82.prol.loopexit, %.lr.ph.i18.i.us82, %middle.block159, %Abc_TtCopy.exit.loopexit31.i.us86
  %.028.i.us89 = phi i32 [ %i.du, %Abc_TtCopy.exit.loopexit31.i.us86 ], [ %.0.lcssa.i.us80, %middle.block159 ], [ %.0.lcssa.i.us80, %.lr.ph.i18.i.us82 ], [ %.0.lcssa.i.us80, %.lr.ph.i18.i.us82.prol.loopexit ]
  %i.dv = add nsw i32 %.028.i.us89, 1
  %i.dw = tail call noundef i32 @llvm.smax.i32(i32 %.059.us64, i32 %i.dv) ; 2 uses
  %i.dx = add nuw nsw i32 %.04758.us65, 1         ; 2 uses
  %exitcond126.not = icmp eq i32 %i.dx, %i.l
  br i1 %exitcond126.not, label %._crit_edge63, label %.lr.ph62.split.split.us, !llvm.loop !219

._crit_edge63:                                    ; preds = %._crit_edge.us, %Abc_LutCascadeLookup.exit.us88, %.lr.ph62.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph62.split ], [ %i.dw, %Abc_LutCascadeLookup.exit.us88 ], [ %i.ce, %._crit_edge.us ] ; 3 uses
  %i.dy = shl nuw i32 1, %.09.i                   ; 2 uses
  %i.dz = icmp slt i32 %.0.lcssa, %i.dy
  br i1 %i.dz, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %._crit_edge63
  %i.ea = add nsw i32 %.0.lcssa, -1
  %i.eb = select i1 %i.h, i32 0, i32 %i.i         ; 2 uses
  %i.ec = shl i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 6 uses
  %i.ef = icmp sgt i32 %.fr112, 0
  %wide.trip.count.i51 = zext i32 %.fr112 to i64  ; 5 uses
  br i1 %i.ef, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %min.iters.check165 = icmp ult i32 %.fr112, 6
  %n.vec167 = and i64 %wide.trip.count.i51, 2147483644 ; 3 uses
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count.i51
  %xtraiter188 = and i64 %wide.trip.count.i51, 3  ; 2 uses
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtCopy.exit.loopexit
  %.148108 = phi i32 [ %i.fi, %Abc_TtCopy.exit.loopexit ], [ %.0.lcssa, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %i.eg = shl i32 %.148108, %i.eb
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %4, i64 %i.eh ; 6 uses
  br i1 %min.iters.check165, label %.lr.ph.i52.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.preheader.i
  %i.ej = sub nsw i64 %i.eh, %i.ed
  %i.ek = shl nsw i64 %i.ej, 3
  %i.el = add nsw i64 %i.ek, -1
  %diff.check163 = icmp ult i64 %i.el, 31
  br i1 %diff.check163, label %.lr.ph.i52.preheader, label %vector.body168

vector.body168:                                   ; preds = %vector.memcheck162, %vector.body168
  %index169 = phi i64 [ %index.next172, %vector.body168 ], [ 0, %vector.memcheck162 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %index169 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load170 = load <2 x i64>, ptr %i.em, align 8, !tbaa !68
  %wide.load171 = load <2 x i64>, ptr %i.en, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index169 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x i64> %wide.load170, ptr %i.eo, align 8, !tbaa !68
  store <2 x i64> %wide.load171, ptr %i.ep, align 8, !tbaa !68
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.eq, label %middle.block173, label %vector.body168, !llvm.loop !223

middle.block173:                                  ; preds = %vector.body168
  br i1 %cmp.n174, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %vector.memcheck162, %.lr.ph.preheader.i, %middle.block173
  %indvars.iv.i53.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec167, %middle.block173 ] ; 3 uses
  br i1 %lcmp.mod189.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52.prol
  %indvars.iv.i53.prol = phi i64 [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ] ; 3 uses
  %prol.iter190 = phi i64 [ %prol.iter190.next, %.lr.ph.i52.prol ], [ 0, %.lr.ph.i52.preheader ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i53.prol
  %i.es = load i64, ptr %i.er, align 8, !tbaa !68
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i53.prol
  store i64 %i.es, ptr %i.et, align 8, !tbaa !68
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i53.prol, 1 ; 2 uses
  %prol.iter190.next = add i64 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i64 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol, !llvm.loop !224

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i52.preheader
  %indvars.iv.i53.unr = phi i64 [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ], [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ]
  %i.eu = sub nsw i64 %indvars.iv.i53.ph, %wide.trip.count.i51
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54.3, %.lr.ph.i52 ], [ %indvars.iv.i53.unr, %.lr.ph.i52.prol.loopexit ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i53
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !68
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i53
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !68
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !68
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i54
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !68
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i53, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54.1
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i54.1
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !68
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i53, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i54.2
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !68
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i54.2
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !68
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i53, 4 ; 2 uses
  %exitcond.not.i55.3 = icmp eq i64 %indvars.iv.next.i54.3, %wide.trip.count.i51
  br i1 %exitcond.not.i55.3, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i52, !llvm.loop !225

Abc_TtCopy.exit.loopexit:                         ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %middle.block173
  %i.fi = add nsw i32 %.148108, 1                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.fi, %i.dy
  br i1 %exitcond127.not, label %._crit_edge.split, label %.lr.ph.preheader.i, !llvm.loop !226

._crit_edge.split:                                ; preds = %Abc_TtCopy.exit.loopexit, %.lr.ph, %._crit_edge63
  %i.fj = icmp slt i32 %2, 6
  %i.fk = icmp ne i32 %.09.i, 0
  %or.cond = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %._crit_edge.split
  %i.fl = icmp eq i32 %2, 0
  %i.fm = icmp ult i32 %2, 2
  %i.fn = icmp ult i32 %2, 3
  %i.fo = icmp ult i32 %2, 4
  %i.fp = icmp ult i32 %2, 5
  %i.fq = icmp ult i32 %2, 6
  %i.fr = sext i32 %6 to i64
  %wide.trip.count131 = zext nneg i32 %.09.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph110, %bb.i
  %indvars.iv128 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next129, %bb.i ] ; 2 uses
  %i.fs = mul nsw i64 %indvars.iv128, %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %5, i64 %i.fs ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !68 ; 7 uses
  %i.fv = trunc i64 %i.fu to i1
  %i.fw = select i1 %i.fv, i64 3, i64 0
  %i.fx = and i64 %i.fu, 3
  %i.fy = select i1 %i.fl, i64 %i.fw, i64 %i.fx
  %i.fz = mul nuw nsw i64 %i.fy, 5
  %.126.i = select i1 %i.fm, i64 %i.fz, i64 %i.fu
  %i.ga = and i64 %.126.i, 15
  %i.gb = mul nuw nsw i64 %i.ga, 17
  %.227.i = select i1 %i.fn, i64 %i.gb, i64 %i.fu
  %i.gc = and i64 %.227.i, 255
  %i.gd = mul nuw nsw i64 %i.gc, 257
  %.328.i = select i1 %i.fo, i64 %i.gd, i64 %i.fu
  %i.ge = and i64 %.328.i, 65535
  %i.gf = mul nuw nsw i64 %i.ge, 65537
  %.429.i = select i1 %i.fp, i64 %i.gf, i64 %i.fu
  %i.gg = and i64 %.429.i, 4294967295
  %i.gh = mul nuw i64 %i.gg, 4294967297
  %.5.i = select i1 %i.fq, i64 %i.gh, i64 %i.fu
  store i64 %.5.i, ptr %i.ft, align 8, !tbaa !68
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %bb.i, !llvm.loop !227

.loopexit:                                        ; preds = %bb.i, %._crit_edge.split
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_LutCascadeDec(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr noundef %13, i32 noundef %14, i32 noundef %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = getelementptr i8, ptr %4, i64 4          ; 7 uses
  %.val132 = load i32, ptr %i.b, align 4, !tbaa !90 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = icmp slt i32 %.val132, 7
  %i.d = add nsw i32 %.val132, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 5 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 16) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !99
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !65
  store i32 %i.f, ptr %i.k, align 4, !tbaa !100
  %i.m = sext i32 %i.f to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.n, i1 false)
  store ptr %i.g, ptr %i.a, align 16, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %calloc, ptr %i.o, align 8, !tbaa !228
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %calloc194 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %calloc194, i64 8
  store ptr %calloc194, ptr %i.q, align 16, !tbaa !228
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %Vec_WrdPush.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  %i.t = shl nuw nsw i64 %wide.trip.count.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.t, i1 false), !tbaa !68
  br label %Vec_WrdPush.exit

end_hunk_0
begin_hunk_1_@Abc_LutCascadeDecStage:bb.a
  br i1 %i.eq, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader.i
  %i.er = shl i64 %indvar, %i.ep
  %i.es = add i64 %i.er, -1
  %diff.check = icmp ult i64 %i.es, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <2 x i64>, ptr %i.et, align 8, !tbaa !68
  %wide.load7 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !68
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <2 x i64> %wide.load, ptr %i.ev, align 8, !tbaa !68
  store <2 x i64> %wide.load7, ptr %i.ew, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %._crit_edge.i191, label %vector.body, !llvm.loop !231

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i190.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.i189
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !68
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189
  store i64 %i.ez, ptr %gep.i, align 8, !tbaa !68
  %indvars.iv.next.i190 = or disjoint i64 %indvars.iv.i189, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i190
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !68
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190
  store i64 %i.fb, ptr %gep.i.1, align 8, !tbaa !68
  %indvars.iv.next.i190.1 = or disjoint i64 %indvars.iv.i189, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i190.1
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !68
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190.1
  store i64 %i.fd, ptr %gep.i.2, align 8, !tbaa !68
  %indvars.iv.next.i190.2 = or disjoint i64 %indvars.iv.i189, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i190.2
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !68
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i190.2
  store i64 %i.ff, ptr %gep.i.3, align 8, !tbaa !68
  %indvars.iv.next.i190.3 = add nuw nsw i64 %indvars.iv.i189, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i191.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !232

._crit_edge.i191.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.i191, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i191.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i189.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i190.3, %._crit_edge.i191.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i189.epil = phi i64 [ %indvars.iv.next.i190.epil, %scalar.ph.epil ], [ %indvars.iv.i189.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.i189.epil
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !68
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i189.epil
  store i64 %i.fh, ptr %gep.i.epil, align 8, !tbaa !68
  %indvars.iv.next.i190.epil = add nuw nsw i64 %indvars.iv.i189.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i191, label %scalar.ph.epil, !llvm.loop !233

._crit_edge.i191:                                 ; preds = %vector.body, %._crit_edge.i191.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %i.em ; 2 uses
  %i.fi = trunc nuw i64 %indvars.iv.next28.i to i32
  %i.fj = icmp sgt i32 %i.cv, %i.fi
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fj, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !234

Abc_TtStretch6.exit:                              ; preds = %._crit_edge.i191, %Vec_WrdFillExtra.exit, %bb.ag
  %notmask = shl nsw i32 -1, %.val159
  %i.fk = xor i32 %notmask, -1
  tail call void @Abc_TtPermuteMask(ptr noundef %.val163, i32 noundef %i.cr, i32 noundef %i.fk, ptr noundef null)
  %i.fl = add i32 %i.ck, %i.cn                    ; 2 uses
  %i.fm = add i32 %i.fl, %.09.i                   ; 5 uses
  %i.fn = add i32 %i.fm, %i.cq                    ; 3 uses
  %i.fo = icmp slt i32 %i.fn, 7                   ; 2 uses
  %i.fp = add nsw i32 %i.fn, -6                   ; 2 uses
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = select i1 %i.fo, i32 1, i32 %i.fq       ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !228 ; 8 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !99
  %.not.i.i192 = icmp slt i32 %i.fu, %i.fr
  br i1 %.not.i.i192, label %bb.ah, label %Vec_WrdGrow.exit.i193

bb.ah:                                            ; preds = %Abc_TtStretch6.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i196 = icmp eq ptr %i.fw, null
  %i.fx = zext nneg i32 %i.fr to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3                ; 3 uses
  br i1 %.not9.i.i196, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = tail call ptr @realloc(ptr noundef nonnull %i.fw, i64 noundef %i.fy) #32
  %.pre42.pre.pre = load ptr, ptr %i.fs, align 8, !tbaa !228
  br label %Vec_WrdGrow.exit.i193.thread

bb.aj:                                            ; preds = %bb.ah
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fy) #31
  br label %Vec_WrdGrow.exit.i193.thread

Vec_WrdGrow.exit.i193.thread:                     ; preds = %bb.ai, %bb.aj
  %.pre42.pre = phi ptr [ %.pre42.pre.pre, %bb.ai ], [ %i.ft, %bb.aj ]
  %i.gb = phi ptr [ %i.fz, %bb.ai ], [ %i.ga, %bb.aj ] ; 2 uses
  store ptr %i.gb, ptr %i.fv, align 8, !tbaa !65
  store i32 %i.fr, ptr %i.ft, align 8, !tbaa !99
  br label %.lr.ph.i195

Vec_WrdGrow.exit.i193:                            ; preds = %Abc_TtStretch6.exit
  %i.gc = icmp sgt i32 %i.fr, 0
  br i1 %i.gc, label %Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge, label %Vec_WrdFill.exit

Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge:      ; preds = %Vec_WrdGrow.exit.i193
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre41 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65
  %.pre45 = zext nneg i32 %i.fr to i64
  %.pre46 = shl nuw nsw i64 %.pre45, 3
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge, %Vec_WrdGrow.exit.i193.thread
  %.pre-phi47 = phi i64 [ %.pre46, %Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge ], [ %i.fy, %Vec_WrdGrow.exit.i193.thread ]
  %.pre42 = phi ptr [ %i.ft, %Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge ], [ %.pre42.pre, %Vec_WrdGrow.exit.i193.thread ]
  %i.gd = phi ptr [ %.pre41, %Vec_WrdGrow.exit.i193..lr.ph.i195_crit_edge ], [ %i.gb, %Vec_WrdGrow.exit.i193.thread ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gd, i8 0, i64 %.pre-phi47, i1 false), !tbaa !68
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %Vec_WrdGrow.exit.i193, %.lr.ph.i195
  %i.ge = phi ptr [ %i.ft, %Vec_WrdGrow.exit.i193 ], [ %.pre42, %.lr.ph.i195 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.fr, ptr %i.gf, align 4, !tbaa !100
  %i.gg = getelementptr i8, ptr %i.ge, i64 8
  %.val162 = load ptr, ptr %i.gg, align 8, !tbaa !65 ; 10 uses
  %.val16210 = ptrtoaddr ptr %.val162 to i64
  %i.gh = sub nsw i32 %i.av, %i.ck                ; 5 uses
  %i.gi = icmp sgt i32 %i.gh, 5
  %i.gj = sub nsw i32 6, %i.gh
  %i.gk = select i1 %i.gi, i32 0, i32 %i.gj       ; 3 uses
  %i.gl = add nsw i32 %i.gk, %i.av                ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 7                   ; 2 uses
  %i.gn = add nsw i32 %i.gl, -6                   ; 2 uses
  %i.go = shl nuw i32 1, %i.gn
  %i.gp = select i1 %i.gm, i32 1, i32 %i.go
  %i.gq = add nsw i32 %i.gk, %i.gh
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !228 ; 5 uses
  %i.gt = select i1 %i.gm, i32 0, i32 %i.gn       ; 3 uses
  %i.gu = shl i32 %.09.i, %i.gt                   ; 6 uses
  %i.gv = load i32, ptr %i.gs, align 8, !tbaa !99
  %.not.i.i197 = icmp slt i32 %i.gv, %i.gu
  br i1 %.not.i.i197, label %bb.ak, label %Vec_WrdGrow.exit.i198

bb.ak:                                            ; preds = %Vec_WrdFill.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i201 = icmp eq ptr %i.gx, null
  %i.gy = sext i32 %i.gu to i64
  %i.gz = shl nsw i64 %i.gy, 3                    ; 2 uses
  br i1 %.not9.i.i201, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = tail call ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef %i.gz) #32
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hb = tail call noalias ptr @malloc(i64 noundef %i.gz) #31
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hc = phi ptr [ %i.ha, %bb.al ], [ %i.hb, %bb.am ]
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !65
  store i32 %i.gu, ptr %i.gs, align 8, !tbaa !99
  br label %Vec_WrdGrow.exit.i198

Vec_WrdGrow.exit.i198:                            ; preds = %bb.an, %Vec_WrdFill.exit
  %i.hd = icmp sgt i32 %i.gu, 0
  br i1 %i.hd, label %.lr.ph.i200, label %Vec_WrdFill.exit202

.lr.ph.i200:                                      ; preds = %Vec_WrdGrow.exit.i198
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !65
  %i.hg = zext nneg i32 %i.gu to i64
  %i.hh = shl nuw nsw i64 %i.hg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hf, i8 0, i64 %i.hh, i1 false), !tbaa !68
  br label %Vec_WrdFill.exit202

Vec_WrdFill.exit202:                              ; preds = %Vec_WrdGrow.exit.i198, %.lr.ph.i200
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %i.gu, ptr %i.hi, align 4, !tbaa !100
  %i.hj = load ptr, ptr %i.gr, align 8, !tbaa !228
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  %.val161 = load ptr, ptr %i.hk, align 8, !tbaa !65 ; 3 uses
  %i.hl = shl nuw nsw i32 1, %i.ck                ; 3 uses
  %.not20 = icmp eq i32 %i.ck, 31
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_WrdFill.exit202
  %i.hm = select i1 %i.cs, i32 0, i32 %i.ct
  %i.hn = sub nsw i32 %i.cr, %i.ck
  %i.ho = select i1 %i.fo, i32 0, i32 %i.fp
  %i.hp = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 6)
  %i.hq = add nsw i32 %i.hp, -6
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.ao
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.ic, %bb.ao ] ; 4 uses
  %i.hr = shl i32 %.08, %i.hm
  %i.hs = sdiv i32 %i.hr, %i.hl
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %.val163, i64 %i.ht
  %i.hv = shl i32 %.08, %i.ho
  %i.hw = sdiv i32 %i.hv, %i.hl
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %.val162, i64 %i.hx
  %i.hz = shl i32 %.08, %i.hq
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %.val161, i64 %i.ia
  tail call void @Abc_LutCascadeDerive(ptr noundef %i.hu, i32 noundef %i.hn, i32 noundef %i.gh, i32 noundef %i.e, ptr noundef %i.hy, ptr noundef %i.ib, i32 noundef %i.gp)
  %i.ic = add nuw nsw i32 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, %i.hl
  br i1 %exitcond.not, label %._crit_edge, label %bb.ao, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.ao, %Vec_WrdFill.exit202
  %notmask154 = shl nsw i32 -1, %i.cq
  %i.id = xor i32 %notmask154, -1
  tail call void @Abc_TtPermuteMask(ptr noundef %.val162, i32 noundef %i.fn, i32 noundef %i.id, ptr noundef null)
  %notmask155 = shl nsw i32 -1, %.09.i
  %i.ie = xor i32 %notmask155, -1
  %i.if = shl i32 %i.ie, %i.cn
  tail call void @Abc_TtPermuteMask(ptr noundef %.val162, i32 noundef %i.fm, i32 noundef %i.if, ptr noundef null)
  %.not21 = icmp eq i32 %.09.i, 0                 ; 2 uses
  br i1 %.not21, label %._crit_edge14, label %.lr.ph11

.lr.ph11:                                         ; preds = %._crit_edge
  %notmask156 = shl nsw i32 -1, %i.gk
  %i.ig = xor i32 %notmask156, -1
  %i.ih = shl i32 %i.ig, %i.gh
  br label %bb.ap

.lr.ph13:                                         ; preds = %bb.ap
  %i.ii = getelementptr i8, ptr %4, i64 8
  %i.ij = sext i32 %.val159 to i64
  %i.ik = zext nneg i32 %i.av to i64
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr i8, ptr %6, i64 8
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph11, %bb.ap
  %.19 = phi i32 [ 0, %.lr.ph11 ], [ %i.iq, %bb.ap ] ; 2 uses
  %i.in = shl i32 %.19, %i.gt
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %.val161, i64 %i.io
  tail call void @Abc_TtPermuteMask(ptr noundef %i.ip, i32 noundef %i.gl, i32 noundef %i.ih, ptr noundef null)
  %i.iq = add nuw nsw i32 %.19, 1                 ; 2 uses
  %exitcond31.not = icmp eq i32 %i.iq, %.09.i
  br i1 %exitcond31.not, label %.lr.ph13, label %bb.ap, !llvm.loop !236

bb.aq:                                            ; preds = %.lr.ph13, %bb.aq
  %.212 = phi i32 [ 0, %.lr.ph13 ], [ %i.iy, %bb.aq ] ; 2 uses
  %.val160 = load ptr, ptr %i.ii, align 8, !tbaa !92
  %i.ir = getelementptr inbounds [4 x i8], ptr %.val160, i64 %i.ij
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.il
  %.val157 = load ptr, ptr %i.im, align 8, !tbaa !65
  %i.it = load i64, ptr %.val157, align 8, !tbaa !68
  %i.iu = trunc i64 %i.it to i32
  %i.iv = shl i32 %.212, %i.gt
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %.val161, i64 %i.iw
  tail call void @Abc_LutCascadeGenOne(ptr noundef %6, i32 noundef %i.av, ptr noundef %i.is, i32 noundef %i.iu, ptr noundef %i.ix)
  %i.iy = add nuw nsw i32 %.212, 1                ; 2 uses
  %exitcond32.not = icmp eq i32 %i.iy, %.09.i
  br i1 %exitcond32.not, label %._crit_edge14, label %bb.aq, !llvm.loop !237

._crit_edge14:                                    ; preds = %bb.aq, %._crit_edge
  %i.iz = icmp slt i32 %i.fm, 7
  %i.ja = add nsw i32 %i.fm, -6
  %i.jb = shl nuw i32 1, %i.ja
  %i.jc = select i1 %i.iz, i32 1, i32 %i.jb       ; 4 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge14
  %wide.trip.count.i = zext nneg i32 %i.jc to i64 ; 3 uses
  %min.iters.check13 = icmp ult i32 %i.jc, 8
  %i.je = sub i64 %.val16210, %.val1639
  %diff.check11 = icmp ugt i64 %i.je, -32
  %or.cond = select i1 %min.iters.check13, i1 true, i1 %diff.check11
  br i1 %or.cond, label %.lr.ph.i204.preheader, label %vector.ph14

.lr.ph.i204.preheader:                            ; preds = %.lr.ph.preheader.i
  %xtraiter57 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.jf = icmp ult i32 %i.jc, 4
  br i1 %i.jf, label %.lr.ph.i204.epil.preheader, label %.lr.ph.i204.preheader.new

.lr.ph.i204.preheader.new:                        ; preds = %.lr.ph.i204.preheader
  %unroll_iter61 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i204

vector.ph14:                                      ; preds = %.lr.ph.preheader.i
  %n.vec15 = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph14
  %index17 = phi i64 [ 0, %vector.ph14 ], [ %index.next20, %vector.body16 ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %index17 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !68
  %wide.load19 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !68
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %index17 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <2 x i64> %wide.load18, ptr %i.ji, align 8, !tbaa !68
  store <2 x i64> %wide.load19, ptr %i.jj, align 8, !tbaa !68
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.jk = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.jk, label %Abc_TtCopy.exit, label %vector.body16, !llvm.loop !238

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.i204.preheader.new
  %indvars.iv.i205 = phi i64 [ 0, %.lr.ph.i204.preheader.new ], [ %indvars.iv.next.i206.3, %.lr.ph.i204 ] ; 6 uses
  %niter62 = phi i64 [ 0, %.lr.ph.i204.preheader.new ], [ %niter62.next.3, %.lr.ph.i204 ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %indvars.iv.i205
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !68
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.i205
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !68
  %indvars.iv.next.i206 = or disjoint i64 %indvars.iv.i205, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %indvars.iv.next.i206
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !68
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i206
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !68
  %indvars.iv.next.i206.1 = or disjoint i64 %indvars.iv.i205, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %indvars.iv.next.i206.1
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !68
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i206.1
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !68
  %indvars.iv.next.i206.2 = or disjoint i64 %indvars.iv.i205, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %indvars.iv.next.i206.2
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !68
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.next.i206.2
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !68
  %indvars.iv.next.i206.3 = add nuw nsw i64 %indvars.iv.i205, 4 ; 2 uses
  %niter62.next.3 = add i64 %niter62, 4           ; 2 uses
  %niter62.ncmp.3 = icmp eq i64 %niter62.next.3, %unroll_iter61
  br i1 %niter62.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i204, !llvm.loop !239

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i204
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %Abc_TtCopy.exit, label %.lr.ph.i204.epil.preheader

.lr.ph.i204.epil.preheader:                       ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i204.preheader
  %indvars.iv.i205.epil.init = phi i64 [ 0, %.lr.ph.i204.preheader ], [ %indvars.iv.next.i206.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.i204.epil

.lr.ph.i204.epil:                                 ; preds = %.lr.ph.i204.epil, %.lr.ph.i204.epil.preheader
  %indvars.iv.i205.epil = phi i64 [ %indvars.iv.next.i206.epil, %.lr.ph.i204.epil ], [ %indvars.iv.i205.epil.init, %.lr.ph.i204.epil.preheader ] ; 3 uses
  %epil.iter58 = phi i64 [ %epil.iter58.next, %.lr.ph.i204.epil ], [ 0, %.lr.ph.i204.epil.preheader ]
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val162, i64 %indvars.iv.i205.epil
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !68
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv.i205.epil
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !68
  %indvars.iv.next.i206.epil = add nuw nsw i64 %indvars.iv.i205.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph.i204.epil, !llvm.loop !240

Abc_TtCopy.exit:                                  ; preds = %vector.body16, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i204.epil, %._crit_edge14
  %.not23 = icmp eq i32 %i.cj, 0
  br i1 %.not23, label %.preheader, label %.lr.ph16

.lr.ph16:                                         ; preds = %Abc_TtCopy.exit
  %i.ka = sub i32 %.val159, %i.ck
  %i.kb = getelementptr i8, ptr %4, i64 8
  %.val158 = load ptr, ptr %i.kb, align 8, !tbaa !92 ; 2 uses
  %i.kc = sext i32 %i.cn to i64
  %i.kd = sext i32 %i.ka to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ck to i64   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val158, i64 %i.kd ; 13 uses
  %invariant.gep80 = getelementptr [4 x i8], ptr %.val158, i64 %i.kc ; 13 uses
  %min.iters.check27 = icmp samesign ult i32 %i.ck, 16
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph16
  %i.ke = sext i32 %.val159 to i64
  %i.kf = zext nneg i32 %i.av to i64
  %i.kg = add nsw i64 %i.kd, %i.kf
  %i.kh = sub nsw i64 %i.ke, %i.kg
  %i.ki = shl nsw i64 %i.kh, 2
  %i.kj = add nsw i64 %i.ki, -1
  %diff.check25 = icmp ult i64 %i.kj, 31
  br i1 %diff.check25, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %vector.memcheck24
  %n.vec29 = and i64 %wide.trip.count, 56         ; 5 uses
  %i.kk = getelementptr i8, ptr %invariant.gep, i64 16
  %wide.load32 = load <4 x i32>, ptr %invariant.gep, align 4, !tbaa !52
  %wide.load33 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !52
  %i.kl = getelementptr i8, ptr %invariant.gep80, i64 16
  store <4 x i32> %wide.load32, ptr %invariant.gep80, align 4, !tbaa !52
  store <4 x i32> %wide.load33, ptr %i.kl, align 4, !tbaa !52
  %i.km = icmp eq i64 %n.vec29, 8
  br i1 %i.km, label %middle.block35, label %vector.body30.1

vector.body30.1:                                  ; preds = %vector.ph28
  %i.kn = getelementptr i8, ptr %invariant.gep, i64 32
  %i.ko = getelementptr i8, ptr %invariant.gep, i64 48
  %wide.load32.1 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !52
  %wide.load33.1 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !52
  %i.kp = getelementptr i8, ptr %invariant.gep80, i64 32
  %i.kq = getelementptr i8, ptr %invariant.gep80, i64 48
  store <4 x i32> %wide.load32.1, ptr %i.kp, align 4, !tbaa !52
  store <4 x i32> %wide.load33.1, ptr %i.kq, align 4, !tbaa !52
  %i.kr = icmp eq i64 %n.vec29, 16
  br i1 %i.kr, label %middle.block35, label %vector.body30.2

vector.body30.2:                                  ; preds = %vector.body30.1
  %i.ks = getelementptr i8, ptr %invariant.gep, i64 64
  %i.kt = getelementptr i8, ptr %invariant.gep, i64 80
  %wide.load32.2 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !52
  %wide.load33.2 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !52
  %i.ku = getelementptr i8, ptr %invariant.gep80, i64 64
end_hunk_1
