inline.NumInlined: 2454
inline.NumDeleted: 989
begin_hunk_0_@_ZN5arrow8internal15StatusFromErrnoIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_:bb.a
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !11

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %_ZN5arrow8internal21StatusDetailFromErrnoEi.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  call void @_ZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %2, align 8, !tbaa !444
  store ptr null, ptr %i.a, align 8, !tbaa !36
  store <2 x ptr> %i.b, ptr %7, align 16, !tbaa !444
  store ptr null, ptr %2, align 8, !tbaa !31
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !25
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !45
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !45
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !11

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.t = load ptr, ptr %6, align 8, !tbaa !12     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  %i.z = load ptr, ptr %6, align 8, !tbaa !12     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !596, !nonnull !107, !align !606
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #37
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !596, !nonnull !107, !align !606
  %i.f = load ptr, ptr %2, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !596, !nonnull !107, !align !606
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #37
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSH_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISA_EEDaSH_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISC_EEDaSH_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !243    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #38
  unreachable

_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %4 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %5 = select i1 %4, i64 1152921504606846975, i64 %i.j ; 4 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %5, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #39
  br label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !7
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %3, align 8, !tbaa !12
  %i.y = load i64, ptr %i.s, align 8, !tbaa !15
  store i64 %i.y, ptr %i.q, align 8, !tbaa !15
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !16
  store ptr %i.s, ptr %2, align 8, !tbaa !12
  store i64 0, ptr %i.aa, align 8, !tbaa !16
  store i8 0, ptr %i.s, align 8, !tbaa !15
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 2 uses
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.g

_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !717

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.ao) #37 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.g ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #37
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !245

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g
  invoke void @__cxa_rethrow() #38
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #42
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ %i.am, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.016.i.i.i.i.i33.idx = phi i64 [ %.016.i.i.i.i.i33.add, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i34 = phi ptr [ %i.au, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i33.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i33.idx ; 2 uses
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i33.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i34)
          to label %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 unwind label %bb.k

_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i32
  %i.au = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i34, i64 8 ; 2 uses
  %.016.i.i.i.i.i33.add = add nuw nsw i64 %.016.i.i.i.i.i33.idx, 8 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i.i41, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit, label %.lr.ph.i.i.i.i.i32, !llvm.loop !717

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i32
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #37 ; 0 uses
  %.not4.i.i.i.i.i.i.i35 = icmp eq i64 %.016.i.i.i.i.i33.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i36
  %.05.i.i.i.i.i.i.i37 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.ptr, %bb.k ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i37) #37
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i37, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.ay, %.016.i.i.i.i.i33.ptr
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i36, !llvm.loop !245

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %bb.k
  invoke void @__cxa_rethrow() #38
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i39
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #42
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i39
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit: ; preds = %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.ptr62.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i33.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i42 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr62.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.bc, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45 ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #37
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !245

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit45
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %i.c, null
  br i1 %.not.i46, label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !241
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #40
  br label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, %bb.o
  store ptr %i.o, ptr %0, align 8, !tbaa !243
  store ptr %.0.lcssa.i.i.i.i.i42, ptr %i.a, align 8, !tbaa !244
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %5
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !241
  ret void

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.h
  %i.bi = extractvalue { ptr, i32 } %i.ar, 0
  %i.bj = call ptr @__cxa_begin_catch(ptr %i.bi) #37 ; 0 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #37
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.l
  %.0.lpad-body.ph = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %.ptr, %bb.l ], [ %i.o, %bb.f ] ; 2 uses
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %i.az, %bb.l ], [ %i.ag, %bb.f ]
  %i.bk = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %i.bk) #37 ; 0 uses
  %.not4.i.i47 = icmp eq ptr %i.o, %.0.lpad-body.ph
  br i1 %.not4.i.i47, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i, %.lr.ph.i.i48
  %.05.i.i49 = phi ptr [ %i.bm, %.lr.ph.i.i48 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i49) #37
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 8 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.bm, %.0.lpad-body.ph
  br i1 %.not.i.i50, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i48, !llvm.loop !245

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit53
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4.i
  %.not.i52 = icmp eq ptr %i.o, null
  br i1 %.not.i52, label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit53, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.thread, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit
  %i.bo = shl nuw nsw i64 %5, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bo) #40
  br label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit53

_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit53: ; preds = %bb.q, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #38
          to label %bb.t unwind label %bb.p

bb.r:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bn

