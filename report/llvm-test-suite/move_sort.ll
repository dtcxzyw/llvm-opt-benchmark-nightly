begin_hunk_0_@sort_moves:bb.a
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph68.us

.lr.ph68.us:                                      ; preds = %.lr.ph68.us.preheader, %..preheader_crit_edge.us
  %.071.us = phi i32 [ %4, %..preheader_crit_edge.us ], [ %1, %.lr.ph68.us.preheader ] ; 2 uses
  %i.m = load i32, ptr %i.a, align 16, !tbaa !4   ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.lr.ph68.us.new

.lr.ph68.us.new:                                  ; preds = %.lr.ph68.us, %.lr.ph68.us.new
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph68.us.new ], [ 1, %.lr.ph68.us ] ; 6 uses
  %.04167.us = phi i32 [ %spec.select52.us.3, %.lr.ph68.us.new ], [ 0, %.lr.ph68.us ]
end_hunk_0
begin_hunk_1_@sort_moves:bb.a
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.unr-lcssa, label %.lr.ph68.us.new, !llvm.loop !10

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.lr.ph68.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us, label %.epil.preheader
end_hunk_1
begin_hunk_2_@sort_moves:bb.a
  %indvars.iv.next95.epil = add nuw nsw i64 %indvars.iv94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us, label %bb.b, !llvm.loop !12

..preheader_crit_edge.us:                         ; preds = %bb.b, %..preheader_crit_edge.us.unr-lcssa
  %spec.select52.us.lcssa = phi i32 [ %spec.select52.us.3, %..preheader_crit_edge.us.unr-lcssa ], [ %spec.select52.us.epil, %bb.b ]
  %i.ah = zext nneg i32 %spec.select52.us.lcssa to i64 ; 3 uses
  %i.ai = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sext i32 %.071.us to i64
  %i.am = mul nsw i64 %i.al, 12
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.am
  %smax100 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1) ; 2 uses
  %i.an = zext nneg i32 %smax100 to i64
  %i.ao = mul nuw nsw i64 %i.an, 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep99, ptr noundef nonnull align 16 dereferenceable(1) %i.ai, i64 %i.ao, i1 false)
  %4 = add i32 %.071.us, %smax100                 ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  store i32 -5000, ptr %5, align 4, !tbaa !4
  %.not.us = icmp eq i32 %4, %2
  br i1 %.not.us, label %._crit_edge, label %.lr.ph68.us, !llvm.loop !14

.lr.ph72.split:                                   ; preds = %.preheader53.thread, %.lr.ph72
  %i.ap = load i32, ptr %i.b, align 16, !tbaa !4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1) ; 2 uses
  %i.aq = zext nneg i32 %smax to i64
  %i.ar = mul nuw nsw i64 %i.aq, 12
  br label %vector.body

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
end_hunk_2
begin_hunk_3_@sort_moves:bb.a
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bb, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !15
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.c, !llvm.loop !16

.loopexit:                                        ; preds = %.preheader54, %bb.d
  %.04557 = phi i32 [ %i.av, %bb.d ], [ 0, %.preheader54 ]
end_hunk_3
begin_hunk_4_@sort_moves:bb.a
  %i.be = zext nneg i32 %.04861 to i64            ; 3 uses
  %i.bf = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.be
  %i.bg = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false), !tbaa.struct !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
end_hunk_4
begin_hunk_5_@sort_moves:bb.a
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81 to i32
  %exitcond83.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond83.not, label %.preheader53, label %.preheader54, !llvm.loop !17

vector.body:                                      ; preds = %.lr.ph72.split, %vector.body
  %.071 = phi i32 [ %1, %.lr.ph72.split ], [ %8, %vector.body ] ; 2 uses
  %6 = sext i32 %.071 to i64
  %7 = mul nsw i64 %6, 12
  %scevgep = getelementptr i8, ptr %0, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %i.ar, i1 false)
  %8 = add i32 %smax, %.071                       ; 2 uses
  %i.bm = icmp eq i32 %8, %2
  br i1 %i.bm, label %._crit_edge, label %vector.body, !llvm.loop !14

._crit_edge:                                      ; preds = %vector.body, %..preheader_crit_edge.us, %.preheader53.thread, %.preheader53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
end_hunk_5
begin_hunk_6_@llvm.lifetime.end.p0
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

end_hunk_6
begin_hunk_7_@llvm.assume
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !11}
!15 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
end_hunk_7
