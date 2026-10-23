Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.08?download=true
inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2s_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2o_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB2s_6marker4SendEL_EENtNtBc_6errors15DeltaTableErrorEEE0Bc_:bb.a
  unreachable

bb.bi:                                            ; preds = %bb.bk
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1z_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB5P_(ptr noalias noundef align 16 dereferenceable(96) %i.gj) #40
          to label %.body163 unwind label %bb.ar

bb.bj:                                            ; preds = %bb.b, %bb.an
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25836)
  %.sroa.01.0.copyload.i = load i64, ptr %i.gj, align 16, !alias.scope !25837 ; 3 uses
  store i64 -9223372036854775710, ptr %i.gj, align 16, !alias.scope !25837
  %.not.i149 = icmp eq i64 %.sroa.01.0.copyload.i, -9223372036854775710
  br i1 %.not.i149, label %bb.bk, label %bb.bl, !prof !36

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @685) #41
          to label %.noexc151 unwind label %bb.bi

.noexc151:                                        ; preds = %bb.bk
  unreachable

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194, %bb.db, %bb.cd, %bb.br
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit194 ], [ 6, %bb.db ], [ 4, %bb.cd ], [ 5, %bb.br ]
  store i8 %.sink, ptr %i.an, align 1
  ret void

bb.bl:                                            ; preds = %bb.bj
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %.sroa.7280.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !alias.scope !25838 ; 3 uses
  %.sroa.7280.sroa.6.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.sroa.7280.sroa.6.0.copyload = load ptr, ptr %.sroa.7280.sroa.6.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 16, !alias.scope !25838 ; 3 uses
  %.not.i155 = icmp eq i64 %.sroa.01.0.copyload.i, -9223372036854775711
  br i1 %.not.i155, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7280.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7280.sroa.6.0.copyload) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.7280.sroa.0.0.copyload, ptr %i.gk, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %.sroa.7280.sroa.6.0.copyload, ptr %i.gl, align 8
  br label %bb.bz

bb.bn:                                            ; preds = %bb.bl
  %.sroa.7280.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %.sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  %i.gm = load <2 x i64>, ptr %.sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx, align 16, !alias.scope !25838
  %.sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.sroa.7280.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !25838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7280.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.sroa.6.0..sroa.7280.sroa.7.sroa.6.0..sroa.7280.sroa.7.0..sroa.5.0..sroa.0.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false)
  %i.gn = ptrtoint ptr %.sroa.7280.sroa.0.0.copyload to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cu, %bb.ct, %bb.bn
  %.sroa.26.3 = phi i64 [ %.sroa.7280.sroa.7.sroa.0.0.copyload, %bb.bn ], [ %.sroa.26.5, %bb.ct ], [ %.sroa.26.5, %bb.cu ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.7280.sroa.6.0.copyload, %bb.bn ], [ %.sroa.24.5, %bb.ct ], [ %.sroa.24.5, %bb.cu ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %i.gn, %bb.bn ], [ %.sroa.18.5, %bb.ct ], [ %.sroa.18.5, %bb.cu ] ; 2 uses
  %.sroa.10389.3 = phi i64 [ %.sroa.01.0.copyload.i, %bb.bn ], [ %.sroa.10389.5, %bb.ct ], [ %.sroa.10389.5, %bb.cu ] ; 2 uses
  %i.go = phi <2 x i64> [ %i.gm, %bb.bn ], [ %i.ip, %bb.ct ], [ %i.ip, %bb.cu ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 1538
  %i.gq = load i8, ptr %i.gp, align 2, !range !26, !noundef !21
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ep, label %bb.ap

.body163:                                         ; preds = %bb.bi, %bb.cw, %bb.cv, %bb.dy, %bb.dz, %bb.cx
  %.pn64.pn = phi { ptr, i32 } [ %i.lh, %bb.dz ], [ %.pn62, %bb.cx ], [ %i.iy, %bb.cv ], [ %i.iy, %bb.cw ], [ %i.lh, %bb.dy ], [ %i.gi, %bb.bi ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 1538
  %i.gt = load i8, ptr %i.gs, align 2, !range !26, !noundef !21
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.fm, label %bb.au

bb.bo:                                            ; preds = %bb.bp
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_(ptr noundef nonnull align 8 %i.gw) #40
          to label %.body157 unwind label %bb.ar

bb.bp:                                            ; preds = %bb.d, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 2 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5write0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.n, ptr noundef nonnull align 8 %i.gw, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bq unwind label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  %i.gx = load i64, ptr %i.n, align 16, !range !40, !noundef !21 ; 3 uses
  %i.gy = icmp eq i64 %i.gx, -9223372036854775710
  br i1 %i.gy, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.bs:                                            ; preds = %bb.bq
  %.sroa.3321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3321.sroa.0.0.copyload = load i64, ptr %.sroa.3321.0..sroa_idx, align 8
  %.sroa.3321.sroa.2.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3321.sroa.2.0.copyload = load ptr, ptr %.sroa.3321.sroa.2.0..sroa.3321.0..sroa_idx.sroa_idx, align 16
  %.sroa.3321.sroa.3.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.3321.sroa.3.0.copyload = load i64, ptr %.sroa.3321.sroa.3.0..sroa.3321.0..sroa_idx.sroa_idx, align 8
  %.sroa.3321.sroa.4.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.gz = load <2 x i64>, ptr %.sroa.3321.sroa.4.0..sroa.3321.0..sroa_idx.sroa_idx, align 16
  %.sroa.3321.sroa.6.0..sroa.3321.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3321.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3321.sroa.6.0..sroa.3321.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %i.hb = load i8, ptr %i.ha, align 16, !range !57, !noundef !21
  %cond.i = icmp eq i8 %i.hb, 3
  br i1 %cond.i, label %bb.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit

bb.bt:                                            ; preds = %bb.bs
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 1704
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15LazyArrowWriter11write_batch0EBU_(ptr noundef nonnull align 8 %i.hc)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.he) #40
          to label %.body157 unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 1664
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit: ; preds = %bb.bs, %bb.bv
  %.not.i159 = icmp eq i64 %i.gx, -9223372036854775711
  br i1 %.not.i159, label %bb.by, label %bb.cq

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hi)
          to label %bb.bz unwind label %bb.dp

