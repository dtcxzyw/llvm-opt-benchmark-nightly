Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdSat?download=true
inline.NumInlined: 155
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Sbd_ProblemLoad1:bb.a
  %.0 = add nsw i32 %.061, 1                      ; 2 uses
  %i.y = icmp slt i32 %.0, %.val4150
  br i1 %i.y, label %.lr.ph62, label %._crit_edge64, !llvm.loop !69

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.b
  %.061 = phi i32 [ %.0, %bb.b ], [ %.059, %.lr.ph62.preheader ] ; 2 uses
  %.0.in60 = phi i32 [ %.061, %bb.b ], [ %.03549, %.lr.ph62.preheader ]
  br i1 %i.x, label %._crit_edge63, label %bb.b, !llvm.loop !69

._crit_edge63:                                    ; preds = %.lr.ph62
  br label %._crit_edge64, !llvm.loop !69

._crit_edge64:                                    ; preds = %bb.b, %._crit_edge63, %.preheader
  %.0.in.lcssa = phi i32 [ %.0.in60, %._crit_edge63 ], [ %i.t, %.preheader ], [ %i.t, %bb.b ] ; 2 uses
  %.not44 = icmp sgt i32 %.03549, %.0.in.lcssa
  br i1 %.not44, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge64
  %.val42 = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.z = add i32 %.0.in.lcssa, 1
  %i.aa = sub i32 %i.z, %.03549                   ; 2 uses
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv51 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next52, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val42, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18 ; 4 uses
  %i.ad = ashr i32 %i.ac, 1                       ; 3 uses
  %i.ae = icmp eq i32 %i.ad, %i.g
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = and i32 %i.ac, 1
  %i.ag = or disjoint i32 %i.af, %i.q
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not40 = icmp slt i32 %i.ad, %i.l
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub nsw i32 %i.ad, %i.l
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = and i32 %i.ac, 1
  %i.am = shl nsw i32 %i.ak, 1
  %i.an = or disjoint i32 %i.am, %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.ac, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f
  %.sink = phi i32 [ %i.ag, %bb.d ], [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv51
  store i32 %.sink, ptr %i.ap, align 4, !tbaa !18
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.c, !llvm.loop !70

.critedge.loopexit:                               ; preds = %bb.h
  %i.aq = trunc nsw i64 %indvars.iv.next to i32
  %.pre = add nsw i32 %i.aq, 1
  %i.ar = zext nneg i32 %i.aa to i64
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge64, %.critedge.loopexit
  %.pre-phi = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.s, %._crit_edge64 ] ; 2 uses
  %.036.lcssa = phi i64 [ %i.ar, %.critedge.loopexit ], [ 0, %._crit_edge64 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.036.lcssa
  %i.at = call i32 @sat_solver_addclause(ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.as) #21 ; 0 uses
  %.val41 = load i32, ptr %i.m, align 4, !tbaa !11 ; 2 uses
  %i.au = icmp slt i32 %.pre-phi, %.val41
  br i1 %i.au, label %.preheader, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Sbd_ProblemLoad2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val4349 = load i32, ptr %i.m, align 4, !tbaa !76 ; 2 uses
  %i.n = icmp sgt i32 %.val4349, 0
  br i1 %i.n, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = shl nsw i32 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %.critedge2.thread
  %.val4356 = phi i32 [ %.val4349, %.lr.ph51 ], [ %.val43, %.critedge2.thread ] ; 2 uses
  %indvars.iv53 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next54, %.critedge2.thread ] ; 2 uses
  %.val44 = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val44, i64 %indvars.iv53 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %.val4146 = load i32, ptr %i.r, align 4, !tbaa !11
  %i.s = icmp sgt i32 %.val4146, 0
  br i1 %i.s, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val42 = load ptr, ptr %i.t, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.03847 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val42, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 4 uses
  %i.w = ashr i32 %i.v, 1                         ; 4 uses
  %i.x = icmp eq i32 %i.w, %i.g
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.v, 1
  %i.z = icmp eq i32 %i.y, %4
  br i1 %i.z, label %.critedge2.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not = icmp slt i32 %i.w, %i.l
  br i1 %.not, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = and i32 %i.v, 1
  %i.ab = sub nsw i32 %i.w, %i.l
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.critedge2.thread, label %bb.g

