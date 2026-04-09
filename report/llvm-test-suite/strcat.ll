inline.NumInlined: 38
inline.NumDeleted: 33
begin_hunk_0_@main:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc25, %bb.i
  %.0.i.i.i = phi i8 [ %i.ad, %bb.i ], [ %i.ah, %.noexc25 ]
end_hunk_0
begin_hunk_1_@main:bb.a
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc27
  %i.ak = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_1
begin_hunk_2_@main:bb.a

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

end_hunk_2
begin_hunk_3_@_ZNKSt5ctypeIcE13_M_widen_initEv
!41 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!42 = !{!"p1 int", !10, i64 0}
!43 = !{!"p1 short", !10, i64 0}
!44 = distinct !{null, null}
!45 = !{!15, !9, i64 0}
end_hunk_3
