begin_hunk_0
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i: ; preds = %bb.qh
  %.not.i.i.i.i48.i = icmp eq i64 %i.bcj, 0
  br i1 %.not.i.i.i.i48.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i, label %.lr.ph.i.i.i.i.i.i49.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %46, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false), !noalias !2380
  br label %.loopexit.i414

.lr.ph.i.i.i.i.i.i49.i:                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
end_hunk_0
