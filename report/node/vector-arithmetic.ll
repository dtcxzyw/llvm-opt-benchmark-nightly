inline.NumInlined: 122
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2v86bigint18SubAndReturnBorrowENS0_8RWDigitsENS0_6DigitsE:bb.a
  %i.x = zext i64 %.0.copyload.i.i to i128
  %i.y = zext nneg i64 %.02535 to i128
  %i.z = zext i64 %.0.copyload.i to i128
  %i.aa = add nuw nsw i128 %i.y, %i.x
  %i.ab = sub nsw i128 %i.z, %i.aa                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc i128 %i.ab to i64
  store i64 %i.ad, ptr %i.v, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %.0.copyload.i.1 = load i64, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.af, align 1
  %i.ag = zext i64 %.0.copyload.i.i.1 to i128
  %i.ah = and i128 %i.ac, 1
  %i.ai = zext i64 %.0.copyload.i.1 to i128
  %i.aj = add nuw nsw i128 %i.ah, %i.ag
  %i.ak = sub nsw i128 %i.ai, %i.aj               ; 2 uses
  %i.al = lshr i128 %i.ak, 64                     ; 2 uses
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = and i64 %i.am, 1                        ; 3 uses
  %i.ao = trunc i128 %i.ak to i64
  store i64 %i.ao, ptr %i.ae, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %_ZN2v86bigint6Digits9NormalizeEv.exit, !llvm.loop !9

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %indvars.iv49 = phi i64 [ %indvars.iv47.lcssa, %.lr.ph39.preheader ], [ %indvars.iv.next50, %.lr.ph39 ] ; 2 uses
  %.12637 = phi i64 [ %.lcssa68, %.lr.ph39.preheader ], [ %i.av, %.lr.ph39 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv49 ; 2 uses
  %.0.copyload.i11 = load i64, ptr %i.ap, align 4
  %i.aq = zext i64 %.0.copyload.i11 to i128
  %i.ar = zext nneg i64 %.12637 to i128
  %i.as = sub nsw i128 %i.aq, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64                     ; 2 uses
  %i.au = trunc nuw i128 %i.at to i64
  %i.av = and i64 %i.au, 1                        ; 2 uses
  %i.aw = trunc i128 %i.as to i64
  store i64 %i.aw, ptr %i.ap, align 4
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next50, %i.u
  %i.ay = trunc i128 %i.at to i1
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph39, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread, !llvm.loop !10

.lr.ph._ZN2v86bigint6Digits9NormalizeEv.exit.thread.loopexit58_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit.thread:     ; preds = %.lr.ph39, %.lr.ph.preheader, %.lr.ph._ZN2v86bigint6Digits9NormalizeEv.exit.thread.loopexit58_crit_edge, %.preheader, %bb.a
  %.010 = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %bb.a ], [ %.lcssa68, %.preheader ], [ 0, %.lr.ph._ZN2v86bigint6Digits9NormalizeEv.exit.thread.loopexit58_crit_edge ], [ %i.av, %.lr.ph39 ]
  ret i64 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v86bigint3AddENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #1 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr39 = phi ptr [ %2, %bb.a ], [ %.tr41, %tailrecurse ] ; 7 uses
  %.tr40 = phi i32 [ %3, %bb.a ], [ %.tr42, %tailrecurse ] ; 6 uses
  %.tr41 = phi ptr [ %4, %bb.a ], [ %.tr39, %tailrecurse ] ; 4 uses
  %.tr42 = phi i32 [ %5, %bb.a ], [ %.tr40, %tailrecurse ] ; 9 uses
  %i.a = icmp ult i32 %.tr40, %.tr42
  br i1 %i.a, label %tailrecurse, label %.preheader44

