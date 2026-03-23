begin_hunk_0
  %280 = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.644.0.copyload.i.i.i
  %281 = add i64 %.sroa.442.0.copyload.i.i.i, -1  ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %281, %.sroa.15.0.copyload.i.i.i
  %.not73.us.i.i.i = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  %282 = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %.not73.us.i.us.i.i202 = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br label %283

283:                                              ; preds = %366, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i
end_hunk_0
begin_hunk_1
  br i1 %299, label %.lr.ph, label %.preheader76.us.i.i.i.preheader

300:                                              ; preds = %319
  %301 = add nuw nsw i64 %.sroa.04.0.i.us.i.i.i196, 1 ; 2 uses
  %302 = icmp ult i64 %301, %.sroa.15.0.copyload.i.i.i
  br i1 %302, label %.lr.ph, label %.preheader76.us.i.i.i.preheader

.preheader76.us.i.i.i.preheader:                  ; preds = %300, %298
  %303 = icmp ult i64 %288, %.sroa.442.0.copyload.i.i.i
  br i1 %303, label %.lr.ph198, label %.loopexit.i.us.i.i.i

.preheader76.us.i.i.i:                            ; preds = %310
  %304 = icmp ult i64 %288, %305
  br i1 %304, label %.lr.ph198, label %.loopexit.i.us.i.i.i

.lr.ph198:                                        ; preds = %.preheader76.us.i.i.i.preheader, %.preheader76.us.i.i.i
  %.sroa.2.0.i.us.i.i.i197 = phi i64 [ %305, %.preheader76.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader76.us.i.i.i.preheader ]
  %305 = add i64 %.sroa.2.0.i.us.i.i.i197, -1     ; 6 uses
  %306 = icmp ult i64 %305, %.sroa.15.0.copyload.i.i.i
  br i1 %306, label %307, label %.split.us.invoke.i.i.i

307:                                              ; preds = %.lr.ph198
  %308 = add i64 %305, %290                       ; 3 uses
  %309 = icmp ult i64 %308, %.sroa.1351.0.copyload.i.i.i
  br i1 %309, label %310, label %.split.us.invoke.i.i.i
end_hunk_1
begin_hunk_2
  br label %.sink.split.i.us.i.i.i

.lr.ph:                                           ; preds = %298, %300
  %.sroa.04.0.i.us.i.i.i196 = phi i64 [ %301, %300 ], [ %.sroa.0.0.i.i.us.i.i.i, %298 ] ; 4 uses
  %317 = add i64 %.sroa.04.0.i.us.i.i.i196, %290  ; 2 uses
  %318 = icmp ult i64 %317, %.sroa.1351.0.copyload.i.i.i
  br i1 %318, label %319, label %.split136.us.i.i.i

319:                                              ; preds = %.lr.ph
  %320 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i.us.i.i.i196
  %321 = load i8, ptr %320, align 1, !alias.scope !348, !noalias !353, !noundef !4
  %322 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %317
  %323 = load i8, ptr %322, align 1, !alias.scope !345, !noalias !350, !noundef !4
end_hunk_2
begin_hunk_3
324:                                              ; preds = %319
  %reass.sub = sub i64 %290, %.sroa.442.0.copyload.i.i.i
  %325 = add i64 %reass.sub, 1
  %326 = add i64 %325, %.sroa.04.0.i.us.i.i.i196
  br label %.sink.split.i.us.i.i.i

327:                                              ; preds = %.lr.ph.i39.us.i.i.i
end_hunk_3
begin_hunk_4
  br i1 %340, label %379, label %.preheader75.us.i.i.i.preheader

.preheader75.us.i.i.i.preheader:                  ; preds = %.lr.ph.i47.us.i.i.i
  br i1 %282, label %.lr.ph201, label %.preheader.us.i.preheader.i.i

.preheader75.us.i.i.i:                            ; preds = %371
  %341 = add nuw nsw i64 %.sroa.04.0.i50.us.i.i.i200, 1 ; 2 uses
  %342 = icmp ult i64 %341, %.sroa.15.0.copyload.i.i.i
  br i1 %342, label %.lr.ph201, label %.preheader.us.i.preheader.i.i

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader75.us.i.i.i, %.preheader75.us.i.i.i.preheader
  br i1 %.first_iter.i.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not73.us.i.us.i.i202, label %.loopexit.i.us.i.i.i, label %.lr.ph204

