inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br i1 %.not81, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  br label %bb.b

._crit_edge85:                                    ; preds = %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph84, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit
  %.082 = phi ptr [ %0, %.lr.ph84 ], [ %.6104, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.b, ptr %5, align 8, !tbaa !178
  store i32 0, ptr %i.c, align 8, !tbaa !156
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  ]

.preheader60:                                     ; preds = %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph.a, !llvm.loop !185

.preheader:                                       ; preds = %bb.b
  br i1 %.not4172, label %._crit_edge, label %.lr.ph75
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph68, !llvm.loop !185

.lr.ph68:                                         ; preds = %_ZL12isWhitespacec.exit
  br label %bb.c, !llvm.loop !185

bb.c:                                             ; preds = %.lr.ph68, %bb.d
  %.167 = phi ptr [ %.082, %.lr.ph68 ], [ %i.g, %bb.d ] ; 3 uses
  %i.f = load i8, ptr %.167, align 1, !tbaa !18
  switch i8 %i.f, label %..critedge.loopexit_crit_edge70 [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 9, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  ], !llvm.loop !185

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.167, i64 1 ; 3 uses
  %.not46 = icmp eq ptr %i.g, %i.a
  br i1 %.not46, label %..critedge.loopexit_crit_edge.a, label %bb.c, !llvm.loop !186

thread-pre-split:                                 ; preds = %.lr.ph.a
  %.pr.a = load i8, ptr %i.h, align 1, !tbaa !18
  %.not45 = icmp eq i8 %.pr.a, 10
  br i1 %.not45, label %..critedge.loopexit61_crit_edge64, label %.lr.ph.a, !llvm.loop !185

.lr.ph.a:                                         ; preds = %.preheader60, %thread-pre-split
  %.263111 = phi ptr [ %i.h, %thread-pre-split ], [ %.082, %.preheader60 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.263111, i64 1 ; 4 uses
  %.not44 = icmp eq ptr %i.h, %i.a
  br i1 %.not44, label %..critedge.loopexit61_crit_edge64, label %thread-pre-split, !llvm.loop !187

.lr.ph75thread-pre-split:                         ; preds = %bb.m
  %.pr102 = load i8, ptr %i.aj, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a

._crit_edge.loopexit:                             ; preds = %.lr.ph75, %bb.m
  %i.ak = phi i32 [ %i.ai, %bb.m ], [ %i.j, %.lr.ph75 ]
  %.034.lcssa.ph = phi ptr [ %.135, %bb.m ], [ %.03473, %.lr.ph75 ]
  %.3.lcssa.ph = phi ptr [ %i.aj, %bb.m ], [ %.374, %.lr.ph75 ]
  %.pre = load i32, ptr %i.d, align 4, !tbaa !179
  %i.al = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %6 = phi i32 [ 0, %.preheader ], [ %i.ak, %._crit_edge.loopexit ] ; 2 uses
  %i.am = phi i64 [ 128, %.preheader ], [ %i.al, %._crit_edge.loopexit ]
  %.034.lcssa = phi ptr [ %.082, %.preheader ], [ %.034.lcssa.ph, %._crit_edge.loopexit ] ; 3 uses
  %.3.lcssa = phi ptr [ %.082, %.preheader ], [ %.3.lcssa.ph, %._crit_edge.loopexit ] ; 4 uses
  %7 = ptrtoint ptr %.3.lcssa to i64
  %8 = ptrtoint ptr %.034.lcssa to i64
  %i.an = sub i64 %7, %8                          ; 4 uses
  %i.ao = zext i32 %6 to i64                      ; 2 uses
  %i.ap = sub nsw i64 %i.am, %i.ao
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

end_hunk_4
begin_hunk_5_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.pre7.i.i48 = phi i32 [ %.pre7.pre.i.i51, %bb.n ], [ %6, %._crit_edge ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.034.lcssa, %.3.lcssa
  %.pre90 = load ptr, ptr %5, align 8, !tbaa !178 ; 2 uses
  br i1 %.not.i.i.i49, label %.critedge, label %bb.p
end_hunk_5
begin_hunk_6_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  %.pre89 = load ptr, ptr %5, align 8, !tbaa !178
  br label %.critedge

..critedge.loopexit_crit_edge.a:                  ; preds = %bb.d
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

..critedge.loopexit_crit_edge70:                  ; preds = %bb.c
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

..critedge.loopexit61_crit_edge64:                ; preds = %.lr.ph.a, %thread-pre-split
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

.critedge:                                        ; preds = %bb.p, %bb.o
end_hunk_6
begin_hunk_7_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  call void @free(ptr noundef %.pre91) #29
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %.preheader60, %..critedge.loopexit61_crit_edge64, %..critedge.loopexit_crit_edge70, %..critedge.loopexit_crit_edge.a, %_ZL12isWhitespacec.exit, %.critedge, %bb.q
  %.6104 = phi ptr [ %.3.lcssa, %bb.q ], [ %.3.lcssa, %.critedge ], [ %.082, %.preheader60 ], [ %i.h, %..critedge.loopexit61_crit_edge64 ], [ %.082, %_ZL12isWhitespacec.exit ], [ %.167, %..critedge.loopexit_crit_edge70 ], [ %i.g, %..critedge.loopexit_crit_edge.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.not = icmp eq ptr %.6104, %i.a
  br i1 %.not, label %._crit_edge85, label %bb.b
}

end_hunk_7
