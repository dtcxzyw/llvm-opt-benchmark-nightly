inline.NumInlined: 392
inline.NumDeleted: 190
begin_hunk_0_@_ZN26X3DNodeElementImageTextureD2Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.i = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !42
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN26X3DNodeElementImageTextureD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19, !inline_history !42
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN26X3DNodeElementImageTextureD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19, !inline_history !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN26X3DNodeElementImageTextureD0Ev:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.i = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #19, !inline_history !45
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@_ZN26X3DNodeElementImageTextureD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19, !inline_history !45
  br label %_ZN26X3DNodeElementImageTextureD2Ev.exit

_ZN26X3DNodeElementImageTextureD2Ev.exit:         ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN18X3DNodeElementBaseD0Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !42
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6_@_ZN18X3DNodeElementBaseD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19, !inline_history !42
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_6
begin_hunk_7_@_ZN31X3DNodeElementTextureCoordinateD2Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !42
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_7
begin_hunk_8_@_ZN31X3DNodeElementTextureCoordinateD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19, !inline_history !42
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_8
begin_hunk_9_@_ZN31X3DNodeElementTextureCoordinateD0Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !46
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

end_hunk_9
begin_hunk_10_@_ZN31X3DNodeElementTextureCoordinateD0Ev:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #19, !inline_history !47
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_10
begin_hunk_11_@_ZN31X3DNodeElementTextureCoordinateD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19, !inline_history !47
  br label %_ZN31X3DNodeElementTextureCoordinateD2Ev.exit

_ZN31X3DNodeElementTextureCoordinateD2Ev.exit:    ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
end_hunk_11
begin_hunk_12_@_ZN18X3DNodeElementBaseD2Ev:bb.a
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #19
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_12
begin_hunk_13_@_ZN30X3DNodeElementTextureTransformD0Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !42
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_13
begin_hunk_14_@_ZN30X3DNodeElementTextureTransformD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19, !inline_history !42
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_14
begin_hunk_15_@_ZNSt7__cxx114listI10aiVector2tIfESaIS2_EE6insertISt20_List_const_iteratorIS2_EvEESt14_List_iteratorIS2_ES7_T_SA_:bb.a
  store i64 %i.h, ptr %i.b, align 8
  %i.i = load ptr, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listI10aiVector2tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit, label %.lr.ph.i.i, !llvm.loop !48

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
end_hunk_15
begin_hunk_16_@llvm.memset.p0.i64
!39 = distinct !{!39, !40, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!40 = distinct !{!40, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!41 = !{!39, !36, !33}
!42 = !{ptr @_ZN18X3DNodeElementBaseD2Ev}
!43 = distinct !{!43, !4}
!44 = !{ptr @_ZN26X3DNodeElementImageTextureD2Ev}
!45 = !{ptr @_ZN26X3DNodeElementImageTextureD2Ev, ptr @_ZN18X3DNodeElementBaseD2Ev}
!46 = !{ptr @_ZN31X3DNodeElementTextureCoordinateD2Ev}
!47 = !{ptr @_ZN31X3DNodeElementTextureCoordinateD2Ev, ptr @_ZN18X3DNodeElementBaseD2Ev}
!48 = distinct !{!48, !4}
end_hunk_16
