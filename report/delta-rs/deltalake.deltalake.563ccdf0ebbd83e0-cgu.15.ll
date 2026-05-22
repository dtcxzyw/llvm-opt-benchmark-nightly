inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writer20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.d) #38
          to label %.thread63.i.i unwind label %bb.ar, !noalias !8478

bb.ar:                                            ; preds = %.body.i42.i.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8478
  unreachable

bb.as:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 144, i1 false), !noalias !8432
  invoke fastcc void @_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(168) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.b)
          to label %bb.av unwind label %.thread78.i.i, !noalias !8412

.thread78.i.i:                                    ; preds = %bb.as
  %lpad.thr_comm80.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread70.i.i

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !8479, !noalias !8480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 144, i1 false), !noalias !8432
  invoke fastcc void @_RNvMNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writerINtB2_20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(168) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.b)
          to label %bb.au unwind label %bb.ba, !noalias !8412

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8432
  br label %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8432
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_INtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ax unwind label %bb.aw, !noalias !8430

bb.aw:                                            ; preds = %bb.av
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread63.i.i unwind label %bb.ay, !noalias !8430

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEENtNtNtB17_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.az, !noalias !8430

bb.ay:                                            ; preds = %bb.aw
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8430
  unreachable

.body.thread.i.i:                                 ; preds = %.thread70.i.i
  br i1 %.sroa.09.276.i.i, label %bb.bf, label %.thread63.i.i

bb.az:                                            ; preds = %bb.ax
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.thread63.i.i

bb.ba:                                            ; preds = %bb.at
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread63.i.i

bb.bb:                                            ; preds = %bb.ak
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6writer20ThriftMetadataWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(144) %i.h) #38
          to label %.thread70.i.i unwind label %bb.bc, !noalias !8430

bb.bc:                                            ; preds = %bb.bg, %bb.bf, %.thread70.i.i, %bb.be, %bb.bb
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8430
  unreachable

bb.bd:                                            ; preds = %bb.t
  unreachable

bb.be:                                            ; preds = %bb.t, %bb.r
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %.thread70.i.i unwind label %bb.bc, !noalias !8430

.thread70.i.i:                                    ; preds = %bb.be, %bb.bb, %.thread78.i.i, %.body.i36.i.i, %.body.i.i.i
  %.pn.pn77.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.thr_comm80.i.i, %.thread78.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bb ], [ %i.dz, %bb.be ], [ %eh.lpad-body.i37.i.i, %.body.i36.i.i ] ; 2 uses
  %.sroa.09.276.i.i = phi i1 [ true, %.body.i.i.i ], [ false, %.thread78.i.i ], [ false, %bb.bb ], [ true, %bb.be ], [ false, %.body.i36.i.i ]
  %.sroa.010.475.i.i = phi i1 [ false, %.body.i.i.i ], [ %.not26.i.i, %.thread78.i.i ], [ %.not26.i.i, %bb.bb ], [ true, %bb.be ], [ %.not26.i.i, %.body.i36.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body.thread.i.i unwind label %bb.bc, !noalias !8430

.thread63.i.i:                                    ; preds = %bb.bf, %bb.ba, %bb.az, %.body.thread.i.i, %bb.aw, %.body.i42.i.i
  %.pn.pn.pn68.i.i = phi { ptr, i32 } [ %.pn.pn77.i.i, %.body.thread.i.i ], [ %.pn.pn77.i.i, %bb.bf ], [ %i.dx, %bb.az ], [ %i.dv, %bb.aw ], [ %eh.lpad-body.i43.i.i, %.body.i42.i.i ], [ %lpad.thr_comm.i.i, %bb.ba ] ; 2 uses
  %.sroa.010.367.i.i = phi i1 [ %.sroa.010.475.i.i, %.body.thread.i.i ], [ %.sroa.010.475.i.i, %bb.bf ], [ %.not26.i.i, %bb.az ], [ %.not26.i.i, %bb.aw ], [ %.not26.i.i, %.body.i42.i.i ], [ %.not26.i.i, %bb.ba ]
  %i.ea = load i64, ptr %i.l, align 8, !range !13, !noalias !8432, !noundef !12
  %i.eb = icmp ne i64 %i.ea, -9223372036854775808
  %or.cond.i.i = and i1 %.sroa.010.367.i.i, %i.eb
  br i1 %or.cond.i.i, label %bb.bg, label %common.resume.i

bb.bf:                                            ; preds = %.body.thread.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_INtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j) #38
          to label %.thread63.i.i unwind label %bb.bc, !noalias !8430

