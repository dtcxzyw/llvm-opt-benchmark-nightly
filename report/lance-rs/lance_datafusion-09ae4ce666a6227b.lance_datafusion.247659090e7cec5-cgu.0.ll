Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1A_17AsyncStreamReader4open00ENtNtBT_8schedule16BlockingScheduleEB1C_:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !range !340, !invariant.load !315
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) %i.fg) #71
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ch, %bb.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.bq
  %common.resume.op.i = phi { ptr, i32 } [ %i.fz, %bb.ch ], [ %i.fy, %bb.cg ], [ %i.fb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ], [ %i.fb, %bb.bq ]
  resume { ptr, i32 } %common.resume.op.i

bb.br:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.c)
          to label %bb.bu unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  %i.fk = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.fj)
          to label %bb.bv unwind label %bb.bt     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.fm = extractvalue { ptr, ptr } %i.fk, 0
  %i.fn = extractvalue { ptr, ptr } %i.fk, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.bu ], [ %i.fn, %bb.bv ]
  %.sroa.63.0.i.i.i = phi ptr [ null, %bb.bu ], [ %i.fm, %bb.bv ]
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.i.i.i = load i64, ptr %.sroa.02.0.in.i.i.i, align 8, !range !343, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -2, ptr %i.fo, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.02.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.63.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cd

bb.bw:                                            ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !29061
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.fp = call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.fp, label %default.unreachable [
    i8 3, label %bb.by
    i8 0, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit
    i8 1, label %bb.ce
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  ]

bb.bx:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bp, %bb.bm, %.thread102.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  br label %bb.cd

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.a)
          to label %bb.cb unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  %i.fs = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.fr)
          to label %bb.cc unwind label %bb.ca     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70
  unreachable

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

bb.cc:                                            ; preds = %bb.bz
  %i.fu = extractvalue { ptr, ptr } %i.fs, 0
  %i.fv = extractvalue { ptr, ptr } %i.fs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  br label %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i

_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i: ; preds = %bb.cc, %bb.cb
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.cb ], [ %i.fv, %bb.cc ]
  %.sroa.63.0.i2.i.i = phi ptr [ null, %bb.cb ], [ %i.fu, %bb.cc ]
  %.sroa.02.0.i4.i.i = load i64, ptr %i.ah, align 8, !range !343, !noundef !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -2, ptr %i.fw, align 8
  %.sroa.5.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i4.i.i, ptr %.sroa.5.0..sroa_idx.i5.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.63.0.i2.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i6.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i7.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @_RNvMs4_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1K_17AsyncStreamReader4open00ENtNtB13_8schedule16BlockingScheduleE9set_stageB1M_(ptr noundef nonnull align 8 %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit8.i.i, %bb.bx, %_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1M_17AsyncStreamReader4open00ENtNtB15_8schedule16BlockingScheduleEB1O_.exit.i.i
  call fastcc void @_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE8completeB1S_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit

bb.ce:                                            ; preds = %bb.bw
  call void @_RNvXs_NtNtNtCseXbohGRa9jr_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noundef nonnull %0)
  %i.fx = call noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.fx, label %bb.cf, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2d_17AsyncStreamReader4open00ENtNtB1w_8schedule16BlockingScheduleEEB2f_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i.i: ; preds = %bb.cf
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i: ; preds = %bb.bw, %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtBI_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2d_17AsyncStreamReader4open00ENtNtB1w_8schedule16BlockingScheduleEEB2f_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i unwind label %bb.ch

bb.ch:                                            ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  br label %common.resume.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i: ; preds = %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #71
  br label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit

