inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal10DateParser11DayComposer5WriteEPd:bb.a
bb.i:                                             ; preds = %bb.h
  %i.am = icmp ult i32 %.015, 50
  br i1 %i.am, label %.thread30, label %bb.j

.thread30:                                        ; preds = %.thread21, %bb.i
  %.0152536 = phi i32 [ %.015, %bb.i ], [ 0, %.thread21 ]
  %.0142635 = phi i32 [ %.014, %bb.i ], [ %i.q, %.thread21 ]
  %.02834 = phi i32 [ %.0, %bb.i ], [ %i.al, %.thread21 ]
  %i.an = add nuw nsw i32 %.0152536, 2000
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i32 %.015, 100
  %i.ap = add nsw i32 %.015, 1900
  %spec.select = select i1 %i.ao, i32 %i.ap, i32 %.015
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread30, %bb.j
  %.029 = phi i32 [ %.0, %bb.h ], [ %.02834, %.thread30 ], [ %.0, %bb.j ] ; 2 uses
  %.01427 = phi i32 [ %.014, %bb.h ], [ %.0142635, %.thread30 ], [ %.014, %bb.j ]
  %.1 = phi i32 [ %.015, %bb.h ], [ %i.an, %.thread30 ], [ %spec.select, %bb.j ]
  %i.aq = add nsw i32 %.01427, -1                 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 12
  %i.as = add nsw i32 %.029, -1
  %i.at = icmp ult i32 %i.as, 31
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = sitofp i32 %.1 to double
  store double %i.au, ptr %1, align 8
  %i.av = uitofp nneg i32 %i.aq to double
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.av, ptr %i.aw, align 8
  %i.ax = uitofp nneg i32 %.029 to double
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ax, ptr %i.ay, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.a
  %.117 = phi i1 [ false, %bb.a ], [ true, %bb.l ], [ false, %bb.k ]
  ret i1 %.117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10DateParser12TimeComposer5WriteEPd(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi i32 [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.a, align 4
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f
  store i32 0, ptr %i.g, align 4
  %i.h = load i32, ptr %i.a, align 4              ; 2 uses
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %.not = icmp eq i32 %i.n, 2147483647
  %.pr = load i32, ptr %0, align 4
  %.frozen = freeze i32 %.pr                      ; 4 uses
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = icmp ult i32 %.frozen, 13
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.cmp.not = icmp eq i32 %.frozen, 12
  %i.p = select i1 %.cmp.not, i32 0, i32 %.frozen
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  store i32 %i.q, ptr %0, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %bb.c
  %i.r = phi i32 [ %i.q, %bb.c ], [ %.frozen, %._crit_edge ] ; 3 uses
  %i.s = icmp ult i32 %i.r, 24
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %thread-pre-split
  %i.t = load i32, ptr %i.j, align 4
  %i.u = icmp ult i32 %i.t, 60
  %i.v = load i32, ptr %i.k, align 4
  %i.w = icmp ult i32 %i.v, 60
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  %i.x = load i32, ptr %i.l, align 4
  %i.y = icmp ult i32 %i.x, 1000
  %or.cond32 = select i1 %or.cond, i1 %i.y, i1 false
  br i1 %or.cond32, label %bb.f, label %.thread

bb.e:                                             ; preds = %thread-pre-split
  %.not22 = icmp eq i32 %i.r, 24
  %i.z = load i32, ptr %i.j, align 4
  %.not23 = icmp eq i32 %i.z, 0
  %or.cond33 = select i1 %.not22, i1 %.not23, i1 false
  %i.aa = load i32, ptr %i.k, align 4
  %.not24 = icmp eq i32 %i.aa, 0
  %or.cond34 = select i1 %or.cond33, i1 %.not24, i1 false
  %i.ab = load i32, ptr %i.l, align 4
  %.not25 = icmp eq i32 %i.ab, 0
  %or.cond35 = select i1 %or.cond34, i1 %.not25, i1 false
  br i1 %or.cond35, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = uitofp nneg i32 %i.r to double
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.ac, ptr %i.ad, align 8
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.af, ptr %i.ag, align 8
  %i.ah = load i32, ptr %i.k, align 4
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.ai, ptr %i.aj, align 8
  %i.ak = load i32, ptr %i.l, align 4
  %i.al = sitofp i32 %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.al, ptr %i.am, align 8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10DateParser16TimeZoneComposer5WriteEPd(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %.not = icmp eq i32 %i.a, 2147483647
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 2147483647
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 2147483647
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ 0, %bb.e ], [ %i.g, %bb.d ]
  %i.j = mul i32 %i.e, 3600
  %i.k = mul i32 %i.i, 60
  %i.l = add i32 %i.k, %i.j                       ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.n = icmp slt i32 %i.a, 0
  %i.o = sub nsw i32 0, %i.l
  %spec.select = select i1 %i.n, i32 %i.o, i32 %i.l
  %i.p = sitofp i32 %spec.select to double
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %.thread
  %.sink = phi double [ %i.p, %.thread ], [ +qnan, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %.sink, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2v88internal10DateParser12KeywordTable6LookupEPKji(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  %.pre37 = load i32, ptr %0, align 4             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.a, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %.critedge.us.a
  %indvars.iv34 = phi i64 [ %indvars.iv.next35.1, %.critedge.us.a ], [ 0, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv34 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = sext i8 %i.e to i32
  %i.g = icmp eq i32 %.pre37, %i.f
  br i1 %i.g, label %.preheader.us.1.a, label %.critedge.thread.us

.preheader.us.1.a:                                ; preds = %.preheader.us
  %2 = load i32, ptr %i.b, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %3, align 1
  %i.i = sext i8 %i.h to i32
  %i.j = icmp eq i32 %2, %i.i
  br i1 %i.j, label %bb.b, label %.critedge.thread.us

bb.b:                                             ; preds = %.preheader.us.1.a
  %i.k = load i32, ptr %i.c, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 2
  %i.n = sext i8 %i.m to i32
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %.critedge.us, label %.critedge.thread.us

.critedge.us:                                     ; preds = %bb.e, %bb.b
  %indvars.iv34.lcssa = phi i64 [ %indvars.iv34, %bb.b ], [ %indvars.iv.next35, %bb.e ]
  %4 = trunc nuw nsw i64 %indvars.iv34.lcssa to i32
  br label %.split24.us

.critedge.thread.us:                              ; preds = %.preheader.us, %.preheader.us.1.a, %bb.b
  %indvars.iv.next35 = or disjoint i64 %indvars.iv34, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv34, 26
  br i1 %.not.us, label %.split24.us, label %bb.c

bb.c:                                             ; preds = %.critedge.thread.us
  %5 = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv.next35 ; 3 uses
  %i.p = load i8, ptr %5, align 1
  %i.q = sext i8 %i.p to i32
  %i.r = icmp eq i32 %.pre37, %i.q
  br i1 %i.r, label %bb.d, label %.critedge.us.a

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.b, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.u = load i8, ptr %i.t, align 2
  %i.v = sext i8 %i.u to i32
  %i.w = icmp eq i32 %i.s, %i.v
  br i1 %i.w, label %bb.e, label %.critedge.us.a

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.c, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp eq i32 %i.x, %i.aa
  br i1 %i.ab, label %.critedge.us, label %.critedge.us.a

.critedge.us.a:                                   ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2
  br label %.preheader.us

.preheader:                                       ; preds = %bb.a, %.critedge.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.thread ], [ 0, %bb.a ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sext i8 %i.ad to i32
  %i.af = icmp eq i32 %.pre37, %i.ae
  br i1 %i.af, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.preheader
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.c, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sext i8 %i.an to i32
  %i.ap = icmp eq i32 %i.al, %i.ao
  %i.aq = icmp samesign ult i64 %indvars.iv, 12
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %.split24.us.loopexit38.split.loop.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 27
  br i1 %.not, label %.split24.us, label %.preheader, !llvm.loop !10

.split24.us.loopexit38.split.loop.exit:           ; preds = %bb.g
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split24.us

.split24.us:                                      ; preds = %.critedge.thread, %.critedge.thread.us, %.split24.us.loopexit38.split.loop.exit, %.critedge.us
  %.us-phi = phi i32 [ 27, %.critedge.thread.us ], [ %4, %.critedge.us ], [ %i.ar, %.split24.us.loopexit38.split.loop.exit ], [ 27, %.critedge.thread ]
  ret i32 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal10DateParser16ReadMillisecondsENS1_9DateTokenE(i64 %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.a = icmp slt i32 %.sroa.1.0.extract.trunc, 3
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %.sroa.1.0.extract.trunc, label %bb.l [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = mul nsw i32 %1, 100
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.c = mul nsw i32 %1, 10
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.1.0.extract.shift, 3
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp ugt i64 %0, 21474836479
  br i1 %i.d, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.e = icmp ugt i64 %0, 25769803775
  br i1 %i.e, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.f = icmp ugt i64 %0, 30064771071
  br i1 %i.f, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.g = icmp ugt i64 %0, 34359738367
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.h = icmp ugt i64 %0, 38654705663
  %spec.select = select i1 %i.h, i32 1000000, i32 100000
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.lcssa = phi i32 [ 10, %bb.f ], [ 100, %bb.g ], [ 1000, %bb.h ], [ 10000, %bb.i ], [ %spec.select, %bb.j ]
  %i.i = sdiv i32 %1, %.lcssa
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.e, %bb.k, %bb.c, %bb.d
  %.014 = phi i32 [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %1, %bb.b ], [ %i.i, %bb.k ], [ %1, %bb.e ]
  ret i32 %.014
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
end_hunk_0
