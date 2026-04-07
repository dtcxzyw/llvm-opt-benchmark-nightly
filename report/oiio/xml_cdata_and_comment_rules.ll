begin_hunk_0_@_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRule18HandlePostBangCharERKNS0_16XmlActionContextE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.i) #12, !inline_history !52
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

bb.g:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRule18HandlePostBangCharERKNS0_16XmlActionContextE:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.r) #12, !inline_history !52
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit16.sink.split: ; preds = %bb.i, %bb.d
end_hunk_1
begin_hunk_2_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 %i.j, ptr %i.b, align 8, !tbaa !53
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !15
  %i.m = load i64, ptr %i.b, align 8, !tbaa !53
  store i64 %i.m, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a
  br label %_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit

_ZN22photos_editing_formats8image_io15DataMatchResultC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !11
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !15
end_hunk_3
begin_hunk_4_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.t, ptr noundef nonnull align 8 dereferenceable(14) %i.u, i64 14, i1 false)
  store i64 %2, ptr %i.t, align 8, !tbaa !54
  %i.v = load i64, ptr %3, align 8
  store i64 %i.v, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_4
begin_hunk_5_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.z = load i64, ptr %i.q, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.z, ptr %i.a, align 8, !tbaa !53
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i.i4, label %._crit_edge.i.i.i.i3

end_hunk_5
begin_hunk_6_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a

.noexc:                                           ; preds = %.noexc.i.i.i4
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !15
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i3

end_hunk_6
begin_hunk_7_@_ZNK22photos_editing_formats8image_io16XmlActionContext26GetResultWithBytesConsumedEm:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i3
  %i.af = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !11
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !15
end_hunk_7
begin_hunk_8_@_ZN22photos_editing_formats8image_io12XmlCdataRuleD0Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #12, !inline_history !55
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.c

_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_8
begin_hunk_9_@_ZN22photos_editing_formats8image_io14XmlCommentRuleD0Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #12, !inline_history !55
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.c

_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_9
begin_hunk_10_@_ZN22photos_editing_formats8image_io7XmlRuleD2Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #12, !inline_history !52
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_10
begin_hunk_11_@_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleD0Ev:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #12, !inline_history !55
  br label %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN22photos_editing_formats8image_io7XmlRuleEEclEPS2_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.c

_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt10unique_ptrIN22photos_editing_formats8image_io7XmlRuleESt14default_deleteIS2_EED2Ev.exit.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN22photos_editing_formats8image_io11XmlTerminalES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_11
begin_hunk_12_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

end_hunk_12
begin_hunk_13_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io11XmlTerminalEEEvT_S6_:bb.a
_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io11XmlTerminalEEvPT_.exit, %bb.a
  ret void
end_hunk_13
begin_hunk_14_@"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_12XmlCdataRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS0_7XmlRule10StartPointEE3$_0", ptr %0, align 8, !tbaa !63
  br label %"_ZNSt14_Function_base13_Base_managerIZN22photos_editing_formats8image_io12XmlCdataRuleC1ENS2_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
end_hunk_14
begin_hunk_15_@"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0", ptr %0, align 8, !tbaa !63
  br label %"_ZNSt14_Function_base13_Base_managerIZN22photos_editing_formats8image_io14XmlCommentRuleC1ENS2_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
end_hunk_15
begin_hunk_16_@"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_14XmlCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E9_M_invokeERKSt9_Any_dataS5_"(ptr dead_on_unwind noalias writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !65
  tail call void @_ZN22photos_editing_formats8image_io21XmlCdataOrCommentRule18HandlePostBangCharERKNS0_16XmlActionContextE(ptr dead_on_unwind writable sret(%"class.photos_editing_formats::image_io::DataMatchResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %.val, ptr noundef nonnull align 8 dereferenceable(136) %2)
  ret void
}
end_hunk_16
begin_hunk_17_@"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0", ptr %0, align 8, !tbaa !63
  br label %"_ZNSt14_Function_base13_Base_managerIZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS2_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
end_hunk_17
begin_hunk_18_@"_ZNSt17_Function_handlerIFN22photos_editing_formats8image_io15DataMatchResultERKNS1_16XmlActionContextEEZNS1_21XmlCdataOrCommentRuleC1ENS1_7XmlRule10StartPointEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
!49 = !{!"bool", !5, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN22photos_editing_formats8image_io7XmlRuleE", !10, i64 0}
!52 = distinct !{null, null}
!53 = !{!13, !13, i64 0}
!54 = !{!45, !13, i64 40}
!55 = distinct !{ptr @_ZN22photos_editing_formats8image_io7XmlRuleD2Ev, null, null}
!56 = !{!57, !44, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io11XmlTerminalESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!58 = !{!57, !44, i64 8}
!59 = !{!57, !44, i64 16}
!60 = !{!61, !10, i64 16}
!61 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!62 = distinct !{!62, !37}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!65 = !{!66, !41, i64 0}
!66 = !{!"_ZTSZN22photos_editing_formats8image_io21XmlCdataOrCommentRuleC1ENS0_7XmlRule10StartPointEE3$_0", !41, i64 0}
end_hunk_18
