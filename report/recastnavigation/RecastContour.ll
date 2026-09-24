Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastContour?download=true
inline.NumInlined: 300
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a
  %n.vec1124 = and i64 %.sroa.0495.18.us, -8      ; 3 uses
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1123
  %index1126 = phi i64 [ 0, %vector.ph1123 ], [ %index.next1129, %vector.body1125 ] ; 3 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %index1126 ; 2 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %index1126 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %wide.load1127 = load <4 x i32>, ptr %i.aal, align 4, !tbaa !12
  %wide.load1128 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !12
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  store <4 x i32> %wide.load1127, ptr %i.aak, align 4, !tbaa !12
  store <4 x i32> %wide.load1128, ptr %i.aan, align 4, !tbaa !12
  %index.next1129 = add nuw i64 %index1126, 8     ; 2 uses
  %i.aao = icmp eq i64 %index.next1129, %n.vec1124
  br i1 %i.aao, label %middle.block1130, label %vector.body1125, !llvm.loop !43

middle.block1130:                                 ; preds = %vector.body1125
  %cmp.n1131 = icmp eq i64 %.sroa.0495.18.us, %n.vec1124
  br i1 %cmp.n1131, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us.preheader1258

.lr.ph.i.i453.us.preheader1258:                   ; preds = %.lr.ph.i.i453.us.preheader, %middle.block1130
  %.07.i.i454.us.ph = phi i64 [ 0, %.lr.ph.i.i453.us.preheader ], [ %n.vec1124, %middle.block1130 ] ; 3 uses
  %i.aap = add i64 %.sroa.0495.15.us, 3
  %i.aaq = add i64 %.sroa.0495.15.us, 2
  %i.aar = sub i64 %i.aaq, %.07.i.i454.us.ph
  %xtraiter1293 = and i64 %i.aap, 3               ; 2 uses
  %lcmp.mod1294.not = icmp eq i64 %xtraiter1293, 0
  br i1 %lcmp.mod1294.not, label %.lr.ph.i.i453.us.prol.loopexit, label %.lr.ph.i.i453.us.prol

.lr.ph.i.i453.us.prol:                            ; preds = %.lr.ph.i.i453.us.preheader1258, %.lr.ph.i.i453.us.prol
  %.07.i.i454.us.prol = phi i64 [ %i.aav, %.lr.ph.i.i453.us.prol ], [ %.07.i.i454.us.ph, %.lr.ph.i.i453.us.preheader1258 ] ; 3 uses
  %prol.iter1295 = phi i64 [ %prol.iter1295.next, %.lr.ph.i.i453.us.prol ], [ 0, %.lr.ph.i.i453.us.preheader1258 ]
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.07.i.i454.us.prol
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %.07.i.i454.us.prol
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !12
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !12
  %i.aav = add nuw nsw i64 %.07.i.i454.us.prol, 1 ; 2 uses
  %prol.iter1295.next = add i64 %prol.iter1295, 1 ; 2 uses
  %prol.iter1295.cmp.not = icmp eq i64 %prol.iter1295.next, %xtraiter1293
  br i1 %prol.iter1295.cmp.not, label %.lr.ph.i.i453.us.prol.loopexit, label %.lr.ph.i.i453.us.prol, !llvm.loop !44

.lr.ph.i.i453.us.prol.loopexit:                   ; preds = %.lr.ph.i.i453.us.prol, %.lr.ph.i.i453.us.preheader1258
  %.07.i.i454.us.unr = phi i64 [ %.07.i.i454.us.ph, %.lr.ph.i.i453.us.preheader1258 ], [ %i.aav, %.lr.ph.i.i453.us.prol ]
  %i.aaw = icmp ult i64 %i.aar, 3
  br i1 %i.aaw, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us

.lr.ph.i.i453.us:                                 ; preds = %.lr.ph.i.i453.us.prol.loopexit, %.lr.ph.i.i453.us
  %.07.i.i454.us = phi i64 [ %i.abm, %.lr.ph.i.i453.us ], [ %.07.i.i454.us.unr, %.lr.ph.i.i453.us.prol.loopexit ] ; 6 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.07.i.i454.us
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %.07.i.i454.us
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !12
  store i32 %i.aaz, ptr %i.aax, align 4, !tbaa !12
  %i.aba = add nuw nsw i64 %.07.i.i454.us, 1      ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aba
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.aba
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !12
  store i32 %i.abd, ptr %i.abb, align 4, !tbaa !12
  %i.abe = add nuw nsw i64 %.07.i.i454.us, 2      ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.abe
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.abe
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !12
  store i32 %i.abh, ptr %i.abf, align 4, !tbaa !12
  %i.abi = add nuw nsw i64 %.07.i.i454.us, 3      ; 2 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.abi
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.104.28.us, i64 %i.abi
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !12
  store i32 %i.abl, ptr %i.abj, align 4, !tbaa !12
  %i.abm = add nuw nsw i64 %.07.i.i454.us, 4      ; 2 uses
  %exitcond.not.i.i455.us.3 = icmp eq i64 %i.abm, %.sroa.0495.18.us
  br i1 %exitcond.not.i.i455.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, label %.lr.ph.i.i453.us, !llvm.loop !45

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us: ; preds = %.lr.ph.i.i453.us.prol.loopexit, %.lr.ph.i.i453.us, %middle.block1130, %bb.bg
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.aag, i64 %.sroa.0495.18.us
  %i.abo = trunc nuw nsw i64 %indvars.iv487.i.us to i32
  store i32 %i.abo, ptr %i.abn, align 4, !tbaa !12
  %i.abp = add nsw i64 %.sroa.0495.15.us, 4
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.28.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us