.sink.split:                                      ; preds = %bb.e
  %.not40 = icmp slt i32 %i.w, %i.i
  %i.ag = select i1 %.not40, i32 0, i32 %i.p
  %.sink = add nsw i32 %i.v, %i.ag
  %i.ah = add nsw i32 %.03847, 1
  %i.ai = sext i32 %.03847 to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ai
  store i32 %.sink, ptr %i.aj, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d
  %.1 = phi i32 [ %.03847, %bb.d ], [ %.03847, %bb.f ], [ %i.ah, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val41 = load i32, ptr %i.r, align 4, !tbaa !11
  %i.ak = sext i32 %.val41 to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.c, label %.critedge2.loopexit, !llvm.loop !72

.critedge2.loopexit:                              ; preds = %bb.g
  %i.am = sext i32 %.1 to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.b
  %.038.lcssa = phi i64 [ 0, %bb.b ], [ %i.am, %.critedge2.loopexit ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.038.lcssa
  %i.ao = call i32 @sat_solver_addclause(ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.an) #21 ; 0 uses
  %.val43.pre = load i32, ptr %i.m, align 4, !tbaa !76
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.d, %bb.f, %.critedge2
  %.val43 = phi i32 [ %.val43.pre, %.critedge2 ], [ %.val4356, %bb.f ], [ %.val4356, %bb.d ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ap = sext i32 %.val43 to i64
  %i.aq = icmp slt i64 %indvars.iv.next54, %i.ap
  br i1 %i.aq, label %bb.b, label %.critedge, !llvm.loop !73

.critedge:                                        ; preds = %.critedge2.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Sbd_SolverTopo(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 30 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 15 uses
  store i32 0, ptr %i.b, align 4, !tbaa !11
  store i32 100, ptr %i.a, align 8, !tbaa !12
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 14 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !13
  %i.e = icmp sgt i32 %1, 0                       ; 5 uses
  br i1 %i.e, label %.preheader462.lr.ph, label %._crit_edge479

.preheader462.lr.ph:                              ; preds = %bb.a
  %i.f = add nsw i32 %1, %0                       ; 3 uses
  %i.g = icmp slt i32 %i.f, 1
  %i.h = icmp slt i32 %2, 1
  %brmerge = or i1 %i.g, %i.h
  br i1 %brmerge, label %.preheader459.lr.ph, label %.preheader462.preheader

.preheader462.preheader:                          ; preds = %.preheader462.lr.ph
  %i.i = zext nneg i32 %2 to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 9 uses
  %wide.trip.count671 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.k = add nsw i32 %i.f, -1
  %i.l = icmp ult i32 %i.k, 7
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod988 = icmp ne i64 %xtraiter, 0
  br label %.preheader462.a

.preheader462.a:                                  ; preds = %.preheader462.preheader, %._crit_edge467
  %indvars.iv668 = phi i64 [ 0, %.preheader462.preheader ], [ %indvars.iv.next669, %._crit_edge467 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv668 ; 9 uses
  br i1 %i.l, label %.preheader461.epil.preheader, label %.preheader461

.preheader460:                                    ; preds = %._crit_edge467
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.preheader459.us.preheader, label %._crit_edge479

.preheader459.lr.ph:                              ; preds = %.preheader462.lr.ph
  %.old = icmp sgt i32 %2, 0
  br i1 %.old, label %.preheader459.us.preheader, label %._crit_edge479

.preheader459.us.preheader:                       ; preds = %.preheader460, %.preheader459.lr.ph
  %i.o = sext i32 %0 to i64
  %wide.trip.count688 = zext nneg i32 %1 to i64
  %invariant.op = sub nsw i64 0, %i.o
  %wide.trip.count676 = zext i32 %2 to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %wide.trip.count676, 4294967288 ; 4 uses
  %i.p = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count676
  br label %.preheader459.us

.preheader459.us:                                 ; preds = %.preheader459.us.preheader, %._crit_edge475.split.us.us
  %indvars.iv685 = phi i64 [ 0, %.preheader459.us.preheader ], [ %indvars.iv.next686, %._crit_edge475.split.us.us ] ; 3 uses
  %indvars.iv681 = phi i32 [ %0, %.preheader459.us.preheader ], [ %indvars.iv.next682, %._crit_edge475.split.us.us ] ; 2 uses
  %.0478.us = phi i32 [ 0, %.preheader459.us.preheader ], [ %.1.lcssa.us, %._crit_edge475.split.us.us ] ; 2 uses
  %i.q = icmp sgt i64 %indvars.iv685, %invariant.op
  br i1 %i.q, label %.preheader458.lr.ph.us, label %._crit_edge475.split.us.us

.preheader458.lr.ph.us:                           ; preds = %.preheader459.us
  %i.r = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv685
  %wide.trip.count683 = zext i32 %indvars.iv681 to i64
  br label %.preheader458.us.us

.preheader458.us.us:                              ; preds = %._crit_edge472.us.us, %.preheader458.lr.ph.us
  %indvars.iv678 = phi i64 [ %indvars.iv.next679, %._crit_edge472.us.us ], [ 0, %.preheader458.lr.ph.us ] ; 2 uses
  %.1474.us.us = phi i32 [ %.lcssa975, %._crit_edge472.us.us ], [ %.0478.us, %.preheader458.lr.ph.us ] ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv678 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader458.us.us
  %i.t = add i32 %.1474.us.us, %i.p               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1474.us.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !18
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge472.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader458.us.us, %middle.block
  %indvars.iv673.ph = phi i64 [ 0, %.preheader458.us.us ], [ %n.vec, %middle.block ]
  %.2471.us.us.ph = phi i32 [ %.1474.us.us, %.preheader458.us.us ], [ %i.t, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv673 = phi i64 [ %indvars.iv.next674, %scalar.ph ], [ %indvars.iv673.ph, %scalar.ph.preheader ] ; 2 uses
  %.2471.us.us = phi i32 [ %i.x, %scalar.ph ], [ %.2471.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.x = add nsw i32 %.2471.us.us, 1              ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv673
  store i32 %.2471.us.us, ptr %i.y, align 4, !tbaa !18
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %exitcond677.not = icmp eq i64 %indvars.iv.next674, %wide.trip.count676
  br i1 %exitcond677.not, label %._crit_edge472.us.us, label %scalar.ph, !llvm.loop !79

._crit_edge472.us.us:                             ; preds = %scalar.ph, %middle.block
  %.lcssa975 = phi i32 [ %i.t, %middle.block ], [ %i.x, %scalar.ph ] ; 2 uses
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1 ; 2 uses
  %exitcond684.not = icmp eq i64 %indvars.iv.next679, %wide.trip.count683
  br i1 %exitcond684.not, label %._crit_edge475.split.us.us, label %.preheader458.us.us, !llvm.loop !80

._crit_edge475.split.us.us:                       ; preds = %._crit_edge472.us.us, %.preheader459.us
  %.1.lcssa.us = phi i32 [ %.0478.us, %.preheader459.us ], [ %.lcssa975, %._crit_edge472.us.us ] ; 2 uses
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %indvars.iv.next682 = add i32 %indvars.iv681, 1
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %._crit_edge479, label %.preheader459.us, !llvm.loop !81

.preheader461:                                    ; preds = %.preheader462.a, %.preheader461
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader461 ], [ 0, %.preheader462.a ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader461 ], [ 0, %.preheader462.a ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ah, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aj, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge467.unr-lcssa, label %.preheader461, !llvm.loop !82

._crit_edge467.unr-lcssa:                         ; preds = %.preheader461
  br i1 %lcmp.mod.not, label %._crit_edge467, label %.preheader461.epil.preheader

.preheader461.epil.preheader:                     ; preds = %._crit_edge467.unr-lcssa, %.preheader462.a
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader462.a ], [ %indvars.iv.next.7, %._crit_edge467.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod988)
  br label %.preheader461.epil

.preheader461.epil:                               ; preds = %.preheader461.epil, %.preheader461.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader461.epil.preheader ], [ %indvars.iv.next.epil, %.preheader461.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader461.epil.preheader ], [ %epil.iter.next, %.preheader461.epil ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 -1, i64 %i.j, i1 false), !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge467, label %.preheader461.epil, !llvm.loop !83

._crit_edge467:                                   ; preds = %.preheader461.epil, %._crit_edge467.unr-lcssa
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond672.not = icmp eq i64 %indvars.iv.next669, %wide.trip.count671
  br i1 %exitcond672.not, label %.preheader460, label %.preheader462.a, !llvm.loop !84

._crit_edge479:                                   ; preds = %._crit_edge475.split.us.us, %bb.a, %.preheader459.lr.ph, %.preheader460
  %.0.lcssa = phi i32 [ 0, %.preheader460 ], [ 0, %.preheader459.lr.ph ], [ 0, %bb.a ], [ %.1.lcssa.us, %._crit_edge475.split.us.us ] ; 6 uses
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0.lcssa) ; 0 uses
  store i32 %.0.lcssa, ptr %7, align 4, !tbaa !18
  %i.aq = tail call ptr @sat_solver_new() #21     ; 15 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.aq, i32 noundef %.0.lcssa) #21
  %i.ar = add nsw i32 %1, %0                      ; 6 uses
  %i.as = add i32 %i.ar, -1                       ; 3 uses
  %i.at = icmp sgt i32 %i.ar, 1
  br i1 %i.at, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %._crit_edge479
  %i.au = icmp sgt i32 %2, 0
  %wide.trip.count703 = zext nneg i32 %i.as to i64
  %wide.trip.count698 = zext nneg i32 %1 to i64
  %wide.trip.count693 = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge485.split
  %indvars.iv700 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next701, %._crit_edge485.split ] ; 2 uses
  %storemerge438503 = phi ptr [ %i.c, %.lr.ph ], [ %storemerge438497, %._crit_edge485.split ] ; 3 uses
  br i1 %i.e, label %.preheader457.lr.ph.a, label %._crit_edge485.split

.preheader457.lr.ph.a:                            ; preds = %bb.b
  %invariant.gep = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv700
end_hunk_0
begin_hunk_1_@Sbd_SolverTopo:bb.a
  br i1 %exitcond830.not, label %.loopexit, label %.preheader446.a, !llvm.loop !105

.loopexit:                                        ; preds = %bb.az, %._crit_edge608.thread, %._crit_edge608
  %i.kc = phi ptr [ %.promoted616906, %._crit_edge608 ], [ %.val338.us.us.us889, %._crit_edge608.thread ], [ %.promoted616904, %bb.az ] ; 2 uses
  %.18 = phi i32 [ 0, %._crit_edge608 ], [ 0, %._crit_edge608.thread ], [ %.16.lcssa, %bb.az ]
  %i.kd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.18) ; 0 uses
  %i.ke = icmp sgt i32 %i.ar, 0
  br i1 %i.ke, label %.preheader443.preheader, label %._crit_edge638

.preheader443.preheader:                          ; preds = %.loopexit
  %wide.trip.count838 = zext nneg i32 %i.ar to i64 ; 2 uses
  %xtraiter989 = and i64 %wide.trip.count838, 1
  %i.kf = icmp eq i32 %i.ar, 1
  br i1 %i.kf, label %.preheader443.epil.preheader, label %.preheader443.preheader.new

.preheader443.preheader.new:                      ; preds = %.preheader443.preheader
  %unroll_iter994 = and i64 %wide.trip.count838, 2147483646
  br label %.preheader443.a

.preheader443.a:                                  ; preds = %.preheader443.a, %.preheader443.preheader.new
  %indvars.iv835 = phi i64 [ 0, %.preheader443.preheader.new ], [ %indvars.iv.next836.1, %.preheader443.a ] ; 3 uses
  %.3637 = phi i32 [ %.0.lcssa, %.preheader443.preheader.new ], [ %i.ku, %.preheader443.a ] ; 3 uses
  %niter995 = phi i64 [ 0, %.preheader443.preheader.new ], [ %niter995.next.1, %.preheader443.a ]
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835 ; 2 uses
  %i.kh = insertelement <4 x i32> poison, i32 %.3637, i64 0
  %i.ki = shufflevector <4 x i32> %i.kh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kj = add nsw <4 x i32> %i.ki, <i32 4, i32 5, i32 6, i32 7>
  %i.kk = add nsw <4 x i32> %i.ki, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.kk, ptr %i.kg, align 4, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.km = add nsw i32 %.3637, 8
  store <4 x i32> %i.kj, ptr %i.kl, align 4, !tbaa !18
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %i.kq = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kr = add nsw <4 x i32> %i.kq, <i32 4, i32 5, i32 6, i32 7>
  %i.ks = add nsw <4 x i32> %i.kq, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ks, ptr %i.ko, align 4, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.ku = add nsw i32 %.3637, 16                  ; 3 uses
  store <4 x i32> %i.kr, ptr %i.kt, align 4, !tbaa !18
  %indvars.iv.next836.1 = add nuw nsw i64 %indvars.iv835, 2 ; 2 uses
  %niter995.next.1 = add i64 %niter995, 2         ; 2 uses
  %niter995.ncmp.1 = icmp eq i64 %niter995.next.1, %unroll_iter994
  br i1 %niter995.ncmp.1, label %._crit_edge638.loopexit.unr-lcssa, label %.preheader443.a, !llvm.loop !106

._crit_edge638.loopexit.unr-lcssa:                ; preds = %.preheader443.a
  %lcmp.mod991.not = icmp eq i64 %xtraiter989, 0
  br i1 %lcmp.mod991.not, label %._crit_edge638, label %.preheader443.epil.preheader

.preheader443.epil.preheader:                     ; preds = %._crit_edge638.loopexit.unr-lcssa, %.preheader443.preheader
  %indvars.iv835.epil.init = phi i64 [ 0, %.preheader443.preheader ], [ %indvars.iv.next836.1, %._crit_edge638.loopexit.unr-lcssa ]
  %.3637.epil.init = phi i32 [ %.0.lcssa, %.preheader443.preheader ], [ %i.ku, %._crit_edge638.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod993 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod993)
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv835.epil.init ; 2 uses
  %i.kw = insertelement <4 x i32> poison, i32 %.3637.epil.init, i64 0
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ky = add nsw <4 x i32> %i.kx, <i32 4, i32 5, i32 6, i32 7>
  %i.kz = add nsw <4 x i32> %i.kx, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.kz, ptr %i.kv, align 4, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lb = add nsw i32 %.3637.epil.init, 8
  store <4 x i32> %i.ky, ptr %i.la, align 4, !tbaa !18
  br label %._crit_edge638

._crit_edge638:                                   ; preds = %.preheader443.epil.preheader, %._crit_edge638.loopexit.unr-lcssa, %.loopexit
  %.3.lcssa = phi i32 [ %.0.lcssa, %.loopexit ], [ %i.ku, %._crit_edge638.loopexit.unr-lcssa ], [ %i.lb, %.preheader443.epil.preheader ]
  %i.lc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.3.lcssa) ; 0 uses
  %i.ld = icmp sgt i32 %0, 0
  br i1 %i.ld, label %.lr.ph642.preheader, label %.preheader442.a

.lr.ph642.preheader:                              ; preds = %._crit_edge638
  %wide.trip.count843 = zext nneg i32 %0 to i64
  br label %.lr.ph642

.preheader442.a:                                  ; preds = %Vec_IntFill.exit, %._crit_edge638
  %i.le = phi ptr [ %i.kc, %._crit_edge638 ], [ %.val334, %Vec_IntFill.exit ] ; 2 uses
  %i.lf = icmp slt i32 %6, 8
  br i1 %i.lf, label %.lr.ph644, label %.preheader441.a

.lr.ph644:                                        ; preds = %.preheader442.a
  %i.lg = sext i32 %i.as to i64
  %i.lh = getelementptr inbounds [32 x i8], ptr %4, i64 %i.lg
  %i.li = sext i32 %6 to i64
  %i.lj = getelementptr [4 x i8], ptr %i.lh, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  br label %bb.be

.lr.ph642:                                        ; preds = %.lr.ph642.preheader, %Vec_IntFill.exit
  %.val334907 = phi ptr [ %i.kc, %.lr.ph642.preheader ], [ %.val334, %Vec_IntFill.exit ] ; 3 uses
  %indvars.iv840 = phi i64 [ 0, %.lr.ph642.preheader ], [ %indvars.iv.next841, %Vec_IntFill.exit ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv840
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv840
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !18
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !18
  %i.lr = shl nsw i32 %i.lq, 1
  %i.ls = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i408 = icmp slt i32 %i.ls, 1
  br i1 %.not.i.i408, label %bb.ba, label %Vec_IntFill.exit

bb.ba:                                            ; preds = %.lr.ph642
  %.not9.i.i410 = icmp eq ptr %.val334907, null
  br i1 %.not9.i.i410, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lt = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val334907, i64 noundef 4) #20
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.lu = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lv = phi ptr [ %i.lt, %bb.bb ], [ %i.lu, %bb.bc ] ; 2 uses
  store ptr %i.lv, ptr %i.d, align 8, !tbaa !13
  store i32 1, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph642, %bb.bd
  %.val334 = phi ptr [ %i.lv, %bb.bd ], [ %.val334907, %.lr.ph642 ] ; 5 uses
  store i32 %i.lr, ptr %.val334, align 4, !tbaa !18
  store i32 1, ptr %i.b, align 4, !tbaa !11
  %i.lw = getelementptr inbounds nuw i8, ptr %.val334, i64 4
  %i.lx = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %.val334, ptr noundef nonnull %i.lw) #21 ; 0 uses
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1 ; 2 uses
  %exitcond844.not = icmp eq i64 %indvars.iv.next841, %wide.trip.count843
  br i1 %exitcond844.not, label %.preheader442.a, label %.lr.ph642, !llvm.loop !107