_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4open00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit: ; preds = %bb.a, %bb.bw, %bb.cd, %bb.ce, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4core4CellINtNtNtB1h_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB2N_17AsyncStreamReader4open00ENtNtB25_8schedule16BlockingScheduleEEEB2P_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1A_17AsyncStreamReader4read00ENtNtBT_8schedule16BlockingScheduleEB1C_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = alloca [56 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 12 uses
  %i.aa = alloca [2 x i8], align 2                ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %i.ad = alloca [144 x i8], align 16             ; 10 uses
  %.sroa.053.sroa.0.i.sroa.9.i.i.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.7385.i.i.i.i.i.i.i.i.i.i.i.i = alloca [60 x i8], align 8 ; 8 uses
  %.sroa.8387.i.i.i.i.i.i.i.i.i.i.i.i = alloca [3 x i8], align 1 ; 8 uses
  %i.ae = alloca [144 x i8], align 16             ; 13 uses
  %i.af = alloca [40 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [2 x i8], align 2                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 10 uses
  %i.ak = alloca [64 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.11.i.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 9 uses
  %i.an = alloca [32 x i8], align 16              ; 13 uses
  %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 10 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 8 uses
  %i.ao = alloca [64 x i8], align 8               ; 16 uses
  %i.ap = alloca [72 x i8], align 8               ; 18 uses
  %.sroa.47.sroa.2.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.51.sroa.7.i.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 10 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [48 x i8], align 8               ; 4 uses
  %i.av = alloca [40 x i8], align 8               ; 9 uses
  %i.aw = tail call noundef i8 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.aw, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.dt
    i8 2, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE4pollB1S_.exit
    i8 3, label %_RNvMs0_NtNtNtCseXbohGRa9jr_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1Q_17AsyncStreamReader4read00ENtNtB19_8schedule16BlockingScheduleE10poll_innerB1S_.exit.i
  ]

default.unreachable:                              ; preds = %bb.dy, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !29388
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29389)
  %i.az = load i32, ptr %i.ay, align 8, !range !410, !noalias !29390, !noundef !315
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %bb.da, !prof !321

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !29390
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !343, !noalias !29390, !noundef !315
  %i.bd = invoke noundef i64 @_RNvMs2_NtNtNtCseXbohGRa9jr_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.bc)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.dg, !noalias !29391

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.bd, ptr %i.at, align 8, !noalias !29390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !29394
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !29393, !noalias !29395, !noundef !315 ; 16 uses
  store ptr null, ptr %i.be, align 8, !alias.scope !29393, !noalias !29395
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !316

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.as, align 8, !noalias !29394
  %i.bg = invoke { i1, i8 } @_RNvNtNtCseXbohGRa9jr_5tokio4task4coop4stop()
          to label %bb.f unwind label %bb.cx, !noalias !29394 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1041, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #72
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.db, !noalias !29390

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !29394
  store ptr %i.bf, ptr %i.ar, align 8, !noalias !29396
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 6 uses
  %i.bi = cmpxchg ptr %i.bh, i32 0, i32 1 acquire monotonic, align 4, !noalias !29397
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !321

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bh)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !29396

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.f
  %i.bk = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !29397
  %i.bl = and i64 %i.bk, 9223372036854775807
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %bb.h, !prof !321

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.bn = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc6.i.i.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !29396

.noexc6.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.h
  %i.bo = xor i1 %i.bn, true
  %i.bp = zext i1 %i.bo to i8
  br label %bb.k

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %.body14.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body15.i.i.i.i.i.i.i.i.i.i, %.body14.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.j ], [ %i.bw, %bb.m ] ; 2 uses
  %i.bq = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !29398
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.i, label %.body.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBP_2io8buffered9bufreader9BufReaderNtNtBP_2fs4FileEEEE9drop_slowCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ar)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.cw, !noalias !29396

bb.j:                                             ; preds = %bb.cu, %bb.cs, %bb.h, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc6.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bp, %.noexc6.i.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 1, !noalias !29397
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.l, !prof !321

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !29399
  store ptr %i.bh, ptr %i.aq, align 8, !noalias !29399
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bv, align 8, !noalias !29399
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @488, i64 noundef 43, ptr noundef nonnull %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @492, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #72
          to label %bb.n unwind label %bb.m, !noalias !29399

