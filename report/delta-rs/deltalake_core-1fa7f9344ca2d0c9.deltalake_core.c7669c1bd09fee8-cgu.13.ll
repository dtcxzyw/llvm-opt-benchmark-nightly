Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.13?download=true
inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  br i1 %.not157, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 587
  store i8 0, ptr %i.xy, align 1
  %i.xz = load ptr, ptr %i.xx, align 8, !nonnull !8, !align !11, !noundef !8 ; 2 uses
  store ptr %i.xw, ptr %i.aw, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.xz, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 545
  %i.yc = load i8, ptr %i.yb, align 1, !range !18, !noundef !8
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.jz, label %bb.jx

.sink.split:                                      ; preds = %bb.jy, %bb.jx, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.jw

bb.jw:                                            ; preds = %.sink.split, %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8780.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  invoke void @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_16object_store_urlB7_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ye)
          to label %bb.kh unwind label %bb.kg

bb.jx:                                            ; preds = %bb.jv
  %i.yf = atomicrmw sub ptr %i.xw, i64 1 release, align 8, !noalias !18458
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.jy, label %.sink.split

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw) #45
          to label %.sink.split unwind label %bb.ka

bb.jz:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RNvMNtCs8rZONnIQGB5_29datafusion_datasource_parquet6sourceNtB2_13ParquetSource14with_predicate(ptr noalias noundef nonnull sret([816 x i8]) align 8 captures(none) dereferenceable(816) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %i.az, ptr noundef nonnull %i.xw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.xz)
          to label %bb.kc unwind label %bb.kb

.thread945:                                       ; preds = %bb.ka, %bb.kf
  %.pn158.pn = phi { ptr, i32 } [ %.pn158, %bb.kf ], [ %i.yh, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.mv

bb.ka:                                            ; preds = %bb.jy
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %.thread945

bb.kb:                                            ; preds = %bb.jz
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.kc:                                            ; preds = %bb.jz
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6source13ParquetSourceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(816) %i.az)
          to label %bb.ke unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.yj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.az, ptr noundef nonnull align 8 dereferenceable(816) %i.av, i64 816, i1 false)
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.az, ptr noundef nonnull align 8 dereferenceable(816) %i.av, i64 816, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %.sink.split

bb.kf:                                            ; preds = %bb.kd, %bb.kb
  %.pn158 = phi { ptr, i32 } [ %i.yj, %bb.kd ], [ %i.yi, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %.thread945

.thread965:                                       ; preds = %bb.ms, %bb.ky
  %.pn173995 = phi { ptr, i32 } [ %i.zv, %bb.ky ], [ %i.adj, %bb.ms ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split

.thread970:                                       ; preds = %bb.mt, %bb.kv
  %.pn170990 = phi { ptr, i32 } [ %i.zs, %bb.kv ], [ %.pn170.ph, %bb.mt ]
  %.sroa.015.4988 = phi i8 [ %.sroa.015.3, %bb.kv ], [ %.sroa.015.4.ph, %bb.mt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split

.thread975:                                       ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8780.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.thread1193

bb.kg:                                            ; preds = %bb.jw
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8780.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.mv

bb.kh:                                            ; preds = %bb.jw
  %i.yl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.yl, ptr noundef nonnull align 8 dereferenceable(816) %i.az, i64 816, i1 false)
  store i64 1, ptr %i.e, align 8, !noalias !18459
  %i.ym = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ym, align 8, !noalias !18459
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !18460
  %i.yn = call noundef align 8 dereferenceable_or_null(832) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 832, i64 noundef range(i64 8, 17) 8) #40, !noalias !18460 ; 3 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %bb.ki, label %bb.kl, !prof !12

bb.ki:                                            ; preds = %bb.kh
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 832) #48
          to label %.noexc.i432 unwind label %bb.kj, !noalias !18459

.noexc.i432:                                      ; preds = %bb.ki
  unreachable

bb.kj:                                            ; preds = %bb.ki
  %i.yp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8rZONnIQGB5_29datafusion_datasource_parquet6source13ParquetSourceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(816) %i.yl)
          to label %bb.mu unwind label %bb.kk, !noalias !18459

bb.kk:                                            ; preds = %bb.kj
  %i.yq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !18459
  unreachable

