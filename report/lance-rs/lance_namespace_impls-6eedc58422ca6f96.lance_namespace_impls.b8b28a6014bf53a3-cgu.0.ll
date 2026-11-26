Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNCNvNtCsc85D0lJ81Z_16lance_datafusion5spill23spilling_table_provider0s0_0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.sroa.8.sroa.7.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.8.sroa.7.sroa.6.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx35.sroa_idx.sroa_idx.i.i, align 8, !noalias !142849 ; 2 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx35.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx35.sroa_idx.i.i, i64 96, i1 false), !noalias !142849
  invoke void @_RNvXs4_NtNtCseXbohGRa9jr_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.u)
          to label %bb.cv unwind label %bb.by, !noalias !142841

bb.cu:                                            ; preds = %.thread.i.i.i, %bb.cr
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !142841
  unreachable

.thread.i.i.i:                                    ; preds = %bb.cr, %.thread5.i.i.i
  %.pn4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.thread5.i.i.i ], [ %i.hg, %bb.cr ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2o_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(136) %i.v) #73
          to label %.body20.i.i unwind label %bb.cu, !noalias !142841

.thread.i.i:                                      ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.cp, %bb.cm, %bb.cl, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !142837
  br label %.thread.i

bb.cv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseXbohGRa9jr_5tokio4task4coop16RestoreOnPendingECsfR8GmIBoxTX_21lance_namespace_impls.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !142837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !142837
  br i1 %.not.i.i67.i, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  store i8 3, ptr %i.fx, align 8, !noalias !142808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.5.i.i)
  br label %.thread

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.sroa.8.i.i, i64 96, i1 false), !noalias !142808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  %.val.i68.i = load ptr, ptr %i.fz, align 8, !noalias !142808, !nonnull !422, !noundef !422 ; 2 uses
  %i.hj = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val.i68.i)
          to label %.noexc23.i.i unwind label %bb.cy, !noalias !142835

.noexc23.i.i:                                     ; preds = %bb.cw
  br i1 %i.hj, label %bb.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i

bb.cx:                                            ; preds = %.noexc23.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val.i68.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i unwind label %bb.cy, !noalias !142835

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i: ; preds = %bb.cx, %.noexc23.i.i
  switch i64 %i.hh, label %bb.dd [
    i64 -2, label %bb.cz
    i64 -1, label %bb.di
  ], !prof !763

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !142850
  store i64 %.sroa.8.sroa.0.0.copyload.i.i, ptr %i.ac, align 8, !noalias !142851
  %.sroa.3.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.8.sroa.6.0.copyload.i.i, ptr %.sroa.3.sroa.3.0..sroa_idx.i.i, align 8, !noalias !142851
  %.sroa.3.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.8.sroa.7.sroa.0.0.copyload.i.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i.i, align 8, !noalias !142851
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3133, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2179) #72
          to label %bb.db unwind label %bb.da, !noalias !142852

bb.da:                                            ; preds = %bb.cz
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.dc, !noalias !142852

bb.db:                                            ; preds = %bb.cz
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !142852
  unreachable

bb.dd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i
  %.sroa.842.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !142853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.842.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.sroa.5.i.i, i64 96, i1 false), !noalias !142808
  store i64 1, ptr %i.s, align 8, !noalias !142853
  %i.hn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.hn, align 8, !noalias !142853
  %i.ho = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 0, ptr %i.ho, align 8, !noalias !142808
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !142808
  %.sroa.641.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.hh, ptr %.sroa.641.0..sroa_idx.i.i, align 8, !noalias !142808
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.8.sroa.0.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !142808
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %.sroa.8.sroa.6.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142808
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %.sroa.8.sroa.7.sroa.0.0.copyload.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !142808
  %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %.sroa.8.sroa.7.sroa.6.0.copyload.i.i, ptr %.sroa.7.sroa.6.sroa.5.0..sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !142808
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !142854
  %i.hp = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !142854 ; 3 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.de, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter4open0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, !prof !454

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #72
          to label %.noexc.i26.i.i unwind label %bb.df, !noalias !142854

.noexc.i26.i.i:                                   ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtB1n_2io8buffered9bufwriter9BufWriterNtNtB1n_2fs4FileEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.s) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.dg, !noalias !142855

bb.dg:                                            ; preds = %bb.df
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !142855
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter4open0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.hp, ptr noundef nonnull align 8 dereferenceable(160) %i.s, i64 160, i1 false), !noalias !142855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !142853
  store i8 1, ptr %i.fx, align 8, !noalias !142808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.5.i.i)
  br label %bb.dj

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.df, %bb.da, %bb.cy, %bb.bz, %.noexc14.i.i, %.body12.i.i
  %i.ht = phi ptr [ %i.fv, %bb.da ], [ %i.eb, %.body12.i.i ], [ %i.fv, %.noexc14.i.i ], [ %i.fv, %bb.bz ], [ %i.fv, %bb.cy ], [ %i.fv, %bb.df ]
  %i.hu = phi ptr [ %i.fw, %bb.da ], [ %i.ec, %.body12.i.i ], [ %i.fw, %.noexc14.i.i ], [ %i.fw, %bb.bz ], [ %i.fw, %bb.cy ], [ %i.fw, %bb.df ]
  %i.hv = phi ptr [ %i.fx, %bb.da ], [ %i.ee, %.body12.i.i ], [ %i.fx, %.noexc14.i.i ], [ %i.fx, %bb.bz ], [ %i.fx, %bb.cy ], [ %i.fx, %bb.df ]
  %i.hw = phi ptr [ %i.fy, %bb.da ], [ %i.ef, %.body12.i.i ], [ %i.fy, %.noexc14.i.i ], [ %i.fy, %bb.bz ], [ %i.fy, %bb.cy ], [ %i.fy, %bb.df ]
  %.pn6.pn.i.i = phi { ptr, i32 } [ %i.hl, %bb.da ], [ %eh.lpad-body13.i.i, %.body12.i.i ], [ %eh.lpad-body21.i.i, %.noexc14.i.i ], [ %eh.lpad-body21.i.i, %bb.bz ], [ %i.hk, %bb.cy ], [ %i.hr, %bb.df ]
  store i8 2, ptr %i.hv, align 8, !noalias !142808
  br label %.body71.i

bb.dh:                                            ; preds = %bb.bz, %.body20.i.i
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !142835
  unreachable

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCseXbohGRa9jr_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCs5qKAdtC2BLj_9arrow_ipc6writer12StreamWriterINtNtNtNtCsgczF5crJ4sT_3std2io8buffered9bufwriter9BufWriterNtNtB2R_2fs4FileEENtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit25.i.i
  store i8 1, ptr %i.fx, align 8, !noalias !142808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.5.i.i)
  switch i64 %.sroa.8.sroa.0.0.copyload.i.i, label %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i [
    i64 -2, label %.thread
    i64 -1, label %bb.dj
  ]

_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !142856
  store i64 %.sroa.8.sroa.0.0.copyload.i.i, ptr %i.r, align 8, !noalias !142857
  %.sroa.5136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.8.sroa.6.0.copyload.i.i, ptr %.sroa.5136.0..sroa_idx.i, align 8, !noalias !142857
  %.sroa.6137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.8.sroa.7.sroa.0.0.copyload.i.i, ptr %.sroa.6137.0..sroa_idx.i, align 8, !noalias !142857
  %.sroa.7138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.8.sroa.7.sroa.6.0.copyload.i.i, ptr %.sroa.7138.0..sroa_idx.i, align 8, !noalias !142857
  invoke void @_RNvXs2_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.dl unwind label %bb.fa, !noalias !142858