bb.m:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCs5qKAdtC2BLj_9arrow_ipc6reader12StreamReaderINtNtNtNtBI_2io8buffered9bufreader9BufReaderNtNtBI_2fs4FileEEEEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #73
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !29399

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29399
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.by = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29400)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.sroa.2.i.i.i.i.i.i.i.i.i.i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 240 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !327, !alias.scope !29400, !noalias !29401, !noundef !315
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.thread94.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51.sroa.7.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !29402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !29402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.053.sroa.0.i.sroa.9.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7385.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8387.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !29402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !29402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.sroa.6.sroa.8.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !29402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !29403
  invoke fastcc void @_RNvMsd_NtCs5qKAdtC2BLj_9arrow_ipc6readerINtB5_13MessageReaderINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufreader9BufReaderNtNtB16_2fs4FileEE10maybe_nextCsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.bz)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp121.i.i.i.i.i.i.i.i.i.i, !noalias !29396

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = load i64, ptr %i.ao, align 8, !range !326, !noalias !29403, !noundef !315
  %i.ce = trunc nuw i64 %i.cd to i1
  %.sroa.4119.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  br i1 %i.ce, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.sroa.0.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5.sroa.0.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.5115.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.5.sroa.0.i.sroa.7.0..sroa.01.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.5.sroa.0.i.sroa.8.0..sroa.01.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.4.24..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.671.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.671.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4158.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5159.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5159.sroa.4.0..sroa.5159.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 184 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 192 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 241 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.641.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.641.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4139.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5140.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5140.sroa.4.0..sroa.5140.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  %.sroa.053.sroa.0.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.053.sroa.0.i.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.0146.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.5148.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 141
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %.sroa.053.sroa.0.i.sroa.7.0..sroa_idx99.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.053.sroa.0.i.sroa.9.0..sroa_idx107.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.0274.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.0274.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.0274.sroa.0.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.sroa.0274.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 139
  %.sroa.5.0..sroa_idx275.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 140
  %.sroa.6.0..sroa_idx277.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 141
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.651.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.464.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.sroa.651.i.sroa.7.0..sroa.464.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.651.i.sroa.8.0..sroa.464.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %.sroa.4299.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5300.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.631.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.631.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.11.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %.sroa.11.i.sroa.6.sroa.8.0..sroa.11.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.47.sroa.2.0..sroa.47.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.q

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.sroa.0.i.sroa.0.0.copyload71.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !29404
  %.sroa.5.sroa.0.i.sroa.7.0..sroa_idx73.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5.sroa.0.i.sroa.7.0.copyload74.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.0.i.sroa.7.0..sroa_idx73.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %.sroa.5.sroa.0.i.sroa.8.0..sroa_idx76.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.5.sroa.0.i.sroa.8.0.copyload77.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.0.i.sroa.8.0..sroa_idx76.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %.sroa.4119.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4119.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !29404
  br label %.thread100.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !29405)
  %.sroa.5.sroa.0.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !29404 ; 2 uses
  %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.0.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404 ; 38 uses
  %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.0.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404 ; 13 uses
  %.sroa.4114.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4119.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5115.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !29404
  store i64 %.sroa.5.sroa.0.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.0.i.sroa.7.0..sroa.01.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.0.i.sroa.8.0..sroa.01.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4114.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.dy = inttoptr i64 %.sroa.5.sroa.0.i.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr ; 26 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ce, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !29404
  store i64 %.sroa.4114.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 16, !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !29406
  %i.dz = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -4
  %i.eb = icmp ule i64 %i.dz, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ea, %i.eb
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, !prof !544

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29407, !noalias !29408
  %i.ed = trunc i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32 ; 7 uses
  %i.ee = sub i32 %i.ed, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ef = sext i32 %i.ee to i64
  store ptr %i.dy, ptr %i.q, align 8, !alias.scope !29409, !noalias !29410
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cg, align 8, !alias.scope !29409, !noalias !29410
  store i64 %i.ef, ptr %i.ch, align 8, !alias.scope !29409, !noalias !29410
  %i.eg = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, i16 noundef 6)
          to label %.noexc200.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc200.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !29406
  %i.eh = icmp eq i16 %i.eg, 0
  br i1 %i.eh, label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc200.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ei = zext i16 %i.eg to i64
  %i.ej = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.ei ; 3 uses
  %i.ek = icmp ugt i64 %i.ej, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ek, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !316

_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ej
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.el, align 1, !alias.scope !29412, !noalias !29413 ; 2 uses
  switch i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.t
    i8 3, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i204.i.i.i.i.i.i.i.i.i.i.i.i
    i8 2, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i213.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc200.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i367.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc200.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !29404
  store i8 %.sroa.3.0.i.i367.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 1, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !29404
  store ptr %i.v, ptr %i.t, align 8, !noalias !29404
  %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsd_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_13MessageHeaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @799, ptr noundef nonnull %i.t)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !29411

bb.t:                                             ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !29404
  invoke fastcc void @_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message16header_as_schema(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %.loopexit.i.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, !noalias !29411

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i204.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !29414
  %.sroa.0.0.copyload.i.i.i205.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29415, !noalias !29416
  %i.em = sub i32 %i.ed, %.sroa.0.0.copyload.i.i.i205.i.i.i.i.i.i.i.i.i.i.i.i
  %i.en = sext i32 %i.em to i64
  store ptr %i.dy, ptr %i.p, align 8, !alias.scope !29417, !noalias !29418
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.da, align 8, !alias.scope !29417, !noalias !29418
  store i64 %i.en, ptr %i.db, align 8, !alias.scope !29417, !noalias !29418
  %i.eo = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, i16 noundef 6)
          to label %.noexc208.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc208.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i204.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !29414
  %i.ep = icmp eq i16 %i.eo, 0
  br i1 %i.ep, label %bb.af, label %bb.u