bb.bh:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit322.i.us
  %i.abq = add nsw i64 %.sroa.0495.15.us, 4
  %i.abr = getelementptr inbounds [4 x i8], ptr %.sroa.104.28.us, i64 %.sroa.0495.18.us
  %i.abs = trunc nuw nsw i64 %indvars.iv487.i.us to i32
  store i32 %i.abs, ptr %i.abr, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us: ; preds = %bb.bh, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us, %bb.ay
  %.sroa.0495.19.us = phi i64 [ %.sroa.0495.15.us, %bb.ay ], [ %i.abq, %bb.bh ], [ %i.abp, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 6 uses
  %.sroa.75.28.us = phi i64 [ %.sroa.75.24.us, %bb.ay ], [ %.sroa.75.27.us, %bb.bh ], [ %.0.i.i324.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 4 uses
  %.sroa.104.29.us = phi ptr [ %.sroa.104.25.us, %bb.ay ], [ %.sroa.104.28.us, %bb.bh ], [ %i.aag, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit456.us ] ; 4 uses
  %exitcond.not.i362.us = icmp eq i64 %indvars.iv.next488.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i362.us, label %.critedge.i.us, label %bb.ay

.critedge.i.us:                                   ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit325.i.us
  %i.abt = icmp eq i64 %.sroa.0495.19.us, 0
  br i1 %i.abt, label %.critedge.i.thread.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit349.i.us

.critedge.i.thread.us:                            ; preds = %bb.aw, %.critedge.i.us, %bb.ax
  %.sroa.104.8680.us = phi ptr [ %.sroa.104.29.us, %.critedge.i.us ], [ %.sroa.104.2823.us, %bb.ax ], [ %.sroa.104.2823.us, %bb.aw ]
  %.sroa.75.7679.us = phi i64 [ %.sroa.75.28.us, %.critedge.i.us ], [ %.sroa.75.2822.us, %bb.ax ], [ %.sroa.75.2822.us, %bb.aw ]
  %i.abu = load i32, ptr %.sroa.39.14.us, align 4, !tbaa !12 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 4
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !12 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.39.14.us, i64 8
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !12 ; 2 uses
  br label %.lr.ph448.i.us

.lr.ph448.i.us:                                   ; preds = %bb.bn, %.critedge.i.thread.us
  %indvars.iv490.i.us = phi i64 [ %indvars.iv.next491.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ] ; 4 uses
  %.0404446.i.us = phi i32 [ %.1405.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ]
  %.0406445.i.us = phi i32 [ %.1407.i.us, %bb.bn ], [ %i.aby, %.critedge.i.thread.us ] ; 2 uses
  %.0408444.i.us = phi i32 [ %.1409.i.us, %bb.bn ], [ %i.abw, %.critedge.i.thread.us ]
  %.0410443.i.us = phi i32 [ %.1411.i.us, %bb.bn ], [ %i.abu, %.critedge.i.thread.us ] ; 3 uses
  %.0412442.i.us = phi i32 [ %.1413.i.us, %bb.bn ], [ 0, %.critedge.i.thread.us ]
  %.0414441.i.us = phi i32 [ %.1415.i.us, %bb.bn ], [ %i.aby, %.critedge.i.thread.us ] ; 2 uses
  %.0416440.i.us = phi i32 [ %.1417.i.us, %bb.bn ], [ %i.abw, %.critedge.i.thread.us ]
  %.0418439.i.us = phi i32 [ %.1419.i.us, %bb.bn ], [ %i.abu, %.critedge.i.thread.us ] ; 3 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.39.14.us, i64 %indvars.iv490.i.us ; 3 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !12 ; 6 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !12 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !12 ; 4 uses
  %i.acf = icmp slt i32 %i.aca, %.0418439.i.us
  br i1 %i.acf, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph448.i.us
  %i.acg = icmp eq i32 %i.aca, %.0418439.i.us
  %i.ach = icmp slt i32 %i.ace, %.0414441.i.us
  %or.cond309.i.us = select i1 %i.acg, i1 %i.ach, i1 false
  br i1 %or.cond309.i.us, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %.lr.ph448.i.us
  %i.aci = lshr exact i64 %indvars.iv490.i.us, 2
  %i.acj = trunc nuw i64 %i.aci to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1419.i.us = phi i32 [ %i.aca, %bb.bj ], [ %.0418439.i.us, %bb.bi ] ; 2 uses
  %.1417.i.us = phi i32 [ %i.acc, %bb.bj ], [ %.0416440.i.us, %bb.bi ] ; 2 uses
  %.1415.i.us = phi i32 [ %i.ace, %bb.bj ], [ %.0414441.i.us, %bb.bi ] ; 2 uses
  %.1413.i.us = phi i32 [ %i.acj, %bb.bj ], [ %.0412442.i.us, %bb.bi ] ; 2 uses
  %i.ack = icmp sgt i32 %i.aca, %.0410443.i.us
  br i1 %i.ack, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.acl = icmp eq i32 %i.aca, %.0410443.i.us
  %i.acm = icmp sgt i32 %i.ace, %.0406445.i.us
  %or.cond311.i.us = select i1 %i.acl, i1 %i.acm, i1 false
  br i1 %or.cond311.i.us, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.acn = lshr exact i64 %indvars.iv490.i.us, 2
  %i.aco = trunc nuw i64 %i.acn to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1411.i.us = phi i32 [ %i.aca, %bb.bm ], [ %.0410443.i.us, %bb.bl ] ; 2 uses
  %.1409.i.us = phi i32 [ %i.acc, %bb.bm ], [ %.0408444.i.us, %bb.bl ] ; 2 uses
  %.1407.i.us = phi i32 [ %i.ace, %bb.bm ], [ %.0406445.i.us, %bb.bl ] ; 2 uses
  %.1405.i.us = phi i32 [ %i.aco, %bb.bm ], [ %.0404446.i.us, %bb.bl ] ; 2 uses
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 4 ; 2 uses
  %i.acp = icmp sgt i64 %.sroa.0614.6.us, %indvars.iv.next491.i.us
  br i1 %i.acp, label %.lr.ph448.i.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.bn, %.critedge.i.thread.thread.us
  %.sroa.75.7679739.us = phi i64 [ %.sroa.75.2822.us, %.critedge.i.thread.thread.us ], [ %.sroa.75.7679.us, %bb.bn ] ; 6 uses
  %.sroa.104.8680738.us = phi ptr [ %.sroa.104.2823.us, %.critedge.i.thread.thread.us ], [ %.sroa.104.8680.us, %bb.bn ] ; 7 uses
  %.0418.lcssa.i.us = phi i32 [ %i.ug, %.critedge.i.thread.thread.us ], [ %.1419.i.us, %bb.bn ] ; 2 uses
  %.0416.lcssa.i.us = phi i32 [ %i.ui, %.critedge.i.thread.thread.us ], [ %.1417.i.us, %bb.bn ] ; 2 uses
  %.0414.lcssa.i.us = phi i32 [ %i.uk, %.critedge.i.thread.thread.us ], [ %.1415.i.us, %bb.bn ] ; 2 uses
  %.0412.lcssa.i.us = phi i32 [ 0, %.critedge.i.thread.thread.us ], [ %.1413.i.us, %bb.bn ] ; 2 uses
  %.0410.lcssa.i.us = phi i32 [ %i.ug, %.critedge.i.thread.thread.us ], [ %.1411.i.us, %bb.bn ] ; 2 uses
  %.0408.lcssa.i.us = phi i32 [ %i.ui, %.critedge.i.thread.thread.us ], [ %.1409.i.us, %bb.bn ] ; 2 uses
  %.0406.lcssa.i.us = phi i32 [ %i.uk, %.critedge.i.thread.thread.us ], [ %.1407.i.us, %bb.bn ] ; 2 uses
  %.0404.lcssa.i.us = phi i32 [ 0, %.critedge.i.thread.thread.us ], [ %.1405.i.us, %bb.bn ] ; 2 uses
  %i.acq = icmp sgt i64 %.sroa.75.7679739.us, 0
  br i1 %i.acq, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread, !prof !127

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread: ; preds = %._crit_edge.i.us
  %i.acr = shl i64 %.sroa.75.7679739.us, 2
  %i.acs = add i64 %i.acr, 4
  %i.act = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.acs, i32 noundef 1) #9 ; 2 uses
  store i32 %.0418.lcssa.i.us, ptr %i.act, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef %.sroa.104.8680738.us) #9
  %i.acu = add nsw i64 %.sroa.75.7679739.us, 2
  br label %bb.bo

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us: ; preds = %._crit_edge.i.us
  store i32 %.0418.lcssa.i.us, ptr %.sroa.104.8680738.us, align 4, !tbaa !12
  %.not1076 = icmp eq i64 %.sroa.75.7679739.us, 1
  br i1 %.not1076, label %bb.bo, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us, !prof !132

