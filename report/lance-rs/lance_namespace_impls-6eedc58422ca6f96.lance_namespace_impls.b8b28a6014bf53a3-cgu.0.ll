Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNCNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB9_7Scanner12analyze_plan00CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.gt = load i64, ptr %i.gs, align 8, !range !419, !invariant.load !416, !noalias !140283 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ck
  %i.gv = getelementptr inbounds nuw i8, ptr %.val29.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !420, !invariant.load !416, !noalias !140283
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) %i.gw) #68, !noalias !140283
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val29.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !range !419, !invariant.load !416, !noalias !140283 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.body60.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.cl
  %i.hb = getelementptr inbounds nuw i8, ptr %.val29.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !range !420, !invariant.load !416, !noalias !140283
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) %i.hc) #68, !noalias !140283
  br label %.body60.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ck
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.experimental.noalias.scope.decl(metadata !140337)
  call void @llvm.experimental.noalias.scope.decl(metadata !140338)
  call void @llvm.experimental.noalias.scope.decl(metadata !140339)
  %.val.i.i.i62.i = load i64, ptr %i.hd, align 8, !range !419, !alias.scope !140340, !noalias !140282, !noundef !416 ; 2 uses
  %i.he = icmp eq i64 %.val.i.i.i62.i, 0
  br i1 %i.he, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val1.i.i.i63.i = load ptr, ptr %i.hf, align 8, !alias.scope !140340, !noalias !140282, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i63.i, i64 noundef %.val.i.i.i62.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !140341
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i: ; preds = %bb.cm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140342)
  call void @llvm.experimental.noalias.scope.decl(metadata !140343)
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !140344, !noalias !140282, !nonnull !416, !noundef !416
  %i.hi = atomicrmw sub ptr %i.hh, i64 1 release, align 8, !noalias !140345
  %i.hj = icmp eq i64 %i.hi, 1
  br i1 %i.hj, label %bb.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCsiVTOiHjdfhE_8lock_api6rwlock6RwLockNtNtCslnBYTBsvsQk_11parking_lot10raw_rwlock9RawRwLockNtNtNtCseMy6uzTzNin_10datafusion9execution13session_state12SessionStateEE9drop_slowB2j_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i unwind label %bb.bj, !noalias !140283

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i: ; preds = %bb.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i64.i
  store i8 0, ptr %i.gk, align 1, !noalias !140282
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 298
  store i8 0, ptr %i.hk, align 2, !noalias !140282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !140282
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 299
  store i8 0, ptr %i.hl, align 1, !noalias !140282
  call void @llvm.experimental.noalias.scope.decl(metadata !140346)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140347)
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !140348, !noalias !140282, !noundef !416 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.cz, label %bb.co

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i
  %i.hp = atomicrmw sub ptr %i.hn, i64 1 release, align 8, !noalias !140349
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.cp, label %bb.cz

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDG_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTRL0_NtNtCsc85D0lJ81Z_16lance_datafusion4exec22ExecutionSummaryCountsEEp6OutputuNtNtBQ_6marker4SyncNtB2J_4SendEL_E9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hm)
          to label %bb.cz unwind label %bb.bo, !noalias !140283

bb.cq:                                            ; preds = %bb.ch, %.body50.i
  %.pn13.pn.i = phi { ptr, i32 } [ %.pn13.i, %.body50.i ], [ %i.gn, %bb.ch ]
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i = load ptr, ptr %i.hr, align 8, !noalias !140282
  %i.hs = getelementptr i8, ptr %1, i64 280
  %.val27.i = load ptr, ptr %i.hs, align 8, !noalias !140282, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val.i, ptr nonnull %.val27.i) #73
          to label %.body60.i unwind label %bb.br, !noalias !140283

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i: ; preds = %bb.ce, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !140282
  br label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i, %bb.be
  %i.ht = phi ptr [ %i.fu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i ], [ %i.bf, %bb.be ]
  %i.hu = phi ptr [ %i.fv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorEEECsfR8GmIBoxTX_21lance_namespace_impls.exit59.i ], [ %i.bg, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !140282
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.hv, ptr %i.hw, align 8, !noalias !140282
  br label %bb.bx

bb.cs:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140350)
  call void @llvm.experimental.noalias.scope.decl(metadata !140351)
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !140352, !noalias !140282, !nonnull !416, !noundef !416
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !140353
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i unwind label %bb.br, !noalias !140283

