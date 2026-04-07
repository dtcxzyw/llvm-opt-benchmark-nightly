inline.NumInlined: 249
inline.NumDeleted: 133
begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !81
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !81
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !82
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(34) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSL_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSL_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !73
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISA_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSL_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #18
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISC_EEDaSL_.exit unwind label %bb.e ; 0 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %1) #18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(34) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSM_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSM_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !73
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISA_EEDaSM_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISA_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSM_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %3) #18
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(4) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISC_EEDaSM_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISC_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISA_EEDaSM_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !83, !nonnull !64, !align !93 ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !73     ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.b, label %bb.c
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_:bb.a
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !94
  %i.r = or i32 %i.q, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISD_EEDaSM_.exit unwind label %bb.h
end_hunk_7
begin_hunk_8_@llvm.umin.i64
!78 = !{!79, !4, i64 8}
!79 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!80 = !{!79, !4, i64 12}
!81 = distinct !{null, null, null, null}
!82 = distinct !{null}
!83 = !{!84, !92, i64 8}
!84 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !85, i64 0, !92, i64 8}
!85 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !91, i64 0}
!91 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !37, i64 0}
!92 = !{!"p1 _ZTSSo", !37, i64 0}
!93 = !{i64 8}
!94 = !{!95, !97, i64 32}
!95 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !96, i64 24, !97, i64 28, !97, i64 32, !98, i64 40, !99, i64 48, !5, i64 64, !4, i64 192, !100, i64 200, !101, i64 208}
!96 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!97 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!98 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !37, i64 0}
!99 = !{!"_ZTSNSt8ios_base6_WordsE", !37, i64 0, !28, i64 8}
!100 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !37, i64 0}
!101 = !{!"_ZTSSt6locale", !102, i64 0}
!102 = !{!"p1 _ZTSNSt6locale5_ImplE", !37, i64 0}
end_hunk_8
