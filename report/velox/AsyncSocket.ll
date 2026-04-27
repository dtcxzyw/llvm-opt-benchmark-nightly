inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket18drainZeroCopyQueueEv:bb.a
  %i.gi = call noundef i64 %i.gh(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #42, !inline_history !15618 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %.loopexit
end_hunk_0