bb.bo:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us
  %.sroa.104.18.us1047 = phi ptr [ %i.act, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread ], [ %.sroa.104.8680738.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us ] ; 2 uses
  %.sroa.75.17.us1046 = phi i64 [ %i.acu, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us.thread ], [ 2, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us ] ; 2 uses
  %i.acv = shl i64 %.sroa.75.17.us1046, 2
  %i.acw = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.acv, i32 noundef 1) #9 ; 4 uses
  %.not.i442.not.us = icmp eq ptr %i.acw, null
  br i1 %.not.i442.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread, label %.lr.ph.i.i443.us.preheader

.lr.ph.i.i443.us.preheader:                       ; preds = %bb.bo
  %6 = load i32, ptr %.sroa.104.18.us1047, align 4, !tbaa !12
  store i32 %6, ptr %i.acw, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread: ; preds = %bb.bo, %.lr.ph.i.i443.us.preheader
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  store i32 %.0416.lcssa.i.us, ptr %i.acx, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.18.us1047) #9
  br label %bb.bp

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit328.i.us
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.104.8680738.us, i64 4
  store i32 %.0416.lcssa.i.us, ptr %i.acy, align 4, !tbaa !12
  %i.acz = icmp samesign ugt i64 %.sroa.75.7679739.us, 2
  br i1 %i.acz, label %bb.bq, label %bb.bp, !prof !133

bb.bp:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us
  %.sroa.104.19.us1051 = phi ptr [ %i.acw, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread ], [ %.sroa.104.8680738.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us ] ; 3 uses
  %.sroa.75.18.us1050 = phi i64 [ %.sroa.75.17.us1046, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread ], [ 2, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us ] ; 2 uses
  %i.ada = add nsw i64 %.sroa.75.18.us1050, 1
  %i.adb = shl nsw i64 %.sroa.75.18.us1050, 1
  %..i.i332.i.us = tail call i64 @llvm.smax.i64(i64 %i.adb, i64 %i.ada) ; 2 uses
  %i.adc = shl i64 %..i.i332.i.us, 2
  %i.add = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.adc, i32 noundef 1) #9 ; 5 uses
  %.not.i437.not.us = icmp eq ptr %i.add, null
  br i1 %.not.i437.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us, label %.lr.ph.i.i438.us.preheader

.lr.ph.i.i438.us.preheader:                       ; preds = %bb.bp
  %i.ade = load i32, ptr %.sroa.104.19.us1051, align 4, !tbaa !12
  store i32 %i.ade, ptr %i.add, align 4, !tbaa !12
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.104.19.us1051, i64 4
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !12
  store i32 %i.adh, ptr %i.adf, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us: ; preds = %.lr.ph.i.i438.us.preheader, %bb.bp
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store i32 %.0414.lcssa.i.us, ptr %i.adi, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.19.us1051) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit334.i.us

bb.bq:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.104.8680738.us, i64 8
  store i32 %.0414.lcssa.i.us, ptr %i.adj, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit334.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit334.i.us: ; preds = %bb.bq, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us
  %.sroa.75.19.us = phi i64 [ %.sroa.75.7679739.us, %bb.bq ], [ %..i.i332.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us ] ; 4 uses
  %.sroa.104.20.us = phi ptr [ %.sroa.104.8680738.us, %bb.bq ], [ %i.add, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit441.us ] ; 6 uses
  %i.adk = icmp sgt i64 %.sroa.75.19.us, 3
  br i1 %i.adk, label %bb.bs, label %bb.br, !prof !127

bb.br:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit334.i.us
  %i.adl = add nsw i64 %.sroa.75.19.us, 1
  %i.adm = shl nsw i64 %.sroa.75.19.us, 1
  %..i.i335.i.us = tail call i64 @llvm.smax.i64(i64 %i.adm, i64 %i.adl) ; 2 uses
  %i.adn = shl i64 %..i.i335.i.us, 2
  %i.ado = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.adn, i32 noundef 1) #9 ; 6 uses
  %.not.i432.not.us = icmp eq ptr %i.ado, null
  br i1 %.not.i432.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us, label %.lr.ph.i.i433.us.preheader

.lr.ph.i.i433.us.preheader:                       ; preds = %bb.br
  %i.adp = load i32, ptr %.sroa.104.20.us, align 4, !tbaa !12
  store i32 %i.adp, ptr %i.ado, align 4, !tbaa !12
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.104.20.us, i64 4
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !12
  store i32 %i.ads, ptr %i.adq, align 4, !tbaa !12
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.104.20.us, i64 8
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !12
  store i32 %i.adv, ptr %i.adt, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us: ; preds = %.lr.ph.i.i433.us.preheader, %bb.br
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ado, i64 12
  store i32 %.0412.lcssa.i.us, ptr %i.adw, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.20.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit337.i.us

