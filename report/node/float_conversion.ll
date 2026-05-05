inline.NumInlined: 657
inline.NumDeleted: 259
begin_hunk_0_@_ZN4absl19str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.20, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 76, ptr %i.s, align 1
end_hunk_0
begin_hunk_1_@_ZN4absl19str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.20, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.t = load i8, ptr %1, align 4                 ; 2 uses
  %i.u = icmp ult i8 %i.t, 19
end_hunk_1