.preheader44:                                     ; preds = %tailrecurse
  %.not = icmp eq i32 %.tr42, 0
  br i1 %.not, label %.preheader43, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader44
  %wide.trip.count = zext i32 %.tr42 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %.tr42, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.preheader43.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader43, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader43.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader43.loopexit.unr-lcssa ] ; 3 uses
  %.03545.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %.preheader43.loopexit.unr-lcssa ]
  %lcmp.mod79 = trunc i32 %.tr42 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.tr41, i64 %indvars.iv.epil.init
  %.0.copyload.i.i18.epil = load i64, ptr %i.d, align 1
  %i.e = zext i64 %.0.copyload.i.i.epil to i128
  %i.f = zext i64 %.0.copyload.i.i18.epil to i128
  %i.g = zext nneg i64 %.03545.epil.init to i128
  %i.h = add nuw nsw i128 %i.e, %i.g
  %i.i = add nuw nsw i128 %i.h, %i.f              ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw nsw i128 %i.j to i64
  %i.l = trunc i128 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.l, ptr %i.m, align 4
  br label %.preheader43

.preheader43:                                     ; preds = %.lr.ph.epil.preheader, %.preheader43.loopexit.unr-lcssa, %.preheader44
  %.035.lcssa = phi i64 [ 0, %.preheader44 ], [ %i.am, %.preheader43.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ] ; 3 uses
  %i.n = icmp ult i32 %.tr42, %.tr40
  br i1 %i.n, label %.lr.ph50.preheader, label %.preheader

.lr.ph50.preheader:                               ; preds = %.preheader43
  %i.o = zext i32 %.tr42 to i64                   ; 6 uses
  %wide.trip.count65 = zext i32 %.tr40 to i64     ; 3 uses
  %i.p = sub nsw i64 %wide.trip.count65, %i.o
  %xtraiter80 = and i64 %i.p, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol

.lr.ph50.prol:                                    ; preds = %.lr.ph50.preheader
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %i.o
  %.0.copyload.i.i19.prol = load i64, ptr %i.q, align 1 ; 2 uses
  %add.narrowed.i.prol = add i64 %.0.copyload.i.i19.prol, %.035.lcssa ; 2 uses
  %add.narrowed.overflow.i.prol = icmp ult i64 %add.narrowed.i.prol, %.0.copyload.i.i19.prol
  %i.r = zext i1 %add.narrowed.overflow.i.prol to i64 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  store i64 %add.narrowed.i.prol, ptr %i.s, align 4
  %indvars.iv.next62.prol = add nuw nsw i64 %i.o, 1
  br label %.lr.ph50.prol.loopexit

.lr.ph50.prol.loopexit:                           ; preds = %.lr.ph50.prol, %.lr.ph50.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph50.preheader ], [ %i.r, %.lr.ph50.prol ]
  %indvars.iv61.unr = phi i64 [ %i.o, %.lr.ph50.preheader ], [ %indvars.iv.next62.prol, %.lr.ph50.prol ]
  %.13648.unr = phi i64 [ %.035.lcssa, %.lr.ph50.preheader ], [ %i.r, %.lr.ph50.prol ]
  %i.t = add nsw i64 %wide.trip.count65, -1
  %i.u = icmp eq i64 %i.t, %i.o
  br i1 %i.u, label %.preheader, label %.lr.ph50

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.03545 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %indvars.iv
  %.0.copyload.i.i = load i64, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.tr41, i64 %indvars.iv
  %.0.copyload.i.i18 = load i64, ptr %i.w, align 1
  %i.x = zext i64 %.0.copyload.i.i to i128
  %i.y = zext i64 %.0.copyload.i.i18 to i128
  %i.z = zext nneg i64 %.03545 to i128
  %i.aa = add nuw nsw i128 %i.x, %i.z
  %i.ab = add nuw nsw i128 %i.aa, %i.y            ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc i128 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ad, ptr %i.ae, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %indvars.iv.next
  %.0.copyload.i.i.1 = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr41, i64 %indvars.iv.next
  %.0.copyload.i.i18.1 = load i64, ptr %i.ag, align 1
  %i.ah = zext i64 %.0.copyload.i.i.1 to i128
  %i.ai = zext i64 %.0.copyload.i.i18.1 to i128
  %i.aj = add nuw nsw i128 %i.ac, %i.ah
  %i.ak = add nuw nsw i128 %i.aj, %i.ai           ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = trunc nuw nsw i128 %i.al to i64         ; 3 uses
  %i.an = trunc i128 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.an, ptr %i.ao, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader43.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11