bb.bs:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit334.i.us
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.104.20.us, i64 12
  store i32 %.0412.lcssa.i.us, ptr %i.adx, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit337.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit337.i.us: ; preds = %bb.bs, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us
  %.sroa.75.20.us = phi i64 [ %.sroa.75.19.us, %bb.bs ], [ %..i.i335.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us ] ; 4 uses
  %.sroa.104.21.us = phi ptr [ %.sroa.104.20.us, %bb.bs ], [ %i.ado, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit436.us ] ; 7 uses
  %i.ady = icmp sgt i64 %.sroa.75.20.us, 4
  br i1 %i.ady, label %bb.bu, label %bb.bt, !prof !127

bb.bt:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit337.i.us
  %i.adz = add nsw i64 %.sroa.75.20.us, 1
  %i.aea = shl nsw i64 %.sroa.75.20.us, 1
  %..i.i338.i.us = tail call i64 @llvm.smax.i64(i64 %i.aea, i64 %i.adz) ; 2 uses
  %i.aeb = shl i64 %..i.i338.i.us, 2
  %i.aec = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aeb, i32 noundef 1) #9 ; 7 uses
  %.not.i427.not.us = icmp eq ptr %i.aec, null
  br i1 %.not.i427.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us, label %.lr.ph.i.i428.us.preheader

.lr.ph.i.i428.us.preheader:                       ; preds = %bb.bt
  %i.aed = load i32, ptr %.sroa.104.21.us, align 4, !tbaa !12
  store i32 %i.aed, ptr %i.aec, align 4, !tbaa !12
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 4
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.104.21.us, i64 4
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !12
  store i32 %i.aeg, ptr %i.aee, align 4, !tbaa !12
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.104.21.us, i64 8
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !12
  store i32 %i.aej, ptr %i.aeh, align 4, !tbaa !12
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aec, i64 12
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.104.21.us, i64 12
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !12
  store i32 %i.aem, ptr %i.aek, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us: ; preds = %.lr.ph.i.i428.us.preheader, %bb.bt
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  store i32 %.0410.lcssa.i.us, ptr %i.aen, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.21.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit340.i.us

bb.bu:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit337.i.us
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.104.21.us, i64 16
  store i32 %.0410.lcssa.i.us, ptr %i.aeo, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit340.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit340.i.us: ; preds = %bb.bu, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us
  %.sroa.75.21.us = phi i64 [ %.sroa.75.20.us, %bb.bu ], [ %..i.i338.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us ] ; 4 uses
  %.sroa.104.22.us = phi ptr [ %.sroa.104.21.us, %bb.bu ], [ %i.aec, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit431.us ] ; 8 uses
  %i.aep = icmp sgt i64 %.sroa.75.21.us, 5
  br i1 %i.aep, label %bb.bw, label %bb.bv, !prof !127

bb.bv:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit340.i.us
  %i.aeq = add nsw i64 %.sroa.75.21.us, 1
  %i.aer = shl nsw i64 %.sroa.75.21.us, 1
  %..i.i341.i.us = tail call i64 @llvm.smax.i64(i64 %i.aer, i64 %i.aeq) ; 2 uses
  %i.aes = shl i64 %..i.i341.i.us, 2
  %i.aet = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.aes, i32 noundef 1) #9 ; 8 uses
  %.not.i422.not.us = icmp eq ptr %i.aet, null
  br i1 %.not.i422.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us, label %.lr.ph.i.i423.us.preheader

.lr.ph.i.i423.us.preheader:                       ; preds = %bb.bv
  %i.aeu = load i32, ptr %.sroa.104.22.us, align 4, !tbaa !12
  store i32 %i.aeu, ptr %i.aet, align 4, !tbaa !12
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.104.22.us, i64 4
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !12
  store i32 %i.aex, ptr %i.aev, align 4, !tbaa !12
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.104.22.us, i64 8
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !12
  store i32 %i.afa, ptr %i.aey, align 4, !tbaa !12
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aet, i64 12
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.104.22.us, i64 12
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !12
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !12
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.104.22.us, i64 16
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !12
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us: ; preds = %.lr.ph.i.i423.us.preheader, %bb.bv
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aet, i64 20
  store i32 %.0408.lcssa.i.us, ptr %i.afh, align 4, !tbaa !12
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.104.22.us) #9
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit343.i.us

bb.bw:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit340.i.us
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.104.22.us, i64 20
  store i32 %.0408.lcssa.i.us, ptr %i.afi, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit343.i.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit343.i.us: ; preds = %bb.bw, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us
  %.sroa.75.22.us = phi i64 [ %.sroa.75.21.us, %bb.bw ], [ %..i.i341.i.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us ] ; 4 uses
  %.sroa.104.23.us = phi ptr [ %.sroa.104.22.us, %bb.bw ], [ %i.aet, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit426.us ] ; 9 uses
  %i.afj = icmp sgt i64 %.sroa.75.22.us, 6
  br i1 %i.afj, label %bb.by, label %bb.bx, !prof !127

bb.bx:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit343.i.us
  %i.afk = add nsw i64 %.sroa.75.22.us, 1
  %i.afl = shl nsw i64 %.sroa.75.22.us, 1
  %..i.i344.i.us = tail call i64 @llvm.smax.i64(i64 %i.afl, i64 %i.afk) ; 2 uses
  %i.afm = shl i64 %..i.i344.i.us, 2
  %i.afn = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.afm, i32 noundef 1) #9 ; 9 uses
  %.not.i417.not.us = icmp eq ptr %i.afn, null
  br i1 %.not.i417.not.us, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit421.us, label %.lr.ph.i.i418.us.preheader

