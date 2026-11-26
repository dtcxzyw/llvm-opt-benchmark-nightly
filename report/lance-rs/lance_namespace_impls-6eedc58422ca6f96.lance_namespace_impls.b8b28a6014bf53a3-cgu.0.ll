Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNCNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB9_7Scanner12analyze_plan00CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %.val29.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !range !426, !invariant.load !422, !noalias !142021
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i, i64 noundef %i.gp, i64 noundef range(i64 1, -9223372036854775807) %i.gs) #68, !noalias !142021
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val29.i, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !range !425, !invariant.load !422, !noalias !142021 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %.body60.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ch
  %i.gx = getelementptr inbounds nuw i8, ptr %.val29.i, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !range !426, !invariant.load !422, !noalias !142021
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) %i.gy) #68, !noalias !142021
  br label %.body60.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.cg
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !142074)
  call void @llvm.experimental.noalias.scope.decl(metadata !142075)
  call void @llvm.experimental.noalias.scope.decl(metadata !142076)
  %.val.i.i.i62.i = load i64, ptr %i.gz, align 8, !range !425, !alias.scope !142077, !noalias !142020, !noundef !422 ; 2 uses
  %i.ha = icmp eq i64 %.val.i.i.i62.i, 0
  br i1 %i.ha, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val1.i.i.i63.i = load ptr, ptr %i.hb, align 8, !alias.scope !142077, !noalias !142020, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i63.i, i64 noundef %.val.i.i.i62.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !142078
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i: ; preds = %bb.ci, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142079)
  call void @llvm.experimental.noalias.scope.decl(metadata !142080)
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !142081, !noalias !142020, !nonnull !422, !noundef !422
  %i.he = atomicrmw add ptr %i.hd, i64 -1 release, align 8, !noalias !142082
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i

bb.cj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock6RwLockNtNtCslnBYTBsvsQk_11parking_lot10raw_rwlock9RawRwLockNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateEE9drop_slowB2j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i unwind label %bb.bg, !noalias !142021

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i: ; preds = %bb.cj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i
  store i8 0, ptr %i.gg, align 1, !noalias !142020
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 298
  store i8 0, ptr %i.hg, align 2, !noalias !142020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !142020
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 299
  store i8 0, ptr %i.hh, align 1, !noalias !142020
  call void @llvm.experimental.noalias.scope.decl(metadata !142083)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142084)
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !142085, !noalias !142020, !noundef !422 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.cw, label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i
  %i.hl = atomicrmw add ptr %i.hj, i64 -1 release, align 8, !noalias !142086
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.cl, label %bb.cw

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDG_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTRL0_NtNtCsc85D0lJ81Z_16lance_datafusion4exec22ExecutionSummaryCountsEEp6OutputuNtNtBQ_6marker4SyncNtB2J_4SendEL_E9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hi)
          to label %bb.cw unwind label %bb.bl, !noalias !142021

bb.cm:                                            ; preds = %bb.cd, %.body50.i
  %.pn13.pn.i = phi { ptr, i32 } [ %.pn13.i, %.body50.i ], [ %i.gj, %bb.cd ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i = load ptr, ptr %i.hn, align 8, !noalias !142020
  %i.ho = getelementptr i8, ptr %1, i64 280
  %.val27.i = load ptr, ptr %i.ho, align 8, !noalias !142020, !nonnull !422, !align !423, !noundef !422
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i, ptr nonnull %.val27.i) #73
          to label %.body60.i unwind label %bb.bo, !noalias !142021

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i: ; preds = %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !142020
  br label %bb.co

bb.cn:                                            ; preds = %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i54.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i, %bb.bb
  %i.hq = phi ptr [ %i.fr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i ], [ %i.be, %bb.bb ]
  %i.hr = phi ptr [ %i.fs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i ], [ %i.bf, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !142020
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.hs, ptr %i.ht, align 8, !noalias !142020
  br label %bb.bu

bb.cp:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142087)
  call void @llvm.experimental.noalias.scope.decl(metadata !142088)
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !142089, !noalias !142020, !nonnull !422, !noundef !422
  %i.hw = atomicrmw add ptr %i.hv, i64 -1 release, align 8, !noalias !142090
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.cq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i unwind label %bb.bo, !noalias !142021

