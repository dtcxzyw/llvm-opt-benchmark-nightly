inline.NumInlined: 496
inline.NumDeleted: 207
begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !103
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !104
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_2
begin_hunk_3_@_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !105
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !105
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !105, !nonnull !96, !align !118
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %2) #25, !noalias !105
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !105 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_3
begin_hunk_4_@_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !105
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !105
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

end_hunk_4
begin_hunk_5_@_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !119
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !119
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !119, !nonnull !96, !align !118
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %2) #25, !noalias !119
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !119 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_5
begin_hunk_6_@_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !119
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !119
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108, !nonnull !96, !align !118
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(39) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(39) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !108, !nonnull !96, !align !118
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !43
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS9_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS9_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSK_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !108, !nonnull !96, !align !118
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #25
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(3) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISB_EEDaSK_.exit unwind label %bb.e ; 0 uses
end_hunk_8
begin_hunk_9_@bcmp
!100 = !{!99, !4, i64 12}
!101 = !{!102, !102, i64 0}
!102 = !{!"vtable pointer", !6, i64 0}
!103 = distinct !{null, null, null, null}
!104 = distinct !{null}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!107 = distinct !{!107, !"_ZN5arrow8internal12JoinToStringIJRA26_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!108 = !{!109, !117, i64 8}
!109 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !110, i64 0, !117, i64 8}
!110 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !111, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !112, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !113, i64 0}
!113 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !114, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !115, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !116, i64 0}
!116 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!117 = !{!"p1 _ZTSSo", !10, i64 0}
!118 = !{i64 8}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!121 = distinct !{!121, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
end_hunk_9