bb.kl:                                            ; preds = %bb.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %i.yn, ptr noundef nonnull align 8 dereferenceable(832) %i.e, i64 832, i1 false), !noalias !18459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18459
  call void @llvm.experimental.noalias.scope.decl(metadata !18461)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.yr, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.ap, i64 88, i1 false), !alias.scope !18462
  %i.ys = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  store ptr %i.yn, ptr %i.ys, align 8, !alias.scope !18463, !noalias !18461
  %i.yt = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  store ptr @418, ptr %i.yt, align 8, !alias.scope !18463, !noalias !18461
  store i64 0, ptr %i.aq, align 8, !alias.scope !18463, !noalias !18461
  %i.yu = getelementptr inbounds nuw i8, ptr %i.aq, i64 224
  store i64 -9223372036854775808, ptr %i.yu, align 8, !alias.scope !18463, !noalias !18461
  %i.yv = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  store i64 0, ptr %i.yv, align 8, !alias.scope !18463, !noalias !18461
  %.sroa.4.0..sroa_idx.i435 = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i435, align 8, !alias.scope !18463, !noalias !18461
  %.sroa.5.0..sroa_idx.i436 = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  store i64 0, ptr %.sroa.5.0..sroa_idx.i436, align 8, !alias.scope !18463, !noalias !18461
  %i.yw = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 3, ptr %i.yw, align 8, !alias.scope !18463, !noalias !18461
  %i.yx = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  store i64 0, ptr %i.yx, align 8, !alias.scope !18463, !noalias !18461
  %.sroa.44.0..sroa_idx.i437 = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx.i437, align 8, !alias.scope !18463, !noalias !18461
  %.sroa.55.0..sroa_idx.i438 = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  store i64 0, ptr %.sroa.55.0..sroa_idx.i438, align 8, !alias.scope !18463, !noalias !18461
  %i.yy = getelementptr inbounds nuw i8, ptr %i.aq, i64 281
  store i8 5, ptr %i.yy, align 1, !alias.scope !18463, !noalias !18461
  %i.yz = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 0, ptr %i.yz, align 8, !alias.scope !18463, !noalias !18461
  %i.za = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  store ptr null, ptr %i.za, align 8, !alias.scope !18463, !noalias !18461
  %i.zb = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  store i8 0, ptr %i.zb, align 8, !alias.scope !18463, !noalias !18461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.val301 = load i64, ptr %i.zc, align 8, !noundef !8 ; 2 uses
  %i.zd = icmp eq i64 %.val301, 0
  br i1 %i.zd, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.sroa.0808.0.copyload = load ptr, ptr %i.bv, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %.sroa.5809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.5809.0.copyload = load i64, ptr %.sroa.5809.0..sroa_idx, align 8 ; 4 uses
  %.val24.i.i.i.i = load <16 x i8>, ptr %.sroa.0808.0.copyload, align 16, !noalias !18464
  %i.ze = icmp eq i64 %.sroa.5809.0.copyload, 0
  br i1 %i.ze, label %bb.kp, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.km
  %i.zf = mul i64 %.sroa.5809.0.copyload, -48
  %3 = mul i64 %.sroa.5809.0.copyload, 49
  %i.zg = add i64 %3, 65
  %4 = getelementptr i8, ptr %.sroa.0808.0.copyload, i64 %i.zf
  %i.zh = getelementptr i8, ptr %4, i64 -48
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.zi = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 32, i64 noundef range(i64 8, 17) 8) #40 ; 5 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.ko, label %bb.ku, !prof !12

bb.ko:                                            ; preds = %bb.kn
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #48
          to label %.noexc444 unwind label %bb.kt

.noexc444:                                        ; preds = %bb.ko
  unreachable

bb.kp:                                            ; preds = %bb.km, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.49.0.i.i.i = phi i64 [ undef, %bb.km ], [ %i.zg, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.510.0.i.i.i = phi ptr [ undef, %bb.km ], [ %i.zh, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.km ], [ 16, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0808.0.copyload, i64 16
  %i.zl = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.zm = getelementptr i8, ptr %.sroa.0808.0.copyload, i64 %.sroa.5809.0.copyload
  %i.zn = getelementptr i8, ptr %i.zm, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18465
  store i64 %.sink.i.i.i.i, ptr %i.d, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.5800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.49.0.i.i.i, ptr %.sroa.5800.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.6801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.510.0.i.i.i, ptr %.sroa.6801.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.7802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.0808.0.copyload, ptr %.sroa.7802.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.8803.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.zk, ptr %.sroa.8803.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.9804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.zn, ptr %.sroa.9804.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.10805.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <16 x i1> %i.zl, ptr %.sroa.10805.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  %.sroa.12807.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.val301, ptr %.sroa.12807.0..sroa_idx, align 8, !alias.scope !18466, !noalias !18467
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2xb0BKvnu80_21datafusion_datasource11file_groups9FileGroupEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs2HSpDNxY7OE_9hashbrown3map10IntoValuesIBL_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBL_NtBY_15PartitionedFileEENvYBU_INtNtB2t_7convert4FromB4R_E4fromEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.kr unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

bb.kr:                                            ; preds = %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18465
  br label %bb.ks

bb.ks:                                            ; preds = %bb.ku, %bb.kr
  %.sroa.015.3 = phi i8 [ 1, %bb.ku ], [ 0, %bb.kr ] ; 7 uses
  invoke void @_RNvMNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB2_21FileScanConfigBuilder16with_file_groups(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao)
          to label %bb.kw unwind label %bb.kv

bb.kt:                                            ; preds = %bb.ko
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

bb.ku:                                            ; preds = %bb.kn
  store i64 0, ptr %i.zi, align 8
  %.sroa.0785.sroa.5.0..sroa.0784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0785.sroa.5.0..sroa.0784.0..sroa_idx, align 8
  %.sroa.0785.sroa.6.0..sroa.0784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0785.sroa.6.0..sroa.0784.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.ao, align 8, !alias.scope !18468, !noalias !18469
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.zi, ptr %i.zq, align 8, !alias.scope !18468, !noalias !18469
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %i.zr, align 8, !alias.scope !18468, !noalias !18469
  br label %bb.ks

bb.kv:                                            ; preds = %bb.ks
  %i.zs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread970

bb.kw:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.zu = load ptr, ptr %i.zt, align 16, !align !11, !noundef !8
  invoke void @_RNvMs1_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionRINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEE6clonedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.zu)
          to label %bb.kx unwind label %bb.ms

bb.kx:                                            ; preds = %bb.kw
  invoke void @_RNvMNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB2_21FileScanConfigBuilder23with_projection_indices(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an)
          to label %bb.kz unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.thread965

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !18470)
  %i.zw = load i64, ptr %i.as, align 8, !range !25, !alias.scope !18471, !noalias !18470, !noundef !8
  %i.zx = icmp eq i64 %i.zw, 2
  br i1 %i.zx, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.zy = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.8780.sroa.0.0.copyload817 = load i64, ptr %i.zy, align 8, !alias.scope !18472
  %.sroa.8780.sroa.8.0..sroa_idx818 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8.0..sroa_idx818, i64 32, i1 false), !alias.scope !18472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.sroa.2820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2820.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !18473)
  store i64 %.sroa.8780.sroa.0.0.copyload817, ptr %i.c, align 8, !noalias !18473
  %i.zz = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.zz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.mz unwind label %.thread956