bb.cu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit70.i
  call void @llvm.experimental.noalias.scope.decl(metadata !140354)
  call void @llvm.experimental.noalias.scope.decl(metadata !140355)
  %i.ib = load ptr, ptr %i.n, align 8, !alias.scope !140356, !noalias !140282, !nonnull !416, !noundef !416
  %i.ic = atomicrmw sub ptr %i.ib, i64 1 release, align 8, !noalias !140357
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.br, !noalias !140283

bb.cw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140358)
  call void @llvm.experimental.noalias.scope.decl(metadata !140359)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !140360, !noalias !140282, !nonnull !416, !noundef !416
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !140361
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsc85D0lJ81Z_16lance_datafusion4exec10TracedExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i unwind label %bb.br, !noalias !140283

bb.cy:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1c_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !140282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !140282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !140282
  store i8 3, ptr %i.fu, align 8, !noalias !140282
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.cz:                                            ; preds = %bb.bm, %bb.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.cp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i, %bb.co
  %i.ii = phi ptr [ %i.fu, %bb.co ], [ %i.fu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.fu, %bb.cp ], [ %i.bf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.bf, %bb.bn ], [ %i.bf, %bb.bm ]
  %i.ij = phi ptr [ %i.fv, %bb.co ], [ %i.fv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.fv, %bb.cp ], [ %i.bg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.bg, %bb.bn ], [ %i.bg, %bb.bm ]
  %.sroa.861.0.ph = phi ptr [ %.sroa.4.8.copyload.i, %bb.co ], [ %.sroa.4.8.copyload.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %.sroa.4.8.copyload.i, %bb.cp ], [ %i.dj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.dj, %bb.bn ], [ %i.dj, %bb.bm ]
  %.sroa.059.0.ph = phi i8 [ -1, %bb.co ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ -1, %bb.cp ], [ 17, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 17, %bb.bn ], [ 17, %bb.bm ]
  %i.ik = phi <2 x ptr> [ %i.go, %bb.co ], [ %i.go, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextECsfR8GmIBoxTX_21lance_namespace_impls.exit66.i ], [ %i.go, %bb.cp ], [ <ptr @39, ptr @1343>, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7analyze11AnalyzeExecEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ <ptr @39, ptr @1343>, %bb.bn ], [ <ptr @39, ptr @1343>, %bb.bm ]
  store i8 1, ptr %i.ii, align 8, !noalias !140282
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtCsc85D0lJ81Z_16lance_datafusion4exec12analyze_plan0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ij)
          to label %bb.q unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB9_7Scanner12explain_plan00CsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i8, ptr %i.g, align 8, !range !481, !noundef !416
  switch i8 %i.h, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.c
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !416, !align !453, !noundef !416
  %i.k = invoke { ptr, ptr } @_RNvMs9_NtNtCshkPeWWG1flk_5lance7dataset7scannerNtB5_7Scanner11create_plan(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1088) %i.j)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val14.pre = load ptr, ptr %1, align 8         ; 2 uses
  %.val.i.pre = load ptr, ptr %.val14.pre, align 8, !noalias !140392
  %.phi.trans.insert = getelementptr i8, ptr %.val14.pre, i64 8
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !140392
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 4 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 5 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.o = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.i, !prof !448

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #72
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %i.m, ptr nonnull %i.n) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  store ptr %i.m, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.s, align 8
  store ptr %i.o, ptr %1, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1288) #72
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1288) #72
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val13 = load ptr, ptr %1, align 8, !nonnull !416, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %.val13) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.ak