bb.bz:                                            ; preds = %bb.by, %bb.bm
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 1552
  store ptr %i.hj, ptr %i.hk, align 16
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cb
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cx

bb.cb:                                            ; preds = %bb.c, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 8 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cc unwind label %bb.ca

bb.cc:                                            ; preds = %bb.cb
  %i.hn = load i64, ptr %i.p, align 8, !range !70, !noundef !21
  %i.ho = icmp eq i64 %i.hn, -9223372036854775806
  br i1 %i.ho, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

bb.ce:                                            ; preds = %bb.cc
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 1496 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hp, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.hq = load i64, ptr %i.hp, align 8, !range !47, !noundef !21 ; 3 uses
  %.not34 = icmp eq i64 %i.hq, -9223372036854775807
  br i1 %.not34, label %bb.cp, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.sroa.3292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.sroa.3292.sroa.0.0.copyload = load i64, ptr %.sroa.3292.0..sroa_idx, align 16 ; 2 uses
  %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %.sroa.3292.sroa.3.0.copyload = load ptr, ptr %.sroa.3292.sroa.3.0..sroa.3292.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.hr = load <2 x i64>, ptr %.sroa.3292.sroa.5.0..sroa.3292.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %i.hs = icmp eq i64 %i.hq, -9223372036854775808
  %3 = shufflevector <2 x i64> %i.hr, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ht = extractelement <2 x i64> %i.hr, i64 0
  br i1 %i.hs, label %bb.cr, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 %i.hq, ptr %i.hm, align 16
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 3 uses
  store i64 %.sroa.3292.sroa.0.0.copyload, ptr %.sroa.4297.0..sroa_idx, align 8
  %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1568 ; 3 uses
  store ptr %.sroa.3292.sroa.3.0.copyload, ptr %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1576 ; 3 uses
  %.sroa.4297.sroa.6.0..sroa.4297.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store <2 x i64> %i.hr, ptr %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val120 = load ptr, ptr %i.hu, align 16, !nonnull !21, !noundef !21
  %i.hv = getelementptr inbounds nuw i8, ptr %.val120, i64 336
  %.val126 = load ptr, ptr %i.hv, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.hw = atomicrmw add ptr %.val126, i64 1 monotonic, align 8
  %i.hx = icmp slt i64 %i.hw, 0
  br i1 %i.hx, label %bb.ch, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161: ; preds = %bb.cg
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hm, ptr noundef nonnull %.val126, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161
  call void @llvm.experimental.noalias.scope.decl(metadata !25839)
  %i.hy = load i64, ptr %i.o, align 16, !range !30, !alias.scope !25840, !noundef !21 ; 2 uses
  %.not.i162 = icmp eq i64 %i.hy, -9223372036854775711
  %i.hz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8300.sroa.0.0.copyload459 = load i64, ptr %i.hz, align 8, !alias.scope !25841 ; 3 uses
  %.sroa.8300.sroa.8.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.8300.sroa.8.0.copyload462 = load ptr, ptr %.sroa.8300.sroa.8.0..sroa_idx461, align 16, !alias.scope !25841 ; 3 uses
  %.sroa.8300.sroa.9.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.8300.sroa.9.0.copyload465 = load i64, ptr %.sroa.8300.sroa.9.0..sroa_idx464, align 8, !alias.scope !25841 ; 3 uses
  %.sroa.8300.sroa.10.0..sroa_idx467 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ia = load <2 x i64>, ptr %.sroa.8300.sroa.10.0..sroa_idx467, align 16, !alias.scope !25841 ; 4 uses
  br i1 %.not.i162, label %bb.ck, label %bb.cn