bb.dj:                                            ; preds = %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter4open0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %.sroa.8128.0198206.i = phi ptr [ %i.hp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter4open0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %.sroa.8.sroa.6.0.copyload.i.i, %bb.di ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8128.0198206.i) ]
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 1, ptr %i.hy, align 2, !noalias !142784
  store ptr %.sroa.8128.0198206.i, ptr %i.fy, align 8, !noalias !142784
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !142784, !nonnull !422, !align !423, !noundef !422 ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 16     ; 2 uses
  %.val53.i = load i64, ptr %i.ib, align 8, !noalias !142786, !noundef !422 ; 4 uses
  %i.ic = icmp ult i64 %.val53.i, 230584300921369396
  call void @llvm.assume(i1 %i.ic)
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %.val53.i, ptr %i.id, align 8, !noalias !142784
  store i64 0, ptr %i.ib, align 8, !alias.scope !142859, !noalias !142786
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !142859, !noalias !142786, !nonnull !422, !noundef !422 ; 3 uses
  %i.ig = getelementptr inbounds nuw [40 x i8], ptr %i.if, i64 %.val53.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.if, ptr %i.ih, align 8, !noalias !142784
  %.sroa.8145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.ig, ptr %.sroa.8145.0..sroa_idx.i, align 8, !noalias !142784
  store ptr %i.ia, ptr %i.fz, align 8, !noalias !142784
  store i64 %.val53.i, ptr %i.fx, align 8, !noalias !142784
  %.sroa.11148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 0, ptr %.sroa.11148.0..sroa_idx.i, align 8, !noalias !142784
  br label %bb.dk

bb.dk:                                            ; preds = %bb.du, %bb.dj
  %i.ii = phi ptr [ %i.jc, %bb.du ], [ %i.fv, %bb.dj ] ; 5 uses
  %i.ij = phi ptr [ %i.jd, %bb.du ], [ %i.fw, %bb.dj ] ; 5 uses
  %i.ik = phi ptr [ %.pre224.i, %bb.du ], [ %i.ig, %bb.dj ] ; 3 uses
  %i.il = phi ptr [ %.pre222.i, %bb.du ], [ %i.if, %bb.dj ] ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142860)
  call void @llvm.experimental.noalias.scope.decl(metadata !142861)
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ip = icmp eq ptr %i.il, %i.ik
  br i1 %i.ip, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.dk
  store i64 -1, ptr %i.in, align 8, !alias.scope !142860, !noalias !142784
  br label %bb.dv

.body82.i:                                        ; preds = %bb.et, %bb.el, %bb.eg, %bb.ea, %bb.dr
  %i.iq = phi ptr [ %i.ii, %bb.eg ], [ %i.ii, %bb.el ], [ %i.jc, %bb.et ], [ %i.jc, %bb.dr ], [ %i.ii, %bb.ea ] ; 3 uses
  %i.ir = phi ptr [ %i.ij, %bb.eg ], [ %i.ij, %bb.el ], [ %i.jd, %bb.et ], [ %i.jd, %bb.dr ], [ %i.ij, %bb.ea ] ; 3 uses
  %.pn41.pn.i = phi { ptr, i32 } [ %i.le, %bb.eg ], [ %i.lt, %bb.el ], [ %i.mr, %bb.et ], [ %.pn38.i, %bb.dr ], [ %i.ka, %bb.ea ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 354
  %i.it = load i8, ptr %i.is, align 2, !range !434, !noalias !142784, !noundef !422
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.fb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterECsfR8GmIBoxTX_21lance_namespace_impls.exit93.i

bb.dl:                                            ; preds = %_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorENtNtNtB7_3ops9try_trait3Try6branchCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !142856
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ez, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i, %bb.dl
  %i.iv = phi ptr [ %i.jc, %bb.ez ], [ %i.jc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i ], [ %i.fv, %bb.dl ]
  %i.iw = phi ptr [ %i.jd, %bb.ez ], [ %i.jd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i ], [ %i.fw, %bb.dl ]
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 0, ptr %i.ix, align 2, !noalias !142784
  br label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion5spill17AsyncStreamWriterECsfR8GmIBoxTX_21lance_namespace_impls.exit93.i: ; preds = %bb.fc, %bb.fb, %bb.fa, %.body82.i, %.body71.i
  %i.iy = phi ptr [ %i.iq, %bb.fb ], [ %i.nr, %bb.fa ], [ %i.iq, %.body82.i ], [ %i.iq, %bb.fc ], [ %i.dx, %.body71.i ]
  %i.iz = phi ptr [ %i.ir, %bb.fb ], [ %i.ns, %bb.fa ], [ %i.ir, %.body82.i ], [ %i.ir, %bb.fc ], [ %i.dy, %.body71.i ]
  %.pn44.pn.i = phi { ptr, i32 } [ %.pn41.pn.i, %bb.fb ], [ %i.nt, %bb.fa ], [ %.pn41.pn.i, %.body82.i ], [ %.pn41.pn.i, %bb.fc ], [ %eh.lpad-body72.i, %.body71.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 0, ptr %i.ja, align 2, !noalias !142784
  br label %bb.k

bb.dm:                                            ; preds = %bb.dn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !142784
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter5write0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.je) #73
          to label %bb.dr unwind label %bb.al, !noalias !142786

bb.dn:                                            ; preds = %bb.f, %bb.em
  %i.jc = phi ptr [ %i.ax, %bb.f ], [ %i.ii, %bb.em ] ; 7 uses
  %i.jd = phi ptr [ %i.aw, %bb.f ], [ %i.ij, %bb.em ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !142784
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  invoke fastcc void @_RNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtB7_17AsyncStreamWriter5write0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.al, ptr noundef nonnull align 8 %i.je, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.do unwind label %bb.dm, !noalias !142786

bb.do:                                            ; preds = %bb.dn
  %i.jf = load i64, ptr %i.al, align 8, !range !555, !noalias !142784, !noundef !422 ; 3 uses
  %i.jg = icmp eq i64 %i.jf, -2
  br i1 %i.jg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !142784
  br label %.thread

bb.dq:                                            ; preds = %bb.do
  %.sroa.3164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3164.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3164.0..sroa_idx.i, i64 24, i1 false), !noalias !142784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !142784
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs9_NtCsc85D0lJ81Z_16lance_datafusion5spillNtBJ_17AsyncStreamWriter5write0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.je)
          to label %bb.ds unwind label %bb.en, !noalias !142786

bb.dr:                                            ; preds = %bb.en, %bb.dm
  %.pn38.i = phi { ptr, i32 } [ %i.lw, %bb.en ], [ %i.jb, %bb.dm ]
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 376
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %i.jh) #73
          to label %.body82.i unwind label %bb.al, !noalias !142786

bb.ds:                                            ; preds = %bb.dq
  %.not.i78.i = icmp eq i64 %i.jf, -1
  br i1 %.not.i78.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !142862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5166.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3164.i, i64 24, i1 false), !noalias !142784
  store i64 %i.jf, ptr %i.q, align 8, !noalias !142863
  invoke void @_RNvXs2_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.eo unwind label %bb.en, !noalias !142864

bb.du:                                            ; preds = %bb.ds
  %.phi.trans.insert221.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.pre222.i = load ptr, ptr %.phi.trans.insert221.i, align 8, !alias.scope !142861, !noalias !142784
  %.phi.trans.insert223.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.pre224.i = load ptr, ptr %.phi.trans.insert223.i, align 8, !alias.scope !142861, !noalias !142784
  br label %bb.dk

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.dk
  %i.ji = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  store ptr %i.ji, ptr %i.im, align 8, !alias.scope !142861, !noalias !142784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.in, ptr noundef nonnull align 8 dereferenceable(40) %i.il, i64 40, i1 false), !noalias !142865
  %.pr.i = load i64, ptr %i.in, align 8, !noalias !142784
  %.not23.i = icmp eq i64 %.pr.i, -1
  br i1 %.not23.i, label %bb.dv, label %bb.em