.preheader.us.i.us.i.i:                           ; preds = %346
  %.not73.us.i.us.i.i = icmp eq i64 %343, 0
  br i1 %.not73.us.i.us.i.i, label %.loopexit.i.us.i.i.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i51.us.i.us.i.i203 = phi i64 [ %343, %.preheader.us.i.us.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %343 = add i64 %.sroa.2.0.i51.us.i.us.i.i203, -1 ; 4 uses
  %344 = add i64 %343, %333                       ; 3 uses
  %345 = icmp ult i64 %344, %.sroa.1351.0.copyload.i.i.i
  br i1 %345, label %346, label %.split.us.invoke.i.i.i

346:                                              ; preds = %.lr.ph204
  %347 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %343
  %348 = load i8, ptr %347, align 1, !alias.scope !357, !noalias !362, !noundef !4
  %349 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %344
end_hunk_4
begin_hunk_5
  store i64 %368, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !366, !noalias !339
  br label %283

.lr.ph201:                                        ; preds = %.preheader75.us.i.i.i.preheader, %.preheader75.us.i.i.i
  %.sroa.04.0.i50.us.i.i.i200 = phi i64 [ %341, %.preheader75.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader75.us.i.i.i.preheader ] ; 4 uses
  %369 = add i64 %.sroa.04.0.i50.us.i.i.i200, %333 ; 2 uses
  %370 = icmp ult i64 %369, %.sroa.1351.0.copyload.i.i.i
  br i1 %370, label %371, label %.split148.us.i.i.i

371:                                              ; preds = %.lr.ph201
  %372 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i50.us.i.i.i200
  %373 = load i8, ptr %372, align 1, !alias.scope !357, !noalias !362, !noundef !4
  %374 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %369
  %375 = load i8, ptr %374, align 1, !alias.scope !354, !noalias !359, !noundef !4
end_hunk_5
begin_hunk_6
376:                                              ; preds = %371
  %reass.sub42 = sub i64 %333, %.sroa.442.0.copyload.i.i.i
  %377 = add i64 %reass.sub42, 1
  %378 = add i64 %377, %.sroa.04.0.i50.us.i.i.i200
  br label %381

379:                                              ; preds = %.lr.ph.i47.us.i.i.i
end_hunk_6
begin_hunk_7
  br i1 %.not.i33.i.i.i, label %.lr.ph.i.i43.i.i.preheader, label %.lr.ph.i.i43.i.i.sink.split

.lr.ph.i.i43.i.i.sink.split:                      ; preds = %.noexc35.i.peel.i.i, %577
  %.sink208 = phi i64 [ %575, %577 ], [ %476, %.noexc35.i.peel.i.i ]
  %.sroa.04.0156.i.i.i.ph = phi i64 [ %.sroa.48.1203.i.i.i, %577 ], [ %.sroa.48.1203.i.peel.i.i, %.noexc35.i.peel.i.i ]
  %478 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i22.i, align 8, !alias.scope !366, !noalias !339, !nonnull !4, !noundef !4
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 %.sink208
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %479, ptr nonnull readonly align 1 %265, i64 %266, i1 false), !noalias !369
  %.pre.i34.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !366, !noalias !339
  br label %.lr.ph.i.i43.i.i.preheader

.lr.ph.i.i43.i.i.preheader:                       ; preds = %.noexc35.i.peel.i.i, %.lr.ph.i.i43.i.i.sink.split
  %.pn110.i.i.ph = phi i64 [ %.pre.i34.i.i.i, %.lr.ph.i.i43.i.i.sink.split ], [ %476, %.noexc35.i.peel.i.i ]
  %.sroa.04.0156.i.i.i.ph246 = phi i64 [ %.sroa.04.0156.i.i.i.ph, %.lr.ph.i.i43.i.i.sink.split ], [ %.sroa.48.1203.i.peel.i.i, %.noexc35.i.peel.i.i ]
  br label %.lr.ph.i.i43.i.i

.lr.ph.i.i43.i.i:                                 ; preds = %.lr.ph.i.i43.i.i.preheader, %.noexc35.i.i.i
  %.pn110.i.i = phi i64 [ %575, %.noexc35.i.i.i ], [ %.pn110.i.i.ph, %.lr.ph.i.i43.i.i.preheader ]
  %.sroa.04.0156.i.i.i = phi i64 [ %.sroa.48.1203.i.i.i, %.noexc35.i.i.i ], [ %.sroa.04.0156.i.i.i.ph246, %.lr.ph.i.i43.i.i.preheader ] ; 14 uses
  %storemerge.i.i = add i64 %.pn110.i.i, %266
  store i64 %storemerge.i.i, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !366, !noalias !339
  %480 = icmp eq i64 %.sroa.04.0156.i.i.i, 0
  br i1 %480, label %488, label %481
end_hunk_7
begin_hunk_8
.noexc.i.i28.i:                                   ; preds = %.loopexit205.i.i.i
  unreachable

.split148.us.i.i.i:                               ; preds = %.lr.ph201
  %557 = add i64 %333, %.sroa.442.0.copyload.i.i.i
  %umax.i53.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i.i.i, i64 %557)
  br label %.split.us.invoke.i.i.i

.split.us.invoke.i.i.i:                           ; preds = %.preheader.us.i.preheader.split.i.i, %307, %.lr.ph198, %.lr.ph204, %.split136.us.i.i.i, %.split148.us.i.i.i
  %558 = phi i64 [ %umax.i53.i.i.i, %.split148.us.i.i.i ], [ %344, %.lr.ph204 ], [ %umax.i.i.i.i, %.split136.us.i.i.i ], [ %308, %307 ], [ %305, %.lr.ph198 ], [ %281, %.preheader.us.i.preheader.split.i.i ]
  %559 = phi i64 [ %.sroa.1351.0.copyload.i.i.i, %.split148.us.i.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %.lr.ph204 ], [ %.sroa.1351.0.copyload.i.i.i, %.split136.us.i.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %307 ], [ %.sroa.15.0.copyload.i.i.i, %.lr.ph198 ], [ %.sroa.15.0.copyload.i.i.i, %.preheader.us.i.preheader.split.i.i ]
  %560 = phi ptr [ @20, %.split148.us.i.i.i ], [ @19, %.lr.ph204 ], [ @20, %.split136.us.i.i.i ], [ @19, %307 ], [ @18, %.lr.ph198 ], [ @18, %.preheader.us.i.preheader.split.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %558, i64 noundef range(i64 0, -9223372036854775808) %559, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %560) #21
          to label %.split.us.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !344

end_hunk_8