bb.cj:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit161
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body157

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.hm)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ic = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.8300.sroa.0.0.copyload459, ptr %i.hm, align 16
  store ptr %.sroa.8300.sroa.8.0.copyload462, ptr %.sroa.4297.0..sroa_idx, align 8
  store i64 %.sroa.8300.sroa.9.0.copyload465, ptr %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  %i.id = extractelement <2 x i64> %i.ia, i64 0
  store i64 %i.id, ptr %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx, align 8
  %i.ie = extractelement <2 x i64> %i.ia, i64 1
  store i64 %i.ie, ptr %.sroa.4297.sroa.6.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  br label %.body157

bb.cm:                                            ; preds = %bb.ck
  store i64 %.sroa.8300.sroa.0.0.copyload459, ptr %i.hm, align 16
  store ptr %.sroa.8300.sroa.8.0.copyload462, ptr %.sroa.4297.0..sroa_idx, align 8
  store i64 %.sroa.8300.sroa.9.0.copyload465, ptr %.sroa.4297.sroa.4.0..sroa.4297.0..sroa_idx.sroa_idx, align 16
  store <2 x i64> %i.ia, ptr %.sroa.4297.sroa.5.0..sroa.4297.0..sroa_idx.sroa_idx, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !noundef !21
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store ptr %i.ii, ptr %i.ij, align 8
  %.sroa.8317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store ptr %i.hm, ptr %.sroa.8317.0..sroa_idx, align 16
  %.sroa.10318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2320
  store i8 0, ptr %.sroa.10318.0..sroa_idx, align 16
  br label %bb.bp

bb.cn:                                            ; preds = %bb.ci
  %.sroa.10302.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10302.0..sroa_idx303, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %bb.cn
  %.sroa.26.4 = phi i64 [ %.sroa.3321.sroa.3.0.copyload, %bb.cq ], [ %.sroa.8300.sroa.9.0.copyload465, %bb.cn ]
  %.sroa.24.4 = phi ptr [ %.sroa.3321.sroa.2.0.copyload, %bb.cq ], [ %.sroa.8300.sroa.8.0.copyload462, %bb.cn ]
  %.sroa.18.4 = phi i64 [ %.sroa.3321.sroa.0.0.copyload, %bb.cq ], [ %.sroa.8300.sroa.0.0.copyload459, %bb.cn ]
  %.sroa.10389.4 = phi i64 [ %i.gx, %bb.cq ], [ %i.hy, %bb.cn ]
  %i.ik = phi <2 x i64> [ %i.gz, %bb.cq ], [ %i.ia, %bb.cn ]
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.il)
          to label %bb.cr unwind label %bb.dp

.body157:                                         ; preds = %bb.cj, %bb.cl, %bb.bo, %bb.bu, %bb.bx
  %.pn59.pn = phi { ptr, i32 } [ %i.hh, %bb.bx ], [ %i.hd, %bb.bu ], [ %i.gv, %bb.bo ], [ %i.ib, %bb.cj ], [ %i.ic, %bb.cl ]
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.im) #40
          to label %bb.cx unwind label %bb.ar

