inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@freeClusterLink:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !105
  %.neg = mul i64 %i.i, -24
  %.neg19 = add i64 %.neg, -48
  %1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.j = add i64 %.neg19, %1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  tail call void @listRelease(ptr noundef %i.g) #32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1_@clusterProcessPacket:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 2260
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = add i32 %i.br, 2264
  %i.bw = add i32 %i.bv, %i.bu
  br label %.thread504

bb.s:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@clusterSendPing:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !9  ; 2 uses
  %i.fw = load i64, ptr %i.ab, align 8, !tbaa !61
  %3 = add i64 %i.fw, 24
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !168
  %i.fz = add i64 %3, %i.fy
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !168
  %i.ga = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.gb = add i64 %i.ga, 24                       ; 2 uses
end_hunk_2
begin_hunk_3_@clusterSendUpdate:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !9   ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !61
  %2 = add i64 %i.ab, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !168
  %i.ae = add i64 %2, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !168
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.ag = add i64 %i.af, 24                       ; 2 uses
end_hunk_3
begin_hunk_4_@clusterSendMessage:bb.a
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !9
  %i.s = load i64, ptr %1, align 8, !tbaa !61
  %2 = add i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !168
  %i.v = add i64 %2, %i.u
  store i64 %i.v, ptr %i.t, align 8, !tbaa !168
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.x = add i64 %i.w, 24
end_hunk_4
begin_hunk_5_@clusterBroadcastMessage:bb.a
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.f, align 8, !tbaa !9
  %i.ae = load i64, ptr %0, align 8, !tbaa !61
  %2 = add i64 %i.ae, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !168
  %i.ah = add i64 %2, %i.ag
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !168
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.aj = add i64 %i.ai, 24
end_hunk_5
begin_hunk_6_@clusterCreatePublishMsgBlock:bb.a
sdslen.exit25:                                    ; preds = %sdslen.exit, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i24 = phi i64 [ %i.ak, %bb.k ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ 0, %sdslen.exit ] ; 2 uses
  %i.al = trunc i64 %.0.i24 to i32
  %3 = add i64 %.0.i, 8
  %i.am = add i64 %3, %.0.i24
  %i.an = zext i16 %2 to i32
  %i.ao = trunc i64 %i.am to i32
  %i.ap = add i32 %i.ao, 2256
  %i.aq = tail call fastcc ptr @createClusterMsgSendBlock(i32 noundef %i.an, i32 noundef %i.ap) ; 4 uses
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.t)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 2272
end_hunk_6
begin_hunk_7_@clusterSendModule:bb.a
  %i.y = load i32, ptr %i.x, align 8, !tbaa !9
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !61
  %5 = add i64 %i.aa, 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !168
  %i.ad = add i64 %5, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !168
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.af = add i64 %i.ae, 24
end_hunk_7
begin_hunk_8_@clusterPropagatePublish:bb.a
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.v, align 8, !tbaa !9
  %i.av = load i64, ptr %i.s, align 8, !tbaa !61
  %4 = add i64 %i.av, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !168
  %i.ay = add i64 %4, %i.ax
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !168
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.ba = add i64 %i.az, 24
end_hunk_8
begin_hunk_9_@clusterSendFailoverAuth:bb.a
  %i.u = load i32, ptr %i.t, align 8, !tbaa !9
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  %i.w = load i64, ptr %i.c, align 8, !tbaa !61
  %1 = add i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = add i64 %1, %i.y
  store i64 %i.z, ptr %i.x, align 8, !tbaa !168
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.ab = add i64 %i.aa, 24
end_hunk_9
begin_hunk_10_@clusterSendMFStart:bb.a
  %i.u = load i32, ptr %i.t, align 8, !tbaa !9
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  %i.w = load i64, ptr %i.c, align 8, !tbaa !61
  %1 = add i64 %i.w, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = add i64 %1, %i.y
  store i64 %i.z, ptr %i.x, align 8, !tbaa !168
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.ab = add i64 %i.aa, 24
end_hunk_10
begin_hunk_11_@clusterHandleSlaveFailover:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call i64 @mstime() #32
  %0 = add nsw i64 %i.bd, 500
  %i.be = tail call i64 @random() #32
  %i.bf = srem i64 %i.be, 500
  %i.bg = add nsw i64 %0, %i.bf
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 393304
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !123
end_hunk_11
