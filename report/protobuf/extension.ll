inline.NumInlined: 60
inline.NumDeleted: 36
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  %i.t = sub i64 %.pre-phi.i, %i.o
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.v = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.u(ptr noundef %i.v, i64 %i.t, ptr nonnull %i.n)
  store ptr %i.n, ptr %i.h, align 8, !tbaa !19
  %i.w = icmp samesign ugt i64 %i.q, 1024
  br i1 %i.w, label %.peel.next.i, label %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.z = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.y(ptr noundef %i.z, i64 1024, ptr nonnull %i.n)
  store ptr %i.n, ptr %i.h, align 8, !tbaa !19
  %i.aa = icmp ugt i64 %i.x, 1024
  br i1 %i.aa, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.e, %bb.c
  %.0.lcssa.i = phi i64 [ %i.c, %bb.c ], [ %i.q, %bb.e ], [ %i.x, %.peel.next.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.ar(ptr noundef %i.as, i64 %i.ap, ptr nonnull %i.an)
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !19
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.au = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.at(ptr noundef %i.au, i64 %.0, ptr %2)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.h:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.bl(ptr noundef %i.bm, i64 %i.bj, ptr nonnull %i.bh)
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !19
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bo = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.bn(ptr noundef %i.bo, i64 %.0, ptr %2)
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit12

bb.k:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  %i.ch = sub i64 %.pre-phi.i19, %i.cc
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cj = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.ci(ptr noundef %i.cj, i64 %i.ch, ptr nonnull %i.cb)
  store ptr %i.cb, ptr %i.bv, align 8, !tbaa !19
  %i.ck = icmp samesign ugt i64 %i.ce, 1024
  br i1 %i.ck, label %.peel.next.i20, label %._crit_edge.i13
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib:bb.a
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !19
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cn = load ptr, ptr %0, align 8, !tbaa !21
  tail call void %i.cm(ptr noundef %i.cn, i64 1024, ptr nonnull %i.cb)
  store ptr %i.cb, ptr %i.bv, align 8, !tbaa !19
  %i.co = icmp ugt i64 %i.cl, 1024
  br i1 %i.co, label %.peel.next.i20, label %._crit_edge.i13, !llvm.loop !22

._crit_edge.i13:                                  ; preds = %.peel.next.i20, %bb.n, %bb.l
  %.0.lcssa.i14 = phi i64 [ %i.c, %bb.l ], [ %i.ce, %bb.n ], [ %i.cl, %.peel.next.i20 ] ; 2 uses
end_hunk_5
begin_hunk_6_@llvm.umin.i64
!19 = !{!17, !9, i64 24}
!20 = !{!18, !10, i64 8}
!21 = !{!18, !10, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_6
