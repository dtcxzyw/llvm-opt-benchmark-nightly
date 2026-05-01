inline.NumInlined: 2295
inline.NumDeleted: 1225
begin_hunk_0_@"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EED2Ev"
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EED2Ev"(i8 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.google::ErrnoLogMessage", align 8 ; 5 uses
  %i.a = alloca { i64, i64 }, align 16            ; 4 uses
  %i.b = trunc nuw i8 %.0.val to i1
  br i1 %i.b, label %"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EE7executeEv.exit", label %bb.b

end_hunk_0
begin_hunk_1_@"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EED2Ev":bb.a
  %i.c = getelementptr i8, ptr %.8.val, i64 8
  %.val.val1 = load ptr, ptr %i.c, align 8, !tbaa !216 ; 2 uses
  %i.d = icmp eq ptr %.val.val, %.val.val1
  br i1 %i.d, label %"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EE7executeEv.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge6.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.j, %.critedge6.i.i ], [ %.val.val, %bb.b ] ; 2 uses
  %i.e = load i32, ptr %.sroa.02.05.i.i, align 4, !tbaa !7
  %i.f = invoke i32 @close(i32 noundef %i.e)
          to label %bb.d unwind label %bb.h
end_hunk_1
begin_hunk_2_@"_ZN5folly6detail14ScopeGuardImplIZNS_10Subprocess13spawnInternalESt10unique_ptrIA_PKcSt14default_deleteIS6_EES5_RNS2_7OptionsEPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPNS2_14ChildErrorInfoEE3$_0Lb1EED2Ev":bb.a
bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store <2 x i64> <i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), i64 0>, ptr %i.a, align 16, !tbaa !25
  invoke void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.42, i32 noundef 614, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
          to label %bb.f unwind label %bb.h

end_hunk_2