bb.u:                                             ; preds = %.noexc208.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = zext i16 %i.eo to i64
  %i.er = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.eq ; 3 uses
  %i.es = icmp ugt i64 %i.er, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.es, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !316

_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.er
  %.sroa.0.0.copyload.i.i.i.i206.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.et, align 1, !alias.scope !29419, !noalias !29420
  %i.eu = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i206.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.eu, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !29421
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29422, !noalias !29423
  %i.ev = sub i32 %i.ed, %.sroa.0.0.copyload.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = sext i32 %i.ev to i64
  store ptr %i.dy, ptr %i.o, align 8, !alias.scope !29424, !noalias !29425
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dc, align 8, !alias.scope !29424, !noalias !29425
  store i64 %i.ew, ptr %i.dd, align 8, !alias.scope !29424, !noalias !29425
  %i.ex = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, i16 noundef 8)
          to label %.noexc210.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc210.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !29421
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %bb.af, label %bb.v

bb.v:                                             ; preds = %.noexc210.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = zext i16 %i.ex to i64
  %i.fa = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.ez ; 5 uses
  %i.fb = add i64 %i.fa, 4                        ; 2 uses
  %i.fc = icmp ult i64 %i.fa, -4
  %i.fd = icmp ule i64 %i.fb, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.fc, %i.fd
  br i1 %or.cond.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i231.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, !prof !544

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i213.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message11header_type.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !29426
  %.sroa.0.0.copyload.i.i.i214.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29427, !noalias !29428
  %i.fe = sub i32 %i.ed, %.sroa.0.0.copyload.i.i.i214.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = sext i32 %i.fe to i64
  store ptr %i.dy, ptr %i.n, align 8, !alias.scope !29429, !noalias !29430
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ci, align 8, !alias.scope !29429, !noalias !29430
  store i64 %i.ff, ptr %i.cj, align 8, !alias.scope !29429, !noalias !29430
  %i.fg = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, i16 noundef 6)
          to label %.noexc225.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc225.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i213.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !29426
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %bb.bf, label %bb.w

bb.w:                                             ; preds = %.noexc225.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = zext i16 %i.fg to i64
  %i.fj = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.fi ; 3 uses
  %i.fk = icmp ugt i64 %i.fj, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fk, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i215.i.i.i.i.i.i.i.i.i.i.i.i, !prof !316

_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i215.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fj
  %.sroa.0.0.copyload.i.i.i.i216.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !alias.scope !29431, !noalias !29432
  %i.fm = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i216.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.fm, label %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2.i218.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i2.i218.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i215.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !29433
  %.sroa.0.0.copyload.i2.i.i219.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29434, !noalias !29435
  %i.fn = sub i32 %i.ed, %.sroa.0.0.copyload.i2.i.i219.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = sext i32 %i.fn to i64
  store ptr %i.dy, ptr %i.m, align 8, !alias.scope !29436, !noalias !29437
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ck, align 8, !alias.scope !29436, !noalias !29437
  store i64 %i.fo, ptr %i.cl, align 8, !alias.scope !29436, !noalias !29437
  %i.fp = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, i16 noundef 8)
          to label %.noexc227.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

