inline.NumInlined: 2660
inline.NumDeleted: 1457
begin_hunk_0_@_ZN4node9inspector16MainThreadHandle7ConnectESt10unique_ptrINS0_24InspectorSessionDelegateESt14default_deleteIS3_EEb:bb.a
_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  %.val5.i.i = load ptr, ptr %i.q, align 8        ; 2 uses
  %.val6.i.i = load i32, ptr %i.ah, align 8
  %i.cb = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node9inspector12_GLOBAL__N_111CallRequestINS1_22MainThreadSessionStateESt5_BindIFPFvPS3_MS3_FvSt10unique_ptrINS0_24InspectorSessionDelegateESt14default_deleteIS7_EEERSA_ESt12_PlaceholderILi1EESC_SA_EEEE, i64 16), ptr %i.cb, align 8
  %.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %.val6.i.i, ptr %.sroa.8.16..sroa_idx.i.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr @_ZN4node9inspector12_GLOBAL__N_128AnotherThreadObjectReferenceINS1_22MainThreadSessionStateEE5ApplyISt10unique_ptrINS0_24InspectorSessionDelegateESt14default_deleteIS7_EEEEvPS3_MS3_FvT_ERSC_, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %i.o, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <2 x i64> <i64 ptrtoint (ptr @_ZN4node9inspector12_GLOBAL__N_122MainThreadSessionState7ConnectESt10unique_ptrINS0_24InspectorSessionDelegateESt14default_deleteIS4_EE to i64), i64 0>, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 24 ; 3 uses
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cf) #25
end_hunk_0
begin_hunk_1_@_ZN4node9inspector12_GLOBAL__N_127CrossThreadInspectorSession8DispatchERKN12v8_inspector10StringViewE:bb.a
  %.val5.i = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i = load i32, ptr %i.c, align 8
  %i.d = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node9inspector12_GLOBAL__N_111CallRequestINS1_22MainThreadSessionStateESt5_BindIFPFvPS3_MS3_FvSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS8_EEERSB_ESt12_PlaceholderILi1EESD_SB_EEEE, i64 16), ptr %i.d, align 8
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.val6.i, ptr %.sroa.8.16..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZN4node9inspector12_GLOBAL__N_128AnotherThreadObjectReferenceINS1_22MainThreadSessionStateEE5ApplyISt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS8_EEEEvPS3_MS3_FvT_ERSD_, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store <2 x i64> <i64 ptrtoint (ptr @_ZN4node9inspector12_GLOBAL__N_122MainThreadSessionState8DispatchESt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS5_EE to i64), i64 0>, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.h = getelementptr inbounds nuw i8, ptr %.val5.i, i64 24 ; 3 uses
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #25
end_hunk_1
