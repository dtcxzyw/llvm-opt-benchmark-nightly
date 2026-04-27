inline.NumInlined: 374
inline.NumDeleted: 175
begin_hunk_0_@_ZN9benchmark8internal9Benchmark7ArgPairEll:_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19
          to label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4 unwind label %bb.c ; 5 uses

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i4: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  store i64 %1, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %3, align 8, !tbaa !42
  store ptr %i.d, ptr %i.a, align 8, !tbaa !41
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.b, align 8, !tbaa !44
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit12 unwind label %bb.c ; 5 uses

end_hunk_0
