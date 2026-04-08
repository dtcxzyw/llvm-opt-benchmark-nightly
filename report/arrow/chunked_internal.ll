inline.NumInlined: 277
inline.NumDeleted: 168
begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !153
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !137
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !154
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.f = load i64, ptr %2, align 8, !tbaa !64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clImEEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clImEEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %3) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(8) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcmRA8_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.e ; 0 uses
end_hunk_3
begin_hunk_4_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !136    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
end_hunk_4
begin_hunk_5_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !167
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !136  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
end_hunk_5
begin_hunk_6_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !166  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
end_hunk_6
begin_hunk_7_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !166
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !166
  store ptr %i.u, ptr %i.r, align 8, !tbaa !136
  store i64 0, ptr %i.ab, align 8, !tbaa !166
  store i8 0, ptr %i.u, align 8, !tbaa !137
  br label %bb.o

end_hunk_7
begin_hunk_8_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !166
  %i.aj = load ptr, ptr %1, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !137
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !167
  %i.am = load ptr, ptr %1, align 8, !tbaa !136   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !166 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
end_hunk_8
begin_hunk_9_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  store ptr %i.am, ptr %0, align 8, !tbaa !136
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !137
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !137
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !166
  store ptr %i.g, ptr %1, align 8, !tbaa !136
  store i64 0, ptr %i.a, align 8, !tbaa !166
  store i8 0, ptr %i.g, align 8, !tbaa !137
  br label %bb.o

end_hunk_9
begin_hunk_10_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !167
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_10
begin_hunk_11_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !137
  ret void
end_hunk_11
begin_hunk_12_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
end_hunk_12
begin_hunk_13_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !166
  %i.x = load ptr, ptr %0, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !137
end_hunk_13
begin_hunk_14_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(49) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.f = load i64, ptr %2, align 8, !tbaa !64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clImEEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clImEEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !155, !nonnull !123, !align !165
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %3) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(10) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA49_KcmRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.e ; 0 uses
end_hunk_15
begin_hunk_16_@llvm.umin.i64
!150 = !{!149, !4, i64 12}
!151 = !{!152, !152, i64 0}
!152 = !{!"vtable pointer", !6, i64 0}
!153 = distinct !{null, null, null, null}
!154 = distinct !{null}
!155 = !{!156, !164, i64 8}
!156 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !157, i64 0, !164, i64 8}
!157 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !158, i64 0}
!158 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !159, i64 0}
!159 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !160, i64 0}
!160 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !161, i64 0}
!161 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !162, i64 0}
!162 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !163, i64 0}
!163 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!164 = !{!"p1 _ZTSSo", !36, i64 0}
!165 = !{i64 8}
!166 = !{!116, !28, i64 8}
!167 = !{!117, !118, i64 0}
end_hunk_16