bb.cp:                                            ; preds = %bb.ce
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 1538
  store i8 0, ptr %i.in, align 2
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1016) %i.hm, ptr noundef nonnull align 16 dereferenceable(1016) %i.io, i64 1016, i1 false)
  %.sroa.8343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3632
  store i8 0, ptr %.sroa.8343.0..sroa_idx, align 16
  br label %bb.cz

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3321.sroa.6, i64 48, i1 false)
  br label %bb.co

bb.cr:                                            ; preds = %bb.cf, %bb.co, %bb.eo
  %.sroa.26.5 = phi i64 [ %.sroa.3346.sroa.5.0.copyload, %bb.eo ], [ %.sroa.26.4, %bb.co ], [ %i.ht, %bb.cf ] ; 2 uses
  %.sroa.24.5 = phi ptr [ %.sroa.3346.sroa.3.0.copyload, %bb.eo ], [ %.sroa.24.4, %bb.co ], [ %.sroa.3292.sroa.3.0.copyload, %bb.cf ] ; 2 uses
  %.sroa.18.5 = phi i64 [ %.sroa.3346.sroa.0.0.copyload, %bb.eo ], [ %.sroa.18.4, %bb.co ], [ %.sroa.3292.sroa.0.0.copyload, %bb.cf ] ; 2 uses
  %.sroa.10389.5 = phi i64 [ %i.ji, %bb.eo ], [ %.sroa.10389.4, %bb.co ], [ -9223372036854775742, %bb.cf ] ; 2 uses
  %i.ip = phi <2 x i64> [ %i.jk, %bb.eo ], [ %i.ik, %bb.co ], [ %3, %bb.cf ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val99 = load ptr, ptr %i.iq, align 16         ; 5 uses
  %i.ir = getelementptr i8, ptr %1, i64 184
  %.val100 = load ptr, ptr %i.ir, align 8, !nonnull !21, !align !22, !noundef !21 ; 5 uses
  %i.is = load ptr, ptr %.val100, align 8, !invariant.load !21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  invoke void %i.is(ptr noundef nonnull %.val99)
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.it = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !range !35, !invariant.load !21 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.iw = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !range !33, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.iu, i64 noundef range(i64 1, 536870913) %i.ix) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cv:                                            ; preds = %bb.cs
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !range !35, !invariant.load !21 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %.body163, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jc = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !range !33, !invariant.load !21
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.ja, i64 noundef range(i64 1, 536870913) %i.jd) #33
  br label %.body163

bb.cx:                                            ; preds = %bb.cy, %bb.ds, %bb.dp, %bb.eb, %bb.ca, %.body157
  %.pn62 = phi { ptr, i32 } [ %i.ko, %bb.dp ], [ %i.hl, %bb.ca ], [ %.pn59.pn, %.body157 ], [ %i.kv, %bb.ds ], [ %i.ls, %bb.eb ], [ %i.jg, %bb.cy ]
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val97 = load ptr, ptr %i.je, align 16
  %i.jf = getelementptr i8, ptr %1, i64 184
  %.val98 = load ptr, ptr %i.jf, align 8, !nonnull !21, !align !22, !noundef !21
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val97, ptr nonnull %.val98) #40
          to label %.body163 unwind label %bb.ar

bb.cy:                                            ; preds = %bb.cz
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.jh) #40
          to label %bb.cx unwind label %bb.ar

bb.cz:                                            ; preds = %bb.e, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 1552 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5close0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.m, ptr noundef nonnull align 8 %i.jh, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  %i.ji = load i64, ptr %i.m, align 16, !range !40, !noundef !21 ; 3 uses
  %i.jj = icmp eq i64 %i.ji, -9223372036854775710
  br i1 %i.jj, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %common.ret

