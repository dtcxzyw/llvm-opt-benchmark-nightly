inline.NumInlined: 195
inline.NumDeleted: 32
begin_hunk_0_@readSyncBulkPayload:bb.a
  br label %useDisklessLoad.exit

useDisklessLoad.exit:                             ; preds = %bb.b, %bb.c, %.thread.i, %bb.e, %bb.f, %bb.g, %bb.h, %.thread6.sink.split.i
  %i.o = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ true, %.thread.i ], [ false, %.thread6.sink.split.i ] ; 3 uses
  %i.p = phi i1 [ false, %bb.g ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.h ], [ false, %.thread.i ], [ true, %.thread6.sink.split.i ] ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7536), align 8, !tbaa !240
  %i.r = icmp eq ptr %0, %i.q
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7688), align 8, !tbaa !241
end_hunk_0
begin_hunk_1_@readSyncBulkPayload:bb.a
  br i1 %i.bc, label %cancelReplicationHandshake.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = select i1 %i.p, ptr @.str.132, ptr @.str.131
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.bd) #20
  br label %cancelReplicationHandshake.exit

end_hunk_1
begin_hunk_2_@readSyncBulkPayload:bb.a
  br i1 %i.bg, label %cancelReplicationHandshake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = select i1 %i.p, ptr @.str.132, ptr @.str.131
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.133, i64 noundef %i.be, ptr noundef nonnull %i.bh) #20
  br label %cancelReplicationHandshake.exit

bb.x:                                             ; preds = %useDisklessLoad.exit
  br i1 %i.o, label %bb.bf, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.b89 = load i1, ptr @readSyncBulkPayload.usemark, align 4
end_hunk_2
begin_hunk_3_@readSyncBulkPayload:bb.a
bb.bi:                                            ; preds = %bb.bh
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.ek = icmp sgt i32 %i.ej, 2
  %or.cond6 = select i1 %i.o, i1 true, i1 %i.ek
  br i1 %or.cond6, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
end_hunk_3
begin_hunk_4_@readSyncBulkPayload:bb.a
bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8
  %i.eo = icmp ne i32 %i.en, 2
  %or.cond4 = select i1 %i.p, i1 true, i1 %i.eo
  br i1 %or.cond4, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_4
begin_hunk_5_@readSyncBulkPayload:bb.a

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) @__const.readSyncBulkPayload.rsi, i64 64, i1 false)
  br i1 %i.o, label %bb.bq, label %bb.cy

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
end_hunk_5