bb.dv:                                            ; preds = %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.jj = phi ptr [ %i.il, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.ji, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142866)
  call void @llvm.experimental.noalias.scope.decl(metadata !142867)
  store ptr inttoptr (i64 8 to ptr), ptr %i.im, align 8, !alias.scope !142868, !noalias !142784
  store ptr inttoptr (i64 8 to ptr), ptr %i.io, align 8, !alias.scope !142868, !noalias !142784
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !142868, !noalias !142784, !nonnull !422, !noundef !422 ; 4 uses
  %i.jm = icmp eq ptr %i.ik, %i.jj
  br i1 %i.jm, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.jo = load i64, ptr %i.jn, align 8, !alias.scope !142868, !noalias !142784, !noundef !422 ; 3 uses
  %.not.i.i.i.i81.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i81.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !142869, !noundef !422 ; 4 uses
  %i.jr = icmp ult i64 %i.jq, 230584300921369396
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !142868, !noalias !142784, !noundef !422 ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i64 %i.jt, %i.jq
  br i1 %.not3.i.i.i.i.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  %i.ju = add i64 %i.jq, %i.jo
  store i64 %i.ju, ptr %i.jp, align 8, !noalias !142869
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.dz:                                            ; preds = %bb.dx
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !142869, !nonnull !422, !noundef !422 ; 2 uses
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jw, i64 %i.jt
  %i.jy = getelementptr inbounds nuw [40 x i8], ptr %i.jw, i64 %i.jq
  %i.jz = mul i64 %i.jo, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jy, ptr nonnull align 8 %i.jx, i64 %i.jz, i1 false), !noalias !142869
  br label %bb.dy

bb.ea:                                            ; preds = %bb.eb
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtBO_5alloc6GlobalEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull align 8 dereferenceable(40) %i.im) #73, !noalias !142786
  br label %.body82.i

bb.eb:                                            ; preds = %bb.dv
  %i.kb = ptrtoint ptr %i.ik to i64
  %i.kc = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.kd = sub nuw i64 %i.kb, %i.kc
  %i.ke = udiv exact i64 %i.kd, 40
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !142869, !nonnull !422, !noundef !422 ; 2 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub nuw i64 %i.kc, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ki
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.kj, i64 noundef %i.ke)
          to label %bb.ec unwind label %bb.ea, !noalias !142869

bb.ec:                                            ; preds = %bb.eb
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !142868, !noalias !142784, !noundef !422 ; 3 uses
  %.not.i.i5.i.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not.i.i5.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.km = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !noalias !142869, !noundef !422 ; 4 uses
  %i.ko = icmp ult i64 %i.kn, 230584300921369396
  call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !142868, !noalias !142784, !noundef !422 ; 2 uses
  %.not3.i.i6.i.i.i = icmp eq i64 %i.kq, %i.kn
  br i1 %.not3.i.i6.i.i.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %i.kr = add i64 %i.kn, %i.kl
  store i64 %i.kr, ptr %i.km, align 8, !noalias !142869
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ef:                                            ; preds = %bb.ed
  %i.ks = load ptr, ptr %i.kf, align 8, !noalias !142869, !nonnull !422, !noundef !422 ; 2 uses
  %i.kt = getelementptr inbounds nuw [40 x i8], ptr %i.ks, i64 %i.kq
  %i.ku = getelementptr inbounds nuw [40 x i8], ptr %i.ks, i64 %i.kn
  %i.kv = mul i64 %i.kl, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ku, ptr nonnull align 8 %i.kt, i64 %i.kv, i1 false), !noalias !142869
  br label %bb.ee

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ee, %bb.ec, %bb.dy, %bb.dw
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 354 ; 2 uses
  store i8 0, ptr %i.kw, align 2, !noalias !142784
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !142784, !nonnull !422, !noundef !422 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.la = load i64, ptr %i.kz, align 8, !noalias !142784, !noundef !422 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !142784, !nonnull !422, !align !423, !noundef !422
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsc85D0lJ81Z_16lance_datafusion5spill10SpillStateECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(80) %i.ld)
          to label %bb.eh unwind label %bb.eg, !noalias !142786

bb.eg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %i.lb, align 8, !noalias !142784, !nonnull !422, !align !423, !noundef !422 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store i64 -9223372036854775808, ptr %i.lg, align 8, !noalias !142786
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  store ptr %i.ky, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !142786
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  store i64 %i.la, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !142786
  br label %.body82.i

bb.eh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.lh = load ptr, ptr %i.lb, align 8, !noalias !142784, !nonnull !422, !align !423, !noundef !422 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store i64 -9223372036854775808, ptr %i.li, align 8, !noalias !142786
  %.sroa.67.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  store ptr %i.ky, ptr %.sroa.67.0..sroa_idx8.i, align 8, !noalias !142786
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  store i64 %i.la, ptr %.sroa.7.0..sroa_idx10.i, align 8, !noalias !142786
  %i.lj = load ptr, ptr %i.lb, align 8, !noalias !142784, !nonnull !422, !align !423, !noundef !422 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load i64, ptr %i.lk, align 8, !range !494, !noalias !142786, !noundef !422
  %i.lm = icmp eq i64 %i.ll, -9223372036854775808
  br i1 %i.lm, label %bb.ei, label %bb.ej, !prof !445

bb.ei:                                            ; preds = %bb.eh
  store i8 0, ptr %i.kw, align 2, !noalias !142784
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2151) #72
          to label %bb.am unwind label %bb.el, !noalias !142786

bb.ek:                                            ; preds = %bb.ei, %bb.g
  %i.ln = phi ptr [ %i.ii, %bb.ei ], [ %i.ay, %bb.g ]
  %i.lo = phi ptr [ %i.ij, %bb.ei ], [ %i.az, %bb.g ]
  %.pn24.i = phi ptr [ %i.lj, %bb.ei ], [ %i.be, %bb.g ] ; 2 uses
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 32
  %.sroa.11.0.i = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %.sroa.11.0.i, ptr %i.lp, align 8, !noalias !142784
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 353
  store i8 0, ptr %i.lq, align 1, !noalias !142784
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ls, ptr noundef nonnull align 8 dereferenceable(40) %i.lr, i64 40, i1 false), !noalias !142784
  %.sroa.8177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %.sroa.04.0.i, ptr %.sroa.8177.0..sroa_idx.i, align 8, !noalias !142784
  %.sroa.10179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.10179.0..sroa_idx.i, align 8, !noalias !142784
  br label %bb.fe

bb.el:                                            ; preds = %bb.ej
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i

bb.em:                                            ; preds = %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lv, ptr noundef nonnull align 8 dereferenceable(40) %i.il, i64 40, i1 false), !noalias !142786
  %.sroa.8159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  store ptr %i.lu, ptr %.sroa.8159.0..sroa_idx.i, align 8, !noalias !142784
  %.sroa.10161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i8 0, ptr %.sroa.10161.0..sroa_idx.i, align 8, !noalias !142784
  br label %bb.dn

bb.en:                                            ; preds = %bb.dq, %bb.dt
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.eo:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !142862
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142870)
  call void @llvm.experimental.noalias.scope.decl(metadata !142871)
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !142872, !noalias !142784, !nonnull !422, !noundef !422 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !alias.scope !142872, !noalias !142784, !nonnull !422, !noundef !422 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.lx, align 8, !alias.scope !142872, !noalias !142784
  store ptr inttoptr (i64 8 to ptr), ptr %i.lz, align 8, !alias.scope !142872, !noalias !142784
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !142872, !noalias !142784, !nonnull !422, !noundef !422 ; 4 uses
  %i.md = icmp eq ptr %i.ma, %i.ly
  br i1 %i.md, label %bb.ep, label %bb.eu

bb.ep:                                            ; preds = %bb.eo
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !142872, !noalias !142784, !noundef !422 ; 3 uses
  %.not.i.i.i.i86.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i.i.i86.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !142873, !noundef !422 ; 4 uses
  %i.mi = icmp ult i64 %i.mh, 230584300921369396
  call void @llvm.assume(i1 %i.mi)
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 400
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtNtB9_6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB9_4iter4IterINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments00EEINtNtNtBb_6future5ready5ReadybENCB4c_s_0ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 %.sroa.14192.2.copyload.i.i.i.i.i.i, ptr %.sroa.549.0..sroa_idx50.i.i.i.i.i.i.i.i, align 8, !noalias !231654
  %.sroa.6.0..sroa_idx52.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 464
  store i64 %.sroa.15.2.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx52.i.i.i.i.i.i.i.i, align 8, !noalias !231654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.329.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.832.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.nd, label %bb.dq, label %.loopexit.i.i.i.i

