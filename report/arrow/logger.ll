inline.NumInlined: 656
inline.NumDeleted: 351
begin_hunk_0_@_ZN5arrow4util12_GLOBAL__N_112SimpleLogger3LogERKNS0_10LogDetailsE:bb.a
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
end_hunk_0
begin_hunk_1_@_ZN5arrow4util12_GLOBAL__N_112SimpleLogger3LogERKNS0_10LogDetailsE:bb.a
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !142
end_hunk_1