bb.m:                                             ; preds = %bb.c, %bb.i
  %.val1.i.a = phi ptr [ %.val1.i.pre, %bb.c ], [ %i.n, %bb.i ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.c ], [ %i.m, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.a, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !416, !noalias !140393, !nonnull !416
  invoke void %i.v(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.l, !inline_history !140368

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.m
  %i.w = load i8, ptr %i.e, align 8, !range !422, !noundef !416 ; 3 uses
  %i.x = icmp eq i8 %i.w, -2
  br i1 %i.x, label %bb.n, label %bb.o

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit31, %bb.n
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit31 ], [ 3, %bb.n ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.n:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.o:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxIBG_IBW_DNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEEEB1D_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
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
  %.val12 = load ptr, ptr %1, align 8, !nonnull !416, !noundef !416 ; 4 uses
  %.val.i.i = load ptr, ptr %.val12, align 8      ; 5 uses
  %i.y = getelementptr i8, ptr %.val12, i64 8
  %.val1.i.i = load ptr, ptr %i.y, align 8, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.z = load ptr, ptr %.val1.i.i, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.z(ptr noundef nonnull %.val.i.i)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.t, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #68
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.s, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !420, !invariant.load !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #68
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.r
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 16, i64 noundef 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.t:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 16, i64 noundef 8) #68
  %.not.i = icmp eq i8 %i.w, -1
  br i1 %.not.i, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.4.0.copyload, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !420, !invariant.load !416
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  invoke void @_RNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB2_24DisplayableExecutionPlan3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.6.0.copyload)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.au = load i8, ptr %i.at, align 1, !range !428, !noundef !416
  %i.av = trunc nuw i8 %i.au to i1
  invoke void @_RNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB2_24DisplayableExecutionPlan6indent(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d, i1 noundef zeroext %i.av)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtB5_24DisplayableExecutionPlan6indentNtB2_7WrapperNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.545.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @127, ptr noundef nonnull %i.a)
          to label %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvMNtCs5E8EBwPtAkp_24datafusion_physical_plan7displayNtBG_24DisplayableExecutionPlan6indent7WrapperECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(72) %i.b) #73
  br label %bb.ac

_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit:       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !140394)
  call void @llvm.experimental.noalias.scope.decl(metadata !140395)
  %.val.i.i23 = load i64, ptr %i.b, align 8, !range !419, !alias.scope !140396, !noundef !416 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i23, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i24 = load ptr, ptr %i.az, align 8, !alias.scope !140396, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i24, i64 noundef %.val.i.i23, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !140396
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.aa, %_RNvNtCs40k4W9msRzi_5alloc3fmt6format.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !140397)
  %i.bb = load i64, ptr %i.ba, align 8, !range !421, !alias.scope !140398, !noundef !416 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i2.i = load ptr, ptr %i.bd, align 8, !alias.scope !140398, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !140398
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z, %bb.x
  %.pn2 = phi { ptr, i32 } [ %i.aw, %bb.x ], [ %i.ax, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(80) %i.d) #73
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !140399
  br label %bb.ag

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.051.0.copyload = load ptr, ptr %i.c, align 8, !alias.scope !140400 ; 2 uses
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.552.0.copyload = load ptr, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !140400 ; 2 uses
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.653.0.copyload = load i64, ptr %.sroa.653.0..sroa_idx, align 8, !alias.scope !140400 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !140401)
  call void @llvm.experimental.noalias.scope.decl(metadata !140402)
  %.val.i.i25 = load i64, ptr %i.d, align 8, !range !419, !alias.scope !140403, !noundef !416 ; 2 uses
  %i.be = icmp eq i64 %.val.i.i25, 0
  br i1 %i.be, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i26 = load ptr, ptr %i.bf, align 8, !alias.scope !140403, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i26, i64 noundef %.val.i.i25, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !140403
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27: ; preds = %bb.ae, %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !140404)
  %i.bh = load i64, ptr %i.bg, align 8, !range !421, !alias.scope !140405, !noundef !416 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6format10MetricTypeEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i2.i28 = load ptr, ptr %i.bj, align 8, !alias.scope !140405, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i28, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !140405
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5E8EBwPtAkp_24datafusion_physical_plan7display24DisplayableExecutionPlanECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ag:                                            ; preds = %bb.ac, %bb.v
  %i.bk = phi ptr [ %.sroa.4.0.copyload, %bb.v ], [ %.pre, %bb.ac ]
  %.pn6 = phi { ptr, i32 } [ %i.as, %bb.v ], [ %.pn2, %bb.ac ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv:bb.a
  %i.h = extractvalue { i64, i32 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  %i.j = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load volatile { [2 x i64] }, ptr %1, align 8 ; 2 uses
  fence acquire
  %i.m = load atomic i64, ptr %i.c monotonic, align 8
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

bb.e:                                             ; preds = %bb.c
  %.fca.0.1.extract.i = extractvalue { [2 x i64] } %i.l, 0, 1
  %.sroa.45.8.extract.trunc.i = trunc i64 %.fca.0.1.extract.i to i32
  %.fca.0.0.extract.i = extractvalue { [2 x i64] } %i.l, 0, 0
  br label %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECsfR8GmIBoxTX_21lance_namespace_impls.exit

.lr.ph.i:                                         ; preds = %bb.d, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.0910.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.d ] ; 5 uses
  %i.q = icmp ult i32 %.sroa.0.0910.i, 7
  br i1 %i.q, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  %i.r = icmp ult i32 %.sroa.0.0910.i, 11
  br i1 %i.r, label %.loopexit.i.thread.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.s, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.s = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.s, %.sroa.0.0910.i
  %i.t = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.t, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.u = add nuw nsw i32 %.sroa.0.0910.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.u, %.loopexit.i.thread.i ], [ %.sroa.0.0910.i, %.loopexit.i.i ]
  %i.v = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.d
  %.lcssa.i = phi i64 [ %i.o, %bb.d ], [ %i.v, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  fence release
  %i.x = load i64, ptr %1, align 8, !noundef !416
  %i.y = load i32, ptr %i.d, align 8, !range !760, !noundef !416
  store atomic i64 %.lcssa.i, ptr %i.c release, align 8
  br label %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.e, %._crit_edge.i
  %.sroa.3.0.i = phi i32 [ %i.y, %._crit_edge.i ], [ %.sroa.45.8.extract.trunc.i, %bb.e ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ %i.x, %._crit_edge.i ], [ %.fca.0.0.extract.i, %bb.e ] ; 4 uses
  %i.z = icmp eq i64 %i.h, %.sroa.0.0.i
  %i.aa = icmp slt i64 %i.h, %.sroa.0.0.i
  %i.ab = icmp samesign ult i32 %i.i, %.sroa.3.0.i
  %spec.select = select i1 %i.z, i1 %i.ab, i1 %i.aa
  br i1 %spec.select, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ac = load i64, ptr %i.e, align 8, !noundef !416
  %i.ad = load i32, ptr %i.f, align 8, !range !760, !noundef !416
  %i.ae = tail call { i64, i32 } @_RNvXs_NtCsgczF5crJ4sT_3std4timeNtB4_7InstantINtNtNtCscI6d9CVNmLh_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.h, i32 noundef %i.i, i64 noundef %i.ac, i32 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3175) ; 2 uses
  %i.af = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !noalias !208365 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i3, label %._crit_edge.i1