bb.s:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #42
  unreachable

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit53
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18LinkStatERKNS0_16PlatformFilenameEP4statPb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !47
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = tail call i32 @lstat64(ptr noundef %i.b, ptr noundef nonnull %2) #37
  %.not = icmp eq i32 %i.c, 0
  %.not9 = icmp eq ptr %3, null                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pre = tail call ptr @__errno_location() #41   ; 2 uses
  br i1 %.not9, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %.pre, align 4, !tbaa !3
  switch i32 %i.d, label %._crit_edge [
    i32 2, label %.sink.split
    i32 20, label %.sink.split
    i32 40, label %.sink.split
  ]

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %.pre, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.f = load ptr, ptr %1, align 8, !tbaa !47, !noalias !718 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !718
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !7, !noalias !724
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !12, !noalias !724 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16, !noalias !724 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %._crit_edge
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #38, !noalias !724
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !11

.noexc6.i.i.i:                                    ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #38, !noalias !724
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #39, !noalias !724 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !12, !noalias !724
  store i64 %i.j, ptr %i.g, align 8, !tbaa !15, !noalias !724
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %._crit_edge
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.g, %._crit_edge ] ; 3 uses
  switch i64 %i.j, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !15, !noalias !724
  store i8 %i.q, ptr %i.p, align 1, !tbaa !15, !noalias !724
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.h, i64 %i.j, i1 false), !noalias !724
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.j, ptr %i.r, align 8, !tbaa !16, !noalias !724
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !15, !noalias !724
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.t = load ptr, ptr %4, align 8, !tbaa !12, !noalias !728 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.w = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !728 ; 3 uses
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.x, i1 false)
  br label %_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.z = load i64, ptr %i.g, align 8, !tbaa !15, !noalias !728
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !728
  store i64 %i.z, ptr %i.v, align 8, !tbaa !15, !alias.scope !729
  br label %_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev.exit

_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.sink.i.i = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  %i.aa = phi i64 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i ]
  store ptr %.sink.i.i, ptr %5, align 8, !tbaa !7, !alias.scope !732
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !16, !alias.scope !729
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !718
  invoke void @_ZN5arrow8internal15StatusFromErrnoIJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.e, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(34) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(2) @.str.1)
          to label %_ZN5arrow8internal16IOErrorFromErrnoIJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiDpOT_.exit unwind label %bb.h

_ZN5arrow8internal16IOErrorFromErrnoIJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiDpOT_.exit: ; preds = %_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev.exit
  %i.ac = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.v
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8internal16IOErrorFromErrnoIJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiDpOT_.exit
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow8internal16IOErrorFromErrnoIJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEENS_6StatusEiDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.k

bb.h:                                             ; preds = %_ZNK5arrow8internal16PlatformFilename8ToStringB5cxx11Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.ag

bb.i:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.c, %bb.c, %bb.c
  %.sink = phi i8 [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 1, %bb.i ]
  store i8 %.sink, ptr %3, align 1, !tbaa !157
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  store ptr null, ptr %0, align 8, !tbaa !97, !alias.scope !734
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117DeleteDirEntryDirERKNS0_16PlatformFilenameERK4statb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 %.24.val, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Result.18", align 8  ; 16 uses
  %8 = alloca %"class.std::vector", align 8       ; 7 uses
  %9 = alloca %struct.stat, align 8               ; 7 uses
  %10 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 14 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #39 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #40
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !12
  store i64 %.0, ptr %i.d, align 8, !tbaa !15
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !16
  store i8 0, ptr %i.c, align 1, !tbaa !15
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  store i8 %i.s, ptr %i.q, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !16
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #38
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !100

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  store i8 %i.v, ptr %i.t, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !15
  store i8 %i.w, ptr %i.m, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !16
  %i.x = load ptr, ptr %0, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !15
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !534  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !622    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #38
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 4 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !7
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #38
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !11

