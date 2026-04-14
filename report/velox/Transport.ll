inline.NumInlined: 1842
inline.NumDeleted: 726
begin_hunk_0_@_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume:resume.entry
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ek = load i8, ptr %i.eg, align 8, !tbaa !3331, !range !2003, !noundef !166
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = select i1 %i.el, i1 %i.en, i1 false
  %i.ep = zext i1 %i.eo to i8
end_hunk_0
begin_hunk_1_@_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume:resume.entry

bb.am:                                            ; preds = %bb.al
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er) #32
  %.pre98 = load i64, ptr %i.eh, align 8, !tbaa !2028
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit: ; preds = %bb.al, %bb.ak, %bb.am
  %2 = phi i64 [ %.pre98, %bb.am ], [ %i.em, %bb.ak ], [ %i.em, %bb.al ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %2, ptr %3, align 8, !tbaa !2028
  store i32 0, ptr %i.ej, align 8, !tbaa !34
  %i.et = load i32, ptr %.reload.addr209, align 8, !tbaa !44
  %cond.i = icmp eq i32 %i.et, 1
end_hunk_1
