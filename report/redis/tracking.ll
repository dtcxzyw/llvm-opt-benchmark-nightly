begin_hunk_0_@sendTrackingMessage:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %i.av, ptr noundef nonnull @sendReplyToClient, i32 noundef 0) #9 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
end_hunk_0
begin_hunk_1_@trackingRememberKeyToBroadcast:bb.a
  br i1 %.not7, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = call i32 @raxInsert(ptr noundef %i.k, ptr noundef %1, i64 noundef %2, ptr noundef %0, ptr noundef null) #9 ; 0 uses
  br label %.backedge
end_hunk_1
begin_hunk_2_@trackingRememberKeyToBroadcast:bb.a
.backedge:                                        ; preds = %bb.e, %bb.b, %bb.d
  %i.m = call i32 @raxNext(ptr noundef nonnull %3) #9
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !113

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @raxStop(ptr noundef nonnull %3) #9
end_hunk_2
begin_hunk_3_@trackingInvalidateKey:bb.a
  %.0.copyload = load i64, ptr %i.ac, align 1
  %i.ad = call ptr @lookupClientByID(i64 noundef %.0.copyload) #9 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %bb.m, !llvm.loop !114

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = and i64 %i.ag, 10737418240
  %or.cond = icmp eq i64 %i.ah, 2147483648
  br i1 %or.cond, label %bb.n, label %bb.x, !llvm.loop !114

bb.n:                                             ; preds = %bb.m
  %i.ai = and i64 %i.ag, 137438953472
end_hunk_3
begin_hunk_4_@trackingInvalidateKey:bb.a
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8 ; 2 uses
  %i.ak = icmp eq ptr %i.ad, %i.aj                ; 2 uses
  %or.cond33 = select i1 %.not30, i1 %i.ak, i1 false
  br i1 %or.cond33, label %bb.x, label %bb.o, !llvm.loop !114

bb.o:                                             ; preds = %bb.n
  br i1 %i.ak, label %bb.p, label %bb.r
end_hunk_4
begin_hunk_5_@trackingInvalidateKey:bb.a

bb.q:                                             ; preds = %bb.p
  call void @incrRefCount(ptr noundef %1) #9
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7904), align 8, !tbaa !115
  %i.ap = call ptr @listAddNodeTail(ptr noundef %i.ao, ptr noundef %1) #9 ; 0 uses
  br label %bb.x

end_hunk_5
begin_hunk_6_@trackingHandlePendingKeyInvalidations
define dso_local void @trackingHandlePendingKeyInvalidations() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7904), align 8, !tbaa !115 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !116
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1528), align 8
  %i.f = icmp ne i32 %i.e, 0
end_hunk_6
begin_hunk_7_@trackingHandlePendingKeyInvalidations:bb.a
.lr.ph:                                           ; preds = %bb.b, %bb.r
  %i.h = phi ptr [ %i.ay, %bb.r ], [ %i.g, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 3 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !119 ; 4 uses
  %.not9 = icmp eq ptr %i.k, null
  %.not11 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %.not9, label %bb.p, label %bb.c
end_hunk_7
begin_hunk_8_@trackingHandlePendingKeyInvalidations:bb.a
bb.r:                                             ; preds = %.thread, %bb.q, %bb.p
  %i.ay = call ptr @listNext(ptr noundef nonnull %0) #9 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.r, %bb.b
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7904), align 8, !tbaa !115
  call void @listEmpty(ptr noundef %i.az) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br label %bb.s
end_hunk_8
begin_hunk_9_@trackingInvalidateKeysOnFlush:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !121
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #9
  %i.c = call ptr @listNext(ptr noundef nonnull %1) #9 ; 2 uses
  %.not812 = icmp eq ptr %i.c, null
end_hunk_9
begin_hunk_10_@trackingInvalidateKeysOnFlush:bb.a
.lr.ph:                                           ; preds = %bb.b, %bb.k
  %i.d = phi ptr [ %i.aj, %bb.k ], [ %i.c, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = and i64 %i.h, 2147483648
end_hunk_10
begin_hunk_11_@trackingInvalidateKeysOnFlush:bb.a
  br i1 %.not11, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !119
  %i.k = icmp eq ptr %i.f, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7904), align 8, !tbaa !115
  %i.m = call ptr @listAddNodeTail(ptr noundef %i.l, ptr noundef null) #9 ; 0 uses
  br label %bb.k

end_hunk_11
begin_hunk_12_@trackingInvalidateKeysOnFlush:bb.a
bb.k:                                             ; preds = %bb.d, %sdslen.exit, %.lr.ph
  %i.aj = call ptr @listNext(ptr noundef nonnull %1) #9 ; 2 uses
  %.not8 = icmp eq ptr %i.aj, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.k, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
