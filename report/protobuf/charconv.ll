inline.NumInlined: 253
inline.NumDeleted: 99
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE:bb.a
bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %3, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.not.i = icmp ult i64 %i.c, 4294967296         ; 2 uses
  %i.g = select i1 %.not.i, i32 1, i32 2          ; 2 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE:bb.a
  br i1 %i.bi, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, label %bb.p

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51: ; preds = %bb.o
  %.idx.i.i.i.i50 = select i1 %.not.i, i64 4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.h, i8 0, i64 %.idx.i.i.i.i50, i1 false), !tbaa !3
  store i32 0, ptr %4, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

end_hunk_1
