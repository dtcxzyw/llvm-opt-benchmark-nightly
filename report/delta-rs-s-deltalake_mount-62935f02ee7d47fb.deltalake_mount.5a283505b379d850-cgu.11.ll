begin_hunk_0
  %330 = sub i64 %.sroa.036.sroa.15.0.copyload.i.i.i, %.sroa.036.sroa.6.0.copyload.i.i.i ; [#uses=1 type=i64]
  %331 = add i64 %.sroa.036.sroa.4.0.copyload.i.i.i, -1 ; [#uses=2 type=i64]
  %.first_iter.i.i.i = icmp ult i64 %331, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=1 type=i1]
  %.not194.us.i.i.i = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0 ; [#uses=1 type=i1]
  %332 = icmp ult i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=1 type=i1]
  %.not194.us.i.us.i.i192 = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0 ; [#uses=1 type=i1]
  br label %333

333:                                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, %.split.us.i.i.i
end_hunk_0
begin_hunk_1
  br i1 %349, label %.lr.ph, label %.preheader196.us.i.i.i.preheader

350:                                              ; preds = %370
  %351 = add nuw nsw i64 %.sroa.04.0.i.us.i.i.i186, 1 ; [#uses=2 type=i64]
  %352 = icmp ult i64 %351, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %352, label %.lr.ph, label %.preheader196.us.i.i.i.preheader

.preheader196.us.i.i.i.preheader:                 ; preds = %350, %348
  %353 = icmp ult i64 %338, %.sroa.036.sroa.4.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %353, label %.lr.ph188, label %.preheader196.us.i.i.i.preheader._crit_edge

.preheader196.us.i.i.i:                           ; preds = %361
  %354 = icmp ult i64 %338, %356                  ; [#uses=1 type=i1]
  br i1 %354, label %.lr.ph188, label %.preheader196.us.i.i.i.preheader._crit_edge

.preheader196.us.i.i.i.preheader._crit_edge:      ; preds = %.preheader196.us.i.i.i.preheader, %.preheader196.us.i.i.i
  %355 = add i64 %340, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=2 type=i64]
  br label %.sink.split.i.us.i.i.i

.lr.ph188:                                        ; preds = %.preheader196.us.i.i.i.preheader, %.preheader196.us.i.i.i
  %.sroa.2.0.i.us.i.i.i187 = phi i64 [ %356, %.preheader196.us.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader196.us.i.i.i.preheader ] ; [#uses=1 type=i64]
  %356 = add i64 %.sroa.2.0.i.us.i.i.i187, -1     ; [#uses=6 type=i64]
  %357 = icmp ult i64 %356, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %357, label %358, label %.split245.us.invoke.i.i.i

358:                                              ; preds = %.lr.ph188
  %359 = add i64 %356, %340                       ; [#uses=3 type=i64]
  %360 = icmp ult i64 %359, %.sroa.036.sroa.13.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %360, label %361, label %.split245.us.invoke.i.i.i
end_hunk_1
begin_hunk_2
  br label %.sink.split.i88.us.i.i.i

.lr.ph:                                           ; preds = %348, %350
  %.sroa.04.0.i.us.i.i.i186 = phi i64 [ %351, %350 ], [ %.sroa.0.0.i.i.us.i.i.i, %348 ] ; [#uses=4 type=i64]
  %368 = add i64 %.sroa.04.0.i.us.i.i.i186, %340  ; [#uses=2 type=i64]
  %369 = icmp ult i64 %368, %.sroa.036.sroa.13.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %369, label %370, label %.split250.us.i.i.i

370:                                              ; preds = %.lr.ph
  %371 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i.us.i.i.i186 ; [#uses=1 type=ptr]
  %372 = load i8, ptr %371, align 1, !alias.scope !86, !noalias !91, !noundef !8 ; [#uses=1 type=i8]
  %373 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %368 ; [#uses=1 type=ptr]
  %374 = load i8, ptr %373, align 1, !alias.scope !83, !noalias !88, !noundef !8 ; [#uses=1 type=i8]
end_hunk_2
begin_hunk_3
375:                                              ; preds = %370
  %reass.sub = sub i64 %340, %.sroa.036.sroa.4.0.copyload.i.i.i ; [#uses=1 type=i64]
  %376 = add i64 %reass.sub, 1                    ; [#uses=1 type=i64]
  %377 = add i64 %376, %.sroa.04.0.i.us.i.i.i186  ; [#uses=1 type=i64]
  br label %.sink.split.i88.us.i.i.i

378:                                              ; preds = %.lr.ph.i.us.i.i.i
end_hunk_3
begin_hunk_4
  br i1 %391, label %414, label %.preheader195.us.i.i.i.preheader

.preheader195.us.i.i.i.preheader:                 ; preds = %.lr.ph.i95.us.i.i.i
  br i1 %332, label %.lr.ph191, label %.preheader.us.i.preheader.i.i

.preheader195.us.i.i.i:                           ; preds = %406
  %392 = add nuw nsw i64 %.sroa.04.0.i98.us.i.i.i190, 1 ; [#uses=2 type=i64]
  %393 = icmp ult i64 %392, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %393, label %.lr.ph191, label %.preheader.us.i.preheader.i.i

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader195.us.i.i.i, %.preheader195.us.i.i.i.preheader
  br i1 %.first_iter.i.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not194.us.i.us.i.i192, label %.split.us.i.i, label %.lr.ph194

.preheader.us.i.us.i.i:                           ; preds = %397
  %.not194.us.i.us.i.i = icmp eq i64 %394, 0      ; [#uses=1 type=i1]
  br i1 %.not194.us.i.us.i.i, label %.split.us.i.i, label %.lr.ph194

.lr.ph194:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i99.us.i.us.i.i193 = phi i64 [ %394, %.preheader.us.i.us.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ] ; [#uses=1 type=i64]
  %394 = add i64 %.sroa.2.0.i99.us.i.us.i.i193, -1 ; [#uses=4 type=i64]
  %395 = add i64 %394, %384                       ; [#uses=3 type=i64]
  %396 = icmp ult i64 %395, %.sroa.036.sroa.13.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %396, label %397, label %.split245.us.invoke.i.i.i

397:                                              ; preds = %.lr.ph194
  %398 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %394 ; [#uses=1 type=ptr]
  %399 = load i8, ptr %398, align 1, !alias.scope !95, !noalias !100, !noundef !8 ; [#uses=1 type=i8]
  %400 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %395 ; [#uses=1 type=ptr]
end_hunk_4
begin_hunk_5
  %403 = add i64 %384, %.sroa.036.sroa.15.0.copyload.i.i.i ; [#uses=2 type=i64]
  br label %.sink.split.i.us.i.i.i

.lr.ph191:                                        ; preds = %.preheader195.us.i.i.i.preheader, %.preheader195.us.i.i.i
  %.sroa.04.0.i98.us.i.i.i190 = phi i64 [ %392, %.preheader195.us.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader195.us.i.i.i.preheader ] ; [#uses=4 type=i64]
  %404 = add i64 %.sroa.04.0.i98.us.i.i.i190, %384 ; [#uses=2 type=i64]
  %405 = icmp ult i64 %404, %.sroa.036.sroa.13.0.copyload.i.i.i ; [#uses=1 type=i1]
  br i1 %405, label %406, label %.split260.us.i.i.i

406:                                              ; preds = %.lr.ph191
  %407 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i98.us.i.i.i190 ; [#uses=1 type=ptr]
  %408 = load i8, ptr %407, align 1, !alias.scope !95, !noalias !100, !noundef !8 ; [#uses=1 type=i8]
  %409 = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %404 ; [#uses=1 type=ptr]
  %410 = load i8, ptr %409, align 1, !alias.scope !92, !noalias !97, !noundef !8 ; [#uses=1 type=i8]
end_hunk_5
begin_hunk_6
411:                                              ; preds = %406
  %reass.sub74 = sub i64 %384, %.sroa.036.sroa.4.0.copyload.i.i.i ; [#uses=1 type=i64]
  %412 = add i64 %reass.sub74, 1                  ; [#uses=1 type=i64]
  %413 = add i64 %412, %.sroa.04.0.i98.us.i.i.i190 ; [#uses=1 type=i64]
  br label %416

414:                                              ; preds = %.lr.ph.i95.us.i.i.i
end_hunk_6
begin_hunk_7
.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i
  unreachable

.split260.us.i.i.i:                               ; preds = %.lr.ph191
  %506 = add i64 %384, %.sroa.036.sroa.4.0.copyload.i.i.i ; [#uses=1 type=i64]
  %umax.i101.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload.i.i.i, i64 %506) ; [#uses=1 type=i64]
  br label %.split245.us.invoke.i.i.i

.split245.us.invoke.i.i.i:                        ; preds = %.preheader.us.i.preheader.split.i.i, %358, %.lr.ph188, %.lr.ph194, %.split250.us.i.i.i, %.split260.us.i.i.i
  %507 = phi i64 [ %umax.i101.i.i.i, %.split260.us.i.i.i ], [ %395, %.lr.ph194 ], [ %umax.i.i.i.i, %.split250.us.i.i.i ], [ %359, %358 ], [ %356, %.lr.ph188 ], [ %331, %.preheader.us.i.preheader.split.i.i ] ; [#uses=1 type=i64]
  %508 = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.split260.us.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.lr.ph194 ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.split250.us.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %358 ], [ %.sroa.036.sroa.15.0.copyload.i.i.i, %.lr.ph188 ], [ %.sroa.036.sroa.15.0.copyload.i.i.i, %.preheader.us.i.preheader.split.i.i ] ; [#uses=1 type=i64]
  %509 = phi ptr [ @6, %.split260.us.i.i.i ], [ @5, %.lr.ph194 ], [ @6, %.split250.us.i.i.i ], [ @5, %358 ], [ @4, %.lr.ph188 ], [ @4, %.preheader.us.i.preheader.split.i.i ] ; [#uses=1 type=ptr]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %507, i64 noundef range(i64 0, -9223372036854775808) %508, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %509) #19
          to label %.split245.us.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !58

end_hunk_7