.preheader441.a:                                  ; preds = %Vec_IntFill.exit414, %.preheader442.a
  %i.ly = phi ptr [ %i.le, %.preheader442.a ], [ %.val333, %Vec_IntFill.exit414 ] ; 3 uses
  br i1 %i.e, label %.preheader440.lr.ph.a, label %._crit_edge651

.preheader440.lr.ph.a:                            ; preds = %.preheader441.a
  %i.lz = icmp sgt i32 %2, 0
  %i.ma = sext i32 %0 to i64
  %wide.trip.count865 = zext nneg i32 %1 to i64
  %wide.trip.count853 = zext nneg i32 %2 to i64
  br label %.preheader440.a

bb.be:                                            ; preds = %.lr.ph644, %Vec_IntFill.exit414
  %.val333909 = phi ptr [ %i.le, %.lr.ph644 ], [ %.val333, %Vec_IntFill.exit414 ] ; 3 uses
  %.6295643 = phi i32 [ %6, %.lr.ph644 ], [ %i.mk, %Vec_IntFill.exit414 ]
  %i.mb = load i32, ptr %i.lk, align 4, !tbaa !18
  %i.mc = shl nsw i32 %i.mb, 1
  %i.md = or disjoint i32 %i.mc, 1
  %i.me = load i32, ptr %i.a, align 8, !tbaa !12
  %.not.i.i411 = icmp slt i32 %i.me, 1
  br i1 %.not.i.i411, label %bb.bf, label %Vec_IntFill.exit414

