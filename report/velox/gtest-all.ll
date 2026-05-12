inline.NumInlined: 8808
inline.NumDeleted: 2098
begin_hunk_0_@_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_:bb.a
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %8 = alloca %"class.testing::Message", align 8  ; 17 uses
  %9 = alloca %"class.testing::internal::GTestMutexLock", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::TestPartResult", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_:bb.a

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.g, ptr %9, align 8, !tbaa !49
  %i.h = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #56 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
end_hunk_1
begin_hunk_2_@_ZN7testing8UnitTest17AddTestPartResultENS_14TestPartResult4TypeEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_:bb.a

_ZN7testing14TestPartResultD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #56
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.en, align 8, !tbaa !53
  %i.eo = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #56 ; 2 uses
  %.not.i.i71 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i71, label %_ZN7testing8internal14GTestMutexLockD2Ev.exit, label %bb.ae

end_hunk_2