.noexc6.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #39
          to label %.noexc27 unwind label %bb.m   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.y, ptr %i.p, align 8, !tbaa !12
  store i64 %i.t, ptr %i.q, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.z = phi ptr [ %i.y, %.noexc27 ], [ %i.q, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !15
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.t, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !895, !noalias !898
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !12, !alias.scope !898, !noalias !895 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16, !alias.scope !898, !noalias !895 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !900
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !12, !alias.scope !895, !noalias !898
  %i.al = load i64, ptr %i.af, align 8, !tbaa !15, !alias.scope !898, !noalias !895
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !15, !alias.scope !895, !noalias !898
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !898, !noalias !895
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !16, !alias.scope !895, !noalias !898
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !12, !alias.scope !898, !noalias !895
  store i64 0, ptr %i.an, align 8, !tbaa !16, !alias.scope !898, !noalias !895
  store i8 0, ptr %i.af, align 8, !tbaa !15, !alias.scope !898, !noalias !895
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !901

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.h ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i30, align 8, !tbaa !7, !alias.scope !902, !noalias !905
  %i.at = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !12, !alias.scope !905, !noalias !902 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.j:                                             ; preds = %.lr.ph.i.i.i29
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !905, !noalias !902 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !907
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.at, ptr %.012.i.i.i30, align 8, !tbaa !12, !alias.scope !902, !noalias !905
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !15, !alias.scope !905, !noalias !902
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !15, !alias.scope !902, !noalias !905
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !16, !alias.scope !905, !noalias !902
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.j
  %i.bb = phi i64 [ %i.ax, %bb.j ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !16, !alias.scope !902, !noalias !905
  store ptr %i.au, ptr %.0911.i.i.i31, align 8, !tbaa !12, !alias.scope !905, !noalias !902
  store i64 0, ptr %i.bc, align 8, !tbaa !16, !alias.scope !905, !noalias !902
  store i8 0, ptr %i.au, align 8, !tbaa !15, !alias.scope !905, !noalias !902
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !901

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !536
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #40
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.k
  store ptr %i.o, ptr %0, align 8, !tbaa !622
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !534
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !536
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #37 ; 0 uses
  %i.bp = shl nuw nsw i64 %4, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bp) #40
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bl

bb.o:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #42
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !534  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !622    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #38
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !7
  %i.r = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !12
  %i.y = load i64, ptr %i.s, align 8, !tbaa !15
  store i64 %i.y, ptr %i.q, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !16
  store ptr %i.s, ptr %2, align 8, !tbaa !12
  store i64 0, ptr %i.aa, align 8, !tbaa !16
  store i8 0, ptr %i.s, align 8, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !908, !noalias !911
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !12, !alias.scope !911, !noalias !908 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16, !alias.scope !911, !noalias !908 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !913
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !12, !alias.scope !908, !noalias !911
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !15, !alias.scope !911, !noalias !908
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !15, !alias.scope !908, !noalias !911
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !16, !alias.scope !911, !noalias !908
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !16, !alias.scope !908, !noalias !911
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !12, !alias.scope !911, !noalias !908
  store i64 0, ptr %i.am, align 8, !tbaa !16, !alias.scope !911, !noalias !908
  store i8 0, ptr %i.ae, align 8, !tbaa !15, !alias.scope !911, !noalias !908
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !901

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !7, !alias.scope !914, !noalias !917
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !12, !alias.scope !917, !noalias !914 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16, !alias.scope !917, !noalias !914 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !919
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !12, !alias.scope !914, !noalias !917
  %i.az = load i64, ptr %i.at, align 8, !tbaa !15, !alias.scope !917, !noalias !914
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !15, !alias.scope !914, !noalias !917
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !16, !alias.scope !917, !noalias !914
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !16, !alias.scope !914, !noalias !917
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !12, !alias.scope !917, !noalias !914
  store i64 0, ptr %i.bb, align 8, !tbaa !16, !alias.scope !917, !noalias !914
  store i8 0, ptr %i.at, align 8, !tbaa !15, !alias.scope !917, !noalias !914
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !901

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !536
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #40
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !622
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !534
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !536
  ret void
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #1

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_111ErrnoDetailESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_111ErrnoDetailESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal12_GLOBAL__N_111ErrnoDetailEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #37, !inline_history !920
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_111ErrnoDetailESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_111ErrnoDetailESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_111ErrnoDetailESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !829  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #37
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal12_GLOBAL__N_111ErrnoDetailD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #30 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK5arrow8internal12_GLOBAL__N_111ErrnoDetail7type_idEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZN5arrow8internal12_GLOBAL__N_118kErrnoDetailTypeIdE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow8internal12_GLOBAL__N_111ErrnoDetail8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.80, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.d)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.81, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.g = load i32, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN5arrow8internal12ErrnoMessageB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.g)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.h = load ptr, ptr %3, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !7, !alias.scope !927
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !16, !alias.scope !927
  store i8 0, ptr %i.q, align 8, !tbaa !15, !alias.scope !927
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !928, !noalias !927 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !927 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !930, !noalias !927 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !12, !alias.scope !927 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !15, !alias.scope !927
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #40
  br label %.body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !26
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !26
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #40
end_hunk_1
