inline.NumInlined: 22002
inline.NumDeleted: 8912
begin_hunk_0_@_ZN6duckdb25PartialBlockForCheckpointC2ERNS_10ColumnDataERNS_13ColumnSegmentENS_17PartialBlockStateERNS_12BlockManagerE:_ZNKSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
          to label %_ZNSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i unwind label %_ZNSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EED2Ev.exit ; 5 uses

_ZNSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i.i: ; preds = %_ZNKSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.c, align 8, !tbaa !316
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !351
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !353
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !355
  store ptr %i.g, ptr %i.d, align 8, !tbaa !358
  store ptr %i.g, ptr %5, align 8, !tbaa !359
  ret void

_ZNSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EED2Ev.exit: ; preds = %_ZNKSt6vectorIN6duckdb25PartialBlockForCheckpoint20PartialColumnSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb8RowGroupC2ERNS_18RowGroupCollectionENS_15RowGroupPointerE:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2362
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !2362
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %.pre34 = load ptr, ptr %i.aj, align 8, !tbaa !2361
  %.pre32.a = load ptr, ptr %i.f, align 8, !tbaa !2319
  %i.an = ptrtoint ptr %.pre34 to i64
  %i.ao = ptrtoint ptr %.pre32.a to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 4                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %5 = load ptr, ptr %i.ar, align 8, !tbaa !2363  ; 5 uses
  %6 = load ptr, ptr %i.e, align 8, !tbaa !2366   ; 2 uses
  %i.as = ptrtoint ptr %5 to i64
  %i.at = ptrtoint ptr %6 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 3 uses
  %i.aw = icmp ugt i64 %i.aq, %i.av
end_hunk_1
begin_hunk_2_@_ZN6duckdb8RowGroupC2ERNS_18RowGroupCollectionENS_15RowGroupPointerE:bb.a
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %i.ap ; 4 uses
  %.not.i.i = icmp eq ptr %5, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb8RowGroupC2ERNS_18RowGroupCollectionENS_15RowGroupPointerE:bb.a

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.l, %.lr.ph.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, %5
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2368

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb8RowGroupC2ERNS_18RowGroupCollectionENS_15RowGroupPointerE:bb.a
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.j, %bb.i
  %i.bs = phi ptr [ %.pre37, %._ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.az, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %5, %bb.j ], [ %5, %bb.i ] ; 2 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !2366 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
end_hunk_4
begin_hunk_5_@_ZNK6duckdb8RowGroup11WriteToDiskERNS_17RowGroupWriteInfoE:_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %3 = alloca %"class.duckdb::vector.1762", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::vector.1756", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %5 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %3, align 8, !tbaa !2706
  store ptr %i.c, ptr %6, align 8, !tbaa !2704
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2770
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  invoke void @_ZN6duckdb8RowGroup11WriteToDiskERNS_17RowGroupWriteInfoERKNS_6vectorISt17reference_wrapperIKS0_ELb1ESaIS6_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.1756") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
end_hunk_5
begin_hunk_6_@_ZN6duckdb8RowGroup31GetOrComputeExtraMetadataBlocksEb:bb.a
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2777

bb.al:                                            ; preds = %bb.ak, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_6
