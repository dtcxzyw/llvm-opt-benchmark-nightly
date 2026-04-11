inline.NumInlined: 103
inline.NumDeleted: 34
begin_hunk_0_@redisProcessCallbacks:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
end_hunk_0
begin_hunk_1_@redisProcessCallbacks:bb.a
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = icmp eq i32 %i.ej, 112                  ; 2 uses
  %..i = select i1 %i.ek, i64 440, i64 432
  %.046.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %.046.i = load ptr, ptr %.046.in.i, align 8, !tbaa !128 ; 12 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !113 ; 3 uses
end_hunk_1
begin_hunk_2_@redisProcessCallbacks:bb.a
  br i1 %i.gm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gn = load i32, ptr %i.f, align 8, !tbaa !63
  %i.go = add nsw i32 %i.gn, -1
  store i32 %i.go, ptr %i.f, align 8, !tbaa !63
  br label %dictDelete.exit.i

bb.ax:                                            ; preds = %bb.av
end_hunk_2
begin_hunk_3_@redisProcessCallbacks:bb.a
  br i1 %i.jc, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !33
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %bb.bm, label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %i.jh = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !33
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.jl = load i32, ptr %i.f, align 8, !tbaa !63
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bo, label %bb.bw

end_hunk_3
begin_hunk_4_@redisProcessCallbacks:bb.a
  %i.jo = and i32 %i.jn, -33
  store i32 %i.jo, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.jp = load ptr, ptr %i.g, align 8, !tbaa !83  ; 2 uses
  %.not.i5878.i = icmp eq ptr %i.jp, null
  br i1 %.not.i5878.i, label %__redisShiftCallback.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bo, %__redisPushCallback.exit.i
  %i.jq = phi ptr [ %i.kb, %__redisPushCallback.exit.i ], [ %i.jp, %bb.bo ] ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !84
  store ptr %i.jr, ptr %i.g, align 8, !tbaa !83
  %i.js = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.jt = icmp eq ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bp, label %bb.bq
end_hunk_4
begin_hunk_5_@redisProcessCallbacks:bb.a
  br label %__redisPushCallback.exit.i

__redisPushCallback.exit.i:                       ; preds = %bb.bv, %bb.bq
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !83  ; 2 uses
  %.not.i58.i = icmp eq ptr %i.kb, null
  br i1 %.not.i58.i, label %__redisShiftCallback.exit.i, label %.lr.ph.i

end_hunk_5
begin_hunk_6_@redisProcessCallbacks:bb.a
  br label %__redisGetSubscribeCallback.exit

.thread.i:                                        ; preds = %bb.ag, %bb.af, %bb.ae
  %i.kc = load ptr, ptr %i.g, align 8, !tbaa !83  ; 7 uses
  %.not.i62.i = icmp eq ptr %i.kc, null
  br i1 %.not.i62.i, label %__redisGetSubscribeCallback.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %.thread.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !84
  store ptr %i.kd, ptr %i.g, align 8, !tbaa !83
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.kf = icmp eq ptr %i.kc, %i.ke
  br i1 %i.kf, label %bb.by, label %bb.bz
end_hunk_6