common.resume.i:                                  ; preds = %bb.bj, %bb.bg, %.thread63.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.pn.pn68.i.i, %.thread63.i.i ], [ %.pn.pn.pn68.i.i, %bb.bg ], [ %i.eg, %bb.bj ]
  resume { ptr, i32 } %common.resume.op.i

bb.bg:                                            ; preds = %.thread63.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.l) #38
          to label %common.resume.i unwind label %bb.bc, !noalias !8430

_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ax, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8432
  %.pr.i = load i64, ptr %i.q, align 8, !noalias !8425 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8425
  %i.ec = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.ec, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.i, %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.thread.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i64 32, i1 false), !noalias !8425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8425
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !8415
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8412, !noalias !8415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bn

bb.bi:                                            ; preds = %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE14write_metadataCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i, i64 32, i1 false), !noalias !8425
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.610.0..sroa_idx.i, i64 128, i1 false), !noalias !8425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8425
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !8425
  store i64 %.pr.i, ptr %i.r, align 8, !noalias !8425
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ef = invoke noundef ptr @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB5_9BufWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtB9_5Write5flushCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(216) %1)
          to label %_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5flushCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bj, !noalias !8412 ; 2 uses

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.r) #38
          to label %common.resume.i unwind label %bb.bo, !noalias !8412

_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5flushCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bi
  %.not14.i = icmp eq ptr %i.ef, null
  br i1 %.not14.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5flushCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8425
  invoke void @_RNvXs1_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noundef nonnull %i.ef)
          to label %bb.bm unwind label %bb.bj, !noalias !8412

bb.bl:                                            ; preds = %_RNvXs_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB4_12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5flushCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.r, i64 168, i1 false), !noalias !8415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8425
  br label %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake.exit

bb.bm:                                            ; preds = %bb.bk
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !8415
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8412, !noalias !8415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8425
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(168) %i.r), !noalias !8412
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8425
  br label %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake.exit

bb.bo:                                            ; preds = %bb.bj
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8412
  unreachable

_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.bn, %bb.bl, %bb.k, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB7_7bounded9SemaphoreE4recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 7 uses
  %i.e = alloca [3 x i8], align 4                 ; 8 uses
  %i.f = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !81, !noalias !8481, !noundef !12
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread
  ], !prof !85

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.j = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.g), !noalias !8481 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.a
  %.sroa.0.0.i.i4.i = phi ptr [ %i.j, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68
  %i.m = load i8, ptr %i.l, align 1, !range !86, !noalias !8484, !noundef !12 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noalias !8484 ; 4 uses
  br i1 %i.n, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop14register_waker(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i24 0, ptr %i.e, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %4, align 16
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.q = add i8 %i.p, -1
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
  %.sroa.4.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %i.p, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ]
  store i8 %.sroa.4.0.i.i.i, ptr %i.o, align 1, !noalias !8484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i24 0, ptr %i.e, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit, %bb.a, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.03.011.i28.off8 = phi i8 [ %i.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit ], [ 0, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ]
  %.sroa.03.011.i28.off16 = phi i8 [ %i.p, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit ], [ 0, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ]
  store i8 %.sroa.03.011.i28.off8, ptr %i.f, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %.sroa.03.011.i28.off16, ptr %i.s, align 1
  %i.t = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8492
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 2 uses
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3popCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.x = load i64, ptr %i.w, align 16, !range !909, !noalias !8492, !noundef !12
  switch i64 %i.x, label %bb.r [
    i64 4, label %bb.e
    i64 3, label %bb.q
  ]

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8492
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.z = load ptr, ptr %2, align 8, !noalias !8492, !nonnull !12, !align !375, !noundef !12
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker15register_by_ref(ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8492
  invoke void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4listINtB5_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBY_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1V_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3popCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.v)
          to label %.noexc16 unwind label %bb.w

.noexc16:                                         ; preds = %.noexc15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ab = load i64, ptr %i.aa, align 16, !range !909, !noalias !8492, !noundef !12
  switch i64 %i.ab, label %bb.k [
    i64 4, label %bb.f
    i64 3, label %bb.j
  ]

bb.f:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8492
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  %i.ad = load i8, ptr %i.ac, align 8, !range !86, !noalias !8492, !noundef !12
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc17, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %i.af, align 16, !alias.scope !8489, !noalias !8494
  br label %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.ah = invoke noundef zeroext i1 @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.ag)
          to label %.noexc17 unwind label %bb.w