end_hunk_0
begin_hunk_1_@_RINvNtNtNtCseXbohGRa9jr_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMsa_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB1A_17AsyncStreamReader4read00ENtNtBT_8schedule16BlockingScheduleEB1C_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.sroa.2.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.51.sroa.7.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !29402
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.sroa.7.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !29402
  store i8 0, ptr %i.ap, align 8, !noalias !29402
  store i64 %.sroa.615.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29402
  store <2 x i64> %i.ge, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29402
  store <2 x i64> %i.gd, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.sroa.2.0..sroa.47.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.sroa.2.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !29402
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !29441
  %i.gf = call noundef dereferenceable_or_null(43) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 43, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !29441 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.cg, label %bb.ch

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i231.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fa
  %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gh, align 1, !alias.scope !29442, !noalias !29443
  %i.gi = zext i32 %.sroa.0.0.copyload.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.gj = add i64 %i.fa, %i.gi
  store ptr %i.dy, ptr %i.aj, align 8, !noalias !29404
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.641.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store i64 %i.gj, ptr %.sroa.641.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29444
  %.sroa.0.0.copyload.i.i.i232.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29445, !noalias !29446
  %i.gk = sub i32 %i.ed, %.sroa.0.0.copyload.i.i.i232.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = sext i32 %i.gk to i64
  store ptr %i.dy, ptr %i.l, align 8, !alias.scope !29447, !noalias !29448
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.de, align 8, !alias.scope !29447, !noalias !29448
  store i64 %i.gl, ptr %i.df, align 8, !alias.scope !29447, !noalias !29448
  %i.gm = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i16 noundef 4)
          to label %.noexc236.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc236.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i231.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !29444
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc236.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = zext i16 %i.gm to i64
  %i.gp = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.go ; 3 uses
  %i.gq = icmp ugt i64 %i.gp, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gq, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !316

.invoke414.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.be, %bb.ae, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %i.gr = phi i64 [ %i.fs, %bb.x ], [ %i.er, %bb.u ], [ %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %i.gp, %bb.ae ], [ %i.fj, %bb.w ], [ %i.fa, %bb.v ], [ %i.ej, %bb.s ], [ %i.it, %bb.be ]
  %i.gs = phi i64 [ %i.ft, %bb.x ], [ %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.dz, %bb.r ], [ %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.fb, %bb.v ], [ %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.be ]
  %i.gt = phi ptr [ @2441, %bb.x ], [ @234, %bb.u ], [ @5024, %bb.r ], [ @234, %bb.ae ], [ @234, %bb.w ], [ @2441, %bb.v ], [ @234, %bb.s ], [ @234, %bb.be ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.gr, i64 noundef %i.gs, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt) #72
          to label %.cont415.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !29411

.cont415.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.gp
  %.sroa.0.0.copyload.i.i.i.i233.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gu, align 1, !alias.scope !29449, !noalias !29450
  br label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.noexc210.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc208.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !29451
  %i.gv = call noundef dereferenceable_or_null(42) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !29451 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.gv, ptr noundef nonnull align 1 dereferenceable(42) @368, i64 42, i1 false), !noalias !29452
  %i.gx = ptrtoint ptr %i.gv to i64
  br label %bb.ac

_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc236.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i234.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i233.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc236.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i16 %.sroa.3.0.i.i234.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ai, align 2, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !29404
  %i.gy = load ptr, ptr %i.cu, align 8, !alias.scope !29453, !noalias !29411, !nonnull !315, !noundef !315
  %i.gz = atomicrmw add ptr %i.gy, i64 1 monotonic, align 8, !noalias !29411
  %i.ha = icmp slt i64 %i.gz, 0
  br i1 %i.ha, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hb = load ptr, ptr %i.cu, align 8, !alias.scope !29453, !noalias !29411, !nonnull !315, !noundef !315 ; 3 uses
  store ptr %i.hb, ptr %i.ah, align 8, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !29404
  %i.hc = load ptr, ptr %i.co, align 16, !noalias !29404, !nonnull !315, !noundef !315 ; 2 uses
  %i.hd = load i64, ptr %i.cp, align 8, !noalias !29404, !noundef !315 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !29404
  store i64 1, ptr %i.s, align 8, !noalias !29404
  store i64 1, ptr %i.dg, align 8, !noalias !29404
  store ptr %i.hc, ptr %i.dh, align 8, !noalias !29404
  store i64 %i.hd, ptr %.sroa.4139.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store ptr null, ptr %.sroa.5140.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %i.he = load <2 x i64>, ptr %i.an, align 16, !noalias !29404
  store <2 x i64> %i.he, ptr %.sroa.5140.sroa.4.0..sroa.5140.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !29454
  %i.hf = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !29454 ; 4 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ai, label %bb.am, !prof !316

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc241.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !29411

.noexc241.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s) #73
          to label %bb.bc unwind label %bb.ak, !noalias !29411

bb.ak:                                            ; preds = %bb.aj
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29411
  unreachable

bb.al:                                            ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hf, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !29411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !29404
  store ptr %i.hf, ptr %i.ac, align 8, !noalias !29404
  store ptr %i.hc, ptr %i.di, align 8, !noalias !29404
  store i64 %i.hd, ptr %i.dj, align 8, !noalias !29404
  invoke void @_RNvMs_NtCs5qKAdtC2BLj_9arrow_ipc6readerNtB4_18RecordBatchDecoder7try_new(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aj, ptr noundef nonnull %i.hb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cv, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ai)
          to label %bb.ap unwind label %bb.ao, !noalias !29411