bb.cr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i
  call void @llvm.experimental.noalias.scope.decl(metadata !142091)
  call void @llvm.experimental.noalias.scope.decl(metadata !142092)
  %i.hy = load ptr, ptr %i.n, align 8, !alias.scope !142093, !noalias !142020, !nonnull !422, !noundef !422
  %i.hz = atomicrmw add ptr %i.hy, i64 -1 release, align 8, !noalias !142094
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.bo, !noalias !142021

bb.ct:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142095)
  call void @llvm.experimental.noalias.scope.decl(metadata !142096)
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !142097, !noalias !142020, !nonnull !422, !noundef !422
  %i.id = atomicrmw add ptr %i.ic, i64 -1 release, align 8, !noalias !142098
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.bo, !noalias !142021

bb.cv:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1c_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !142020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !142020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !142020
  store i8 3, ptr %i.fr, align 8, !noalias !142020
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.cw:                                            ; preds = %bb.bj, %bb.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.cl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i, %bb.ck
  %i.if = phi ptr [ %i.fr, %bb.ck ], [ %i.fr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.fr, %bb.cl ], [ %i.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.be, %bb.bk ], [ %i.be, %bb.bj ]
  %i.ig = phi ptr [ %i.fs, %bb.ck ], [ %i.fs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.fs, %bb.cl ], [ %i.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.bf, %bb.bk ], [ %i.bf, %bb.bj ]
  %.sroa.861.0.ph = phi ptr [ %.sroa.4.8.copyload.i, %bb.ck ], [ %.sroa.4.8.copyload.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %.sroa.4.8.copyload.i, %bb.cl ], [ %i.dg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.dg, %bb.bk ], [ %i.dg, %bb.bj ]
  %.sroa.059.0.ph = phi i8 [ -1, %bb.ck ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ -1, %bb.cl ], [ 17, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 17, %bb.bk ], [ 17, %bb.bj ]
  %i.ih = phi <2 x ptr> [ %i.gk, %bb.ck ], [ %i.gk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.gk, %bb.cl ], [ <ptr @39, ptr @1343>, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ <ptr @39, ptr @1343>, %bb.bk ], [ <ptr @39, ptr @1343>, %bb.bj ]
  store i8 1, ptr %i.if, align 8, !noalias !142020
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsc85D0lJ81Z_16lance_datafusion4exec12analyze_plan0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ig)
          to label %bb.p unwind label %bb.cx

bb.cx:                                            ; preds = %bb.b, %bb.cw
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB9_7Scanner12explain_plan00CsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !142131 {
bb.a:
  %.sroa.347 = alloca [7 x i8], align 1           ; 2 uses
  %.sroa.750.sroa.3 = alloca [24 x i8], align 8   ; 2 uses
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %.sroa.8.sroa.2 = alloca [24 x i8], align 8     ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !487, !noundef !422
  switch i8 %i.h, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.c
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !422, !align !459, !noundef !422
  %i.k = invoke { ptr, ptr } @_RNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB5_7Scanner11create_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1088) %i.j)
          to label %bb.d unwind label %bb.ai      ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val14.pre = load ptr, ptr %1, align 8         ; 2 uses
  %.val1.i.pre = load ptr, ptr %.val14.pre, align 8, !noalias !142132
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 4 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 4 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.n = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h, !prof !454

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %i.l, ptr nonnull %i.m) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  store ptr %i.l, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.r, align 8
  store ptr %i.n, ptr %1, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1288) #72
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1288) #72
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val13 = load ptr, ptr %1, align 8, !nonnull !422, !noundef !422
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %.val13) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.aj

