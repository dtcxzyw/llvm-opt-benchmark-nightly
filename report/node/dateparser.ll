inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal10DateParser12TimeComposer5WriteEPd:bb.a
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

.preheader.us:                                    ; preds = %bb.a, %.critedge.thread.us.1
  %indvars.iv34 = phi i64 [ %indvars.iv.next35.1, %.critedge.thread.us.1 ], [ 0, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv34 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = sext i8 %i.e to i32
  %i.g = icmp eq i32 %.pre37, %i.f
  br i1 %i.g, label %bb.d, label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %.preheader.us, %bb.d, %bb.e
  %indvars.iv.next35 = or disjoint i64 %indvars.iv34, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv34, 26
  br i1 %.not.us, label %.split24.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %.critedge.thread.us
  %i.h = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv.next35 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = sext i8 %i.i to i32
  %i.k = icmp eq i32 %.pre37, %i.j
  br i1 %i.k, label %bb.b, label %.critedge.thread.us.1

bb.b:                                             ; preds = %.preheader.us.1
  %i.l = load i32, ptr %i.b, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.m, align 2
  %i.o = sext i8 %i.n to i32
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %.critedge.thread.us.1

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i8 %i.s to i32
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %.critedge.us, label %.critedge.thread.us.1

.critedge.thread.us.1:                            ; preds = %bb.c, %bb.b, %.preheader.us.1
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2
  br label %.preheader.us

bb.d:                                             ; preds = %.preheader.us
  %i.v = load i32, ptr %i.b, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.v, %i.y
  br i1 %i.z, label %bb.e, label %.critedge.thread.us

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp eq i32 %i.aa, %i.ad
  br i1 %i.ae, label %.critedge.us, label %.critedge.thread.us

.critedge.us:                                     ; preds = %bb.c, %bb.e
  %indvars.iv34.lcssa = phi i64 [ %indvars.iv34, %bb.e ], [ %indvars.iv.next35, %bb.c ]
  %i.af = trunc nuw nsw i64 %indvars.iv34.lcssa to i32
  br label %.split24.us

.preheader:                                       ; preds = %bb.a, %.critedge.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.thread ], [ 0, %bb.a ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %indvars.iv ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp eq i32 %.pre37, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.preheader
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i32
  %i.at = icmp eq i32 %i.ap, %i.as
  %i.au = icmp samesign ult i64 %indvars.iv, 12
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %.split24.us.loopexit38.split.loop.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 27
  br i1 %.not, label %.split24.us, label %.preheader, !llvm.loop !10

.split24.us.loopexit38.split.loop.exit:           ; preds = %bb.g
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split24.us

.split24.us:                                      ; preds = %.critedge.thread, %.critedge.thread.us, %.split24.us.loopexit38.split.loop.exit, %.critedge.us
  %.us-phi = phi i32 [ 27, %.critedge.thread.us ], [ %i.af, %.critedge.us ], [ %i.av, %.split24.us.loopexit38.split.loop.exit ], [ 27, %.critedge.thread ]
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
  switch i32 %.sroa.1.0.extract.trunc, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = mul nsw i32 %1, 100
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.c = mul nsw i32 %1, 10
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.1.0.extract.shift, 3
  br i1 %.not, label %bb.f, label %2

2:                                                ; preds = %bb.e
  %3 = icmp ugt i64 %0, 21474836479
  br i1 %3, label %4, label %middle.block

4:                                                ; preds = %2
  %5 = icmp ugt i64 %0, 25769803775
  br i1 %5, label %6, label %middle.block

6:                                                ; preds = %4
  %7 = icmp ugt i64 %0, 30064771071
  br i1 %7, label %vector.ph, label %middle.block

vector.ph:                                        ; preds = %6
  %8 = icmp ugt i64 %0, 34359738367
  br i1 %8, label %vector.body, label %middle.block

vector.body:                                      ; preds = %vector.ph
  %9 = icmp ugt i64 %0, 38654705663
  %spec.select = select i1 %9, i32 1000000, i32 100000
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %vector.ph, %6, %4, %2
  %.lcssa = phi i32 [ 10, %2 ], [ 100, %4 ], [ 1000, %6 ], [ 10000, %vector.ph ], [ %spec.select, %vector.body ]
  %i.d = sdiv i32 %1, %.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %middle.block, %bb.c, %bb.d
  %.014 = phi i32 [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %1, %bb.b ], [ %i.d, %middle.block ], [ %1, %bb.e ]
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
