inline.NumInlined: 3499
inline.NumDeleted: 1566
begin_hunk_0_@_ZN4node6loader10ModuleWrap12EvaluateSyncERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  call void @abort() #28
  unreachable

_ZN2v811LocalVectorINS_7MessageEED2Ev.exit.i:     ; preds = %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN4node11Environment7optionsEv.exit, %bb.y, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN2v86Module31GetStalledTopLevelAwaitMessagesEPNS_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.441") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.092.0, ptr noundef %i.w) #27
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_0
