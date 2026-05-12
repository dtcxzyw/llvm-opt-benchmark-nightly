inline.NumInlined: 521
inline.NumDeleted: 274
begin_hunk_0_@_ZNK6google8protobuf12UnknownField8DeepCopyEPNS0_5ArenaE:bb.a
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..0.4.sroa_idx, align 8 ; 2 uses
  %i.b = lshr i64 %.sroa.0.0.copyload, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = inttoptr i64 %.sroa.2.0.copyload to ptr  ; 4 uses
  switch i32 %i.c, label %bb.j [
    i32 3, label %bb.b
    i32 4, label %bb.h
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf12UnknownField8DeepCopyEPNS0_5ArenaE:bb.a
  br i1 %i.w, label %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit, label %bb.i, !prof !12

_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit: ; preds = %bb.h
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  store ptr null, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !9
  store i32 16, ptr %i.y, align 8, !tbaa !7
  %2 = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %2, align 4, !tbaa !17
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 32) ; 5 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = ptrtoint ptr %1 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !9
  store i32 16, ptr %i.ab, align 8, !tbaa !7
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %3, align 4, !tbaa !17
  %.pre = load ptr, ptr %.sroa.2.0..0.4.sroa_idx, align 8, !tbaa !19
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit, %bb.i
  %i.ae = phi ptr [ %i.d, %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit ], [ %.pre, %bb.i ]
  %.0.i5 = phi ptr [ %i.x, %_ZN6google8protobuf5Arena14InternalHelperINS0_15UnknownFieldSetEE3NewEv.exit ], [ %i.aa, %bb.i ] ; 2 uses
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.0.i5, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
  %i.af = ptrtoint ptr %.0.i5 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_15UnknownFieldSetEEEPT_PS1_.exit, %_ZN6google8protobuf5Arena6CreateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS8_EEEPT_PS1_DpOT0_.exit
end_hunk_1