.lr.ph.i.i418.us.preheader:                       ; preds = %bb.bx
  %i.afo = load i32, ptr %.sroa.104.23.us, align 4, !tbaa !12
  store i32 %i.afo, ptr %i.afn, align 4, !tbaa !12
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.104.23.us, i64 4
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !12
  store i32 %i.afr, ptr %i.afp, align 4, !tbaa !12
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.104.23.us, i64 8
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !12
  store i32 %i.afu, ptr %i.afs, align 4, !tbaa !12
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afn, i64 12
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.104.23.us, i64 12
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a
  %.idx44.i.us.2 = shl nuw nsw i64 %indvars.iv.next39.i.us.1, 4
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.104.30.us, i64 %.idx44.i.us.2
  %i.avb = load <4 x i32>, ptr %i.auz, align 4, !tbaa !12
  store <4 x i32> %i.avb, ptr %i.ava, align 4, !tbaa !12
  %indvars.iv.next39.i.us.3 = add nuw nsw i64 %indvars.iv38.i.us, 4 ; 3 uses
  %.idx43.i.us.3 = shl nuw nsw i64 %indvars.iv.next39.i.us.3, 4
  %i.avc = getelementptr inbounds nuw i8, ptr %.sroa.104.30.us, i64 %.idx43.i.us.3
  %.idx44.i.us.3 = shl nuw nsw i64 %indvars.iv.next39.i.us.2, 4
  %i.avd = getelementptr inbounds nuw i8, ptr %.sroa.104.30.us, i64 %.idx44.i.us.3
  %i.ave = load <4 x i32>, ptr %i.avc, align 4, !tbaa !12
  store <4 x i32> %i.ave, ptr %i.avd, align 4, !tbaa !12
  %exitcond.not.i372.us.3 = icmp eq i64 %indvars.iv.next39.i.us.3, %i.aul
  br i1 %exitcond.not.i372.us.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us, label %.lr.ph.i371.us

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us: ; preds = %.lr.ph.i371.us.prol.loopexit, %.lr.ph.i371.us, %.preheader.i368.us
  %i.avf = add nsw i64 %i.att, -4                 ; 2 uses
  %i.avg = add nsw i32 %.03335.i.us, -1           ; 2 uses
  %.pre.i370.us = sext i32 %i.avg to i64
  br label %_ZL6vequalPKiS0_.exit.thread.i.us

_ZL6vequalPKiS0_.exit.thread.i.us:                ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us, %_ZL6vequalPKiS0_.exit.i.us, %bb.cv
  %.sroa.0495.22.us = phi i64 [ %i.avf, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us ], [ %.sroa.0495.21.us, %_ZL6vequalPKiS0_.exit.i.us ], [ %.sroa.0495.21.us, %bb.cv ] ; 2 uses
  %.pre-phi.i367.us = phi i64 [ %.pre.i370.us, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us ], [ %i.atv, %_ZL6vequalPKiS0_.exit.i.us ], [ %i.atv, %bb.cv ]
  %i.avh = phi i64 [ %i.avf, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us ], [ %i.att, %_ZL6vequalPKiS0_.exit.i.us ], [ %i.att, %bb.cv ]
  %.1.i.us = phi i32 [ %i.avg, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i369.us ], [ %.03335.i.us, %_ZL6vequalPKiS0_.exit.i.us ], [ %.03335.i.us, %bb.cv ]
  %i.avi = icmp slt i64 %indvars.iv.next.i365.us, %.pre-phi.i367.us
  br i1 %i.avi, label %bb.cv, label %_ZL24removeDegenerateSegmentsR12rcTempVectorIiE.exit.us

_ZL24removeDegenerateSegmentsR12rcTempVectorIiE.exit.us: ; preds = %_ZL6vequalPKiS0_.exit.thread.i.us, %_ZL15simplifyContourR12rcTempVectorIiES1_fii.exit.us
  %.sroa.0495.23.us = phi i64 [ %.sroa.0495.20.us, %_ZL15simplifyContourR12rcTempVectorIiES1_fii.exit.us ], [ %.sroa.0495.22.us, %_ZL6vequalPKiS0_.exit.thread.i.us ] ; 2 uses
  %i.avj = load i8, ptr %i.f, align 1, !tbaa !68, !range !69, !noundef !70
  %i.avk = trunc nuw i8 %i.avj to i1
  br i1 %i.avk, label %bb.cw, label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us

bb.cw:                                            ; preds = %_ZL24removeDegenerateSegmentsR12rcTempVectorIiE.exit.us
  %i.avl = load ptr, ptr %0, align 8, !tbaa !72
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 48
  %i.avn = load ptr, ptr %i.avm, align 8
  tail call void %i.avn(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 6) #9, !call_target !119, !inline_history !21
  br label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us

_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us: ; preds = %bb.cw, %_ZL24removeDegenerateSegmentsR12rcTempVectorIiE.exit.us
  %i.avo = icmp sgt i64 %.sroa.0495.23.us, 11
  br i1 %i.avo, label %bb.cx, label %.thread.us

bb.cx:                                            ; preds = %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us
  %i.avp = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  %.not324.us = icmp slt i32 %i.avp, %.2285824.us
  br i1 %.not324.us, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.avq = shl nsw i32 %.2285824.us, 1            ; 3 uses
  %i.avr = sext i32 %i.avq to i64
  %i.avs = shl nsw i64 %i.avr, 5
  %i.avt = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.avs, i32 noundef 0) #9 ; 2 uses
  %i.avu = load i32, ptr %i.bf, align 8, !tbaa !117
  %i.avv = icmp sgt i32 %i.avu, 0
  %.pre951 = load ptr, ptr %4, align 8, !tbaa !116 ; 2 uses
  br i1 %i.avv, label %.lr.ph814.us, label %._crit_edge815.us

.lr.ph814.us:                                     ; preds = %bb.cy, %.lr.ph814.us
  %i.avw = phi ptr [ %i.avz, %.lr.ph814.us ], [ %.pre951, %bb.cy ]
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %.lr.ph814.us ], [ 0, %bb.cy ] ; 4 uses
  %i.avx = getelementptr inbounds nuw [32 x i8], ptr %i.avw, i64 %indvars.iv906
  %i.avy = getelementptr inbounds nuw [32 x i8], ptr %i.avt, i64 %indvars.iv906
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.avy, ptr noundef nonnull align 8 dereferenceable(32) %i.avx, i64 32, i1 false), !tbaa.struct !137
  %i.avz = load ptr, ptr %4, align 8, !tbaa !116  ; 3 uses
  %i.awa = getelementptr inbounds nuw [32 x i8], ptr %i.avz, i64 %indvars.iv906 ; 2 uses
  store ptr null, ptr %i.awa, align 8, !tbaa !139
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 16
  store ptr null, ptr %i.awb, align 8, !tbaa !140
  %indvars.iv.next907 = add nuw nsw i64 %indvars.iv906, 1 ; 2 uses
  %i.awc = load i32, ptr %i.bf, align 8, !tbaa !117
  %i.awd = sext i32 %i.awc to i64
  %i.awe = icmp slt i64 %indvars.iv.next907, %i.awd
  br i1 %i.awe, label %.lr.ph814.us, label %._crit_edge815.us