bb.do:                                            ; preds = %.body.i70.i.i.i.i.i.i.i
  %i.pc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231650
  unreachable

bb.dp:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.329.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.832.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.nd, label %bb.dq, label %.loopexit.i.i.i.i

bb.dq:                                            ; preds = %bb.dp, %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBK_6either6EitherINtNtBK_5ready5ReadyINtNtB7_6result6ResultINtNtB7_6option6OptionjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s_0EEE3setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.pd = phi i64 [ %i.ne, %bb.dp ], [ 2, %_RNvMs5_NtCscI6d9CVNmLh_4core3pinINtB5_3PinQINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBK_6either6EitherINtNtBK_5ready5ReadyINtNtB7_6result6ResultINtNtB7_6option6OptionjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s_0EEE3setCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  %i.pe = load i64, ptr %i.lz, align 8, !range !490, !noalias !231657, !noundef !422
  %i.pf = icmp eq i64 %i.pe, 2
  br i1 %i.pf, label %bb.dr, label %.invoke.i.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !231617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ac, ptr noundef nonnull align 8 dereferenceable(400) %i.lz, i64 400, i1 false), !noalias !231657
  store i64 3, ptr %i.lz, align 8, !noalias !231657
  %i.pg = load i64, ptr %i.ac, align 8, !range !490, !noalias !231617, !noundef !422 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, 2
  br i1 %i.ph, label %bb.dx, label %bb.ds, !prof !445

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3448) #72
          to label %bb.du unwind label %bb.dt, !noalias !231658

bb.dt:                                            ; preds = %bb.ds
  %i.pi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pj = icmp samesign ult i64 %i.pg, 2
  br i1 %i.pj, label %bb.dv, label %.body.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  unreachable

bb.dv:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ac)
          to label %.body.i.i.i.i.i.i unwind label %bb.dw, !noalias !231658

bb.dw:                                            ; preds = %bb.dv
  %i.pk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231658
  unreachable

bb.dx:                                            ; preds = %bb.dr
  %i.pl = load i64, ptr %i.bo, align 8, !noalias !231617, !noundef !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !231617
  %i.pm = icmp eq i64 %i.pd, 2
  br i1 %i.pm, label %bb.dy, label %.invoke.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !231617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1720) %i.ab, ptr noundef nonnull align 8 dereferenceable(1720) %i.ma, i64 1720, i1 false), !noalias !231657
  store i64 3, ptr %i.ma, align 8, !noalias !231657
  %i.pn = load i64, ptr %i.ab, align 8, !range !490, !noalias !231617, !noundef !422
  %i.po = icmp eq i64 %i.pn, 2
  br i1 %i.po, label %bb.ed, label %bb.dz, !prof !445

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3448) #72
          to label %bb.ea unwind label %bb.eb, !noalias !231658

bb.ea:                                            ; preds = %bb.dz
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherINtNtBG_5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option6OptionjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s_0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ab) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.ec, !noalias !231658

bb.ec:                                            ; preds = %bb.eb
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231658
  unreachable

bb.ed:                                            ; preds = %bb.dy
  %i.pr = load i64, ptr %i.bp, align 8, !noalias !231617
  %i.ps = load i64, ptr %i.bq, align 8, !range !448, !noalias !231617, !noundef !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !231617
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i:                              ; preds = %bb.dx, %bb.dq
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3688) #72
          to label %.cont.i.i.i.i.i.i unwind label %bb.bh, !noalias !231658

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.db
  store i64 3, ptr %i.ma, align 8, !noalias !231651
  %.sroa.878.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx2.i67.i.i.i.i.i.i.i, align 1, !noalias !231659 ; 2 uses
  %.sroa.12191.sroa.0.0.copyload.i.i.i.i.i.i = load i48, ptr %.sroa.979.0..sroa_idx.i.i.i.i.i.i.i, align 2, !noalias !231635 ; 2 uses
  %.sroa.16.2.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx8.i.i.i.i.i.i.i.i, align 8, !noalias !231635 ; 2 uses
  %i.pt = load <2 x i64>, ptr %.sroa.17.2..sroa.979.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !231635 ; 2 uses
  %.sroa.17.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.17.sroa.8.0..sroa.17.2..sroa.979.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !231635 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !231643
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.329.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.832.i.i.i.i.i.i.i.i.i.i.i)
  %.pre603.i.i.i.i.i.i = load i64, ptr %i.lz, align 8, !range !490, !noalias !231612
  %i.pu = icmp samesign ult i64 %.pre603.i.i.i.i.i.i, 2
  br i1 %i.pu, label %bb.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.lz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i unwind label %bb.ef, !noalias !231613