.preheader:                                       ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50, %.preheader43
  %.136.lcssa = phi i64 [ %.035.lcssa, %.preheader43 ], [ %.lcssa.unr, %.lr.ph50.prol.loopexit ], [ %i.bd, %.lr.ph50 ]
  %.1.lcssa = phi i32 [ %.tr42, %.preheader43 ], [ %.tr40, %.lr.ph50 ], [ %.tr40, %.lr.ph50.prol.loopexit ] ; 2 uses
  %i.ap = icmp ult i32 %.1.lcssa, %1
  br i1 %i.ap, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %.preheader
  %i.aq = zext i32 %.1.lcssa to i64               ; 3 uses
  %wide.trip.count70 = zext i32 %1 to i64         ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  store i64 %.136.lcssa, ptr %i.ar, align 4
  %indvars.iv.next68.peel = add nuw nsw i64 %i.aq, 1 ; 4 uses
  %exitcond71.peel.not = icmp eq i64 %indvars.iv.next68.peel, %wide.trip.count70
  br i1 %exitcond71.peel.not, label %._crit_edge, label %.lr.ph55.preheader74

.lr.ph55.preheader74:                             ; preds = %.lr.ph55.preheader
  %i.as = xor i64 %i.aq, -1
  %i.at = add nsw i64 %i.as, %wide.trip.count70   ; 3 uses
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph55.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.preheader74
  %n.vec = and i64 %i.at, -4                      ; 3 uses
  %i.au = add nsw i64 %indvars.iv.next68.peel, %n.vec
  %i.av = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next68.peel
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> zeroinitializer, ptr %i.aw, align 4
  store <2 x i64> zeroinitializer, ptr %i.ax, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph55.preheader76

.lr.ph55.preheader76:                             ; preds = %.lr.ph55.preheader74, %middle.block
  %indvars.iv67.ph = phi i64 [ %indvars.iv.next68.peel, %.lr.ph55.preheader74 ], [ %i.au, %middle.block ]
  br label %.lr.ph55

