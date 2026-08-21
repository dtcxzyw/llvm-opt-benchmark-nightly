inline.NumInlined: 167
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Saig_SynchInitRegsBinary:bb.a
  %i.b = icmp sgt i32 %.val1518, 0
  br i1 %i.b, label %.lr.ph21, label %.critedge

.lr.ph21:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %0, i64 108
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val14 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.lr.ph21
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %i.i = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.01319 = phi i32 [ %i.ap, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.val16 = load i32, ptr %i.e, align 4, !tbaa !31
  %i.k = add nsw i32 %.val16, %.01319
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val14, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.i
  %scevgep24 = getelementptr i8, ptr %i.n, i64 32
  %bound0 = icmp ult ptr %i.s, %scevgep24
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !34
  %i.v = and i64 %i.u, 16
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, <2 x i32> zeroinitializer, <2 x i32> splat (i32 1431655765) ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store <2 x i32> %i.x, ptr %i.y, align 4, !tbaa !28, !alias.scope !37, !noalias !34
  store <2 x i32> %i.x, ptr %i.z, align 4, !tbaa !28, !alias.scope !37, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = load i64, ptr %i.t, align 8
  %i.ac = and i64 %i.ab, 16
  %.not.i.prol = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not.i.prol, i32 0, i32 1431655765
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.ph
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = icmp eq i64 %indvars.iv.ph, %i.j
  br i1 %i.af, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ag = load i64, ptr %i.t, align 8
  %i.ah = and i64 %i.ag, 16
  %.not.i = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not.i, i32 0, i32 1431655765
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !28
  %i.ak = load i64, ptr %i.t, align 8
  %i.al = and i64 %i.ak, 16
  %.not.i.1 = icmp eq i64 %i.al, 0
  %i.am = select i1 %.not.i.1, i32 0, i32 1431655765
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ap = add nuw nsw i32 %.01319, 1              ; 2 uses
  %.val15 = load i32, ptr %i.a, align 8, !tbaa !29
  %i.aq = icmp slt i32 %i.ap, %.val15
  br i1 %i.aq, label %.lr.ph, label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %._crit_edge, %.lr.ph21, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Saig_SynchInitPisRandom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108        ; 2 uses
  %.val1315 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.b = icmp sgt i32 %.val1315, 0
  br i1 %i.b, label %.lr.ph18, label %.critedge

.lr.ph18:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.lr.ph18
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv20 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next21, %._crit_edge ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val12 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %indvars.iv20
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %.val = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.o = tail call i32 @Aig_ManRandom(i32 noundef 0) #20
  %i.p = and i32 %i.o, 1431655765
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %.val13 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.r = sext i32 %.val13 to i64
  %i.s = icmp slt i64 %indvars.iv.next21, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %._crit_edge, %.lr.ph18, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Saig_SynchInitPisGiven(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 108        ; 2 uses
  %.val1517 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.b = icmp sgt i32 %.val1517, 0
  br i1 %i.b, label %.lr.ph20, label %.critedge

.lr.ph20:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val14 = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.lr.ph20
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %i.h = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.i = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val14, i64 %indvars.iv22
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %3, i64 %indvars.iv22
  %scevgep25 = getelementptr i8, ptr %i.r, i64 1
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.h
  %bound0 = icmp ult ptr %i.p, %scevgep25
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.s = load i8, ptr %i.q, align 1, !tbaa !46, !alias.scope !47 ; 2 uses
  %i.t = icmp eq i8 %i.s, 1
  %i.u = select i1 %i.t, <4 x i32> splat (i32 1431655765), <4 x i32> splat (i32 -1)
  %i.v = icmp eq i8 %i.s, 0
  %i.w = select i1 %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.u ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %i.w, ptr %i.x, align 4, !tbaa !28, !alias.scope !50, !noalias !47
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !28, !alias.scope !50, !noalias !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = load i8, ptr %i.q, align 1, !tbaa !46   ; 2 uses
  %.not.i.prol = icmp eq i8 %i.aa, 0
  %i.ab = icmp eq i8 %i.aa, 1
  %i.ac = select i1 %i.ab, i32 1431655765, i32 -1
  %i.ad = select i1 %.not.i.prol, i32 0, i32 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.ph
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = icmp eq i64 %indvars.iv.ph, %i.i
  br i1 %i.af, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ag = load i8, ptr %i.q, align 1, !tbaa !46   ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 0
  %i.ah = icmp eq i8 %i.ag, 1
  %i.ai = select i1 %i.ah, i32 1431655765, i32 -1
  %i.aj = select i1 %.not.i, i32 0, i32 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !28
  %i.al = load i8, ptr %i.q, align 1, !tbaa !46   ; 2 uses
  %.not.i.1 = icmp eq i8 %i.al, 0
  %i.am = icmp eq i8 %i.al, 1
  %i.an = select i1 %i.am, i32 1431655765, i32 -1
  %i.ao = select i1 %.not.i.1, i32 0, i32 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %.val15 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ar = sext i32 %.val15 to i64
  %i.as = icmp slt i64 %indvars.iv.next23, %i.ar
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %._crit_edge, %.lr.ph20, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Saig_SynchTernarySimulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val98131 = load i32, ptr %i.c, align 4, !tbaa !56
  %i.d = icmp sgt i32 %.val98131, 0
  br i1 %i.d, label %.lr.ph133, label %.critedge.preheader

.lr.ph133:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val96 = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = icmp sgt i32 %2, 0                       ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 9 uses
  %wide.trip.count165 = zext nneg i32 %2 to i64
  %wide.trip.count170 = zext nneg i32 %2 to i64
  %wide.trip.count175 = zext nneg i32 %2 to i64
  %min.iters.check241 = icmp ult i32 %2, 4
  %n.vec243 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n250 = icmp eq i64 %n.vec243, %wide.trip.count
  %min.iters.check225 = icmp ult i32 %2, 4
  %n.vec227 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n234 = icmp eq i64 %n.vec227, %wide.trip.count
  %min.iters.check209 = icmp ult i32 %2, 4
  %n.vec211 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n218 = icmp eq i64 %n.vec211, %wide.trip.count
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

.critedge.preheader:                              ; preds = %.loopexit117, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val97138 = load i32, ptr %i.h, align 8, !tbaa !29
  %i.i = icmp sgt i32 %.val97138, 0
  br i1 %i.i, label %.lr.ph140, label %.critedge2

.lr.ph140:                                        ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr i8, ptr %0, i64 112
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val92 = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val91 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph140.split.us.preheader, label %.critedge2

.lr.ph140.split.us.preheader:                     ; preds = %.lr.ph140
  %wide.trip.count183 = zext nneg i32 %2 to i64   ; 9 uses
  %i.p = getelementptr inbounds i8, ptr %.val91, i64 -8
  %wide.trip.count188 = zext nneg i32 %2 to i64
  %min.iters.check269 = icmp ult i32 %2, 8
  %n.vec271 = and i64 %wide.trip.count183, 2147483640 ; 3 uses
  %cmp.n278 = icmp eq i64 %n.vec271, %wide.trip.count183
  %xtraiter = and i64 %wide.trip.count183, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.q = add nsw i64 %wide.trip.count183, -1
  %min.iters.check255 = icmp ult i32 %2, 8
  %n.vec257 = and i64 %wide.trip.count183, 2147483640 ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec257, %wide.trip.count183
  %xtraiter292 = and i64 %wide.trip.count183, 3   ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br label %.lr.ph140.split.us

.lr.ph140.split.us:                               ; preds = %.lr.ph140.split.us.preheader, %.critedge.us
  %.182139.us = phi i32 [ %i.cp, %.critedge.us ], [ 0, %.lr.ph140.split.us.preheader ] ; 2 uses
  %.val110.us = load i32, ptr %i.l, align 8, !tbaa !58
  %i.r = add nsw i32 %.val110.us, %.182139.us
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val92, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.val91, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 11 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 8
  %.val100.us = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 2 uses
  %.not.i112.us = icmp eq ptr %.val100.us, null
  br i1 %.not.i112.us, label %Aig_ObjFaninId0.exit113.us.thread, label %Aig_ObjFaninId0.exit113.us

Aig_ObjFaninId0.exit113.us.thread:                ; preds = %.lr.ph140.split.us
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !27
  br label %.lr.ph137.us.preheader

Aig_ObjFaninId0.exit113.us:                       ; preds = %.lr.ph140.split.us
  %i.ad = ptrtoint ptr %.val100.us to i64         ; 2 uses
  %i.ae = and i64 %i.ad, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %i.ad, 1
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds [8 x i8], ptr %.val91, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 6 uses
  br i1 %i.ak, label %.lr.ph137.us.preheader, label %.preheader115.us.preheader

.preheader115.us.preheader:                       ; preds = %Aig_ObjFaninId0.exit113.us
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.aa
  %diff.check267 = icmp ugt i64 %i.ao, -32
  %or.cond = select i1 %min.iters.check269, i1 true, i1 %diff.check267
  br i1 %or.cond, label %.preheader115.us.preheader283, label %vector.body272

vector.body272:                                   ; preds = %.preheader115.us.preheader, %vector.body272
  %index273 = phi i64 [ %index.next276, %vector.body272 ], [ 0, %.preheader115.us.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index273 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load274 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !28 ; 3 uses
  %wide.load275 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !28 ; 3 uses
  %i.ar = lshr <4 x i32> %wide.load274, splat (i32 1)
  %i.as = lshr <4 x i32> %wide.load275, splat (i32 1)
  %i.at = and <4 x i32> %wide.load274, splat (i32 1431655765)
  %i.au = and <4 x i32> %wide.load275, splat (i32 1431655765)
  %i.av = and <4 x i32> %i.at, %i.ar
  %i.aw = and <4 x i32> %i.au, %i.as
  %i.ax = xor <4 x i32> %wide.load274, %i.av
  %i.ay = xor <4 x i32> %wide.load275, %i.aw
  %i.az = xor <4 x i32> %i.ax, splat (i32 1431655765)
end_hunk_0
