inline.NumInlined: 36
inline.NumDeleted: 21
begin_hunk_0_@simplequeue_new:bb.a
bb.f:                                             ; preds = %bb.e, %.thread, %.thread23
  %i.r = getelementptr i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = tail call ptr %i.s(ptr noundef %0, i64 noundef 0) #7, !inline_history !47 ; 10 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %simplequeue_new_impl.exit, label %bb.g

end_hunk_0
begin_hunk_1_@_queue_SimpleQueue_get:bb.a

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !48
  %i.c = add i64 %.val, %3
  br label %bb.c

end_hunk_1
begin_hunk_2_@_queue_SimpleQueue_get_nowait:bb.a

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !48
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

end_hunk_2
begin_hunk_3_@_queue_SimpleQueue_put:bb.a

.thread45:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !48
  %i.c = add i64 %.val, %2
  br label %bb.c

end_hunk_3
begin_hunk_4_@_queue_SimpleQueue___sizeof__
define internal ptr @_queue_SimpleQueue___sizeof__(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load i64, ptr %i.a, align 8, !tbaa !49
  %i.b = shl i64 %.val, 3
  %i.c = add i64 %i.b, 72
  %i.d = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.c) #7
end_hunk_4
begin_hunk_5_@_queue_SimpleQueue_get_impl:bb.a
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_5
begin_hunk_6_@_queue_SimpleQueue_get_impl:bb.a

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i8 1, ptr %i.b, align 1, !tbaa !51
  store i8 1, ptr %i.n, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.o = call i32 @_PyParkingLot_Park(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef -1, ptr noundef nonnull %i.c, i32 noundef 1) #7
end_hunk_6
begin_hunk_7_@_queue_SimpleQueue_get_impl:bb.a
  store i64 %i.y, ptr %i.t, align 8, !tbaa !30
  store i64 0, ptr %i.ac, align 8, !tbaa !31
  %i.at = load i64, ptr %i.l, align 8, !tbaa !29  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !53
  br label %RingBuf_Get.exit

RingBuf_Get.exit:                                 ; preds = %._crit_edge, %bb.i, %bb.j, %bb.o
end_hunk_7
begin_hunk_8_@_queue_SimpleQueue_get_impl:bb.a

bb.q:                                             ; preds = %.lr.ph.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i8 1, ptr %i.b, align 1, !tbaa !51
  store i8 1, ptr %i.n, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.bp = call i32 @_PyParkingLot_Park(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.bf, ptr noundef nonnull %i.c, i32 noundef 1) #7
end_hunk_8
begin_hunk_9_@_queue_SimpleQueue_put_impl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store ptr %0, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
end_hunk_9
begin_hunk_10_@_queue_SimpleQueue_put_impl:bb.a
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  store ptr %1, ptr %i.b, align 8, !tbaa !56
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !52, !range !57, !noundef !58
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %_Py_NewRef.exit
  call void @_PyParkingLot_Unpark(ptr noundef nonnull %i.f, ptr noundef nonnull @maybe_handoff_item, ptr noundef nonnull %2) #7
  %.pre = load i8, ptr %2, align 8, !tbaa !59, !range !57
  %i.i = trunc nuw i8 %.pre to i1
  br i1 %i.i, label %RingBuf_Put.exit.thread, label %.thread

end_hunk_10
begin_hunk_11_@_queue_SimpleQueue_put_impl:bb.a
  store i64 %i.q, ptr %i.m, align 8, !tbaa !30
  store i64 0, ptr %i.w, align 8, !tbaa !31
  %i.an = load i64, ptr %i.k, align 8, !tbaa !29  ; 2 uses
  store i64 %i.an, ptr %i.j, align 8, !tbaa !53
  br label %RingBuf_Put.exit

resize_ringbuf.exit.i:                            ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_queue_SimpleQueue_put_impl:bb.a
  %i.at = phi i64 [ %i.q, %bb.j ], [ %i.l, %bb.d ], [ %i.n, %.thread ]
  %i.au = getelementptr i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %1, ptr %i.ax, align 8, !tbaa !23
  %i.ay = add i64 %i.aw, 1
  %i.az = srem i64 %i.ay, %i.at
  store i64 %i.az, ptr %i.j, align 8, !tbaa !53
  %i.ba = add i64 %i.as, 1
  store i64 %i.ba, ptr %i.k, align 8, !tbaa !29
  br label %RingBuf_Put.exit.thread
end_hunk_12
begin_hunk_13_@maybe_handoff_item:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  store ptr %i.c, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  store i8 %storemerge, ptr %0, align 8, !tbaa !59
  %i.d = icmp ne i32 %2, 0
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = zext i1 %i.d to i8
  store i8 %i.h, ptr %i.g, align 8, !tbaa !52
  ret void
}

end_hunk_13
begin_hunk_14_@llvm.smin.i64
!44 = distinct !{!44, !33}
!45 = !{!37, !14, i64 296}
!46 = !{!37, !14, i64 304}
!47 = distinct !{null}
!48 = !{!38, !17, i64 16}
!49 = !{!35, !17, i64 48}
!50 = !{!17, !17, i64 0}
!51 = !{!16, !16, i64 0}
!52 = !{!35, !16, i64 16}
!53 = !{!26, !17, i64 0}
!54 = !{!55, !14, i64 8}
!55 = !{!"", !16, i64 0, !14, i64 8, !15, i64 16}
!56 = !{!55, !15, i64 16}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!55, !16, i64 0}
end_hunk_14