bb.an:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body14.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !29411

bb.ao:                                            ; preds = %bb.at, %bb.am
  %i.hj = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29455)
  call void @llvm.experimental.noalias.scope.decl(metadata !29456)
  call void @llvm.experimental.noalias.scope.decl(metadata !29457)
  %i.hk = load ptr, ptr %i.ac, align 8, !alias.scope !29458, !noalias !29404, !nonnull !315, !noundef !315
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !noalias !29459
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.an, label %.body14.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.am
  %i.hn = load i8, ptr %i.dk, align 4, !range !391, !noalias !29404, !noundef !315
  %i.ho = icmp eq i8 %i.hn, 2
  %i.hp = load <2 x i64>, ptr %i.ad, align 16, !noalias !29404 ; 3 uses
  %i.hq = load <2 x i64>, ptr %.sroa.053.sroa.0.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !29404 ; 3 uses
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !29404
  %i.hr = extractelement <2 x i64> %i.hp, i64 0
  %i.hs = extractelement <2 x i64> %i.hp, i64 1
  %i.ht = extractelement <2 x i64> %i.hq, i64 0
  %i.hu = extractelement <2 x i64> %i.hq, i64 1
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.sroa.0.i.sroa.9.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.053.sroa.0.i.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.7385.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(60) %.sroa.0146.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 60, i1 false), !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8387.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5148.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !29404
  %i.hv = load i64, ptr %i.dl, align 8, !range !334, !alias.scope !29453, !noalias !29411, !noundef !315
  %.not187.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hv, -1
  br i1 %.not187.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val198.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !29453, !noalias !29411, !nonnull !315, !noundef !315
  %.val199.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !29453, !noalias !29411, !noundef !315
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.561.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val199.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ], [ undef, %bb.ar ]
  %.sroa.060.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val198.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ], [ null, %bb.ar ]
  store <2 x i64> %i.hp, ptr %i.ae, align 16, !noalias !29404
  store <2 x i64> %i.hq, ptr %.sroa.053.sroa.0.i.sroa.7.0..sroa_idx99.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.053.sroa.0.i.sroa.9.0..sroa_idx107.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.sroa.0.i.sroa.9.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !29404
  %i.hw = load i8, ptr %i.cw, align 1, !range !327, !alias.scope !29453, !noalias !29411, !noundef !315
  store ptr %.sroa.060.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0274.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !alias.scope !29460, !noalias !29404
  store i64 %.sroa.561.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0274.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !29460, !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(59) %.sroa.0274.sroa.0.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(59) %.sroa.7385.i.i.i.i.i.i.i.i.i.i.i.i, i64 59, i1 false), !noalias !29404
  store i8 0, ptr %.sroa.0274.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !29460, !noalias !29404
  store i8 %i.hw, ptr %.sroa.5.0..sroa_idx275.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !29460, !noalias !29404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx277.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8387.i.i.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !29404
  invoke void @_RNvMs_NtCs5qKAdtC2BLj_9arrow_ipc6readerNtB4_18RecordBatchDecoder17read_record_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.ae)
          to label %bb.au unwind label %bb.ao, !noalias !29411

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29404
  %1 = load i64, ptr %i.af, align 8, !range !334, !noalias !29404, !noundef !315 ; 2 uses
  %2 = icmp eq i64 %1, -1
  %3 = load <2 x i64>, ptr %i.do, align 8, !noalias !29404 ; 3 uses
  %4 = load <2 x i64>, ptr %.sroa.651.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !29404
  br i1 %2, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !29461, !noalias !29404
  %5 = extractelement <2 x i64> %3, i64 0
  %i.hx = extractelement <2 x i64> %3, i64 1
  %i.hy = extractelement <2 x i64> %4, i64 0
  %i.hz = extractelement <2 x i64> %4, i64 1
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  store <2 x i64> %3, ptr %.sroa.464.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store <2 x i64> %4, ptr %.sroa.651.i.sroa.8.0..sroa.464.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store i64 %1, ptr %i.ag, align 8, !noalias !29404
  call void @llvm.experimental.noalias.scope.decl(metadata !29462)
  call void @llvm.experimental.noalias.scope.decl(metadata !29463)
  call void @llvm.experimental.noalias.scope.decl(metadata !29464)
  %i.ia = load ptr, ptr %i.ac, align 8, !alias.scope !29465, !noalias !29404, !nonnull !315, !noundef !315
  %i.ib = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !noalias !29466
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit244.i.i.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit244.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !29411

