inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_Z11docheckcastP9Classfile:bb.a
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m               ; 2 uses
  %i.o = load ptr, ptr @stkptr, align 8, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
begin_hunk_1_@_Z11docheckcastP9Classfile:bb.a
  store ptr %i.q, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.r, ptr %i.at, align 8, !tbaa !40
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !12
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.al, ptr %2, align 8, !tbaa !15
  ret i32 0

bb.d:                                             ; preds = %.noexc, %bb.a
end_hunk_1
begin_hunk_2_@_Z12doinstanceofP9Classfile:bb.a
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m               ; 2 uses
  %i.o = load ptr, ptr @stkptr, align 8, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_2
begin_hunk_3_@_Z12doinstanceofP9Classfile:bb.a
  store ptr %i.q, ptr %i.as, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.r, ptr %i.at, align 8, !tbaa !40
  %1 = load ptr, ptr @stkptr, align 8, !tbaa !12
  %2 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %i.al, ptr %2, align 8, !tbaa !15
  ret i32 0

bb.d:                                             ; preds = %.noexc, %bb.a
end_hunk_3