end_hunk_0
begin_hunk_1_@_RNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB8_9MergePlan13rewrite_filesNCNvB4_11read_zorder0E0Bc_:bb.a
  %.sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.8275.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx, align 8, !noalias !26025
  %.sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.le = load <2 x i64>, ptr %.sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx, align 16, !noalias !26025
  %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.sroa.6.0..sroa.8275.sroa.7.sroa.6.0..sroa.8275.sroa.7.0..sroa.8275.0..sroa_idx276.sroa_idx.sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false), !noalias !26025
  store i8 1, ptr %i.hc, align 8, !noalias !25998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.776.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lf = icmp eq i64 %.sroa.0273.0.copyload274, -9223372036854775710
  br i1 %i.lf, label %bb.dv, label %bb.dw

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit196, %bb.fo, %bb.eq, %bb.ee, %bb.dv
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersEEB1k_.exit196 ], [ 6, %bb.fo ], [ 4, %bb.eq ], [ 5, %bb.ee ], [ 3, %bb.dv ]
  store i8 %.sink, ptr %i.bf, align 1
  ret void

bb.dv:                                            ; preds = %.thread618, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.dw:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8281.sroa.2.sroa.2.sroa.2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8275.sroa.7.sroa.6.sroa.6.sroa.6)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan11read_zorder0EBS_(ptr noundef nonnull align 16 %i.hb)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.dy:                                            ; preds = %bb.dw
  %.not.i156 = icmp eq i64 %.sroa.0273.0.copyload274, -9223372036854775711
  br i1 %.not.i156, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8275.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8275.sroa.6.0.copyload) ]
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 2000
  store ptr %.sroa.8275.sroa.0.0.copyload, ptr %i.lh, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2008
  store ptr %.sroa.8275.sroa.6.0.copyload, ptr %i.li, align 8
  br label %bb.em

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8281.sroa.2.sroa.2.sroa.2, i64 48, i1 false)
  %i.lj = ptrtoint ptr %.sroa.8275.sroa.0.0.copyload to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fh, %bb.fg, %bb.ea
  %.sroa.26.3 = phi i64 [ %.sroa.8275.sroa.7.sroa.0.0.copyload, %bb.ea ], [ %.sroa.26.5, %bb.fg ], [ %.sroa.26.5, %bb.fh ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.8275.sroa.6.0.copyload, %bb.ea ], [ %.sroa.24.5, %bb.fg ], [ %.sroa.24.5, %bb.fh ] ; 2 uses
  %.sroa.18.3 = phi i64 [ %i.lj, %bb.ea ], [ %.sroa.18.5, %bb.fg ], [ %.sroa.18.5, %bb.fh ] ; 2 uses
  %.sroa.10385.3 = phi i64 [ %.sroa.0273.0.copyload274, %bb.ea ], [ %.sroa.10385.5, %bb.fg ], [ %.sroa.10385.5, %bb.fh ] ; 2 uses
  %i.lk = phi <2 x i64> [ %i.le, %bb.ea ], [ %i.nl, %bb.fg ], [ %i.nl, %bb.fh ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 3362
  %i.lm = load i8, ptr %i.ll, align 2, !range !26, !noundef !21
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.hc, label %bb.ap

.body165:                                         ; preds = %.body154, %bb.dx, %bb.fj, %bb.fi, %bb.gl, %bb.gm, %bb.fk
  %.pn64.pn = phi { ptr, i32 } [ %i.qd, %bb.gm ], [ %.pn62, %bb.fk ], [ %i.nu, %bb.fi ], [ %i.nu, %bb.fj ], [ %i.qd, %bb.gl ], [ %i.lg, %bb.dx ], [ %eh.lpad-body155, %.body154 ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 3362
  %i.lp = load i8, ptr %i.lo, align 2, !range !26, !noundef !21
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.ht, label %bb.au

bb.eb:                                            ; preds = %bb.ec
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_(ptr noundef nonnull align 8 %i.ls) #40
          to label %.body158 unwind label %bb.ar

bb.ec:                                            ; preds = %bb.d, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 3416 ; 2 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5write0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.af, ptr noundef nonnull align 8 %i.ls, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ed unwind label %bb.eb

bb.ed:                                            ; preds = %bb.ec
  %i.lt = load i64, ptr %i.af, align 16, !range !40, !noundef !21 ; 3 uses
  %i.lu = icmp eq i64 %i.lt, -9223372036854775710
  br i1 %i.lu, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.ef:                                            ; preds = %bb.ed
  %.sroa.3317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.3317.sroa.0.0.copyload = load i64, ptr %.sroa.3317.0..sroa_idx, align 8
  %.sroa.3317.sroa.2.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.3317.sroa.2.0.copyload = load ptr, ptr %.sroa.3317.sroa.2.0..sroa.3317.0..sroa_idx.sroa_idx, align 16
  %.sroa.3317.sroa.3.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.3317.sroa.3.0.copyload = load i64, ptr %.sroa.3317.sroa.3.0..sroa.3317.0..sroa_idx.sroa_idx, align 8
  %.sroa.3317.sroa.4.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.lv = load <2 x i64>, ptr %.sroa.3317.sroa.4.0..sroa.3317.0..sroa_idx.sroa_idx, align 16
  %.sroa.3317.sroa.6.0..sroa.3317.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3317.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3317.sroa.6.0..sroa.3317.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %i.lx = load i8, ptr %i.lw, align 16, !range !57, !noundef !21
  %cond.i = icmp eq i8 %i.lx, 3
  br i1 %cond.i, label %bb.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit

bb.eg:                                            ; preds = %bb.ef
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 3528
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15LazyArrowWriter11write_batch0EBU_(ptr noundef nonnull align 8 %i.ly)
          to label %bb.ei unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lz = landingpad { ptr, i32 }
          cleanup
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ma) #40
          to label %.body158 unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit unwind label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body158

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit: ; preds = %bb.ef, %bb.ei
  %.not.i160 = icmp eq i64 %i.lt, -9223372036854775711
  br i1 %.not.i160, label %bb.el, label %bb.fd

bb.el:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.me)
          to label %bb.em unwind label %bb.gc

