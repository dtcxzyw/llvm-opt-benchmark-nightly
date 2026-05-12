inline.NumInlined: 135
inline.NumDeleted: 90
begin_hunk_0_@_ZN5folly17ShutdownSocketSet8shutdownENS_13NetworkSocketEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not34 = icmp eq ptr %i.y, null
  br i1 %.not34, label %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.j

_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.sroa.0.0.copyload.pre = load i32, ptr %5, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %1, %_ZN6google12Check_EQImplIhN5folly17ShutdownSocketSet5StateEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.z = call noundef i32 @_ZN5folly10closeNoIntENS_13NetworkSocketE(i32 %.sroa.0.0.copyload) ; 0 uses
  %i.aa = cmpxchg ptr %i.m, i8 %i.w, i8 0 monotonic monotonic, align 1 ; 2 uses
  %i.ab = extractvalue { i8, i1 } %i.aa, 1
end_hunk_0
