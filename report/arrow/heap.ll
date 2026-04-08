inline.NumInlined: 83
inline.NumDeleted: 38
begin_hunk_0_@mi_heap_visit_blocks:bb.a
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !73
  %i.ag = zext i8 %i.af to i32
  store i32 %i.ag, ptr %i.l, align 8, !tbaa !74
  %i.ah = call zeroext i1 %2(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef null, i64 noundef %.val.i.i.i.us.us, ptr noundef %3) #10, !inline_history !87
  br i1 %i.ah, label %bb.c, label %mi_heap_area_visitor.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i.us.us
end_hunk_0
begin_hunk_1_@mi_heap_visit_blocks:bb.a
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !73
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.l, align 8, !tbaa !74
  %i.be = call zeroext i1 %2(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef null, i64 noundef %.val.i.i.i, ptr noundef %3) #10, !inline_history !87
  br i1 %i.be, label %mi_heap_area_visitor.exit.i, label %mi_heap_area_visitor.exit.thread.i

mi_heap_area_visitor.exit.thread.i:               ; preds = %.lr.ph.i, %.lr.ph.i.us.us
end_hunk_1
begin_hunk_2_@llvm.ctlz.i64
!84 = distinct !{!84, !21}
!85 = !{!86, !19, i64 56}
!86 = !{!"mi_heap_area_ex_s", !67, i64 0, !19, i64 56}
!87 = distinct !{null, null, null, null}
end_hunk_2
