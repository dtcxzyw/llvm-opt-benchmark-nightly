inline.NumInlined: 108
inline.NumDeleted: 62
begin_hunk_0_@_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.t, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %bb.d
  %.0.i.i.i = phi i8 [ %i.x, %bb.d ], [ %i.ab, %.noexc10 ]
end_hunk_0
begin_hunk_1_@_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a
          to label %.noexc14 unwind label %bb.m   ; 6 uses

.noexc14:                                         ; preds = %bb.h
  store ptr %i.o, ptr %3, align 8, !tbaa !15, !alias.scope !49
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
end_hunk_1
begin_hunk_2_@_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc14
  store ptr %i.an, ptr %3, align 8, !tbaa !17, !alias.scope !49
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18
  store i64 %i.au, ptr %i.o, align 8, !tbaa !18, !alias.scope !49
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  br label %bb.j
end_hunk_2
begin_hunk_3_@_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a
bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.av = phi i64 [ %i.ar, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.av, ptr %i.p, align 8, !tbaa !11, !alias.scope !49
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !17
  store i64 0, ptr %i.aw, align 8, !tbaa !11
  store i8 0, ptr %i.ao, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !26
  %i.br = and i32 %i.bq, 2
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !52

.loopexit:                                        ; preds = %bb.e, %.noexc10, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@llvm.assume
!46 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!47 = !{!"p1 int", !10, i64 0}
!48 = !{!"p1 short", !10, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!52 = distinct !{!52, !23}
end_hunk_5
