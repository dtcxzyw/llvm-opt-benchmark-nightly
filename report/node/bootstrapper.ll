inline.NumInlined: 7007
inline.NumDeleted: 1773
begin_hunk_0_@_ZN2v88internal12Bootstrapper24InitializeOncePerProcessEv:bb.a
  br label %_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal27IgnitionStatisticsExtensionESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v89ExtensionEEclEPS1_.exit.i16, %_ZNSt10unique_ptrIN2v88internal23TriggerFailureExtensionESt14default_deleteIS2_EED2Ev.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1400), align 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ai, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN2v88internal21CpuTraceMarkExtensionESt14default_deleteIS2_EED2Ev.exit, label %_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit

end_hunk_0
begin_hunk_1_@_ZN2v88internal12Bootstrapper24InitializeOncePerProcessEv:bb.a

bb.c:                                             ; preds = %_ZN2v88internalL31isValidCpuTraceMarkFunctionNameEv.exit
  %i.aj = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26, !noalias !25 ; 5 uses
  %6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1400), align 8, !noalias !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal21CpuTraceMarkExtensionE, i64 16), ptr %i.aj, align 8, !noalias !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 49 ; 2 uses
  %i.al = call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.ak, i64 50, ptr noundef nonnull @.str.612, ptr noundef %6) #24, !noalias !25 ; 0 uses
  call void @_ZN2v89ExtensionC2EPKcS2_iPS2_i(ptr noundef nonnull align 8 dereferenceable(99) %i.aj, ptr noundef nonnull @.str.573, ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef null, i32 noundef -1) #24, !noalias !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal21CpuTraceMarkExtensionE, i64 16), ptr %i.aj, align 8, !noalias !25
  store ptr %i.aj, ptr %5, align 8
end_hunk_1
