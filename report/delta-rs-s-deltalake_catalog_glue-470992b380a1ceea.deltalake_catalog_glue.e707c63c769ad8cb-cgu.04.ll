begin_hunk_0
  %478 = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.644.0.copyload.i.i.i
  %479 = add i64 %.sroa.442.0.copyload.i.i.i, -1  ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %479, %.sroa.15.0.copyload.i.i.i
  %.not72.us.i.i.i = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  %480 = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %.not72.us.i.us.i.i694 = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br label %481

481:                                              ; preds = %559, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i
end_hunk_0
begin_hunk_1
  br i1 %497, label %.lr.ph, label %.preheader75.us.i.i.i.preheader

498:                                              ; preds = %517
  %499 = add nuw nsw i64 %.sroa.04.0.i.us.i.i.i688, 1 ; 2 uses
  %500 = icmp ult i64 %499, %.sroa.15.0.copyload.i.i.i
  br i1 %500, label %.lr.ph, label %.preheader75.us.i.i.i.preheader

.preheader75.us.i.i.i.preheader:                  ; preds = %498, %496
  %501 = icmp ult i64 %486, %.sroa.442.0.copyload.i.i.i
  br i1 %501, label %.lr.ph690, label %.loopexit.i.us.i.i.i

.preheader75.us.i.i.i:                            ; preds = %508
  %502 = icmp ult i64 %486, %503
  br i1 %502, label %.lr.ph690, label %.loopexit.i.us.i.i.i

.lr.ph690:                                        ; preds = %.preheader75.us.i.i.i.preheader, %.preheader75.us.i.i.i
  %.sroa.2.0.i.us.i.i.i689 = phi i64 [ %503, %.preheader75.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader75.us.i.i.i.preheader ]
  %503 = add i64 %.sroa.2.0.i.us.i.i.i689, -1     ; 6 uses
  %504 = icmp ult i64 %503, %.sroa.15.0.copyload.i.i.i
  br i1 %504, label %505, label %.split.us.invoke.i.i.i

505:                                              ; preds = %.lr.ph690
  %506 = add i64 %503, %488                       ; 3 uses
  %507 = icmp ult i64 %506, %.sroa.1351.0.copyload.i.i.i
  br i1 %507, label %508, label %.split.us.invoke.i.i.i
end_hunk_1
begin_hunk_2
  br label %.sink.split.i.us.i.i.i

.lr.ph:                                           ; preds = %496, %498
  %.sroa.04.0.i.us.i.i.i688 = phi i64 [ %499, %498 ], [ %.sroa.0.0.i.i.us.i.i.i, %496 ] ; 4 uses
  %515 = add i64 %.sroa.04.0.i.us.i.i.i688, %488  ; 2 uses
  %516 = icmp ult i64 %515, %.sroa.1351.0.copyload.i.i.i
  br i1 %516, label %517, label %.split135.us.i.i.i

517:                                              ; preds = %.lr.ph
  %518 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i.us.i.i.i688
  %519 = load i8, ptr %518, align 1, !alias.scope !1533, !noalias !1538, !noundef !4
  %520 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %515
  %521 = load i8, ptr %520, align 1, !alias.scope !1530, !noalias !1535, !noundef !4
end_hunk_2
begin_hunk_3
522:                                              ; preds = %517
  %reass.sub = sub i64 %488, %.sroa.442.0.copyload.i.i.i
  %523 = add i64 %reass.sub, 1
  %524 = add i64 %523, %.sroa.04.0.i.us.i.i.i688
  br label %.sink.split.i.us.i.i.i

525:                                              ; preds = %.lr.ph.i38.us.i.i.i
end_hunk_3
begin_hunk_4
  br i1 %538, label %575, label %.preheader74.us.i.i.i.preheader

.preheader74.us.i.i.i.preheader:                  ; preds = %.lr.ph.i46.us.i.i.i
  br i1 %480, label %.lr.ph693, label %.preheader.us.i.preheader.i.i

.preheader74.us.i.i.i:                            ; preds = %567
  %539 = add nuw nsw i64 %.sroa.04.0.i49.us.i.i.i692, 1 ; 2 uses
  %540 = icmp ult i64 %539, %.sroa.15.0.copyload.i.i.i
  br i1 %540, label %.lr.ph693, label %.preheader.us.i.preheader.i.i

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader74.us.i.i.i, %.preheader74.us.i.i.i.preheader
  br i1 %.first_iter.i.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not72.us.i.us.i.i694, label %.loopexit.i.us.i.i.i, label %.lr.ph696

.preheader.us.i.us.i.i:                           ; preds = %544
  %.not72.us.i.us.i.i = icmp eq i64 %541, 0
  br i1 %.not72.us.i.us.i.i, label %.loopexit.i.us.i.i.i, label %.lr.ph696