.noexc17:                                         ; preds = %bb.h
  br i1 %i.ah, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc17
  store i8 0, ptr %i.f, align 1, !noalias !8492
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 3, ptr %.sroa.35.0..sroa_idx.i, align 16, !alias.scope !8489, !noalias !8494
  br label %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %.noexc16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.aj = invoke noundef zeroext i1 @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %bb.j
  br i1 %i.aj, label %bb.p, label %.invoke, !prof !96

bb.k:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !8492
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  invoke void @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ak)
          to label %bb.m unwind label %bb.l, !noalias !8492

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(128) %i.a) #38
          to label %.body unwind label %bb.o, !noalias !8492

bb.m:                                             ; preds = %bb.k
  store i8 0, ptr %i.f, align 1, !noalias !8492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !8494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8492
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8492
  br label %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.s, %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8492
  unreachable

bb.p:                                             ; preds = %.noexc18
  store i8 0, ptr %i.f, align 1, !noalias !8492
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 3, ptr %.sroa.32.0..sroa_idx.i, align 16, !alias.scope !8489, !noalias !8494
  br label %bb.n

bb.q:                                             ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.ao = invoke noundef zeroext i1 @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.an)
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %bb.q
  br i1 %i.ao, label %bb.v, label %.invoke, !prof !96

bb.r:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !8492
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  invoke void @_RNvXse_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.ap)
          to label %bb.t unwind label %bb.s, !noalias !8492

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(128) %i.c) #38
          to label %.body unwind label %bb.o, !noalias !8492

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.f, align 1, !noalias !8492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !8494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8492
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8492
  br label %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit

.invoke:                                          ; preds = %.noexc20, %.noexc18
  %i.ar = phi ptr [ @53, %.noexc18 ], [ @54, %.noexc20 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar) #41
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %.noexc20
  store i8 0, ptr %i.f, align 1, !noalias !8492
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 3, ptr %.sroa.3.0..sroa_idx.i, align 16, !alias.scope !8489, !noalias !8494
  br label %bb.u

bb.w:                                             ; preds = %.invoke, %bb.q, %bb.j, %bb.h, %.noexc15, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingENtNtNtCs2pqxYH9ZEk8_3std6thread5local11AccessErrorE9unwrap_orCs7p2uQeJxui2_9deltalake.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.s, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.w ], [ %i.aq, %bb.s ], [ %i.al, %bb.l ]
  invoke void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit unwind label %bb.y

_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.u, %bb.n, %bb.i, %bb.g
  call void @_RNvXs4_NtNtCskQDtHcQtBkN_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.f)
  br label %bb.x

bb.x:                                             ; preds = %_RNCNvMsa_NtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chanINtB7_2RxINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB10_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1X_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB9_7bounded9SemaphoreE4recv0Cs7p2uQeJxui2_9deltalake.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.y:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4task4coop16RestoreOnPendingECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10take_frontCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #13 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.020.023.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.018.022.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.023.prol, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = add i64 %.sroa.018.022.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !8495

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.023.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.018.022.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.020.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.020.023 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.020.023.unr, %.lr.ph.prol.loopexit ]
  %.sroa.018.022 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.018.022.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.020.023, i64 632
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.w = add i64 %.sroa.018.022, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs4tdlwR1I4n2_7parquet5basic8EncodingNtNtB7_7set_val9SetValZSTE10take_frontCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #13 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.310.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.020.023.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.018.022.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.023.prol, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = add i64 %.sroa.018.022.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !8496

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.023.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.018.022.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.020.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.020.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.020.023 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.020.023.unr, %.lr.ph.prol.loopexit ]
  %.sroa.018.022 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.018.022.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.020.023, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.w = add i64 %.sroa.018.022, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxE10take_frontCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #13 {
bb.a:
end_hunk_0
