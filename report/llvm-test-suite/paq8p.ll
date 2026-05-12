inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN5ArrayIN10ContextMap1EELi64EED2Ev
define linkonce_odr dso_local void @_ZN5ArrayIN10ContextMap1EELi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !103
  %i.b = shl i32 %i.a, 6
  %i.c = load i32, ptr @programChecker, align 8, !tbaa !15
  %reass.sub = sub i32 %i.c, %i.b
  %i.d = add i32 %reass.sub, -64                  ; 3 uses
  store i32 %i.d, ptr @programChecker, align 8, !tbaa !15
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.f = icmp sgt i32 %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZN10ContextMapD2Ev:bb.a
  tail call void @free(ptr noundef %i.bd) #38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !103
  %i.bg = shl i32 %i.bf, 6
  %i.bh = load i32, ptr @programChecker, align 8, !tbaa !15
  %reass.sub.i = sub i32 %i.bh, %i.bg
  %i.bi = add i32 %reass.sub.i, -64               ; 3 uses
  store i32 %i.bi, ptr @programChecker, align 8, !tbaa !15
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.bk = icmp sgt i32 %i.bi, %i.bj
end_hunk_1
