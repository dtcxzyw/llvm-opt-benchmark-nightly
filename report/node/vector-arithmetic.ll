Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/vector-arithmetic?download=true
inline.NumInlined: 122
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2v86bigint14SubtractSignedENS0_8RWDigitsENS0_6DigitsEbS2_b:bb.a
  %i.ht = add i32 %1, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = shl nuw nsw i64 %i.hu, 3
  %i.hw = add nuw nsw i64 %i.hv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i83, i8 0, i64 %i.hw, i1 false)
  br label %_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_.exit106

.lr.ph61.i86:                                     ; preds = %.lr.ph61.i86.prol.loopexit, %.lr.ph61.i86
  %indvars.iv70.i87 = phi i64 [ %indvars.iv.next71.i90.1, %.lr.ph61.i86 ], [ %indvars.iv70.i87.unr, %.lr.ph61.i86.prol.loopexit ] ; 4 uses
  %.13859.i88 = phi i64 [ %i.ik, %.lr.ph61.i86 ], [ %.13859.i88.unr, %.lr.ph61.i86.prol.loopexit ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv70.i87
  %.0.copyload.i.i22.i89 = load i64, ptr %i.hx, align 1
  %i.hy = zext i64 %.0.copyload.i.i22.i89 to i128
  %i.hz = zext nneg i64 %.13859.i88 to i128
  %i.ia = sub nsw i128 %i.hy, %i.hz               ; 2 uses
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc i128 %i.ia to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i87
  store i64 %i.ic, ptr %i.id, align 4
  %indvars.iv.next71.i90 = add nuw nsw i64 %indvars.iv70.i87, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv.next71.i90
  %.0.copyload.i.i22.i89.1 = load i64, ptr %i.ie, align 1
  %i.if = zext i64 %.0.copyload.i.i22.i89.1 to i128
  %i.ig = and i128 %i.ib, 1
  %i.ih = sub nsw i128 %i.if, %i.ig               ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = trunc nuw i128 %i.ii to i64
  %i.ik = and i64 %i.ij, 1
  %i.il = trunc i128 %i.ih to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next71.i90
  store i64 %i.il, ptr %i.im, align 4
  %indvars.iv.next71.i90.1 = add nuw nsw i64 %indvars.iv70.i87, 2 ; 2 uses
  %exitcond74.not.i91.1 = icmp eq i64 %indvars.iv.next71.i90.1, %wide.trip.count73.i85
  br i1 %exitcond74.not.i91.1, label %.preheader.i80, label %.lr.ph61.i86, !llvm.loop !4

_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_.exit106: ; preds = %.preheader.i80, %.lr.ph64.preheader.i82
  %i.in = xor i1 %4, true
  br label %_ZN2v86bigint3AddENS0_8RWDigitsENS0_6DigitsES2_.exit

_ZN2v86bigint3AddENS0_8RWDigitsENS0_6DigitsES2_.exit: ; preds = %.lr.ph55.i.preheader, %.lr.ph64.preheader.i, %.preheader.i53, %.lr.ph55.preheader.i, %.preheader.i, %_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_.exit106
  %.0 = phi i1 [ %i.in, %_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_.exit106 ], [ %4, %.lr.ph64.preheader.i ], [ %4, %.preheader.i ], [ %4, %.lr.ph55.preheader.i ], [ %4, %.preheader.i53 ], [ %4, %.lr.ph55.i.preheader ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint6AddOneENS0_8RWDigitsENS0_6DigitsE(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext i32 %3 to i64           ; 6 uses
  %exitcond.not49 = icmp eq i32 %3, 0
  br i1 %exitcond.not49, label %.critedge, label %.lr.ph52

bb.b:                                             ; preds = %.lr.ph52
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph52, !llvm.loop !24

.lr.ph52:                                         ; preds = %bb.a, %bb.b
  %indvars.iv50 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv50
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %add.narrowed.i = add i64 %.0.copyload.i.i, 1
  %add.narrowed.overflow.i = icmp eq i64 %.0.copyload.i.i, -1
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv50
  store i64 %add.narrowed.i, ptr %i.d, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  br i1 %add.narrowed.overflow.i, label %bb.b, label %.critedge.thread.loopexit, !llvm.loop !24

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.e = add i32 %3, 1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %wide.trip.count
  store i64 1, ptr %i.f, align 4
  br label %.critedge.thread

.critedge.thread.loopexit:                        ; preds = %.lr.ph52
  %i.g = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %.1 = phi i32 [ %i.e, %.critedge ], [ %i.g, %.critedge.thread.loopexit ] ; 3 uses
  %i.h = icmp ult i32 %.1, %3
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.critedge.thread
  %i.i = zext i32 %.1 to i64                      ; 4 uses
  %i.j = sub nsw i64 %wide.trip.count, %i.i       ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, -4                       ; 3 uses
  %i.l = add nsw i64 %n.vec, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = add nuw i64 %index, %i.i                 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 1
  %wide.load53 = load <2 x i64>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %wide.load, ptr %i.p, align 4
  store <2 x i64> %wide.load53, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv40.ph = phi i64 [ %i.i, %.lr.ph.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %i.s = sub nsw i64 %wide.trip.count, %indvars.iv40.ph
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader54, %.lr.ph.prol
  %indvars.iv40.prol = phi i64 [ %indvars.iv.next41.prol, %.lr.ph.prol ], [ %indvars.iv40.ph, %.lr.ph.preheader54 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader54 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv40.prol
  %.0.copyload.i.i14.prol = load i64, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40.prol
  store i64 %.0.copyload.i.i14.prol, ptr %i.u, align 4
  %indvars.iv.next41.prol = add nuw nsw i64 %indvars.iv40.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !26

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader54
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %.lr.ph.preheader54 ], [ %indvars.iv.next41.prol, %.lr.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv40.ph, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.critedge.thread
  %.2.lcssa = phi i32 [ %.1, %.critedge.thread ], [ %3, %middle.block ], [ %3, %.lr.ph ], [ %3, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.x = icmp ult i32 %.2.lcssa, %1
  br i1 %i.x, label %.lr.ph34.preheader, label %._crit_edge

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.y = zext i32 %.2.lcssa to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = xor i32 %.2.lcssa, -1
  %i.ab = add i32 %1, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ae, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.3, %.lr.ph ], [ %indvars.iv40.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv40
  %.0.copyload.i.i14 = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv40
  store i64 %.0.copyload.i.i14, ptr %i.ag, align 4
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41
  %.0.copyload.i.i14.1 = load i64, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41
  store i64 %.0.copyload.i.i14.1, ptr %i.ai, align 4
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.1
  %.0.copyload.i.i14.2 = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41.1
  store i64 %.0.copyload.i.i14.2, ptr %i.ak, align 4
  %indvars.iv.next41.2 = add nuw nsw i64 %indvars.iv40, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next41.2
  %.0.copyload.i.i14.3 = load i64, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next41.2
  store i64 %.0.copyload.i.i14.3, ptr %i.am, align 4
  %indvars.iv.next41.3 = add nuw nsw i64 %indvars.iv40, 4 ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %indvars.iv.next41.3, %wide.trip.count
  br i1 %exitcond44.not.3, label %.preheader, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph34.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint11SubtractOneENS0_8RWDigitsENS0_6DigitsE(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  br label %bb.b

.preheader20:                                     ; preds = %bb.b
  %i.c = icmp ult i32 %i.aa, %3
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader20
  %i.d = zext i32 %indvars.iv to i64              ; 3 uses
  %4 = add i32 %3, -2
  %5 = sub i32 %4, %.022                          ; 2 uses
  %i.e = zext i32 %5 to i64
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %5, 7
  %i.g = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 8589934588               ; 3 uses
  %i.h = add nuw nsw i64 %n.vec, %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add nuw i64 %index, %i.d                 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x i64>, ptr %i.j, align 1
  %wide.load36 = load <2 x i64>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %wide.load, ptr %i.l, align 4
  store <2 x i64> %wide.load36, ptr %i.m, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv28.ph = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 3 uses
  %i.o = trunc i64 %indvars.iv28.ph to i32        ; 2 uses
  %i.p = sub i32 %3, %i.o
  %xtraiter = and i32 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader37, %.lr.ph.prol
  %indvars.iv28.prol = phi i64 [ %indvars.iv.next29.prol, %.lr.ph.prol ], [ %indvars.iv28.ph, %.lr.ph.preheader37 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader37 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv28.prol
  %.0.copyload.i.i10.prol = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv28.prol
  store i64 %.0.copyload.i.i10.prol, ptr %i.r, align 4
  %indvars.iv.next29.prol = add nuw nsw i64 %indvars.iv28.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader37
  %indvars.iv28.unr = phi i64 [ %indvars.iv28.ph, %.lr.ph.preheader37 ], [ %indvars.iv.next29.prol, %.lr.ph.prol ]
  %i.s = sub i32 %i.o, %3
  %i.t = icmp ugt i32 %i.s, -4
  br i1 %i.t, label %.preheader, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i32 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.022 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.b ]  ; 3 uses
  %i.u = zext i32 %.022 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u
  %.0.copyload.i.i = load i64, ptr %i.v, align 1
  %i.w = zext i64 %.0.copyload.i.i to i128
  %i.x = add nsw i128 %i.w, -1                    ; 2 uses
  %i.y = trunc i128 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  store i64 %i.y, ptr %i.z, align 4
  %i.aa = add i32 %.022, 1                        ; 3 uses
  %i.ab = and i128 %i.x, 18446744073709551616
  %.not = icmp eq i128 %i.ab, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %.not, label %.preheader20, label %bb.b, !llvm.loop !30

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader20
  %.1.lcssa = phi i32 [ %i.aa, %.preheader20 ], [ %3, %middle.block ], [ %3, %.lr.ph ], [ %3, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ac = icmp ult i32 %.1.lcssa, %1
  br i1 %i.ac, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.ad = zext i32 %.1.lcssa to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ae
  %i.af = xor i32 %.1.lcssa, -1
  %i.ag = add i32 %1, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aj, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv28 = phi i64 [ %indvars.iv.next29.3, %.lr.ph ], [ %indvars.iv28.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv28
  %.0.copyload.i.i10 = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv28
  store i64 %.0.copyload.i.i10, ptr %i.al, align 4
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29
  %.0.copyload.i.i10.1 = load i64, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29
  store i64 %.0.copyload.i.i10.1, ptr %i.an, align 4
  %indvars.iv.next29.1 = add nuw nsw i64 %indvars.iv28, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29.1
  %.0.copyload.i.i10.2 = load i64, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29.1
  store i64 %.0.copyload.i.i10.2, ptr %i.ap, align 4
  %indvars.iv.next29.2 = add nuw nsw i64 %indvars.iv28, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29.2
  %.0.copyload.i.i10.3 = load i64, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29.2
  store i64 %.0.copyload.i.i10.3, ptr %i.ar, align 4
  %indvars.iv.next29.3 = add nuw nsw i64 %indvars.iv28, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next29.3 to i32
  %exitcond.not.3 = icmp eq i32 %3, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph25.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{!3, !11}
!4 = distinct !{!4, !11}
!5 = distinct !{!5, !11}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11, !21, !12, !13}
!20 = distinct !{!20, !11, !21, !13, !12}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11, !12}
end_hunk_0
