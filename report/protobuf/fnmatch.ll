inline.NumInlined: 30
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.b = trunc nuw i8 %.210 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.023.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sroa.023.1, %._crit_edge.loopexit ]
  %.08.lcssa = phi i1 [ false, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %i.c = icmp eq i64 %.sroa.023.0.lcssa, 0
  %spec.select = select i1 %.08.lcssa, i1 true, i1 %i.c
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.0879 = phi i8 [ %.210, %bb.m ], [ 0, %bb.a ]  ; 2 uses
  %.sroa.023.078 = phi i64 [ %.sroa.023.1, %bb.m ], [ %2, %bb.a ] ; 8 uses
  %.sroa.1029.077 = phi ptr [ %.sroa.1029.1, %bb.m ], [ %3, %bb.a ] ; 8 uses
  %.sroa.034.076 = phi i64 [ %.sroa.034.1, %bb.m ], [ %0, %bb.a ] ; 9 uses
  %.sroa.12.075 = phi ptr [ %.sroa.12.1, %bb.m ], [ %1, %bb.a ] ; 8 uses
  %i.d = icmp eq i64 %.sroa.023.078, 0
  br i1 %i.d, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.b
  %.06.i = phi i64 [ %i.h, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 %.06.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7
  %i.g = icmp eq i8 %i.f, 42
  br i1 %i.g, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add i64 %.06.i, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.034.076
  br i1 %exitcond.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit, label %.lr.ph.i, !llvm.loop !8

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit: ; preds = %.lr.ph.i, %bb.b
  %.05.i = phi i64 [ %.06.i, %.lr.ph.i ], [ -1, %bb.b ]
  %i.i = icmp eq i64 %.05.i, -1
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.j = load i8, ptr %.sroa.12.075, align 1, !tbaa !7 ; 3 uses
  switch i8 %i.j, label %bb.f [
    i8 42, label %bb.d
    i8 63, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 1
  %i.l = add i64 %.sroa.034.076, -1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 1
  %i.n = add i64 %.sroa.034.076, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.1029.077, i64 1
  %i.p = add i64 %.sroa.023.078, -1
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.q = trunc nuw i8 %.0879 to i1
  br i1 %i.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %bb.k

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f, %bb.g
  %.01116.i.i = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 %.01116.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  switch i8 %i.s, label %bb.g [
    i8 63, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 42, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.t = add i64 %.01116.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %.sroa.034.076
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not14 = icmp eq i64 %.01116.i.i, -1
  br i1 %.not14, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.034.076, i64 %.01116.i.i)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.g, %bb.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %.sroa.0.0 = phi i64 [ %.sroa.034.076, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ %.sroa.speculated.i, %bb.h ], [ %.sroa.034.076, %bb.g ] ; 8 uses
  %i.u = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread
  %.not2531.i.i = icmp ult i64 %.sroa.023.078, %.sroa.0.0
  br i1 %.not2531.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.1029.077, i64 %.sroa.023.078
  %i.w = sext i8 %i.j to i32
  %i.x = ptrtoint ptr %i.v to i64
  %invariant.op = sub i64 1, %.sroa.0.0
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.023.078, %.lr.ph.i.i ], [ %i.ad, %bb.j ]
  %.02132.i.i = phi ptr [ %.sroa.1029.077, %.lr.ph.i.i ], [ %i.ab, %bb.j ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.y = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.y, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17:   ; preds = %bb.i
  %i.z = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.w, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #4 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.z, ptr nonnull %.sroa.12.075, i64 %.sroa.0.0)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.x, %i.ac                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ad, %.sroa.0.0
  br i1 %.not25.i.i, label %.critedge, label %bb.i, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %.sroa.1029.077 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %.not15 = icmp eq i64 %i.ag, -1
  br i1 %.not15, label %.critedge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %.1.i.i54 = phi i64 [ %i.ag, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 %.sroa.0.0
  %i.ai = sub i64 %.sroa.034.076, %.sroa.0.0
  %i.aj = add i64 %.1.i.i54, %.sroa.0.0           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1029.077, i64 %i.aj
  %i.al = sub i64 %.sroa.023.078, %i.aj
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.am = load i8, ptr %.sroa.1029.077, align 1, !tbaa !7
  %.not = icmp eq i8 %i.j, %i.am
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.12.075, i64 1
  %i.ao = add i64 %.sroa.034.076, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.1029.077, i64 1
  %i.aq = add i64 %.sroa.023.078, -1
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51, %bb.l, %bb.e, %bb.d
  %.sroa.12.1 = phi ptr [ %i.ah, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51 ], [ %i.an, %bb.l ], [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.034.1 = phi i64 [ %i.ai, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51 ], [ %i.ao, %bb.l ], [ %i.l, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.1029.1 = phi ptr [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51 ], [ %i.ap, %bb.l ], [ %.sroa.1029.077, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.023.1 = phi i64 [ %i.al, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51 ], [ %i.aq, %bb.l ], [ %.sroa.023.078, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.210 = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread51 ], [ 0, %bb.l ], [ 1, %bb.d ], [ %.0879, %bb.e ] ; 2 uses
  %i.ar = icmp eq i64 %.sroa.034.1, 0
  br i1 %i.ar, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

.critedge:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17, %bb.j, %bb.i, %._crit_edge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit
  %.3 = phi i1 [ %spec.select, %._crit_edge ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i17 ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread.thread ]
  ret i1 %.3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
end_hunk_0
