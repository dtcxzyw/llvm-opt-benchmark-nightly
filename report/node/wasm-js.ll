inline.NumInlined: 4642
inline.NumDeleted: 1995
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_113InstallGetterEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.e = tail call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE(ptr noundef nonnull %0, ptr nonnull %i.b, ptr nonnull %i.d) #20 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %4, label %_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit, !prof !17

4:                                                ; preds = %_ZN2v812_GLOBAL__N_16v8_strEPNS_8internal7IsolateEPKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.67) #23
  unreachable

_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %_ZN2v812_GLOBAL__N_16v8_strEPNS_8internal7IsolateEPKc.exit
  %5 = tail call ptr @_ZN2v816FunctionTemplate3NewEPNS_7IsolateEPFvRKNS_20FunctionCallbackInfoINS_5ValueEEEENS_5LocalIS4_EENSA_INS_9SignatureEEEiNS_19ConstructorBehaviorENS_14SideEffectTypeEPKNS_9CFunctionEttt(ptr noundef nonnull %0, ptr noundef %3, ptr null, ptr null, i32 noundef 0, i32 noundef 0, i32 noundef range(i32 0, 2) 1, ptr noundef null, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #20
  %6 = tail call ptr @_ZN2v88internal10ApiNatives19InstantiateFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_20FunctionTemplateInfoEEENS0_17MaybeDirectHandleINS0_4NameEEE(ptr noundef nonnull %0, ptr %5, ptr nonnull %i.e) #20 ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit.a, !prof !17

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.67) #23
  unreachable

_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit.a: ; preds = %_ZN2v88internal12_GLOBAL__N_110GetterNameEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE.exit
  tail call void @_ZN2v86Object19SetAccessorPropertyENS_5LocalINS_4NameEEENS1_INS_8FunctionEEES5_NS_17PropertyAttributeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.b, ptr nonnull %6, ptr null, i32 noundef 0) #20
  ret void
}

end_hunk_0
