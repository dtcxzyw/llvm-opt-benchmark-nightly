inline.NumInlined: 119
inline.NumDeleted: 83
begin_hunk_0_@main:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !57

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc21, %bb.l
  %.0.i.i.i = phi i8 [ %i.ar, %bb.l ], [ %i.av, %.noexc21 ]
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!54 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!55 = !{!"p1 short", !11, i64 0}
!56 = !{!6, !6, i64 0}
!57 = distinct !{null, null}
end_hunk_1