bb.em:                                            ; preds = %bb.el, %bb.dz
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 3376
  store ptr %i.mf, ptr %i.mg, align 16
  br label %bb.eo

bb.en:                                            ; preds = %bb.eo
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.fk

bb.eo:                                            ; preds = %bb.c, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 3376 ; 8 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mi, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ep unwind label %bb.en

bb.ep:                                            ; preds = %bb.eo
  %i.mj = load i64, ptr %i.ah, align 8, !range !70, !noundef !21
  %i.mk = icmp eq i64 %i.mj, -9223372036854775806
  br i1 %i.mk, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

bb.er:                                            ; preds = %bb.ep
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 3320 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.mm = load i64, ptr %i.ml, align 8, !range !47, !noundef !21 ; 3 uses
  %.not34 = icmp eq i64 %i.mm, -9223372036854775807
  br i1 %.not34, label %bb.fc, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.sroa.3288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %.sroa.3288.sroa.0.0.copyload = load i64, ptr %.sroa.3288.0..sroa_idx, align 16 ; 2 uses
  %.sroa.3288.sroa.3.0..sroa.3288.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3336
  %.sroa.3288.sroa.3.0.copyload = load ptr, ptr %.sroa.3288.sroa.3.0..sroa.3288.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3288.sroa.5.0..sroa.3288.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.mn = load <2 x i64>, ptr %.sroa.3288.sroa.5.0..sroa.3288.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %i.mo = icmp eq i64 %i.mm, -9223372036854775808
  %3 = shufflevector <2 x i64> %i.mn, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.mp = extractelement <2 x i64> %i.mn, i64 0
  br i1 %i.mo, label %bb.fe, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i64 %i.mm, ptr %i.mi, align 16
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3384 ; 3 uses
  store i64 %.sroa.3288.sroa.0.0.copyload, ptr %.sroa.4293.0..sroa_idx, align 8
  %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3392 ; 3 uses
  store ptr %.sroa.3288.sroa.3.0.copyload, ptr %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3400 ; 3 uses
  %.sroa.4293.sroa.6.0..sroa.4293.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3408
  store <2 x i64> %i.mn, ptr %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %.val120 = load ptr, ptr %i.mq, align 16, !nonnull !21, !noundef !21
  %i.mr = getelementptr inbounds nuw i8, ptr %.val120, i64 336
  %.val126 = load ptr, ptr %i.mr, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.ms = atomicrmw add ptr %.val126, i64 1 monotonic, align 8
  %i.mt = icmp slt i64 %i.ms, 0
  br i1 %i.mt, label %bb.eu, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162