bb.l:                                             ; preds = %bb.c, %bb.h
  %.val1.i.a = phi ptr [ %.val1.i.pre, %bb.c ], [ %i.l, %bb.h ]
  %.val.i = phi ptr [ %.val14.pre, %bb.c ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %3 = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i = load ptr, ptr %3, align 8, !noalias !142132, !nonnull !422, !align !423, !noundef !422
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !422, !noalias !142133, !nonnull !422
  invoke void %i.u(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull %.val1.i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.k, !inline_history !142105

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.l
  %i.v = load i8, ptr %i.e, align 8, !range !428, !noundef !422 ; 3 uses
  %i.w = icmp eq i8 %i.v, -2
  br i1 %i.w, label %bb.m, label %bb.n

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit31, %bb.m
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit31 ], [ 3, %bb.m ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.m:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.n:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.2.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.2.0..sroa.8.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val12 = load ptr, ptr %1, align 8, !nonnull !422, !noundef !422 ; 4 uses
  %.val.i.i = load ptr, ptr %.val12, align 8      ; 5 uses
  %i.x = getelementptr i8, ptr %.val12, i64 8
  %.val1.i.i = load ptr, ptr %i.x, align 8, !nonnull !422, !align !423, !noundef !422 ; 5 uses
  %i.y = load ptr, ptr %.val1.i.i, align 8, !invariant.load !422 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !425, !invariant.load !422 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !426, !invariant.load !422
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #68
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !425, !invariant.load !422 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !426, !invariant.load !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #68
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 16, i64 noundef 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.s:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.p
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 16, i64 noundef 8) #68
  %.not.i = icmp eq i8 %i.v, -1
  br i1 %.not.i, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.4.0.copyload, ptr %i.f, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !426, !invariant.load !422
  %i.an = add nsw i64 %i.am, -1
  %i.ao = and i64 %i.an, -16
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  invoke void @_RNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB2_24DisplayableExecutionPlan3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.6.0.copyload)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.as = load i8, ptr %i.ar, align 1, !range !434, !noundef !422
  %i.at = trunc nuw i8 %i.as to i1
  invoke void @_RNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB2_24DisplayableExecutionPlan6indent(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d, i1 noundef zeroext %i.at)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB5_24DisplayableExecutionPlan6indentNtB2_7WrapperNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.545.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @127, ptr noundef nonnull %i.a)
          to label %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit unwind label %bb.w, !noalias !142134

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtBG_24DisplayableExecutionPlan6indent7WrapperECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(72) %i.b) #73
  br label %bb.z

_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit:       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !142135)
  call void @llvm.experimental.noalias.scope.decl(metadata !142136)
  %.val.i.i23 = load i64, ptr %i.b, align 8, !range !425, !alias.scope !142137, !noundef !422 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i23, 0
  br i1 %i.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.x

bb.x:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i24 = load ptr, ptr %i.aw, align 8, !alias.scope !142137, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i24, i64 noundef %.val.i.i23, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !142137
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.x, %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !142138)
  %i.ay = load i64, ptr %i.ax, align 8, !range !427, !alias.scope !142139, !noundef !422 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i2.i = load ptr, ptr %i.ba, align 8, !alias.scope !142139, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !142139
  br label %bb.ab

bb.z:                                             ; preds = %bb.w, %bb.aa
  %.pn2 = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %i.au, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(80) %i.d) #73
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !142140
  br label %bb.ae

bb.aa:                                            ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.051.0.copyload = load ptr, ptr %i.c, align 8, !alias.scope !142141 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.552.0.copyload = load ptr, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !142141 ; 2 uses
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.653.0.copyload = load i64, ptr %.sroa.653.0..sroa_idx, align 8, !alias.scope !142141 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !142142)
  call void @llvm.experimental.noalias.scope.decl(metadata !142143)
  %.val.i.i25 = load i64, ptr %i.d, align 8, !range !425, !alias.scope !142144, !noundef !422 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i25, 0
  br i1 %i.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i26 = load ptr, ptr %i.bd, align 8, !alias.scope !142144, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i26, i64 noundef %.val.i.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !142144
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27: ; preds = %bb.ac, %bb.ab
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !142145)
  %i.bf = load i64, ptr %i.be, align 8, !range !427, !alias.scope !142146, !noundef !422 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i2.i28 = load ptr, ptr %i.bh, align 8, !alias.scope !142146, !nonnull !422, !noundef !422
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i28, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !142146
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ae:                                            ; preds = %bb.z, %bb.ag
  %i.bi = phi ptr [ %.sroa.4.0.copyload, %bb.ag ], [ %.pre, %bb.z ]
  %.pn6 = phi { ptr, i32 } [ %i.bl, %bb.ag ], [ %.pn2, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !142147)
  call void @llvm.experimental.noalias.scope.decl(metadata !142148)
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !142140
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit
end_hunk_0