bb.ay:                                            ; preds = %bb.ax
  %i.id = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(40) %i.ag) #73
          to label %.body14.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !29411

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit244.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !29404
  %.sroa.065.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !29404
  %.sroa.466.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.464.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %.sroa.567.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.651.i.sroa.7.0..sroa.464.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %i.ie = load <2 x i64>, ptr %.sroa.651.i.sroa.8.0..sroa.464.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !29404
  br label %bb.cd

bb.az:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bm, %bb.bd, %bb.ay, %bb.an
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29411
  unreachable

bb.ba:                                            ; preds = %bb.av, %bb.aq
  %.sroa.44.4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hu, %bb.aq ], [ %i.hz, %bb.av ]
  %.sroa.38.4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ht, %bb.aq ], [ %i.hy, %bb.av ]
  %.sroa.31.4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %bb.aq ], [ %i.hx, %bb.av ]
  %.sroa.1924.4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %bb.aq ], [ %5, %bb.av ]
  %i.ig = phi ptr [ %i.hf, %bb.aq ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29467)
  call void @llvm.experimental.noalias.scope.decl(metadata !29468)
  call void @llvm.experimental.noalias.scope.decl(metadata !29469)
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !29470
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit246.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit246.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp121.i.i.i.i.i.i.i.i.i.i, !noalias !29396

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit246.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !29404
  br label %.noexc9.i.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.aj
  %i.ij = atomicrmw sub ptr %i.hb, i64 1 release, align 8, !noalias !29471
  %i.ik = icmp eq i64 %i.ij, 1
  br i1 %i.ik, label %bb.bd, label %.body14.i.i.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.body14.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !29411

_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i249.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.il = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.fs
  %.sroa.0.0.copyload.i.i4.i221.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.il, align 1, !alias.scope !29472, !noalias !29473
  %i.im = zext i32 %.sroa.0.0.copyload.i.i4.i221.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.in = add i64 %i.fs, %i.im                    ; 10 uses
  store ptr %i.dy, ptr %i.ab, align 8, !noalias !29404
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.671.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store i64 %i.in, ptr %.sroa.671.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29474
  %.sroa.0.0.copyload.i.i.i250.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1, !alias.scope !29475, !noalias !29476
  %i.io = sub i32 %i.ed, %.sroa.0.0.copyload.i.i.i250.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = sext i32 %i.io to i64
  store ptr %i.dy, ptr %i.k, align 8, !alias.scope !29477, !noalias !29478
  store i64 %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cm, align 8, !alias.scope !29477, !noalias !29478
  store i64 %i.ip, ptr %i.cn, align 8, !alias.scope !29477, !noalias !29478
  %i.iq = invoke noundef i16 @_RNvMs_NtCsl5zbFZW529v_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i16 noundef 4)
          to label %.noexc255.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411 ; 2 uses

.noexc255.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i249.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !29474
  %i.ir = icmp eq i16 %i.iq, 0
  br i1 %i.ir, label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit257.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc255.i.i.i.i.i.i.i.i.i.i.i.i
  %i.is = zext i16 %i.iq to i64
  %i.it = add i64 %.sroa.5.sroa.0.i.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.is ; 3 uses
  %i.iu = icmp ugt i64 %i.it, %.sroa.5.sroa.0.i.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.iu, label %.invoke414.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i251.i.i.i.i.i.i.i.i.i.i.i.i, !prof !316

_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i251.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.it
  %.sroa.0.0.copyload.i.i.i.i252.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.iv, align 1, !alias.scope !29479, !noalias !29480
  br label %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit257.i.i.i.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %.noexc227.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCsl5zbFZW529v_11flatbuffers5tableNtB3_5Table3getNtNtNtCs5qKAdtC2BLj_9arrow_ipc3gen7Message13MessageHeaderECsc85D0lJ81Z_16lance_datafusion.exit.i215.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc225.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !29481
  %i.iw = call noundef dereferenceable_or_null(52) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 52, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !29481 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.iw, ptr noundef nonnull align 1 dereferenceable(52) @367, i64 52, i1 false), !noalias !29482
  %i.iy = ptrtoint ptr %i.iw to i64
  br label %bb.ac