bb.eu:                                            ; preds = %bb.et
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162: ; preds = %bb.et
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mi, ptr noundef nonnull %.val126, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162
  call void @llvm.experimental.noalias.scope.decl(metadata !26026)
  %i.mu = load i64, ptr %i.ag, align 16, !range !30, !alias.scope !26027, !noundef !21 ; 2 uses
  %.not.i163 = icmp eq i64 %i.mu, -9223372036854775711
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.8296.sroa.0.0.copyload455 = load i64, ptr %i.mv, align 8, !alias.scope !26028 ; 3 uses
  %.sroa.8296.sroa.8.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.8296.sroa.8.0.copyload458 = load ptr, ptr %.sroa.8296.sroa.8.0..sroa_idx457, align 16, !alias.scope !26028 ; 3 uses
  %.sroa.8296.sroa.9.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.8296.sroa.9.0.copyload461 = load i64, ptr %.sroa.8296.sroa.9.0..sroa_idx460, align 8, !alias.scope !26028 ; 3 uses
  %.sroa.8296.sroa.10.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.mw = load <2 x i64>, ptr %.sroa.8296.sroa.10.0..sroa_idx463, align 16, !alias.scope !26028 ; 4 uses
  br i1 %.not.i163, label %bb.ex, label %bb.fa

bb.ew:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit162
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %.body158

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.mi)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.my = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.8296.sroa.0.0.copyload455, ptr %i.mi, align 16
  store ptr %.sroa.8296.sroa.8.0.copyload458, ptr %.sroa.4293.0..sroa_idx, align 8
  store i64 %.sroa.8296.sroa.9.0.copyload461, ptr %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  %i.mz = extractelement <2 x i64> %i.mw, i64 0
  store i64 %i.mz, ptr %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx, align 8
  %i.na = extractelement <2 x i64> %i.mw, i64 1
  store i64 %i.na, ptr %.sroa.4293.sroa.6.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  br label %.body158

bb.ez:                                            ; preds = %bb.ex
  store i64 %.sroa.8296.sroa.0.0.copyload455, ptr %i.mi, align 16
  store ptr %.sroa.8296.sroa.8.0.copyload458, ptr %.sroa.4293.0..sroa_idx, align 8
  store i64 %.sroa.8296.sroa.9.0.copyload461, ptr %.sroa.4293.sroa.4.0..sroa.4293.0..sroa_idx.sroa_idx, align 16
  store <2 x i64> %i.mw, ptr %.sroa.4293.sroa.5.0..sroa.4293.0..sroa_idx.sroa_idx, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 2296 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !noundef !21
  %i.nd = add i64 %i.nc, 1
  store i64 %i.nd, ptr %i.nb, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 3416
  store ptr %i.ne, ptr %i.nf, align 8
  %.sroa.8313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3424
  store ptr %i.mi, ptr %.sroa.8313.0..sroa_idx, align 16
  %.sroa.10314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4144
  store i8 0, ptr %.sroa.10314.0..sroa_idx, align 16
  br label %bb.ec

bb.fa:                                            ; preds = %bb.ev
  %.sroa.10298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10298.0..sroa_idx299, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fd, %bb.fa
  %.sroa.26.4 = phi i64 [ %.sroa.3317.sroa.3.0.copyload, %bb.fd ], [ %.sroa.8296.sroa.9.0.copyload461, %bb.fa ]
  %.sroa.24.4 = phi ptr [ %.sroa.3317.sroa.2.0.copyload, %bb.fd ], [ %.sroa.8296.sroa.8.0.copyload458, %bb.fa ]
  %.sroa.18.4 = phi i64 [ %.sroa.3317.sroa.0.0.copyload, %bb.fd ], [ %.sroa.8296.sroa.0.0.copyload455, %bb.fa ]
  %.sroa.10385.4 = phi i64 [ %i.lt, %bb.fd ], [ %i.mu, %bb.fa ]
  %i.ng = phi <2 x i64> [ %i.lv, %bb.fd ], [ %i.mw, %bb.fa ]
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.nh)
          to label %bb.fe unwind label %bb.gc

.body158:                                         ; preds = %bb.ew, %bb.ey, %bb.eb, %bb.eh, %bb.ek
  %.pn59.pn = phi { ptr, i32 } [ %i.md, %bb.ek ], [ %i.lz, %bb.eh ], [ %i.lr, %bb.eb ], [ %i.mx, %bb.ew ], [ %i.my, %bb.ey ]
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 3376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ni) #40
          to label %bb.fk unwind label %bb.ar

