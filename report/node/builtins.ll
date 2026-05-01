inline.NumInlined: 1175
inline.NumDeleted: 706
begin_hunk_0_@_ZN2v88internal8Builtins17NameForStackTraceEPNS0_7IsolateENS0_7BuiltinE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins16PrintBuiltinCodeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::OFStream", align 8 ; 9 uses
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN2v88internal8Builtins16PrintBuiltinCodeEv:bb.a
  call void @_ZN2v88internal4Code11DisassembleEPKcRSoPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, i64 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 1) #18 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18, !inline_history !11
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %3) #18, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1904), align 16, !range !5, !noundef !6
  %i.ad = trunc nuw i8 %i.ac to i1
end_hunk_1