._crit_edge815.us:                                ; preds = %.lr.ph814.us, %bb.cy
  %i.awf = phi ptr [ %.pre951, %bb.cy ], [ %i.avz, %.lr.ph814.us ]
  tail call void @_Z6rcFreePv(ptr noundef %i.awf) #9
  store ptr %i.avt, ptr %4, align 8, !tbaa !116
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %.2285824.us, i32 noundef %i.avq) #9
  %.pre952 = load i32, ptr %i.bf, align 8, !tbaa !117
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge815.us, %bb.cx
  %i.awg = phi i32 [ %.pre952, %._crit_edge815.us ], [ %i.avp, %bb.cx ] ; 2 uses
  %.3286.us = phi i32 [ %i.avq, %._crit_edge815.us ], [ %.2285824.us, %bb.cx ]
  %i.awh = load ptr, ptr %4, align 8, !tbaa !116
  %i.awi = add nsw i32 %i.awg, 1
  store i32 %i.awi, ptr %i.bf, align 8, !tbaa !117
  %i.awj = sext i32 %i.awg to i64
  %i.awk = getelementptr inbounds [32 x i8], ptr %i.awh, i64 %i.awj ; 7 uses
  %i.awl = trunc i64 %.sroa.0495.23.us to i32
  %i.awm = sdiv i32 %i.awl, 4                     ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awk, i64 8 ; 4 uses
  store i32 %i.awm, ptr %i.awn, align 8, !tbaa !141
  %i.awo = sext i32 %i.awm to i64
  %i.awp = shl nsw i64 %i.awo, 4
  %i.awq = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.awp, i32 noundef 0) #9 ; 3 uses
  store ptr %i.awq, ptr %i.awk, align 8, !tbaa !139
  %.not325.us = icmp eq ptr %i.awq, null
  %i.awr = load i32, ptr %i.awn, align 8, !tbaa !141 ; 2 uses
  br i1 %.not325.us, label %.split.us, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aws = sext i32 %i.awr to i64
  %i.awt = shl nsw i64 %i.aws, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.awq, ptr nonnull align 4 %.sroa.104.30.us, i64 %i.awt, i1 false)
  br i1 %i.ad, label %.preheader762.us, label %.loopexit763.us

bb.db:                                            ; preds = %.lr.ph817.us, %bb.db
  %indvars.iv909 = phi i64 [ 0, %.lr.ph817.us ], [ %indvars.iv.next910, %bb.db ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv909, 4
  %i.awu = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %.idx ; 3 uses
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !12
  %i.aww = sub nsw i32 %i.awv, %i.e
  store i32 %i.aww, ptr %i.awu, align 4, !tbaa !12
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 8 ; 2 uses
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !12
  %i.awz = sub nsw i32 %i.awy, %i.e
  store i32 %i.awz, ptr %i.awx, align 4, !tbaa !12
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 1 ; 2 uses
  %i.axa = load i32, ptr %i.awn, align 8, !tbaa !141
  %i.axb = sext i32 %i.axa to i64
  %i.axc = icmp slt i64 %indvars.iv.next910, %i.axb
  br i1 %i.axc, label %bb.db, label %.loopexit763.us

.loopexit763.us:                                  ; preds = %bb.db, %.preheader762.us, %bb.da
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awk, i64 24 ; 4 uses
  store i32 %i.ano, ptr %i.axd, align 8, !tbaa !142
  %i.axe = sext i32 %i.ano to i64
  %i.axf = shl nsw i64 %i.axe, 4
  %i.axg = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.axf, i32 noundef 0) #9 ; 3 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.awk, i64 16 ; 2 uses
  store ptr %i.axg, ptr %i.axh, align 8, !tbaa !140
  %.not326.us = icmp eq ptr %i.axg, null
  %i.axi = load i32, ptr %i.axd, align 8, !tbaa !142 ; 2 uses
  br i1 %.not326.us, label %.split859.us, label %bb.dc

bb.dc:                                            ; preds = %.loopexit763.us
  %i.axj = sext i32 %i.axi to i64
  %i.axk = shl nsw i64 %i.axj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.axg, ptr nonnull align 4 %.sroa.39.14.us, i64 %i.axk, i1 false)
  br i1 %i.ad, label %.preheader761.us, label %.critedge.us

bb.dd:                                            ; preds = %.lr.ph819.us, %bb.dd
  %indvars.iv912 = phi i64 [ 0, %.lr.ph819.us ], [ %indvars.iv.next913, %bb.dd ] ; 2 uses
  %.idx1043 = shl nuw nsw i64 %indvars.iv912, 4
  %i.axl = getelementptr inbounds nuw i8, ptr %i.ayc, i64 %.idx1043 ; 3 uses
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !12
  %i.axn = sub nsw i32 %i.axm, %i.e
  store i32 %i.axn, ptr %i.axl, align 4, !tbaa !12
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 8 ; 2 uses
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !12
  %i.axq = sub nsw i32 %i.axp, %i.e
  store i32 %i.axq, ptr %i.axo, align 4, !tbaa !12
  %indvars.iv.next913 = add nuw nsw i64 %indvars.iv912, 1 ; 2 uses
  %i.axr = load i32, ptr %i.axd, align 8, !tbaa !142
  %i.axs = sext i32 %i.axr to i64
  %i.axt = icmp slt i64 %indvars.iv.next913, %i.axs
  br i1 %i.axt, label %bb.dd, label %.critedge.us

.critedge.us:                                     ; preds = %bb.dd, %.preheader761.us, %bb.dc
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awk, i64 28
  store i16 %i.dk, ptr %i.axu, align 4, !tbaa !143
  %i.axv = getelementptr inbounds nuw i8, ptr %i.awk, i64 30
  store i8 %i.dn, ptr %i.axv, align 2, !tbaa !144
  br label %.thread.us