bb.ef:                                            ; preds = %bb.ee
  %i.pv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherINtNtBG_5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option6OptionjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s_0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ma) #73
          to label %.body61.i.i.i.i.i.i unwind label %bb.el, !noalias !231613

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.ee, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.ed, %bb.cg
  %.sroa.0189.0673.i.i.i.i.i.i = phi i8 [ %.sroa.077.0.copyload.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.077.0.copyload.i.i.i.i.i.i.i, %bb.ee ], [ -1, %bb.ed ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.10190.0672.i.i.i.i.i.i = phi i8 [ %.sroa.878.0.copyload.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.878.0.copyload.i.i.i.i.i.i.i, %bb.ee ], [ undef, %bb.ed ], [ %.sroa.8.0.copyload.i.i.i.i.i.i.i, %bb.cg ]
  %.sroa.14192.0671.i.i.i.i.i.i = phi i64 [ %.sroa.14192.2.copyload.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.14192.2.copyload.i.i.i.i.i.i, %bb.ee ], [ %i.pl, %bb.ed ], [ %.sroa.33.0.copyload.i.i.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.15.0670.i.i.i.i.i.i = phi i64 [ %.sroa.15.2.copyload.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.15.2.copyload.i.i.i.i.i.i, %bb.ee ], [ %i.ps, %bb.ed ], [ %.sroa.15.2.copyload194.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.16.0669.i.i.i.i.i.i = phi i64 [ %.sroa.16.2.copyload.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.16.2.copyload.i.i.i.i.i.i, %bb.ee ], [ %i.pr, %bb.ed ], [ %.sroa.16.2.copyload195.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %.sroa.12191.sroa.0.0668.i.i.i.i.i.i = phi i48 [ %.sroa.12191.sroa.0.0.copyload.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.12191.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ee ], [ undef, %bb.ed ], [ %.sroa.12191.sroa.0.0.copyload335.i.i.i.i.i.i, %bb.cg ]
  %.sroa.17.sroa.8.0667.i.i.i.i.i.i = phi i64 [ %.sroa.17.sroa.8.0.copyload.i.i.i.i.i.i, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %.sroa.17.sroa.8.0.copyload.i.i.i.i.i.i, %bb.ee ], [ undef, %bb.ed ], [ %.sroa.17.sroa.8.0.copyload328.i.i.i.i.i.i, %bb.cg ]
  %i.pw = phi <2 x i64> [ %i.pt, %_RNvXs0_NtNtCs9p5Dg9WVwvP_12futures_util6future8try_joinINtB5_7TryJoinINtNtB7_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtB7_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB16_IB2x_IB2R_INtNtB2V_6option6OptionjEB3t_EENCB1t_s_0EENtNtNtB2V_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.pt, %bb.ee ], [ undef, %bb.ed ], [ %i.nc, %bb.cg ]
  %i.px = load i64, ptr %i.ma, align 8, !range !490, !noalias !231612, !noundef !422 ; 2 uses
  %i.py = icmp samesign ult i64 %i.px, 2
  br i1 %i.py, label %bb.eg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.eg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.pz = icmp eq i64 %i.px, 0
  br i1 %i.pz, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 456 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 8, !range !428, !alias.scope !231660, !noalias !231612, !noundef !422
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i8 %i.qb, -3
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.qa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.em, !noalias !231613

bb.ej:                                            ; preds = %bb.eg
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 2160
  %i.qd = load i8, ptr %i.qc, align 8, !range !487, !noalias !231612, !noundef !422
  %cond.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.qd, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i, label %bb.ek, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 480
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCshkPeWWG1flk_5lance2io8deletion26read_dataset_deletion_file0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.qe)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.em, !noalias !231613

bb.el:                                            ; preds = %bb.ef
  %i.qf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231613
  unreachable

bb.em:                                            ; preds = %bb.ek, %bb.ei
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0189.0673.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.en, label %.loopexit97.i.i.i.i

bb.en:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  store i64 %.sroa.14192.0671.i.i.i.i.i.i, ptr %i.lz, align 8, !noalias !231612
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 168
  store i64 %.sroa.15.0670.i.i.i.i.i.i, ptr %i.qh, align 8, !noalias !231612
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 176
  store i64 %.sroa.16.0669.i.i.i.i.i.i, ptr %i.qi, align 8, !noalias !231612
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !231612, !nonnull !422, !align !423, !noundef !422 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 56
  %i.qm = getelementptr i8, ptr %i.qk, i64 72
  %.val.i.i.i14.i.i.i = load ptr, ptr %i.qm, align 8, !noalias !231613, !nonnull !422, !noundef !422
  %i.qn = getelementptr i8, ptr %i.qk, i64 80
  %.val39.i.i.i.i.i.i = load i64, ptr %i.qn, align 8, !noalias !231613, !noundef !422
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8DataFileENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ql, ptr nonnull %.val.i.i.i14.i.i.i, i64 %.val39.i.i.i.i.i.i)
          to label %bb.eo unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !231613

bb.eo:                                            ; preds = %bb.en
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 40
  store i8 1, ptr %i.qo, align 8, !noalias !231612
  %i.qp = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 64
  %.val43.i.i.i.i.i.i = load ptr, ptr %i.qp, align 8, !noalias !231612, !nonnull !422, !noundef !422
  %i.qq = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i, i64 72
  %.val44.i.i.i.i.i.i = load i64, ptr %i.qq, align 8, !noalias !231612, !noundef !422 ; 8 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !231612, !nonnull !422, !align !423, !noundef !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !231661
  %i.qt = mul i64 %.val44.i.i.i.i.i.i, 1448       ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val44.i.i.i.i.i.i, 6369732069651088
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er, label %bb.ep, !prof !447

bb.ep:                                            ; preds = %bb.eo
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !231662
  %i.qv = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.qt, i64 noundef range(i64 1, 17) 8) #68, !noalias !231662 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %bb.er, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eq, %bb.eo
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.eq ], [ 0, %bb.eo ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qt) #72
          to label %.noexc64.i.i.i.i.i.i unwind label %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231663

.noexc64.i.i.i.i.i.i:                             ; preds = %bb.er
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ep ], [ %i.qv, %bb.eq ] ; 13 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ep ], [ %.val44.i.i.i.i.i.i, %bb.eq ] ; 6 uses
  %i.qx = icmp samesign ule i64 %.val44.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.qx)
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !noalias !231661
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !231661
  %i.qy = icmp eq i64 %.val44.i.i.i.i.i.i, 0
  br i1 %i.qy, label %.thread358.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.thread358.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !231661
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !231664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !231665
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ev
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rh, %bb.ev ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBJ_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB1X_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [80 x i8], ptr %.val43.i.i.i.i.i.i, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.rb = invoke noundef i64 @_RNvMs5_NtCsjjbR6Jfsbqw_8lance_io5utilsNtB5_14CachedFileSize3get(ptr noundef nonnull align 8 %i.ra)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i, !noalias !231666 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rc = load ptr, ptr %i.qs, align 8, !noalias !231666, !nonnull !422, !noundef !422 ; 2 uses
  %i.rd = atomicrmw add ptr %i.rc, i64 1 monotonic, align 8, !noalias !231666
  %i.re = icmp slt i64 %i.rd, 0
  br i1 %i.re, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rf = ptrtoint ptr %i.qz to i64
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  call void @llvm.trap()
  unreachable

bb.ev:                                            ; preds = %bb.et, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rc, %bb.et ], [ inttoptr (i64 255 to ptr), %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rf, %bb.et ], [ %i.rb, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.et ], [ 0, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.rg = getelementptr inbounds nuw [1448 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rg, align 8, !noalias !231667
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231667
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231667
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 25
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !231667
  %i.rh = add nuw nsw i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ri = icmp eq i64 %i.rh, %.val44.i.i.i.i.i.i
  br i1 %i.ri, label %bb.ex, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rj = landingpad { ptr, i32 }
          cleanup
  %i.rk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rk, align 8, !noalias !231668
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtB1d_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.aa) #73
          to label %.body65.i.i.i.i.i.i unwind label %bb.ew, !noalias !231663

bb.ew:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231663
  unreachable

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !231661
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i.i.i.i.i.i.i)
  %i.rm = icmp samesign ult i64 %.val44.i.i.i.i.i.i, 31
  br i1 %i.rm, label %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !231669
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !noalias !231669
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx42.i.i.i.i.i.i.i, align 8, !noalias !231669
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx45.i.i.i.i.i.i.i, align 8, !noalias !231669
  store ptr %3, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !231669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !231670
  store i64 1, ptr %i.y, align 8, !noalias !231670
  store i64 1, ptr %i.bs, align 8, !noalias !231670
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 -1, i64 16, i1 false), !noalias !231670
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, i8 0, i64 32, i1 false), !noalias !231670
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !231670
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !231670
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !231671
  %i.rn = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1520, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231671 ; 4 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.ez, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtNtNtB19_6future10try_future11into_future10IntoFutureINtNtB2W_6either6EitherINtNtB2W_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4x_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, !prof !454

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.fa, !noalias !231671

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ez
  unreachable

bb.fa:                                            ; preds = %bb.ez
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureINtNtB3a_6either6EitherINtNtB3a_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(1520) %i.y) #73
          to label %bb.fz unwind label %bb.fb, !noalias !231672

bb.fb:                                            ; preds = %bb.fa
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231672
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtNtNtB19_6future10try_future11into_future10IntoFutureINtNtB2W_6either6EitherINtNtB2W_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4x_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %i.rn, ptr noundef nonnull align 8 dereferenceable(1520) %i.y, i64 1520, i1 false), !noalias !231672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !231670
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16 ; 2 uses
  %i.rs = ptrtoint ptr %i.rr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !231670
  store i64 1, ptr %i.x, align 8, !noalias !231670
  store i64 1, ptr %i.bu, align 8, !noalias !231670
  store ptr %i.rn, ptr %i.bv, align 8, !noalias !231670
  store ptr null, ptr %.sroa.4.0..sroa_idx10.i.i.i.i.i.i.i.i.i, align 8, !noalias !231670
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx10.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !231670
  store i64 %i.rs, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !231670
  store ptr %i.rr, ptr %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !231670
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !231673
  %i.rt = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231673 ; 4 uses
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %bb.fc, label %bb.ff, !prof !454

bb.fc:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtNtNtB19_6future10try_future11into_future10IntoFutureINtNtB2W_6either6EitherINtNtB2W_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4x_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #72
          to label %.noexc24.i.i.i.i.i.i.i.i.i unwind label %bb.fd, !noalias !231673

.noexc24.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fc
  %i.rv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureINtNtB3B_6either6EitherINtNtB3B_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.x) #73
          to label %bb.fz unwind label %bb.fe, !noalias !231672

bb.fe:                                            ; preds = %bb.fd
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231672
  unreachable

