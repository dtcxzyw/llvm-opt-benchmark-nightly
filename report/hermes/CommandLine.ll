inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br i1 %.not81, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %6 = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %7 = add i64 %1, %6                             ; 2 uses
  br label %bb.b

._crit_edge85:                                    ; preds = %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph84, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit
  %.082 = phi ptr [ %0, %.lr.ph84 ], [ %.6109, %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit ] ; 13 uses
  %.08289 = ptrtoint ptr %.082 to i64             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.b, ptr %5, align 8, !tbaa !178
  store i32 0, ptr %i.c, align 8, !tbaa !156
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  ]

.preheader60:                                     ; preds = %bb.b
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph, !llvm.loop !185

.lr.ph:                                           ; preds = %.preheader60
  %scevgep = getelementptr i8, ptr %.082, i64 %7
  %8 = sub i64 0, %.08289
  %scevgep90 = getelementptr i8, ptr %scevgep, i64 %8
  br label %thread-pre-split, !llvm.loop !185

.preheader:                                       ; preds = %bb.b
  br i1 %.not4172, label %._crit_edge, label %.lr.ph75
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br i1 %.not4172, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %.lr.ph68, !llvm.loop !185

.lr.ph68:                                         ; preds = %_ZL12isWhitespacec.exit
  %scevgep91 = getelementptr i8, ptr %.082, i64 %7
  %9 = sub i64 0, %.08289
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %9
  br label %bb.c, !llvm.loop !185

bb.c:                                             ; preds = %.lr.ph68, %bb.d
  %.167 = phi ptr [ %.082, %.lr.ph68 ], [ %i.g, %bb.d ] ; 3 uses
  %i.f = load i8, ptr %.167, align 1, !tbaa !18
  switch i8 %i.f, label %..critedge.loopexit_crit_edge.a [
    i8 32, label %bb.d
    i8 13, label %bb.d
    i8 9, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  ], !llvm.loop !185

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.167, i64 1 ; 2 uses
  %.not46 = icmp eq ptr %i.g, %i.a
  br i1 %.not46, label %..critedge.loopexit_crit_edge, label %bb.c, !llvm.loop !186

thread-pre-split:                                 ; preds = %.lr.ph, %.lr.ph.a
  %.263 = phi ptr [ %.082, %.lr.ph ], [ %i.h, %.lr.ph.a ] ; 3 uses
  %.pr.a = load i8, ptr %.263, align 1, !tbaa !18
  %.not45 = icmp eq i8 %.pr.a, 10
  br i1 %.not45, label %..critedge.loopexit61_crit_edge64, label %.lr.ph.a, !llvm.loop !185

.lr.ph.a:                                         ; preds = %thread-pre-split
  %i.h = getelementptr inbounds nuw i8, ptr %.263, i64 1 ; 2 uses
  %.not44 = icmp eq ptr %i.h, %i.a
  br i1 %.not44, label %..critedge.loopexit_crit_edge70, label %thread-pre-split, !llvm.loop !187

.lr.ph75thread-pre-split:                         ; preds = %bb.m
  %.pr102 = load i8, ptr %i.aj, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a

._crit_edge.loopexit:                             ; preds = %.lr.ph75, %bb.m
  %i.ak = phi i32 [ %i.ai, %bb.m ], [ %i.j, %.lr.ph75 ]
  %.034.lcssa.ph = phi ptr [ %.135, %bb.m ], [ %.03473, %.lr.ph75 ] ; 2 uses
  %.3.lcssa.ph = phi ptr [ %i.aj, %bb.m ], [ %.374, %.lr.ph75 ] ; 2 uses
  %.pre = load i32, ptr %i.d, align 4, !tbaa !179
  %.pre96 = ptrtoint ptr %.3.lcssa.ph to i64
  %.pre97 = ptrtoint ptr %.034.lcssa.ph to i64
  %i.al = zext i32 %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi98 = phi i64 [ %.pre97, %._crit_edge.loopexit ], [ %.08289, %.preheader ]
  %i.am = phi i64 [ %.pre96, %._crit_edge.loopexit ], [ %.08289, %.preheader ]
  %10 = phi i32 [ %i.ak, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 2 uses
  %11 = phi i64 [ %i.al, %._crit_edge.loopexit ], [ 128, %.preheader ]
  %.034.lcssa = phi ptr [ %.034.lcssa.ph, %._crit_edge.loopexit ], [ %.082, %.preheader ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3.lcssa.ph, %._crit_edge.loopexit ], [ %.082, %.preheader ] ; 3 uses
  %i.an = sub i64 %i.am, %.pre-phi98              ; 4 uses
  %i.ao = zext i32 %10 to i64                     ; 2 uses
  %i.ap = sub nsw i64 %11, %i.ao
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

end_hunk_4
begin_hunk_5_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.pre7.i.i48 = phi i32 [ %.pre7.pre.i.i51, %bb.n ], [ %10, %._crit_edge ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %.034.lcssa, %.3.lcssa
  %.pre90 = load ptr, ptr %5, align 8, !tbaa !178 ; 2 uses
  br i1 %.not.i.i.i49, label %.critedge, label %bb.p
end_hunk_5
begin_hunk_6_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  %.pre89 = load ptr, ptr %5, align 8, !tbaa !178
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %bb.d
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

..critedge.loopexit_crit_edge.a:                  ; preds = %bb.c
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

..critedge.loopexit_crit_edge70:                  ; preds = %.lr.ph.a
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

..critedge.loopexit61_crit_edge64:                ; preds = %thread-pre-split
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, !llvm.loop !185

.critedge:                                        ; preds = %bb.p, %bb.o
end_hunk_6
begin_hunk_7_@_ZN4llvh2cl18tokenizeConfigFileENS_9StringRefERNS_11StringSaverERNS_15SmallVectorImplIPKcEEb:bb.a
  call void @free(ptr noundef %.pre91) #29
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %.preheader60, %..critedge.loopexit61_crit_edge64, %..critedge.loopexit_crit_edge70, %..critedge.loopexit_crit_edge.a, %..critedge.loopexit_crit_edge, %_ZL12isWhitespacec.exit, %.critedge, %bb.q
  %.6109 = phi ptr [ %.3.lcssa, %bb.q ], [ %.3.lcssa, %.critedge ], [ %.082, %.preheader60 ], [ %.263, %..critedge.loopexit61_crit_edge64 ], [ %scevgep90, %..critedge.loopexit_crit_edge70 ], [ %.167, %..critedge.loopexit_crit_edge.a ], [ %scevgep92, %..critedge.loopexit_crit_edge ], [ %.082, %_ZL12isWhitespacec.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.not = icmp eq ptr %.6109, %i.a
  br i1 %.not, label %._crit_edge85, label %bb.b
}

end_hunk_7
