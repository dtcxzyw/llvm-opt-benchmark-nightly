begin_hunk_0_@main:bb.a
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
end_hunk_0
begin_hunk_1_@main:bb.a
  store i8 1, ptr %i.aj, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV9NthToggle, i64 16), ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 3, ptr %i.ak, align 4, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.al, align 8, !tbaa !44
  br i1 %i.i, label %.lr.ph26, label %.thread51

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.ap = tail call noundef nonnull align 8 dereferenceable(9) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(9) %i.g)
  %i.aq = add nuw nsw i32 %.01623, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.f
  br i1 %exitcond.not, label %bb.d, label %.lr.ph, !llvm.loop !45

bb.h:                                             ; preds = %.lr.ph26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 10), !inline_history !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22: ; preds = %bb.j, %bb.k
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.bt = tail call noundef nonnull align 8 dereferenceable(9) ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(20) %i.ai)
  %i.bu = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond32.not = icmp eq i32 %i.bu, %i.f
  br i1 %exitcond32.not, label %bb.h, label %.lr.ph26, !llvm.loop !47
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_4
begin_hunk_5_@_ZN9NthToggle8activateEv
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(9) ptr @_ZN9NthToggle8activateEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_5
begin_hunk_6_@_ZN9NthToggle8activateEv:bb.a
  %i.g = load i8, ptr %i.f, align 8, !tbaa !13, !range !16, !noundef !17
  %i.h = xor i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_6
begin_hunk_7_@_ZNKSt5ctypeIcE13_M_widen_initEv
!38 = !{!"p1 int", !10, i64 0}
!39 = !{!"p1 short", !10, i64 0}
!40 = !{!6, !6, i64 0}
!41 = distinct !{null, null, null, null}
!42 = !{!43, !5, i64 12}
!43 = !{!"_ZTS9NthToggle", !14, i64 0, !5, i64 12, !5, i64 16}
!44 = !{!43, !5, i64 16}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
end_hunk_7
