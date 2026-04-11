inline.NumInlined: 552
inline.NumDeleted: 106
begin_hunk_0_@_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb:bb.a
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14btQuantizedBvh, i64 16), ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 275, ptr %i.ae, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb:bb.a
.thread:                                          ; preds = %.lr.ph194, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE20initializeFromBufferEPvii.exit
  %i.bk = sext i32 %i.z to i64
  %i.bl = shl nsw i64 %i.bk, 4
  %.0135220 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bl
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit: ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb:bb.a
.thread224:                                       ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit
  %i.bm = sext i32 %i.z to i64
  %i.bn = shl nsw i64 %i.bm, 6
  %.0135228 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bn
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit

.lr.ph.preheader:                                 ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE20initializeFromBufferEPvii.exit
end_hunk_2
begin_hunk_3_@_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb:bb.a
  %.pre211.pre = load i8, ptr %i.av, align 8, !range !44
  %i.ci = trunc nuw i8 %.pre211.pre to i1
  %i.cj = zext nneg i32 %i.z to i64
  %i.ck = shl nuw nsw i64 %i.cj, 6
  %.0135 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ck ; 2 uses
  %.not.i.i.i180 = icmp ne ptr %.pre210.pre, null
  %or.cond.i.i181 = select i1 %.not.i.i.i180, i1 %i.ci, i1 false
  br i1 %or.cond.i.i181, label %bb.g, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit
end_hunk_3
begin_hunk_4_@_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb:bb.a
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE20initializeFromBufferEPvii.exit: ; preds = %.thread224, %.thread, %bb.f, %bb.g
  %.0135223 = phi ptr [ %.0135220, %.thread ], [ %.0135, %bb.f ], [ %.0135, %bb.g ], [ %.0135228, %.thread224 ] ; 2 uses
  %i.cl = phi i32 [ %i.t, %.thread ], [ %.pre209.pre, %bb.f ], [ %.pre209.pre, %bb.g ], [ %i.t, %.thread224 ] ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !35
  store ptr %.0135223, ptr %i.aw, align 8, !tbaa !36
  store i32 %i.cl, ptr %i.ax, align 4, !tbaa !37
end_hunk_4