.thread.us:                                       ; preds = %.critedge.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us, %bb.l, %bb.k
  %.sroa.30.4.us = phi i64 [ %.sroa.30.2820.us, %bb.k ], [ %.sroa.30.2820.us, %bb.l ], [ %.sroa.30.13.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us ], [ %.sroa.30.13.us, %.critedge.us ] ; 2 uses
  %.sroa.39.4.us = phi ptr [ %.sroa.39.2821.us, %bb.k ], [ %.sroa.39.2821.us, %bb.l ], [ %.sroa.39.14.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us ], [ %.sroa.39.14.us, %.critedge.us ] ; 2 uses
  %.sroa.75.4.us = phi i64 [ %.sroa.75.2822.us, %bb.k ], [ %.sroa.75.2822.us, %bb.l ], [ %.sroa.75.29.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us ], [ %.sroa.75.29.us, %.critedge.us ] ; 2 uses
  %.sroa.104.4.us = phi ptr [ %.sroa.104.2823.us, %bb.k ], [ %.sroa.104.2823.us, %bb.l ], [ %.sroa.104.30.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us ], [ %.sroa.104.30.us, %.critedge.us ] ; 2 uses
  %.7290.us = phi i32 [ %.2285824.us, %bb.k ], [ %.2285824.us, %bb.l ], [ %.2285824.us, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit373.us ], [ %.3286.us, %.critedge.us ] ; 2 uses
  %indvars.iv.next916 = add nuw nsw i64 %indvars.iv915, 1 ; 2 uses
  %i.axw = icmp samesign ult i64 %indvars.iv.next916, %i.dd
  br i1 %i.axw, label %.lr.ph828.us, label %._crit_edge829.us

._crit_edge829.us:                                ; preds = %.thread.us, %bb.j
  %.sroa.30.2.lcssa.us = phi i64 [ %.sroa.30.1834.us, %bb.j ], [ %.sroa.30.4.us, %.thread.us ] ; 2 uses
  %.sroa.39.2.lcssa.us = phi ptr [ %.sroa.39.1835.us, %bb.j ], [ %.sroa.39.4.us, %.thread.us ] ; 3 uses
  %.sroa.75.2.lcssa.us = phi i64 [ %.sroa.75.1836.us, %bb.j ], [ %.sroa.75.4.us, %.thread.us ] ; 2 uses
  %.sroa.104.2.lcssa.us = phi ptr [ %.sroa.104.1837.us, %bb.j ], [ %.sroa.104.4.us, %.thread.us ] ; 3 uses
  %.2285.lcssa.us = phi i32 [ %.1284838.us, %bb.j ], [ %.7290.us, %.thread.us ] ; 2 uses
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %i.cr
  br i1 %exitcond922.not, label %._crit_edge841.us, label %bb.j

.preheader761.us:                                 ; preds = %bb.dc
  %i.axx = load i32, ptr %i.axd, align 8, !tbaa !142
  %i.axy = icmp sgt i32 %i.axx, 0
  br i1 %i.axy, label %.lr.ph819.us, label %.critedge.us

.preheader762.us:                                 ; preds = %bb.da
  %i.axz = load i32, ptr %i.awn, align 8, !tbaa !141
  %i.aya = icmp sgt i32 %i.axz, 0
  br i1 %i.aya, label %.lr.ph817.us, label %.loopexit763.us

.lr.ph817.us:                                     ; preds = %.preheader762.us
  %i.ayb = load ptr, ptr %i.awk, align 8, !tbaa !139
  br label %bb.db

.lr.ph819.us:                                     ; preds = %.preheader761.us
  %i.ayc = load ptr, ptr %i.axh, align 8, !tbaa !140
  br label %bb.dd

._crit_edge841.us:                                ; preds = %._crit_edge829.us
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1 ; 2 uses
  %exitcond927.not = icmp eq i64 %indvars.iv.next924, %wide.trip.count926
  br i1 %exitcond927.not, label %._crit_edge853, label %.preheader764.us

._crit_edge809:                                   ; preds = %._crit_edge
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1 ; 2 uses
  %exitcond905.not = icmp eq i64 %indvars.iv.next902, %wide.trip.count904
  br i1 %exitcond905.not, label %._crit_edge811.split, label %.preheader766

bb.de:                                            ; preds = %.preheader766, %._crit_edge
  %indvars.iv898 = phi i64 [ 0, %.preheader766 ], [ %indvars.iv.next899, %._crit_edge ] ; 6 uses
  %i.ayd = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %i.ayd, i64 %indvars.iv898
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %i.bv
  %i.ayg = load i32, ptr %i.ayf, align 4          ; 3 uses
  %i.ayh = lshr i32 %i.ayg, 24                    ; 2 uses
  %.not878 = icmp eq i32 %i.ayh, 0
  br i1 %.not878, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.de
  %i.ayi = and i32 %i.ayg, 16777215
  %i.ayj = add nuw nsw i32 %i.ayi, %i.ayh
  %i.ayk = and i32 %i.ayg, 16777215
  %i.ayl = zext nneg i32 %i.ayk to i64
  %i.aym = zext nneg i32 %i.ayj to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.dn, %bb.de
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge809, label %bb.de

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dn
  %indvars.iv = phi i64 [ %i.ayl, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.dn ] ; 3 uses
  %i.ayn = load ptr, ptr %i.bt, align 8, !tbaa !122 ; 5 uses
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %indvars.iv ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 2
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !124 ; 5 uses
  %or.cond = icmp sgt i16 %i.ayq, 0
  br i1 %or.cond, label %.preheader765, label %bb.dn