bb.bf:                                            ; preds = %bb.be
  %.not9.i.i413 = icmp eq ptr %.val333909, null
  br i1 %.not9.i.i413, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mf = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val333909, i64 noundef 4) #20
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.mg = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mh = phi ptr [ %i.mf, %bb.bg ], [ %i.mg, %bb.bh ] ; 2 uses
  store ptr %i.mh, ptr %i.d, align 8, !tbaa !13
  store i32 1, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFill.exit414

Vec_IntFill.exit414:                              ; preds = %bb.be, %bb.bi
  %.val333 = phi ptr [ %i.mh, %bb.bi ], [ %.val333909, %bb.be ] ; 5 uses
  store i32 %i.md, ptr %.val333, align 4, !tbaa !18
  store i32 1, ptr %i.b, align 4, !tbaa !11
  %i.mi = getelementptr inbounds nuw i8, ptr %.val333, i64 4
  %i.mj = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %.val333, ptr noundef nonnull %i.mi) #21 ; 0 uses
  %i.mk = add nsw i32 %.6295643, 1                ; 2 uses
  %exitcond845.not = icmp eq i32 %i.mk, 8
  br i1 %exitcond845.not, label %.preheader441.a, label %bb.be, !llvm.loop !108

.preheader440.a:                                  ; preds = %.preheader440.lr.ph.a, %._crit_edge649.split
  %i.ml = phi ptr [ %i.ly, %.preheader440.lr.ph.a ], [ %i.nz, %._crit_edge649.split ] ; 3 uses
  %i.mm = phi ptr [ %i.ly, %.preheader440.lr.ph.a ], [ %i.oa, %._crit_edge649.split ] ; 3 uses
  %indvars.iv862 = phi i64 [ 0, %.preheader440.lr.ph.a ], [ %indvars.iv.next863, %._crit_edge649.split ] ; 3 uses
  %indvars.iv858 = phi i32 [ %0, %.preheader440.lr.ph.a ], [ %indvars.iv.next859, %._crit_edge649.split ] ; 2 uses
  %i.mn = add nsw i64 %indvars.iv862, %i.ma       ; 2 uses
  %i.mo = icmp sgt i64 %i.mn, 0
  br i1 %i.mo, label %.preheader439.lr.ph, label %._crit_edge649.split