.lr.ph.i3:                                        ; preds = %bb.f, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5
  %.sroa.016.018.i = phi i32 [ %.sroa.016.1.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5 ], [ 0, %bb.f ] ; 5 uses
  %i.ah = icmp ult i32 %.sroa.016.018.i, 7
  br i1 %i.ah, label %.preheader.i.i7, label %.loopexit.i.i4

.loopexit.i.i4:                                   ; preds = %.lr.ph.i3
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !208365
  %i.ai = icmp ult i32 %.sroa.016.018.i, 11
  br i1 %i.ai, label %.loopexit.i.thread.i6, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5

.preheader.i.i7:                                  ; preds = %.lr.ph.i3, %.preheader.i.i7
  %.sroa.0.03.i.i8 = phi i32 [ %i.aj, %.preheader.i.i7 ], [ 0, %.lr.ph.i3 ]
  %i.aj = add nuw nsw i32 %.sroa.0.03.i.i8, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !208365
  %.sroa.0.0.highbits.i.i9 = lshr i32 %i.aj, %.sroa.016.018.i
  %i.ak = icmp eq i32 %.sroa.0.0.highbits.i.i9, 0
  br i1 %i.ak, label %.preheader.i.i7, label %.loopexit.i.thread.i6

.loopexit.i.thread.i6:                            ; preds = %.preheader.i.i7, %.loopexit.i.i4
  %i.al = add nuw nsw i32 %.sroa.016.018.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5: ; preds = %.loopexit.i.thread.i6, %.loopexit.i.i4
  %.sroa.016.1.i = phi i32 [ %i.al, %.loopexit.i.thread.i6 ], [ %.sroa.016.018.i, %.loopexit.i.i4 ]
  %i.am = atomicrmw xchg ptr %i.c, i64 1 acquire, align 8, !noalias !208365 ; 2 uses
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %.lr.ph.i3, label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5, %bb.f
  %.lcssa.i2 = phi i64 [ %i.af, %bb.f ], [ %i.am, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i5 ] ; 2 uses
  fence release
  %.val.i = load i64, ptr %1, align 8, !noalias !208365, !noundef !416
  %.val8.i = load i32, ptr %i.d, align 8, !noalias !208365
  %i.ao = icmp eq i64 %.val.i, %.sroa.0.0.i
  %i.ap = icmp eq i32 %.val8.i, %.sroa.3.0.i
  %.sroa.0.0.i.i.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %.sroa.0.0.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RINvNtNtCsmwebYWU4SQ_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCsgczF5crJ4sT_3std4time7InstantECsfR8GmIBoxTX_21lance_namespace_impls.exit
  store i8 0, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i1
  %i.aq = extractvalue { i64, i32 } %i.ae, 0
  %i.ar = extractvalue { i64, i32 } %i.ae, 1
  store i64 %i.aq, ptr %1, align 8, !noalias !208365
  store i32 %i.ar, ptr %i.d, align 8, !noalias !208365
  %i.as = add i64 %.lcssa.i2, 2
  store atomic i64 %i.as, ptr %i.c release, align 8, !noalias !208365
  store i64 %.sroa.0.0.i, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i1
  store atomic i64 %.lcssa.i2, ptr %i.c release, align 8, !noalias !208365
  br label %bb.b

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.lcssa32.sink = phi i32 [ %.sroa.3.0.i, %bb.h ], [ -1, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.0.i.lcssa32.sink, ptr %i.at, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 2                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  %.not.i = icmp ugt i64 %i.c, 9223372036854775804
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !441

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !208372
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !208373
  %i.i = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #68, !noalias !208373 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #72
  unreachable

bb.e:                                             ; preds = %.thread, %bb.j
  %i.k = phi ptr [ %i.g, %.thread ], [ %i.s, %bb.j ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.m = icmp eq i64 %.val, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val12 = load ptr, ptr %i.k, align 8, !nonnull !416, !noundef !416
  %i.n = shl nuw i64 %.val, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  unreachable

bb.i:                                             ; preds = %.thread._crit_edge, %bb.g
  %i.q = phi ptr [ %i.i, %bb.g ], [ %.pre, %.thread._crit_edge ]
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.h, %.thread._crit_edge ]
  %i.s = phi ptr [ %i.o, %bb.g ], [ %i.g, %.thread._crit_edge ]
  store i32 0, ptr %i.q, align 4
  store i64 1, ptr %i.r, align 8, !alias.scope !208372
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !208374
  %i.t = call noundef dereferenceable_or_null(1024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !208374 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1024) #72
          to label %bb.h unwind label %bb.e

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1024, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.w, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [136 x i8], align 8               ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 11 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [184 x i8], align 8               ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [184 x i8], align 8               ; 16 uses
  %i.y = alloca [184 x i8], align 8               ; 5 uses
  %i.z = alloca [184 x i8], align 8               ; 5 uses
  %i.aa = alloca [184 x i8], align 8              ; 5 uses
  %i.ab = alloca [184 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 24, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  store i64 0, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  store i8 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 177
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ak = invoke noundef i64 @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aj)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(184) %i.x) #73
          to label %.body32.thread unwind label %bb.bc

