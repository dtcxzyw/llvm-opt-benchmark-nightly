inline.NumInlined: 741
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3sat4drat7is_drupEjPKNS_7literalE:bb.a
  store i32 0, ptr %i.bu, align 4, !tbaa !118
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next32.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.split, label %_ZNK6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE4sizeEv.exit19.thread

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit
  %.0 = phi i1 [ %.lcssa, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE6shrinkEj.exit ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat7is_dratEjPKNS_7literalE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3sat4drat20validate_propagationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit

_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not28 = icmp eq i32 %i.e, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.b

._crit_edge:                                      ; preds = %.split.us.thread, %bb.a, %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %.split.us.thread
  %.029 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %.split.us.thread ] ; 3 uses
  %i.j = load ptr, ptr %.029, align 8, !tbaa !78, !nonnull !28, !align !84 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !108  ; 2 uses
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.split.us.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %.split.us.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !65   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.split.us.thread, label %.preheader.split

.preheader.split:                                 ; preds = %.preheader
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %wide.trip.count = zext i32 %i.l to i64
  br label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i

.split.us:                                        ; preds = %bb.e
  %i.v = icmp ne i32 %.1, 0
  %i.w = icmp ne i32 %.123, 1
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  br i1 %i.x, label %.split.us.thread, label %bb.f

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i:         ; preds = %.preheader.split, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02125 = phi i32 [ 0, %.preheader.split ], [ %.1, %bb.e ] ; 3 uses
  %.02224 = phi i32 [ 0, %.preheader.split ], [ %.123, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.y, align 4, !tbaa !67 ; 2 uses
  %i.z = lshr i32 %.sroa.0.0.copyload, 1          ; 2 uses
  %.not.i.i = icmp ult i32 %i.z, %i.u
  br i1 %.not.i.i, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i:       ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aa
  %.0.i.sroa.speculate.load..i = load i32, ptr %i.ab, align 4, !tbaa !118 ; 3 uses
  %i.ac = icmp eq i32 %.0.i.sroa.speculate.load..i, 0
  br i1 %i.ac, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit

_ZNK3sat4drat5valueENS_7literalE.exit:            ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i
  %i.ad = trunc i32 %.sroa.0.0.copyload to i1
  %i.ae = sub nsw i32 0, %.0.i.sroa.speculate.load..i
  %spec.select = select i1 %i.ad, i32 %i.ae, i32 %.0.i.sroa.speculate.load..i
  switch i32 %spec.select, label %bb.e [
    i32 0, label %_ZNK3sat4drat5valueENS_7literalE.exit.thread
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.af = add i32 %.02125, 1
  br label %bb.e

_ZNK3sat4drat5valueENS_7literalE.exit.thread:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.ag = add i32 %.02224, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit, %bb.d, %_ZNK3sat4drat5valueENS_7literalE.exit.thread
  %.123 = phi i32 [ %.02224, %_ZNK3sat4drat5valueENS_7literalE.exit ], [ %i.ag, %_ZNK3sat4drat5valueENS_7literalE.exit.thread ], [ %.02224, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.02125, %_ZNK3sat4drat5valueENS_7literalE.exit ], [ %.02125, %_ZNK3sat4drat5valueENS_7literalE.exit.thread ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, !llvm.loop !143

bb.f:                                             ; preds = %.split.us
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 375, ptr noundef nonnull @.str.5)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %.preheader, %.split.us, %bb.f, %bb.c, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat7is_dratEjPKNS_7literalEj(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %class.svector.25, align 8          ; 14 uses
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %.sroa.029.0.copyload = load i32, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !123
  %.not.i.i = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %.lr.ph.preheader.i.i
  %i.c = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.k, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i.i = load ptr, ptr %6, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !67
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.c, %bb.b ] ; 4 uses
  %i.l = phi i32 [ %.pre2.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.d, align 4, !tbaa !67
  store i32 %i.p, ptr %i.o, align 4, !tbaa !67
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !67
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.i.i, !llvm.loop !126

_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit:       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %bb.a
  %.pre.i90 = phi ptr [ null, %bb.a ], [ %i.k, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge49, label %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit

_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit: ; preds = %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !67   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %.not81 = icmp eq i32 %i.v, 0
  br i1 %.not81, label %.critedge49, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  %i.z = zext i32 %1 to i64                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge48
  %.pre9396 = phi ptr [ %.pre.i90, %.lr.ph ], [ %.pre9395, %.critedge48 ] ; 4 uses
  %.pre.i = phi ptr [ %.pre.i90, %.lr.ph ], [ %.pre.i88, %.critedge48 ] ; 6 uses
  %.03882 = phi ptr [ %i.s, %.lr.ph ], [ %i.ec, %.critedge48 ] ; 3 uses
  %i.aa = load ptr, ptr %.03882, align 8, !tbaa !78, !nonnull !28, !align !84 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !108 ; 4 uses
  %i.ad = icmp ugt i32 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %.critedge48

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.03882, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !94
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.preheader, label %.critedge48

.preheader:                                       ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 3 uses
  %wide.trip.count = zext i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111
  %i.ak = xor i32 %i.aj, %.sroa.029.0.copyload
  %.not72 = icmp eq i32 %i.ak, 1
  br i1 %.not72, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge48, label %bb.f, !llvm.loop !144

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.w
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.f
  %i.al = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %.not44 = icmp eq i32 %i.ac, %i.al
  br i1 %.not44, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %.critedge
  %.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i
  %i.am = phi ptr [ %i.au, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ %.pre.i, %bb.h ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ 0, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !67 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.j, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !67
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %.noexc, %bb.i
  %i.au = phi ptr [ %.pre.i.i, %.noexc ], [ %i.am, %bb.i ] ; 4 uses
  %i.av = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.aq, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.an, align 4, !tbaa !67
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !67
  %i.ba = add i32 %i.av, 1
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !67
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !145

_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !108
  br label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit: ; preds = %bb.h, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit
  %.pre-phi = phi i64 [ %indvars.iv, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit ], [ 0, %bb.h ]
  %.pre.i53 = phi ptr [ %i.au, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit ], [ %.pre.i, %bb.h ] ; 3 uses
  %i.bb = phi i32 [ %.pre, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit.loopexit ], [ %i.ac, %bb.h ]
  %i.bc = xor i32 %i.al, -1
  %i.bd = add i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.pre-phi
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i50 = icmp eq i32 %i.bd, 0
  br i1 %.not.i50, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63, label %.lr.ph.preheader.i51

.lr.ph.preheader.i51:                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit
  %wide.trip.count.i52 = zext i32 %i.bd to i64
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56, %.lr.ph.preheader.i51
  %i.bg = phi ptr [ %.pre.i53, %.lr.ph.preheader.i51 ], [ %i.bo, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56 ] ; 4 uses
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %indvars.iv.next.i57, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i55
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i54
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !67 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56

bb.l:                                             ; preds = %bb.k, %.lr.ph.i54
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc62 unwind label %.loopexit

.noexc62:                                         ; preds = %bb.l
  %.pre.i.i59 = load ptr, ptr %6, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !67
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56: ; preds = %.noexc62, %bb.k
  %i.bo = phi ptr [ %.pre.i.i59, %.noexc62 ], [ %i.bg, %bb.k ] ; 4 uses
  %i.bp = phi i32 [ %.pre2.i.i61, %.noexc62 ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !67
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !67
  %i.bu = add i32 %i.bp, 1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !67
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i52
  br i1 %exitcond.not.i58, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread, label %.lr.ph.i54, !llvm.loop !145

_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63: ; preds = %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit
  %i.bv = icmp eq ptr %.pre.i53, null
  br i1 %i.bv, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread

_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63
  %i.bw = phi ptr [ %.pre.i53, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63 ], [ %i.bo, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i56 ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !67
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread
  %i.bz = phi ptr [ %i.bw, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread ], [ null, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63 ]
  %.0.i = phi i32 [ %i.by, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63.thread ], [ 0, %_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit63 ]
  %i.ca = invoke noundef zeroext i1 @_ZN3sat4drat7is_drupEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef %.0.i, ptr noundef %i.bz)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.pre93.pre = load ptr, ptr %6, align 8, !tbaa !123 ; 6 uses
  br i1 %i.ca, label %bb.n, label %.critedge49

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp eq ptr %.pre93.pre, null
  br i1 %i.cb, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.n
  br i1 %.not.i.i, label %.critedge48, label %thread-pre-split.i.preheader

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds i8, ptr %.pre93.pre, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !67 ; 2 uses
  %.not15.i = icmp ugt i32 %1, %i.cd
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %bb.o

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i
  %.pre9397.ph = phi ptr [ %.pre93.pre, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.cd, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.o:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i
  store i32 %1, ptr %i.cc, align 4, !tbaa !67
  br label %.critedge48

thread-pre-split.i:                               ; preds = %thread-pre-split.i.backedge, %thread-pre-split.i.preheader
  %.pre9397 = phi ptr [ %.pre9397.ph, %thread-pre-split.i.preheader ], [ %.pre9397.be, %thread-pre-split.i.backedge ] ; 12 uses
  %i.ce = icmp eq ptr %.pre9397, null
  br i1 %i.ce, label %bb.p, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.cf = getelementptr inbounds i8, ptr %.pre9397, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  %i.ch = icmp ugt i32 %1, %i.cg
  br i1 %i.ch, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i, label %bb.y

bb.p:                                             ; preds = %thread-pre-split.i
  %i.ci = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc70:                                         ; preds = %bb.p
  store i32 2, ptr %i.ci, align 4, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !67
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  store ptr %i.ck, ptr %6, align 8, !tbaa !123
  br label %thread-pre-split.i.backedge

thread-pre-split.i.backedge:                      ; preds = %.noexc70, %.noexc71
  %.pre9397.be = phi ptr [ %i.dq, %.noexc71 ], [ %i.ck, %.noexc70 ]
  br label %thread-pre-split.i, !llvm.loop !146

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i
  %i.cl = getelementptr inbounds i8, ptr %.pre9397, i64 -8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !67 ; 3 uses
  %i.cn = mul i32 %i.cm, 3
  %i.co = add i32 %i.cn, 1
  %i.cp = lshr i32 %i.co, 1                       ; 3 uses
  %i.cq = shl i32 %i.cp, 2
  %i.cr = add i32 %i.cq, 8                        ; 2 uses
  %.not.i68 = icmp ugt i32 %i.cp, %i.cm
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i
  %i.cs = shl i32 %i.cm, 2
  %i.ct = add i32 %i.cs, 8
  %.not27.i = icmp ugt i32 %i.cr, %i.ct
  br i1 %.not27.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i
  %i.cu = call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cu, align 8, !tbaa !75
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !147
  %i.cx = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !148 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !61
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !30
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i69 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !148
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.t
  %i.df = phi i64 [ %i.db, %bb.t ], [ %.pre.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !148
  store ptr %i.cy, ptr %4, align 8, !tbaa !61
  store i64 0, ptr %i.dg, align 8, !tbaa !148
  store i8 0, ptr %i.cy, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cy
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.u
  %i.dl = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @__cxa_free_exception(ptr %i.cu) #22
  br label %.body

bb.w:                                             ; preds = %bb.q
  %i.do = zext i32 %i.cr to i64
  %i.dp = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cl, i64 noundef %i.do)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc71:                                         ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.dq, ptr %6, align 8, !tbaa !123
  store i32 %i.cp, ptr %i.dp, align 4, !tbaa !67
  br label %thread-pre-split.i.backedge

bb.x:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.y:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i
  %i.dr = getelementptr inbounds i8, ptr %.pre9397, i64 -4
  store i32 %1, ptr %i.dr, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.pre9397, i64 %i.z
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %1
  br i1 %.not1218.i, label %.critedge48, label %.lr.ph.preheader.i64

.lr.ph.preheader.i64:                             ; preds = %bb.y
  %i.dt = zext i32 %.0.i16.i.ph to i64            ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre9397, i64 %i.dt ; 3 uses
  %7 = sub nsw i64 %i.z, %i.dt
  %8 = add nsw i64 %7, 4611686018427387903
  %9 = and i64 %8, 4611686018427387903            ; 2 uses
  %i.dv = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 7
  br i1 %min.iters.check, label %.lr.ph.i65.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i64
  %n.vec = and i64 %i.dv, 9223372036854775800     ; 3 uses
  %i.dw = shl i64 %n.vec, 2
  %i.dx = getelementptr i8, ptr %i.du, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.du, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2), ptr %next.gep, align 4, !tbaa !111
  store <4 x i32> splat (i32 -2), ptr %i.dz, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.critedge48, label %.lr.ph.i65.preheader

.lr.ph.i65.preheader:                             ; preds = %.lr.ph.preheader.i64, %middle.block
  %.019.i.ph = phi ptr [ %i.du, %.lr.ph.preheader.i64 ], [ %i.dx, %middle.block ]
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %.lr.ph.i65
  %.019.i = phi ptr [ %i.eb, %.lr.ph.i65 ], [ %.019.i.ph, %.lr.ph.i65.preheader ] ; 2 uses
  store i32 -2, ptr %.019.i, align 4, !tbaa !111
  %i.eb = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.eb, %i.ds
  br i1 %.not12.i, label %.critedge48, label %.lr.ph.i65, !llvm.loop !152

.critedge48:                                      ; preds = %bb.g, %.lr.ph.i65, %middle.block, %bb.y, %bb.o, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.e, %.critedge, %bb.d
  %.pre9395 = phi ptr [ %.pre9397, %middle.block ], [ %.pre9397, %bb.y ], [ %.pre93.pre, %bb.o ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ], [ %.pre9396, %bb.e ], [ %.pre9396, %.critedge ], [ %.pre9396, %bb.d ], [ %.pre9397, %.lr.ph.i65 ], [ %.pre9396, %bb.g ] ; 2 uses
  %.pre.i88 = phi ptr [ %.pre9397, %middle.block ], [ %.pre9397, %bb.y ], [ %.pre93.pre, %bb.o ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ], [ %.pre.i, %bb.e ], [ %.pre.i, %.critedge ], [ %.pre.i, %bb.d ], [ %.pre9397, %.lr.ph.i65 ], [ %.pre.i, %bb.g ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.03882, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ec, %i.y
  br i1 %.not, label %.critedge49, label %bb.d

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.v ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit73, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit133, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

.critedge49:                                      ; preds = %.critedge48, %bb.m, %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit
  %i.ed = phi ptr [ %.pre.i90, %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit ], [ %.pre.i90, %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit ], [ %.pre9395, %.critedge48 ], [ %.pre93.pre, %bb.m ] ; 2 uses
  %.not.lcssa = phi i1 [ true, %_ZN6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE3endEv.exit ], [ true, %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit ], [ true, %.critedge48 ], [ false, %bb.m ]
  %.not.i.i67 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i67, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.critedge49
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ee)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #24
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %.critedge49, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIN3sat7literalELb0EjE7destroyEv.exit:   ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat4drat8containsENS_7literalERKNS_13justificationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 642
  %i.b = load i8, ptr %i.a, align 2, !tbaa !90, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3sat4drat8containsENS_7literalES1_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !153
  %i.f = and i32 %i.e, 7
  switch i32 %i.f, label %_ZN3sat4drat8containsENS_7literalES1_.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN3sat4drat8containsENS_7literalES1_.exit, label %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE3endEv.exit

_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE3endEv.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %_ZN3sat4drat8containsENS_7literalES1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE3endEv.exit, %.lr.ph
  %.01639 = phi ptr [ %i.q, %.lr.ph ], [ %i.h, %_ZN6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE3endEv.exit ] ; 2 uses
  %i.o = load i32, ptr %.01639, align 4, !tbaa !111
  %i.p = icmp eq i32 %i.o, %1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01639, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.n
  %or.cond = select i1 %i.p, i1 true, i1 %.not
  br i1 %or.cond, label %_ZN3sat4drat8containsENS_7literalES1_.exit, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !155
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 643
  %i.v = load i8, ptr %i.u, align 1, !tbaa !91, !range !27, !noundef !28
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN3sat4drat8containsENS_7literalES1_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN3sat4drat8containsENS_7literalES1_.exit, label %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE4sizeEv.exit.i.i

_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE4sizeEv.exit.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !67 ; 2 uses
  %.not18.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i.i, label %_ZN3sat4drat8containsENS_7literalES1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE4sizeEv.exit.i.i
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext i32 %i.ac to i64
  br label %.lr.ph.split.i.i

._crit_edge.i.loopexit.i:                         ; preds = %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i
  %i.ae = icmp ugt i32 %.1.i.i, %.115.i.i
  br label %_ZN3sat4drat8containsENS_7literalES1_.exit

.lr.ph.split.i.i:                                 ; preds = %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %.01320.i.i = phi i32 [ %.1.i.i, %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.01419.i.i = phi i32 [ %.115.i.i, %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78, !nonnull !28, !align !84 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !108
  %.not.i.i.i = icmp eq i32 %i.aj, 2
  br i1 %.not.i.i.i, label %.lr.ph.i.i.preheader.i, label %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.split.i.i
  %.01932.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ak = load i32, ptr %.01932.i.i.ptr.i, align 4, !tbaa !67 ; 2 uses
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.1.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.preheader.i
  %.01932.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = load i32, ptr %.01932.i.i.ptr.1.i, align 4, !tbaa !67
  %i.an = icmp eq i32 %1, %i.am
  br i1 %i.an, label %.lr.ph.i.i.1.i, label %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i

.lr.ph.i.i.1.i:                                   ; preds = %bb.f, %.lr.ph.i.i.preheader.i
  %i.ao = icmp eq i32 %i.ak, %i.t
  br i1 %i.ao, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.1.i
  %.01932.i.i.ptr.1.1.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ap = load i32, ptr %.01932.i.i.ptr.1.1.i, align 4, !tbaa !67
  %i.aq = icmp eq i32 %i.ap, %i.t
  br i1 %i.aq, label %.loopexit.i.i, label %_ZNK3sat4drat5matchEjPKNS_7literalERKNS_6clauseE.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i.1.i
end_hunk_0
begin_hunk_1_@_ZN3sat4drat9propagateENS_7literalE:bb.a
  %.04694 = phi ptr [ %i.e, %.lr.ph ], [ %.382, %.thread ] ; 6 uses
  %i.n = load i32, ptr %.095, align 4, !tbaa !67  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !111  ; 3 uses
  %i.u = xor i32 %i.t, %1
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !67   ; 2 uses
  store i32 %i.x, ptr %i.s, align 8, !tbaa !67
  store i32 %i.t, ptr %i.w, align 4, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.copyload = phi i32 [ %i.x, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.y = lshr i32 %.sroa.010.0.copyload, 1        ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !65   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.preheader, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !67
  %.not.i.i = icmp ult i32 %i.y, %i.ac
  br i1 %.not.i.i, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, label %.preheader

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i:       ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad
  %.0.i.sroa.speculate.load..i = load i32, ptr %i.ae, align 4, !tbaa !118 ; 3 uses
  %i.af = icmp eq i32 %.0.i.sroa.speculate.load..i, 0
  br i1 %i.af, label %.preheader, label %_ZNK3sat4drat5valueENS_7literalE.exit

_ZNK3sat4drat5valueENS_7literalE.exit:            ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i
  %i.ag = trunc i32 %.sroa.010.0.copyload to i1
  %i.ah = sub nsw i32 0, %.0.i.sroa.speculate.load..i
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 %.0.i.sroa.speculate.load..i
  %i.ai = icmp eq i32 %spec.select.i, 1
  br i1 %i.ai, label %bb.e, label %.preheader

bb.e:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.aj = load i32, ptr %.095, align 4, !tbaa !67
  store i32 %i.aj, ptr %.04694, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %.04694, i64 4
  br label %.thread

.preheader:                                       ; preds = %bb.d, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i, %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i, %_ZNK3sat4drat5valueENS_7literalE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !108 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.not145 = icmp eq i32 %i.ao, 0
  br i1 %.not145, label %.critedge, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %.preheader
  %i.aq = load i32, ptr %i.s, align 8, !tbaa !111
  br label %.lr.ph139

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.j
  %indvars.iv138 = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph139.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv138
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67 ; 6 uses
  %.not85 = icmp eq i32 %i.as, %i.aq
  br i1 %.not85, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph139
  %i.at = load i32, ptr %i.an, align 4, !tbaa !111
  %.not86 = icmp eq i32 %i.as, %i.at
  br i1 %.not86, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = lshr i32 %i.as, 1                       ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !65  ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56:       ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !67
  %.not.i.i57 = icmp ult i32 %i.au, %i.ay
  br i1 %.not.i.i57, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.az
  %.0.i.sroa.speculate.load..i59 = load i32, ptr %i.ba, align 4, !tbaa !118 ; 3 uses
  %i.bb = icmp eq i32 %.0.i.sroa.speculate.load..i59, 0
  br i1 %i.bb, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit61

_ZNK3sat4drat5valueENS_7literalE.exit61:          ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58
  %i.bc = trunc i32 %i.as to i1
  %i.bd = sub nsw i32 0, %.0.i.sroa.speculate.load..i59
  %spec.select.i60 = select i1 %i.bc, i32 %i.bd, i32 %.0.i.sroa.speculate.load..i59
  %.not53 = icmp eq i32 %spec.select.i60, -1
  br i1 %.not53, label %bb.j, label %_ZNK3sat4drat5valueENS_7literalE.exit61.thread

_ZNK3sat4drat5valueENS_7literalE.exit61.thread:   ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i56, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i58, %bb.g, %_ZNK3sat4drat5valueENS_7literalE.exit61
  store i32 %i.as, ptr %i.an, align 4, !tbaa !67
  %i.be = xor i32 %i.as, 1
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !68 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit61.thread
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !67 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !67
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.i, label %.thread.loopexit

bb.i:                                             ; preds = %bb.h, %_ZNK3sat4drat5valueENS_7literalE.exit61.thread
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !67
  br label %.thread.loopexit

bb.j:                                             ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit61, %bb.f, %.lr.ph139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.bp, label %.lr.ph139, label %.critedge, !llvm.loop !259

.critedge:                                        ; preds = %bb.j, %.preheader
  %.sroa.01.0.copyload = load i32, ptr %i.s, align 8, !tbaa !67 ; 2 uses
  %i.bq = lshr i32 %.sroa.01.0.copyload, 1        ; 2 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !65  ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, label %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62

_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62:       ; preds = %.critedge
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !67
  %.not.i.i63 = icmp ult i32 %i.bq, %i.bu
  br i1 %.not.i.i63, label %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread

_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64:     ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62
  %i.bv = zext nneg i32 %i.bq to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %.0.i.sroa.speculate.load..i65 = load i32, ptr %i.bw, align 4, !tbaa !118 ; 3 uses
  %i.bx = icmp eq i32 %.0.i.sroa.speculate.load..i65, 0
  br i1 %i.bx, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, label %_ZNK3sat4drat5valueENS_7literalE.exit67

_ZNK3sat4drat5valueENS_7literalE.exit67:          ; preds = %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64
  %i.by = trunc i32 %.sroa.01.0.copyload to i1
  %i.bz = sub nsw i32 0, %.0.i.sroa.speculate.load..i65
  %spec.select.i66 = select i1 %i.by, i32 %i.bz, i32 %.0.i.sroa.speculate.load..i65
  %i.ca = icmp eq i32 %spec.select.i66, -1
  br i1 %i.ca, label %.thread83, label %_ZNK3sat4drat5valueENS_7literalE.exit67.thread

.thread83:                                        ; preds = %_ZNK3sat4drat5valueENS_7literalE.exit67
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 1, ptr %i.cb, align 8, !tbaa !116
  br label %.loopexit

_ZNK3sat4drat5valueENS_7literalE.exit67.thread:   ; preds = %_ZNK6vectorI5lboolLb0EjE4sizeEv.exit.i.i62, %_ZNK6vectorI5lboolLb0EjE3getEjRKS0_.exit.i64, %.critedge, %_ZNK3sat4drat5valueENS_7literalE.exit67
  %i.cc = load i32, ptr %.095, align 4, !tbaa !67
  store i32 %i.cc, ptr %.04694, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %.04694, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 8, !tbaa !67
  tail call void @_ZN3sat4drat6assignENS_7literalEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %.sroa.0.0.copyload, ptr noundef nonnull %i.r)
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.i, %bb.h
  %i.ce = phi i32 [ %.pre2.i, %bb.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.cf = phi ptr [ %.pre.i, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 %i.n, ptr %i.ci, align 4, !tbaa !67
  %i.cj = add i32 %i.ce, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !67
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %_ZNK3sat4drat5valueENS_7literalE.exit67.thread, %bb.e
  %.382 = phi ptr [ %i.ak, %bb.e ], [ %i.cd, %_ZNK3sat4drat5valueENS_7literalE.exit67.thread ], [ %.04694, %.thread.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.095, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !260

.loopexit:                                        ; preds = %_ZN6vectorIjLb0EjE3endEv.exit, %.thread83
  %.04691 = phi ptr [ %.04694, %.thread83 ], [ %i.e, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 5 uses
  %.089 = phi ptr [ %.095, %.thread83 ], [ %i.e, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 5 uses
  %.not5498 = icmp eq ptr %.089, %i.k
  br i1 %.not5498, label %._crit_edge, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %.loopexit
  %.089141 = ptrtoaddr ptr %.089 to i64           ; 2 uses
  %.04691140 = ptrtoaddr ptr %.04691 to i64
  %i.cl = ptrtoaddr ptr %i.e to i64
  %2 = sub i64 %i.cl, %.089141
  %i.cm = add i64 %2, %i.j
  %3 = add i64 %i.cm, -4                          ; 2 uses
  %i.cn = lshr i64 %3, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  %i.cp = sub i64 %.089141, %.04691140
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph101.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.preheader
  %n.vec = and i64 %i.co, 9223372036854775800     ; 3 uses
  %i.cq = shl i64 %n.vec, 2                       ; 2 uses
  %i.cr = getelementptr i8, ptr %.089, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.04691, i64 %i.cq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.089, i64 %i.ct ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.04691, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !67
  %wide.load143 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !67
  %i.cv = getelementptr i8, ptr %next.gep142, i64 16
  store <4 x i32> %wide.load, ptr %next.gep142, align 4, !tbaa !67
  store <4 x i32> %wide.load143, ptr %i.cv, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph101.preheader146

.lr.ph101.preheader146:                           ; preds = %.lr.ph101.preheader, %middle.block
  %.1100.ph = phi ptr [ %.089, %.lr.ph101.preheader ], [ %i.cr, %middle.block ]
  %.599.ph = phi ptr [ %.04691, %.lr.ph101.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader146, %.lr.ph101
  %.1100 = phi ptr [ %i.cy, %.lr.ph101 ], [ %.1100.ph, %.lr.ph101.preheader146 ] ; 2 uses
  %.599 = phi ptr [ %i.cz, %.lr.ph101 ], [ %.599.ph, %.lr.ph101.preheader146 ] ; 2 uses
  %i.cx = load i32, ptr %.1100, align 4, !tbaa !67
  store i32 %i.cx, ptr %.599, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %.1100, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.599, i64 4 ; 2 uses
  %.not54 = icmp eq ptr %i.cy, %i.k
  br i1 %.not54, label %._crit_edge, label %.lr.ph101, !llvm.loop !262

._crit_edge:                                      ; preds = %.thread, %.lr.ph101, %middle.block, %.loopexit
  %.5.lcssa.ph = phi ptr [ %i.cz, %.lr.ph101 ], [ %.04691, %.loopexit ], [ %i.cs, %middle.block ], [ %.382, %.thread ]
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7set_endEPj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.da = ptrtoint ptr %.5.lcssa.ph to i64
  %i.db = ptrtoint ptr %.pr to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 2
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr inbounds i8, ptr %.pr, i64 -4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !67
  br label %_ZN6vectorIjLb0EjE7set_endEPj.exit

_ZN6vectorIjLb0EjE7set_endEPj.exit:               ; preds = %bb.a, %._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK3sat4drat10get_statusEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.sat::status") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(664) %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 {
bb.a:
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85, !nonnull !28, !align !86
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3169
  %i.d = load i8, ptr %i.c, align 1, !tbaa !263, !range !27, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1
  %spec.select = select i1 %i.e, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 2, %bb.a ], [ %spec.select, %bb.b ]
  store i32 %.sink, ptr %0, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat3addEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 5 uses
  %1 = alloca %"class.sat::status", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !98
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.d, label %_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit

_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 97, ptr %i.a, align 16, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !30
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN3sat4drat5bdumpEjPKNS_7literalENS_6statusE.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 641
  %i.m = load i8, ptr %i.l, align 1, !tbaa !88, !range !27, !noundef !28
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN3sat4drat6verifyEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef 0, ptr noundef null)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %.not3 = icmp eq ptr %i.o, null
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %1, align 8, !tbaa !94, !alias.scope !265
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.p, align 4, !tbaa !103, !alias.scope !265
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !115, !alias.scope !265
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dead_on_return %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat4drat3addENS_7literalEb(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [10000 x i8], align 16            ; 7 uses
  %3 = alloca %"class.sat::literal", align 4      ; 3 uses
  %4 = alloca %"class.sat::status", align 8       ; 4 uses
  %5 = alloca %"class.sat::status", align 8       ; 4 uses
  %6 = alloca %"class.sat::status", align 8       ; 4 uses
  store i32 %1, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !98
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !98
  br i1 %2, label %_ZNK3sat4drat10get_statusEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85, !noalias !268, !nonnull !28, !align !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3169
  %i.h = load i8, ptr %i.g, align 1, !tbaa !263, !range !27, !noalias !268, !noundef !28
  %i.i = trunc nuw i8 %i.h to i1
  %spec.select.i = select i1 %i.i, i32 2, i32 1
  br label %_ZNK3sat4drat10get_statusEb.exit

_ZNK3sat4drat10get_statusEb.exit:                 ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ 2, %bb.a ], [ %spec.select.i, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK3sat4drat10get_statusEb.exit
  store i32 %.sink.i, ptr %4, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.l, align 4, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !115
  call void @_ZN3sat4drat4dumpEjPKNS_7literalENS_6statusE(ptr noundef nonnull align 8 dereferenceable(664) %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dead_on_return %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK3sat4drat10get_statusEb.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
end_hunk_1