.preheader439.lr.ph:                              ; preds = %.preheader440.a
  %i.mp = getelementptr inbounds nuw [912 x i8], ptr %3, i64 %indvars.iv862
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.mn
  br i1 %i.lz, label %.preheader439.preheader, label %._crit_edge649.split

.preheader439.preheader:                          ; preds = %.preheader439.lr.ph
  %wide.trip.count860 = zext i32 %indvars.iv858 to i64
  br label %.preheader439

.preheader439:                                    ; preds = %.preheader439.preheader, %._crit_edge647
  %i.mr = phi ptr [ %i.ml, %.preheader439.preheader ], [ %9, %._crit_edge647 ]
  %i.ms = phi ptr [ %i.mm, %.preheader439.preheader ], [ %9, %._crit_edge647 ]
  %indvars.iv855 = phi i64 [ 0, %.preheader439.preheader ], [ %indvars.iv.next856, %._crit_edge647 ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %indvars.iv855
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv855
  br label %.preheader

.preheader:                                       ; preds = %.preheader439, %bb.bo
  %i.mv = phi ptr [ %i.mr, %.preheader439 ], [ %9, %bb.bo ]
  %i.mw = phi ptr [ %i.ms, %.preheader439 ], [ %9, %bb.bo ]
  %indvars.iv850 = phi i64 [ 0, %.preheader439 ], [ %indvars.iv.next851, %bb.bo ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv850
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  br label %bb.bj

bb.bj:                                            ; preds = %.preheader, %Vec_IntPush.exit434
  %i.my = phi ptr [ %i.mv, %.preheader ], [ %9, %Vec_IntPush.exit434 ]
  %i.mz = phi ptr [ %i.mw, %.preheader ], [ %9, %Vec_IntPush.exit434 ] ; 3 uses
  %i.na = phi i32 [ %.pre, %.preheader ], [ %10, %Vec_IntPush.exit434 ]
  %indvars.iv846 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next847, %Vec_IntPush.exit434 ] ; 2 uses
  %i.nb = load i32, ptr %i.mx, align 4, !tbaa !18
  %i.nc = shl nsw i32 %i.nb, 1
  %i.nd = or disjoint i32 %i.nc, 1
  %.not.i.i415 = icmp slt i32 %i.na, 1
  br i1 %.not.i.i415, label %bb.bk, label %Vec_IntFill.exit418

bb.bk:                                            ; preds = %bb.bj
  %.not9.i.i417 = icmp eq ptr %i.mz, null
  br i1 %.not9.i.i417, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ne = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %i.mz, i64 noundef 4) #20
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.nf = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ng = phi ptr [ %i.ne, %bb.bl ], [ %i.nf, %bb.bm ] ; 3 uses
  store ptr %i.ng, ptr %i.d, align 8, !tbaa !13
  store i32 1, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntFill.exit418