end_hunk_12
begin_hunk_13_@trackingLimitUsedSlots:bb.a
bb.f:                                             ; preds = %bb.e
  store i32 0, ptr @trackingLimitUsedSlots.timeout_counter, align 4, !tbaa !9
  call void @raxStop(ptr noundef nonnull %0) #9
  br label %bb.g, !llvm.loop !123

._crit_edge:                                      ; preds = %.critedge, %.lr.ph, %bb.d
  call void @raxStop(ptr noundef nonnull %0) #9
end_hunk_13
begin_hunk_14_@trackingBuildBroadcastReply:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.02333 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112
  %.not27 = icmp ne ptr %i.g, %0
  %i.h = zext i1 %.not27 to i64
  %spec.select = add i64 %.02333, %i.h            ; 3 uses
  %i.i = call i32 @raxNext(ptr noundef nonnull %2) #9
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.d
  call void @raxStop(ptr noundef nonnull %2) #9
end_hunk_14
begin_hunk_15_@trackingBuildBroadcastReply:bb.a
bb.f:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %bb.g, label %.split35.us37, !llvm.loop !125

.split35.us37:                                    ; preds = %bb.f
  %i.y = load i64, ptr %i.u, align 8, !tbaa !47
end_hunk_15
begin_hunk_16_@trackingBuildBroadcastReply:bb.a
  %i.af = load i64, ptr %i.u, align 8, !tbaa !47
  %i.ag = call ptr @sdscatlen(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %i.af) #9
  %i.ah = call ptr @sdscatlen(ptr noundef %i.ag, ptr noundef nonnull @.str.12, i64 noundef 2) #9
  br label %.outer.us, !llvm.loop !125

bb.g:                                             ; preds = %.outer.us, %bb.f
  %i.ai = call i32 @raxNext(ptr noundef nonnull %2) #9
end_hunk_16
begin_hunk_17_@trackingBuildBroadcastReply:bb.a
  %i.at = call ptr @sdscatlen(ptr noundef %i.as, ptr noundef nonnull @.str.12, i64 noundef 2) #9 ; 2 uses
  %i.au = call i32 @raxNext(ptr noundef nonnull %2) #9
  %.not28.us = icmp eq i32 %i.au, 0
  br i1 %.not28.us, label %.split.us, label %.split35.us, !llvm.loop !125

.split.us:                                        ; preds = %bb.g, %.split35.us, %.split36
  %.us-phi = phi ptr [ %i.at, %.split35.us ], [ %i.r, %.split36 ], [ %.0.ph.us, %bb.g ]
end_hunk_17
begin_hunk_18_@trackingBroadcastInvalidationMessages:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %bb.t
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !112  ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = call i64 @raxSize(ptr noundef %i.k) #9
  %.not18 = icmp eq i64 %i.l, 0
end_hunk_18
begin_hunk_19_@trackingBroadcastInvalidationMessages:bb.a
bb.s:                                             ; preds = %bb.f, %sdslen.exit, %sdslen.exit24
  %i.bc = call i32 @raxNext(ptr noundef nonnull %1) #9
  %.not19 = icmp eq i32 %i.bc, 0
  br i1 %.not19, label %._crit_edge, label %bb.e, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.s, %bb.d
  call void @raxStop(ptr noundef nonnull %1) #9
end_hunk_19
begin_hunk_20_@trackingBroadcastInvalidationMessages:bb.a
  store ptr %i.be, ptr %i.j, align 8, !tbaa !52
  %i.bf = call i32 @raxNext(ptr noundef nonnull %0) #9
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge29, label %bb.c, !llvm.loop !127

._crit_edge29:                                    ; preds = %bb.t, %bb.b
  call void @raxStop(ptr noundef nonnull %0) #9
end_hunk_20
begin_hunk_21_@bcmp
!109 = !{!"connection", !60, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !82, i64 20, !82, i64 22, !82, i64 24, !15, i64 32, !58, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!110 = !{!111, !15, i64 152}
!111 = !{!"ConnectionType", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240}
!112 = !{!44, !15, i64 24}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !54}
!115 = !{!56, !29, i64 7904}
!116 = !{!117, !18, i64 40}
!117 = !{!"list", !36, i64 0, !36, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !18, i64 40}
!118 = !{!38, !15, i64 16}
!119 = !{!56, !14, i64 1496}
!120 = distinct !{!120, !54}
!121 = !{!56, !29, i64 1440}
!122 = distinct !{!122, !54}
!123 = distinct !{!123, !54}
!124 = distinct !{!124, !54}
!125 = distinct !{!125, !54}
!126 = distinct !{!126, !54}
!127 = distinct !{!127, !54}
end_hunk_21
