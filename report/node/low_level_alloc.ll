inline.NumInlined: 90
inline.NumDeleted: 45
begin_hunk_0_@_ZN4absl13base_internal13LowLevelAlloc4FreeEPv:bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13base_internal12_GLOBAL__N_19ArenaLock5LeaveEv) #12
  unreachable

_ZN4absl13base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit: ; preds = %bb.h, %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.j

end_hunk_0
