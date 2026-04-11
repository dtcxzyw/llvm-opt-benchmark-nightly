inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs7p2uQeJxui2_9deltalake:bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.hm = getelementptr inbounds nuw i8, ptr %i.at, i64 624 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.at, i64 416 ; 6 uses
  %2 = insertelement <2 x ptr> poison, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %.sroa.5.0..sroa_idx, i64 1
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer20ArrowColumnChunkDataECs7p2uQeJxui2_9deltalake.exit.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs7p2uQeJxui2_9deltalake:bb.a

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.ek, %bb.eh
  %i.qj = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 56)
          to label %bb.em unwind label %bb.el, !noalias !8158 ; 7 uses

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %.sroa.078.0331.i.i = phi ptr [ %i.rf, %.lr.ph.i.i.new ], [ %.sroa.078.0331.i.i.unr, %.prol.loopexit ] ; 10 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.4296.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %i.hl, ptr %.sroa.4296.0..sroa_idx.i.i, align 8, !noalias !8158
  %.sroa.5297.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store <2 x ptr> %3, ptr %.sroa.5297.0..sroa_idx.i.i, align 8, !noalias !8158
  %.sroa.7299.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  store ptr %i.hk, ptr %.sroa.7299.0..sroa_idx.i.i, align 8, !noalias !8158
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
end_hunk_2