bb.ff:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB17_15futures_ordered12OrderWrapperINtNtNtNtB19_6future10try_future11into_future10IntoFutureINtNtB2W_6either6EitherINtNtB2W_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4x_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEE3newCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.rt, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false), !noalias !231672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !231670
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !231674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !231675
  call void @llvm.experimental.noalias.scope.decl(metadata !231676)
  %i.rx = load ptr, ptr %i.bw, align 8, !alias.scope !231676, !noalias !231674, !nonnull !422, !noundef !422 ; 2 uses
  %i.ry = load ptr, ptr %i.bx, align 8, !alias.scope !231676, !noalias !231674, !nonnull !422, !noundef !422 ; 2 uses
  %.not.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ry, %i.rx
  br i1 %.not.not5.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ff, %bb.fw
  %.sroa.13.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.13.0.copyload55.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ]
  %.sroa.12.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.0.copyload51.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ] ; 2 uses
  %.sroa.1043.0.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.1043.0.copyload45.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ]
  %.sroa.938.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.938.0.copyload40.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ]
  %.sroa.833.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.833.0.copyload35.i.i.i.i.i.i.i.i, %bb.fw ], [ %i.rt, %bb.ff ] ; 4 uses
  %.sroa.728.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.728.0.copyload30.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ]
  %.sroa.623.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.623.0.copyload25.i.i.i.i.i.i.i.i, %bb.fw ], [ inttoptr (i64 8 to ptr), %bb.ff ]
  %.sroa.020.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.020.0.copyload21.i.i.i.i.i.i.i.i, %bb.fw ], [ 0, %bb.ff ]
  %i.rz = phi ptr [ %i.tr, %bb.fw ], [ %i.rx, %bb.ff ]
  %i.sa = phi ptr [ %i.sb, %bb.fw ], [ %i.ry, %bb.ff ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1448 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !231677
  store i64 %.sroa.020.0.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !231678
  store ptr %.sroa.623.0.i.i.i.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678
  store i64 %.sroa.728.0.i.i.i.i.i.i.i.i, ptr %.sroa.728.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678
  store ptr %.sroa.833.0.i.i.i.i.i.i.i.i, ptr %i.ca, align 8, !noalias !231678
  store i64 %.sroa.938.0.i.i.i.i.i.i.i.i, ptr %i.ce, align 8, !noalias !231678
  store i8 %.sroa.1043.0.i.i.i.i.i.i.i.i, ptr %i.cd, align 8, !noalias !231678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !231678
  store i64 %.sroa.13.0.i.i.i.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.by, ptr noundef nonnull align 8 dereferenceable(1448) %i.sa, i64 1448, i1 false), !noalias !231679
  call void @llvm.experimental.noalias.scope.decl(metadata !231680)
  %i.sc = add i64 %.sroa.12.0.i.i.i.i.i.i.i.i, 1
  store i64 %i.sc, ptr %i.bz, align 8, !alias.scope !231680, !noalias !231677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !231681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.u, ptr noundef nonnull align 8 dereferenceable(1448) %i.sa, i64 1448, i1 false), !noalias !231679
  store i64 %.sroa.12.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231682
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.833.0.i.i.i.i.i.i.i.i, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !noalias !231683, !nonnull !422, !noundef !422
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.833.0.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sink.split

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sink.split: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.fg
  %i.sg = load atomic i64, ptr %i.sf monotonic, align 8, !noalias !231684
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sink.split, %bb.fj
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fj ], [ %i.sg, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sink.split ] ; 4 uses
  %i.sh = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.sh, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !231684
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sink.split

bb.fh:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.si = icmp sgt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.si, label %bb.fj, label %bb.fi, !prof !445

bb.fi:                                            ; preds = %bb.fh
  store ptr %i.sb, ptr %i.bx, align 8, !alias.scope !231676, !noalias !231674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !231685
  store ptr @3489, ptr %i.s, align 8, !noalias !231685
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231685
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3491) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.fk, !noalias !231684

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.fi
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.sj = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.sk = cmpxchg weak ptr %i.sf, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.sj acquire monotonic, align 8, !noalias !231684 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.sk, 1
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.sk, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureINtNtB32_6either6EitherINtNtB32_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4C_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEE9downgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.sl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sm = load i64, ptr %i.u, align 8, !range !443, !noalias !231681, !noundef !422
  %i.sn = icmp eq i64 %i.sm, -1
  br i1 %i.sn, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBG_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.u)
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ft, !noalias !231683

_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureINtNtB32_6either6EitherINtNtB32_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4C_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEE9downgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fj
  %i.so = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sp = ptrtoint ptr %i.so to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !231681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1456) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1456) %i.u, i64 1456, i1 false), !noalias !231681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !231681
  store i64 1, ptr %i.t, align 8, !noalias !231681
  store i64 1, ptr %i.cb, align 8, !noalias !231681
  store ptr %.sroa.833.0.i.i.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !231681
  store i64 %i.sp, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !231681
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231681
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !231681
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !231686
  %i.sq = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1520, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231686 ; 8 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %bb.fm, label %bb.fp, !prof !454

bb.fm:                                            ; preds = %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureINtNtB32_6either6EitherINtNtB32_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4C_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEE9downgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.sb, ptr %i.bx, align 8, !alias.scope !231676, !noalias !231674
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #72
          to label %.noexc13.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.fn, !noalias !231686

.noexc13.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.fm
  unreachable

bb.fn:                                            ; preds = %bb.fm
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureINtNtB3a_6either6EitherINtNtB3a_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(1520) %i.t) #73
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.fo, !noalias !231683

bb.fo:                                            ; preds = %bb.fn
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231683
  unreachable

bb.fp:                                            ; preds = %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureINtNtB32_6either6EitherINtNtB32_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB4C_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEE9downgradeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %i.sq, ptr noundef nonnull align 8 dereferenceable(1520) %i.t, i64 1520, i1 false), !noalias !231683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !231681
  store atomic i8 0, ptr %i.cd monotonic, align 8, !alias.scope !231680, !noalias !231687
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 4 uses
  %i.sv = atomicrmw xchg ptr %i.ce, ptr %i.su acq_rel, align 8, !alias.scope !231680, !noalias !231687 ; 5 uses
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.sx = load ptr, ptr %i.ca, align 8, !alias.scope !231680, !noalias !231687, !nonnull !422, !noundef !422
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !231683, !nonnull !422, !noundef !422
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 1464
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %bb.fq
  %i.tc = load atomic ptr, ptr %i.tb acquire, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tc, %i.ta
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fr, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 1480
  %i.te = load i64, ptr %i.td, align 8, !noundef !422
  %i.tf = add i64 %i.te, 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 1496
  store i64 %i.tf, ptr %i.tg, align 8, !noalias !231683
  %i.th = getelementptr inbounds nuw i8, ptr %i.sq, i64 1480
  store atomic ptr %i.sv, ptr %i.th release, align 8, !noalias !231683
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sv, i64 1472
  store ptr %i.su, ptr %i.ti, align 8
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !231676, !noalias !231674
  br label %bb.fw

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.fp
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sq, i64 1496
  store i64 1, ptr %i.tj, align 8, !noalias !231683
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sq, i64 1480
  store atomic ptr null, ptr %i.tk release, align 8, !noalias !231683
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fl
  %i.tl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231683
  unreachable

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.fn, %bb.fl, %bb.fk
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.sl, %bb.fl ], [ %i.ss, %bb.fn ], [ %i.sl, %bb.fk ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtB1V_6either6EitherINtNtB1V_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.v) #73
          to label %.critedge.i.i.i.i.i.i.i.i.i.i unwind label %bb.fu, !noalias !231688