Vec_IntFill.exit418:                              ; preds = %bb.bj, %bb.bn
  %i.nh = phi ptr [ %i.ng, %bb.bn ], [ %i.my, %bb.bj ]
  %i.ni = phi ptr [ %i.ng, %bb.bn ], [ %i.mz, %bb.bj ] ; 3 uses
  store i32 %i.nd, ptr %i.ni, align 4, !tbaa !18
  store i32 1, ptr %i.b, align 4, !tbaa !11
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv846
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !18
  %i.nl = shl nsw i32 %i.nk, 1
  %i.nm = or disjoint i32 %i.nl, 1
  %i.nn = load i32, ptr %i.a, align 8, !tbaa !12
  %i.no = icmp eq i32 %i.nn, 1
  br i1 %i.no, label %Vec_IntGrow.exit11.sink.split.i422, label %Vec_IntPush.exit426

Vec_IntGrow.exit11.sink.split.i422:               ; preds = %Vec_IntFill.exit418
  %i.np = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ni, i64 noundef 64) #20 ; 3 uses
  store ptr %i.np, ptr %i.d, align 8, !tbaa !13
  store i32 16, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntPush.exit426

Vec_IntPush.exit426:                              ; preds = %Vec_IntFill.exit418, %Vec_IntGrow.exit11.sink.split.i422
  %i.nq = phi ptr [ %i.nh, %Vec_IntFill.exit418 ], [ %i.np, %Vec_IntGrow.exit11.sink.split.i422 ]
  %i.nr = phi ptr [ %i.ni, %Vec_IntFill.exit418 ], [ %i.np, %Vec_IntGrow.exit11.sink.split.i422 ] ; 2 uses
  store i32 2, ptr %i.b, align 4, !tbaa !11
  %8 = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store i32 %i.nm, ptr %8, align 4, !tbaa !18
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 3 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.next847
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !18
  %i.nu = shl nsw i32 %i.nt, 1
  %i.nv = load i32, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 2
  br i1 %i.nw, label %Vec_IntGrow.exit11.sink.split.i430, label %Vec_IntPush.exit434