.preheader765:                                    ; preds = %.lr.ph
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayo, i64 4
  %i.ays = load i32, ptr %i.ayr, align 4          ; 4 uses
  %i.ayt = and i32 %i.ays, 63                     ; 2 uses
  %.not337 = icmp eq i32 %i.ayt, 63
  br i1 %.not337, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.preheader765
  %i.ayu = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.ayv = getelementptr [4 x i8], ptr %i.ayu, i64 %indvars.iv898
  %i.ayw = getelementptr i8, ptr %i.ayv, i64 -4
  %i.ayx = getelementptr [4 x i8], ptr %i.ayw, i64 %i.bv
  %i.ayy = load i32, ptr %i.ayx, align 4
  %i.ayz = and i32 %i.ayy, 16777215
  %i.aza = add nuw nsw i32 %i.ayz, %i.ayt
  %i.azb = zext nneg i32 %i.aza to i64
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.azb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 2
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !124
  %i.azf = icmp eq i16 %i.aze, %i.ayq
  %i.azg = zext i1 %i.azf to i8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.preheader765
  %.0293 = phi i8 [ %i.azg, %bb.df ], [ 0, %.preheader765 ] ; 2 uses
  %i.azh = lshr i32 %i.ays, 6
  %i.azi = and i32 %i.azh, 63                     ; 2 uses
  %.not337.1 = icmp eq i32 %i.azi, 63
  br i1 %.not337.1, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.azj = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %indvars.iv898
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.bx
  %i.azm = load i32, ptr %i.azl, align 4
  %i.azn = and i32 %i.azm, 16777215
  %i.azo = add nuw nsw i32 %i.azn, %i.azi
  %i.azp = zext nneg i32 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.azp
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 2
  %i.azs = load i16, ptr %i.azr, align 2, !tbaa !124
  %i.azt = icmp eq i16 %i.azs, %i.ayq
  %i.azu = select i1 %i.azt, i8 2, i8 0
  %i.azv = or disjoint i8 %i.azu, %.0293
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.0293.1 = phi i8 [ %i.azv, %bb.dh ], [ %.0293, %bb.dg ] ; 2 uses
  %i.azw = lshr i32 %i.ays, 12
  %i.azx = and i32 %i.azw, 63                     ; 2 uses
  %.not337.2 = icmp eq i32 %i.azx, 63
  br i1 %.not337.2, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.azy = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv898
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 4
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.baa, i64 %i.bv
  %i.bac = load i32, ptr %i.bab, align 4
  %i.bad = and i32 %i.bac, 16777215
  %i.bae = add nuw nsw i32 %i.bad, %i.azx
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.baf
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 2
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !124
  %i.baj = icmp eq i16 %i.bai, %i.ayq
  %i.bak = select i1 %i.baj, i8 4, i8 0
  %i.bal = or i8 %i.bak, %.0293.1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.0293.2 = phi i8 [ %i.bal, %bb.dj ], [ %.0293.1, %bb.di ] ; 2 uses
  %i.bam = lshr i32 %i.ays, 18
  %i.ban = and i32 %i.bam, 63                     ; 2 uses
  %.not337.3 = icmp eq i32 %i.ban, 63
  br i1 %.not337.3, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bao = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.bap = getelementptr [4 x i8], ptr %i.bao, i64 %indvars.iv898
  %i.baq = getelementptr [4 x i8], ptr %i.bap, i64 %i.bz
  %i.bar = load i32, ptr %i.baq, align 4
  %i.bas = and i32 %i.bar, 16777215
  %i.bat = add nuw nsw i32 %i.bas, %i.ban
  %i.bau = zext nneg i32 %i.bat to i64
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %i.ayn, i64 %i.bau
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 2
  %i.bax = load i16, ptr %i.baw, align 2, !tbaa !124
  %i.bay = icmp eq i16 %i.bax, %i.ayq
  %i.baz = select i1 %i.bay, i8 8, i8 0
  %i.bba = or i8 %i.baz, %.0293.2
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0293.3 = phi i8 [ %i.bba, %bb.dl ], [ %.0293.2, %bb.dk ]
  %i.bbb = xor i8 %.0293.3, 15
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph, %bb.dm
  %.sink = phi i8 [ %i.bbb, %bb.dm ], [ 0, %.lr.ph ]
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv
  store i8 %.sink, ptr %i.bbc, align 1, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bbd = icmp samesign ult i64 %indvars.iv.next, %i.aym
  br i1 %i.bbd, label %.lr.ph, label %._crit_edge

.split.us:                                        ; preds = %bb.cz
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %i.awr) #9
  br label %bb.fh

.split859.us:                                     ; preds = %.loopexit763.us
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %i.axi) #9
  br label %bb.fh

._crit_edge853:                                   ; preds = %._crit_edge841.us, %.preheader764.lr.ph, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit
  %.sroa.39.0.lcssa = phi ptr [ %i.cf, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ %i.cf, %.preheader764.lr.ph ], [ %.sroa.39.2.lcssa.us, %._crit_edge841.us ] ; 3 uses
  %.sroa.104.0.lcssa = phi ptr [ %i.cg, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ %i.cg, %.preheader764.lr.ph ], [ %.sroa.104.2.lcssa.us, %._crit_edge841.us ] ; 3 uses
  %i.bbe = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  %i.bbf = icmp sgt i32 %i.bbe, 0
  br i1 %i.bbf, label %bb.do, label %bb.fh

bb.do:                                            ; preds = %._crit_edge853
  %i.bbg = zext nneg i32 %i.bbe to i64
  %i.bbh = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbg, i32 noundef 1) #9 ; 7 uses
  %.not327 = icmp eq ptr %i.bbh, null
  %i.bbi = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  br i1 %.not327, label %bb.dp, label %.preheader760

.preheader760:                                    ; preds = %bb.do
  %i.bbj = icmp sgt i32 %i.bbi, 0
  br i1 %i.bbj, label %.lr.ph867, label %._crit_edge868.thread

bb.dp:                                            ; preds = %bb.do
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %i.bbi) #9
  br label %.critedge342

._crit_edge868:                                   ; preds = %bb.dr
  %i.bbk = icmp sgt i32 %i.bdo, 0
  br i1 %i.bbk, label %bb.ds, label %._crit_edge868.thread

.lr.ph867:                                        ; preds = %.preheader760, %bb.dr
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %bb.dr ], [ 0, %.preheader760 ] ; 4 uses
  %.0273865 = phi i32 [ %i.bdo, %bb.dr ], [ 0, %.preheader760 ] ; 2 uses
  %i.bbl = load ptr, ptr %4, align 8, !tbaa !116
  %i.bbm = getelementptr inbounds nuw [32 x i8], ptr %i.bbl, i64 %indvars.iv928 ; 2 uses
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !139 ; 6 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8
  %i.bbp = load i32, ptr %i.bbo, align 8, !tbaa !141 ; 5 uses
  %i.bbq = icmp sgt i32 %i.bbp, 0
  br i1 %i.bbq, label %.lr.ph.preheader.i, label %_ZL19calcAreaOfPolygon2DPKii.exit.thread
end_hunk_1
