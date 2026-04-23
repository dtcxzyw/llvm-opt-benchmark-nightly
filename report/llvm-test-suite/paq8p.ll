inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN5ArrayIN10ContextMap1EELi64EED2Ev
define linkonce_odr dso_local void @_ZN5ArrayIN10ContextMap1EELi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !103
  %1 = xor i32 %i.a, -1
  %i.b = shl i32 %1, 6
  %i.c = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.d = add nsw i32 %i.c, %i.b                   ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !15
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZN10ContextMapD2Ev:bb.a
  tail call void @free(ptr noundef %i.bd) #39
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !103
  %1 = xor i32 %i.bf, -1
  %i.bg = shl i32 %1, 6
  %i.bh = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.bi = add nsw i32 %i.bh, %i.bg                ; 3 uses
  store i32 %i.bi, ptr @programChecker, align 8, !tbaa !15
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.bk = icmp sgt i32 %i.bi, %i.bj
end_hunk_1
begin_hunk_2_@_ZN5Mixer1pEv:bb.a
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.g
  %i.h = shl i32 %.promoted, 1
  %i.i = and i32 %i.h, 14
  %narrow = sub nuw nsw i32 16, %i.i
  %i.j = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.j, i1 false), !tbaa !33
  %indvars.iv.next = add i32 %.promoted, 1        ; 2 uses
end_hunk_2
