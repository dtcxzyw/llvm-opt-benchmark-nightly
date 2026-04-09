inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 11 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph632.preheader

.lr.ph632.preheader:                              ; preds = %bb.a
  %2 = ptrtoint ptr %0 to i64
  %3 = add i64 %1, %2                             ; 2 uses
  br label %.lr.ph632

.lr.ph632:                                        ; preds = %.lr.ph632.preheader, %.critedge10
  %.067630 = phi ptr [ %.7, %.critedge10 ], [ %0, %.lr.ph632.preheader ] ; 4 uses
  %.067630640 = ptrtoint ptr %.067630 to i64
  %i.b = load i8, ptr %.067630, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 10
  %spec.select.idx = zext i1 %i.c to i64
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 3 uses
  %i.p = icmp ult ptr %i.o, %i.a
  br i1 %i.p, label %.lr.ph.preheader, label %.critedge81

.lr.ph.preheader:                                 ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %.067630, i64 %3
  %4 = sub i64 0, %.067630640
  %scevgep641 = getelementptr i8, ptr %scevgep, i64 %4 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.2608 = phi ptr [ %i.s, %.critedge2 ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %i.q = load i8, ptr %.2608, align 1, !tbaa !14
  switch i8 %i.q, label %.critedge81 [
    i8 32, label %.critedge2
end_hunk_1
begin_hunk_2_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
  br i1 %i.r, label %.lr.ph613, label %.critedge81

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.2608, i64 1 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.a
  br i1 %i.t, label %.lr.ph, label %.critedge81, !llvm.loop !23

end_hunk_2
begin_hunk_3_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
  br i1 %i.v, label %.lr.ph616, label %._crit_edge.thread659

.critedge6:                                       ; preds = %.lr.ph613, %.lr.ph613
  %.3 = getelementptr inbounds nuw i8, ptr %.3612, i64 1 ; 2 uses
  %i.w = icmp ult ptr %.3, %i.a
  br i1 %i.w, label %.lr.ph613, label %.critedge81, !llvm.loop !25

end_hunk_3
begin_hunk_4_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
  ]

.critedge4:                                       ; preds = %.lr.ph616
  %i.y = getelementptr inbounds nuw i8, ptr %.4615, i64 1 ; 3 uses
  %i.z = icmp ult ptr %i.y, %i.a
  br i1 %i.z, label %.lr.ph616thread-pre-split, label %._crit_edge.thread659, !llvm.loop !26

._crit_edge.thread659:                            ; preds = %.lr.ph616, %.lr.ph616, %.lr.ph616, %.lr.ph616, %.critedge4, %.critedge4.preheader
  %.4.lcssa = phi ptr [ %.3612, %.critedge4.preheader ], [ %scevgep641, %.critedge4 ], [ %.4615, %.lr.ph616 ], [ %.4615, %.lr.ph616 ], [ %.4615, %.lr.ph616 ], [ %.4615, %.lr.ph616 ]
  %i.aa = ptrtoint ptr %.4.lcssa to i64
  %i.ab = ptrtoint ptr %.3612 to i64
  %i.ac = sub i64 %i.aa, %i.ab
end_hunk_4
begin_hunk_5_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
  ]

.critedge81:                                      ; preds = %.critedge2, %.lr.ph, %.critedge6, %bb.g, %.preheader, %bb.c, %bb.d, %bb.f, %bb.e, %bb.b, %.lr.ph632
  %.5 = phi ptr [ %spec.select, %.lr.ph632 ], [ %i.g, %bb.c ], [ %scevgep641, %.critedge6 ], [ %spec.select, %bb.b ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.g, %bb.d ], [ %.3611, %.preheader ], [ %i.o, %bb.g ], [ %scevgep641, %.critedge2 ], [ %.2608, %.lr.ph ] ; 5 uses
  %i.ad = icmp ult ptr %.5, %i.a
  br i1 %i.ad, label %.lr.ph626.preheader, label %.critedge10

.lr.ph626.preheader:                              ; preds = %.critedge81
  %.5647 = ptrtoint ptr %.5 to i64
  %scevgep646 = getelementptr i8, ptr %.5, i64 %3
  %5 = sub i64 0, %.5647
  %scevgep648 = getelementptr i8, ptr %scevgep646, i64 %5 ; 2 uses
  br label %.lr.ph626

.lr.ph626:                                        ; preds = %.lr.ph626.preheader, %bb.h
  %.6625 = phi ptr [ %i.af, %bb.h ], [ %.5, %.lr.ph626.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.6625, align 1, !tbaa !14
  %.not80 = icmp eq i8 %i.ae, 10
  br i1 %.not80, label %.critedge10, label %bb.h

bb.h:                                             ; preds = %.lr.ph626
  %i.af = getelementptr inbounds nuw i8, ptr %.6625, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.af, %scevgep648
  br i1 %exitcond.not, label %.critedge10, label %.lr.ph626, !llvm.loop !27

.critedge10:                                      ; preds = %bb.h, %.lr.ph626, %.critedge81
  %.7 = phi ptr [ %.5, %.critedge81 ], [ %scevgep648, %bb.h ], [ %.6625, %.lr.ph626 ] ; 2 uses
  %i.ag = icmp ult ptr %.7, %i.a
  br i1 %i.ag, label %.lr.ph632, label %._crit_edge.thread, !llvm.loop !28

end_hunk_5
