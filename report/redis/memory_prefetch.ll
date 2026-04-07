begin_hunk_0_@prefetchCommands:bb.a
  br i1 %.not14.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ih = tail call ptr %i.ig(ptr noundef %i.ho) #10 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ih, null
  br i1 %.not15.i.i, label %bb.am, label %bb.al

end_hunk_0
begin_hunk_1_@prefetchCommands:bb.a

prefetchBucket.exit.i:                            ; preds = %bb.an, %bb.am, %bb.ag, %bb.af, %prefetchEntry.exit.i, %bb.z, %bb.y
  %.pre.i = load ptr, ptr @batch, align 8, !tbaa !13
  br label %initBatchInfo.exit.i, !llvm.loop !111

dictPrefetch.exit:                                ; preds = %bb.v, %.preheader, %bb.a, %._crit_edge
  ret void
end_hunk_1
begin_hunk_2_@addCommandToBatch:bb.a
bb.a:
  %i.a = load ptr, ptr @batch, align 8, !tbaa !13 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@addCommandToBatch:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.h, %i.l
  %i.n = icmp ugt i64 %i.m, %i.e
end_hunk_3
begin_hunk_4_@addCommandToBatch:bb.a
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.c
  store ptr %0, ptr %i.r, align 8, !tbaa !60
  %.018.in32 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.01833 = load ptr, ptr %.018.in32, align 8, !tbaa !114 ; 2 uses
  %.not2534 = icmp eq ptr %.01833, null
  br i1 %.not2534, label %.loopexit, label %.lr.ph36

end_hunk_4
begin_hunk_5_@addCommandToBatch:bb.a
  %i.t = phi ptr [ %i.a, %.lr.ph36 ], [ %i.an, %.critedge ] ; 3 uses
  %.01835 = phi ptr [ %.01833, %.lr.ph36 ], [ %.018, %.critedge ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01835, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !115  ; 2 uses
  %i.w = and i32 %i.v, 1
  %.not26 = icmp eq i32 %i.w, 0
  br i1 %.not26, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.01835, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118
  %.not27 = icmp eq ptr %i.y, null
  br i1 %.not27, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.01835, i64 120
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !119
  %.not28 = icmp eq i8 %i.aa, 0
  br i1 %.not28, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.v, 4
  %.not29 = icmp eq i32 %i.ab, 0
  br i1 %.not29, label %bb.k, label %.preheader, !prof !112

.preheader:                                       ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.01835, i64 40 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !120
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %.critedge

end_hunk_5
begin_hunk_6_@addCommandToBatch:bb.a
.critedge:                                        ; preds = %bb.l, %bb.m, %.preheader
  %i.an = phi ptr [ %i.t, %.preheader ], [ %i.aj, %bb.l ], [ %i.bc, %bb.m ]
  %.018.in = getelementptr inbounds nuw i8, ptr %.01835, i64 128
  %.018 = load ptr, ptr %.018.in, align 8, !tbaa !114 ; 2 uses
  %.not25 = icmp eq ptr %.018, null
  br i1 %.not25, label %.loopexit, label %bb.g, !llvm.loop !121

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !124
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77
end_hunk_6
begin_hunk_7_@addCommandToBatch:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ai
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !88
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !127
  %i.ba = load i32, ptr %i.ah, align 4, !tbaa !130
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bb = tail call ptr @kvstoreGetDict(ptr noundef %i.az, i32 noundef %spec.select) #10
  %i.bc = load ptr, ptr @batch, align 8, !tbaa !13 ; 4 uses
end_hunk_7
begin_hunk_8_@addCommandToBatch:bb.a
  %i.bi = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !120
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.l, label %.critedge, !llvm.loop !131

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.i, %.critedge, %bb.f, %bb.e, %bb.b, %bb.c, %bb.a
  %.019 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
end_hunk_8
begin_hunk_9_@llvm.assume
!108 = !{!97, !69, i64 24}
!109 = !{!69, !69, i64 0}
!110 = !{!97, !63, i64 32}
!111 = distinct !{!111, !79}
!112 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!113 = !{!62, !10, i64 148}
!114 = !{!66, !66, i64 0}
!115 = !{!116, !10, i64 112}
!116 = !{!"pendingCommand", !10, i64 0, !10, i64 4, !64, i64 8, !18, i64 16, !35, i64 24, !68, i64 32, !117, i64 40, !35, i64 104, !10, i64 112, !10, i64 116, !11, i64 120, !66, i64 128, !66, i64 136}
!117 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !15, i64 56}
!118 = !{!116, !68, i64 32}
!119 = !{!116, !11, i64 120}
!120 = !{!116, !10, i64 40}
!121 = distinct !{!121, !79}
!122 = !{!116, !64, i64 8}
!123 = !{!116, !15, i64 96}
!124 = !{!125, !10, i64 0}
!125 = !{!"", !10, i64 0, !10, i64 4}
!126 = !{!62, !31, i64 32}
!127 = !{!128, !53, i64 0}
!128 = !{!"redisDb", !53, i64 0, !53, i64 8, !129, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !10, i64 72, !35, i64 80, !18, i64 88}
!129 = !{!"p1 _ZTS7_estore", !15, i64 0}
!130 = !{!116, !10, i64 116}
!131 = distinct !{!131, !79}
end_hunk_9
