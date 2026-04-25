begin_hunk_0_@sort_moves:bb.a
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph68.us

.lr.ph68.us:                                      ; preds = %.lr.ph68.us.preheader, %.loopexit140
  %.071.us = phi i32 [ %4, %.loopexit140 ], [ %1, %.lr.ph68.us.preheader ]
  %i.m = load i32, ptr %i.a, align 16, !tbaa !4   ; 2 uses
  br i1 %i.l, label %.epil.preheader, label %.lr.ph68.us.new

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph125 ], [ %indvars.iv103.ph, %scalar.ph125.preheader ]
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %scalar.ph125 ], [ %indvars.iv101.ph, %scalar.ph125.preheader ]
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next102, %i.an
  br i1 %exitcond110.not, label %.loopexit140, label %scalar.ph125, !llvm.loop !10

.loopexit140:                                     ; preds = %scalar.ph125, %middle.block135
  %indvars.iv.next104.lcssa = phi i64 [ %10, %middle.block135 ], [ %indvars.iv.next104, %scalar.ph125 ]
  %4 = trunc nsw i64 %indvars.iv.next104.lcssa to i32 ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  store i32 -5000, ptr %5, align 4, !tbaa !4
  %.not.us = icmp eq i32 %2, %4
  br i1 %.not.us, label %._crit_edge, label %.lr.ph68.us, !llvm.loop !14

.lr.ph68.us.new:                                  ; preds = %.lr.ph68.us, %.lr.ph68.us.new
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph68.us.new ], [ 1, %.lr.ph68.us ] ; 6 uses
  %.04167.us = phi i32 [ %spec.select52.us.3, %.lr.ph68.us.new ], [ 0, %.lr.ph68.us ]
end_hunk_0
begin_hunk_1_@sort_moves:bb.a
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.unr-lcssa, label %.lr.ph68.us.new, !llvm.loop !15

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.lr.ph68.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us, label %.epil.preheader
end_hunk_1
begin_hunk_2_@sort_moves:bb.a
  %indvars.iv.next95.epil = add nuw nsw i64 %indvars.iv94.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us, label %bb.b, !llvm.loop !16

..preheader_crit_edge.us:                         ; preds = %bb.b, %..preheader_crit_edge.us.unr-lcssa
  %spec.select52.us.lcssa = phi i32 [ %spec.select52.us.3, %..preheader_crit_edge.us.unr-lcssa ], [ %spec.select52.us.epil, %bb.b ]
  %i.ah = zext nneg i32 %spec.select52.us.lcssa to i64 ; 3 uses
  %i.ai = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = sext i32 %.071.us to i64                ; 3 uses
  %i.am = mul nsw i64 %i.al, 12
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.am
  %smax100 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %i.an = zext nneg i32 %smax100 to i64           ; 4 uses
  %i.ao = mul nuw nsw i64 %i.an, 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep99, ptr noundef nonnull align 16 dereferenceable(1) %i.ai, i64 %i.ao, i1 false)
  %min.iters.check126 = icmp slt i32 %i.ak, 4
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %..preheader_crit_edge.us
  %n.vec129 = and i64 %i.an, 2147483644           ; 3 uses
  %6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.al, i64 0
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph127
  %index131 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body130 ]
  %vec.phi132 = phi <2 x i64> [ %6, %vector.ph127 ], [ %7, %vector.body130 ]
  %vec.phi133 = phi <2 x i64> [ zeroinitializer, %vector.ph127 ], [ %8, %vector.body130 ]
  %7 = add <2 x i64> %vec.phi132, splat (i64 1)   ; 2 uses
  %8 = add <2 x i64> %vec.phi133, splat (i64 1)   ; 2 uses
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %9 = icmp eq i64 %index.next134, %n.vec129
  br i1 %9, label %middle.block135, label %vector.body130, !llvm.loop !18

middle.block135:                                  ; preds = %vector.body130
  %bin.rdx136 = add <2 x i64> %8, %7
  %10 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx136) ; 2 uses
  %cmp.n137 = icmp eq i64 %n.vec129, %i.an
  br i1 %cmp.n137, label %.loopexit140, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %..preheader_crit_edge.us, %middle.block135
  %indvars.iv103.ph = phi i64 [ %i.al, %..preheader_crit_edge.us ], [ %10, %middle.block135 ]
  %indvars.iv101.ph = phi i64 [ 0, %..preheader_crit_edge.us ], [ %n.vec129, %middle.block135 ]
  br label %scalar.ph125

.lr.ph72.split:                                   ; preds = %.preheader53.thread, %.lr.ph72
  %i.ap = load i32, ptr %i.b, align 16, !tbaa !4  ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %i.aq = zext nneg i32 %smax to i64              ; 4 uses
  %i.ar = mul nuw nsw i64 %i.aq, 12
  %min.iters.check = icmp slt i32 %i.ap, 4
  %n.vec = and i64 %i.aq, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
end_hunk_2
begin_hunk_3_@sort_moves:bb.a
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bb, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !19
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.c, !llvm.loop !20

.loopexit:                                        ; preds = %.preheader54, %bb.d
  %.04557 = phi i32 [ %i.av, %bb.d ], [ 0, %.preheader54 ]
end_hunk_3
begin_hunk_4_@sort_moves:bb.a
  %i.be = zext nneg i32 %.04861 to i64            ; 3 uses
  %i.bf = getelementptr inbounds nuw [3072 x i8], ptr %3, i64 %i.be
  %i.bg = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false), !tbaa.struct !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
end_hunk_4
begin_hunk_5_@sort_moves:bb.a
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81 to i32
  %exitcond83.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond83.not, label %.preheader53, label %.preheader54, !llvm.loop !21

.preheader:                                       ; preds = %.lr.ph72.split, %.loopexit141
  %.071 = phi i32 [ %1, %.lr.ph72.split ], [ %17, %.loopexit141 ]
  %11 = sext i32 %.071 to i64                     ; 3 uses
  %12 = mul nsw i64 %11, 12
  %scevgep = getelementptr i8, ptr %0, i64 %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %i.ar, i1 false)
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %13 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %11, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %13, %vector.ph ], [ %14, %vector.body ]
  %vec.phi124 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %15, %vector.body ]
  %14 = add <2 x i64> %vec.phi, splat (i64 1)     ; 2 uses
  %15 = add <2 x i64> %vec.phi124, splat (i64 1)  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %15, %14
  %16 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit141, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv86.ph = phi i64 [ %11, %.preheader ], [ %16, %middle.block ]
  %indvars.iv84.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %scalar.ph ], [ %indvars.iv86.ph, %scalar.ph.preheader ]
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ]
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next85, %i.aq
  br i1 %exitcond93.not, label %.loopexit141, label %scalar.ph, !llvm.loop !23

.loopexit141:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next87.lcssa = phi i64 [ %16, %middle.block ], [ %indvars.iv.next87, %scalar.ph ]
  %17 = trunc nsw i64 %indvars.iv.next87.lcssa to i32 ; 2 uses
  %.not = icmp eq i32 %2, %17
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !14

._crit_edge:                                      ; preds = %.loopexit141, %.loopexit140, %.preheader53.thread, %.preheader53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
end_hunk_5
begin_hunk_6_@llvm.lifetime.end.p0
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

end_hunk_6
begin_hunk_7_@llvm.assume
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11, !13, !12}
!19 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11, !13, !12}
!23 = distinct !{!23, !11, !12, !13}
end_hunk_7