Vec_IntGrow.exit11.sink.split.i430:               ; preds = %Vec_IntPush.exit426
  %i.nx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nr, i64 noundef 64) #20 ; 2 uses
  store ptr %i.nx, ptr %i.d, align 8, !tbaa !13
  store i32 16, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntPush.exit434

Vec_IntPush.exit434:                              ; preds = %Vec_IntPush.exit426, %Vec_IntGrow.exit11.sink.split.i430
  %9 = phi ptr [ %i.nq, %Vec_IntPush.exit426 ], [ %i.nx, %Vec_IntGrow.exit11.sink.split.i430 ] ; 11 uses
  %10 = phi i32 [ %i.nv, %Vec_IntPush.exit426 ], [ 16, %Vec_IntGrow.exit11.sink.split.i430 ]
  store i32 3, ptr %i.b, align 4, !tbaa !11
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.nu, ptr %11, align 4, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ny = tail call i32 @sat_solver_addclause(ptr noundef %i.aq, ptr noundef %9, ptr noundef nonnull %12) #21 ; 0 uses
  %exitcond849.not = icmp eq i64 %indvars.iv.next847, 7
  br i1 %exitcond849.not, label %bb.bo, label %bb.bj, !llvm.loop !109

bb.bo:                                            ; preds = %Vec_IntPush.exit434
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %exitcond854.not = icmp eq i64 %indvars.iv.next851, %wide.trip.count853
  br i1 %exitcond854.not, label %._crit_edge647, label %.preheader, !llvm.loop !110

._crit_edge647:                                   ; preds = %bb.bo
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %._crit_edge649.split, label %.preheader439, !llvm.loop !111

._crit_edge649.split:                             ; preds = %._crit_edge647, %.preheader439.lr.ph, %.preheader440.a
  %i.nz = phi ptr [ %i.ml, %.preheader440.a ], [ %i.ml, %.preheader439.lr.ph ], [ %9, %._crit_edge647 ] ; 2 uses
  %i.oa = phi ptr [ %i.mm, %.preheader440.a ], [ %i.mm, %.preheader439.lr.ph ], [ %9, %._crit_edge647 ]
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next859 = add i32 %indvars.iv858, 1
  %exitcond866.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count865
  br i1 %exitcond866.not, label %._crit_edge651, label %.preheader440.a, !llvm.loop !112

._crit_edge651:                                   ; preds = %._crit_edge649.split, %.preheader441.a
  %i.ob = phi ptr [ %i.ly, %.preheader441.a ], [ %i.nz, %._crit_edge649.split ] ; 2 uses
  %.not.i = icmp eq ptr %i.ob, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge651
  tail call void @free(ptr noundef nonnull %i.ob) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge651, %bb.bp
  tail call void @free(ptr noundef nonnull %i.a) #21
  ret ptr %i.aq
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @sat_solver_new() local_unnamed_addr #4

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define void @Sbd_SolverTopoPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02733 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = add nsw i32 %.02733, %1
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.c) ; 0 uses
  %i.e = add nuw nsw i32 %.02733, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.f = add i32 %1, -2
  %i.g = add i32 %i.f, %2                         ; 4 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %._crit_edge
  %i.i = getelementptr i8, ptr %0, i64 328
  br i1 %i.b, label %.lr.ph42.split.us, label %.lr.ph42.split

.lr.ph42.split.us:                                ; preds = %.lr.ph42
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.preheader.lr.ph.us.us.preheader, label %.preheader.lr.ph.us

.preheader.lr.ph.us.us.preheader:                 ; preds = %.lr.ph42.split.us
  %i.k = zext nneg i32 %3 to i64
  %i.l = zext nneg i32 %i.g to i64
  %i.m = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.preheader, %._crit_edge39.split.us.us.us
  %indvars.iv56 = phi i64 [ %i.l, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next57, %._crit_edge39.split.us.us.us ] ; 5 uses
  %i.n = icmp slt i64 %indvars.iv56, %i.m
  %i.o = select i1 %i.n, i32 105, i32 32
  %i.p = trunc nuw nsw i64 %indvars.iv56 to i32
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.p, i32 noundef %i.o) ; 0 uses
  %invariant.gep.us.us = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv56
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge37.us.us.us, %.preheader.lr.ph.us.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge37.us.us.us ], [ 0, %.preheader.lr.ph.us.us ] ; 2 uses
  %gep.us.us.us = getelementptr inbounds nuw [912 x i8], ptr %invariant.gep.us.us, i64 %indvars.iv52
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.k, %.preheader.us.us.us ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.us.us.us = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.us.us.us, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18
  %.not.us.us.us = icmp eq i32 %i.w, 1
  %i.x = select i1 %.not.us.us.us, i32 42, i32 46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.x, %bb.c ], [ 32, %bb.b ]
  %putchar32.us.us.us = tail call i32 @putchar(i32 %.sink) ; 0 uses
  %i.y = icmp sgt i64 %indvars.iv, 1
  br i1 %i.y, label %bb.b, label %._crit_edge37.us.us.us, !llvm.loop !114

