inline.NumInlined: 1393
inline.NumDeleted: 591
begin_hunk_0_@_ZN12v8_inspector9V8Console19CommandLineAPIScopeC2EN2v85LocalINS2_7ContextEEENS3_INS2_6ObjectEEES7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(112) @constinit, i64 112, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 8), align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 16), align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 8)>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 24), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, i64 40), align 8
  call void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE22_M_insert_range_uniqueIPKS3_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESE_SE_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12v8_inspector12_GLOBAL__N_123UnsafeCommandLineAPIFnsEvE6object, ptr noundef nonnull %4, ptr noundef nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
end_hunk_0
