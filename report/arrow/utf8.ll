begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4utf84nextIPKcEEjRT_S3_:bb.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf812invalid_utf8E, i64 16), ptr %i.d, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.f, ptr %i.g, align 8, !tbaa !78
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN4utf812invalid_utf8E, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_3
begin_hunk_4_@_ZN4utf84nextIPKcEEjRT_S3_:bb.a
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf818invalid_code_pointE, i64 16), ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !82
  call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4utf818invalid_code_pointE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_4
begin_hunk_5_@_ZN4utf86appendISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_jS9_:bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf818invalid_code_pointE, i64 16), ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %0, ptr %i.f, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4utf818invalid_code_pointE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_5
begin_hunk_6_@_ZN4utf88utf16to8IPKDsSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_T_SC_SB_:bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i16 %i.d, ptr %i.m, align 8, !tbaa !84
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_6
begin_hunk_7_@_ZN4utf88utf16to8IPKDsSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_T_SC_SB_:bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i16 %i.b, ptr %i.o, align 8, !tbaa !84
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_7
begin_hunk_8_@_ZN4utf88utf16to8IPKDsSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_T_SC_SB_:bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4utf813invalid_utf16E, i64 16), ptr %i.p, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i16 %i.b, ptr %i.q, align 8, !tbaa !84
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN4utf813invalid_utf16E, ptr nonnull @_ZNSt9exceptionD2Ev) #27
  unreachable

end_hunk_8
begin_hunk_9_@_ZN4utf88utf16to8IPKDsSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_T_SC_SB_:bb.a
  %.1 = phi ptr [ %i.h, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.r = tail call ptr @_ZN4utf86appendISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_jS9_(i32 noundef %.017, ptr %.sroa.015.029) ; 2 uses
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.sroa.015.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.h ]
end_hunk_9
begin_hunk_10_@_ZN4utf88utf8to16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEPKcEET_T0_SC_SB_:bb.a
bb.k:                                             ; preds = %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEaSEODs.exit13, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEaSEODs.exit9
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.at = icmp ult ptr %i.as, %1
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret ptr %2
end_hunk_10
begin_hunk_11_@_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv:bb.a
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88, !nonnull !34
  tail call void %i.c()
  ret void
}

end_hunk_11
begin_hunk_12_@_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string.10", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !90
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !90
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !90, !nonnull !34, !align !103
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(51) %2) #26, !noalias !90
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(51) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !90 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_12
begin_hunk_13_@_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !90
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !90
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

end_hunk_13
begin_hunk_14_@_ZN5arrow8internal12JoinToStringIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !34, !align !103 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12JoinToStringIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZZN5arrow8internal12JoinToStringIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS3_EEDaSE_.exit unwind label %bb.e
end_hunk_15
begin_hunk_16_@llvm.umin.i64
!75 = !{!76, !4, i64 8}
!76 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!77 = !{!76, !4, i64 12}
!78 = !{!79, !5, i64 8}
!79 = !{!"_ZTSN4utf812invalid_utf8E", !80, i64 0, !5, i64 8}
!80 = !{!"_ZTSN4utf89exceptionE", !81, i64 0}
!81 = !{!"_ZTSSt9exception"}
!82 = !{!83, !4, i64 8}
!83 = !{!"_ZTSN4utf818invalid_code_pointE", !80, i64 0, !4, i64 8}
!84 = !{!85, !11, i64 8}
!85 = !{!"_ZTSN4utf813invalid_utf16E", !80, i64 0, !11, i64 8}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = !{!89, !8, i64 0}
!89 = !{!"_ZTSZSt9call_onceIRFvvEJEEvRSt9once_flagOT_DpOT0_EUlvE_", !8, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!92 = distinct !{!92, !"_ZN5arrow8internal12JoinToStringIJRA51_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!93 = !{!94, !102, i64 8}
!94 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !95, i64 0, !102, i64 8}
!95 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !96, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !97, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !98, i64 0}
!98 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !99, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !100, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !101, i64 0}
!101 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!102 = !{!"p1 _ZTSSo", !8, i64 0}
!103 = !{i64 8}
!104 = !{!105, !107, i64 32}
!105 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !106, i64 24, !107, i64 28, !107, i64 32, !108, i64 40, !109, i64 48, !5, i64 64, !4, i64 192, !110, i64 200, !111, i64 208}
!106 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!107 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!108 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !8, i64 0}
!109 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !27, i64 8}
!110 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !8, i64 0}
!111 = !{!"_ZTSSt6locale", !112, i64 0}
!112 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
end_hunk_16
