inline.NumInlined: 640
inline.NumDeleted: 215
begin_hunk_0_@_ZN24X3DNodeElementGeometry2DD2Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #20, !inline_history !60
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN24X3DNodeElementGeometry2DD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20, !inline_history !60
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN24X3DNodeElementGeometry2DD0Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #20, !inline_history !62
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

end_hunk_2
begin_hunk_3_@_ZN24X3DNodeElementGeometry2DD0Ev:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #20, !inline_history !63
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@_ZN24X3DNodeElementGeometry2DD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20, !inline_history !63
  br label %_ZN24X3DNodeElementGeometry2DD2Ev.exit

_ZN24X3DNodeElementGeometry2DD2Ev.exit:           ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN18X3DNodeElementBaseD2Ev:bb.a
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #20
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6_@_ZN18X3DNodeElementBaseD0Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #20, !inline_history !60
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_6
begin_hunk_7_@_ZN18X3DNodeElementBaseD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20, !inline_history !60
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6insertISt20_List_const_iteratorIS2_EvEESt14_List_iteratorIS2_ES7_T_SA_:bb.a
  store i64 %i.g, ptr %i.b, align 8
  %i.h = load ptr, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit, label %.lr.ph.i.i, !llvm.loop !64

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@bcmp
!57 = distinct !{!57, !58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!59 = !{!57, !54, !51}
!60 = !{ptr @_ZN18X3DNodeElementBaseD2Ev}
!61 = distinct !{!61, !4}
!62 = !{ptr @_ZN24X3DNodeElementGeometry2DD2Ev}
!63 = !{ptr @_ZN24X3DNodeElementGeometry2DD2Ev, ptr @_ZN18X3DNodeElementBaseD2Ev}
!64 = distinct !{!64, !4}
end_hunk_9