bb.fu:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231688
  unreachable

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.fw, %bb.ff
  %.sroa.13.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %.sroa.13.0.copyload55.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.12.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %.sroa.12.0.copyload51.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.1043.1.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ff ], [ %.sroa.1043.0.copyload45.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.938.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %.sroa.938.0.copyload40.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.833.1.i.i.i.i.i.i.i.i = phi ptr [ %i.rt, %bb.ff ], [ %.sroa.833.0.copyload35.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.728.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %.sroa.728.0.copyload30.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.623.1.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ff ], [ %.sroa.623.0.copyload25.i.i.i.i.i.i.i.i, %bb.fw ]
  %.sroa.020.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %.sroa.020.0.copyload21.i.i.i.i.i.i.i.i, %bb.fw ]
  %i.tn = load i64, ptr %i.cf, align 8, !alias.scope !231676, !noalias !231674, !noundef !422 ; 2 uses
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.gh, label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.tp = load ptr, ptr %i.w, align 8, !alias.scope !231676, !noalias !231674, !nonnull !422, !noundef !422
  %i.tq = mul nuw i64 %i.tn, 1448
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tp, i64 noundef %i.tq, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231679
  br label %bb.gh

bb.fw:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fs
  %i.tr = phi ptr [ %i.rz, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.fs ] ; 2 uses
  %i.ts = load ptr, ptr %i.ca, align 8, !alias.scope !231680, !noalias !231687, !nonnull !422, !noundef !422
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sq, i64 1504
  store atomic ptr null, ptr %i.tt monotonic, align 8, !noalias !231683
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %i.tv = atomicrmw xchg ptr %i.tu, ptr %i.su acq_rel, align 8, !noalias !231683
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1488
  store atomic ptr %i.su, ptr %i.tw release, align 8
  %.sroa.020.0.copyload21.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !231678 ; 2 uses
  %.sroa.623.0.copyload25.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678 ; 2 uses
  %.sroa.728.0.copyload30.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.728.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678 ; 2 uses
  %.sroa.833.0.copyload35.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !231678 ; 2 uses
  %.sroa.938.0.copyload40.i.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !231678 ; 2 uses
  %.sroa.1043.0.copyload45.i.i.i.i.i.i.i.i = load i8, ptr %i.cd, align 8, !noalias !231678 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !231678
  %.sroa.12.0.copyload51.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !231678 ; 2 uses
  %.sroa.13.0.copyload55.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !231678 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !231677
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sb, %i.tr
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i
  %i.tx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231679
  unreachable

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtB1u_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 dereferenceable(32) %i.w) #73
          to label %.body65.i.i.i.i.i.i unwind label %bb.fx, !noalias !231689

bb.fy:                                            ; preds = %bb.fz
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231690
  unreachable

bb.fz:                                            ; preds = %bb.fd, %bb.fa
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rv, %bb.fd ], [ %i.rp, %bb.fa ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtB1u_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z)
          to label %.body65.i.i.i.i.i.i unwind label %bb.fy, !noalias !231691

.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i:       ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !231664
  call void @llvm.experimental.noalias.scope.decl(metadata !231692)
  call void @llvm.experimental.noalias.scope.decl(metadata !231693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !231694
  call void @llvm.experimental.noalias.scope.decl(metadata !231695)
  call void @llvm.experimental.noalias.scope.decl(metadata !231696)
  call void @llvm.experimental.noalias.scope.decl(metadata !231697)
  call void @llvm.experimental.noalias.scope.decl(metadata !231698)
  %4 = add nuw nsw i64 %.val44.i.i.i.i.i.i, 2305843009213693951
  %5 = and i64 %4, 2305843009213693951
  %6 = mul nuw nsw i64 %5, 1448
  %7 = getelementptr i8, ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 %6
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %7, i64 1448
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i, %.thread358.i.i.i.i.i.i
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, %.thread358.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  %i.tz = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ua = ptrtoint ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ub = sub nuw i64 %i.tz, %i.ua                ; 4 uses
  %i.uc = udiv exact i64 %i.ub, 1448              ; 3 uses
  store i64 0, ptr %.sroa.556.0..sroa_idx.i.i.i.i.i.i.i, align 16, !alias.scope !231699, !noalias !231694
  store <2 x ptr> <ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 8 to ptr)>, ptr %i.q, align 16, !alias.scope !231699, !noalias !231694
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.657.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !231699, !noalias !231694
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !alias.scope !231700, !noalias !231664
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cg, align 8, !alias.scope !231700, !noalias !231664
  store i64 %i.uc, ptr %i.ch, align 8, !alias.scope !231700, !noalias !231664
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtB1u_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q)
          to label %.noexc67.i.i.i.i.i.i unwind label %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231701

.noexc67.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !231694
  %i.ud = icmp ugt i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, %i.uc
  br i1 %i.ud, label %bb.ga, label %bb.gg

bb.ga:                                            ; preds = %.noexc67.i.i.i.i.i.i
  %i.ue = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, 1448 ; 2 uses
  %i.uf = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.uf, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.gb

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ga
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ue, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231702
  br label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  %i.ug = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ue, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 8, 0) %i.ub) #68, !noalias !231702 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.gd, label %bb.gg

bb.gc:                                            ; preds = %bb.gd
  %i.ui = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1d_10try_future11into_future10IntoFutureINtNtB1d_6either6EitherINtNtB1d_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r) #73
          to label %.body65.i.i.i.i.i.i unwind label %bb.gf, !noalias !231703

bb.gd:                                            ; preds = %bb.gb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ub) #72
          to label %bb.ge unwind label %bb.gc, !noalias !231704

bb.ge:                                            ; preds = %bb.gd
  unreachable

bb.gf:                                            ; preds = %bb.gc
  %i.uj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !231704
  unreachable

bb.gg:                                            ; preds = %bb.gb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc67.i.i.i.i.i.i
  %.sroa.410.0.copyload.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ug, %bb.gb ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i, %.noexc67.i.i.i.i.i.i ]
  %i.uk = icmp ult i64 %i.ub, -9223372036854774744
  call void @llvm.assume(i1 %i.uk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !231664
  br label %bb.gi

bb.gh:                                            ; preds = %bb.fv, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !231669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !231674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !231669
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.sroa.5.sroa.0.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.gg ], [ %.sroa.833.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.5.sroa.0.sroa.2.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.gg ], [ %.sroa.938.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.5.sroa.0.sroa.3.0.i.i.i.i.i.i.i = phi i8 [ undef, %bb.gg ], [ %.sroa.1043.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.5.sroa.0.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.gg ], [ %.sroa.12.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.5.sroa.0.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.gg ], [ %.sroa.13.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %i.uc, %bb.gg ], [ %.sroa.728.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.3.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %.sroa.623.1.i.i.i.i.i.i.i.i, %bb.gh ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ -1, %bb.gg ], [ %.sroa.020.1.i.i.i.i.i.i.i.i, %bb.gh ] ; 2 uses
  %.sroa.13252.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13252.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !231612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i.i.i.i.i.i.i)
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ul, align 8, !noalias !231612
  %.sroa.8247.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 88
  store ptr %.sroa.3.0.i.i.i.i.i.i.i, ptr %.sroa.8247.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.9248.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 96
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.9248.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.10249.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 104
  store ptr %.sroa.5.sroa.0.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.10249.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.11250.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 112
  store i64 %.sroa.5.sroa.0.sroa.2.0.i.i.i.i.i.i.i, ptr %.sroa.11250.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.12251.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 120
  store i8 %.sroa.5.sroa.0.sroa.3.0.i.i.i.i.i.i.i, ptr %.sroa.12251.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.14253.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 128
  store i64 %.sroa.5.sroa.0.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.14253.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.15254.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 136
  store i64 %.sroa.5.sroa.0.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.15254.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.16255.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 144
  store i64 0, ptr %.sroa.16255.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.17256.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17256.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 160
  store i64 0, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231612
  br label %bb.gp