bb.fc:                                            ; preds = %bb.er
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 3362
  store i8 0, ptr %i.nj, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 2304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1016) %i.mi, ptr noundef nonnull align 16 dereferenceable(1016) %i.nk, i64 1016, i1 false)
  %.sroa.8339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5456
  store i8 0, ptr %.sroa.8339.0..sroa_idx, align 16
  br label %bb.fm

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5write0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.28.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3317.sroa.6, i64 48, i1 false)
  br label %bb.fb

bb.fe:                                            ; preds = %bb.es, %bb.fb, %bb.hb
  %.sroa.26.5 = phi i64 [ %.sroa.3342.sroa.5.0.copyload, %bb.hb ], [ %.sroa.26.4, %bb.fb ], [ %i.mp, %bb.es ] ; 2 uses
  %.sroa.24.5 = phi ptr [ %.sroa.3342.sroa.3.0.copyload, %bb.hb ], [ %.sroa.24.4, %bb.fb ], [ %.sroa.3288.sroa.3.0.copyload, %bb.es ] ; 2 uses
  %.sroa.18.5 = phi i64 [ %.sroa.3342.sroa.0.0.copyload, %bb.hb ], [ %.sroa.18.4, %bb.fb ], [ %.sroa.3288.sroa.0.0.copyload, %bb.es ] ; 2 uses
  %.sroa.10385.5 = phi i64 [ %i.oe, %bb.hb ], [ %.sroa.10385.4, %bb.fb ], [ -9223372036854775742, %bb.es ] ; 2 uses
  %i.nl = phi <2 x i64> [ %i.og, %bb.hb ], [ %i.ng, %bb.fb ], [ %3, %bb.es ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %.val99 = load ptr, ptr %i.nm, align 16         ; 5 uses
  %i.nn = getelementptr i8, ptr %1, i64 2008
  %.val100 = load ptr, ptr %i.nn, align 8, !nonnull !21, !align !22, !noundef !21 ; 5 uses
  %i.no = load ptr, ptr %.val100, align 8, !invariant.load !21 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.no, null
  br i1 %.not.i.i164, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  invoke void %i.no(ptr noundef nonnull %.val99)
          to label %bb.fg unwind label %bb.fi

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.np = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !range !35, !invariant.load !21 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ns = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.nt = load i64, ptr %i.ns, align 8, !range !33, !invariant.load !21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.nq, i64 noundef range(i64 1, 536870913) %i.nt) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.fi:                                            ; preds = %bb.ff
  %i.nu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !range !35, !invariant.load !21 ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %.body165, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ny = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !range !33, !invariant.load !21
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef range(i64 1, 0) %i.nw, i64 noundef range(i64 1, 536870913) %i.nz) #33
  br label %.body165

bb.fk:                                            ; preds = %bb.fl, %bb.gf, %bb.gc, %bb.go, %bb.en, %.body158
  %.pn62 = phi { ptr, i32 } [ %i.pk, %bb.gc ], [ %i.mh, %bb.en ], [ %.pn59.pn, %.body158 ], [ %i.pr, %bb.gf ], [ %i.qo, %bb.go ], [ %i.oc, %bb.fl ]
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %.val97 = load ptr, ptr %i.oa, align 16
  %i.ob = getelementptr i8, ptr %1, i64 2008
  %.val98 = load ptr, ptr %i.ob, align 8, !nonnull !21, !align !22, !noundef !21
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val97, ptr nonnull %.val98) #40
          to label %.body165 unwind label %bb.ar

bb.fl:                                            ; preds = %bb.fm
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.od) #40
          to label %bb.fk unwind label %bb.ar

bb.fm:                                            ; preds = %bb.e, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 3376 ; 3 uses
  invoke fastcc void @_RNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB7_15PartitionWriter5close0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.ae, ptr noundef nonnull align 8 %i.od, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.fn unwind label %bb.fl

bb.fn:                                            ; preds = %bb.fm
  %i.oe = load i64, ptr %i.ae, align 16, !range !40, !noundef !21 ; 3 uses
  %i.of = icmp eq i64 %i.oe, -9223372036854775710
  br i1 %i.of, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 -9223372036854775807, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %common.ret

end_hunk_1
