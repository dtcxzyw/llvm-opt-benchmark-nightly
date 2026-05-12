inline.NumInlined: 72
inline.NumDeleted: 44
begin_hunk_0_@_ZN5folly12SSLExceptionC2Eimii:bb.a
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.std::array", align 1       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  switch i32 %1, label %bb.c [
    i32 6, label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38
    i32 5, label %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit
end_hunk_0
begin_hunk_1_@_ZN5folly12SSLExceptionC2Eimii:bb.a

_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !14, !alias.scope !11
  %8 = call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #11 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !22, !alias.scope !11
  store i64 30, ptr %i.g, align 8, !tbaa !21, !alias.scope !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %8, ptr noundef nonnull align 1 dereferenceable(30) @.str.2, i64 30, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 30, ptr %i.h, align 8, !tbaa !18, !alias.scope !11
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i8 0, ptr %i.i, align 1, !tbaa !21
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit, %bb.c
end_hunk_1
