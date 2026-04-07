begin_hunk_0_@je_decay_maybe_advance_epoch:bb.a
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = load ptr, ptr @je_nstime_monotonic, align 8, !tbaa !22
  %i.b = tail call zeroext i1 %i.a() #9
  br i1 %i.b, label %decay_maybe_update_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = tail call i32 @je_nstime_compare(ptr noundef nonnull %i.c, ptr noundef %1) #9
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %decay_maybe_update_time.exit, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @je_nstime_copy(ptr noundef nonnull %i.c, ptr noundef %1) #9
end_hunk_0
begin_hunk_1_@je_decay_maybe_advance_epoch:bb.a

decay_backlog_update.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i64 %spec.select.i, ptr %i.w, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@je_decay_maybe_advance_epoch:bb.a
  %i.ae = add <2 x i64> %i.ac, %vec.phi23         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, 200
  br i1 %i.af, label %decay_backlog_npages_limit.exit, label %vector.body, !llvm.loop !26

decay_backlog_npages_limit.exit:                  ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.ah = lshr i64 %i.ag, 24                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !29
  %. = call i64 @llvm.umax.i64(i64 %i.ah, i64 %2)
  store i64 %., ptr %i.u, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.h

end_hunk_2
begin_hunk_3_@je_decay_ns_until_purge:bb.a
bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 200
  br i1 %exitcond.not.4, label %.loopexit, label %bb.c, !llvm.loop !30

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.not59 = icmp ugt i64 %1, %2
end_hunk_3
begin_hunk_4_@je_decay_ns_until_purge:bb.a
  %i.ao = add <2 x i64> %i.am, %vec.phi102        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, 196
  br i1 %i.ap, label %.preheader.i, label %vector.body, !llvm.loop !31

.preheader.i:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ao, %i.an
end_hunk_4
begin_hunk_5_@je_decay_ns_until_purge:bb.a
  %i.bi = add <2 x i64> %i.bg, %vec.phi113        ; 2 uses
  %index.next118 = add nuw i64 %index111, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next118, 200
  br i1 %i.bj, label %decay_npurge_after_interval.exit64, label %vector.body110, !llvm.loop !32

bb.j:                                             ; preds = %.preheader.i
  %i.bk = shl i64 %i.e, 1
end_hunk_5
begin_hunk_6_@je_decay_ns_until_purge:bb.a
  %i.ca = add <2 x i64> %i.by, %vec.phi145        ; 2 uses
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.cb, label %middle.block151, label %vector.body142, !llvm.loop !33

middle.block151:                                  ; preds = %vector.body142
  %bin.rdx152 = add <2 x i64> %i.ca, %i.bz
end_hunk_6
begin_hunk_7_@je_decay_ns_until_purge:bb.a
  %i.cs = add <2 x i64> %i.cq, %vec.phi126        ; 2 uses
  %index.next134 = add nuw i64 %index124, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next134, %n.vec
  br i1 %i.ct, label %middle.block135, label %vector.body123, !llvm.loop !34

middle.block135:                                  ; preds = %vector.body123
  %bin.rdx136 = add <2 x i64> %i.cs, %i.cr
end_hunk_7
begin_hunk_8_@je_decay_ns_until_purge:bb.a
  %i.da = add i64 %i.cz, %.018.i65                ; 2 uses
  %i.db = add nuw nsw i64 %.01517.i66, 1          ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %i.db, %i.bs
  br i1 %exitcond.not.i67, label %.preheader.i68, label %scalar.ph137, !llvm.loop !35

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.preheader156, %.lr.ph22.i
  %.121.i69 = phi i64 [ %i.dl, %.lr.ph22.i ], [ %.121.i69.ph, %.lr.ph22.i.preheader156 ]
end_hunk_8
begin_hunk_9_@je_decay_ns_until_purge:bb.a
  %i.dl = add i64 %i.dk, %.121.i69                ; 2 uses
  %i.dm = add nuw i64 %.11620.i70, 1              ; 2 uses
  %exitcond26.not.i71 = icmp eq i64 %i.dm, 200
  br i1 %exitcond26.not.i71, label %decay_npurge_after_interval.exit72, label %.lr.ph22.i, !llvm.loop !36

decay_npurge_after_interval.exit72:               ; preds = %.lr.ph22.i, %middle.block135, %.preheader.i68
  %.1.lcssa.i = phi i64 [ %.lcssa, %.preheader.i68 ], [ %i.cu, %middle.block135 ], [ %i.dl, %.lr.ph22.i ]
end_hunk_9
begin_hunk_10_@je_decay_ns_until_purge:bb.a
  %i.dr = add nuw i64 %.051., 2
  %i.ds = icmp ult i64 %i.dr, %..049
  %i.dt = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %decay_npurge_after_interval.exit72
  %i.du = add nuw i64 %..049, %.051.
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!21 = !{!17, !19, i64 112}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !9, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!17, !13, i64 168}
!26 = distinct !{!26, !15, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!17, !13, i64 160}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15, !27, !28}
!32 = distinct !{!32, !15, !27, !28}
!33 = distinct !{!33, !15, !27, !28}
!34 = distinct !{!34, !15, !27, !28}
!35 = distinct !{!35, !15, !28, !27}
!36 = distinct !{!36, !15, !28, !27}
!37 = distinct !{!37, !15}
end_hunk_11
