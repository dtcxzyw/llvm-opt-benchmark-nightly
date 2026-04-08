inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxRecursiveShow:bb.a
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %._crit_edge.us.us ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03744.us.us = phi ptr [ %i.ax, %._crit_edge.us.us ], [ %i.al, %.lr.ph47.split.us ] ; 2 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.ap = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ao), !inline_history !58 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.us, %bb.g
  %.03443.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.as, %bb.g ]
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.ar = tail call noundef i32 @putc(i32 noundef 32, ptr noundef %i.aq), !inline_history !58 ; 0 uses
  %i.as = add nuw nsw i32 %.03443.us.us, 1        ; 2 uses
  %exitcond54.not = icmp eq i32 %i.as, %.0
  br i1 %exitcond54.not, label %._crit_edge.us.us, label %bb.g, !llvm.loop !59

._crit_edge.us.us:                                ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv55
end_hunk_0
begin_hunk_1_@raxRecursiveShow:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.03744.us.us, i64 8
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge48, label %.lr.ph.us.us, !llvm.loop !60

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us, %.lr.ph47.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph47.split.us.split ], [ 0, %.lr.ph47.split.us ] ; 2 uses
  %.03744.us = phi ptr [ %i.be, %.lr.ph47.split.us.split ], [ %i.al, %.lr.ph47.split.us ] ; 2 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.az = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ay), !inline_history !58 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = zext i8 %i.bb to i32
end_hunk_1
begin_hunk_2_@raxRecursiveShow:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %.03744.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count58
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47.split.us.split, !llvm.loop !60

._crit_edge48.loopexit:                           ; preds = %.lr.ph47
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
end_hunk_2
begin_hunk_3_@raxShow:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @raxRecursiveShow(i32 noundef 0, i32 noundef 0, ptr noundef %i.a)
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.c = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.b), !inline_history !58 ; 0 uses
  ret void
}

end_hunk_3
begin_hunk_4_@raxDebugShowNode:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.02133, i64 8
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %.0.copyload) ; 0 uses
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.ai = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ah), !inline_history !58 ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !56
  %i.ak = tail call i32 @fflush(ptr noundef %i.aj) ; 0 uses
  br label %bb.c
end_hunk_4
begin_hunk_5_@raxTouch:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.02530.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.0.copyload = load ptr, ptr %i.u, align 8
end_hunk_5
begin_hunk_6_@llvm.memset.p0.i64
!55 = distinct !{!55, !23}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!58 = distinct !{null}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
end_hunk_6