bb.lb:                                            ; preds = %bb.kz
  %.sroa.8780.sroa.8.0..sroa.8780.0..sroa_idx781.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8.0..sroa.8780.0..sroa_idx781.sroa_idx, i64 32, i1 false), !alias.scope !18472
  %.sroa.10782.0..sroa_idx783 = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.5815.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5815, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5815.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10782.0..sroa_idx783, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5815, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8780.sroa.8, i64 32, i1 false)
  %i.aaa = load <2 x i64>, ptr %i.ub, align 16
  store <2 x i64> %i.aaa, ptr %i.at, align 16, !alias.scope !18474
  %.sroa.5815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.5815.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5815, i64 272, i1 false), !alias.scope !18474
  invoke void @_RNvMNtCs2xb0BKvnu80_21datafusion_datasource16file_scan_configNtB2_21FileScanConfigBuilder5build(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.au, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(288) %i.at)
          to label %bb.lc unwind label %.thread956

.thread956:                                       ; preds = %bb.la, %bb.lb
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8780.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.aac = invoke noundef nonnull ptr @_RNvMs2_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_23ExecutionPlanMetricsSet3new()
          to label %bb.le unwind label %.thread1000

.noexc476:                                        ; preds = %bb.mq, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %.sroa.020.2, label %bb.mr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487

.thread1000:                                      ; preds = %bb.lc
  %i.aad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.mr

bb.ld:                                            ; preds = %bb.le
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.lh

bb.le:                                            ; preds = %bb.lc
  store ptr %i.aac, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.am, ptr %i.aaf, align 8, !alias.scope !18475, !noalias !18476
  store i64 0, ptr %i.ak, align 8, !alias.scope !18475, !noalias !18476
  %i.aag = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.aag, align 8, !alias.scope !18475, !noalias !18476
  %.sroa.4.0..sroa_idx.i448 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i448, align 8, !alias.scope !18475, !noalias !18476
  %.sroa.5.0..sroa_idx.i449 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i449, align 8, !alias.scope !18475, !noalias !18476
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i8 1, ptr %i.aah, align 8, !alias.scope !18475, !noalias !18476
  %i.aai = invoke noundef nonnull ptr @_RINvMNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics7builderNtB3_13MetricBuilder14global_counterReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 13)
          to label %bb.lf unwind label %bb.ld     ; 3 uses

bb.lf:                                            ; preds = %bb.le
  store ptr %i.aai, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aak = atomicrmw add ptr %i.aaj, i64 %i.tt monotonic, align 8 ; 0 uses
  %i.aal = atomicrmw sub ptr %i.aai, i64 1 release, align 8, !noalias !18477
  %i.aam = icmp eq i64 %i.aal, 1
  br i1 %i.aam, label %bb.lg, label %bb.lk

bb.lg:                                            ; preds = %bb.lf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEE9drop_slowCs3LxfdNfGUeX_31datafusion_physical_expr_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #45
          to label %bb.lk unwind label %bb.li

bb.lh:                                            ; preds = %bb.li, %bb.ld
  %.pn178 = phi { ptr, i32 } [ %i.aan, %bb.li ], [ %i.aae, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
end_hunk_0
