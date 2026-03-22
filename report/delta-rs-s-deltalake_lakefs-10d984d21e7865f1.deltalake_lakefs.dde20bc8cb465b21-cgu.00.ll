begin_hunk_0
  %26 = alloca [16 x i8], align 16                ; [#uses=10 type=ptr]
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; [#uses=3 type=ptr]
  %28 = load i8, ptr %27, align 8, !range !256, !noundef !3 ; [#uses=1 type=i8]
  switch i8 %28, label %default.unreachable132 [
    i8 0, label %.thread
    i8 1, label %34
    i8 2, label %35
    i8 3, label %42
  ]

default.unreachable132:                           ; preds = %42, %3
  unreachable

.thread:                                          ; preds = %3
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 57 ; [#uses=3 type=ptr]
  switch i8 %.pre, label %default.unreachable132 [
    i8 0, label %44
    i8 1, label %113
    i8 2, label %114
end_hunk_1
begin_hunk_2
.lr.ph.i19.i.i.i.i:                               ; preds = %319
  %322 = getelementptr inbounds nuw i8, ptr %8, i64 32 ; [#uses=1 type=ptr]
  %323 = load i64, ptr %322, align 8, !alias.scope !1552, !noalias !1559, !noundef !3 ; [#uses=1 type=i64]
  %324 = load i64, ptr %214, align 8, !alias.scope !1552, !noalias !1559 ; [#uses=7 type=i64]
  %325 = getelementptr inbounds nuw i8, ptr %8, i64 24 ; [#uses=1 type=ptr]
  %326 = load i64, ptr %325, align 8, !alias.scope !1552, !noalias !1559 ; [#uses=1 type=i64]
  %327 = add i64 %324, -1                         ; [#uses=2 type=i64]
  %.first_iter.i.i.i.i = icmp ult i64 %327, %292  ; [#uses=1 type=i1]
  %328 = icmp ult i64 %324, %292                  ; [#uses=1 type=i1]
  %.not.i.us.i.i.i199 = icmp eq i64 %324, 0       ; [#uses=2 type=i1]
  br label %329

329:                                              ; preds = %341, %.lr.ph.i19.i.i.i.i
end_hunk_2
begin_hunk_3
  br i1 %338, label %339, label %.preheader33.i.i.i.i.preheader

.preheader33.i.i.i.i.preheader:                   ; preds = %329
  br i1 %328, label %.lr.ph198, label %.preheader.i.preheader.i.i.i

339:                                              ; preds = %329
  %340 = add i64 %330, %292                       ; [#uses=1 type=i64]
end_hunk_3
begin_hunk_4
  br i1 %344, label %329, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %358
  %345 = add nuw nsw i64 %.sroa.04.0.i22.i.i.i.i197, 1 ; [#uses=2 type=i64]
  %346 = icmp ult i64 %345, %292                  ; [#uses=1 type=i1]
  br i1 %346, label %.lr.ph198, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.preheader33.i.i.i.i, %.preheader33.i.i.i.i.preheader
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i199, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph201

.preheader.i.us.i.i.i:                            ; preds = %350
  %.not.i.us.i.i.i = icmp eq i64 %347, 0          ; [#uses=1 type=i1]
  br i1 %.not.i.us.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.lr.ph201

.lr.ph201:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.2.0.i23.i.us.i.i.i200 = phi i64 [ %347, %.preheader.i.us.i.i.i ], [ %324, %.preheader.i.us.i.i.i.preheader ] ; [#uses=1 type=i64]
  %347 = add i64 %.sroa.2.0.i23.i.us.i.i.i200, -1 ; [#uses=4 type=i64]
  %348 = add i64 %347, %330                       ; [#uses=3 type=i64]
  %349 = icmp ult i64 %348, %288                  ; [#uses=1 type=i1]
  br i1 %349, label %350, label %.invoke.i.i.i

350:                                              ; preds = %.lr.ph201
  %351 = getelementptr inbounds nuw i8, ptr %290, i64 %347 ; [#uses=1 type=ptr]
  %352 = load i8, ptr %351, align 1, !alias.scope !1557, !noalias !1562, !noundef !3 ; [#uses=1 type=i8]
  %353 = getelementptr inbounds nuw i8, ptr %286, i64 %348 ; [#uses=1 type=ptr]
end_hunk_4
begin_hunk_5
  %355 = add i64 %330, %326                       ; [#uses=1 type=i64]
  br label %341

.lr.ph198:                                        ; preds = %.preheader33.i.i.i.i.preheader, %.preheader33.i.i.i.i
  %.sroa.04.0.i22.i.i.i.i197 = phi i64 [ %345, %.preheader33.i.i.i.i ], [ %324, %.preheader33.i.i.i.i.preheader ] ; [#uses=4 type=i64]
  %356 = add i64 %.sroa.04.0.i22.i.i.i.i197, %330 ; [#uses=2 type=i64]
  %357 = icmp ult i64 %356, %288                  ; [#uses=1 type=i1]
  br i1 %357, label %358, label %363

.preheader.i.i.i.i:                               ; preds = %.preheader.i.preheader.i.i.i
  br i1 %.not.i.us.i.i.i199, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i, label %.invoke.i.i.i

358:                                              ; preds = %.lr.ph198
  %359 = getelementptr inbounds nuw i8, ptr %290, i64 %.sroa.04.0.i22.i.i.i.i197 ; [#uses=1 type=ptr]
  %360 = load i8, ptr %359, align 1, !alias.scope !1557, !noalias !1562, !noundef !3 ; [#uses=1 type=i8]
  %361 = getelementptr inbounds nuw i8, ptr %286, i64 %356 ; [#uses=1 type=ptr]
  %362 = load i8, ptr %361, align 1, !alias.scope !1555, !noalias !1561, !noundef !3 ; [#uses=1 type=i8]
  %.not23.i26.i.i.i.i = icmp eq i8 %360, %362     ; [#uses=1 type=i1]
  br i1 %.not23.i26.i.i.i.i, label %.preheader33.i.i.i.i, label %365

363:                                              ; preds = %.lr.ph198
  %364 = add i64 %330, %324                       ; [#uses=1 type=i64]
  %umax.i25.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %288, i64 %364) ; [#uses=1 type=i64]
  br label %.invoke.i.i.i

365:                                              ; preds = %358
  %reass.sub58 = sub i64 %330, %324               ; [#uses=1 type=i64]
  %366 = add i64 %reass.sub58, 1                  ; [#uses=1 type=i64]
  %367 = add i64 %366, %.sroa.04.0.i22.i.i.i.i197 ; [#uses=1 type=i64]
  br label %341

368:                                              ; preds = %281
end_hunk_5
begin_hunk_6
390:                                              ; preds = %377
  %.sroa.0.0.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %379, i64 %373) ; [#uses=3 type=i64]
  %391 = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i, %292 ; [#uses=1 type=i1]
  br i1 %391, label %.lr.ph194, label %.preheader34.i.i.i.i.preheader

.sink.split.i.i.i.i.i:                            ; preds = %420, %411, %388
  %.sink.i.i.i.i.i = phi i64 [ %376, %411 ], [ 0, %420 ], [ 0, %388 ] ; [#uses=1 type=i64]
end_hunk_6
begin_hunk_7
  br i1 %393, label %377, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

394:                                              ; preds = %413
  %395 = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i193, 1 ; [#uses=2 type=i64]
  %396 = icmp ult i64 %395, %292                  ; [#uses=1 type=i1]
  br i1 %396, label %.lr.ph194, label %.preheader34.i.i.i.i.preheader

.preheader34.i.i.i.i.preheader:                   ; preds = %394, %390
  %397 = icmp ult i64 %379, %373                  ; [#uses=1 type=i1]
  br i1 %397, label %.lr.ph196, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph194:                                        ; preds = %390, %394
  %.sroa.04.0.i.i.i.i.i193 = phi i64 [ %395, %394 ], [ %.sroa.0.0.i.i.i.i.i.i, %390 ] ; [#uses=4 type=i64]
  %398 = add i64 %.sroa.04.0.i.i.i.i.i193, %378   ; [#uses=2 type=i64]
  %399 = icmp ult i64 %398, %288                  ; [#uses=1 type=i1]
  br i1 %399, label %413, label %418

.preheader34.i.i.i.i:                             ; preds = %406
  %400 = icmp ult i64 %379, %401                  ; [#uses=1 type=i1]
  br i1 %400, label %.lr.ph196, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i

.lr.ph196:                                        ; preds = %.preheader34.i.i.i.i.preheader, %.preheader34.i.i.i.i
  %.sroa.2.0.i.i.i.i.i195 = phi i64 [ %401, %.preheader34.i.i.i.i ], [ %373, %.preheader34.i.i.i.i.preheader ] ; [#uses=1 type=i64]
  %401 = add i64 %.sroa.2.0.i.i.i.i.i195, -1      ; [#uses=6 type=i64]
  %402 = icmp ult i64 %401, %292                  ; [#uses=1 type=i1]
  br i1 %402, label %403, label %.invoke.i.i.i

403:                                              ; preds = %.lr.ph196
  %404 = add i64 %401, %378                       ; [#uses=3 type=i64]
  %405 = icmp ult i64 %404, %288                  ; [#uses=1 type=i1]
  br i1 %405, label %406, label %.invoke.i.i.i
end_hunk_7
begin_hunk_8
  %412 = add i64 %378, %375                       ; [#uses=1 type=i64]
  br label %.sink.split.i.i.i.i.i

413:                                              ; preds = %.lr.ph194
  %414 = getelementptr inbounds nuw i8, ptr %290, i64 %.sroa.04.0.i.i.i.i.i193 ; [#uses=1 type=ptr]
  %415 = load i8, ptr %414, align 1, !alias.scope !1568, !noalias !1573, !noundef !3 ; [#uses=1 type=i8]
  %416 = getelementptr inbounds nuw i8, ptr %286, i64 %398 ; [#uses=1 type=ptr]
  %417 = load i8, ptr %416, align 1, !alias.scope !1566, !noalias !1572, !noundef !3 ; [#uses=1 type=i8]
  %.not23.i.i.i.i.i = icmp eq i8 %415, %417       ; [#uses=1 type=i1]
  br i1 %.not23.i.i.i.i.i, label %394, label %420

418:                                              ; preds = %.lr.ph194
  %419 = add i64 %.sroa.0.0.i.i.i.i.i.i, %378     ; [#uses=1 type=i64]
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %288, i64 %419) ; [#uses=1 type=i64]
  br label %.invoke.i.i.i
end_hunk_8
begin_hunk_9
420:                                              ; preds = %413
  %reass.sub = sub i64 %378, %373                 ; [#uses=1 type=i64]
  %421 = add i64 %reass.sub, 1                    ; [#uses=1 type=i64]
  %422 = add i64 %421, %.sroa.04.0.i.i.i.i.i193   ; [#uses=1 type=i64]
  br label %.sink.split.i.i.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.preheader34.i.i.i.i.preheader, %.preheader34.i.i.i.i, %341, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs.exit16.i.i.i.i.i.i.i, %307, %368, %.preheader.i.i.i.i, %319, %305, %273, %232, %.preheader.i4.i.i.i.i
end_hunk_9
begin_hunk_10
  %434 = icmp ult i64 %433, %189                  ; [#uses=1 type=i1]
  br i1 %434, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i.i, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph, %403, %.lr.ph196, %.lr.ph201, %418, %363, %.preheader.i.i.i.i
  %435 = phi i64 [ %327, %.preheader.i.i.i.i ], [ %umax.i.i.i.i.i, %418 ], [ %404, %403 ], [ %348, %.lr.ph201 ], [ %umax.i25.i.i.i.i, %363 ], [ %401, %.lr.ph196 ], [ %433, %.lr.ph ] ; [#uses=1 type=i64]
  %436 = phi i64 [ %292, %.preheader.i.i.i.i ], [ %288, %418 ], [ %288, %403 ], [ %288, %.lr.ph201 ], [ %288, %363 ], [ %292, %.lr.ph196 ], [ %189, %.lr.ph ] ; [#uses=1 type=i64]
  %437 = phi ptr [ @4, %.preheader.i.i.i.i ], [ @6, %418 ], [ @5, %403 ], [ @5, %.lr.ph201 ], [ @6, %363 ], [ @4, %.lr.ph196 ], [ @52, %.lr.ph ] ; [#uses=1 type=ptr]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %435, i64 noundef range(i64 0, -9223372036854775808) %436, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %437) #37
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1518

end_hunk_10