bb.c:                                             ; preds = %bb.a
  store i64 %i.ak, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(184) %i.x, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %.sroa.5.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx34, align 8 ; 2 uses
  store i64 0, ptr %i.am, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx34, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208438)
  %i.an = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i64 %.sroa.0.0.copyload, 2305843009213693952
  %i.ap = shl nuw nsw i64 %.sroa.0.0.copyload, 2
  %i.aq = shl nuw nsw i64 %.sroa.5.0.copyload, 2  ; 2 uses
  tail call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !208439
  store i64 1, ptr %i.s, align 8, !noalias !208439
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %i.ar, align 8, !noalias !208439
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.4.0.copyload, ptr %i.as, align 8, !noalias !208439
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !208439
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !208439
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !208439
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.ap, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !208439
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !208440
  %i.at = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !208440 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.g, !prof !448

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc.i unwind label %bb.e, !noalias !208439

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s) #73
          to label %bb.bf unwind label %bb.f, !noalias !208439

bb.f:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !208439
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !208439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !208439
  store ptr %i.at, ptr %i.w, align 8, !alias.scope !208438, !noalias !208441
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.ax, align 8, !alias.scope !208438, !noalias !208441
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.aq, ptr %i.ay, align 8, !alias.scope !208438, !noalias !208441
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.sroa.035.0.copyload = load i64, ptr %1, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.436.0.copyload = load ptr, ptr %.sroa.436.0..sroa_idx, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %1, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !208442)
  %i.az = icmp sgt i64 %.sroa.537.0.copyload, -1
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !208443
  store i64 1, ptr %i.r, align 8, !noalias !208443
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !208443
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.436.0.copyload, ptr %i.bb, align 8, !noalias !208443
  %.sroa.4.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.537.0.copyload, ptr %.sroa.4.0..sroa_idx.i23, align 8, !noalias !208443
end_hunk_1
