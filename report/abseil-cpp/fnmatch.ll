inline.NumInlined: 30
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.b = trunc nuw i8 %.210 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.024.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sroa.024.1, %._crit_edge.loopexit ]
  %.08.lcssa = phi i1 [ false, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %i.c = icmp eq i64 %.sroa.024.0.lcssa, 0
  %spec.select = select i1 %.08.lcssa, i1 true, i1 %i.c
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.0880 = phi i8 [ %.210, %bb.l ], [ 0, %bb.a ]  ; 2 uses
  %.sroa.024.079 = phi i64 [ %.sroa.024.1, %bb.l ], [ %2, %bb.a ] ; 8 uses
  %.sroa.1030.078 = phi ptr [ %.sroa.1030.1, %bb.l ], [ %3, %bb.a ] ; 8 uses
  %.sroa.035.077 = phi i64 [ %.sroa.035.1, %bb.l ], [ %0, %bb.a ] ; 8 uses
  %.sroa.12.076 = phi ptr [ %.sroa.12.1, %bb.l ], [ %1, %bb.a ] ; 8 uses
  %i.d = icmp eq i64 %.sroa.024.079, 0
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.b
  %.06.i = phi i64 [ %i.h, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 %.06.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.f, 42
  br i1 %i.g, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.035.077
  br i1 %exitcond.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit, label %.lr.ph.i, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit: ; preds = %.lr.ph.i, %bb.b
  %.05.i = phi i64 [ %.06.i, %.lr.ph.i ], [ -1, %bb.b ]
  %i.i = icmp eq i64 %.05.i, -1
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.j = load i8, ptr %.sroa.12.076, align 1, !tbaa !9 ; 3 uses
  switch i8 %i.j, label %bb.f [
    i8 42, label %bb.d
    i8 63, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 1
  %i.l = add i64 %.sroa.035.077, -1
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 1
  %i.n = add i64 %.sroa.035.077, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.1030.078, i64 1
  %i.p = add i64 %.sroa.024.079, -1
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.q = trunc nuw i8 %.0880 to i1
  br i1 %i.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %bb.j

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f, %bb.g
  %.0111420.i.i = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 %.0111420.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  switch i8 %i.s, label %bb.g [
    i8 63, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 42, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.t = add nuw i64 %.0111420.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.sroa.035.077
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not14 = icmp eq i64 %.0111420.i.i, -1
  %spec.select82 = select i1 %.not14, i64 %.sroa.035.077, i64 %.0111420.i.i ; 2 uses
  %4 = icmp eq i64 %spec.select82, 0
  br i1 %4, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.sroa.0.0 = phi i64 [ %spec.select82, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %.sroa.035.077, %bb.g ] ; 5 uses
  %.not2531.i.i = icmp ult i64 %.sroa.024.079, %.sroa.0.0
  br i1 %.not2531.i.i, label %.critedge, label %.lr.ph.i.i17

.lr.ph.i.i17:                                     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.1030.078, i64 %.sroa.024.079
  %i.v = sext i8 %i.j to i32
  %i.w = ptrtoint ptr %i.u to i64
  %invariant.op = sub i64 1, %.sroa.0.0
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i17
  %.033.i.i = phi i64 [ %.sroa.024.079, %.lr.ph.i.i17 ], [ %i.ac, %bb.i ]
  %.02032.i.i = phi ptr [ %.sroa.1030.078, %.lr.ph.i.i17 ], [ %i.aa, %bb.i ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.x = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.x, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18:   ; preds = %bb.h
  %i.y = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.v, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #3 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.y, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %.sroa.12.076, i64 %.sroa.0.0)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.w, %i.ab                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ac, %.sroa.0.0
  br i1 %.not25.i.i, label %.critedge, label %bb.h, !llvm.loop !12

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %.sroa.1030.078 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not15 = icmp eq i64 %i.af, -1
  br i1 %.not15, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %.sroa.0.060 = phi i64 [ %.sroa.0.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ] ; 3 uses
  %.1.i.i55 = phi i64 [ %i.af, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 %.sroa.0.060
  %i.ah = sub i64 %.sroa.035.077, %.sroa.0.060
  %i.ai = add i64 %.1.i.i55, %.sroa.0.060         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.1030.078, i64 %i.ai
  %i.ak = sub i64 %.sroa.024.079, %i.ai
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.al = load i8, ptr %.sroa.1030.078, align 1, !tbaa !9
  %.not = icmp eq i8 %i.j, %i.al
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.12.076, i64 1
  %i.an = add i64 %.sroa.035.077, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.1030.078, i64 1
  %i.ap = add i64 %.sroa.024.079, -1
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52, %bb.k, %bb.e, %bb.d
  %.sroa.12.1 = phi ptr [ %i.ag, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52 ], [ %i.am, %bb.k ], [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.035.1 = phi i64 [ %i.ah, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52 ], [ %i.an, %bb.k ], [ %i.l, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.1030.1 = phi ptr [ %i.aj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52 ], [ %i.ao, %bb.k ], [ %.sroa.1030.078, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.024.1 = phi i64 [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52 ], [ %i.ap, %bb.k ], [ %.sroa.024.079, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.210 = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread52 ], [ 0, %bb.k ], [ 1, %bb.d ], [ %.0880, %bb.e ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.035.1, 0
  br i1 %i.aq, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !13

.critedge:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.j, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18, %bb.i, %bb.h, %._crit_edge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit
  %.3 = phi i1 [ %spec.select, %._crit_edge ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18 ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread ]
  ret i1 %.3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
end_hunk_0