.lr.ph50:                                         ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.1, %.lr.ph50 ], [ %indvars.iv61.unr, %.lr.ph50.prol.loopexit ] ; 4 uses
  %.13648 = phi i64 [ %i.bd, %.lr.ph50 ], [ %.13648.unr, %.lr.ph50.prol.loopexit ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %indvars.iv61
  %.0.copyload.i.i19 = load i64, ptr %i.az, align 1 ; 2 uses
  %add.narrowed.i = add i64 %.0.copyload.i.i19, %.13648 ; 2 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %.0.copyload.i.i19
  %i.ba = zext i1 %add.narrowed.overflow.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv61
  store i64 %add.narrowed.i, ptr %i.bb, align 4
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.tr39, i64 %indvars.iv.next62
  %.0.copyload.i.i19.1 = load i64, ptr %i.bc, align 1 ; 2 uses
  %add.narrowed.i.1 = add i64 %.0.copyload.i.i19.1, %i.ba ; 2 uses
  %add.narrowed.overflow.i.1 = icmp ult i64 %add.narrowed.i.1, %.0.copyload.i.i19.1
  %i.bd = zext i1 %add.narrowed.overflow.i.1 to i64 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next62
  store i64 %add.narrowed.i.1, ptr %i.be, align 4
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %indvars.iv.next62.1, %wide.trip.count65
  br i1 %exitcond66.not.1, label %.preheader, label %.lr.ph50, !llvm.loop !16

.lr.ph55:                                         ; preds = %.lr.ph55.preheader76, %.lr.ph55
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph55 ], [ %indvars.iv67.ph, %.lr.ph55.preheader76 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv67
  store i64 0, ptr %i.bf, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge, label %.lr.ph55, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph55, %middle.block, %.lr.ph55.preheader, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_(ptr nofree writeonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #0 {
bb.a:
  %.not1.i = icmp eq i32 %3, 0
  br i1 %.not1.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = zext i32 %3 to i64
  %indvars.iv.next.i42 = add nsw i64 %i.a, -1     ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i42
  %.0.copyload.i.i.i43 = load i64, ptr %i.b, align 1
  %i.c = icmp eq i64 %.0.copyload.i.i.i43, 0
  br i1 %i.c, label %.lr.ph.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %indvars.i86 = trunc i64 %indvars.iv.next.i42 to i32 ; 2 uses
  %.not.i87 = icmp eq i32 %indvars.i86, 0
  br i1 %.not.i87, label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge, label %.lr.ph90, !llvm.loop !5

.lr.ph90:                                         ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph90, %.lr.ph
  %indvars.i89 = phi i32 [ %indvars.i86, %.lr.ph90 ], [ %indvars.i, %.lr.ph ]
  %indvars.iv.next.i4488 = phi i64 [ %indvars.iv.next.i42, %.lr.ph90 ], [ %indvars.iv.next.i, %.lr.ph ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i4488, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next.i, 4294967295
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %.0.copyload.i.i.i = load i64, ptr %i.e, align 1
  %i.f = icmp eq i64 %.0.copyload.i.i.i, 0
  br i1 %i.f, label %.lr.ph, label %_ZN2v86bigint6Digits9NormalizeEv.exit, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %.lr.ph.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge_crit_edge, label %bb.b, !llvm.loop !5

.lr.ph.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge, !llvm.loop !5

._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit:            ; preds = %bb.b, %.lr.ph.i, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge, %bb.a
  %.sroa.4.1 = phi i32 [ 0, %bb.a ], [ %3, %.lr.ph.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge ], [ %indvars.i89, %bb.b ] ; 4 uses
  %.not1.i13 = icmp eq i32 %5, 0
  br i1 %.not1.i13, label %.preheader41, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit
  %i.g = zext i32 %5 to i64
  %indvars.iv.next.i1647 = add nsw i64 %i.g, -1   ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i1647
  %.0.copyload.i.i.i1748 = load i64, ptr %i.h, align 1
  %i.i = icmp eq i64 %.0.copyload.i.i.i1748, 0
  br i1 %i.i, label %.lr.ph50.preheader, label %.lr.ph56.preheader

.lr.ph50.preheader:                               ; preds = %.lr.ph.i14
  %indvars.i1891 = trunc i64 %indvars.iv.next.i1647 to i32 ; 2 uses
  %.not.i1992 = icmp eq i32 %indvars.i1891, 0
  br i1 %.not.i1992, label %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge, label %.lr.ph95, !llvm.loop !5

.lr.ph95:                                         ; preds = %.lr.ph50.preheader
  br label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph95, %.lr.ph50
  %indvars.i1894 = phi i32 [ %indvars.i1891, %.lr.ph95 ], [ %indvars.i18, %.lr.ph50 ]
  %indvars.iv.next.i164993 = phi i64 [ %indvars.iv.next.i1647, %.lr.ph95 ], [ %indvars.iv.next.i16, %.lr.ph50 ]
  %indvars.iv.next.i16 = add nsw i64 %indvars.iv.next.i164993, -1 ; 3 uses
  %i.j = and i64 %indvars.iv.next.i16, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.j
  %.0.copyload.i.i.i17 = load i64, ptr %i.k, align 1
  %i.l = icmp eq i64 %.0.copyload.i.i.i17, 0
  br i1 %i.l, label %.lr.ph50, label %.lr.ph56.preheader, !llvm.loop !5

.lr.ph50:                                         ; preds = %bb.c
  %indvars.i18 = trunc i64 %indvars.iv.next.i16 to i32 ; 2 uses
  %.not.i19 = icmp eq i32 %indvars.i18, 0
  br i1 %.not.i19, label %.lr.ph50.._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge_crit_edge, label %bb.c, !llvm.loop !5

.lr.ph50.._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph50
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge, !llvm.loop !5

._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge: ; preds = %.lr.ph50.._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge_crit_edge, %.lr.ph50.preheader
  br label %.preheader41, !llvm.loop !5

.lr.ph56.preheader:                               ; preds = %bb.c, %.lr.ph.i14
  %.sroa.3.1 = phi i32 [ %5, %.lr.ph.i14 ], [ %indvars.i1894, %bb.c ] ; 5 uses
  %wide.trip.count = zext i32 %.sroa.3.1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %.sroa.3.1, 1
  br i1 %i.m, label %.lr.ph56.epil.preheader, label %.lr.ph56.preheader.new

.lr.ph56.preheader.new:                           ; preds = %.lr.ph56.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph56

.preheader41.loopexit.unr-lcssa:                  ; preds = %.lr.ph56
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader41, label %.lr.ph56.epil.preheader

.lr.ph56.epil.preheader:                          ; preds = %.preheader41.loopexit.unr-lcssa, %.lr.ph56.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next.1, %.preheader41.loopexit.unr-lcssa ] ; 3 uses
  %.03754.epil.init = phi i64 [ 0, %.lr.ph56.preheader ], [ %i.bg, %.preheader41.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %.sroa.3.1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %.0.copyload.i.i21.epil = load i64, ptr %i.o, align 1
  %i.p = zext i64 %.0.copyload.i.i21.epil to i128
  %i.q = zext nneg i64 %.03754.epil.init to i128
  %i.r = zext i64 %.0.copyload.i.i.epil to i128
  %i.s = add nuw nsw i128 %i.q, %i.p
  %i.t = sub nsw i128 %i.r, %i.s                  ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64
  %i.w = and i64 %i.v, 1
  %i.x = trunc i128 %i.t to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i64 %i.x, ptr %i.y, align 4
  br label %.preheader41

.preheader41:                                     ; preds = %.lr.ph56.epil.preheader, %.preheader41.loopexit.unr-lcssa, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge, %_ZN2v86bigint6Digits9NormalizeEv.exit
  %.037.lcssa = phi i64 [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge ], [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit ], [ %i.bg, %.preheader41.loopexit.unr-lcssa ], [ %i.w, %.lr.ph56.epil.preheader ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge ], [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit ], [ %.sroa.3.1, %.preheader41.loopexit.unr-lcssa ], [ %.sroa.3.1, %.lr.ph56.epil.preheader ] ; 3 uses
  %i.z = icmp ult i32 %.0.lcssa, %.sroa.4.1
  br i1 %i.z, label %.lr.ph61.preheader, label %.preheader

.lr.ph61.preheader:                               ; preds = %.preheader41
  %i.aa = zext i32 %.0.lcssa to i64               ; 6 uses
  %wide.trip.count73 = zext i32 %.sroa.4.1 to i64 ; 3 uses
  %i.ab = sub nsw i64 %wide.trip.count73, %i.aa
  %xtraiter100 = and i64 %i.ab, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa
  %.0.copyload.i.i22.prol = load i64, ptr %i.ac, align 1
  %i.ad = zext i64 %.0.copyload.i.i22.prol to i128
  %i.ae = zext nneg i64 %.037.lcssa to i128
  %i.af = sub nsw i128 %i.ad, %i.ae               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %i.aj = trunc i128 %i.af to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store i64 %i.aj, ptr %i.ak, align 4
  %indvars.iv.next71.prol = add nuw nsw i64 %i.aa, 1
  br label %.lr.ph61.prol.loopexit

end_hunk_0
begin_hunk_1_@_ZN2v86bigint14SubtractSignedENS0_8RWDigitsENS0_6DigitsEbS2_b:bb.a
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv.i71.epil.init
  %.0.copyload.i.i.i73.epil = load i64, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i71.epil.init
  %.0.copyload.i.i21.i74.epil = load i64, ptr %i.fu, align 1
  %i.fv = zext i64 %.0.copyload.i.i21.i74.epil to i128
  %i.fw = zext nneg i64 %.03754.i72.epil.init to i128
  %i.fx = zext i64 %.0.copyload.i.i.i73.epil to i128
  %i.fy = add nuw nsw i128 %i.fw, %i.fv
  %i.fz = sub nsw i128 %i.fx, %i.fy               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = trunc nuw i128 %i.ga to i64
  %i.gc = and i64 %i.gb, 1
  %i.gd = trunc i128 %i.fz to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i71.epil.init
  store i64 %i.gd, ptr %i.ge, align 4
  br label %.preheader41.i77

.preheader41.i77:                                 ; preds = %.lr.ph56.i70.epil.preheader, %.preheader41.i77.loopexit.unr-lcssa, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge.i98, %_ZN2v86bigint6Digits9NormalizeEv.exit.i61
  %.037.lcssa.i78 = phi i64 [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge.i98 ], [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit.i61 ], [ %i.hm, %.preheader41.i77.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph56.i70.epil.preheader ] ; 2 uses
  %.0.lcssa.i79 = phi i32 [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit20.loopexit_crit_edge.i98 ], [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit.i61 ], [ %.sroa.3.1.i68, %.preheader41.i77.loopexit.unr-lcssa ], [ %.sroa.3.1.i68, %.lr.ph56.i70.epil.preheader ] ; 3 uses
  %i.gf = icmp ult i32 %.0.lcssa.i79, %.sroa.4.1.i62
  br i1 %i.gf, label %.lr.ph61.preheader.i84, label %.preheader.i80

.lr.ph61.preheader.i84:                           ; preds = %.preheader41.i77
  %i.gg = zext i32 %.0.lcssa.i79 to i64           ; 6 uses
  %wide.trip.count73.i85 = zext i32 %.sroa.4.1.i62 to i64 ; 3 uses
  %i.gh = sub nsw i64 %wide.trip.count73.i85, %i.gg
  %xtraiter203 = and i64 %i.gh, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.lr.ph61.i86.prol.loopexit, label %.lr.ph61.i86.prol

.lr.ph61.i86.prol:                                ; preds = %.lr.ph61.preheader.i84
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %i.gg
  %.0.copyload.i.i22.i89.prol = load i64, ptr %i.gi, align 1
  %i.gj = zext i64 %.0.copyload.i.i22.i89.prol to i128
  %i.gk = zext nneg i64 %.037.lcssa.i78 to i128
  %i.gl = sub nsw i128 %i.gj, %i.gk               ; 2 uses
  %i.gm = lshr i128 %i.gl, 64
  %i.gn = trunc nuw i128 %i.gm to i64
  %i.go = and i64 %i.gn, 1
  %i.gp = trunc i128 %i.gl to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gg
  store i64 %i.gp, ptr %i.gq, align 4
  %indvars.iv.next71.i90.prol = add nuw nsw i64 %i.gg, 1
  br label %.lr.ph61.i86.prol.loopexit

.lr.ph61.i86.prol.loopexit:                       ; preds = %.lr.ph61.i86.prol, %.lr.ph61.preheader.i84
  %indvars.iv70.i87.unr = phi i64 [ %i.gg, %.lr.ph61.preheader.i84 ], [ %indvars.iv.next71.i90.prol, %.lr.ph61.i86.prol ]
  %.13859.i88.unr = phi i64 [ %.037.lcssa.i78, %.lr.ph61.preheader.i84 ], [ %i.go, %.lr.ph61.i86.prol ]
  %i.gr = add nsw i64 %wide.trip.count73.i85, -1
  %i.gs = icmp eq i64 %i.gr, %i.gg
  br i1 %i.gs, label %.preheader.i80, label %.lr.ph61.i86

.lr.ph56.i70:                                     ; preds = %.lr.ph56.i70, %.lr.ph56.preheader.i67.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph56.preheader.i67.new ], [ %indvars.iv.next.i75.1, %.lr.ph56.i70 ] ; 5 uses
  %.03754.i72 = phi i64 [ 0, %.lr.ph56.preheader.i67.new ], [ %i.hm, %.lr.ph56.i70 ]
  %niter = phi i64 [ 0, %.lr.ph56.preheader.i67.new ], [ %niter.next.1, %.lr.ph56.i70 ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv.i71
  %.0.copyload.i.i.i73 = load i64, ptr %i.gt, align 1
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i71
  %.0.copyload.i.i21.i74 = load i64, ptr %i.gu, align 1
  %i.gv = zext i64 %.0.copyload.i.i21.i74 to i128
  %i.gw = zext nneg i64 %.03754.i72 to i128
  %i.gx = zext i64 %.0.copyload.i.i.i73 to i128
  %i.gy = add nuw nsw i128 %i.gw, %i.gv
  %i.gz = sub nsw i128 %i.gx, %i.gy               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = trunc i128 %i.gz to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i71
  store i64 %i.hb, ptr %i.hc, align 4
  %indvars.iv.next.i75 = or disjoint i64 %indvars.iv.i71, 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv.next.i75
  %.0.copyload.i.i.i73.1 = load i64, ptr %i.hd, align 1
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i75
  %.0.copyload.i.i21.i74.1 = load i64, ptr %i.he, align 1
  %i.hf = zext i64 %.0.copyload.i.i21.i74.1 to i128
  %i.hg = and i128 %i.ha, 1
  %i.hh = zext i64 %.0.copyload.i.i.i73.1 to i128
  %i.hi = add nuw nsw i128 %i.hg, %i.hf
  %i.hj = sub nsw i128 %i.hh, %i.hi               ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = trunc nuw i128 %i.hk to i64
  %i.hm = and i64 %i.hl, 1                        ; 3 uses
  %i.hn = trunc i128 %i.hj to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i75
  store i64 %i.hn, ptr %i.ho, align 4
  %indvars.iv.next.i75.1 = add nuw nsw i64 %indvars.iv.i71, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader41.i77.loopexit.unr-lcssa, label %.lr.ph56.i70, !llvm.loop !18

.preheader.i80:                                   ; preds = %.lr.ph61.i86.prol.loopexit, %.lr.ph61.i86, %.preheader41.i77
  %.1.lcssa.i81 = phi i32 [ %.0.lcssa.i79, %.preheader41.i77 ], [ %.sroa.4.1.i62, %.lr.ph61.i86 ], [ %.sroa.4.1.i62, %.lr.ph61.i86.prol.loopexit ] ; 3 uses
  %i.hp = icmp ult i32 %.1.lcssa.i81, %1
  br i1 %i.hp, label %.lr.ph64.preheader.i82, label %_ZN2v86bigint8SubtractENS0_8RWDigitsENS0_6DigitsES2_.exit106

.lr.ph64.preheader.i82:                           ; preds = %.preheader.i80
  %i.hq = zext i32 %.1.lcssa.i81 to i64
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %scevgep.i83 = getelementptr i8, ptr %0, i64 %i.hr
  %i.hs = xor i32 %.1.lcssa.i81, -1
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
  %i.ib = trunc i128 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i87
  store i64 %i.ib, ptr %i.ic, align 4
  %indvars.iv.next71.i90 = add nuw nsw i64 %indvars.iv70.i87, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.022.0.copyload, i64 %indvars.iv.next71.i90
  %.0.copyload.i.i22.i89.1 = load i64, ptr %i.id, align 1
  %i.ie = zext i64 %.0.copyload.i.i22.i89.1 to i128
  %i.if = shl i128 %i.ia, 63
  %i.ig = ashr i128 %i.if, 127
  %i.ih = add nsw i128 %i.ig, %i.ie               ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = trunc nuw i128 %i.ii to i64
  %i.ik = and i64 %i.ij, 1
  %i.il = trunc i128 %i.ih to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next71.i90
  store i64 %i.il, ptr %i.im, align 4
  %indvars.iv.next71.i90.1 = add nuw nsw i64 %indvars.iv70.i87, 2 ; 2 uses
  %exitcond74.not.i91.1 = icmp eq i64 %indvars.iv.next71.i90.1, %wide.trip.count73.i85
  br i1 %exitcond74.not.i91.1, label %.preheader.i80, label %.lr.ph61.i86, !llvm.loop !19

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
  br i1 %exitcond.not, label %.critedge, label %.lr.ph52, !llvm.loop !23

.lr.ph52:                                         ; preds = %bb.a, %bb.b
  %indvars.iv50 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv50
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %add.narrowed.i = add i64 %.0.copyload.i.i, 1
  %add.narrowed.overflow.i = icmp eq i64 %.0.copyload.i.i, -1
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv50
  store i64 %add.narrowed.i, ptr %i.d, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  br i1 %add.narrowed.overflow.i, label %bb.b, label %.critedge.thread.loopexit, !llvm.loop !23

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
  %i.m = add i64 %index, %i.i                     ; 2 uses
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
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !24

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !25

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
  %i.c = icmp ult i32 %i.ac, %3
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader20
  %i.d = zext i32 %indvars.iv to i64              ; 3 uses
  %i.e = add i32 %3, -2
  %i.f = sub i32 %i.e, %.022                      ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 7
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 8589934588               ; 3 uses
  %i.j = add nuw nsw i64 %n.vec, %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add i64 %index, %i.d                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 1
  %wide.load36 = load <2 x i64>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 4
  store <2 x i64> %wide.load36, ptr %i.o, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv28.ph = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 3 uses
  %i.q = trunc i64 %indvars.iv28.ph to i32        ; 2 uses
  %i.r = sub i32 %3, %i.q
  %xtraiter = and i32 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader37, %.lr.ph.prol
  %indvars.iv28.prol = phi i64 [ %indvars.iv.next29.prol, %.lr.ph.prol ], [ %indvars.iv28.ph, %.lr.ph.preheader37 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader37 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv28.prol
  %.0.copyload.i.i10.prol = load i64, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv28.prol
  store i64 %.0.copyload.i.i10.prol, ptr %i.t, align 4
  %indvars.iv.next29.prol = add nuw nsw i64 %indvars.iv28.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader37
  %indvars.iv28.unr = phi i64 [ %indvars.iv28.ph, %.lr.ph.preheader37 ], [ %indvars.iv.next29.prol, %.lr.ph.prol ]
  %i.u = sub i32 %i.q, %3
  %i.v = icmp ugt i32 %i.u, -4
  br i1 %i.v, label %.preheader, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i32 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.022 = phi i32 [ 0, %bb.a ], [ %i.ac, %bb.b ]  ; 3 uses
  %i.w = zext i32 %.022 to i64                    ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w
  %.0.copyload.i.i = load i64, ptr %i.x, align 1
  %i.y = zext i64 %.0.copyload.i.i to i128
  %i.z = add nsw i128 %i.y, -1                    ; 2 uses
  %i.aa = trunc i128 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  store i64 %i.aa, ptr %i.ab, align 4
  %i.ac = add i32 %.022, 1                        ; 3 uses
  %i.ad = and i128 %i.z, 18446744073709551616
  %.not = icmp eq i128 %i.ad, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %.not, label %.preheader20, label %bb.b, !llvm.loop !30

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader20
  %.1.lcssa = phi i32 [ %i.ac, %.preheader20 ], [ %3, %middle.block ], [ %3, %.lr.ph ], [ %3, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ae = icmp ult i32 %.1.lcssa, %1
  br i1 %i.ae, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.af = zext i32 %.1.lcssa to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ag
  %i.ah = xor i32 %.1.lcssa, -1
  %i.ai = add i32 %1, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv28 = phi i64 [ %indvars.iv.next29.3, %.lr.ph ], [ %indvars.iv28.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv28
  %.0.copyload.i.i10 = load i64, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv28
  store i64 %.0.copyload.i.i10, ptr %i.an, align 4
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29
  %.0.copyload.i.i10.1 = load i64, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29
  store i64 %.0.copyload.i.i10.1, ptr %i.ap, align 4
  %indvars.iv.next29.1 = add nuw nsw i64 %indvars.iv28, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29.1
  %.0.copyload.i.i10.2 = load i64, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29.1
  store i64 %.0.copyload.i.i10.2, ptr %i.ar, align 4
  %indvars.iv.next29.2 = add nuw nsw i64 %indvars.iv28, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next29.2
  %.0.copyload.i.i10.3 = load i64, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next29.2
  store i64 %.0.copyload.i.i10.3, ptr %i.at, align 4
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6, !13, !14, !15}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6, !13, !15, !14}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6, !14, !15}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !6, !14}
!28 = distinct !{!28, !6, !14, !15}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6, !14}
end_hunk_1