._crit_edge37.us.us.us:                           ; preds = %bb.d
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond55.not, label %._crit_edge39.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !115

._crit_edge39.split.us.us.us:                     ; preds = %._crit_edge37.us.us.us
  %putchar30.us.us = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  %i.aa = icmp sgt i64 %indvars.iv56, 0
  br i1 %i.aa, label %.preheader.lr.ph.us.us, label %._crit_edge43, !llvm.loop !116

.preheader.lr.ph.us:                              ; preds = %.lr.ph42.split.us, %._crit_edge39.split.us47
  %.02640.us = phi i32 [ %i.ag, %._crit_edge39.split.us47 ], [ %i.g, %.lr.ph42.split.us ] ; 4 uses
  %i.ab = icmp slt i32 %.02640.us, %1
  %i.ac = select i1 %i.ab, i32 105, i32 32
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.02640.us, i32 noundef %i.ac) ; 0 uses
  br label %.preheader.us45

.preheader.us45:                                  ; preds = %.preheader.us45, %.preheader.lr.ph.us
  %.138.us46 = phi i32 [ 0, %.preheader.lr.ph.us ], [ %i.af, %.preheader.us45 ]
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.af = add nuw nsw i32 %.138.us46, 1           ; 2 uses
  %exitcond50.not = icmp eq i32 %i.af, %2
  br i1 %exitcond50.not, label %._crit_edge39.split.us47, label %.preheader.us45, !llvm.loop !115

._crit_edge39.split.us47:                         ; preds = %.preheader.us45
  %putchar30.us = tail call i32 @putchar(i32 10)  ; 0 uses
  %i.ag = add nsw i32 %.02640.us, -1
  %i.ah = icmp sgt i32 %.02640.us, 0
  br i1 %i.ah, label %.preheader.lr.ph.us, label %._crit_edge43, !llvm.loop !116

.lr.ph42.split:                                   ; preds = %.lr.ph42, %.lr.ph42.split
  %.02640 = phi i32 [ %i.al, %.lr.ph42.split ], [ %i.g, %.lr.ph42 ] ; 4 uses
  %i.ai = icmp slt i32 %.02640, %1
  %i.aj = select i1 %i.ai, i32 105, i32 32
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.02640, i32 noundef %i.aj) ; 0 uses
  %putchar30 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.al = add nsw i32 %.02640, -1
  %.not = icmp eq i32 %.02640, 0
  br i1 %.not, label %._crit_edge43, label %.lr.ph42.split, !llvm.loop !116

._crit_edge43:                                    ; preds = %.lr.ph42.split, %._crit_edge39.split.us47, %._crit_edge39.split.us.us.us, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Sbd_SolverTopoTest() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [30 x [38 x [6 x i32]]], align 16 ; 9 uses
  %i.c = alloca [38 x [8 x i32]], align 16        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #21
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !40
  %.neg36 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %.neg = sdiv i64 %i.h, -1000
  %.neg37 = add i64 %.neg, %.neg36
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg37, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.i = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19 ; 25 uses
  %i.j = call ptr @Sbd_SolverTopo(i32 noundef 8, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @__const.Sbd_SolverTopoTest.pDelays, i32 noundef 2, ptr noundef nonnull %i.a) ; 22 uses
  %i.k = load i32, ptr %i.a, align 4
  %.fr43 = freeze i32 %i.k                        ; 2 uses
  %i.l = icmp sgt i32 %.fr43, 0
  %i.m = getelementptr i8, ptr %i.j, i64 328
  br i1 %i.l, label %Abc_Clock.exit.split.us.preheader, label %Abc_Clock.exit.split.preheader

Abc_Clock.exit.split.preheader:                   ; preds = %Abc_Clock.exit
  %i.n = call i32 @sat_solver_solve(ptr noundef %i.j, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #21
  %i.o = add i32 %i.n, 1
  %or.cond.peel = icmp ult i32 %i.o, 2
  br i1 %or.cond.peel, label %.split.us, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit.split.preheader
  call void @Sbd_SolverTopoPrint(ptr noundef %i.j, i32 noundef 8, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.p = call i32 @sat_solver_addclause(ptr noundef %i.j, ptr noundef %i.i, ptr noundef %i.i) #21
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.split.us, label %Abc_Clock.exit.split.peel.next

Abc_Clock.exit.split.peel.next:                   ; preds = %bb.c
  %i.q = call i32 @sat_solver_solve(ptr noundef %i.j, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #21
  %i.r = add i32 %i.q, 1
  %or.cond.peel48 = icmp ult i32 %i.r, 2
  br i1 %or.cond.peel48, label %.split.us, label %bb.d
end_hunk_1