.lr.ph696:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i50.us.i.us.i.i695 = phi i64 [ %541, %.preheader.us.i.us.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %541 = add i64 %.sroa.2.0.i50.us.i.us.i.i695, -1 ; 4 uses
  %542 = add i64 %541, %531                       ; 3 uses
  %543 = icmp ult i64 %542, %.sroa.1351.0.copyload.i.i.i
  br i1 %543, label %544, label %.split.us.invoke.i.i.i

544:                                              ; preds = %.lr.ph696
  %545 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %541
  %546 = load i8, ptr %545, align 1, !alias.scope !1542, !noalias !1547, !noundef !4
  %547 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %542
end_hunk_4
begin_hunk_5
  store i64 %564, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !1551, !noalias !1524
  br label %481

.lr.ph693:                                        ; preds = %.preheader74.us.i.i.i.preheader, %.preheader74.us.i.i.i
  %.sroa.04.0.i49.us.i.i.i692 = phi i64 [ %539, %.preheader74.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader74.us.i.i.i.preheader ] ; 4 uses
  %565 = add i64 %.sroa.04.0.i49.us.i.i.i692, %531 ; 2 uses
  %566 = icmp ult i64 %565, %.sroa.1351.0.copyload.i.i.i
  br i1 %566, label %567, label %.split147.us.i.i.i

567:                                              ; preds = %.lr.ph693
  %568 = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i49.us.i.i.i692
  %569 = load i8, ptr %568, align 1, !alias.scope !1542, !noalias !1547, !noundef !4
  %570 = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %565
  %571 = load i8, ptr %570, align 1, !alias.scope !1539, !noalias !1544, !noundef !4
end_hunk_5
begin_hunk_6
572:                                              ; preds = %567
  %reass.sub551 = sub i64 %531, %.sroa.442.0.copyload.i.i.i
  %573 = add i64 %reass.sub551, 1
  %574 = add i64 %573, %.sroa.04.0.i49.us.i.i.i692
  br label %577

575:                                              ; preds = %.lr.ph.i46.us.i.i.i
end_hunk_6
begin_hunk_7
.noexc.i.i.i:                                     ; preds = %.loopexit204.i.i.i
  unreachable

.split147.us.i.i.i:                               ; preds = %.lr.ph693
  %753 = add i64 %531, %.sroa.442.0.copyload.i.i.i
  %umax.i52.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.1351.0.copyload.i.i.i, i64 %753)
  br label %.split.us.invoke.i.i.i

.split.us.invoke.i.i.i:                           ; preds = %.preheader.us.i.preheader.split.i.i, %505, %.lr.ph690, %.lr.ph696, %.split135.us.i.i.i, %.split147.us.i.i.i
  %754 = phi i64 [ %umax.i52.i.i.i, %.split147.us.i.i.i ], [ %542, %.lr.ph696 ], [ %umax.i.i.i.i, %.split135.us.i.i.i ], [ %506, %505 ], [ %503, %.lr.ph690 ], [ %479, %.preheader.us.i.preheader.split.i.i ]
  %755 = phi i64 [ %.sroa.1351.0.copyload.i.i.i, %.split147.us.i.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %.lr.ph696 ], [ %.sroa.1351.0.copyload.i.i.i, %.split135.us.i.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %505 ], [ %.sroa.15.0.copyload.i.i.i, %.lr.ph690 ], [ %.sroa.15.0.copyload.i.i.i, %.preheader.us.i.preheader.split.i.i ]
  %756 = phi ptr [ @3, %.split147.us.i.i.i ], [ @2, %.lr.ph696 ], [ @3, %.split135.us.i.i.i ], [ @2, %505 ], [ @1, %.lr.ph690 ], [ @1, %.preheader.us.i.preheader.split.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %754, i64 noundef range(i64 0, -9223372036854775808) %755, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %756) #27
          to label %.split.us.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1529

end_hunk_7
begin_hunk_8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %45, ptr noundef nonnull align 8 dereferenceable(152) %58, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  invoke void @_RNvXCsjPLGVgcokxX_22deltalake_catalog_glueNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog16DataCatalogErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_9GlueErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %44, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %45)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtCsjPLGVgcokxX_22deltalake_catalog_glue9GlueErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog16DataCatalogErrorE4intoBA_.exit unwind label %.thread615

1053:                                             ; preds = %1050
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
end_hunk_8
begin_hunk_9
  %1092 = icmp eq i64 %1091, 50
  br i1 %1092, label %1134, label %.thread515

.thread615:                                       ; preds = %1052
  %1093 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
end_hunk_9
begin_hunk_10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5ZKiBQb0cv2_12aws_sdk_glue5types13__table_status11TableStatusEECsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef align 8 dereferenceable(224) %1132) #24
          to label %1090 unwind label %1088

.thread512:                                       ; preds = %.thread615, %.thread504, %1308, %.thread515, %1134
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %1308 ], [ %.pn85618, %1134 ], [ %.pn83, %.thread504 ], [ %.pn85509518, %.thread515 ], [ %1093, %.thread615 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  %1133 = getelementptr inbounds nuw i8, ptr %61, i64 1536
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef align 8 dereferenceable(24) %1133) #24
          to label %.body275 unwind label %1088

1134:                                             ; preds = %.thread615, %1090
  %.pn85618 = phi { ptr, i32 } [ %1093, %.thread615 ], [ %.pn77, %1090 ]
  %1135 = getelementptr inbounds nuw i8, ptr %58, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsjPLGVgcokxX_22deltalake_catalog_glue(ptr noalias noundef align 8 dereferenceable(24) %1135) #24
          to label %.thread512 unwind label %1088
end_hunk_10