_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit257.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i251.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc255.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i253.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.i.i.i252.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen6SchemaNtB5_15MetadataVersionNtNtCsl5zbFZW529v_11flatbuffers6follow6Follow6follow.exit.i.i251.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc255.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i16 %.sroa.3.0.i.i253.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 2, !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !29404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !29404
  %i.iz = load ptr, ptr %i.co, align 16, !noalias !29404, !nonnull !315, !noundef !315 ; 2 uses
  %i.ja = load i64, ptr %i.cp, align 8, !noalias !29404, !noundef !315 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !29404
  store i64 1, ptr %i.r, align 8, !noalias !29404
  store i64 1, ptr %i.cq, align 8, !noalias !29404
  store ptr %i.iz, ptr %i.cr, align 8, !noalias !29404
  store i64 %i.ja, ptr %.sroa.4158.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  store ptr null, ptr %.sroa.5159.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  %i.jb = load <2 x i64>, ptr %i.an, align 16, !noalias !29404
  store <2 x i64> %i.jb, ptr %.sroa.5159.sroa.4.0..sroa.5159.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !29483
  %i.jc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !29483 ; 6 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.bh, label %bb.bk, !prof !316

bb.bh:                                            ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit257.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc261.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !29411

.noexc261.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.je = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r) #73
          to label %.body14.i.i.i.i.i.i.i.i.i.i unwind label %bb.bj, !noalias !29411

bb.bj:                                            ; preds = %bb.bi
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !29411
  unreachable

bb.bk:                                            ; preds = %_RNvMsK_NtNtCs5qKAdtC2BLj_9arrow_ipc3gen7MessageNtB5_7Message7version.exit257.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jc, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !29411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !29404
  store ptr %i.jc, ptr %i.x, align 8, !noalias !29404
  store ptr %i.iz, ptr %i.cs, align 8, !noalias !29404
  store i64 %i.ja, ptr %i.ct, align 8, !noalias !29404
  %i.jg = load ptr, ptr %i.cu, align 8, !alias.scope !29453, !noalias !29411, !nonnull !315, !noundef !315
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load i8, ptr %i.cw, align 1, !range !327, !alias.scope !29453, !noalias !29411, !noundef !315
  %i.jj = trunc nuw i8 %i.ji to i1
  invoke void @_RNvNtCs5qKAdtC2BLj_9arrow_ipc6reader21get_dictionary_values(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.jh, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.aa, i1 noundef zeroext false, i1 noundef zeroext %i.jj)
          to label %bb.bn unwind label %bb.bl, !noalias !29411

bb.bl:                                            ; preds = %bb.bk
  %i.jk = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.jl = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !29484
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.bm, label %.body14.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body14.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !29411

bb.bn:                                            ; preds = %bb.bk
  %i.jn = load i64, ptr %i.y, align 8, !range !387, !noalias !29404, !noundef !315 ; 2 uses
  %.not184.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jn, -1
  %i.jo = load ptr, ptr %i.cx, align 8, !noalias !29404 ; 2 uses
  %i.jp = load ptr, ptr %i.cy, align 8, !noalias !29404 ; 2 uses
  br i1 %.not184.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.6172.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6172.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6172.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !29404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !29404
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !29485
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit266.i.i.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit266.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp121.i.i.i.i.i.i.i.i.i.i, !noalias !29396

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !29404
  store ptr %i.jo, ptr %i.z, align 8, !noalias !29404
  store ptr %i.jp, ptr %i.cz, align 8, !noalias !29404
  %i.ju = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !29486
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit268.i.i.i.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc85D0lJ81Z_16lance_datafusion.exit268.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i, !noalias !29411

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i26.i.i.i.i.i.i.i.i.i.i, %bb.bw, %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i33.i.i.i.i.i.i.i.i.i.i, %_RNvXse_NtCsl5zbFZW529v_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCsc85D0lJ81Z_16lance_datafusion.exit.i.i43.i.i.i.i.i.i.i.i.i.i, %bb.br
  %lpad.loopexit117.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bs

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i:           ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp118.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %lpad.phi119.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit117.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp118.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29487)
  call void @llvm.experimental.noalias.scope.decl(metadata !29488)
  %i.jw = load ptr, ptr %i.z, align 8, !alias.scope !29489, !noalias !29404, !nonnull !315, !noundef !315
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !noalias !29490
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.bt, label %.body14.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
end_hunk_1
