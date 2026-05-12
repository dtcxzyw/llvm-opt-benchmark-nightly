inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN9MyFixture5SetUpERKN9benchmark5StateE:bb.a
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN9MyFixture5SetUpERKN9benchmark5StateE:bb.a
_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a: ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19 ; 2 uses
  store i32 42, ptr %i.g, align 4, !tbaa !4
  %2 = load ptr, ptr %i.d, align 8, !tbaa !22     ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4) #17
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i, %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a, %bb.a
  ret void
}

end_hunk_1
