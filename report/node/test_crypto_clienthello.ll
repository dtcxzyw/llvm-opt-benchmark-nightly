inline.NumInlined: 145
inline.NumDeleted: 95
begin_hunk_0_@_GLOBAL__sub_I_test_crypto_clienthello.cc:bb.a
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_test_crypto_clienthello.cc:bb.a
  store i64 10, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = call noalias noundef nonnull dereferenceable(45) ptr @_Znwm(i64 noundef 45) #18 ; 3 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.e, ptr noundef nonnull align 1 dereferenceable(44) @.str.5, i64 44, i1 false)
end_hunk_1