.body65.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body124.i.i.i.i.i.i, %bb.ki, %bb.kh, %bb.go, %bb.gn, %bb.gj, %bb.gc, %bb.fz, %.critedge.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn29.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rj, %.body.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.fz ], [ %.pn25.i.i.i.i.i.i, %.body124.i.i.i.i.i.i ], [ %i.agm, %bb.kh ], [ %i.agm, %bb.ki ], [ %eh.lpad-body99.i.i.i.i.i.i, %bb.gn ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i ], [ %i.ui, %bb.gc ], [ %eh.lpad-body99.i.i.i.i.i.i, %bb.go ], [ %eh.lpad-body99.i.i.i.i.i.i, %bb.gj ], [ %lpad.loopexit.split-lp3966, %.loopexit.split-lp103.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 40
  %i.un = load i8, ptr %i.um, align 8, !range !434, !noalias !231612, !noundef !422
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.la, label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.la, %.body65.i.i.i.i.i.i
  %.pn33.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn29.pn.pn.i.i.i.i.i.i, %.body65.i.i.i.i.i.i ], [ %.pn29.pn.pn.i.i.i.i.i.i, %bb.la ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 40
  store i8 0, ptr %i.up, align 8, !noalias !231612
  br label %.body61.i.i.i.i.i.i

.loopexit97.i.i.i.i:                              ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.kz
  %.sroa.25.sroa.4.sroa.0.0.in.in.i.i.i.i.i.i = phi i64 [ %.sroa.22.3389.i.i.i.i.i.i, %bb.kz ], [ %.sroa.17.sroa.8.0667.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.13320.0.i.i.i.i.i.i = phi i64 [ %.sroa.16265.3393.i.i.i.i.i.i, %bb.kz ], [ %.sroa.15.0670.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.10319.0.i.i.i.i.i.i = phi i64 [ %.sroa.14262.3394.i.i.i.i.i.i, %bb.kz ], [ %.sroa.14192.0671.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.16321.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %.sroa.18268.3392.i.i.i.i.i.i, %bb.kz ], [ %.sroa.16.0669.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4317.sroa.0.0.i.i.i.i.i.i = phi i8 [ %.sroa.0257.3396.i.i.i.i.i.i, %bb.kz ], [ %.sroa.0189.0673.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.4317.sroa.4.sroa.0.0.i.i.i.i.i.i = phi i8 [ %.sroa.12259.3395.off0.i.i.i.i.i.i, %bb.kz ], [ %.sroa.10190.0672.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.4317.sroa.4.sroa.4.sroa.0.0.i.i.i.i.i.i = phi i48 [ %.sroa.12259.3395.off8.i.i.i.i.i.i, %bb.kz ], [ %.sroa.12191.sroa.0.0668.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %i.uq = phi <2 x i64> [ %i.agi, %bb.kz ], [ %i.pw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future8try_join7TryJoinINtNtBG_6either6EitherNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments0000INtNtBG_5ready5ReadyINtNtB4_6result6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEIB1z_IB30_IB3k_INtNtB4_6option6OptionjEB3G_EENCB1W_s_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.16321.sroa.4.0.in.i.i.i.i.i.i = lshr i64 %.sroa.16321.sroa.0.0.in.i.i.i.i.i.i, 32
  %.sroa.16321.sroa.0.0.i.i.i.i.i.i = trunc i64 %.sroa.16321.sroa.0.0.in.i.i.i.i.i.i to i32
  %.sroa.25.sroa.0.0.i.i.i.i.i.i = trunc i64 %.sroa.25.sroa.4.sroa.0.0.in.in.i.i.i.i.i.i to i8
  %.sroa.25.sroa.4.sroa.0.0.in.i.i.i.i.i.i = and i64 %.sroa.25.sroa.4.sroa.0.0.in.in.i.i.i.i.i.i, -256
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 41
  store i8 0, ptr %i.ur, align 1, !noalias !231612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !231614
  %i.us = zext i48 %.sroa.4317.sroa.4.sroa.4.sroa.0.0.i.i.i.i.i.i to i64
  br label %bb.lm

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jl, %bb.ho, %bb.il, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureINtNtB29_6either6EitherINtNtB29_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB3J_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEE28atomic_load_head_and_len_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ir, %bb.ja, %_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureINtNtB29_6either6EitherINtNtB29_5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultINtNtNtB3J_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread27.i.i.i.i.i.i.i.i.i.i, %bb.hi
  %lpad.loopexit.split-lp3951 = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i.i.i.i.i.i

.body98.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ke, %bb.kd, %.body.i85.i.i.i.i.i.i, %bb.iv, %bb.iu, %bb.iq, %bb.ip, %bb.ij, %bb.ii, %.body.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body99.i.i.i.i.i.i = phi { ptr, i32 } [ %i.agd, %bb.kd ], [ %i.adg, %bb.iu ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.ij ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.ii ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i.i, %bb.iq ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i.i, %bb.ip ], [ %lpad.loopexit.split-lp3960, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.adg, %bb.iv ], [ %.pn.ph.i.i.i.i.i.i.i, %.body.i85.i.i.i.i.i.i ], [ %.pn184.i.i.i.i.i.i.i, %bb.ke ], [ %lpad.loopexit.split-lp3951, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231705)
  call void @llvm.experimental.noalias.scope.decl(metadata !231706), !noalias !231707
  %i.ut = load i64, ptr %i.vg, align 8, !range !427, !alias.scope !231708, !noalias !231613, !noundef !422
  %i.uu = icmp eq i64 %i.ut, -1
  br i1 %i.uu, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.body98.i.i.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 88
  %.val.i.i18.i.i.i = load ptr, ptr %i.uv, align 8, !alias.scope !231708, !noalias !231613, !nonnull !422, !noundef !422
  %.val1.i.i19.i.i.i = load i64, ptr %i.vh, align 8, !alias.scope !231708, !noalias !231613, !noundef !422
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtCs9p5Dg9WVwvP_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1w_10try_future11into_future10IntoFutureINtNtB1w_6either6EitherINtNtB1w_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %.val.i.i18.i.i.i, i64 %.val1.i.i19.i.i.i)
          to label %.body65.i.i.i.i.i.i unwind label %bb.be, !noalias !231709

bb.gk:                                            ; preds = %.body98.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtB1V_6either6EitherINtNtB1V_5ready5ReadyINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCNCNCNCNCNvNtNtCshkPeWWG1flk_5lance2io6commit17migrate_fragments000s0_00EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.vg)
          to label %bb.gn unwind label %bb.gl, !noalias !231613

bb.gl:                                            ; preds = %bb.gk
  %i.uw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 144
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ux, align 8, !alias.scope !231710, !noalias !231613 ; 2 uses
  %i.uy = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.uy, label %.body.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 152
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.uz, align 8, !alias.scope !231710, !noalias !231613, !nonnull !422, !noundef !422
  %i.va = shl nuw i64 %.val2.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231613
  br label %.body.i.i.i

bb.gn:                                            ; preds = %bb.gk
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 144
  %.val.i.i.i17.i.i.i = load i64, ptr %i.vb, align 8, !alias.scope !231710, !noalias !231613 ; 2 uses
  %i.vc = icmp eq i64 %.val.i.i.i17.i.i.i, 0
  br i1 %i.vc, label %.body65.i.i.i.i.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 152
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.vd, align 8, !alias.scope !231710, !noalias !231613, !nonnull !422, !noundef !422
  %i.ve = shl nuw i64 %.val.i.i.i17.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.ve, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !231613
  br label %.body65.i.i.i.i.i.i

bb.gp:                                            ; preds = %bb.gi, %bb.ap
  %i.vf = phi i64 [ %.pre605.i.i.i.i.i.i, %bb.ap ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.gi ]
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 80 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231615)
  call void @llvm.experimental.noalias.scope.decl(metadata !231711)
  %.not.i70.i.i.i.i.i.i = icmp eq i64 %i.vf, -1
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 96 ; 11 uses
  br i1 %.not.i70.i.i.i.i.i.i, label %bb.jb, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.experimental.noalias.scope.decl(metadata !231712)
  call void @llvm.experimental.noalias.scope.decl(metadata !231713)
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 144 ; 4 uses
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 16, !alias.scope !231714, !noalias !231600 ; 6 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 88 ; 3 uses
end_hunk_1
